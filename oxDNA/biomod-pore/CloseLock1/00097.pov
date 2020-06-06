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
	<23.993074, 35.258228, 34.805325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.248524, 35.064068, 35.044170>,  <24.401793, 34.947571, 35.187477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.248524, 35.064068, 35.044170>,  <23.993074, 35.258228, 34.805325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.248524, 35.064068, 35.044170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123412, 0.830519, 0.543146,
		-0.759559, -0.273175, 0.590293,
		0.638623, -0.485401, 0.597116,
		24.440111, 34.918449, 35.223305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.919083, 35.606358, 35.441841>,  <23.993074, 35.258228, 34.805325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.919083, 35.606358, 35.441841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279533, 35.433548, 35.427265>,  <24.495804, 35.329865, 35.418518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279533, 35.433548, 35.427265>,  <23.919083, 35.606358, 35.441841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279533, 35.433548, 35.427265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383374, 0.754757, 0.532321,
		-0.202468, -0.493660, 0.845758,
		0.901127, -0.432020, -0.036442,
		24.549871, 35.303944, 35.416332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.196701, 36.005119, 35.926094>,  <23.919083, 35.606358, 35.441841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.196701, 36.005119, 35.926094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.521551, 35.789154, 35.837593>,  <24.716461, 35.659576, 35.784492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.521551, 35.789154, 35.837593>,  <24.196701, 36.005119, 35.926094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.521551, 35.789154, 35.837593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561266, 0.619211, 0.549143,
		-0.159487, -0.570152, 0.805910,
		0.812123, -0.539911, -0.221251,
		24.765188, 35.627182, 35.771217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518229, 35.833580, 36.654087>,  <24.196701, 36.005119, 35.926094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518229, 35.833580, 36.654087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777349, 35.759060, 36.358616>,  <24.932821, 35.714348, 36.181332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.777349, 35.759060, 36.358616>,  <24.518229, 35.833580, 36.654087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.777349, 35.759060, 36.358616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761213, 0.196701, 0.617952,
		0.030174, -0.962601, 0.269237,
		0.647800, -0.186300, -0.738679,
		24.971689, 35.703171, 36.137012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219503, 35.476620, 36.636543>,  <24.518229, 35.833580, 36.654087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219503, 35.476620, 36.636543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488070, 35.574936, 36.916195>,  <25.649210, 35.633926, 37.083988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488070, 35.574936, 36.916195>,  <25.219503, 35.476620, 36.636543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488070, 35.574936, 36.916195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381104, 0.694573, -0.610187,
		-0.635577, 0.676132, 0.372676,
		0.671417, 0.245792, 0.699131,
		25.689495, 35.648674, 37.125935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140574, 36.179550, 36.881325>,  <25.219503, 35.476620, 36.636543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140574, 36.179550, 36.881325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522335, 36.062191, 36.903332>,  <25.751392, 35.991776, 36.916534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522335, 36.062191, 36.903332>,  <25.140574, 36.179550, 36.881325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522335, 36.062191, 36.903332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268463, 0.763041, -0.587959,
		0.130526, 0.575921, 0.807018,
		0.954406, -0.293399, 0.055017,
		25.808657, 35.974171, 36.919838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496431, 36.738590, 37.116615>,  <25.140574, 36.179550, 36.881325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496431, 36.738590, 37.116615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725977, 36.487370, 36.906384>,  <25.863705, 36.336636, 36.780247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725977, 36.487370, 36.906384>,  <25.496431, 36.738590, 37.116615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725977, 36.487370, 36.906384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335644, 0.765765, -0.548586,
		0.747008, 0.138408, 0.650248,
		0.573865, -0.628050, -0.525577,
		25.898136, 36.298954, 36.748711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976051, 37.149437, 37.027683>,  <25.496431, 36.738590, 37.116615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976051, 37.149437, 37.027683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065844, 36.864491, 36.761707>,  <26.119719, 36.693523, 36.602119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065844, 36.864491, 36.761707>,  <25.976051, 37.149437, 37.027683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065844, 36.864491, 36.761707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470462, 0.676792, -0.566231,
		0.853389, -0.185721, 0.487067,
		0.224482, -0.712362, -0.664942,
		26.133188, 36.650784, 36.562225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715900, 37.084785, 36.927471>,  <25.976051, 37.149437, 37.027683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715900, 37.084785, 36.927471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495115, 36.986763, 36.608650>,  <26.362644, 36.927952, 36.417358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.495115, 36.986763, 36.608650>,  <26.715900, 37.084785, 36.927471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.495115, 36.986763, 36.608650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420720, 0.743424, -0.519919,
		0.719948, -0.622312, -0.307249,
		-0.551968, -0.245049, -0.797046,
		26.329527, 36.913246, 36.369537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168003, 37.084625, 36.359943>,  <26.715900, 37.084785, 36.927471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168003, 37.084625, 36.359943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805971, 37.090687, 36.189957>,  <26.588751, 37.094322, 36.087963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805971, 37.090687, 36.189957>,  <27.168003, 37.084625, 36.359943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805971, 37.090687, 36.189957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336308, 0.637095, -0.693547,
		0.260236, -0.770636, -0.581718,
		-0.905082, 0.015151, -0.424967,
		26.534447, 37.095230, 36.062466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355053, 37.173965, 35.648617>,  <27.168003, 37.084625, 36.359943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355053, 37.173965, 35.648617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970276, 37.277851, 35.682583>,  <26.739408, 37.340183, 35.702961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970276, 37.277851, 35.682583>,  <27.355053, 37.173965, 35.648617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970276, 37.277851, 35.682583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109558, 0.651283, -0.750884,
		-0.250317, -0.713006, -0.654953,
		-0.961945, 0.259715, 0.084912,
		26.681692, 37.355766, 35.708057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078791, 37.086617, 34.929649>,  <27.355053, 37.173965, 35.648617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078791, 37.086617, 34.929649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876656, 37.348377, 35.154644>,  <26.755375, 37.505432, 35.289642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876656, 37.348377, 35.154644>,  <27.078791, 37.086617, 34.929649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876656, 37.348377, 35.154644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050435, 0.673124, -0.737808,
		-0.861446, -0.344474, -0.373160,
		-0.505338, 0.654402, 0.562487,
		26.725054, 37.544697, 35.323391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920534, 37.593704, 34.427402>,  <27.078791, 37.086617, 34.929649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920534, 37.593704, 34.427402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820065, 37.778576, 34.767590>,  <26.759783, 37.889500, 34.971703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820065, 37.778576, 34.767590>,  <26.920534, 37.593704, 34.427402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820065, 37.778576, 34.767590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232331, 0.881738, -0.410560,
		-0.939646, 0.094468, -0.328849,
		-0.251174, 0.462183, 0.850469,
		26.744713, 37.917233, 35.022732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763659, 38.157787, 34.088894>,  <26.920534, 37.593704, 34.427402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763659, 38.157787, 34.088894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780975, 38.253658, 34.476849>,  <26.791367, 38.311180, 34.709621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780975, 38.253658, 34.476849>,  <26.763659, 38.157787, 34.088894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780975, 38.253658, 34.476849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137381, 0.960147, -0.243401,
		-0.989572, 0.143782, 0.008641,
		0.043294, 0.239675, 0.969887,
		26.793962, 38.325562, 34.767815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203789, 38.611824, 34.255981>,  <26.763659, 38.157787, 34.088894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203789, 38.611824, 34.255981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506393, 38.662704, 34.512577>,  <26.687956, 38.693233, 34.666534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506393, 38.662704, 34.512577>,  <26.203789, 38.611824, 34.255981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506393, 38.662704, 34.512577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013908, 0.983810, -0.178676,
		-0.653833, 0.126249, 0.746032,
		0.756511, 0.127200, 0.641491,
		26.733347, 38.700863, 34.705025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934763, 39.135498, 34.635933>,  <26.203789, 38.611824, 34.255981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934763, 39.135498, 34.635933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332636, 39.116493, 34.672489>,  <26.571360, 39.105091, 34.694424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332636, 39.116493, 34.672489>,  <25.934763, 39.135498, 34.635933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332636, 39.116493, 34.672489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074176, 0.946036, -0.315458,
		-0.071472, 0.320559, 0.944528,
		0.994681, -0.047515, 0.091393,
		26.631041, 39.102238, 34.699905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.019947, 39.762699, 34.857201>,  <25.934763, 39.135498, 34.635933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.019947, 39.762699, 34.857201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395329, 39.666603, 34.757935>,  <26.620558, 39.608948, 34.698376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395329, 39.666603, 34.757935>,  <26.019947, 39.762699, 34.857201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395329, 39.666603, 34.757935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193090, 0.960633, -0.199754,
		0.286386, 0.139541, 0.947898,
		0.938456, -0.240236, -0.248168,
		26.676865, 39.594532, 34.683483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490183, 40.174442, 35.306889>,  <26.019947, 39.762699, 34.857201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490183, 40.174442, 35.306889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662830, 40.071018, 34.961208>,  <26.766418, 40.008965, 34.753799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662830, 40.071018, 34.961208>,  <26.490183, 40.174442, 35.306889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662830, 40.071018, 34.961208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151066, 0.965229, -0.213337,
		0.889316, -0.038471, 0.455673,
		0.431621, -0.258561, -0.864205,
		26.792316, 39.993450, 34.701946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978708, 40.704163, 35.184288>,  <26.490183, 40.174442, 35.306889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978708, 40.704163, 35.184288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955746, 40.537861, 34.821220>,  <26.941969, 40.438080, 34.603382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955746, 40.537861, 34.821220>,  <26.978708, 40.704163, 35.184288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955746, 40.537861, 34.821220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306863, 0.857804, -0.412319,
		0.950021, -0.302199, 0.078335,
		-0.057406, -0.415750, -0.907666,
		26.938524, 40.413136, 34.548920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490562, 40.883350, 34.861820>,  <26.978708, 40.704163, 35.184288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490562, 40.883350, 34.861820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266550, 40.786987, 34.544750>,  <27.132143, 40.729168, 34.354507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266550, 40.786987, 34.544750>,  <27.490562, 40.883350, 34.861820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266550, 40.786987, 34.544750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336392, 0.808241, -0.483308,
		0.757103, -0.537316, -0.371600,
		-0.560031, -0.240911, -0.792671,
		27.098541, 40.714714, 34.306950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948526, 40.958237, 34.189148>,  <27.490562, 40.883350, 34.861820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948526, 40.958237, 34.189148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561279, 40.982079, 34.091831>,  <27.328930, 40.996384, 34.033440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561279, 40.982079, 34.091831>,  <27.948526, 40.958237, 34.189148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561279, 40.982079, 34.091831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179267, 0.843241, -0.506762,
		0.174953, -0.534221, -0.827043,
		-0.968119, 0.059601, -0.243296,
		27.270844, 40.999958, 34.018841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949556, 41.411880, 33.723354>,  <27.948526, 40.958237, 34.189148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949556, 41.411880, 33.723354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550333, 41.399979, 33.745239>,  <27.310799, 41.392838, 33.758369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550333, 41.399979, 33.745239>,  <27.949556, 41.411880, 33.723354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550333, 41.399979, 33.745239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050619, 0.899351, -0.434288,
		-0.036286, -0.436215, -0.899111,
		-0.998058, -0.029753, 0.054715,
		27.250916, 41.391052, 33.761654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833172, 41.399994, 33.109013>,  <27.949556, 41.411880, 33.723354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833172, 41.399994, 33.109013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526838, 41.556957, 33.312782>,  <27.343039, 41.651134, 33.435043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526838, 41.556957, 33.312782>,  <27.833172, 41.399994, 33.109013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526838, 41.556957, 33.312782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113886, 0.862459, -0.493147,
		-0.632875, -0.319652, -0.705189,
		-0.765832, 0.392412, 0.509425,
		27.297089, 41.674683, 33.465611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341824, 41.525673, 32.596573>,  <27.833172, 41.399994, 33.109013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341824, 41.525673, 32.596573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299417, 41.762543, 32.916096>,  <27.273973, 41.904667, 33.107807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299417, 41.762543, 32.916096>,  <27.341824, 41.525673, 32.596573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299417, 41.762543, 32.916096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044222, 0.805343, -0.591157,
		-0.993381, -0.027347, -0.111565,
		-0.106015, 0.592178, 0.798803,
		27.267612, 41.940197, 33.155735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739513, 41.980129, 32.450588>,  <27.341824, 41.525673, 32.596573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739513, 41.980129, 32.450588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988239, 42.153717, 32.711361>,  <27.137474, 42.257870, 32.867825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988239, 42.153717, 32.711361>,  <26.739513, 41.980129, 32.450588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988239, 42.153717, 32.711361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004934, 0.834588, -0.550852,
		-0.783149, 0.339311, 0.521100,
		0.621814, 0.433971, 0.651933,
		27.174784, 42.283909, 32.906940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339981, 42.439777, 32.846588>,  <26.739513, 41.980129, 32.450588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339981, 42.439777, 32.846588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720560, 42.534939, 32.768459>,  <26.948908, 42.592033, 32.721584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720560, 42.534939, 32.768459>,  <26.339981, 42.439777, 32.846588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720560, 42.534939, 32.768459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305957, 0.800419, -0.515480,
		0.033705, 0.550212, 0.834344,
		0.951449, 0.237899, -0.195319,
		27.005995, 42.606308, 32.709862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637732, 43.100597, 33.158222>,  <26.339981, 42.439777, 32.846588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637732, 43.100597, 33.158222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808357, 43.003540, 32.809700>,  <26.910732, 42.945305, 32.600586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808357, 43.003540, 32.809700>,  <26.637732, 43.100597, 33.158222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808357, 43.003540, 32.809700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202968, 0.913092, -0.353649,
		0.881390, 0.327700, 0.340242,
		0.426563, -0.242645, -0.871302,
		26.936325, 42.930748, 32.548309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282375, 43.353287, 33.251381>,  <26.637732, 43.100597, 33.158222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282375, 43.353287, 33.251381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578402, 43.409451, 32.988297>,  <27.756018, 43.443150, 32.830444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578402, 43.409451, 32.988297>,  <27.282375, 43.353287, 33.251381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578402, 43.409451, 32.988297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641854, -0.144542, -0.753081,
		-0.200808, 0.979486, -0.016848,
		0.740067, 0.140411, -0.657712,
		27.800423, 43.451572, 32.790981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949966, 43.803410, 32.908810>,  <27.282375, 43.353287, 33.251381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949966, 43.803410, 32.908810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237869, 43.618511, 32.701630>,  <27.410610, 43.507572, 32.577320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237869, 43.618511, 32.701630>,  <26.949966, 43.803410, 32.908810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237869, 43.618511, 32.701630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541066, 0.093942, -0.835717,
		0.434967, 0.881760, -0.182492,
		0.719758, -0.462249, -0.517952,
		27.453796, 43.479836, 32.546246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635876, 43.786758, 33.532101>,  <26.949966, 43.803410, 32.908810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635876, 43.786758, 33.532101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790375, 43.503761, 33.768833>,  <26.883074, 43.333961, 33.910873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790375, 43.503761, 33.768833>,  <26.635876, 43.786758, 33.532101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790375, 43.503761, 33.768833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268657, 0.527519, 0.805945,
		-0.882405, -0.470292, 0.013678,
		0.386245, -0.707495, 0.591832,
		26.906248, 43.291512, 33.946384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170303, 43.733212, 33.942707>,  <26.635876, 43.786758, 33.532101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170303, 43.733212, 33.942707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522511, 43.639961, 34.107796>,  <26.733835, 43.584011, 34.206848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522511, 43.639961, 34.107796>,  <26.170303, 43.733212, 33.942707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522511, 43.639961, 34.107796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221964, 0.566554, 0.793567,
		-0.418833, -0.790359, 0.447115,
		0.880518, -0.233128, 0.412723,
		26.786665, 43.570023, 34.231613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.216307, 43.554874, 34.774513>,  <26.170303, 43.733212, 33.942707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.216307, 43.554874, 34.774513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546629, 43.751644, 34.664204>,  <26.744823, 43.869705, 34.598019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546629, 43.751644, 34.664204>,  <26.216307, 43.554874, 34.774513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546629, 43.751644, 34.664204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004291, 0.494461, 0.869189,
		0.563938, -0.716598, 0.410440,
		0.825806, 0.491930, -0.275770,
		26.794371, 43.899223, 34.581474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679831, 43.732372, 35.303719>,  <26.216307, 43.554874, 34.774513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679831, 43.732372, 35.303719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781036, 44.007107, 35.031178>,  <26.841759, 44.171947, 34.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781036, 44.007107, 35.031178>,  <26.679831, 43.732372, 35.303719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781036, 44.007107, 35.031178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179913, 0.658579, 0.730689,
		0.950587, -0.307458, 0.043058,
		0.253013, 0.686836, -0.681352,
		26.856941, 44.213158, 34.826771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424463, 43.972610, 35.432793>,  <26.679831, 43.732372, 35.303719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424463, 43.972610, 35.432793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175362, 44.248501, 35.285034>,  <27.025902, 44.414036, 35.196377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175362, 44.248501, 35.285034>,  <27.424463, 43.972610, 35.432793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175362, 44.248501, 35.285034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223451, 0.609245, 0.760848,
		0.749833, 0.391277, -0.533529,
		-0.622752, 0.689727, -0.369401,
		26.988537, 44.455418, 35.174213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.112509, 43.544785, 35.594715>,  <27.424463, 43.972610, 35.432793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.112509, 43.544785, 35.594715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813845, 43.709221, 35.803905>,  <27.634647, 43.807884, 35.929420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813845, 43.709221, 35.803905>,  <28.112509, 43.544785, 35.594715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813845, 43.709221, 35.803905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018470, -0.773067, 0.634056,
		0.664951, 0.483083, 0.569623,
		-0.746658, 0.411095, 0.522974,
		27.589848, 43.832550, 35.960796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281771, 43.705048, 36.310394>,  <28.112509, 43.544785, 35.594715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281771, 43.705048, 36.310394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893740, 43.631439, 36.247044>,  <27.660921, 43.587273, 36.209034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893740, 43.631439, 36.247044>,  <28.281771, 43.705048, 36.310394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893740, 43.631439, 36.247044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035441, -0.752661, 0.657453,
		-0.240195, 0.632168, 0.736662,
		-0.970078, -0.184025, -0.158380,
		27.602716, 43.576233, 36.199528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931856, 43.529667, 36.902943>,  <28.281771, 43.705048, 36.310394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931856, 43.529667, 36.902943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697226, 43.381100, 36.615059>,  <27.556448, 43.291962, 36.442329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697226, 43.381100, 36.615059>,  <27.931856, 43.529667, 36.902943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697226, 43.381100, 36.615059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115900, -0.917994, 0.379281,
		-0.801558, 0.139063, 0.581521,
		-0.586577, -0.371414, -0.719707,
		27.521252, 43.269676, 36.399147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432537, 43.216633, 37.219524>,  <27.931856, 43.529667, 36.902943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432537, 43.216633, 37.219524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428427, 43.034004, 36.863674>,  <27.425961, 42.924427, 36.650162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428427, 43.034004, 36.863674>,  <27.432537, 43.216633, 37.219524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428427, 43.034004, 36.863674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062376, -0.888235, 0.455135,
		-0.998000, -0.050815, 0.037605,
		-0.010274, -0.456570, -0.889628,
		27.425344, 42.897034, 36.596786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944708, 42.659649, 37.316463>,  <27.432537, 43.216633, 37.219524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944708, 42.659649, 37.316463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102453, 42.550571, 36.965439>,  <27.197100, 42.485126, 36.754826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102453, 42.550571, 36.965439>,  <26.944708, 42.659649, 37.316463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102453, 42.550571, 36.965439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070421, -0.943181, 0.324731,
		-0.916252, -0.189861, -0.352752,
		0.394363, -0.272695, -0.877562,
		27.220762, 42.468761, 36.702171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606459, 42.095573, 37.120747>,  <26.944708, 42.659649, 37.316463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606459, 42.095573, 37.120747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953814, 42.059231, 36.925751>,  <27.162226, 42.037426, 36.808754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.953814, 42.059231, 36.925751>,  <26.606459, 42.095573, 37.120747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953814, 42.059231, 36.925751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028851, -0.972150, 0.232578,
		-0.495046, -0.216033, -0.841581,
		0.868388, -0.090856, -0.487492,
		27.214331, 42.031975, 36.779503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470758, 41.539009, 36.839165>,  <26.606459, 42.095573, 37.120747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470758, 41.539009, 36.839165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868805, 41.573696, 36.820316>,  <27.107634, 41.594509, 36.809006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868805, 41.573696, 36.820316>,  <26.470758, 41.539009, 36.839165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868805, 41.573696, 36.820316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094480, -0.975040, 0.200926,
		-0.028522, -0.204397, -0.978472,
		0.995118, 0.086715, -0.047122,
		27.167341, 41.599712, 36.806179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674517, 41.018707, 36.355850>,  <26.470758, 41.539009, 36.839165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674517, 41.018707, 36.355850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010269, 41.107521, 36.554302>,  <27.211720, 41.160809, 36.673374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.010269, 41.107521, 36.554302>,  <26.674517, 41.018707, 36.355850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010269, 41.107521, 36.554302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038413, -0.934710, 0.353329,
		0.542186, -0.277520, -0.793106,
		0.839380, 0.222036, 0.496126,
		27.262083, 41.174133, 36.703140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139263, 40.503372, 36.220287>,  <26.674517, 41.018707, 36.355850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139263, 40.503372, 36.220287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314011, 40.676014, 36.535973>,  <27.418859, 40.779598, 36.725384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314011, 40.676014, 36.535973>,  <27.139263, 40.503372, 36.220287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314011, 40.676014, 36.535973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282184, -0.898839, 0.335351,
		0.854117, 0.076199, -0.514468,
		0.436871, 0.431604, 0.789216,
		27.445072, 40.805496, 36.772736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773502, 40.221588, 36.195717>,  <27.139263, 40.503372, 36.220287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773502, 40.221588, 36.195717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724037, 40.349419, 36.571499>,  <27.694357, 40.426117, 36.796967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.724037, 40.349419, 36.571499>,  <27.773502, 40.221588, 36.195717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724037, 40.349419, 36.571499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476339, -0.811401, 0.338717,
		0.870522, 0.489387, -0.051885,
		-0.123664, 0.319575, 0.939457,
		27.686937, 40.445290, 36.853336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436565, 40.162563, 36.485348>,  <27.773502, 40.221588, 36.195717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436565, 40.162563, 36.485348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157286, 40.181461, 36.771084>,  <27.989717, 40.192799, 36.942528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157286, 40.181461, 36.771084>,  <28.436565, 40.162563, 36.485348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157286, 40.181461, 36.771084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359676, -0.839599, 0.407071,
		0.618994, 0.541149, 0.569214,
		-0.698198, 0.047242, 0.714344,
		27.947826, 40.195633, 36.985386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763157, 40.099400, 37.057407>,  <28.436565, 40.162563, 36.485348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763157, 40.099400, 37.057407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384510, 40.017708, 37.157173>,  <28.157322, 39.968693, 37.217033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.384510, 40.017708, 37.157173>,  <28.763157, 40.099400, 37.057407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384510, 40.017708, 37.157173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289545, -0.878798, 0.379313,
		0.141719, 0.431281, 0.891018,
		-0.946615, -0.204234, 0.249417,
		28.100525, 39.956436, 37.231998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718508, 39.950748, 37.834465>,  <28.763157, 40.099400, 37.057407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718508, 39.950748, 37.834465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424454, 39.773544, 37.629208>,  <28.248022, 39.667221, 37.506054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424454, 39.773544, 37.629208>,  <28.718508, 39.950748, 37.834465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424454, 39.773544, 37.629208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218868, -0.871501, 0.438842,
		-0.641618, 0.210297, 0.737632,
		-0.735134, -0.443013, -0.513144,
		28.203913, 39.640640, 37.475266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500351, 39.434258, 38.293091>,  <28.718508, 39.950748, 37.834465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500351, 39.434258, 38.293091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328114, 39.343636, 37.943630>,  <28.224771, 39.289261, 37.733955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.328114, 39.343636, 37.943630>,  <28.500351, 39.434258, 38.293091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328114, 39.343636, 37.943630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118735, -0.973789, 0.194002,
		-0.894703, -0.020197, 0.446205,
		-0.430591, -0.226554, -0.873650,
		28.198936, 39.275669, 37.681534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960957, 38.967049, 38.395290>,  <28.500351, 39.434258, 38.293091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960957, 38.967049, 38.395290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068018, 38.923977, 38.012299>,  <28.132254, 38.898136, 37.782505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068018, 38.923977, 38.012299>,  <27.960957, 38.967049, 38.395290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068018, 38.923977, 38.012299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153001, -0.985877, 0.068101,
		-0.951290, 0.128268, -0.280346,
		0.267651, -0.107678, -0.957480,
		28.148314, 38.891674, 37.725056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588476, 38.428669, 38.299919>,  <27.960957, 38.967049, 38.395290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588476, 38.428669, 38.299919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813711, 38.406754, 37.970085>,  <27.948853, 38.393604, 37.772186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813711, 38.406754, 37.970085>,  <27.588476, 38.428669, 38.299919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813711, 38.406754, 37.970085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225777, -0.970038, -0.089729,
		-0.794959, 0.236696, -0.558583,
		0.563085, -0.054784, -0.824581,
		27.982637, 38.390320, 37.722710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285347, 38.077236, 37.763401>,  <27.588476, 38.428669, 38.299919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285347, 38.077236, 37.763401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670143, 38.046608, 37.658550>,  <27.901020, 38.028229, 37.595638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.670143, 38.046608, 37.658550>,  <27.285347, 38.077236, 37.763401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670143, 38.046608, 37.658550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156661, -0.940970, -0.300055,
		-0.223680, 0.329715, -0.917200,
		0.961990, -0.076573, -0.262129,
		27.958740, 38.023636, 37.579910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352245, 37.785645, 37.096909>,  <27.285347, 38.077236, 37.763401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352245, 37.785645, 37.096909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722845, 37.727299, 37.235661>,  <27.945206, 37.692291, 37.318913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722845, 37.727299, 37.235661>,  <27.352245, 37.785645, 37.096909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722845, 37.727299, 37.235661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039776, -0.954615, -0.295175,
		0.374189, 0.259682, -0.890251,
		0.926499, -0.145862, 0.346878,
		28.000795, 37.683540, 37.339725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729267, 37.500362, 36.596703>,  <27.352245, 37.785645, 37.096909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729267, 37.500362, 36.596703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947899, 37.371639, 36.905945>,  <28.079077, 37.294407, 37.091492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.947899, 37.371639, 36.905945>,  <27.729267, 37.500362, 36.596703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947899, 37.371639, 36.905945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085192, -0.897056, -0.433627,
		0.833064, 0.302873, -0.462895,
		0.546577, -0.321804, 0.773108,
		28.111872, 37.275097, 37.137878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104729, 37.071922, 36.269596>,  <27.729267, 37.500362, 36.596703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104729, 37.071922, 36.269596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194181, 37.002201, 36.653179>,  <28.247852, 36.960369, 36.883331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194181, 37.002201, 36.653179>,  <28.104729, 37.071922, 36.269596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194181, 37.002201, 36.653179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114588, -0.972355, -0.203459,
		0.967915, 0.155385, -0.197475,
		0.223630, -0.174302, 0.958962,
		28.261271, 36.949909, 36.940868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614235, 36.551945, 36.267502>,  <28.104729, 37.071922, 36.269596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614235, 36.551945, 36.267502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497353, 36.510910, 36.647835>,  <28.427223, 36.486290, 36.876034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497353, 36.510910, 36.647835>,  <28.614235, 36.551945, 36.267502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497353, 36.510910, 36.647835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060789, -0.994212, -0.088586,
		0.954421, 0.031914, 0.296753,
		-0.292208, -0.102588, 0.950837,
		28.409691, 36.480133, 36.933086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191490, 36.241508, 36.655537>,  <28.614235, 36.551945, 36.267502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191490, 36.241508, 36.655537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861185, 36.166061, 36.868153>,  <28.663002, 36.120792, 36.995724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861185, 36.166061, 36.868153>,  <29.191490, 36.241508, 36.655537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861185, 36.166061, 36.868153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207699, -0.977890, -0.024332,
		0.524381, 0.090309, 0.846681,
		-0.825764, -0.188614, 0.531544,
		28.613457, 36.109478, 37.027615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401220, 35.685108, 37.164608>,  <29.191490, 36.241508, 36.655537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401220, 35.685108, 37.164608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003569, 35.672462, 37.123222>,  <28.764977, 35.664875, 37.098392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.003569, 35.672462, 37.123222>,  <29.401220, 35.685108, 37.164608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003569, 35.672462, 37.123222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028797, -0.999174, 0.028658,
		-0.104283, 0.025510, 0.994220,
		-0.994131, -0.031619, -0.103462,
		28.705330, 35.662975, 37.092182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055443, 35.128563, 37.549522>,  <29.401220, 35.685108, 37.164608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055443, 35.128563, 37.549522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790751, 35.185059, 37.254993>,  <28.631935, 35.218956, 37.078278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790751, 35.185059, 37.254993>,  <29.055443, 35.128563, 37.549522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790751, 35.185059, 37.254993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080815, -0.989810, -0.117236,
		-0.745374, -0.018073, 0.666402,
		-0.661730, 0.141240, -0.736318,
		28.592232, 35.227432, 37.034100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702936, 35.174076, 38.049831>,  <29.055443, 35.128563, 37.549522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702936, 35.174076, 38.049831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795837, 35.295547, 38.419445>,  <29.851578, 35.368431, 38.641212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795837, 35.295547, 38.419445>,  <29.702936, 35.174076, 38.049831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795837, 35.295547, 38.419445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931305, -0.343485, -0.121197,
		0.280586, 0.888705, -0.362594,
		0.232254, 0.303680, 0.924033,
		29.865513, 35.386650, 38.696655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288527, 35.660156, 38.041409>,  <29.702936, 35.174076, 38.049831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288527, 35.660156, 38.041409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246908, 35.477013, 38.394577>,  <30.221937, 35.367126, 38.606476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246908, 35.477013, 38.394577>,  <30.288527, 35.660156, 38.041409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246908, 35.477013, 38.394577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941555, -0.331316, -0.060856,
		0.320388, 0.824984, 0.465567,
		-0.104045, -0.457855, 0.882918,
		30.215694, 35.339657, 38.659451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806644, 35.835808, 38.491856>,  <30.288527, 35.660156, 38.041409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806644, 35.835808, 38.491856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685959, 35.480297, 38.629871>,  <30.613548, 35.266991, 38.712681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685959, 35.480297, 38.629871>,  <30.806644, 35.835808, 38.491856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685959, 35.480297, 38.629871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937274, -0.210226, 0.278070,
		-0.174606, 0.407290, 0.896453,
		-0.301713, -0.888774, 0.345036,
		30.595446, 35.213665, 38.733383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856150, 35.818233, 39.224346>,  <30.806644, 35.835808, 38.491856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856150, 35.818233, 39.224346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922630, 35.482990, 39.016521>,  <30.962519, 35.281845, 38.891827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922630, 35.482990, 39.016521>,  <30.856150, 35.818233, 39.224346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922630, 35.482990, 39.016521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965550, 0.031334, 0.258323,
		-0.200223, -0.544598, 0.814447,
		0.166202, -0.838112, -0.519563,
		30.972490, 35.231556, 38.860653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390656, 35.650253, 39.720860>,  <30.856150, 35.818233, 39.224346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390656, 35.650253, 39.720860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080660, 35.875435, 39.835732>,  <30.894663, 36.010544, 39.904655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080660, 35.875435, 39.835732>,  <31.390656, 35.650253, 39.720860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080660, 35.875435, 39.835732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318982, 0.043839, -0.946746,
		-0.545566, -0.825324, 0.145598,
		-0.774989, 0.562955, 0.287181,
		30.848164, 36.044323, 39.921886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224943, 35.191570, 40.366867>,  <31.390656, 35.650253, 39.720860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224943, 35.191570, 40.366867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354834, 34.870319, 40.167053>,  <31.432768, 34.677567, 40.047165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354834, 34.870319, 40.167053>,  <31.224943, 35.191570, 40.366867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354834, 34.870319, 40.167053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367244, -0.379654, 0.849114,
		-0.871600, -0.459179, 0.171662,
		0.324723, -0.803130, -0.499537,
		31.452251, 34.629379, 40.017193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897848, 34.539749, 40.636875>,  <31.224943, 35.191570, 40.366867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897848, 34.539749, 40.636875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241718, 34.427391, 40.466202>,  <31.448040, 34.359978, 40.363796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241718, 34.427391, 40.466202>,  <30.897848, 34.539749, 40.636875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241718, 34.427391, 40.466202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305544, -0.386651, 0.870140,
		-0.409396, -0.878408, -0.246568,
		0.859674, -0.280894, -0.426685,
		31.499620, 34.343124, 40.338196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034826, 33.980114, 40.933933>,  <30.897848, 34.539749, 40.636875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034826, 33.980114, 40.933933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402561, 34.051414, 40.793621>,  <31.623201, 34.094196, 40.709435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402561, 34.051414, 40.793621>,  <31.034826, 33.980114, 40.933933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402561, 34.051414, 40.793621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393046, -0.374506, 0.839798,
		0.018326, -0.909929, -0.414358,
		0.919336, 0.178251, -0.350781,
		31.678362, 34.104889, 40.688385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392279, 33.411160, 40.889721>,  <31.034826, 33.980114, 40.933933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392279, 33.411160, 40.889721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688620, 33.678024, 40.920780>,  <31.866425, 33.838142, 40.939415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688620, 33.678024, 40.920780>,  <31.392279, 33.411160, 40.889721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688620, 33.678024, 40.920780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374249, -0.506028, 0.777093,
		0.557745, -0.546648, -0.624578,
		0.740850, 0.667167, 0.077652,
		31.910875, 33.878174, 40.944077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883535, 33.010937, 41.192131>,  <31.392279, 33.411160, 40.889721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883535, 33.010937, 41.192131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017082, 33.386288, 41.227867>,  <32.097210, 33.611500, 41.249310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017082, 33.386288, 41.227867>,  <31.883535, 33.010937, 41.192131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017082, 33.386288, 41.227867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632770, -0.293365, 0.716616,
		0.698666, -0.182720, -0.691722,
		0.333867, 0.938376, 0.089344,
		32.117241, 33.667801, 41.254669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582603, 32.920097, 41.082302>,  <31.883535, 33.010937, 41.192131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582603, 32.920097, 41.082302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509586, 33.260899, 41.278576>,  <32.465775, 33.465378, 41.396339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509586, 33.260899, 41.278576>,  <32.582603, 32.920097, 41.082302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509586, 33.260899, 41.278576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674544, -0.254565, 0.692955,
		0.715311, 0.457482, -0.528243,
		-0.182542, 0.852002, 0.490685,
		32.454823, 33.516499, 41.425781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244747, 33.178272, 41.226429>,  <32.582603, 32.920097, 41.082302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244747, 33.178272, 41.226429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007675, 33.371189, 41.484463>,  <32.865433, 33.486938, 41.639282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007675, 33.371189, 41.484463>,  <33.244747, 33.178272, 41.226429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007675, 33.371189, 41.484463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588716, -0.287187, 0.755604,
		0.549678, 0.827600, -0.113721,
		-0.592679, 0.482288, 0.645082,
		32.829872, 33.515877, 41.677986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789009, 33.503754, 41.644806>,  <33.244747, 33.178272, 41.226429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789009, 33.503754, 41.644806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439442, 33.495819, 41.839073>,  <33.229702, 33.491058, 41.955631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439442, 33.495819, 41.839073>,  <33.789009, 33.503754, 41.644806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439442, 33.495819, 41.839073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459861, -0.357408, 0.812888,
		0.157453, 0.933737, 0.321470,
		-0.873920, -0.019839, 0.485665,
		33.177265, 33.489868, 41.984772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847652, 33.858650, 42.292244>,  <33.789009, 33.503754, 41.644806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847652, 33.858650, 42.292244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561623, 33.579220, 42.302578>,  <33.390003, 33.411564, 42.308777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561623, 33.579220, 42.302578>,  <33.847652, 33.858650, 42.292244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561623, 33.579220, 42.302578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349290, -0.325042, 0.878831,
		-0.605530, 0.637452, 0.476433,
		-0.715073, -0.698572, 0.025833,
		33.347099, 33.369648, 42.310329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539692, 33.925407, 42.976929>,  <33.847652, 33.858650, 42.292244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539692, 33.925407, 42.976929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405697, 33.568794, 42.854980>,  <33.325302, 33.354824, 42.781811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405697, 33.568794, 42.854980>,  <33.539692, 33.925407, 42.976929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405697, 33.568794, 42.854980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074651, -0.347665, 0.934642,
		-0.939262, 0.290332, 0.183016,
		-0.334985, -0.891536, -0.304875,
		33.305202, 33.301334, 42.763519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089226, 33.765041, 43.525761>,  <33.539692, 33.925407, 42.976929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089226, 33.765041, 43.525761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135036, 33.409370, 43.348560>,  <33.162525, 33.195969, 43.242241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135036, 33.409370, 43.348560>,  <33.089226, 33.765041, 43.525761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135036, 33.409370, 43.348560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177966, -0.457082, 0.871438,
		-0.977349, -0.020968, -0.210593,
		0.114531, -0.889177, -0.442998,
		33.169395, 33.142616, 43.215660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523598, 33.319599, 43.813713>,  <33.089226, 33.765041, 43.525761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523598, 33.319599, 43.813713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816608, 33.092880, 43.662910>,  <32.992416, 32.956848, 43.572430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816608, 33.092880, 43.662910>,  <32.523598, 33.319599, 43.813713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816608, 33.092880, 43.662910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061948, -0.496029, 0.866094,
		-0.677909, -0.657795, -0.328244,
		0.732531, -0.566799, -0.377011,
		33.036369, 32.922840, 43.549809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233711, 32.781868, 43.891457>,  <32.523598, 33.319599, 43.813713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233711, 32.781868, 43.891457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627224, 32.713757, 43.868919>,  <32.863331, 32.672890, 43.855396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627224, 32.713757, 43.868919>,  <32.233711, 32.781868, 43.891457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627224, 32.713757, 43.868919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038843, -0.508948, 0.859920,
		-0.175097, -0.843788, -0.507309,
		0.983784, -0.170275, -0.056340,
		32.922359, 32.662674, 43.852016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337311, 32.091564, 44.037540>,  <32.233711, 32.781868, 43.891457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337311, 32.091564, 44.037540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698910, 32.250645, 44.100300>,  <32.915871, 32.346092, 44.137955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698910, 32.250645, 44.100300>,  <32.337311, 32.091564, 44.037540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698910, 32.250645, 44.100300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087929, -0.532094, 0.842107,
		0.418390, -0.747470, -0.515983,
		0.904001, 0.397699, 0.156899,
		32.970112, 32.369953, 44.147369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960388, 31.533756, 44.142632>,  <32.337311, 32.091564, 44.037540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960388, 31.533756, 44.142632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043625, 31.881580, 44.321770>,  <33.093567, 32.090275, 44.429253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043625, 31.881580, 44.321770>,  <32.960388, 31.533756, 44.142632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043625, 31.881580, 44.321770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097498, -0.474030, 0.875094,
		0.973238, -0.138434, -0.183422,
		0.208090, 0.869558, 0.447847,
		33.106052, 32.142448, 44.456123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463905, 31.284275, 44.579651>,  <32.960388, 31.533756, 44.142632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463905, 31.284275, 44.579651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313404, 31.631702, 44.708660>,  <33.223103, 31.840158, 44.786068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313404, 31.631702, 44.708660>,  <33.463905, 31.284275, 44.579651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313404, 31.631702, 44.708660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127053, -0.393185, 0.910639,
		0.917766, 0.301649, 0.258290,
		-0.376249, 0.868570, 0.322526,
		33.200531, 31.892273, 44.805416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797413, 31.504700, 45.227821>,  <33.463905, 31.284275, 44.579651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797413, 31.504700, 45.227821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470898, 31.733126, 45.262604>,  <33.274990, 31.870182, 45.283474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470898, 31.733126, 45.262604>,  <33.797413, 31.504700, 45.227821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470898, 31.733126, 45.262604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040313, -0.206485, 0.977619,
		0.576240, 0.794511, 0.191572,
		-0.816286, 0.571066, 0.086956,
		33.226013, 31.904446, 45.288692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843353, 31.691774, 45.861492>,  <33.797413, 31.504700, 45.227821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843353, 31.691774, 45.861492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455139, 31.755074, 45.788799>,  <33.222210, 31.793053, 45.745186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455139, 31.755074, 45.788799>,  <33.843353, 31.691774, 45.861492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455139, 31.755074, 45.788799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230306, -0.387249, 0.892747,
		0.070903, 0.908292, 0.412284,
		-0.970532, 0.158250, -0.181728,
		33.163979, 31.802549, 45.734280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609802, 31.960014, 46.423286>,  <33.843353, 31.691774, 45.861492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609802, 31.960014, 46.423286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254387, 31.853460, 46.273865>,  <33.041138, 31.789528, 46.184212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254387, 31.853460, 46.273865>,  <33.609802, 31.960014, 46.423286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254387, 31.853460, 46.273865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307112, -0.259564, 0.915592,
		-0.340860, 0.928259, 0.148823,
		-0.888536, -0.266384, -0.373555,
		32.987827, 31.773544, 46.161797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062038, 32.305859, 46.916649>,  <33.609802, 31.960014, 46.423286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062038, 32.305859, 46.916649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856873, 32.022495, 46.722710>,  <32.733772, 31.852478, 46.606346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856873, 32.022495, 46.722710>,  <33.062038, 32.305859, 46.916649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856873, 32.022495, 46.722710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481495, -0.230176, 0.845684,
		-0.710689, 0.667216, -0.223034,
		-0.512916, -0.708408, -0.484845,
		32.702999, 31.809973, 46.577255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360294, 32.362045, 47.063320>,  <33.062038, 32.305859, 46.916649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360294, 32.362045, 47.063320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393139, 31.976051, 46.963669>,  <32.412846, 31.744455, 46.903877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393139, 31.976051, 46.963669>,  <32.360294, 32.362045, 47.063320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393139, 31.976051, 46.963669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484957, -0.257071, 0.835901,
		-0.870675, 0.052179, -0.489084,
		0.082113, -0.964983, -0.249130,
		32.417774, 31.686556, 46.888931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833258, 32.058693, 47.464977>,  <32.360294, 32.362045, 47.063320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833258, 32.058693, 47.464977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004200, 31.733175, 47.307449>,  <32.106766, 31.537863, 47.212933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004200, 31.733175, 47.307449>,  <31.833258, 32.058693, 47.464977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004200, 31.733175, 47.307449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268981, -0.530330, 0.803989,
		-0.863142, -0.237659, -0.445537,
		0.427357, -0.813798, -0.393825,
		32.132408, 31.489037, 47.189301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339981, 31.468882, 47.498497>,  <31.833258, 32.058693, 47.464977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339981, 31.468882, 47.498497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709291, 31.315495, 47.489399>,  <31.930878, 31.223463, 47.483940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709291, 31.315495, 47.489399>,  <31.339981, 31.468882, 47.498497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709291, 31.315495, 47.489399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198172, -0.526181, 0.826959,
		-0.329077, -0.759004, -0.561802,
		0.923275, -0.383467, -0.022741,
		31.986273, 31.200455, 47.482578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255367, 30.956020, 47.885685>,  <31.339981, 31.468882, 47.498497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255367, 30.956020, 47.885685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654549, 30.980009, 47.894585>,  <31.894056, 30.994402, 47.899925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654549, 30.980009, 47.894585>,  <31.255367, 30.956020, 47.885685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654549, 30.980009, 47.894585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017425, -0.589517, 0.807568,
		0.061545, -0.805527, -0.589355,
		0.997953, 0.059972, 0.022246,
		31.953934, 30.998001, 47.901257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547672, 30.283115, 47.886028>,  <31.255367, 30.956020, 47.885685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547672, 30.283115, 47.886028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851263, 30.504742, 48.022831>,  <32.033417, 30.637716, 48.104912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851263, 30.504742, 48.022831>,  <31.547672, 30.283115, 47.886028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851263, 30.504742, 48.022831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081347, -0.601833, 0.794468,
		0.646018, -0.575161, -0.501848,
		0.758976, 0.554064, 0.342007,
		32.078957, 30.670961, 48.125435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930988, 29.787607, 48.190895>,  <31.547672, 30.283115, 47.886028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930988, 29.787607, 48.190895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044697, 30.141600, 48.338409>,  <32.112923, 30.353994, 48.426918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044697, 30.141600, 48.338409>,  <31.930988, 29.787607, 48.190895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044697, 30.141600, 48.338409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127073, -0.416038, 0.900425,
		0.950286, -0.209100, -0.230724,
		0.284269, 0.884980, 0.368784,
		32.129978, 30.407093, 48.449043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635376, 29.657635, 48.428497>,  <31.930988, 29.787607, 48.190895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635376, 29.657635, 48.428497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475742, 29.970842, 48.619331>,  <32.379963, 30.158768, 48.733829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475742, 29.970842, 48.619331>,  <32.635376, 29.657635, 48.428497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475742, 29.970842, 48.619331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274855, -0.394223, 0.876951,
		0.874748, 0.481109, -0.057887,
		-0.399088, 0.783021, 0.477081,
		32.356014, 30.205750, 48.762455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133236, 29.778767, 48.785332>,  <32.635376, 29.657635, 48.428497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133236, 29.778767, 48.785332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832855, 29.963013, 48.974609>,  <32.652626, 30.073561, 49.088177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832855, 29.963013, 48.974609>,  <33.133236, 29.778767, 48.785332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832855, 29.963013, 48.974609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350049, -0.329948, 0.876698,
		0.559948, 0.823996, 0.086537,
		-0.750949, 0.460613, 0.473193,
		32.607571, 30.101196, 49.116566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424358, 30.034975, 49.482132>,  <33.133236, 29.778767, 48.785332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424358, 30.034975, 49.482132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027714, 30.016949, 49.530602>,  <32.789726, 30.006134, 49.559685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027714, 30.016949, 49.530602>,  <33.424358, 30.034975, 49.482132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027714, 30.016949, 49.530602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126986, -0.163636, 0.978314,
		-0.024259, 0.985491, 0.167985,
		-0.991608, -0.045065, 0.121174,
		32.730232, 30.003429, 49.566952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299088, 30.344458, 50.026104>,  <33.424358, 30.034975, 49.482132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299088, 30.344458, 50.026104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971283, 30.117388, 49.994747>,  <32.774601, 29.981146, 49.975933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971283, 30.117388, 49.994747>,  <33.299088, 30.344458, 50.026104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971283, 30.117388, 49.994747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109765, -0.289753, 0.950786,
		-0.562453, 0.770575, 0.299767,
		-0.819511, -0.567677, -0.078390,
		32.725430, 29.947084, 49.971230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852066, 30.442005, 50.577290>,  <33.299088, 30.344458, 50.026104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852066, 30.442005, 50.577290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702507, 30.092968, 50.451572>,  <32.612770, 29.883545, 50.376141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702507, 30.092968, 50.451572>,  <32.852066, 30.442005, 50.577290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702507, 30.092968, 50.451572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133521, -0.284700, 0.949272,
		-0.917809, 0.396894, -0.010061,
		-0.373896, -0.872594, -0.314294,
		32.590340, 29.831190, 50.357285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508862, 30.224722, 51.143227>,  <32.852066, 30.442005, 50.577290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508862, 30.224722, 51.143227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471245, 29.901384, 50.910767>,  <32.448677, 29.707382, 50.771290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471245, 29.901384, 50.910767>,  <32.508862, 30.224722, 51.143227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471245, 29.901384, 50.910767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349577, -0.519760, 0.779516,
		-0.932176, 0.276462, -0.233701,
		-0.094038, -0.808343, -0.581153,
		32.443035, 29.658882, 50.736420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788992, 29.973608, 51.276031>,  <32.508862, 30.224722, 51.143227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788992, 29.973608, 51.276031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033123, 29.693407, 51.128086>,  <32.179600, 29.525286, 51.039318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033123, 29.693407, 51.128086>,  <31.788992, 29.973608, 51.276031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033123, 29.693407, 51.128086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304047, -0.638304, 0.707195,
		-0.731477, -0.319162, -0.602558,
		0.610325, -0.700503, -0.369864,
		32.216221, 29.483257, 51.017128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387941, 29.319763, 51.145626>,  <31.788992, 29.973608, 51.276031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387941, 29.319763, 51.145626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776466, 29.227432, 51.168507>,  <32.009583, 29.172033, 51.182236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776466, 29.227432, 51.168507>,  <31.387941, 29.319763, 51.145626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776466, 29.227432, 51.168507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213171, -0.738495, 0.639675,
		-0.105412, -0.633517, -0.766515,
		0.971312, -0.230828, 0.057202,
		32.067860, 29.158184, 51.185665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347517, 28.649803, 51.377022>,  <31.387941, 29.319763, 51.145626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347517, 28.649803, 51.377022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731436, 28.738144, 51.446320>,  <31.961786, 28.791147, 51.487900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731436, 28.738144, 51.446320>,  <31.347517, 28.649803, 51.377022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731436, 28.738144, 51.446320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034824, -0.706132, 0.707223,
		0.278527, -0.672757, -0.685435,
		0.959797, 0.220851, 0.173248,
		32.019375, 28.804399, 51.498295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705412, 28.101814, 51.247681>,  <31.347517, 28.649803, 51.377022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705412, 28.101814, 51.247681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900463, 28.312927, 51.525864>,  <32.017494, 28.439594, 51.692776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.900463, 28.312927, 51.525864>,  <31.705412, 28.101814, 51.247681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900463, 28.312927, 51.525864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008703, -0.793607, 0.608368,
		0.873007, -0.302711, -0.382393,
		0.487630, 0.527782, 0.695459,
		32.046753, 28.471262, 51.734501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221310, 27.584517, 51.442989>,  <31.705412, 28.101814, 51.247681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221310, 27.584517, 51.442989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242706, 27.887056, 51.703781>,  <32.255547, 28.068581, 51.860256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242706, 27.887056, 51.703781>,  <32.221310, 27.584517, 51.442989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242706, 27.887056, 51.703781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268544, -0.639756, 0.720137,
		0.961781, 0.136561, -0.237336,
		0.053494, 0.756349, 0.651977,
		32.258755, 28.113960, 51.899376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904892, 27.569843, 51.725590>,  <32.221310, 27.584517, 51.442989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904892, 27.569843, 51.725590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647144, 27.757725, 51.966976>,  <32.492496, 27.870453, 52.111809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647144, 27.757725, 51.966976>,  <32.904892, 27.569843, 51.725590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647144, 27.757725, 51.966976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363330, -0.506331, 0.782062,
		0.672889, 0.723193, 0.155607,
		-0.644370, 0.469704, 0.603462,
		32.453835, 27.898636, 52.148014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242680, 27.470005, 52.327824>,  <32.904892, 27.569843, 51.725590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242680, 27.470005, 52.327824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881462, 27.600805, 52.439240>,  <32.664730, 27.679285, 52.506088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881462, 27.600805, 52.439240>,  <33.242680, 27.470005, 52.327824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881462, 27.600805, 52.439240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161715, -0.341920, 0.925710,
		0.397944, 0.881000, 0.255889,
		-0.903044, 0.327000, 0.278536,
		32.610550, 27.698906, 52.522800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298183, 28.018700, 52.844959>,  <33.242680, 27.470005, 52.327824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298183, 28.018700, 52.844959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943897, 27.842121, 52.902420>,  <32.731327, 27.736174, 52.936897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943897, 27.842121, 52.902420>,  <33.298183, 28.018700, 52.844959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943897, 27.842121, 52.902420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254923, -0.203885, 0.945222,
		-0.387977, 0.873816, 0.293119,
		-0.885713, -0.441447, 0.143653,
		32.678185, 27.709686, 52.945515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096825, 28.152330, 53.466694>,  <33.298183, 28.018700, 52.844959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096825, 28.152330, 53.466694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860367, 27.840530, 53.383812>,  <32.718494, 27.653450, 53.334084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860367, 27.840530, 53.383812>,  <33.096825, 28.152330, 53.466694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860367, 27.840530, 53.383812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227376, -0.407529, 0.884432,
		-0.773855, 0.475711, 0.418147,
		-0.591141, -0.779499, -0.207203,
		32.683025, 27.606680, 53.321651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900394, 27.887897, 54.081093>,  <33.096825, 28.152330, 53.466694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900394, 27.887897, 54.081093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742580, 27.571247, 53.894470>,  <32.647892, 27.381258, 53.782497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742580, 27.571247, 53.894470>,  <32.900394, 27.887897, 54.081093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742580, 27.571247, 53.894470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022091, -0.499424, 0.866076,
		-0.918614, 0.352006, 0.179553,
		-0.394537, -0.791624, -0.466554,
		32.624218, 27.333759, 53.754505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441250, 27.583614, 54.509274>,  <32.900394, 27.887897, 54.081093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441250, 27.583614, 54.509274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524834, 27.287773, 54.253361>,  <32.574982, 27.110268, 54.099812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524834, 27.287773, 54.253361>,  <32.441250, 27.583614, 54.509274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524834, 27.287773, 54.253361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251114, -0.591709, 0.766044,
		-0.945134, -0.320729, 0.062083,
		0.208957, -0.739604, -0.639783,
		32.587521, 27.065891, 54.061424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101616, 26.929148, 54.776291>,  <32.441250, 27.583614, 54.509274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101616, 26.929148, 54.776291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421555, 26.849413, 54.549835>,  <32.613518, 26.801573, 54.413963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421555, 26.849413, 54.549835>,  <32.101616, 26.929148, 54.776291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421555, 26.849413, 54.549835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349109, -0.612759, 0.708977,
		-0.488230, -0.764716, -0.420523,
		0.799846, -0.199335, -0.566137,
		32.661507, 26.789612, 54.379993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750381, 26.299803, 54.539700>,  <32.101616, 26.929148, 54.776291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750381, 26.299803, 54.539700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744616, 25.913900, 54.644798>,  <31.741156, 25.682360, 54.707859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744616, 25.913900, 54.644798>,  <31.750381, 26.299803, 54.539700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744616, 25.913900, 54.644798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997832, -0.030757, -0.058184,
		0.064214, 0.261343, 0.963108,
		-0.014417, -0.964756, 0.262751,
		31.740290, 25.624474, 54.723625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174965, 26.155622, 55.125084>,  <31.750381, 26.299803, 54.539700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174965, 26.155622, 55.125084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160225, 25.815094, 54.915745>,  <32.151379, 25.610777, 54.790142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160225, 25.815094, 54.915745>,  <32.174965, 26.155622, 55.125084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160225, 25.815094, 54.915745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987397, 0.049641, -0.150279,
		0.153915, -0.522293, 0.838761,
		-0.036852, -0.851320, -0.523351,
		32.149170, 25.559698, 54.758739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793407, 25.655895, 55.382622>,  <32.174965, 26.155622, 55.125084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793407, 25.655895, 55.382622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676533, 25.587301, 55.006279>,  <32.606407, 25.546144, 54.780472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676533, 25.587301, 55.006279>,  <32.793407, 25.655895, 55.382622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676533, 25.587301, 55.006279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949695, -0.167974, -0.264318,
		-0.112713, -0.970761, 0.211940,
		-0.292191, -0.171486, -0.940860,
		32.588875, 25.535854, 54.724022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007309, 24.981319, 55.158047>,  <32.793407, 25.655895, 55.382622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007309, 24.981319, 55.158047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973450, 25.223602, 54.841579>,  <32.953136, 25.368973, 54.651699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973450, 25.223602, 54.841579>,  <33.007309, 24.981319, 55.158047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973450, 25.223602, 54.841579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930129, -0.236730, -0.280747,
		-0.357345, -0.759656, -0.543348,
		-0.084645, 0.605707, -0.791173,
		32.948055, 25.405315, 54.604229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050507, 24.700336, 54.411949>,  <33.007309, 24.981319, 55.158047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050507, 24.700336, 54.411949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173752, 25.080820, 54.405411>,  <33.247700, 25.309111, 54.401485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173752, 25.080820, 54.405411>,  <33.050507, 24.700336, 54.411949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173752, 25.080820, 54.405411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922167, -0.302838, -0.240620,
		-0.233831, 0.059061, -0.970482,
		0.308110, 0.951210, -0.016349,
		33.266186, 25.366182, 54.400505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476147, 24.475330, 54.109032>,  <33.050507, 24.700336, 54.411949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476147, 24.475330, 54.109032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337341, 24.153561, 53.916164>,  <32.254059, 23.960499, 53.800446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337341, 24.153561, 53.916164>,  <32.476147, 24.475330, 54.109032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337341, 24.153561, 53.916164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071520, 0.535316, -0.841618,
		0.935129, -0.257569, -0.243294,
		-0.347014, -0.804422, -0.482168,
		32.233238, 23.912233, 53.771515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881638, 24.313667, 53.465157>,  <32.476147, 24.475330, 54.109032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881638, 24.313667, 53.465157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502113, 24.192434, 53.429604>,  <32.274399, 24.119694, 53.408272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502113, 24.192434, 53.429604>,  <32.881638, 24.313667, 53.465157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502113, 24.192434, 53.429604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090602, 0.530745, -0.842675,
		0.302570, -0.791486, -0.531037,
		-0.948811, -0.303081, -0.088878,
		32.217468, 24.101509, 53.402939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781528, 23.856798, 52.840202>,  <32.881638, 24.313667, 53.465157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781528, 23.856798, 52.840202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468723, 24.079685, 52.951889>,  <32.281040, 24.213417, 53.018902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468723, 24.079685, 52.951889>,  <32.781528, 23.856798, 52.840202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468723, 24.079685, 52.951889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040716, 0.492708, -0.869242,
		-0.621930, -0.668391, -0.407992,
		-0.782014, 0.557219, 0.279215,
		32.234119, 24.246851, 53.035652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215618, 23.856314, 52.240791>,  <32.781528, 23.856798, 52.840202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215618, 23.856314, 52.240791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232407, 24.181431, 52.473209>,  <32.242477, 24.376501, 52.612659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232407, 24.181431, 52.473209>,  <32.215618, 23.856314, 52.240791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232407, 24.181431, 52.473209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045535, 0.582506, -0.811550,
		-0.998081, 0.007602, 0.061458,
		0.041969, 0.812791, 0.581042,
		32.244999, 24.425268, 52.647522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573006, 24.329758, 52.108402>,  <32.215618, 23.856314, 52.240791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573006, 24.329758, 52.108402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864985, 24.566338, 52.245434>,  <32.040173, 24.708284, 52.327652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864985, 24.566338, 52.245434>,  <31.573006, 24.329758, 52.108402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864985, 24.566338, 52.245434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142084, 0.621572, -0.770364,
		-0.668571, 0.513651, 0.537750,
		0.729948, 0.591449, 0.342583,
		32.083969, 24.743773, 52.348209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332050, 24.955677, 52.048954>,  <31.573006, 24.329758, 52.108402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332050, 24.955677, 52.048954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729559, 24.999393, 52.040222>,  <31.968063, 25.025623, 52.034985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729559, 24.999393, 52.040222>,  <31.332050, 24.955677, 52.048954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729559, 24.999393, 52.040222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086268, 0.630315, -0.771531,
		-0.070563, 0.768607, 0.635817,
		0.993770, 0.109293, -0.021829,
		32.027691, 25.032181, 52.033672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431372, 25.607807, 51.833851>,  <31.332050, 24.955677, 52.048954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431372, 25.607807, 51.833851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793859, 25.446465, 51.783142>,  <32.011353, 25.349659, 51.752716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793859, 25.446465, 51.783142>,  <31.431372, 25.607807, 51.833851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793859, 25.446465, 51.783142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112806, 0.519622, -0.846917,
		0.407485, 0.753191, 0.516392,
		0.906218, -0.403358, -0.126774,
		32.065723, 25.325457, 51.745110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869957, 26.174171, 51.685928>,  <31.431372, 25.607807, 51.833851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869957, 26.174171, 51.685928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104031, 25.872738, 51.566147>,  <32.244473, 25.691877, 51.494278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104031, 25.872738, 51.566147>,  <31.869957, 26.174171, 51.685928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104031, 25.872738, 51.566147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270334, 0.529457, -0.804112,
		0.764514, 0.389599, 0.513547,
		0.585182, -0.753584, -0.299456,
		32.279587, 25.646664, 51.476311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432705, 26.524858, 51.334599>,  <31.869957, 26.174171, 51.685928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432705, 26.524858, 51.334599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483284, 26.146666, 51.214550>,  <32.513630, 25.919750, 51.142521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483284, 26.146666, 51.214550>,  <32.432705, 26.524858, 51.334599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483284, 26.146666, 51.214550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371219, 0.325666, -0.869562,
		0.919895, -0.001457, 0.392161,
		0.126447, -0.945484, -0.300119,
		32.521217, 25.863020, 51.124516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157631, 26.421532, 51.218426>,  <32.432705, 26.524858, 51.334599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157631, 26.421532, 51.218426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946262, 26.149708, 51.014870>,  <32.819443, 25.986612, 50.892738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946262, 26.149708, 51.014870>,  <33.157631, 26.421532, 51.218426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946262, 26.149708, 51.014870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442742, 0.290869, -0.848160,
		0.724396, -0.673492, 0.147169,
		-0.528422, -0.679561, -0.508888,
		32.787735, 25.945839, 50.862202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663670, 26.038540, 50.714806>,  <33.157631, 26.421532, 51.218426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663670, 26.038540, 50.714806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285690, 25.998507, 50.590191>,  <33.058903, 25.974487, 50.515423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285690, 25.998507, 50.590191>,  <33.663670, 26.038540, 50.714806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285690, 25.998507, 50.590191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262266, 0.337693, -0.903980,
		0.195675, -0.935921, -0.292855,
		-0.944949, -0.100080, -0.311538,
		33.002205, 25.968483, 50.496731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739010, 25.687950, 50.108856>,  <33.663670, 26.038540, 50.714806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739010, 25.687950, 50.108856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375942, 25.854862, 50.090889>,  <33.158100, 25.955009, 50.080109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375942, 25.854862, 50.090889>,  <33.739010, 25.687950, 50.108856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375942, 25.854862, 50.090889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326023, 0.633651, -0.701567,
		-0.264287, -0.651433, -0.711187,
		-0.907668, 0.417278, -0.044917,
		33.103642, 25.980045, 50.077415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471050, 25.560488, 49.348263>,  <33.739010, 25.687950, 50.108856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471050, 25.560488, 49.348263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270447, 25.854015, 49.531563>,  <33.150085, 26.030132, 49.641544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270447, 25.854015, 49.531563>,  <33.471050, 25.560488, 49.348263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270447, 25.854015, 49.531563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348185, 0.656084, -0.669568,
		-0.791993, -0.176240, -0.584539,
		-0.501511, 0.733821, 0.458250,
		33.119995, 26.074162, 49.669037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094166, 25.757036, 48.892483>,  <33.471050, 25.560488, 49.348263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094166, 25.757036, 48.892483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098492, 26.073397, 49.137222>,  <33.101089, 26.263214, 49.284065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098492, 26.073397, 49.137222>,  <33.094166, 25.757036, 48.892483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098492, 26.073397, 49.137222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206037, 0.596989, -0.775341,
		-0.978485, 0.134451, -0.156496,
		0.010818, 0.790903, 0.611846,
		33.101738, 26.310667, 49.320778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653622, 26.256901, 48.599159>,  <33.094166, 25.757036, 48.892483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653622, 26.256901, 48.599159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900665, 26.470304, 48.830307>,  <33.048893, 26.598347, 48.968994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900665, 26.470304, 48.830307>,  <32.653622, 26.256901, 48.599159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900665, 26.470304, 48.830307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086707, 0.684078, -0.724237,
		-0.781692, 0.497399, 0.376233,
		0.617608, 0.533508, 0.577866,
		33.085949, 26.630358, 49.003666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350861, 26.910110, 48.582298>,  <32.653622, 26.256901, 48.599159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350861, 26.910110, 48.582298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723083, 26.980822, 48.710552>,  <32.946419, 27.023249, 48.787506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723083, 26.980822, 48.710552>,  <32.350861, 26.910110, 48.582298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723083, 26.980822, 48.710552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005536, 0.868833, -0.495074,
		-0.366099, 0.462470, 0.807522,
		0.930559, 0.176776, 0.320640,
		33.002251, 27.033854, 48.806744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332218, 27.573702, 48.726284>,  <32.350861, 26.910110, 48.582298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332218, 27.573702, 48.726284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724152, 27.497053, 48.703663>,  <32.959312, 27.451065, 48.690090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724152, 27.497053, 48.703663>,  <32.332218, 27.573702, 48.726284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724152, 27.497053, 48.703663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096151, 0.700406, -0.707238,
		0.175135, 0.687541, 0.704709,
		0.979838, -0.191621, -0.056557,
		33.018105, 27.439568, 48.686695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781170, 28.249624, 48.809254>,  <32.332218, 27.573702, 48.726284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781170, 28.249624, 48.809254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017807, 28.000669, 48.604256>,  <33.159790, 27.851295, 48.481258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017807, 28.000669, 48.604256>,  <32.781170, 28.249624, 48.809254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017807, 28.000669, 48.604256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035165, 0.615138, -0.787635,
		0.805469, 0.483982, 0.342026,
		0.591594, -0.622388, -0.512493,
		33.195286, 27.813953, 48.450508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263149, 28.682661, 48.430130>,  <32.781170, 28.249624, 48.809254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263149, 28.682661, 48.430130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283695, 28.335773, 48.232021>,  <33.296024, 28.127642, 48.113155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283695, 28.335773, 48.232021>,  <33.263149, 28.682661, 48.430130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283695, 28.335773, 48.232021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107010, 0.497849, -0.860637,
		0.992930, -0.008791, 0.118374,
		0.051367, -0.867219, -0.495270,
		33.299107, 28.075607, 48.083439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794827, 28.769110, 48.014095>,  <33.263149, 28.682661, 48.430130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794827, 28.769110, 48.014095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601635, 28.466413, 47.837879>,  <33.485718, 28.284796, 47.732151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601635, 28.466413, 47.837879>,  <33.794827, 28.769110, 48.014095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601635, 28.466413, 47.837879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206090, 0.390733, -0.897137,
		0.851031, -0.524092, -0.032761,
		-0.482983, -0.756740, -0.440536,
		33.456741, 28.239391, 47.705719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104317, 28.703602, 47.438213>,  <33.794827, 28.769110, 48.014095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104317, 28.703602, 47.438213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763027, 28.512337, 47.354916>,  <33.558254, 28.397577, 47.304935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763027, 28.512337, 47.354916>,  <34.104317, 28.703602, 47.438213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763027, 28.512337, 47.354916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112962, 0.220382, -0.968851,
		0.509162, -0.850172, -0.134021,
		-0.853225, -0.478163, -0.208247,
		33.507061, 28.368889, 47.292442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246418, 28.346159, 46.814529>,  <34.104317, 28.703602, 47.438213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246418, 28.346159, 46.814529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847271, 28.353809, 46.839504>,  <33.607784, 28.358400, 46.854488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847271, 28.353809, 46.839504>,  <34.246418, 28.346159, 46.814529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847271, 28.353809, 46.839504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056120, 0.237715, -0.969712,
		-0.033392, -0.971147, -0.236134,
		-0.997866, 0.019129, 0.062439,
		33.547913, 28.359547, 46.858234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937450, 28.043499, 46.250401>,  <34.246418, 28.346159, 46.814529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937450, 28.043499, 46.250401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610523, 28.242577, 46.366531>,  <33.414368, 28.362022, 46.436211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610523, 28.242577, 46.366531>,  <33.937450, 28.043499, 46.250401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610523, 28.242577, 46.366531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177977, 0.261162, -0.948746,
		-0.548007, -0.827100, -0.124875,
		-0.817320, 0.497694, 0.290324,
		33.365326, 28.391886, 46.453629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422726, 27.852297, 45.861713>,  <33.937450, 28.043499, 46.250401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422726, 27.852297, 45.861713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301010, 28.207720, 45.999043>,  <33.227982, 28.420975, 46.081440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301010, 28.207720, 45.999043>,  <33.422726, 27.852297, 45.861713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301010, 28.207720, 45.999043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276196, 0.262635, -0.924521,
		-0.911660, -0.376147, 0.165499,
		-0.304289, 0.888559, 0.343325,
		33.209724, 28.474287, 46.102039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748264, 27.944361, 45.661549>,  <33.422726, 27.852297, 45.861713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748264, 27.944361, 45.661549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917885, 28.301838, 45.720196>,  <33.019657, 28.516323, 45.755383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.917885, 28.301838, 45.720196>,  <32.748264, 27.944361, 45.661549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917885, 28.301838, 45.720196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240273, 0.267113, -0.933231,
		-0.873184, 0.360509, 0.327999,
		0.424051, 0.893691, 0.146618,
		33.045101, 28.569944, 45.764183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378124, 28.323578, 45.196415>,  <32.748264, 27.944361, 45.661549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378124, 28.323578, 45.196415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681122, 28.551298, 45.324226>,  <32.862919, 28.687931, 45.400913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681122, 28.551298, 45.324226>,  <32.378124, 28.323578, 45.196415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681122, 28.551298, 45.324226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042638, 0.531543, -0.845957,
		-0.651451, 0.627181, 0.426913,
		0.757491, 0.569303, 0.319533,
		32.908371, 28.722090, 45.420086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121162, 28.976292, 45.137989>,  <32.378124, 28.323578, 45.196415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121162, 28.976292, 45.137989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516850, 29.034531, 45.144344>,  <32.754261, 29.069473, 45.148159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516850, 29.034531, 45.144344>,  <32.121162, 28.976292, 45.137989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516850, 29.034531, 45.144344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076794, 0.607998, -0.790216,
		-0.124713, 0.780475, 0.612622,
		0.989217, 0.145596, 0.015890,
		32.813614, 29.078209, 45.149113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228687, 29.691948, 45.037777>,  <32.121162, 28.976292, 45.137989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228687, 29.691948, 45.037777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576397, 29.517418, 44.944836>,  <32.785023, 29.412699, 44.889072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576397, 29.517418, 44.944836>,  <32.228687, 29.691948, 45.037777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576397, 29.517418, 44.944836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138356, 0.665984, -0.733023,
		0.474580, 0.605049, 0.639288,
		0.869271, -0.436327, -0.232351,
		32.837177, 29.386520, 44.875130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726154, 30.256628, 44.947979>,  <32.228687, 29.691948, 45.037777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726154, 30.256628, 44.947979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856625, 29.932394, 44.753426>,  <32.934906, 29.737854, 44.636696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856625, 29.932394, 44.753426>,  <32.726154, 30.256628, 44.947979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856625, 29.932394, 44.753426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229403, 0.567011, -0.791121,
		0.917053, 0.146464, 0.370894,
		0.326172, -0.810584, -0.486380,
		32.954475, 29.689219, 44.607513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344379, 30.449177, 44.596443>,  <32.726154, 30.256628, 44.947979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344379, 30.449177, 44.596443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246647, 30.108467, 44.411064>,  <33.188007, 29.904041, 44.299835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246647, 30.108467, 44.411064>,  <33.344379, 30.449177, 44.596443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246647, 30.108467, 44.411064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166078, 0.434118, -0.885415,
		0.955365, -0.293299, 0.035394,
		-0.244327, -0.851773, -0.463451,
		33.173347, 29.852936, 44.272030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841152, 30.313818, 44.021946>,  <33.344379, 30.449177, 44.596443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841152, 30.313818, 44.021946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513802, 30.107107, 43.921383>,  <33.317390, 29.983080, 43.861046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513802, 30.107107, 43.921383>,  <33.841152, 30.313818, 44.021946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513802, 30.107107, 43.921383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073426, 0.339861, -0.937605,
		0.569978, -0.785771, -0.240188,
		-0.818373, -0.516778, -0.251409,
		33.268291, 29.952074, 43.845959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971710, 30.032637, 43.376019>,  <33.841152, 30.313818, 44.021946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971710, 30.032637, 43.376019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574207, 29.989548, 43.387653>,  <33.335705, 29.963694, 43.394634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574207, 29.989548, 43.387653>,  <33.971710, 30.032637, 43.376019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574207, 29.989548, 43.387653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062389, 0.320295, -0.945261,
		0.092509, -0.941173, -0.325016,
		-0.993756, -0.107722, 0.029088,
		33.276081, 29.957232, 43.396381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925491, 29.708036, 42.813595>,  <33.971710, 30.032637, 43.376019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925491, 29.708036, 42.813595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569077, 29.873337, 42.888714>,  <33.355228, 29.972517, 42.933784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569077, 29.873337, 42.888714>,  <33.925491, 29.708036, 42.813595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569077, 29.873337, 42.888714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013582, 0.389273, -0.921022,
		-0.453720, -0.823219, -0.341245,
		-0.891041, 0.413251, 0.187802,
		33.301765, 29.997313, 42.945053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495544, 29.520536, 42.233170>,  <33.925491, 29.708036, 42.813595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495544, 29.520536, 42.233170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326294, 29.843111, 42.398396>,  <33.224743, 30.036655, 42.497532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326294, 29.843111, 42.398396>,  <33.495544, 29.520536, 42.233170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326294, 29.843111, 42.398396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029376, 0.467859, -0.883315,
		-0.905594, -0.361621, -0.221655,
		-0.423128, 0.806436, 0.413067,
		33.199356, 30.085041, 42.522316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863724, 29.705593, 41.814106>,  <33.495544, 29.520536, 42.233170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863724, 29.705593, 41.814106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962185, 30.036097, 42.016769>,  <33.021263, 30.234400, 42.138367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962185, 30.036097, 42.016769>,  <32.863724, 29.705593, 41.814106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962185, 30.036097, 42.016769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060153, 0.534757, -0.842862,
		-0.967363, 0.176995, 0.181334,
		0.246152, 0.826261, 0.506657,
		33.036030, 30.283976, 42.168766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335030, 30.189480, 41.724327>,  <32.863724, 29.705593, 41.814106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335030, 30.189480, 41.724327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660782, 30.402452, 41.816673>,  <32.856236, 30.530235, 41.872082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660782, 30.402452, 41.816673>,  <32.335030, 30.189480, 41.724327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660782, 30.402452, 41.816673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216013, 0.647345, -0.730947,
		-0.538626, 0.545402, 0.642199,
		0.814384, 0.532430, 0.230863,
		32.905098, 30.562181, 41.885933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257290, 30.802860, 41.428268>,  <32.335030, 30.189480, 41.724327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257290, 30.802860, 41.428268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650269, 30.840382, 41.492760>,  <32.886055, 30.862894, 41.531456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650269, 30.840382, 41.492760>,  <32.257290, 30.802860, 41.428268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650269, 30.840382, 41.492760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075981, 0.588149, -0.805175,
		-0.170353, 0.803294, 0.570700,
		0.982449, 0.093801, 0.161228,
		32.945004, 30.868523, 41.541126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356167, 31.535002, 41.463181>,  <32.257290, 30.802860, 41.428268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356167, 31.535002, 41.463181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710388, 31.368893, 41.379902>,  <32.922920, 31.269228, 41.329937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710388, 31.368893, 41.379902>,  <32.356167, 31.535002, 41.463181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710388, 31.368893, 41.379902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012513, 0.426688, -0.904312,
		0.464370, 0.803422, 0.372658,
		0.885553, -0.415273, -0.208195,
		32.976055, 31.244310, 41.317444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700058, 32.116226, 41.158741>,  <32.356167, 31.535002, 41.463181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700058, 32.116226, 41.158741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934402, 31.815323, 41.038155>,  <33.075008, 31.634781, 40.965805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934402, 31.815323, 41.038155>,  <32.700058, 32.116226, 41.158741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934402, 31.815323, 41.038155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173070, 0.479543, -0.860282,
		0.791717, 0.451830, 0.411137,
		0.585859, -0.752255, -0.301464,
		33.110161, 31.589645, 40.947716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228474, 32.432480, 40.819050>,  <32.700058, 32.116226, 41.158741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228474, 32.432480, 40.819050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262299, 32.067387, 40.659164>,  <33.282593, 31.848331, 40.563232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262299, 32.067387, 40.659164>,  <33.228474, 32.432480, 40.819050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262299, 32.067387, 40.659164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174884, 0.408522, -0.895838,
		0.980951, 0.005852, 0.194168,
		0.084564, -0.912730, -0.399716,
		33.287666, 31.793568, 40.539249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739326, 32.473522, 40.401402>,  <33.228474, 32.432480, 40.819050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739326, 32.473522, 40.401402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557220, 32.145901, 40.261757>,  <33.447956, 31.949327, 40.177971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557220, 32.145901, 40.261757>,  <33.739326, 32.473522, 40.401402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557220, 32.145901, 40.261757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234020, 0.268233, -0.934498,
		0.859049, -0.507145, 0.069558,
		-0.455268, -0.819057, -0.349108,
		33.420639, 31.900183, 40.157024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223965, 32.077198, 40.034668>,  <33.739326, 32.473522, 40.401402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223965, 32.077198, 40.034668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849030, 32.026226, 39.904953>,  <33.624069, 31.995642, 39.827126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849030, 32.026226, 39.904953>,  <34.223965, 32.077198, 40.034668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849030, 32.026226, 39.904953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276522, 0.294159, -0.914880,
		0.211974, -0.947223, -0.240489,
		-0.937338, -0.127431, -0.324282,
		33.567829, 31.987997, 39.807667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288239, 31.814032, 39.461620>,  <34.223965, 32.077198, 40.034668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288239, 31.814032, 39.461620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933147, 31.997398, 39.444672>,  <33.720093, 32.107418, 39.434502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933147, 31.997398, 39.444672>,  <34.288239, 31.814032, 39.461620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933147, 31.997398, 39.444672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228814, 0.359490, -0.904661,
		-0.399479, -0.812787, -0.424021,
		-0.887728, 0.458415, -0.042368,
		33.666828, 32.134922, 39.431961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824169, 32.168957, 39.159542>,  <34.288239, 31.814032, 39.461620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824169, 32.168957, 39.159542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126175, 31.993723, 38.964386>,  <35.307377, 31.888582, 38.847294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126175, 31.993723, 38.964386>,  <34.824169, 32.168957, 39.159542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126175, 31.993723, 38.964386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068522, -0.792699, 0.605749,
		-0.652118, -0.423919, -0.628518,
		0.755014, -0.438087, -0.487886,
		35.352680, 31.862297, 38.818020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795792, 31.345856, 39.060287>,  <34.824169, 32.168957, 39.159542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795792, 31.345856, 39.060287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177719, 31.464073, 39.072739>,  <35.406876, 31.535004, 39.080208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177719, 31.464073, 39.072739>,  <34.795792, 31.345856, 39.060287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177719, 31.464073, 39.072739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225996, -0.790144, 0.569735,
		0.192976, -0.536961, -0.821239,
		0.954823, 0.295542, 0.031128,
		35.464165, 31.552736, 39.082077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264709, 30.761496, 38.975918>,  <34.795792, 31.345856, 39.060287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264709, 30.761496, 38.975918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492928, 31.038033, 39.153240>,  <35.629860, 31.203955, 39.259636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492928, 31.038033, 39.153240>,  <35.264709, 30.761496, 38.975918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492928, 31.038033, 39.153240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257352, -0.663105, 0.702895,
		0.779901, -0.286948, -0.556251,
		0.570547, 0.691341, 0.443310,
		35.664093, 31.245436, 39.286232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930233, 30.328314, 39.131306>,  <35.264709, 30.761496, 38.975918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930233, 30.328314, 39.131306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899616, 30.656027, 39.358608>,  <35.881248, 30.852655, 39.494991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899616, 30.656027, 39.358608>,  <35.930233, 30.328314, 39.131306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899616, 30.656027, 39.358608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342017, -0.513776, 0.786803,
		0.936571, 0.254574, -0.240885,
		-0.076538, 0.819284, 0.568256,
		35.876656, 30.901812, 39.529083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584988, 30.469231, 39.501869>,  <35.930233, 30.328314, 39.131306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584988, 30.469231, 39.501869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294483, 30.631237, 39.724041>,  <36.120178, 30.728441, 39.857346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294483, 30.631237, 39.724041>,  <36.584988, 30.469231, 39.501869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294483, 30.631237, 39.724041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420839, -0.376918, 0.825122,
		0.543540, 0.833003, 0.103295,
		-0.726263, 0.405017, 0.555431,
		36.076603, 30.752743, 39.890671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822601, 30.674046, 40.192692>,  <36.584988, 30.469231, 39.501869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822601, 30.674046, 40.192692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430508, 30.728497, 40.250103>,  <36.195251, 30.761168, 40.284550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430508, 30.728497, 40.250103>,  <36.822601, 30.674046, 40.192692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430508, 30.728497, 40.250103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059889, -0.487310, 0.871173,
		0.188535, 0.862553, 0.469527,
		-0.980239, 0.136127, 0.143532,
		36.136436, 30.769335, 40.293163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797108, 31.117453, 40.819973>,  <36.822601, 30.674046, 40.192692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797108, 31.117453, 40.819973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450916, 30.921295, 40.779045>,  <36.243202, 30.803600, 40.754490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450916, 30.921295, 40.779045>,  <36.797108, 31.117453, 40.819973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450916, 30.921295, 40.779045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058740, -0.302177, 0.951440,
		-0.497497, 0.817437, 0.290332,
		-0.865475, -0.490393, -0.102316,
		36.191273, 30.774178, 40.748352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386700, 31.240908, 41.420757>,  <36.797108, 31.117453, 40.819973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386700, 31.240908, 41.420757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226028, 30.909075, 41.265606>,  <36.129627, 30.709974, 41.172516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226028, 30.909075, 41.265606>,  <36.386700, 31.240908, 41.420757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226028, 30.909075, 41.265606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079393, -0.390406, 0.917213,
		-0.912333, 0.399219, 0.090955,
		-0.401678, -0.829583, -0.387876,
		36.105526, 30.660200, 41.149242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969498, 31.041718, 42.096115>,  <36.386700, 31.240908, 41.420757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969498, 31.041718, 42.096115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979298, 30.714659, 41.866035>,  <35.985180, 30.518423, 41.727989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979298, 30.714659, 41.866035>,  <35.969498, 31.041718, 42.096115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979298, 30.714659, 41.866035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113076, -0.573945, 0.811049,
		-0.993284, 0.045168, -0.106520,
		0.024503, -0.817647, -0.575198,
		35.986649, 30.469364, 41.693478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416382, 30.644815, 42.307796>,  <35.969498, 31.041718, 42.096115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416382, 30.644815, 42.307796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673023, 30.389078, 42.138283>,  <35.827007, 30.235636, 42.036575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673023, 30.389078, 42.138283>,  <35.416382, 30.644815, 42.307796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673023, 30.389078, 42.138283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101695, -0.618516, 0.779163,
		-0.760268, -0.456814, -0.461858,
		0.641600, -0.639342, -0.423783,
		35.865505, 30.197275, 42.011147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124016, 30.029490, 42.403076>,  <35.416382, 30.644815, 42.307796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124016, 30.029490, 42.403076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506287, 29.939999, 42.326530>,  <35.735649, 29.886305, 42.280602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506287, 29.939999, 42.326530>,  <35.124016, 30.029490, 42.403076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506287, 29.939999, 42.326530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012654, -0.680624, 0.732523,
		-0.294133, -0.697637, -0.653290,
		0.955681, -0.223726, -0.191366,
		35.792992, 29.872881, 42.269119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161419, 29.213583, 42.348972>,  <35.124016, 30.029490, 42.403076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161419, 29.213583, 42.348972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523235, 29.363701, 42.429916>,  <35.740326, 29.453772, 42.478485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523235, 29.363701, 42.429916>,  <35.161419, 29.213583, 42.348972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523235, 29.363701, 42.429916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096780, -0.642942, 0.759775,
		0.415249, -0.667666, -0.617891,
		0.904545, 0.375296, 0.202365,
		35.794598, 29.476290, 42.490627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577728, 28.621210, 42.493679>,  <35.161419, 29.213583, 42.348972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577728, 28.621210, 42.493679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746197, 28.937431, 42.671505>,  <35.847279, 29.127165, 42.778202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746197, 28.937431, 42.671505>,  <35.577728, 28.621210, 42.493679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746197, 28.937431, 42.671505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188048, -0.555621, 0.809891,
		0.887272, -0.257504, -0.382674,
		0.421172, 0.790555, 0.444564,
		35.872547, 29.174599, 42.804874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202518, 28.335068, 42.770123>,  <35.577728, 28.621210, 42.493679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202518, 28.335068, 42.770123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155403, 28.676720, 42.972740>,  <36.127136, 28.881710, 43.094311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155403, 28.676720, 42.972740>,  <36.202518, 28.335068, 42.770123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155403, 28.676720, 42.972740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216622, -0.475712, 0.852510,
		0.969124, 0.210142, -0.128991,
		-0.117786, 0.854130, 0.506546,
		36.120068, 28.932959, 43.124702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741570, 28.262291, 43.221096>,  <36.202518, 28.335068, 42.770123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741570, 28.262291, 43.221096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486866, 28.541265, 43.352623>,  <36.334045, 28.708651, 43.431541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486866, 28.541265, 43.352623>,  <36.741570, 28.262291, 43.221096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486866, 28.541265, 43.352623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210968, -0.252595, 0.944293,
		0.741645, 0.670653, 0.013704,
		-0.636754, 0.697438, 0.328822,
		36.295841, 28.750498, 43.451271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061386, 28.631540, 43.780399>,  <36.741570, 28.262291, 43.221096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061386, 28.631540, 43.780399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668240, 28.682348, 43.833839>,  <36.432354, 28.712833, 43.865902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668240, 28.682348, 43.833839>,  <37.061386, 28.631540, 43.780399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668240, 28.682348, 43.833839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100891, -0.235887, 0.966529,
		0.154283, 0.963443, 0.219029,
		-0.982862, 0.127021, 0.133596,
		36.373383, 28.720455, 43.873917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013336, 28.896624, 44.465202>,  <37.061386, 28.631540, 43.780399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013336, 28.896624, 44.465202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631847, 28.792835, 44.404411>,  <36.402954, 28.730562, 44.367935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631847, 28.792835, 44.404411>,  <37.013336, 28.896624, 44.465202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631847, 28.792835, 44.404411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070532, -0.298277, 0.951870,
		-0.292312, 0.918535, 0.266171,
		-0.953718, -0.259469, -0.151976,
		36.345734, 28.714994, 44.358818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623764, 29.147272, 45.101974>,  <37.013336, 28.896624, 44.465202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623764, 29.147272, 45.101974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422325, 28.844187, 44.935959>,  <36.301460, 28.662334, 44.836349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422325, 28.844187, 44.935959>,  <36.623764, 29.147272, 45.101974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422325, 28.844187, 44.935959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173170, -0.382124, 0.907741,
		-0.846405, 0.529008, 0.061223,
		-0.503597, -0.757715, -0.415040,
		36.271248, 28.616873, 44.811447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979557, 29.171738, 45.311481>,  <36.623764, 29.147272, 45.101974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979557, 29.171738, 45.311481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024059, 28.791391, 45.195911>,  <36.050762, 28.563185, 45.126568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024059, 28.791391, 45.195911>,  <35.979557, 29.171738, 45.311481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024059, 28.791391, 45.195911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167637, -0.304524, 0.937637,
		-0.979550, -0.055886, -0.193281,
		0.111260, -0.950863, -0.288928,
		36.057438, 28.506132, 45.109234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424908, 28.888977, 45.535797>,  <35.979557, 29.171738, 45.311481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424908, 28.888977, 45.535797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600143, 28.532312, 45.490166>,  <35.705284, 28.318314, 45.462788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600143, 28.532312, 45.490166>,  <35.424908, 28.888977, 45.535797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600143, 28.532312, 45.490166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330363, -0.277727, 0.902069,
		-0.836025, -0.357498, -0.416242,
		0.438090, -0.891663, -0.114082,
		35.731571, 28.264814, 45.455940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955391, 28.343319, 45.696186>,  <35.424908, 28.888977, 45.535797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955391, 28.343319, 45.696186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311249, 28.164545, 45.733681>,  <35.524761, 28.057281, 45.756180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311249, 28.164545, 45.733681>,  <34.955391, 28.343319, 45.696186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311249, 28.164545, 45.733681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316364, -0.455162, 0.832311,
		-0.329323, -0.770114, -0.546326,
		0.889641, -0.446936, 0.093741,
		35.578140, 28.030464, 45.761803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960793, 27.630318, 45.774326>,  <34.955391, 28.343319, 45.696186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960793, 27.630318, 45.774326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294529, 27.752396, 45.957951>,  <35.494770, 27.825642, 46.068127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294529, 27.752396, 45.957951>,  <34.960793, 27.630318, 45.774326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294529, 27.752396, 45.957951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233916, -0.558057, 0.796150,
		0.499163, -0.771640, -0.394219,
		0.834338, 0.305194, 0.459061,
		35.544830, 27.843954, 46.095669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125858, 27.059752, 46.309971>,  <34.960793, 27.630318, 45.774326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125858, 27.059752, 46.309971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379307, 27.344080, 46.432125>,  <35.531376, 27.514677, 46.505417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379307, 27.344080, 46.432125>,  <35.125858, 27.059752, 46.309971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379307, 27.344080, 46.432125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086643, -0.327057, 0.941024,
		0.768780, -0.622709, -0.145641,
		0.633617, 0.710822, 0.305388,
		35.569393, 27.557327, 46.523743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645191, 26.713951, 46.641422>,  <35.125858, 27.059752, 46.309971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645191, 26.713951, 46.641422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619106, 27.086802, 46.783909>,  <35.603455, 27.310513, 46.869400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.619106, 27.086802, 46.783909>,  <35.645191, 26.713951, 46.641422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619106, 27.086802, 46.783909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128373, -0.346170, 0.929347,
		0.989580, 0.106330, -0.097086,
		-0.065209, 0.932127, 0.356213,
		35.599545, 27.366440, 46.890774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307674, 26.721092, 46.994881>,  <35.645191, 26.713951, 46.641422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307674, 26.721092, 46.994881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057919, 26.999912, 47.135883>,  <35.908066, 27.167204, 47.220486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057919, 26.999912, 47.135883>,  <36.307674, 26.721092, 46.994881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057919, 26.999912, 47.135883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045108, -0.418354, 0.907163,
		0.779811, 0.582322, 0.229773,
		-0.624388, 0.697051, 0.352504,
		35.870602, 27.209028, 47.241634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581863, 27.125715, 47.575546>,  <36.307674, 26.721092, 46.994881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581863, 27.125715, 47.575546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185871, 27.166086, 47.615051>,  <35.948277, 27.190308, 47.638756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185871, 27.166086, 47.615051>,  <36.581863, 27.125715, 47.575546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185871, 27.166086, 47.615051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087922, -0.106771, 0.990389,
		0.110502, 0.989148, 0.096827,
		-0.989979, 0.100926, 0.098766,
		35.888878, 27.196363, 47.644680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538799, 27.509895, 48.198925>,  <36.581863, 27.125715, 47.575546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538799, 27.509895, 48.198925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163738, 27.379551, 48.150547>,  <35.938702, 27.301346, 48.121521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163738, 27.379551, 48.150547>,  <36.538799, 27.509895, 48.198925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163738, 27.379551, 48.150547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060028, -0.190906, 0.979771,
		-0.342355, 0.925943, 0.159443,
		-0.937651, -0.325859, -0.120940,
		35.882442, 27.281794, 48.114265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029034, 27.875662, 48.729534>,  <36.538799, 27.509895, 48.198925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029034, 27.875662, 48.729534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890430, 27.511700, 48.638313>,  <35.807270, 27.293324, 48.583580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890430, 27.511700, 48.638313>,  <36.029034, 27.875662, 48.729534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890430, 27.511700, 48.638313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148496, -0.186843, 0.971102,
		-0.926219, 0.370359, -0.070375,
		-0.346507, -0.909903, -0.228054,
		35.786480, 27.238729, 48.569897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591774, 27.747190, 49.246933>,  <36.029034, 27.875662, 48.729534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591774, 27.747190, 49.246933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643147, 27.386082, 49.082733>,  <35.673969, 27.169416, 48.984215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643147, 27.386082, 49.082733>,  <35.591774, 27.747190, 49.246933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643147, 27.386082, 49.082733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048888, -0.419188, 0.906582,
		-0.990513, -0.096366, -0.097972,
		0.128432, -0.902771, -0.410500,
		35.681675, 27.115250, 48.959583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030174, 27.257223, 49.474407>,  <35.591774, 27.747190, 49.246933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030174, 27.257223, 49.474407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348221, 27.037298, 49.372040>,  <35.539047, 26.905342, 49.310619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348221, 27.037298, 49.372040>,  <35.030174, 27.257223, 49.474407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348221, 27.037298, 49.372040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079555, -0.323787, 0.942779,
		-0.601218, -0.769978, -0.213708,
		0.795115, -0.549814, -0.255923,
		35.586754, 26.872355, 49.295261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829742, 26.593149, 49.621494>,  <35.030174, 27.257223, 49.474407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829742, 26.593149, 49.621494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228668, 26.568939, 49.604988>,  <35.468025, 26.554413, 49.595085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228668, 26.568939, 49.604988>,  <34.829742, 26.593149, 49.621494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228668, 26.568939, 49.604988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000209, -0.560992, 0.827821,
		-0.073256, -0.825606, -0.559472,
		0.997313, -0.060526, -0.041269,
		35.527863, 26.550781, 49.592609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917824, 25.963949, 49.818222>,  <34.829742, 26.593149, 49.621494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917824, 25.963949, 49.818222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270988, 26.142572, 49.876251>,  <35.482887, 26.249746, 49.911068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270988, 26.142572, 49.876251>,  <34.917824, 25.963949, 49.818222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270988, 26.142572, 49.876251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159464, -0.575795, 0.801893,
		0.441626, -0.684868, -0.579588,
		0.882914, 0.446560, 0.145074,
		35.535862, 26.276541, 49.919773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580143, 25.444502, 49.854355>,  <34.917824, 25.963949, 49.818222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580143, 25.444502, 49.854355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687355, 25.783588, 50.037457>,  <35.751682, 25.987040, 50.147316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687355, 25.783588, 50.037457>,  <35.580143, 25.444502, 49.854355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687355, 25.783588, 50.037457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114682, -0.499833, 0.858496,
		0.956559, -0.177610, -0.231190,
		0.268034, 0.847716, 0.457751,
		35.767765, 26.037903, 50.174782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215958, 25.277296, 50.272289>,  <35.580143, 25.444502, 49.854355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215958, 25.277296, 50.272289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113117, 25.611326, 50.466835>,  <36.051411, 25.811745, 50.583561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113117, 25.611326, 50.466835>,  <36.215958, 25.277296, 50.272289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113117, 25.611326, 50.466835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291052, -0.413001, 0.862971,
		0.921513, 0.363430, -0.136866,
		-0.257103, 0.835074, 0.486363,
		36.035988, 25.861849, 50.612743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700893, 25.332581, 50.895554>,  <36.215958, 25.277296, 50.272289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700893, 25.332581, 50.895554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443932, 25.623583, 50.991936>,  <36.289757, 25.798183, 51.049763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443932, 25.623583, 50.991936>,  <36.700893, 25.332581, 50.895554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443932, 25.623583, 50.991936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077920, -0.250773, 0.964905,
		0.762396, 0.638632, 0.104410,
		-0.642403, 0.727503, 0.240951,
		36.251209, 25.841833, 51.064220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014416, 25.769596, 51.431934>,  <36.700893, 25.332581, 50.895554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014416, 25.769596, 51.431934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617485, 25.796438, 51.473461>,  <36.379326, 25.812544, 51.498379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617485, 25.796438, 51.473461>,  <37.014416, 25.769596, 51.431934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617485, 25.796438, 51.473461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081508, -0.276223, 0.957631,
		0.092940, 0.958748, 0.268635,
		-0.992330, 0.067106, 0.103817,
		36.319786, 25.816570, 51.504608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838085, 26.148439, 52.116516>,  <37.014416, 25.769596, 51.431934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838085, 26.148439, 52.116516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508530, 25.951353, 52.004494>,  <36.310795, 25.833101, 51.937279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508530, 25.951353, 52.004494>,  <36.838085, 26.148439, 52.116516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508530, 25.951353, 52.004494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083927, -0.382629, 0.920082,
		-0.560496, 0.781554, 0.273893,
		-0.823894, -0.492716, -0.280055,
		36.261360, 25.803539, 51.920479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329105, 26.360189, 52.526203>,  <36.838085, 26.148439, 52.116516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329105, 26.360189, 52.526203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301628, 25.978321, 52.410355>,  <36.285141, 25.749199, 52.340847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301628, 25.978321, 52.410355>,  <36.329105, 26.360189, 52.526203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301628, 25.978321, 52.410355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136995, -0.296584, 0.945130,
		-0.988187, 0.025248, 0.151159,
		-0.068694, -0.954673, -0.289622,
		36.281021, 25.691919, 52.323467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320553, 26.999140, 52.633194>,  <36.329105, 26.360189, 52.526203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320553, 26.999140, 52.633194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677002, 26.882786, 52.772495>,  <36.890873, 26.812973, 52.856075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677002, 26.882786, 52.772495>,  <36.320553, 26.999140, 52.633194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677002, 26.882786, 52.772495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453568, 0.548696, -0.702288,
		0.013198, 0.783785, 0.620892,
		0.891124, -0.290885, 0.348258,
		36.944340, 26.795521, 52.876972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833565, 27.603962, 52.658585>,  <36.320553, 26.999140, 52.633194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833565, 27.603962, 52.658585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064743, 27.277573, 52.663685>,  <37.203449, 27.081739, 52.666744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064743, 27.277573, 52.663685>,  <36.833565, 27.603962, 52.658585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064743, 27.277573, 52.663685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630957, 0.436882, -0.641114,
		0.517563, 0.378574, 0.767339,
		0.577946, -0.815975, 0.012750,
		37.238129, 27.032780, 52.667511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510559, 27.833992, 52.787579>,  <36.833565, 27.603962, 52.658585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510559, 27.833992, 52.787579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569622, 27.474672, 52.622044>,  <37.605061, 27.259081, 52.522724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569622, 27.474672, 52.622044>,  <37.510559, 27.833992, 52.787579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569622, 27.474672, 52.622044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535971, 0.424329, -0.729849,
		0.831224, -0.114037, 0.544116,
		0.147655, -0.898299, -0.413833,
		37.613918, 27.205183, 52.497894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234554, 27.767424, 52.635067>,  <37.510559, 27.833992, 52.787579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234554, 27.767424, 52.635067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058407, 27.520033, 52.374741>,  <37.952721, 27.371599, 52.218544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058407, 27.520033, 52.374741>,  <38.234554, 27.767424, 52.635067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058407, 27.520033, 52.374741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529288, 0.406694, -0.744617,
		0.725212, -0.672374, 0.148258,
		-0.440366, -0.618476, -0.650819,
		37.926296, 27.334490, 52.179497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778702, 27.433290, 52.224064>,  <38.234554, 27.767424, 52.635067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778702, 27.433290, 52.224064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427334, 27.439932, 52.033020>,  <38.216515, 27.443916, 51.918396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427334, 27.439932, 52.033020>,  <38.778702, 27.433290, 52.224064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427334, 27.439932, 52.033020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441687, 0.409799, -0.798108,
		0.182472, -0.912025, -0.367308,
		-0.878417, 0.016603, -0.477606,
		38.163807, 27.444912, 51.889740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889122, 27.043335, 51.579128>,  <38.778702, 27.433290, 52.224064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889122, 27.043335, 51.579128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559189, 27.258823, 51.510509>,  <38.361229, 27.388117, 51.469337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559189, 27.258823, 51.510509>,  <38.889122, 27.043335, 51.579128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559189, 27.258823, 51.510509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242431, 0.062906, -0.968127,
		-0.510761, -0.840131, -0.182491,
		-0.824833, 0.538723, -0.171544,
		38.311737, 27.420441, 51.459045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812576, 26.887453, 50.834591>,  <38.889122, 27.043335, 51.579128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812576, 26.887453, 50.834591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552715, 27.184103, 50.901459>,  <38.396797, 27.362093, 50.941578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552715, 27.184103, 50.901459>,  <38.812576, 26.887453, 50.834591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552715, 27.184103, 50.901459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081466, 0.150712, -0.985215,
		-0.755854, -0.653666, -0.037494,
		-0.649652, 0.741624, 0.167168,
		38.357819, 27.406590, 50.951611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412300, 26.850569, 50.289257>,  <38.812576, 26.887453, 50.834591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412300, 26.850569, 50.289257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348419, 27.227036, 50.408386>,  <38.310089, 27.452915, 50.479866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348419, 27.227036, 50.408386>,  <38.412300, 26.850569, 50.289257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348419, 27.227036, 50.408386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073460, 0.289532, -0.954345,
		-0.984428, -0.174292, 0.022898,
		-0.159705, 0.941166, 0.297827,
		38.300507, 27.509386, 50.497734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805187, 26.997313, 50.060169>,  <38.412300, 26.850569, 50.289257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805187, 26.997313, 50.060169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990364, 27.345318, 50.128010>,  <38.101471, 27.554121, 50.168713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990364, 27.345318, 50.128010>,  <37.805187, 26.997313, 50.060169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990364, 27.345318, 50.128010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105464, 0.244044, -0.964012,
		-0.880091, 0.428396, 0.204733,
		0.462943, 0.870011, 0.169601,
		38.129246, 27.606321, 50.178890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457066, 27.395943, 49.666721>,  <37.805187, 26.997313, 50.060169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457066, 27.395943, 49.666721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786823, 27.613253, 49.730255>,  <37.984676, 27.743639, 49.768375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786823, 27.613253, 49.730255>,  <37.457066, 27.395943, 49.666721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786823, 27.613253, 49.730255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022943, 0.248310, -0.968409,
		-0.565550, 0.801996, 0.192241,
		0.824395, 0.543273, 0.158831,
		38.034142, 27.776234, 49.777905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350357, 27.944197, 49.355072>,  <37.457066, 27.395943, 49.666721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350357, 27.944197, 49.355072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746487, 27.972425, 49.402866>,  <37.984165, 27.989363, 49.431545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746487, 27.972425, 49.402866>,  <37.350357, 27.944197, 49.355072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746487, 27.972425, 49.402866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105615, 0.175248, -0.978843,
		-0.090018, 0.981992, 0.166099,
		0.990324, 0.070571, 0.119488,
		38.043583, 27.993597, 49.438713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512543, 28.443499, 48.908756>,  <37.350357, 27.944197, 49.355072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512543, 28.443499, 48.908756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862080, 28.262054, 48.978779>,  <38.071800, 28.153187, 49.020790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862080, 28.262054, 48.978779>,  <37.512543, 28.443499, 48.908756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862080, 28.262054, 48.978779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167646, -0.056862, -0.984206,
		0.456401, 0.889383, 0.026358,
		0.873838, -0.453612, 0.175053,
		38.124229, 28.125971, 49.031296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032825, 28.826717, 48.554424>,  <37.512543, 28.443499, 48.908756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032825, 28.826717, 48.554424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171665, 28.456127, 48.612625>,  <38.254967, 28.233774, 48.647545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171665, 28.456127, 48.612625>,  <38.032825, 28.826717, 48.554424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171665, 28.456127, 48.612625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258767, -0.054509, -0.964400,
		0.901423, 0.372389, 0.220821,
		0.347096, -0.926474, 0.145498,
		38.275795, 28.178185, 48.656273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783573, 28.861326, 48.394363>,  <38.032825, 28.826717, 48.554424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783573, 28.861326, 48.394363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625591, 28.496443, 48.350754>,  <38.530804, 28.277512, 48.324589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625591, 28.496443, 48.350754>,  <38.783573, 28.861326, 48.394363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625591, 28.496443, 48.350754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266993, -0.000421, -0.963699,
		0.879049, -0.409724, 0.243720,
		-0.394953, -0.912209, -0.109023,
		38.507107, 28.222780, 48.318047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258385, 28.588955, 47.824017>,  <38.783573, 28.861326, 48.394363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258385, 28.588955, 47.824017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923546, 28.370487, 47.811577>,  <38.722641, 28.239407, 47.804115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923546, 28.370487, 47.811577>,  <39.258385, 28.588955, 47.824017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923546, 28.370487, 47.811577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184961, -0.229075, -0.955675,
		0.514836, -0.805745, 0.292778,
		-0.837098, -0.546169, -0.031096,
		38.672417, 28.206636, 47.802250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404724, 28.193268, 47.337044>,  <39.258385, 28.588955, 47.824017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404724, 28.193268, 47.337044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008522, 28.141706, 47.356190>,  <38.770802, 28.110769, 47.367676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008522, 28.141706, 47.356190>,  <39.404724, 28.193268, 47.337044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008522, 28.141706, 47.356190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059308, 0.086484, -0.994486,
		0.124060, -0.987878, -0.093308,
		-0.990500, -0.128910, 0.047860,
		38.711372, 28.103035, 47.370548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275326, 27.769068, 46.787243>,  <39.404724, 28.193268, 47.337044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275326, 27.769068, 46.787243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912502, 27.917465, 46.866856>,  <38.694809, 28.006504, 46.914623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912502, 27.917465, 46.866856>,  <39.275326, 27.769068, 46.787243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912502, 27.917465, 46.866856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197478, 0.042608, -0.979381,
		-0.371823, -0.927658, 0.034615,
		-0.907056, 0.370992, 0.199034,
		38.640385, 28.028763, 46.926567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609749, 27.431534, 46.323219>,  <39.275326, 27.769068, 46.787243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609749, 27.431534, 46.323219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495991, 27.801016, 46.425892>,  <38.427734, 28.022705, 46.487495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495991, 27.801016, 46.425892>,  <38.609749, 27.431534, 46.323219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495991, 27.801016, 46.425892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185392, 0.209696, -0.960030,
		-0.940611, -0.320616, 0.111611,
		-0.284396, 0.923706, 0.256681,
		38.410671, 28.078127, 46.502895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071194, 27.556448, 45.872829>,  <38.609749, 27.431534, 46.323219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071194, 27.556448, 45.872829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190338, 27.920771, 45.987171>,  <38.261826, 28.139364, 46.055775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190338, 27.920771, 45.987171>,  <38.071194, 27.556448, 45.872829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190338, 27.920771, 45.987171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157353, 0.342197, -0.926359,
		-0.941552, 0.230946, 0.245245,
		0.297861, 0.910805, 0.285856,
		38.279697, 28.194012, 46.072929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652058, 27.871496, 45.475075>,  <38.071194, 27.556448, 45.872829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652058, 27.871496, 45.475075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879265, 28.169321, 45.615349>,  <38.015591, 28.348017, 45.699512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879265, 28.169321, 45.615349>,  <37.652058, 27.871496, 45.475075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879265, 28.169321, 45.615349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163955, 0.519929, -0.838327,
		-0.806520, 0.418688, 0.417404,
		0.568018, 0.744563, 0.350687,
		38.049671, 28.392691, 45.720554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309704, 28.494280, 45.508587>,  <37.652058, 27.871496, 45.475075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309704, 28.494280, 45.508587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701466, 28.572878, 45.490013>,  <37.936523, 28.620037, 45.478867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701466, 28.572878, 45.490013>,  <37.309704, 28.494280, 45.508587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701466, 28.572878, 45.490013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177834, 0.730586, -0.659257,
		-0.095614, 0.653938, 0.750482,
		0.979405, 0.196495, -0.046438,
		37.995289, 28.631826, 45.476082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346661, 29.167290, 45.332211>,  <37.309704, 28.494280, 45.508587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346661, 29.167290, 45.332211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736279, 29.105694, 45.265846>,  <37.970047, 29.068735, 45.226028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.736279, 29.105694, 45.265846>,  <37.346661, 29.167290, 45.332211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736279, 29.105694, 45.265846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020204, 0.789161, -0.613854,
		0.225459, 0.594568, 0.771788,
		0.974043, -0.153992, -0.165911,
		38.028492, 29.059496, 45.216072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685947, 29.814734, 45.387524>,  <37.346661, 29.167290, 45.332211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685947, 29.814734, 45.387524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923672, 29.584717, 45.162624>,  <38.066307, 29.446707, 45.027687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923672, 29.584717, 45.162624>,  <37.685947, 29.814734, 45.387524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923672, 29.584717, 45.162624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153683, 0.767427, -0.622444,
		0.789412, 0.283521, 0.544468,
		0.594315, -0.575040, -0.562244,
		38.101967, 29.412205, 44.993950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267754, 30.123184, 45.231125>,  <37.685947, 29.814734, 45.387524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267754, 30.123184, 45.231125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264019, 29.892134, 44.904625>,  <38.261780, 29.753504, 44.708725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264019, 29.892134, 44.904625>,  <38.267754, 30.123184, 45.231125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264019, 29.892134, 44.904625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275175, 0.783282, -0.557447,
		0.961349, -0.229816, 0.151635,
		-0.009337, -0.577627, -0.816247,
		38.261219, 29.718845, 44.659752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734081, 30.424849, 44.765442>,  <38.267754, 30.123184, 45.231125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734081, 30.424849, 44.765442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544281, 30.169064, 44.523472>,  <38.430401, 30.015593, 44.378288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544281, 30.169064, 44.523472>,  <38.734081, 30.424849, 44.765442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544281, 30.169064, 44.523472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139825, 0.623739, -0.769025,
		0.869081, -0.449484, -0.206549,
		-0.474497, -0.639464, -0.604928,
		38.401932, 29.977224, 44.341995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069649, 30.466494, 44.169842>,  <38.734081, 30.424849, 44.765442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069649, 30.466494, 44.169842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755859, 30.267990, 44.021072>,  <38.567585, 30.148888, 43.931812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755859, 30.267990, 44.021072>,  <39.069649, 30.466494, 44.169842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755859, 30.267990, 44.021072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231071, 0.322636, -0.917885,
		0.575506, -0.805997, -0.138428,
		-0.784474, -0.496261, -0.371922,
		38.520515, 30.119112, 43.909496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171715, 29.983072, 43.674026>,  <39.069649, 30.466494, 44.169842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171715, 29.983072, 43.674026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803635, 30.111357, 43.584251>,  <38.582787, 30.188328, 43.530388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803635, 30.111357, 43.584251>,  <39.171715, 29.983072, 43.674026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803635, 30.111357, 43.584251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235174, -0.005387, -0.971938,
		-0.312921, -0.947161, -0.070467,
		-0.920203, 0.320712, -0.224434,
		38.527573, 30.207571, 43.516922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085308, 29.557142, 43.066898>,  <39.171715, 29.983072, 43.674026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085308, 29.557142, 43.066898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849800, 29.880318, 43.076557>,  <38.708496, 30.074223, 43.082352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849800, 29.880318, 43.076557>,  <39.085308, 29.557142, 43.066898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849800, 29.880318, 43.076557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244992, 0.206839, -0.947205,
		-0.770277, -0.551773, -0.319719,
		-0.588772, 0.807939, 0.024143,
		38.673168, 30.122700, 43.083801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003078, 29.599789, 42.362503>,  <39.085308, 29.557142, 43.066898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003078, 29.599789, 42.362503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868111, 29.945599, 42.511497>,  <38.787128, 30.153084, 42.600895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868111, 29.945599, 42.511497>,  <39.003078, 29.599789, 42.362503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868111, 29.945599, 42.511497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119489, 0.431828, -0.894006,
		-0.933740, -0.257146, -0.249007,
		-0.337418, 0.864523, 0.372490,
		38.766884, 30.204956, 42.623245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434002, 29.783468, 41.896389>,  <39.003078, 29.599789, 42.362503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434002, 29.783468, 41.896389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575550, 30.112209, 42.074974>,  <38.660480, 30.309454, 42.182125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575550, 30.112209, 42.074974>,  <38.434002, 29.783468, 41.896389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575550, 30.112209, 42.074974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129959, 0.429514, -0.893660,
		-0.926221, 0.374263, 0.045186,
		0.353872, 0.821854, 0.446464,
		38.681713, 30.358767, 42.208912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086277, 30.347248, 41.485928>,  <38.434002, 29.783468, 41.896389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086277, 30.347248, 41.485928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379097, 30.536850, 41.681652>,  <38.554787, 30.650610, 41.799088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379097, 30.536850, 41.681652>,  <38.086277, 30.347248, 41.485928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379097, 30.536850, 41.681652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231107, 0.502875, -0.832891,
		-0.640857, 0.722799, 0.258582,
		0.732047, 0.474003, 0.489314,
		38.598709, 30.679050, 41.828445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011932, 31.023138, 41.266098>,  <38.086277, 30.347248, 41.485928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011932, 31.023138, 41.266098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382969, 31.001820, 41.414009>,  <38.605591, 30.989029, 41.502754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382969, 31.001820, 41.414009>,  <38.011932, 31.023138, 41.266098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382969, 31.001820, 41.414009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336564, 0.548852, -0.765170,
		-0.162173, 0.834219, 0.527047,
		0.927591, -0.053295, 0.369777,
		38.661247, 30.985830, 41.524940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249729, 31.679865, 41.066502>,  <38.011932, 31.023138, 41.266098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249729, 31.679865, 41.066502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565758, 31.443171, 41.130547>,  <38.755375, 31.301155, 41.168976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565758, 31.443171, 41.130547>,  <38.249729, 31.679865, 41.066502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565758, 31.443171, 41.130547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477011, 0.429394, -0.766865,
		0.385028, 0.682255, 0.621516,
		0.790072, -0.591734, 0.160114,
		38.802780, 31.265650, 41.178581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725151, 32.161255, 41.181561>,  <38.249729, 31.679865, 41.066502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725151, 32.161255, 41.181561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878700, 31.815569, 41.051468>,  <38.970829, 31.608158, 40.973412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878700, 31.815569, 41.051468>,  <38.725151, 32.161255, 41.181561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878700, 31.815569, 41.051468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465286, 0.485266, -0.740288,
		0.797590, 0.132853, 0.588388,
		0.383875, -0.864215, -0.325228,
		38.993862, 31.556305, 40.953899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439137, 32.420883, 41.054581>,  <38.725151, 32.161255, 41.181561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439137, 32.420883, 41.054581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418987, 32.060272, 40.882671>,  <39.406898, 31.843904, 40.779526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418987, 32.060272, 40.882671>,  <39.439137, 32.420883, 41.054581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418987, 32.060272, 40.882671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670209, 0.288529, -0.683792,
		0.740461, -0.322487, 0.589677,
		-0.050375, -0.901528, -0.429778,
		39.403873, 31.789814, 40.753738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148411, 32.194237, 40.950100>,  <39.439137, 32.420883, 41.054581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148411, 32.194237, 40.950100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916264, 31.988161, 40.697830>,  <39.776974, 31.864517, 40.546467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916264, 31.988161, 40.697830>,  <40.148411, 32.194237, 40.950100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916264, 31.988161, 40.697830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438844, 0.454526, -0.775127,
		0.685994, -0.726629, -0.037707,
		-0.580369, -0.515185, -0.630679,
		39.742153, 31.833605, 40.508625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486023, 32.132317, 40.465641>,  <40.148411, 32.194237, 40.950100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486023, 32.132317, 40.465641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155090, 32.036224, 40.262539>,  <39.956532, 31.978569, 40.140678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155090, 32.036224, 40.262539>,  <40.486023, 32.132317, 40.465641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155090, 32.036224, 40.262539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434037, 0.300400, -0.849336,
		0.356571, -0.923064, -0.144258,
		-0.827327, -0.240236, -0.507758,
		39.906891, 31.964153, 40.110210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701042, 31.728432, 39.960850>,  <40.486023, 32.132317, 40.465641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701042, 31.728432, 39.960850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348606, 31.879198, 39.846573>,  <40.137146, 31.969658, 39.778008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348606, 31.879198, 39.846573>,  <40.701042, 31.728432, 39.960850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348606, 31.879198, 39.846573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390163, 0.237824, -0.889501,
		-0.267321, -0.895195, -0.356602,
		-0.881086, 0.376915, -0.285697,
		40.084282, 31.992273, 39.760864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476006, 31.291666, 39.366714>,  <40.701042, 31.728432, 39.960850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476006, 31.291666, 39.366714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295723, 31.648581, 39.356209>,  <40.187553, 31.862728, 39.349907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295723, 31.648581, 39.356209>,  <40.476006, 31.291666, 39.366714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295723, 31.648581, 39.356209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292567, 0.119857, -0.948704,
		-0.843366, -0.435273, -0.315074,
		-0.450709, 0.892285, -0.026263,
		40.160511, 31.916265, 39.348331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162472, 31.363682, 38.678474>,  <40.476006, 31.291666, 39.366714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162472, 31.363682, 38.678474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211281, 31.735899, 38.816574>,  <40.240566, 31.959229, 38.899433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211281, 31.735899, 38.816574>,  <40.162472, 31.363682, 38.678474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211281, 31.735899, 38.816574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471735, 0.251674, -0.845059,
		-0.873255, 0.265986, -0.408260,
		0.122026, 0.930544, 0.345251,
		40.247890, 32.015060, 38.920151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007042, 31.778463, 38.106117>,  <40.162472, 31.363682, 38.678474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007042, 31.778463, 38.106117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235100, 31.975580, 38.369049>,  <40.371937, 32.093849, 38.526810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235100, 31.975580, 38.369049>,  <40.007042, 31.778463, 38.106117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235100, 31.975580, 38.369049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667974, 0.187730, -0.720117,
		-0.478270, 0.849655, -0.222138,
		0.570149, 0.492793, 0.657333,
		40.406143, 32.123417, 38.566250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374458, 32.443348, 37.745907>,  <40.007042, 31.778463, 38.106117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374458, 32.443348, 37.745907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620945, 32.335945, 38.042061>,  <40.768837, 32.271503, 38.219753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620945, 32.335945, 38.042061>,  <40.374458, 32.443348, 37.745907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620945, 32.335945, 38.042061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782552, 0.314739, -0.537170,
		-0.088792, 0.910407, 0.404073,
		0.616221, -0.268512, 0.740387,
		40.805813, 32.255390, 38.264175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938587, 32.052246, 37.587215>,  <40.374458, 32.443348, 37.745907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938587, 32.052246, 37.587215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072441, 32.329372, 37.331707>,  <41.152752, 32.495647, 37.178402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072441, 32.329372, 37.331707>,  <40.938587, 32.052246, 37.587215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072441, 32.329372, 37.331707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905128, -0.424932, 0.013289,
		-0.262228, -0.582618, -0.769281,
		0.334634, 0.692813, -0.638773,
		41.172832, 32.537216, 37.140076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350548, 31.726223, 37.047428>,  <40.938587, 32.052246, 37.587215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350548, 31.726223, 37.047428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493454, 32.099777, 37.053337>,  <41.579197, 32.323910, 37.056885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.493454, 32.099777, 37.053337>,  <41.350548, 31.726223, 37.047428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493454, 32.099777, 37.053337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927321, -0.352779, -0.124994,
		-0.111518, 0.058357, -0.992048,
		0.357268, 0.933885, 0.014775,
		41.600636, 32.379944, 37.057770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676323, 31.954548, 36.833290>,  <41.350548, 31.726223, 37.047428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676323, 31.954548, 36.833290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493973, 32.293011, 36.943707>,  <40.384563, 32.496086, 37.009956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493973, 32.293011, 36.943707>,  <40.676323, 31.954548, 36.833290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493973, 32.293011, 36.943707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880151, 0.382464, 0.281167,
		0.132334, 0.371137, -0.919100,
		-0.455875, 0.846155, 0.276044,
		40.357212, 32.546856, 37.026520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001091, 32.606350, 36.584820>,  <40.676323, 31.954548, 36.833290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001091, 32.606350, 36.584820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813507, 32.681652, 36.929989>,  <40.700958, 32.726833, 37.137093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813507, 32.681652, 36.929989>,  <41.001091, 32.606350, 36.584820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813507, 32.681652, 36.929989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860770, 0.316303, 0.398782,
		-0.197874, 0.929792, -0.310375,
		-0.468957, 0.188253, 0.862925,
		40.672821, 32.738129, 37.188866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333740, 32.628609, 36.032692>,  <41.001091, 32.606350, 36.584820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333740, 32.628609, 36.032692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659649, 32.824799, 35.909019>,  <41.855194, 32.942513, 35.834816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659649, 32.824799, 35.909019>,  <41.333740, 32.628609, 36.032692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659649, 32.824799, 35.909019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012971, -0.548554, -0.836014,
		-0.579643, 0.677146, -0.453306,
		0.814767, 0.490470, -0.309182,
		41.904079, 32.971939, 35.816265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232834, 32.689381, 35.235985>,  <41.333740, 32.628609, 36.032692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232834, 32.689381, 35.235985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622002, 32.758118, 35.297810>,  <41.855503, 32.799362, 35.334904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622002, 32.758118, 35.297810>,  <41.232834, 32.689381, 35.235985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622002, 32.758118, 35.297810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218322, -0.463757, -0.858641,
		-0.075873, 0.869136, -0.488718,
		0.972923, 0.171846, 0.154565,
		41.913879, 32.809673, 35.344177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410851, 32.605701, 34.583103>,  <41.232834, 32.689381, 35.235985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410851, 32.605701, 34.583103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749050, 32.558086, 34.791321>,  <41.951969, 32.529518, 34.916252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749050, 32.558086, 34.791321>,  <41.410851, 32.605701, 34.583103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749050, 32.558086, 34.791321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378265, -0.554537, -0.741218,
		0.376896, 0.823601, -0.423830,
		0.845497, -0.119042, 0.520542,
		42.002701, 32.522373, 34.947483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937607, 32.727913, 34.116760>,  <41.410851, 32.605701, 34.583103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937607, 32.727913, 34.116760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097080, 32.517902, 34.417530>,  <42.192764, 32.391895, 34.597992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097080, 32.517902, 34.417530>,  <41.937607, 32.727913, 34.116760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097080, 32.517902, 34.417530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319246, -0.689172, -0.650479,
		0.859729, 0.499385, -0.107146,
		0.398681, -0.525030, 0.751929,
		42.216686, 32.360394, 34.643108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615513, 32.515656, 33.976822>,  <41.937607, 32.727913, 34.116760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615513, 32.515656, 33.976822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459988, 32.233246, 34.213585>,  <42.366673, 32.063801, 34.355640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459988, 32.233246, 34.213585>,  <42.615513, 32.515656, 33.976822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459988, 32.233246, 34.213585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385780, -0.708182, -0.591314,
		0.836660, -0.001565, 0.547721,
		-0.388811, -0.706029, 0.591903,
		42.343346, 32.021439, 34.391155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038910, 32.014694, 33.819649>,  <42.615513, 32.515656, 33.976822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038910, 32.014694, 33.819649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757042, 31.814831, 34.021156>,  <42.587921, 31.694912, 34.142059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.757042, 31.814831, 34.021156>,  <43.038910, 32.014694, 33.819649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757042, 31.814831, 34.021156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296084, -0.852298, -0.431188,
		0.644805, -0.154689, 0.748530,
		-0.704671, -0.499660, 0.503765,
		42.545639, 31.664932, 34.172287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336372, 31.432901, 34.075634>,  <43.038910, 32.014694, 33.819649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336372, 31.432901, 34.075634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947067, 31.346090, 34.105728>,  <42.713486, 31.294004, 34.123783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947067, 31.346090, 34.105728>,  <43.336372, 31.432901, 34.075634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947067, 31.346090, 34.105728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139376, -0.818325, -0.557601,
		0.182580, -0.532206, 0.826693,
		-0.973262, -0.217028, 0.075233,
		42.655090, 31.280981, 34.128300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330360, 30.719332, 34.266434>,  <43.336372, 31.432901, 34.075634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330360, 30.719332, 34.266434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963982, 30.793112, 34.123875>,  <42.744156, 30.837379, 34.038338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963982, 30.793112, 34.123875>,  <43.330360, 30.719332, 34.266434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963982, 30.793112, 34.123875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017526, -0.868877, -0.494718,
		-0.400917, -0.459382, 0.792612,
		-0.915947, 0.184450, -0.356398,
		42.689198, 30.848446, 34.016956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908882, 30.160604, 34.284382>,  <43.330360, 30.719332, 34.266434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908882, 30.160604, 34.284382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712360, 30.385321, 34.018143>,  <42.594448, 30.520149, 33.858398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.712360, 30.385321, 34.018143>,  <42.908882, 30.160604, 34.284382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.712360, 30.385321, 34.018143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000916, -0.764514, -0.644606,
		-0.870989, -0.316086, 0.376121,
		-0.491301, 0.561790, -0.665594,
		42.564968, 30.553858, 33.818466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201485, 29.773937, 34.037319>,  <42.908882, 30.160604, 34.284382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201485, 29.773937, 34.037319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346363, 30.031393, 33.767639>,  <42.433289, 30.185867, 33.605831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346363, 30.031393, 33.767639>,  <42.201485, 29.773937, 34.037319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346363, 30.031393, 33.767639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057320, -0.706557, -0.705330,
		-0.930338, 0.294113, -0.219019,
		0.362196, 0.643641, -0.674196,
		42.455021, 30.224485, 33.565380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894928, 29.530935, 33.364994>,  <42.201485, 29.773937, 34.037319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894928, 29.530935, 33.364994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208973, 29.760422, 33.271652>,  <42.397400, 29.898113, 33.215649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208973, 29.760422, 33.271652>,  <41.894928, 29.530935, 33.364994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208973, 29.760422, 33.271652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184919, -0.576714, -0.795742,
		-0.591105, 0.581595, -0.558876,
		0.785111, 0.573714, -0.233351,
		42.444508, 29.932535, 33.201649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794365, 29.674305, 32.651386>,  <41.894928, 29.530935, 33.364994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794365, 29.674305, 32.651386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184631, 29.710108, 32.731445>,  <42.418793, 29.731588, 32.779480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184631, 29.710108, 32.731445>,  <41.794365, 29.674305, 32.651386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184631, 29.710108, 32.731445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215262, -0.564302, -0.797010,
		0.041605, 0.820702, -0.569839,
		0.975670, 0.089505, 0.200144,
		42.477333, 29.736959, 32.791489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049091, 29.658415, 31.964127>,  <41.794365, 29.674305, 32.651386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049091, 29.658415, 31.964127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362984, 29.601200, 32.205372>,  <42.551319, 29.566872, 32.350121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.362984, 29.601200, 32.205372>,  <42.049091, 29.658415, 31.964127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362984, 29.601200, 32.205372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425415, -0.583377, -0.691876,
		0.450805, 0.799507, -0.396943,
		0.784727, -0.143036, 0.603112,
		42.598400, 29.558289, 32.386307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528870, 29.811361, 31.488447>,  <42.049091, 29.658415, 31.964127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528870, 29.811361, 31.488447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669147, 29.607136, 31.802475>,  <42.753315, 29.484600, 31.990892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669147, 29.607136, 31.802475>,  <42.528870, 29.811361, 31.488447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669147, 29.607136, 31.802475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311528, -0.726968, -0.611938,
		0.883154, 0.459177, -0.095892,
		0.350698, -0.510563, 0.785071,
		42.774357, 29.453966, 32.037994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178944, 29.634903, 31.306446>,  <42.528870, 29.811361, 31.488447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178944, 29.634903, 31.306446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096123, 29.393820, 31.614698>,  <43.046429, 29.249170, 31.799650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096123, 29.393820, 31.614698>,  <43.178944, 29.634903, 31.306446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096123, 29.393820, 31.614698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329573, -0.784631, -0.525106,
		0.921147, 0.145256, 0.361094,
		-0.207051, -0.602707, 0.770633,
		43.034008, 29.213007, 31.845888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777489, 29.292902, 31.459866>,  <43.178944, 29.634903, 31.306446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777489, 29.292902, 31.459866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461147, 29.072767, 31.566959>,  <43.271343, 28.940687, 31.631216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461147, 29.072767, 31.566959>,  <43.777489, 29.292902, 31.459866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461147, 29.072767, 31.566959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316292, -0.742053, -0.591030,
		0.523940, -0.382735, 0.760921,
		-0.790852, -0.550337, 0.267735,
		43.223892, 28.907665, 31.647280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967014, 28.531498, 31.753925>,  <43.777489, 29.292902, 31.459866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967014, 28.531498, 31.753925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581299, 28.481058, 31.660763>,  <43.349869, 28.450794, 31.604864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581299, 28.481058, 31.660763>,  <43.967014, 28.531498, 31.753925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581299, 28.481058, 31.660763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213973, -0.889155, -0.404497,
		-0.156085, -0.439888, 0.884384,
		-0.964289, -0.126098, -0.232908,
		43.292011, 28.443228, 31.590891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805775, 27.811182, 31.895870>,  <43.967014, 28.531498, 31.753925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805775, 27.811182, 31.895870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524490, 27.936958, 31.640802>,  <43.355721, 28.012424, 31.487762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524490, 27.936958, 31.640802>,  <43.805775, 27.811182, 31.895870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524490, 27.936958, 31.640802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193556, -0.778343, -0.597258,
		-0.684126, -0.543424, 0.486479,
		-0.703212, 0.314439, -0.637668,
		43.313526, 28.031290, 31.449501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428261, 27.208635, 31.746153>,  <43.805775, 27.811182, 31.895870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428261, 27.208635, 31.746153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266888, 27.419537, 31.447021>,  <43.170063, 27.546078, 31.267542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.266888, 27.419537, 31.447021>,  <43.428261, 27.208635, 31.746153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266888, 27.419537, 31.447021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013719, -0.820684, -0.571217,
		-0.914907, -0.220188, 0.338324,
		-0.403433, 0.527252, -0.747829,
		43.145859, 27.577713, 31.222673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938133, 26.800976, 31.487986>,  <43.428261, 27.208635, 31.746153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938133, 26.800976, 31.487986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048302, 27.062252, 31.205854>,  <43.114403, 27.219017, 31.036575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048302, 27.062252, 31.205854>,  <42.938133, 26.800976, 31.487986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048302, 27.062252, 31.205854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328731, -0.753466, -0.569407,
		-0.903371, -0.075035, -0.422245,
		0.275422, 0.653191, -0.705326,
		43.130928, 27.258209, 30.994257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716431, 26.468971, 30.984467>,  <42.938133, 26.800976, 31.487986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716431, 26.468971, 30.984467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981876, 26.733702, 30.844982>,  <43.141144, 26.892540, 30.761292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.981876, 26.733702, 30.844982>,  <42.716431, 26.468971, 30.984467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.981876, 26.733702, 30.844982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412879, -0.712755, -0.567020,
		-0.623813, 0.232309, -0.746250,
		0.663617, 0.661826, -0.348710,
		43.180962, 26.932249, 30.740370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726913, 26.460022, 30.232738>,  <42.716431, 26.468971, 30.984467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726913, 26.460022, 30.232738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075424, 26.626459, 30.336855>,  <43.284531, 26.726320, 30.399324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.075424, 26.626459, 30.336855>,  <42.726913, 26.460022, 30.232738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075424, 26.626459, 30.336855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483200, -0.634270, -0.603505,
		-0.086019, 0.651590, -0.753678,
		0.871274, 0.416091, 0.260289,
		43.336807, 26.751286, 30.414942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112606, 26.639906, 29.563284>,  <42.726913, 26.460022, 30.232738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112606, 26.639906, 29.563284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373726, 26.605923, 29.864386>,  <43.530396, 26.585533, 30.045048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373726, 26.605923, 29.864386>,  <43.112606, 26.639906, 29.563284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373726, 26.605923, 29.864386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482711, -0.719174, -0.499779,
		0.583822, 0.689617, -0.428463,
		0.652795, -0.084958, 0.752755,
		43.569565, 26.580435, 30.090212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796364, 26.602663, 29.204323>,  <43.112606, 26.639906, 29.563284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796364, 26.602663, 29.204323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844246, 26.465935, 29.577168>,  <43.872974, 26.383898, 29.800875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844246, 26.465935, 29.577168>,  <43.796364, 26.602663, 29.204323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844246, 26.465935, 29.577168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788382, -0.537910, -0.298507,
		0.603427, 0.770593, 0.205093,
		0.119706, -0.341819, 0.932111,
		43.880157, 26.363390, 29.856800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515491, 26.562044, 29.267553>,  <43.796364, 26.602663, 29.204323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515491, 26.562044, 29.267553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372524, 26.318327, 29.550684>,  <44.286743, 26.172096, 29.720562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372524, 26.318327, 29.550684>,  <44.515491, 26.562044, 29.267553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372524, 26.318327, 29.550684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763852, -0.626791, -0.153827,
		0.537384, 0.485692, 0.689436,
		-0.357420, -0.609291, 0.707825,
		44.265297, 26.135540, 29.763031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085125, 26.435852, 29.776430>,  <44.515491, 26.562044, 29.267553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085125, 26.435852, 29.776430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836239, 26.123262, 29.794973>,  <44.686909, 25.935709, 29.806099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836239, 26.123262, 29.794973>,  <45.085125, 26.435852, 29.776430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836239, 26.123262, 29.794973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753421, -0.613860, -0.235655,
		0.212616, -0.111700, 0.970731,
		-0.622215, -0.781473, 0.046359,
		44.649574, 25.888821, 29.808882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.734413, 26.187506, 29.413288>,  <45.085125, 26.435852, 29.776430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.734413, 26.187506, 29.413288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011196, 26.469692, 29.351944>,  <46.177265, 26.639004, 29.315138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011196, 26.469692, 29.351944>,  <45.734413, 26.187506, 29.413288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011196, 26.469692, 29.351944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440525, -0.244290, 0.863864,
		0.571961, -0.665313, -0.479812,
		0.691953, 0.705465, -0.153363,
		46.218781, 26.681332, 29.305935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490944, 26.027140, 29.713644>,  <45.734413, 26.187506, 29.413288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490944, 26.027140, 29.713644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480721, 26.426798, 29.700676>,  <46.474586, 26.666594, 29.692896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.480721, 26.426798, 29.700676>,  <46.490944, 26.027140, 29.713644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480721, 26.426798, 29.700676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501476, 0.040869, 0.864206,
		0.864794, 0.005832, -0.502093,
		-0.025560, 0.999148, -0.032419,
		46.473053, 26.726542, 29.690950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896721, 26.131926, 30.200615>,  <46.490944, 26.027140, 29.713644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896721, 26.131926, 30.200615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785938, 26.514683, 30.165621>,  <46.719467, 26.744337, 30.144625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.785938, 26.514683, 30.165621>,  <46.896721, 26.131926, 30.200615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785938, 26.514683, 30.165621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535432, 0.229289, 0.812859,
		0.797876, 0.178288, -0.575854,
		-0.276960, 0.956891, -0.087483,
		46.702850, 26.801750, 30.139376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290142, 26.364296, 30.676029>,  <46.896721, 26.131926, 30.200615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290142, 26.364296, 30.676029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.064152, 26.672594, 30.558216>,  <46.928558, 26.857573, 30.487528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.064152, 26.672594, 30.558216>,  <47.290142, 26.364296, 30.676029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.064152, 26.672594, 30.558216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367812, 0.554796, 0.746268,
		0.738588, 0.313294, -0.596938,
		-0.564980, 0.770745, -0.294532,
		46.894657, 26.903818, 30.469856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.433842, 27.085880, 30.370575>,  <47.290142, 26.364296, 30.676029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.433842, 27.085880, 30.370575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324219, 27.269094, 30.032322>,  <47.258446, 27.379023, 29.829370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324219, 27.269094, 30.032322>,  <47.433842, 27.085880, 30.370575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.324219, 27.269094, 30.032322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312113, 0.789342, 0.528700,
		0.909658, 0.408828, -0.073367,
		-0.274059, 0.458037, -0.845632,
		47.242001, 27.406506, 29.778633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770084, 27.788515, 30.193043>,  <47.433842, 27.085880, 30.370575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770084, 27.788515, 30.193043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.389217, 27.784573, 30.070875>,  <47.160698, 27.782207, 29.997574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.389217, 27.784573, 30.070875>,  <47.770084, 27.788515, 30.193043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.389217, 27.784573, 30.070875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250900, 0.595749, 0.762976,
		0.174433, 0.803110, -0.569725,
		-0.952167, -0.009856, -0.305418,
		47.103569, 27.781616, 29.979250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501377, 28.478222, 30.089907>,  <47.770084, 27.788515, 30.193043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501377, 28.478222, 30.089907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199677, 28.226139, 30.163595>,  <47.018654, 28.074890, 30.207808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199677, 28.226139, 30.163595>,  <47.501377, 28.478222, 30.089907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.199677, 28.226139, 30.163595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253906, 0.538709, 0.803321,
		-0.605500, 0.559135, -0.566337,
		-0.754256, -0.630207, 0.184221,
		46.973400, 28.037077, 30.218861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850277, 28.845190, 30.135761>,  <47.501377, 28.478222, 30.089907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850277, 28.845190, 30.135761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.833061, 28.516769, 30.363451>,  <46.822731, 28.319717, 30.500065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.833061, 28.516769, 30.363451>,  <46.850277, 28.845190, 30.135761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.833061, 28.516769, 30.363451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351552, 0.545761, 0.760629,
		-0.935179, -0.167378, -0.312130,
		-0.043036, -0.821054, 0.569226,
		46.820152, 28.270452, 30.534220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239361, 28.770893, 30.350592>,  <46.850277, 28.845190, 30.135761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239361, 28.770893, 30.350592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438507, 28.563057, 30.628342>,  <46.557995, 28.438354, 30.794992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.438507, 28.563057, 30.628342>,  <46.239361, 28.770893, 30.350592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438507, 28.563057, 30.628342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382990, 0.586634, 0.713568,
		-0.778109, -0.621197, 0.093065,
		0.497861, -0.519590, 0.694377,
		46.587864, 28.407181, 30.836655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766380, 28.568537, 30.767771>,  <46.239361, 28.770893, 30.350592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766380, 28.568537, 30.767771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082096, 28.511448, 31.006651>,  <46.271526, 28.477196, 31.149979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082096, 28.511448, 31.006651>,  <45.766380, 28.568537, 30.767771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082096, 28.511448, 31.006651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473595, 0.477532, 0.740048,
		-0.390804, -0.866945, 0.309320,
		0.789291, -0.142721, 0.597202,
		46.318882, 28.468632, 31.185812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478584, 28.546869, 31.458799>,  <45.766380, 28.568537, 30.767771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478584, 28.546869, 31.458799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870777, 28.575577, 31.532013>,  <46.106094, 28.592800, 31.575941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870777, 28.575577, 31.532013>,  <45.478584, 28.546869, 31.458799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870777, 28.575577, 31.532013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192099, 0.547819, 0.814243,
		-0.041833, -0.833513, 0.550914,
		0.980483, 0.071768, 0.183034,
		46.164921, 28.597107, 31.586924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613468, 28.386028, 32.124809>,  <45.478584, 28.546869, 31.458799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613468, 28.386028, 32.124809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904427, 28.643705, 32.030224>,  <46.079002, 28.798311, 31.973473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.904427, 28.643705, 32.030224>,  <45.613468, 28.386028, 32.124809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.904427, 28.643705, 32.030224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278646, 0.592176, 0.756098,
		0.627106, -0.484087, 0.610245,
		0.727389, 0.644196, -0.236468,
		46.122646, 28.836964, 31.959284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853863, 28.532219, 32.769192>,  <45.613468, 28.386028, 32.124809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853863, 28.532219, 32.769192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.001476, 28.828714, 32.544914>,  <46.090042, 29.006613, 32.410347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.001476, 28.828714, 32.544914>,  <45.853863, 28.532219, 32.769192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.001476, 28.828714, 32.544914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181964, 0.649224, 0.738510,
		0.911430, -0.170507, 0.374462,
		0.369031, 0.741240, -0.560696,
		46.112186, 29.051086, 32.376705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.360264, 28.958027, 33.203873>,  <45.853863, 28.532219, 32.769192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.360264, 28.958027, 33.203873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205517, 29.180374, 32.909569>,  <46.112671, 29.313784, 32.732986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.205517, 29.180374, 32.909569>,  <46.360264, 28.958027, 33.203873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.205517, 29.180374, 32.909569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164532, 0.743475, 0.648209,
		0.907339, 0.371826, -0.196167,
		-0.386866, 0.555869, -0.735761,
		46.089458, 29.347136, 32.688839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711330, 29.522406, 33.257248>,  <46.360264, 28.958027, 33.203873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711330, 29.522406, 33.257248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402100, 29.634604, 33.029678>,  <46.216560, 29.701921, 32.893135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402100, 29.634604, 33.029678>,  <46.711330, 29.522406, 33.257248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402100, 29.634604, 33.029678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146275, 0.793907, 0.590183,
		0.617214, 0.539477, -0.572723,
		-0.773078, 0.280494, -0.568923,
		46.170177, 29.718752, 32.859001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845165, 30.222147, 32.887497>,  <46.711330, 29.522406, 33.257248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845165, 30.222147, 32.887497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451202, 30.163837, 32.924816>,  <46.214825, 30.128853, 32.947208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.451202, 30.163837, 32.924816>,  <46.845165, 30.222147, 32.887497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.451202, 30.163837, 32.924816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076070, 0.848808, 0.523199,
		-0.155456, 0.508207, -0.847088,
		-0.984910, -0.145772, 0.093293,
		46.155731, 30.120106, 32.952805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556835, 30.782457, 32.620663>,  <46.845165, 30.222147, 32.887497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556835, 30.782457, 32.620663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231525, 30.643011, 32.807018>,  <46.036339, 30.559343, 32.918831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231525, 30.643011, 32.807018>,  <46.556835, 30.782457, 32.620663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231525, 30.643011, 32.807018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173390, 0.909479, 0.377867,
		-0.555445, 0.226530, -0.800103,
		-0.813275, -0.348614, 0.465887,
		45.987541, 30.538427, 32.946785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003571, 31.308264, 32.519539>,  <46.556835, 30.782457, 32.620663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003571, 31.308264, 32.519539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903576, 31.073833, 32.827831>,  <45.843578, 30.933176, 33.012806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903576, 31.073833, 32.827831>,  <46.003571, 31.308264, 32.519539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903576, 31.073833, 32.827831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238549, 0.808746, 0.537609,
		-0.938403, -0.049461, -0.341985,
		-0.249988, -0.586074, 0.770729,
		45.828579, 30.898012, 33.059052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312553, 31.620943, 32.787750>,  <46.003571, 31.308264, 32.519539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312553, 31.620943, 32.787750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434803, 31.380716, 33.083294>,  <45.508152, 31.236580, 33.260620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.434803, 31.380716, 33.083294>,  <45.312553, 31.620943, 32.787750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.434803, 31.380716, 33.083294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290078, 0.680370, 0.673017,
		-0.906889, -0.420018, 0.033727,
		0.305626, -0.600568, 0.738858,
		45.526489, 31.200546, 33.304951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821457, 31.711929, 33.239944>,  <45.312553, 31.620943, 32.787750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821457, 31.711929, 33.239944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101883, 31.562870, 33.483135>,  <45.270138, 31.473434, 33.629051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101883, 31.562870, 33.483135>,  <44.821457, 31.711929, 33.239944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101883, 31.562870, 33.483135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191950, 0.722507, 0.664183,
		-0.686775, -0.582338, 0.434996,
		0.701067, -0.372647, 0.607980,
		45.312202, 31.451077, 33.665527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433632, 31.554182, 33.888268>,  <44.821457, 31.711929, 33.239944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433632, 31.554182, 33.888268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822277, 31.609314, 33.965179>,  <45.055466, 31.642393, 34.011326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822277, 31.609314, 33.965179>,  <44.433632, 31.554182, 33.888268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822277, 31.609314, 33.965179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230418, 0.735522, 0.637115,
		-0.053610, -0.663334, 0.746401,
		0.971614, 0.137829, 0.192275,
		45.113762, 31.650663, 34.022861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495094, 31.433834, 34.589672>,  <44.433632, 31.554182, 33.888268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495094, 31.433834, 34.589672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793694, 31.666815, 34.460995>,  <44.972855, 31.806602, 34.383789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793694, 31.666815, 34.460995>,  <44.495094, 31.433834, 34.589672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793694, 31.666815, 34.460995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225240, 0.676131, 0.701508,
		0.626097, -0.451222, 0.635926,
		0.746504, 0.582448, -0.321690,
		45.017643, 31.841549, 34.364487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663677, 31.754322, 35.260502>,  <44.495094, 31.433834, 34.589672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663677, 31.754322, 35.260502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.846390, 31.962759, 34.972111>,  <44.956017, 32.087822, 34.799076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.846390, 31.962759, 34.972111>,  <44.663677, 31.754322, 35.260502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846390, 31.962759, 34.972111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045615, 0.795686, 0.603989,
		0.888409, -0.308779, 0.339684,
		0.456781, 0.521095, -0.720979,
		44.983425, 32.119087, 34.755817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.010818, 32.314724, 35.659218>,  <44.663677, 31.754322, 35.260502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.010818, 32.314724, 35.659218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.996365, 32.447186, 35.282063>,  <44.987690, 32.526665, 35.055771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.996365, 32.447186, 35.282063>,  <45.010818, 32.314724, 35.659218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996365, 32.447186, 35.282063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167003, 0.928231, 0.332410,
		0.985294, 0.169477, 0.021760,
		-0.036138, 0.331155, -0.942884,
		44.985523, 32.546532, 34.999199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502689, 32.846321, 35.621784>,  <45.010818, 32.314724, 35.659218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502689, 32.846321, 35.621784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280472, 32.929855, 35.299850>,  <45.147141, 32.979977, 35.106689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280472, 32.929855, 35.299850>,  <45.502689, 32.846321, 35.621784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280472, 32.929855, 35.299850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133571, 0.932960, 0.334281,
		0.820690, 0.293210, -0.490404,
		-0.555542, 0.208837, -0.804836,
		45.113808, 32.992508, 35.058399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736618, 33.413895, 35.319511>,  <45.502689, 32.846321, 35.621784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736618, 33.413895, 35.319511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350891, 33.394127, 35.215473>,  <45.119453, 33.382267, 35.153049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350891, 33.394127, 35.215473>,  <45.736618, 33.413895, 35.319511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350891, 33.394127, 35.215473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141823, 0.925996, 0.349882,
		0.223559, 0.374285, -0.899962,
		-0.964317, -0.049416, -0.260096,
		45.061596, 33.379303, 35.137444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525383, 34.103065, 35.190758>,  <45.736618, 33.413895, 35.319511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525383, 34.103065, 35.190758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181602, 33.915527, 35.272270>,  <44.975334, 33.803005, 35.321178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.181602, 33.915527, 35.272270>,  <45.525383, 34.103065, 35.190758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.181602, 33.915527, 35.272270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330549, 0.813738, 0.478087,
		-0.389971, 0.343534, -0.854346,
		-0.859453, -0.468843, 0.203780,
		44.923767, 33.774876, 35.333405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106247, 34.604027, 35.422836>,  <45.525383, 34.103065, 35.190758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106247, 34.604027, 35.422836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473309, 34.506718, 35.548519>,  <46.693546, 34.448334, 35.623928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.473309, 34.506718, 35.548519>,  <46.106247, 34.604027, 35.422836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.473309, 34.506718, 35.548519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085601, -0.651130, -0.754124,
		0.388048, 0.718922, -0.576688,
		0.917656, -0.243271, 0.314209,
		46.748604, 34.433735, 35.642780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.613037, 34.555305, 34.880581>,  <46.106247, 34.604027, 35.422836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.613037, 34.555305, 34.880581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825829, 34.331215, 35.134556>,  <46.953503, 34.196758, 35.286942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.825829, 34.331215, 35.134556>,  <46.613037, 34.555305, 34.880581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.825829, 34.331215, 35.134556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169065, -0.664472, -0.727939,
		0.829709, 0.494592, -0.258769,
		0.531977, -0.560229, 0.634936,
		46.985420, 34.163147, 35.325035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.194679, 34.415783, 34.454636>,  <46.613037, 34.555305, 34.880581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.194679, 34.415783, 34.454636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155155, 34.130219, 34.731926>,  <47.131443, 33.958881, 34.898300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155155, 34.130219, 34.731926>,  <47.194679, 34.415783, 34.454636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.155155, 34.130219, 34.731926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116980, -0.700142, -0.704356,
		0.988207, 0.011499, 0.152692,
		-0.098807, -0.713911, 0.693230,
		47.125511, 33.916046, 34.939896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.406269, 34.925423, 34.927074>,  <47.194679, 34.415783, 34.454636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.406269, 34.925423, 34.927074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804131, 34.911297, 34.965881>,  <48.042847, 34.902821, 34.989166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804131, 34.911297, 34.965881>,  <47.406269, 34.925423, 34.927074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.804131, 34.911297, 34.965881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059244, -0.964806, 0.256202,
		0.084559, -0.260581, -0.961742,
		0.994656, -0.035313, 0.097021,
		48.102528, 34.900703, 34.994987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.677876, 32.652054, 48.923267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282978, 32.593555, 48.948448>,  <35.046040, 32.558456, 48.963554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.282978, 32.593555, 48.948448>,  <35.677876, 32.652054, 48.923267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282978, 32.593555, 48.948448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124008, 0.458308, -0.880100,
		0.099860, -0.876679, -0.470597,
		-0.987244, -0.146245, 0.062948,
		34.986805, 32.549683, 48.967331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479034, 32.298313, 48.265221>,  <35.677876, 32.652054, 48.923267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479034, 32.298313, 48.265221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129856, 32.443760, 48.395294>,  <34.920349, 32.531029, 48.473339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.129856, 32.443760, 48.395294>,  <35.479034, 32.298313, 48.265221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129856, 32.443760, 48.395294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233270, 0.274295, -0.932924,
		-0.428419, -0.890252, -0.154626,
		-0.872950, 0.363613, 0.325182,
		34.867970, 32.552845, 48.492847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870998, 32.031395, 47.769562>,  <35.479034, 32.298313, 48.265221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870998, 32.031395, 47.769562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744690, 32.361977, 47.956009>,  <34.668903, 32.560326, 48.067879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.744690, 32.361977, 47.956009>,  <34.870998, 32.031395, 47.769562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744690, 32.361977, 47.956009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228571, 0.410532, -0.882734,
		-0.920893, -0.385284, 0.059268,
		-0.315772, 0.826450, 0.466121,
		34.649960, 32.609913, 48.095844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278435, 32.157589, 47.494480>,  <34.870998, 32.031395, 47.769562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278435, 32.157589, 47.494480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.372463, 32.511658, 47.655083>,  <34.428883, 32.724098, 47.751446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.372463, 32.511658, 47.655083>,  <34.278435, 32.157589, 47.494480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372463, 32.511658, 47.655083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108422, 0.434387, -0.894177,
		-0.965911, 0.166667, 0.198086,
		0.235076, 0.885172, 0.401509,
		34.442986, 32.777210, 47.775536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860046, 32.646790, 47.037758>,  <34.278435, 32.157589, 47.494480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860046, 32.646790, 47.037758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135437, 32.860447, 47.234001>,  <34.300671, 32.988640, 47.351746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.135437, 32.860447, 47.234001>,  <33.860046, 32.646790, 47.037758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135437, 32.860447, 47.234001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043545, 0.644794, -0.763115,
		-0.723953, 0.546748, 0.420664,
		0.688473, 0.534142, 0.490609,
		34.341980, 33.020691, 47.381184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680191, 33.327091, 46.946507>,  <33.860046, 32.646790, 47.037758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680191, 33.327091, 46.946507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.068558, 33.328262, 47.042259>,  <34.301579, 33.328964, 47.099712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.068558, 33.328262, 47.042259>,  <33.680191, 33.327091, 46.946507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068558, 33.328262, 47.042259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215404, 0.425679, -0.878862,
		-0.104476, 0.904870, 0.412669,
		0.970920, 0.002930, 0.239386,
		34.359833, 33.329140, 47.114075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979515, 34.030487, 46.696655>,  <33.680191, 33.327091, 46.946507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979515, 34.030487, 46.696655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.304848, 33.800251, 46.730556>,  <34.500046, 33.662109, 46.750896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.304848, 33.800251, 46.730556>,  <33.979515, 34.030487, 46.696655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304848, 33.800251, 46.730556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364981, 0.391336, -0.844775,
		0.453080, 0.718016, 0.528367,
		0.813331, -0.575595, 0.084756,
		34.548847, 33.627571, 46.755985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578121, 34.476070, 46.563988>,  <33.979515, 34.030487, 46.696655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578121, 34.476070, 46.563988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666813, 34.092438, 46.493572>,  <34.720028, 33.862259, 46.451321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666813, 34.092438, 46.493572>,  <34.578121, 34.476070, 46.563988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666813, 34.092438, 46.493572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403239, 0.254561, -0.878975,
		0.887827, 0.123904, 0.443184,
		0.221726, -0.959086, -0.176043,
		34.733330, 33.804710, 46.440758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186150, 34.504375, 46.162071>,  <34.578121, 34.476070, 46.563988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186150, 34.504375, 46.162071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058422, 34.132359, 46.089355>,  <34.981785, 33.909149, 46.045727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.058422, 34.132359, 46.089355>,  <35.186150, 34.504375, 46.162071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058422, 34.132359, 46.089355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379724, 0.050182, -0.923738,
		0.868242, -0.363998, 0.337137,
		-0.319320, -0.930047, -0.181789,
		34.962627, 33.853344, 46.034821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779228, 34.114841, 45.915199>,  <35.186150, 34.504375, 46.162071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779228, 34.114841, 45.915199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470837, 33.891373, 45.792904>,  <35.285801, 33.757294, 45.719528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470837, 33.891373, 45.792904>,  <35.779228, 34.114841, 45.915199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470837, 33.891373, 45.792904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473154, -0.181142, -0.862156,
		0.426277, -0.809368, 0.403994,
		-0.770982, -0.558668, -0.305739,
		35.239540, 33.723774, 45.701183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076702, 33.641899, 45.480263>,  <35.779228, 34.114841, 45.915199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076702, 33.641899, 45.480263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.691750, 33.572861, 45.396320>,  <35.460777, 33.531437, 45.345955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.691750, 33.572861, 45.396320>,  <36.076702, 33.641899, 45.480263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691750, 33.572861, 45.396320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251130, -0.270113, -0.929501,
		0.103742, -0.947233, 0.303295,
		-0.962378, -0.172595, -0.209857,
		35.403038, 33.521084, 45.333363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111538, 33.112293, 45.161247>,  <36.076702, 33.641899, 45.480263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111538, 33.112293, 45.161247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761082, 33.269791, 45.049999>,  <35.550808, 33.364288, 44.983250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761082, 33.269791, 45.049999>,  <36.111538, 33.112293, 45.161247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761082, 33.269791, 45.049999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230042, -0.165503, -0.959005,
		-0.423632, -0.904198, 0.054426,
		-0.876138, 0.393744, -0.278115,
		35.498241, 33.387913, 44.966564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651474, 32.556622, 44.704285>,  <36.111538, 33.112293, 45.161247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651474, 32.556622, 44.704285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565735, 32.941063, 44.634621>,  <35.514294, 33.171730, 44.592823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565735, 32.941063, 44.634621>,  <35.651474, 32.556622, 44.704285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565735, 32.941063, 44.634621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198379, -0.131752, -0.971230,
		-0.956401, -0.242728, -0.162422,
		-0.214345, 0.961106, -0.174160,
		35.501431, 33.229393, 44.582371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351429, 32.566769, 44.004593>,  <35.651474, 32.556622, 44.704285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351429, 32.566769, 44.004593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453842, 32.950008, 44.055954>,  <35.515289, 33.179955, 44.086769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.453842, 32.950008, 44.055954>,  <35.351429, 32.566769, 44.004593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453842, 32.950008, 44.055954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416491, 0.010534, -0.909079,
		-0.872343, 0.286231, -0.396344,
		0.256031, 0.958103, 0.128402,
		35.530651, 33.237438, 44.094475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149704, 32.910027, 43.379009>,  <35.351429, 32.566769, 44.004593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149704, 32.910027, 43.379009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411972, 33.163200, 43.543686>,  <35.569332, 33.315105, 43.642490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.411972, 33.163200, 43.543686>,  <35.149704, 32.910027, 43.379009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411972, 33.163200, 43.543686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396064, 0.175899, -0.901218,
		-0.642830, 0.753956, -0.135352,
		0.655670, 0.632938, 0.411688,
		35.608673, 33.353081, 43.667191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230354, 33.447254, 42.841003>,  <35.149704, 32.910027, 43.379009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230354, 33.447254, 42.841003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555473, 33.511749, 43.064919>,  <35.750546, 33.550446, 43.199268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555473, 33.511749, 43.064919>,  <35.230354, 33.447254, 42.841003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555473, 33.511749, 43.064919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527693, 0.203293, -0.824750,
		-0.246782, 0.965751, 0.080152,
		0.812797, 0.161238, 0.559789,
		35.799313, 33.560120, 43.232857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554878, 34.102367, 42.550568>,  <35.230354, 33.447254, 42.841003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554878, 34.102367, 42.550568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829971, 33.924248, 42.779907>,  <35.995026, 33.817375, 42.917511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829971, 33.924248, 42.779907>,  <35.554878, 34.102367, 42.550568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829971, 33.924248, 42.779907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668078, 0.079168, -0.739867,
		0.284074, 0.891873, 0.351943,
		0.687730, -0.445303, 0.573352,
		36.036289, 33.790657, 42.951912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054619, 34.538101, 42.616138>,  <35.554878, 34.102367, 42.550568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054619, 34.538101, 42.616138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.198547, 34.167160, 42.657227>,  <36.284904, 33.944595, 42.681877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.198547, 34.167160, 42.657227>,  <36.054619, 34.538101, 42.616138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198547, 34.167160, 42.657227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512849, 0.104610, -0.852081,
		0.779433, 0.359273, 0.513232,
		0.359819, -0.927351, 0.102716,
		36.306492, 33.888954, 42.688042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692982, 34.524742, 42.274822>,  <36.054619, 34.538101, 42.616138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692982, 34.524742, 42.274822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690903, 34.126991, 42.317127>,  <36.689655, 33.888340, 42.342510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.690903, 34.126991, 42.317127>,  <36.692982, 34.524742, 42.274822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690903, 34.126991, 42.317127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642386, -0.084376, -0.761722,
		0.766364, 0.063982, 0.639213,
		-0.005197, -0.994378, 0.105764,
		36.689342, 33.828678, 42.348858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381737, 34.230412, 42.145817>,  <36.692982, 34.524742, 42.274822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381737, 34.230412, 42.145817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153515, 33.906963, 42.088406>,  <37.016582, 33.712894, 42.053959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.153515, 33.906963, 42.088406>,  <37.381737, 34.230412, 42.145817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153515, 33.906963, 42.088406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330083, -0.065758, -0.941659,
		0.752008, -0.584642, 0.304431,
		-0.570552, -0.808622, -0.143529,
		36.982349, 33.664375, 42.045345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867878, 33.765087, 41.994213>,  <37.381737, 34.230412, 42.145817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867878, 33.765087, 41.994213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515682, 33.633369, 41.857803>,  <37.304363, 33.554337, 41.775959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.515682, 33.633369, 41.857803>,  <37.867878, 33.765087, 41.994213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515682, 33.633369, 41.857803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335133, 0.076411, -0.939067,
		0.335292, -0.941129, 0.043080,
		-0.880491, -0.329299, -0.341023,
		37.251534, 33.534580, 41.755497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015350, 33.198246, 41.561619>,  <37.867878, 33.765087, 41.994213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015350, 33.198246, 41.561619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677563, 33.393169, 41.472713>,  <37.474892, 33.510124, 41.419369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677563, 33.393169, 41.472713>,  <38.015350, 33.198246, 41.561619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677563, 33.393169, 41.472713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280362, 0.048594, -0.958664,
		-0.456366, -0.871875, -0.177659,
		-0.844468, 0.487311, -0.222264,
		37.424221, 33.539364, 41.406033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533184, 33.788033, 41.432037>,  <38.015350, 33.198246, 41.561619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533184, 33.788033, 41.432037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932583, 33.785034, 41.410355>,  <39.172222, 33.783237, 41.397346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932583, 33.785034, 41.410355>,  <38.533184, 33.788033, 41.432037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932583, 33.785034, 41.410355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049994, -0.277886, 0.959312,
		-0.022251, -0.960585, -0.277095,
		0.998502, -0.007492, -0.054206,
		39.232132, 33.782787, 41.394093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716236, 33.131340, 41.838764>,  <38.533184, 33.788033, 41.432037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716236, 33.131340, 41.838764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031670, 33.372578, 41.790756>,  <39.220932, 33.517323, 41.761951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031670, 33.372578, 41.790756>,  <38.716236, 33.131340, 41.838764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031670, 33.372578, 41.790756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279631, -0.177870, 0.943487,
		0.547665, -0.777584, -0.308911,
		0.788587, 0.603096, -0.120023,
		39.268246, 33.553505, 41.754749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333454, 32.723907, 42.029408>,  <38.716236, 33.131340, 41.838764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333454, 32.723907, 42.029408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.425213, 33.109169, 42.085560>,  <39.480270, 33.340328, 42.119251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.425213, 33.109169, 42.085560>,  <39.333454, 32.723907, 42.029408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425213, 33.109169, 42.085560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192019, -0.186171, 0.963571,
		0.954203, -0.194088, -0.227652,
		0.229400, 0.963156, 0.140377,
		39.494034, 33.398117, 42.127674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880520, 32.766548, 42.388401>,  <39.333454, 32.723907, 42.029408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880520, 32.766548, 42.388401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732567, 33.135441, 42.433430>,  <39.643795, 33.356777, 42.460449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732567, 33.135441, 42.433430>,  <39.880520, 32.766548, 42.388401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732567, 33.135441, 42.433430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275356, -0.006908, 0.961317,
		0.887336, 0.386574, -0.251387,
		-0.369884, 0.922233, 0.112576,
		39.621601, 33.412109, 42.467201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345657, 33.169983, 42.758148>,  <39.880520, 32.766548, 42.388401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345657, 33.169983, 42.758148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007885, 33.377754, 42.810497>,  <39.805222, 33.502419, 42.841908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.007885, 33.377754, 42.810497>,  <40.345657, 33.169983, 42.758148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007885, 33.377754, 42.810497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205611, 0.088707, 0.974605,
		0.494629, 0.849897, -0.181708,
		-0.844432, 0.519429, 0.130871,
		39.754555, 33.533585, 42.849758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522861, 33.541191, 43.388233>,  <40.345657, 33.169983, 42.758148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522861, 33.541191, 43.388233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129292, 33.589787, 43.335888>,  <39.893150, 33.618946, 43.304482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.129292, 33.589787, 43.335888>,  <40.522861, 33.541191, 43.388233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129292, 33.589787, 43.335888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105061, 0.198698, 0.974413,
		0.144386, 0.972501, -0.182740,
		-0.983928, 0.121492, -0.130861,
		39.834114, 33.626236, 43.296631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341011, 34.190273, 43.783989>,  <40.522861, 33.541191, 43.388233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341011, 34.190273, 43.783989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.010437, 33.973804, 43.721851>,  <39.812092, 33.843922, 43.684566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.010437, 33.973804, 43.721851>,  <40.341011, 34.190273, 43.783989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010437, 33.973804, 43.721851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155360, -0.046011, 0.986786,
		-0.541169, 0.839652, -0.046052,
		-0.826438, -0.541173, -0.155348,
		39.762505, 33.811451, 43.675247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762001, 34.400726, 44.284477>,  <40.341011, 34.190273, 43.783989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762001, 34.400726, 44.284477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629028, 34.046852, 44.153744>,  <39.549244, 33.834526, 44.075302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629028, 34.046852, 44.153744>,  <39.762001, 34.400726, 44.284477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629028, 34.046852, 44.153744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362830, -0.199907, 0.910160,
		-0.870543, 0.421150, -0.254535,
		-0.332430, -0.884686, -0.326833,
		39.529301, 33.781445, 44.055695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052536, 34.364960, 44.584892>,  <39.762001, 34.400726, 44.284477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052536, 34.364960, 44.584892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149780, 33.988106, 44.492573>,  <39.208126, 33.761993, 44.437180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.149780, 33.988106, 44.492573>,  <39.052536, 34.364960, 44.584892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149780, 33.988106, 44.492573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591298, -0.332563, 0.734689,
		-0.768936, -0.042138, -0.637936,
		0.243112, -0.942139, -0.230803,
		39.222713, 33.705463, 44.423332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425713, 33.947609, 44.585526>,  <39.052536, 34.364960, 44.584892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425713, 33.947609, 44.585526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704090, 33.663639, 44.628731>,  <38.871117, 33.493256, 44.654652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.704090, 33.663639, 44.628731>,  <38.425713, 33.947609, 44.585526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704090, 33.663639, 44.628731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536637, -0.414222, 0.735147,
		-0.477162, -0.569582, -0.669248,
		0.695944, -0.709928, 0.108008,
		38.912872, 33.450661, 44.661133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059097, 33.331562, 44.591743>,  <38.425713, 33.947609, 44.585526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059097, 33.331562, 44.591743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.406502, 33.260033, 44.776657>,  <38.614944, 33.217117, 44.887604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.406502, 33.260033, 44.776657>,  <38.059097, 33.331562, 44.591743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406502, 33.260033, 44.776657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495660, -0.309221, 0.811606,
		-0.002182, -0.934027, -0.357196,
		0.868514, -0.178819, 0.462285,
		38.667057, 33.206387, 44.915344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078491, 32.555302, 44.895226>,  <38.059097, 33.331562, 44.591743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078491, 32.555302, 44.895226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333191, 32.787582, 45.098141>,  <38.486012, 32.926952, 45.219891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333191, 32.787582, 45.098141>,  <38.078491, 32.555302, 44.895226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333191, 32.787582, 45.098141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463878, -0.237030, 0.853601,
		0.615928, -0.778848, 0.118445,
		0.636750, 0.580701, 0.507284,
		38.524216, 32.961792, 45.250324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476379, 32.055969, 45.316463>,  <38.078491, 32.555302, 44.895226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476379, 32.055969, 45.316463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.490677, 32.430340, 45.456615>,  <38.499256, 32.654961, 45.540707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.490677, 32.430340, 45.456615>,  <38.476379, 32.055969, 45.316463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490677, 32.430340, 45.456615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258996, -0.329952, 0.907774,
		0.965217, -0.123191, 0.230608,
		0.035740, 0.935925, 0.350381,
		38.501400, 32.711117, 45.561729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671646, 31.912268, 45.937160>,  <38.476379, 32.055969, 45.316463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671646, 31.912268, 45.937160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548473, 32.291702, 45.966461>,  <38.474571, 32.519363, 45.984043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548473, 32.291702, 45.966461>,  <38.671646, 31.912268, 45.937160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548473, 32.291702, 45.966461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423529, -0.205617, 0.882239,
		0.851940, 0.240645, 0.465069,
		-0.307932, 0.948584, 0.073253,
		38.456093, 32.576279, 45.988438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753754, 32.120590, 46.644119>,  <38.671646, 31.912268, 45.937160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753754, 32.120590, 46.644119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535603, 32.429279, 46.513271>,  <38.404713, 32.614491, 46.434761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535603, 32.429279, 46.513271>,  <38.753754, 32.120590, 46.644119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535603, 32.429279, 46.513271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581809, -0.067602, 0.810511,
		0.603373, 0.632359, 0.485863,
		-0.545379, 0.771720, -0.327123,
		38.371990, 32.660797, 46.415134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669052, 32.581940, 47.184143>,  <38.753754, 32.120590, 46.644119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669052, 32.581940, 47.184143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367619, 32.620831, 46.924091>,  <38.186760, 32.644165, 46.768063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367619, 32.620831, 46.924091>,  <38.669052, 32.581940, 47.184143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367619, 32.620831, 46.924091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654637, -0.021161, 0.755647,
		0.059710, 0.995038, 0.079593,
		-0.753581, 0.097224, -0.650125,
		38.141544, 32.649998, 46.729053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375122, 33.202168, 47.328373>,  <38.669052, 32.581940, 47.184143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375122, 33.202168, 47.328373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.093792, 33.001663, 47.126751>,  <37.924992, 32.881363, 47.005779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.093792, 33.001663, 47.126751>,  <38.375122, 33.202168, 47.328373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093792, 33.001663, 47.126751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548340, -0.068689, 0.833430,
		-0.452385, 0.862568, -0.226548,
		-0.703329, -0.501257, -0.504054,
		37.882793, 32.851288, 46.975536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813633, 33.538006, 47.493359>,  <38.375122, 33.202168, 47.328373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813633, 33.538006, 47.493359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676579, 33.196442, 47.336674>,  <37.594345, 32.991505, 47.242664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676579, 33.196442, 47.336674>,  <37.813633, 33.538006, 47.493359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676579, 33.196442, 47.336674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518705, -0.175686, 0.836707,
		-0.783292, 0.489867, -0.382732,
		-0.342635, -0.853912, -0.391710,
		37.573788, 32.940269, 47.219162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.984665, 33.398628, 47.497387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144234, 33.032082, 47.483921>,  <37.239975, 32.812153, 47.475842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144234, 33.032082, 47.483921>,  <36.984665, 33.398628, 47.497387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144234, 33.032082, 47.483921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410969, -0.211486, 0.886780,
		-0.819733, -0.339925, -0.460965,
		0.398925, -0.916365, -0.033663,
		37.263912, 32.757172, 47.473824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539337, 33.138672, 47.932045>,  <36.984665, 33.398628, 47.497387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539337, 33.138672, 47.932045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822376, 32.862259, 47.873016>,  <36.992199, 32.696411, 47.837601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822376, 32.862259, 47.873016>,  <36.539337, 33.138672, 47.932045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822376, 32.862259, 47.873016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264305, -0.452519, 0.851686,
		-0.655326, -0.563645, -0.502845,
		0.707595, -0.691036, -0.147573,
		37.034657, 32.654949, 47.828743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225246, 32.458389, 47.883835>,  <36.539337, 33.138672, 47.932045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225246, 32.458389, 47.883835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596588, 32.395061, 48.018353>,  <36.819393, 32.357067, 48.099064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.596588, 32.395061, 48.018353>,  <36.225246, 32.458389, 47.883835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596588, 32.395061, 48.018353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370191, -0.475179, 0.798225,
		0.033429, -0.865529, -0.499741,
		0.928354, -0.158316, 0.336296,
		36.875095, 32.347565, 48.119240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215958, 31.748730, 48.184517>,  <36.225246, 32.458389, 47.883835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215958, 31.748730, 48.184517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.562561, 31.867315, 48.345154>,  <36.770523, 31.938467, 48.441536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.562561, 31.867315, 48.345154>,  <36.215958, 31.748730, 48.184517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562561, 31.867315, 48.345154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184774, -0.556884, 0.809777,
		0.463713, -0.775879, -0.427763,
		0.866504, 0.296465, 0.401597,
		36.822514, 31.956255, 48.465633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609753, 31.122923, 48.394402>,  <36.215958, 31.748730, 48.184517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609753, 31.122923, 48.394402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748589, 31.428837, 48.611523>,  <36.831890, 31.612385, 48.741795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748589, 31.428837, 48.611523>,  <36.609753, 31.122923, 48.394402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748589, 31.428837, 48.611523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135841, -0.531685, 0.835977,
		0.927943, -0.363893, -0.080652,
		0.347088, 0.764783, 0.542805,
		36.852715, 31.658272, 48.774364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955875, 30.802166, 48.956394>,  <36.609753, 31.122923, 48.394402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955875, 30.802166, 48.956394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.895454, 31.174253, 49.090183>,  <36.859203, 31.397507, 49.170456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.895454, 31.174253, 49.090183>,  <36.955875, 30.802166, 48.956394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895454, 31.174253, 49.090183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044644, -0.331595, 0.942365,
		0.987517, 0.157280, 0.008560,
		-0.151054, 0.930219, 0.334477,
		36.850140, 31.453320, 49.190525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582928, 31.098825, 49.310505>,  <36.955875, 30.802166, 48.956394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582928, 31.098825, 49.310505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254337, 31.290234, 49.434563>,  <37.057182, 31.405079, 49.508999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254337, 31.290234, 49.434563>,  <37.582928, 31.098825, 49.310505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254337, 31.290234, 49.434563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166951, -0.318230, 0.933197,
		0.545249, 0.818382, 0.181531,
		-0.821481, 0.478518, 0.310145,
		37.007893, 31.433788, 49.527607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788612, 31.355648, 49.927448>,  <37.582928, 31.098825, 49.310505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788612, 31.355648, 49.927448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398716, 31.434637, 49.969166>,  <37.164776, 31.482031, 49.994198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.398716, 31.434637, 49.969166>,  <37.788612, 31.355648, 49.927448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398716, 31.434637, 49.969166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104327, -0.010263, 0.994490,
		0.197454, 0.980255, -0.010598,
		-0.974745, 0.197472, 0.104294,
		37.106293, 31.493879, 50.000454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691509, 31.869612, 50.447319>,  <37.788612, 31.355648, 49.927448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691509, 31.869612, 50.447319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365856, 31.637697, 50.434456>,  <37.170464, 31.498549, 50.426739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.365856, 31.637697, 50.434456>,  <37.691509, 31.869612, 50.447319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365856, 31.637697, 50.434456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138497, -0.247654, 0.958898,
		-0.563920, 0.776218, 0.281922,
		-0.814133, -0.579788, -0.032153,
		37.121616, 31.463760, 50.424809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559196, 31.696442, 51.080673>,  <37.691509, 31.869612, 50.447319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559196, 31.696442, 51.080673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303574, 31.442656, 50.906746>,  <37.150200, 31.290384, 50.802391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303574, 31.442656, 50.906746>,  <37.559196, 31.696442, 51.080673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303574, 31.442656, 50.906746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168020, -0.436505, 0.883874,
		-0.750584, 0.637902, 0.172348,
		-0.639056, -0.634464, -0.434814,
		37.111858, 31.252316, 50.776302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990204, 31.650631, 51.554729>,  <37.559196, 31.696442, 51.080673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990204, 31.650631, 51.554729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955708, 31.322130, 51.329124>,  <36.935009, 31.125031, 51.193760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.955708, 31.322130, 51.329124>,  <36.990204, 31.650631, 51.554729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955708, 31.322130, 51.329124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276554, -0.524139, 0.805479,
		-0.957121, 0.225444, -0.181919,
		-0.086239, -0.821251, -0.564011,
		36.929836, 31.075754, 51.159920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306892, 31.363142, 51.790829>,  <36.990204, 31.650631, 51.554729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306892, 31.363142, 51.790829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527626, 31.083778, 51.608532>,  <36.660065, 30.916161, 51.499153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527626, 31.083778, 51.608532>,  <36.306892, 31.363142, 51.790829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527626, 31.083778, 51.608532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028137, -0.561768, 0.826816,
		-0.833481, -0.443440, -0.329653,
		0.551831, -0.698411, -0.455746,
		36.693176, 30.874256, 51.471809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992069, 30.717173, 51.945805>,  <36.306892, 31.363142, 51.790829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992069, 30.717173, 51.945805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355591, 30.584265, 51.844875>,  <36.573704, 30.504520, 51.784317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.355591, 30.584265, 51.844875>,  <35.992069, 30.717173, 51.945805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355591, 30.584265, 51.844875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054033, -0.505951, 0.860868,
		-0.413702, -0.795997, -0.441859,
		0.908808, -0.332268, -0.252323,
		36.628235, 30.484585, 51.769180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094521, 29.950533, 52.035286>,  <35.992069, 30.717173, 51.945805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094521, 29.950533, 52.035286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466686, 30.096432, 52.049671>,  <36.689983, 30.183971, 52.058304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.466686, 30.096432, 52.049671>,  <36.094521, 29.950533, 52.035286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466686, 30.096432, 52.049671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175228, -0.528856, 0.830425,
		0.321918, -0.766335, -0.555968,
		0.930411, 0.364749, 0.035965,
		36.745811, 30.205856, 52.060459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416065, 29.381901, 52.171196>,  <36.094521, 29.950533, 52.035286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416065, 29.381901, 52.171196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699371, 29.656576, 52.236706>,  <36.869354, 29.821383, 52.276012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699371, 29.656576, 52.236706>,  <36.416065, 29.381901, 52.171196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699371, 29.656576, 52.236706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372873, -0.560876, 0.739178,
		0.599441, -0.462467, -0.653295,
		0.708263, 0.686690, 0.163771,
		36.911850, 29.862583, 52.285835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072056, 29.024384, 52.077869>,  <36.416065, 29.381901, 52.171196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072056, 29.024384, 52.077869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115635, 29.345076, 52.312939>,  <37.141781, 29.537491, 52.453979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115635, 29.345076, 52.312939>,  <37.072056, 29.024384, 52.077869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115635, 29.345076, 52.312939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472663, -0.561863, 0.678896,
		0.874483, 0.203809, -0.440160,
		0.108945, 0.801731, 0.587673,
		37.148319, 29.585594, 52.489239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732525, 29.038652, 52.384727>,  <37.072056, 29.024384, 52.077869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732525, 29.038652, 52.384727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480343, 29.254583, 52.607838>,  <37.329033, 29.384142, 52.741703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.480343, 29.254583, 52.607838>,  <37.732525, 29.038652, 52.384727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480343, 29.254583, 52.607838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242820, -0.545348, 0.802268,
		0.737266, 0.641234, 0.212738,
		-0.630457, 0.539828, 0.557771,
		37.291206, 29.416533, 52.775169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024727, 28.960484, 53.107525>,  <37.732525, 29.038652, 52.384727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024727, 28.960484, 53.107525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658722, 29.114902, 53.154366>,  <37.439117, 29.207554, 53.182468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658722, 29.114902, 53.154366>,  <38.024727, 28.960484, 53.107525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658722, 29.114902, 53.154366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070372, -0.438566, 0.895939,
		0.397231, 0.811559, 0.428462,
		-0.915017, 0.386047, 0.117101,
		37.384216, 29.230717, 53.189495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976669, 29.282379, 53.796822>,  <38.024727, 28.960484, 53.107525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976669, 29.282379, 53.796822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.595573, 29.207184, 53.701366>,  <37.366917, 29.162067, 53.644093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.595573, 29.207184, 53.701366>,  <37.976669, 29.282379, 53.796822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595573, 29.207184, 53.701366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126825, -0.467670, 0.874757,
		-0.276046, 0.863681, 0.421726,
		-0.952740, -0.187987, -0.238635,
		37.309750, 29.150787, 53.629776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467396, 29.508204, 54.345169>,  <37.976669, 29.282379, 53.796822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467396, 29.508204, 54.345169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263180, 29.222906, 54.153069>,  <37.140652, 29.051727, 54.037807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.263180, 29.222906, 54.153069>,  <37.467396, 29.508204, 54.345169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263180, 29.222906, 54.153069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203709, -0.442291, 0.873431,
		-0.835377, 0.543750, 0.080512,
		-0.510537, -0.713242, -0.480247,
		37.110020, 29.008934, 54.008995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933319, 29.362907, 54.797970>,  <37.467396, 29.508204, 54.345169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933319, 29.362907, 54.797970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934254, 29.044905, 54.555332>,  <36.934814, 28.854103, 54.409748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934254, 29.044905, 54.555332>,  <36.933319, 29.362907, 54.797970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934254, 29.044905, 54.555332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218343, -0.592365, 0.775520,
		-0.975870, 0.130635, -0.174967,
		0.002334, -0.795009, -0.606594,
		36.934956, 28.806402, 54.373356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277557, 28.988474, 54.923943>,  <36.933319, 29.362907, 54.797970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277557, 28.988474, 54.923943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553986, 28.748775, 54.762287>,  <36.719841, 28.604958, 54.665295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553986, 28.748775, 54.762287>,  <36.277557, 28.988474, 54.923943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553986, 28.748775, 54.762287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182111, -0.685460, 0.704968,
		-0.699479, -0.413576, -0.582825,
		0.691061, -0.599249, -0.404147,
		36.761307, 28.569002, 54.641045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392639, 28.310318, 55.175407>,  <36.277557, 28.988474, 54.923943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392639, 28.310318, 55.175407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135048, 28.197941, 54.890770>,  <35.980492, 28.130514, 54.719990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.135048, 28.197941, 54.890770>,  <36.392639, 28.310318, 55.175407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135048, 28.197941, 54.890770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710167, 0.126396, -0.692595,
		0.284524, -0.951364, 0.118121,
		-0.643979, -0.280945, -0.711590,
		35.941853, 28.113657, 54.677292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281895, 27.602480, 54.942490>,  <36.392639, 28.310318, 55.175407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281895, 27.602480, 54.942490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933727, 27.417725, 55.010635>,  <35.724827, 27.306871, 55.051521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933727, 27.417725, 55.010635>,  <36.281895, 27.602480, 54.942490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933727, 27.417725, 55.010635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456360, 0.627209, -0.631145,
		0.184666, -0.627110, -0.756725,
		-0.870422, -0.461890, 0.170364,
		35.672600, 27.279158, 55.061745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902519, 27.368593, 54.264481>,  <36.281895, 27.602480, 54.942490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902519, 27.368593, 54.264481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645939, 27.428812, 54.565380>,  <35.491989, 27.464943, 54.745918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645939, 27.428812, 54.565380>,  <35.902519, 27.368593, 54.264481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645939, 27.428812, 54.565380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443685, 0.727132, -0.523853,
		-0.625847, -0.669787, -0.399625,
		-0.641450, 0.150545, 0.752248,
		35.453503, 27.473976, 54.791054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234959, 27.421392, 53.929825>,  <35.902519, 27.368593, 54.264481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234959, 27.421392, 53.929825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187504, 27.600470, 54.284336>,  <35.159031, 27.707916, 54.497044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187504, 27.600470, 54.284336>,  <35.234959, 27.421392, 53.929825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187504, 27.600470, 54.284336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627737, 0.657762, -0.416288,
		-0.769332, -0.605741, 0.202996,
		-0.118640, 0.447691, 0.886283,
		35.151913, 27.734777, 54.550220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488522, 27.439396, 54.142075>,  <35.234959, 27.421392, 53.929825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488522, 27.439396, 54.142075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672131, 27.743280, 54.326309>,  <34.782295, 27.925611, 54.436852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672131, 27.743280, 54.326309>,  <34.488522, 27.439396, 54.142075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672131, 27.743280, 54.326309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715219, 0.623536, -0.315697,
		-0.527031, -0.184510, 0.829575,
		0.459021, 0.759710, 0.460588,
		34.809837, 27.971193, 54.464485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969913, 27.802483, 54.128536>,  <34.488522, 27.439396, 54.142075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969913, 27.802483, 54.128536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288876, 28.024759, 54.222649>,  <34.480251, 28.158125, 54.279114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.288876, 28.024759, 54.222649>,  <33.969913, 27.802483, 54.128536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288876, 28.024759, 54.222649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426697, 0.794918, -0.431317,
		-0.426706, 0.243541, 0.870982,
		0.797403, 0.555691, 0.235278,
		34.528095, 28.191467, 54.293232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686798, 28.496269, 54.277641>,  <33.969913, 27.802483, 54.128536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686798, 28.496269, 54.277641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072269, 28.554279, 54.187931>,  <34.303551, 28.589085, 54.134106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072269, 28.554279, 54.187931>,  <33.686798, 28.496269, 54.277641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072269, 28.554279, 54.187931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250568, 0.781588, -0.571258,
		0.092442, 0.606702, 0.789536,
		0.963675, 0.145024, -0.224272,
		34.361374, 28.597786, 54.120651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676281, 29.160629, 54.241241>,  <33.686798, 28.496269, 54.277641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676281, 29.160629, 54.241241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.997723, 29.056604, 54.027107>,  <34.190590, 28.994190, 53.898628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.997723, 29.056604, 54.027107>,  <33.676281, 29.160629, 54.241241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997723, 29.056604, 54.027107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171439, 0.760206, -0.626654,
		0.569932, 0.595362, 0.566324,
		0.803609, -0.260060, -0.535333,
		34.238804, 28.978586, 53.866508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920334, 29.759745, 54.034302>,  <33.676281, 29.160629, 54.241241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920334, 29.759745, 54.034302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099751, 29.494848, 53.794220>,  <34.207401, 29.335911, 53.650169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099751, 29.494848, 53.794220>,  <33.920334, 29.759745, 54.034302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099751, 29.494848, 53.794220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015411, 0.665718, -0.746044,
		0.893627, 0.343884, 0.288399,
		0.448545, -0.662241, -0.600203,
		34.234314, 29.296175, 53.614159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570534, 30.051743, 53.787750>,  <33.920334, 29.759745, 54.034302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570534, 30.051743, 53.787750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.494484, 29.756636, 53.528660>,  <34.448856, 29.579571, 53.373203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.494484, 29.756636, 53.528660>,  <34.570534, 30.051743, 53.787750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494484, 29.756636, 53.528660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004482, 0.660408, -0.750894,
		0.981750, -0.139859, -0.128864,
		-0.190122, -0.737767, -0.647729,
		34.437447, 29.535305, 53.334343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035236, 30.032585, 53.387016>,  <34.570534, 30.051743, 53.787750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035236, 30.032585, 53.387016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757248, 29.854528, 53.161144>,  <34.590454, 29.747694, 53.025620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757248, 29.854528, 53.161144>,  <35.035236, 30.032585, 53.387016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757248, 29.854528, 53.161144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068095, 0.741054, -0.667983,
		0.715802, -0.502683, -0.484703,
		-0.694975, -0.445138, -0.564678,
		34.548756, 29.720985, 52.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286781, 30.119595, 52.747768>,  <35.035236, 30.032585, 53.387016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286781, 30.119595, 52.747768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899811, 30.054413, 52.670280>,  <34.667629, 30.015303, 52.623787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899811, 30.054413, 52.670280>,  <35.286781, 30.119595, 52.747768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899811, 30.054413, 52.670280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073284, 0.552206, -0.830480,
		0.242306, -0.817627, -0.522278,
		-0.967428, -0.162955, -0.193722,
		34.609581, 30.005526, 52.612164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268372, 30.083735, 52.115429>,  <35.286781, 30.119595, 52.747768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268372, 30.083735, 52.115429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.872604, 30.123539, 52.157650>,  <34.635143, 30.147421, 52.182983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.872604, 30.123539, 52.157650>,  <35.268372, 30.083735, 52.115429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872604, 30.123539, 52.157650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037878, 0.525135, -0.850175,
		-0.140029, -0.845181, -0.515812,
		-0.989423, 0.099511, 0.105548,
		34.575779, 30.153393, 52.189316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902733, 29.787727, 51.554131>,  <35.268372, 30.083735, 52.115429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902733, 29.787727, 51.554131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667686, 30.070509, 51.711575>,  <34.526661, 30.240177, 51.806042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.667686, 30.070509, 51.711575>,  <34.902733, 29.787727, 51.554131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667686, 30.070509, 51.711575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159876, 0.375424, -0.912960,
		-0.793190, -0.599397, -0.107579,
		-0.587613, 0.706951, 0.393612,
		34.491402, 30.282595, 51.829659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532841, 29.981749, 50.920940>,  <34.902733, 29.787727, 51.554131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532841, 29.981749, 50.920940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.437962, 30.264095, 51.187920>,  <34.381035, 30.433504, 51.348106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.437962, 30.264095, 51.187920>,  <34.532841, 29.981749, 50.920940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437962, 30.264095, 51.187920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205682, 0.634991, -0.744635,
		-0.949439, -0.313906, -0.005432,
		-0.237195, 0.705868, 0.667450,
		34.366802, 30.475855, 51.388153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093307, 30.416082, 50.546497>,  <34.532841, 29.981749, 50.920940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093307, 30.416082, 50.546497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.217598, 30.635584, 50.856934>,  <34.292171, 30.767284, 51.043198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.217598, 30.635584, 50.856934>,  <34.093307, 30.416082, 50.546497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217598, 30.635584, 50.856934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037991, 0.823028, -0.566728,
		-0.949740, 0.146612, 0.276583,
		0.310725, 0.548752, 0.776093,
		34.310814, 30.800209, 51.089760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527912, 30.901379, 50.738167>,  <34.093307, 30.416082, 50.546497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527912, 30.901379, 50.738167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892941, 31.030289, 50.838848>,  <34.111958, 31.107634, 50.899258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892941, 31.030289, 50.838848>,  <33.527912, 30.901379, 50.738167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892941, 31.030289, 50.838848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075325, 0.737477, -0.671158,
		-0.401920, 0.593521, 0.697276,
		0.912571, 0.322274, 0.251700,
		34.166714, 31.126970, 50.914360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494621, 31.628551, 50.666023>,  <33.527912, 30.901379, 50.738167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494621, 31.628551, 50.666023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880928, 31.526634, 50.646500>,  <34.112713, 31.465485, 50.634785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880928, 31.526634, 50.646500>,  <33.494621, 31.628551, 50.666023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880928, 31.526634, 50.646500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168356, 0.758688, -0.629324,
		0.197380, 0.599560, 0.775609,
		0.965763, -0.254794, -0.048810,
		34.170658, 31.450195, 50.631855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829689, 32.265881, 50.533398>,  <33.494621, 31.628551, 50.666023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829689, 32.265881, 50.533398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091637, 31.978338, 50.440113>,  <34.248806, 31.805813, 50.384144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091637, 31.978338, 50.440113>,  <33.829689, 32.265881, 50.533398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091637, 31.978338, 50.440113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366291, 0.571828, -0.734059,
		0.661038, 0.395294, 0.637786,
		0.654873, -0.718857, -0.233208,
		34.288097, 31.762682, 50.370152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453144, 32.676929, 50.434658>,  <33.829689, 32.265881, 50.533398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453144, 32.676929, 50.434658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.496925, 32.326862, 50.246147>,  <34.523193, 32.116821, 50.133041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.496925, 32.326862, 50.246147>,  <34.453144, 32.676929, 50.434658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496925, 32.326862, 50.246147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248477, 0.483160, -0.839533,
		0.962434, -0.025213, 0.270341,
		0.109451, -0.875169, -0.471275,
		34.529762, 32.064312, 50.104763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113686, 32.618008, 50.294453>,  <34.453144, 32.676929, 50.434658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113686, 32.618008, 50.294453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923103, 32.398598, 50.019611>,  <34.808754, 32.266953, 49.854706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923103, 32.398598, 50.019611>,  <35.113686, 32.618008, 50.294453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923103, 32.398598, 50.019611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341614, 0.604603, -0.719552,
		0.810116, -0.577560, -0.100684,
		-0.476458, -0.548525, -0.687101,
		34.780167, 32.234039, 49.813480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480568, 32.724350, 49.636929>,  <35.113686, 32.618008, 50.294453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480568, 32.724350, 49.636929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150543, 32.551510, 49.491295>,  <34.952530, 32.447803, 49.403915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150543, 32.551510, 49.491295>,  <35.480568, 32.724350, 49.636929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150543, 32.551510, 49.491295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165210, 0.431708, -0.886755,
		0.540350, -0.791778, -0.284798,
		-0.825062, -0.432106, -0.364083,
		34.903023, 32.421879, 49.382069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.463005, 27.327501, 30.790257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.134254, 27.157703, 30.638298>,  <43.937004, 27.055824, 30.547123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.134254, 27.157703, 30.638298>,  <44.463005, 27.327501, 30.790257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134254, 27.157703, 30.638298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551864, 0.758708, 0.346134,
		0.141299, 0.494131, -0.857828,
		-0.821877, -0.424496, -0.379898,
		43.887691, 27.030355, 30.524328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121540, 27.806660, 30.344774>,  <44.463005, 27.327501, 30.790257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121540, 27.806660, 30.344774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835861, 27.547668, 30.451128>,  <43.664455, 27.392273, 30.514940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835861, 27.547668, 30.451128>,  <44.121540, 27.806660, 30.344774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835861, 27.547668, 30.451128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560430, 0.756553, 0.336967,
		-0.419333, 0.091653, -0.903194,
		-0.714198, -0.647478, 0.265882,
		43.621601, 27.353424, 30.530893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487217, 28.146482, 30.114439>,  <44.121540, 27.806660, 30.344774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487217, 28.146482, 30.114439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.381130, 27.869473, 30.382788>,  <43.317478, 27.703266, 30.543797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.381130, 27.869473, 30.382788>,  <43.487217, 28.146482, 30.114439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381130, 27.869473, 30.382788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576911, 0.671473, 0.465079,
		-0.772552, -0.263688, -0.577609,
		-0.265213, -0.692526, 0.670872,
		43.301567, 27.661715, 30.584049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800339, 28.323439, 30.202431>,  <43.487217, 28.146482, 30.114439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800339, 28.323439, 30.202431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912273, 28.094866, 30.511015>,  <42.979435, 27.957722, 30.696165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.912273, 28.094866, 30.511015>,  <42.800339, 28.323439, 30.202431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912273, 28.094866, 30.511015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366435, 0.679156, 0.635981,
		-0.887364, -0.460664, -0.019339,
		0.279839, -0.571433, 0.771462,
		42.996223, 27.923435, 30.742453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316082, 28.325001, 30.701998>,  <42.800339, 28.323439, 30.202431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316082, 28.325001, 30.701998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.635815, 28.219805, 30.918112>,  <42.827656, 28.156687, 31.047779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.635815, 28.219805, 30.918112>,  <42.316082, 28.325001, 30.701998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635815, 28.219805, 30.918112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244740, 0.678693, 0.692444,
		-0.548792, -0.685721, 0.478136,
		0.799331, -0.262989, 0.540284,
		42.875614, 28.140907, 31.080196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088699, 28.203148, 31.432133>,  <42.316082, 28.325001, 30.701998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088699, 28.203148, 31.432133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.476498, 28.292870, 31.471653>,  <42.709179, 28.346703, 31.495365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.476498, 28.292870, 31.471653>,  <42.088699, 28.203148, 31.432133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476498, 28.292870, 31.471653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232283, 0.712223, 0.662407,
		0.078212, -0.665152, 0.742601,
		0.969499, 0.224302, 0.098799,
		42.767345, 28.360161, 31.501293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309940, 28.151455, 32.097435>,  <42.088699, 28.203148, 31.432133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309940, 28.151455, 32.097435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615292, 28.374622, 31.967215>,  <42.798500, 28.508522, 31.889082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615292, 28.374622, 31.967215>,  <42.309940, 28.151455, 32.097435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615292, 28.374622, 31.967215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077487, 0.579441, 0.811322,
		0.641291, -0.594117, 0.485562,
		0.763375, 0.557918, -0.325555,
		42.844303, 28.541998, 31.869549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762249, 28.251297, 32.662018>,  <42.309940, 28.151455, 32.097435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762249, 28.251297, 32.662018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.826385, 28.561619, 32.417915>,  <42.864868, 28.747812, 32.271454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.826385, 28.561619, 32.417915>,  <42.762249, 28.251297, 32.662018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826385, 28.561619, 32.417915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175792, 0.630820, 0.755753,
		0.971282, -0.013900, 0.237526,
		0.160341, 0.775804, -0.610261,
		42.874489, 28.794359, 32.234837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206432, 28.723167, 33.065010>,  <42.762249, 28.251297, 32.662018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206432, 28.723167, 33.065010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.091518, 28.950333, 32.756481>,  <43.022572, 29.086632, 32.571362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.091518, 28.950333, 32.756481>,  <43.206432, 28.723167, 33.065010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091518, 28.950333, 32.756481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130412, 0.820963, 0.555889,
		0.948927, 0.059106, -0.309909,
		-0.287281, 0.567914, -0.771326,
		43.005333, 29.120707, 32.525082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602051, 29.318186, 33.112701>,  <43.206432, 28.723167, 33.065010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602051, 29.318186, 33.112701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282452, 29.405935, 32.888748>,  <43.090691, 29.458586, 32.754375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282452, 29.405935, 32.888748>,  <43.602051, 29.318186, 33.112701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282452, 29.405935, 32.888748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196036, 0.785185, 0.587413,
		0.568478, 0.579101, -0.584359,
		-0.799001, 0.219376, -0.559885,
		43.042751, 29.471748, 32.720783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724449, 30.018665, 32.967682>,  <43.602051, 29.318186, 33.112701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724449, 30.018665, 32.967682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336758, 29.940298, 32.908070>,  <43.104141, 29.893278, 32.872303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.336758, 29.940298, 32.908070>,  <43.724449, 30.018665, 32.967682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336758, 29.940298, 32.908070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245561, 0.811725, 0.529908,
		0.017158, 0.550200, -0.834857,
		-0.969229, -0.195916, -0.149035,
		43.045990, 29.881523, 32.863358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379379, 30.615513, 32.553841>,  <43.724449, 30.018665, 32.967682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379379, 30.615513, 32.553841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078766, 30.432737, 32.744167>,  <42.898399, 30.323072, 32.858364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.078766, 30.432737, 32.744167>,  <43.379379, 30.615513, 32.553841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078766, 30.432737, 32.744167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321594, 0.883528, 0.340521,
		-0.575998, 0.102892, -0.810950,
		-0.751534, -0.456937, 0.475821,
		42.853306, 30.295656, 32.886913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776295, 31.139324, 32.675594>,  <43.379379, 30.615513, 32.553841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776295, 31.139324, 32.675594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692951, 30.862953, 32.952492>,  <42.642944, 30.697130, 33.118629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.692951, 30.862953, 32.952492>,  <42.776295, 31.139324, 32.675594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692951, 30.862953, 32.952492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488220, 0.686769, 0.538506,
		-0.847482, -0.225764, -0.480421,
		-0.208363, -0.690926, 0.692247,
		42.630444, 30.655676, 33.160168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036343, 31.207747, 32.868263>,  <42.776295, 31.139324, 32.675594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036343, 31.207747, 32.868263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192921, 30.999792, 33.171970>,  <42.286869, 30.875019, 33.354195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.192921, 30.999792, 33.171970>,  <42.036343, 31.207747, 32.868263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192921, 30.999792, 33.171970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423219, 0.630951, 0.650220,
		-0.817102, -0.575863, 0.026957,
		0.391446, -0.519887, 0.759268,
		42.310356, 30.843826, 33.399750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510277, 31.078348, 33.442924>,  <42.036343, 31.207747, 32.868263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510277, 31.078348, 33.442924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.861420, 31.004581, 33.619724>,  <42.072105, 30.960321, 33.725803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.861420, 31.004581, 33.619724>,  <41.510277, 31.078348, 33.442924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861420, 31.004581, 33.619724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210013, 0.681195, 0.701333,
		-0.430424, -0.708494, 0.559260,
		0.877855, -0.184419, 0.441996,
		42.124775, 30.949255, 33.752323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339489, 31.033867, 34.173889>,  <41.510277, 31.078348, 33.442924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339489, 31.033867, 34.173889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733055, 31.104967, 34.166843>,  <41.969196, 31.147627, 34.162617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733055, 31.104967, 34.166843>,  <41.339489, 31.033867, 34.173889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733055, 31.104967, 34.166843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091889, 0.588240, 0.803449,
		0.153173, -0.788909, 0.595113,
		0.983918, 0.177751, -0.017610,
		42.028229, 31.158293, 34.161560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555149, 31.045122, 34.868549>,  <41.339489, 31.033867, 34.173889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555149, 31.045122, 34.868549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844921, 31.220770, 34.655991>,  <42.018784, 31.326159, 34.528454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844921, 31.220770, 34.655991>,  <41.555149, 31.045122, 34.868549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844921, 31.220770, 34.655991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050556, 0.734944, 0.676241,
		0.687491, -0.516755, 0.510216,
		0.724431, 0.439115, -0.531392,
		42.062248, 31.352505, 34.496571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904209, 31.393295, 35.379868>,  <41.555149, 31.045122, 34.868549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904209, 31.393295, 35.379868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.075104, 31.577868, 35.068855>,  <42.177639, 31.688610, 34.882248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.075104, 31.577868, 35.068855>,  <41.904209, 31.393295, 35.379868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075104, 31.577868, 35.068855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206156, 0.787598, 0.580680,
		0.880325, -0.408379, 0.241361,
		0.427233, 0.461429, -0.777532,
		42.203274, 31.716297, 34.835594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666439, 31.455849, 35.498371>,  <41.904209, 31.393295, 35.379868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666439, 31.455849, 35.498371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516998, 31.737675, 35.257038>,  <42.427334, 31.906771, 35.112240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516998, 31.737675, 35.257038>,  <42.666439, 31.455849, 35.498371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516998, 31.737675, 35.257038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119460, 0.681559, 0.721946,
		0.919864, 0.197648, -0.338800,
		-0.373604, 0.704565, -0.603331,
		42.404919, 31.949043, 35.076038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959366, 32.089550, 35.702789>,  <42.666439, 31.455849, 35.498371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959366, 32.089550, 35.702789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678730, 32.242191, 35.462074>,  <42.510349, 32.333778, 35.317646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678730, 32.242191, 35.462074>,  <42.959366, 32.089550, 35.702789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678730, 32.242191, 35.462074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132616, 0.759842, 0.636438,
		0.700136, 0.526323, -0.482487,
		-0.701586, 0.381607, -0.601792,
		42.468254, 32.356674, 35.281536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168701, 32.711029, 35.458149>,  <42.959366, 32.089550, 35.702789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168701, 32.711029, 35.458149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769226, 32.697914, 35.473850>,  <42.529541, 32.690044, 35.483273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.769226, 32.697914, 35.473850>,  <43.168701, 32.711029, 35.458149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769226, 32.697914, 35.473850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004363, 0.710054, 0.704134,
		-0.050960, 0.703383, -0.708981,
		-0.998691, -0.032790, 0.039253,
		42.469620, 32.688076, 35.485626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779110, 33.191525, 35.371799>,  <43.168701, 32.711029, 35.458149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779110, 33.191525, 35.371799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130829, 33.373779, 35.316338>,  <44.341862, 33.483131, 35.283062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.130829, 33.373779, 35.316338>,  <43.779110, 33.191525, 35.371799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.130829, 33.373779, 35.316338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349932, -0.815561, -0.460878,
		-0.323074, 0.356731, -0.876565,
		0.879301, 0.455636, -0.138655,
		44.394619, 33.510471, 35.274742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905014, 33.206676, 34.639690>,  <43.779110, 33.191525, 35.371799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905014, 33.206676, 34.639690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263569, 33.293873, 34.794075>,  <44.478703, 33.346191, 34.886707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.263569, 33.293873, 34.794075>,  <43.905014, 33.206676, 34.639690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263569, 33.293873, 34.794075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407555, -0.747719, -0.524229,
		0.174312, 0.627213, -0.759091,
		0.896389, 0.217992, 0.385960,
		44.532486, 33.359272, 34.909863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.312500, 33.301476, 34.049320>,  <43.905014, 33.206676, 34.639690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.312500, 33.301476, 34.049320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.528172, 33.192329, 34.368027>,  <44.657574, 33.126842, 34.559250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.528172, 33.192329, 34.368027>,  <44.312500, 33.301476, 34.049320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528172, 33.192329, 34.368027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386728, -0.760203, -0.522046,
		0.748151, 0.589606, -0.304360,
		0.539178, -0.272865, 0.796764,
		44.689926, 33.110470, 34.607056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933723, 32.945705, 33.770638>,  <44.312500, 33.301476, 34.049320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933723, 32.945705, 33.770638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948586, 32.803917, 34.144371>,  <44.957504, 32.718845, 34.368610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.948586, 32.803917, 34.144371>,  <44.933723, 32.945705, 33.770638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948586, 32.803917, 34.144371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583642, -0.751241, -0.308219,
		0.811161, 0.556767, 0.178968,
		0.037158, -0.354469, 0.934329,
		44.959732, 32.697575, 34.424671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.592251, 32.804699, 33.792042>,  <44.933723, 32.945705, 33.770638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.592251, 32.804699, 33.792042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414104, 32.605690, 34.089798>,  <45.307217, 32.486286, 34.268452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.414104, 32.605690, 34.089798>,  <45.592251, 32.804699, 33.792042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414104, 32.605690, 34.089798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422974, -0.849689, -0.314836,
		0.789140, 0.174641, 0.588863,
		-0.445367, -0.497524, 0.744392,
		45.280495, 32.456432, 34.313114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.129726, 32.404774, 34.239571>,  <45.592251, 32.804699, 33.792042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.129726, 32.404774, 34.239571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.773361, 32.224869, 34.264843>,  <45.559544, 32.116928, 34.280006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.773361, 32.224869, 34.264843>,  <46.129726, 32.404774, 34.239571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773361, 32.224869, 34.264843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379773, -0.814017, -0.439487,
		0.249096, -0.367549, 0.896024,
		-0.890912, -0.449761, 0.063183,
		45.506088, 32.089939, 34.283798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336826, 31.759998, 34.372364>,  <46.129726, 32.404774, 34.239571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336826, 31.759998, 34.372364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951401, 31.718100, 34.273922>,  <45.720146, 31.692961, 34.214855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951401, 31.718100, 34.273922>,  <46.336826, 31.759998, 34.372364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951401, 31.718100, 34.273922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226058, -0.810736, -0.540004,
		-0.142963, -0.575964, 0.804877,
		-0.963566, -0.104748, -0.246106,
		45.662331, 31.686676, 34.200089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199150, 30.994293, 34.469662>,  <46.336826, 31.759998, 34.372364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.199150, 30.994293, 34.469662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921463, 31.140926, 34.221893>,  <45.754852, 31.228907, 34.073231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.921463, 31.140926, 34.221893>,  <46.199150, 30.994293, 34.469662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921463, 31.140926, 34.221893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011847, -0.854649, -0.519071,
		-0.719667, -0.367686, 0.588970,
		-0.694218, 0.366581, -0.619419,
		45.713200, 31.250900, 34.036068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888248, 30.478302, 34.308743>,  <46.199150, 30.994293, 34.469662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888248, 30.478302, 34.308743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755081, 30.696081, 34.000782>,  <45.675182, 30.826750, 33.816006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.755081, 30.696081, 34.000782>,  <45.888248, 30.478302, 34.308743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755081, 30.696081, 34.000782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070596, -0.799789, -0.596116,
		-0.940310, -0.252809, 0.227827,
		-0.332917, 0.544450, -0.769897,
		45.655205, 30.859417, 33.769814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422352, 30.186821, 34.076324>,  <45.888248, 30.478302, 34.308743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422352, 30.186821, 34.076324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537498, 30.404745, 33.761284>,  <45.606586, 30.535500, 33.572258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537498, 30.404745, 33.761284>,  <45.422352, 30.186821, 34.076324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537498, 30.404745, 33.761284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039859, -0.814886, -0.578249,
		-0.956842, 0.197850, -0.212861,
		0.287864, 0.544809, -0.787603,
		45.623859, 30.568188, 33.525002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943317, 30.081396, 33.536186>,  <45.422352, 30.186821, 34.076324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943317, 30.081396, 33.536186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.267040, 30.222803, 33.348553>,  <45.461273, 30.307648, 33.235973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.267040, 30.222803, 33.348553>,  <44.943317, 30.081396, 33.536186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.267040, 30.222803, 33.348553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038522, -0.828832, -0.558170,
		-0.586117, 0.433663, -0.684400,
		0.809310, 0.353517, -0.469086,
		45.509834, 30.328857, 33.207829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884819, 29.966736, 32.817699>,  <44.943317, 30.081396, 33.536186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884819, 29.966736, 32.817699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275944, 30.023153, 32.879665>,  <45.510616, 30.057003, 32.916843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.275944, 30.023153, 32.879665>,  <44.884819, 29.966736, 32.817699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275944, 30.023153, 32.879665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207873, -0.745210, -0.633601,
		0.026078, 0.651743, -0.757992,
		0.977808, 0.141043, 0.154913,
		45.569286, 30.065466, 32.926140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125961, 29.980125, 32.146057>,  <44.884819, 29.966736, 32.817699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125961, 29.980125, 32.146057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.449291, 29.901917, 32.368187>,  <45.643288, 29.854992, 32.501465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.449291, 29.901917, 32.368187>,  <45.125961, 29.980125, 32.146057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449291, 29.901917, 32.368187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289061, -0.689928, -0.663659,
		0.512895, 0.696973, -0.501166,
		0.808321, -0.195520, 0.555328,
		45.691788, 29.843260, 32.534786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705536, 30.060293, 31.724054>,  <45.125961, 29.980125, 32.146057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705536, 30.060293, 31.724054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827171, 29.834961, 32.031349>,  <45.900154, 29.699762, 32.215725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.827171, 29.834961, 32.031349>,  <45.705536, 30.060293, 31.724054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827171, 29.834961, 32.031349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489588, -0.599368, -0.633294,
		0.817211, 0.568698, 0.093537,
		0.304090, -0.563329, 0.768238,
		45.918400, 29.665962, 32.261822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.515171, 30.095900, 31.747629>,  <45.705536, 30.060293, 31.724054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.515171, 30.095900, 31.747629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.375916, 29.759956, 31.914211>,  <46.292362, 29.558390, 32.014160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.375916, 29.759956, 31.914211>,  <46.515171, 30.095900, 31.747629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375916, 29.759956, 31.914211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564705, -0.542483, -0.621949,
		0.748269, 0.018648, 0.663133,
		-0.348140, -0.839860, 0.416454,
		46.271473, 29.507999, 32.039146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062836, 29.633101, 31.622963>,  <46.515171, 30.095900, 31.747629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062836, 29.633101, 31.622963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.754349, 29.398987, 31.723095>,  <46.569256, 29.258518, 31.783175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.754349, 29.398987, 31.723095>,  <47.062836, 29.633101, 31.622963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754349, 29.398987, 31.723095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272592, -0.659010, -0.700999,
		0.575256, -0.472383, 0.667783,
		-0.771216, -0.585286, 0.250331,
		46.522984, 29.223400, 31.798195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.389248, 29.014616, 31.697701>,  <47.062836, 29.633101, 31.622963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.389248, 29.014616, 31.697701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.017406, 28.868639, 31.677107>,  <46.794300, 28.781054, 31.664751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.017406, 28.868639, 31.677107>,  <47.389248, 29.014616, 31.697701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.017406, 28.868639, 31.677107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340021, -0.795330, -0.501832,
		0.142192, -0.484012, 0.863431,
		-0.929606, -0.364942, -0.051484,
		46.738525, 28.759157, 31.661661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474609, 28.230360, 31.695120>,  <47.389248, 29.014616, 31.697701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474609, 28.230360, 31.695120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.103256, 28.299313, 31.563433>,  <46.880444, 28.340685, 31.484421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.103256, 28.299313, 31.563433>,  <47.474609, 28.230360, 31.695120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.103256, 28.299313, 31.563433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140626, -0.657062, -0.740604,
		-0.343984, -0.733862, 0.585765,
		-0.928385, 0.172382, -0.329219,
		46.824741, 28.351027, 31.464666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.235817, 27.538952, 31.607603>,  <47.474609, 28.230360, 31.695120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.235817, 27.538952, 31.607603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.002464, 27.780340, 31.390169>,  <46.862453, 27.925173, 31.259708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.002464, 27.780340, 31.390169>,  <47.235817, 27.538952, 31.607603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.002464, 27.780340, 31.390169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199987, -0.541943, -0.816274,
		-0.787191, -0.584911, 0.195473,
		-0.583383, 0.603472, -0.543587,
		46.827450, 27.961382, 31.227093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670029, 27.190781, 31.270685>,  <47.235817, 27.538952, 31.607603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670029, 27.190781, 31.270685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.741234, 27.510420, 31.040989>,  <46.783958, 27.702204, 30.903172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.741234, 27.510420, 31.040989>,  <46.670029, 27.190781, 31.270685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.741234, 27.510420, 31.040989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074795, -0.592862, -0.801823,
		-0.981182, 0.099784, -0.165305,
		0.178012, 0.799098, -0.574242,
		46.794636, 27.750149, 30.868717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204826, 27.080481, 30.730783>,  <46.670029, 27.190781, 31.270685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204826, 27.080481, 30.730783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.459381, 27.354668, 30.589281>,  <46.612114, 27.519180, 30.504379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.459381, 27.354668, 30.589281>,  <46.204826, 27.080481, 30.730783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459381, 27.354668, 30.589281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064172, -0.409974, -0.909837,
		-0.768696, 0.601710, -0.216914,
		0.636387, 0.685468, -0.353758,
		46.650299, 27.560308, 30.483154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.458549, 33.551414, 45.945816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160614, 33.383320, 45.738503>,  <38.981853, 33.282463, 45.614113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160614, 33.383320, 45.738503>,  <39.458549, 33.551414, 45.945816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160614, 33.383320, 45.738503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582317, -0.030160, -0.812402,
		0.325770, -0.906913, 0.267176,
		-0.744836, -0.420238, -0.518286,
		38.937164, 33.257248, 45.583015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828232, 33.195431, 45.435921>,  <39.458549, 33.551414, 45.945816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828232, 33.195431, 45.435921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458401, 33.186504, 45.283787>,  <39.236504, 33.181149, 45.192505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458401, 33.186504, 45.283787>,  <39.828232, 33.195431, 45.435921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458401, 33.186504, 45.283787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380897, -0.076467, -0.921450,
		-0.008521, -0.996822, 0.079199,
		-0.924578, -0.022315, -0.380339,
		39.181026, 33.179810, 45.169685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810936, 32.603455, 44.963516>,  <39.828232, 33.195431, 45.435921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810936, 32.603455, 44.963516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565464, 32.906574, 44.874847>,  <39.418182, 33.088448, 44.821648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565464, 32.906574, 44.874847>,  <39.810936, 32.603455, 44.963516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565464, 32.906574, 44.874847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457839, 0.112804, -0.881850,
		-0.643261, -0.642660, -0.416176,
		-0.613676, 0.757802, -0.221673,
		39.381363, 33.133915, 44.808346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452568, 32.444145, 44.324802>,  <39.810936, 32.603455, 44.963516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452568, 32.444145, 44.324802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408173, 32.840984, 44.348202>,  <39.381535, 33.079086, 44.362244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408173, 32.840984, 44.348202>,  <39.452568, 32.444145, 44.324802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408173, 32.840984, 44.348202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295009, 0.089101, -0.951331,
		-0.949027, -0.088324, -0.302566,
		-0.110985, 0.992099, 0.058503,
		39.374878, 33.138615, 44.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188007, 32.621853, 43.678516>,  <39.452568, 32.444145, 44.324802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188007, 32.621853, 43.678516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311810, 32.974789, 43.820328>,  <39.386089, 33.186550, 43.905415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311810, 32.974789, 43.820328>,  <39.188007, 32.621853, 43.678516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311810, 32.974789, 43.820328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059394, 0.354173, -0.933292,
		-0.949042, 0.309913, 0.057212,
		0.309502, 0.882335, 0.354532,
		39.404659, 33.239491, 43.926689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701653, 33.082951, 43.380016>,  <39.188007, 32.621853, 43.678516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.701653, 33.082951, 43.380016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022057, 33.296062, 43.489212>,  <39.214298, 33.423927, 43.554729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022057, 33.296062, 43.489212>,  <38.701653, 33.082951, 43.380016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022057, 33.296062, 43.489212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056186, 0.387096, -0.920326,
		-0.596004, 0.752532, 0.280134,
		0.801014, 0.532778, 0.272993,
		39.262360, 33.455894, 43.571110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528133, 33.815922, 43.181000>,  <38.701653, 33.082951, 43.380016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528133, 33.815922, 43.181000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924278, 33.771591, 43.214222>,  <39.161964, 33.744991, 43.234154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924278, 33.771591, 43.214222>,  <38.528133, 33.815922, 43.181000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924278, 33.771591, 43.214222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118585, 0.368791, -0.921917,
		0.071543, 0.922882, 0.378379,
		0.990363, -0.110827, 0.083055,
		39.221386, 33.738342, 43.239140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807468, 34.399723, 42.880726>,  <38.528133, 33.815922, 43.181000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807468, 34.399723, 42.880726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105316, 34.132839, 42.888447>,  <39.284027, 33.972710, 42.893078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105316, 34.132839, 42.888447>,  <38.807468, 34.399723, 42.880726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105316, 34.132839, 42.888447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206709, 0.203006, -0.957110,
		0.634673, 0.716674, 0.289081,
		0.744621, -0.667208, 0.019301,
		39.328701, 33.932678, 42.894238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343529, 34.689640, 42.548252>,  <38.807468, 34.399723, 42.880726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343529, 34.689640, 42.548252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406937, 34.295242, 42.527534>,  <39.444981, 34.058605, 42.515102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406937, 34.295242, 42.527534>,  <39.343529, 34.689640, 42.548252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406937, 34.295242, 42.527534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339797, 0.103732, -0.934761,
		0.927043, 0.130583, 0.351482,
		0.158524, -0.985996, -0.051793,
		39.454494, 33.999443, 42.511997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907372, 34.630932, 42.072567>,  <39.343529, 34.689640, 42.548252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907372, 34.630932, 42.072567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789509, 34.251549, 42.119236>,  <39.718792, 34.023918, 42.147240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789509, 34.251549, 42.119236>,  <39.907372, 34.630932, 42.072567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789509, 34.251549, 42.119236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122805, -0.158668, -0.979665,
		0.947680, -0.274333, 0.163227,
		-0.294654, -0.948454, 0.116677,
		39.701111, 33.967014, 42.154240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357616, 34.296719, 41.638596>,  <39.907372, 34.630932, 42.072567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357616, 34.296719, 41.638596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022327, 34.082535, 41.679901>,  <39.821152, 33.954025, 41.704685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022327, 34.082535, 41.679901>,  <40.357616, 34.296719, 41.638596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022327, 34.082535, 41.679901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013865, -0.210219, -0.977556,
		0.545148, -0.817980, 0.183635,
		-0.838225, -0.535459, 0.103259,
		39.770859, 33.921898, 41.710880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560764, 33.651806, 41.329685>,  <40.357616, 34.296719, 41.638596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560764, 33.651806, 41.329685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162235, 33.679672, 41.349632>,  <39.923119, 33.696392, 41.361599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162235, 33.679672, 41.349632>,  <40.560764, 33.651806, 41.329685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162235, 33.679672, 41.349632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057015, -0.104752, -0.992863,
		-0.063946, -0.992055, 0.108339,
		-0.996323, 0.069667, 0.049863,
		39.863338, 33.700573, 41.364590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213886, 33.133720, 40.979824>,  <40.560764, 33.651806, 41.329685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213886, 33.133720, 40.979824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945385, 33.429935, 40.992596>,  <39.784283, 33.607666, 41.000259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945385, 33.429935, 40.992596>,  <40.213886, 33.133720, 40.979824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945385, 33.429935, 40.992596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073502, -0.023635, -0.997015,
		-0.737572, -0.671599, 0.070296,
		-0.671256, 0.740537, 0.031932,
		39.744007, 33.652096, 41.002174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558662, 32.986076, 40.516502>,  <40.213886, 33.133720, 40.979824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558662, 32.986076, 40.516502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607113, 33.382607, 40.536877>,  <39.636185, 33.620525, 40.549099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607113, 33.382607, 40.536877>,  <39.558662, 32.986076, 40.516502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607113, 33.382607, 40.536877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022823, 0.054078, -0.998276,
		-0.992375, 0.119754, 0.029176,
		0.121125, 0.991330, 0.050933,
		39.643452, 33.680004, 40.552158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141037, 33.296425, 40.032925>,  <39.558662, 32.986076, 40.516502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141037, 33.296425, 40.032925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414410, 33.578419, 40.108723>,  <39.578434, 33.747616, 40.154202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414410, 33.578419, 40.108723>,  <39.141037, 33.296425, 40.032925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414410, 33.578419, 40.108723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228972, 0.039470, -0.972633,
		-0.693175, 0.708119, -0.134447,
		0.683433, 0.704989, 0.189499,
		39.619438, 33.789917, 40.165573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425102, 33.006123, 39.255543>,  <39.141037, 33.296425, 40.032925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425102, 33.006123, 39.255543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640900, 32.670277, 39.280807>,  <39.770378, 32.468769, 39.295967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640900, 32.670277, 39.280807>,  <39.425102, 33.006123, 39.255543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640900, 32.670277, 39.280807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586798, -0.321128, 0.743334,
		-0.603830, -0.438091, -0.665932,
		0.539497, -0.839615, 0.063165,
		39.802750, 32.418392, 39.299755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981857, 32.492729, 39.259384>,  <39.425102, 33.006123, 39.255543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981857, 32.492729, 39.259384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306290, 32.306446, 39.400951>,  <39.500950, 32.194675, 39.485889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306290, 32.306446, 39.400951>,  <38.981857, 32.492729, 39.259384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306290, 32.306446, 39.400951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578071, -0.545803, 0.606575,
		-0.089320, -0.696571, -0.711906,
		0.811083, -0.465712, 0.353916,
		39.549614, 32.166733, 39.507126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794239, 31.766161, 39.474491>,  <38.981857, 32.492729, 39.259384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794239, 31.766161, 39.474491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128475, 31.827789, 39.685413>,  <39.329018, 31.864767, 39.811966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128475, 31.827789, 39.685413>,  <38.794239, 31.766161, 39.474491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128475, 31.827789, 39.685413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422892, -0.432260, 0.796438,
		0.350642, -0.888489, -0.296036,
		0.835591, 0.154073, 0.527303,
		39.379154, 31.874012, 39.843605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926468, 31.193247, 39.753353>,  <38.794239, 31.766161, 39.474491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926468, 31.193247, 39.753353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182941, 31.386234, 39.992054>,  <39.336826, 31.502028, 40.135273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182941, 31.386234, 39.992054>,  <38.926468, 31.193247, 39.753353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182941, 31.386234, 39.992054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277465, -0.579271, 0.766459,
		0.715474, -0.657015, -0.237548,
		0.641179, 0.482470, 0.596752,
		39.375294, 31.530975, 40.171078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474289, 30.647833, 40.037048>,  <38.926468, 31.193247, 39.753353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474289, 30.647833, 40.037048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426842, 30.982788, 40.250481>,  <39.398373, 31.183762, 40.378540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426842, 30.982788, 40.250481>,  <39.474289, 30.647833, 40.037048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426842, 30.982788, 40.250481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254110, -0.545083, 0.798945,
		0.959874, -0.040824, 0.277443,
		-0.118614, 0.837388, 0.533585,
		39.391258, 31.234005, 40.410557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804344, 30.573486, 40.670746>,  <39.474289, 30.647833, 40.037048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804344, 30.573486, 40.670746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549133, 30.869783, 40.754864>,  <39.396008, 31.047562, 40.805336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549133, 30.869783, 40.754864>,  <39.804344, 30.573486, 40.670746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549133, 30.869783, 40.754864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178232, -0.407761, 0.895525,
		0.749103, 0.533887, 0.392186,
		-0.638027, 0.740740, 0.210299,
		39.357727, 31.092005, 40.817955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835960, 30.509628, 41.388737>,  <39.804344, 30.573486, 40.670746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835960, 30.509628, 41.388737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531490, 30.758282, 41.314777>,  <39.348808, 30.907473, 41.270401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531490, 30.758282, 41.314777>,  <39.835960, 30.509628, 41.388737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531490, 30.758282, 41.314777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430763, -0.271464, 0.860668,
		0.484826, 0.734766, 0.474408,
		-0.761174, 0.621632, -0.184897,
		39.303139, 30.944771, 41.259308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821178, 30.904612, 42.023949>,  <39.835960, 30.509628, 41.388737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821178, 30.904612, 42.023949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460224, 30.943336, 41.855984>,  <39.243652, 30.966572, 41.755203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460224, 30.943336, 41.855984>,  <39.821178, 30.904612, 42.023949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460224, 30.943336, 41.855984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427860, -0.085176, 0.899823,
		0.051346, 0.991651, 0.118283,
		-0.902385, 0.096811, -0.419915,
		39.189510, 30.972380, 41.730011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540367, 31.280458, 42.491932>,  <39.821178, 30.904612, 42.023949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540367, 31.280458, 42.491932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261013, 31.094322, 42.274410>,  <39.093403, 30.982641, 42.143898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261013, 31.094322, 42.274410>,  <39.540367, 31.280458, 42.491932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261013, 31.094322, 42.274410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474033, -0.268528, 0.838561,
		-0.536243, 0.843416, -0.033052,
		-0.698381, -0.465340, -0.543803,
		39.051498, 30.954720, 42.111271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959778, 31.469778, 42.906376>,  <39.540367, 31.280458, 42.491932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959778, 31.469778, 42.906376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869381, 31.149992, 42.683743>,  <38.815144, 30.958120, 42.550163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869381, 31.149992, 42.683743>,  <38.959778, 31.469778, 42.906376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869381, 31.149992, 42.683743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492103, -0.399405, 0.773505,
		-0.840692, 0.448700, -0.303157,
		-0.225989, -0.799464, -0.556583,
		38.801582, 30.910152, 42.516766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234150, 31.379755, 43.004566>,  <38.959778, 31.469778, 42.906376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234150, 31.379755, 43.004566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387451, 31.025932, 42.898228>,  <38.479431, 30.813639, 42.834423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387451, 31.025932, 42.898228>,  <38.234150, 31.379755, 43.004566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387451, 31.025932, 42.898228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609297, -0.458437, 0.646987,
		-0.694172, -0.085978, -0.714656,
		0.383251, -0.884558, -0.265848,
		38.502426, 30.760565, 42.818474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705833, 31.016109, 43.035221>,  <38.234150, 31.379755, 43.004566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705833, 31.016109, 43.035221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006519, 30.752804, 43.051300>,  <38.186932, 30.594820, 43.060947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006519, 30.752804, 43.051300>,  <37.705833, 31.016109, 43.035221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006519, 30.752804, 43.051300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462989, -0.483348, 0.742977,
		-0.469626, -0.577134, -0.668108,
		0.751726, -0.658248, 0.040214,
		38.232033, 30.555325, 43.063358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296627, 30.442122, 43.166149>,  <37.705833, 31.016109, 43.035221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296627, 30.442122, 43.166149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673397, 30.377039, 43.283653>,  <37.899460, 30.337990, 43.354156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673397, 30.377039, 43.283653>,  <37.296627, 30.442122, 43.166149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673397, 30.377039, 43.283653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334272, -0.538017, 0.773822,
		0.032146, -0.827082, -0.561161,
		0.941929, -0.162705, 0.293765,
		37.955975, 30.328228, 43.371784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070690, 29.805826, 42.731346>,  <37.296627, 30.442122, 43.166149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070690, 29.805826, 42.731346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685768, 29.719774, 42.664776>,  <36.454815, 29.668144, 42.624836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685768, 29.719774, 42.664776>,  <37.070690, 29.805826, 42.731346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685768, 29.719774, 42.664776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061944, 0.422449, -0.904268,
		0.264839, -0.880486, -0.393197,
		-0.962301, -0.215129, -0.166422,
		36.397079, 29.655235, 42.614849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095192, 29.713928, 41.979431>,  <37.070690, 29.805826, 42.731346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095192, 29.713928, 41.979431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705875, 29.737585, 42.068169>,  <36.472286, 29.751780, 42.121410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705875, 29.737585, 42.068169>,  <37.095192, 29.713928, 41.979431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705875, 29.737585, 42.068169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164879, 0.492365, -0.854629,
		-0.159774, -0.868377, -0.469461,
		-0.973287, 0.059143, 0.221844,
		36.413891, 29.755327, 42.134724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686546, 29.396162, 41.433243>,  <37.095192, 29.713928, 41.979431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686546, 29.396162, 41.433243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431038, 29.653919, 41.601398>,  <36.277733, 29.808575, 41.702293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431038, 29.653919, 41.601398>,  <36.686546, 29.396162, 41.433243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431038, 29.653919, 41.601398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084193, 0.484567, -0.870693,
		-0.764777, -0.591567, -0.255273,
		-0.638770, 0.644394, 0.420391,
		36.239407, 29.847237, 41.727516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066620, 29.422956, 40.953629>,  <36.686546, 29.396162, 41.433243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066620, 29.422956, 40.953629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034634, 29.753683, 41.176331>,  <36.015442, 29.952120, 41.309952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034634, 29.753683, 41.176331>,  <36.066620, 29.422956, 40.953629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034634, 29.753683, 41.176331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273418, 0.518929, -0.809910,
		-0.958565, -0.216996, 0.184568,
		-0.079970, 0.826816, 0.556758,
		36.010643, 30.001728, 41.343357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444988, 29.620724, 40.773987>,  <36.066620, 29.422956, 40.953629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444988, 29.620724, 40.773987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642784, 29.944254, 40.901287>,  <35.761463, 30.138372, 40.977665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642784, 29.944254, 40.901287>,  <35.444988, 29.620724, 40.773987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642784, 29.944254, 40.901287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126180, 0.429067, -0.894416,
		-0.859975, 0.402125, 0.314227,
		0.494491, 0.808825, 0.318247,
		35.791130, 30.186901, 40.996761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035999, 30.130375, 40.600784>,  <35.444988, 29.620724, 40.773987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035999, 30.130375, 40.600784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377953, 30.332476, 40.647938>,  <35.583126, 30.453735, 40.676228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377953, 30.332476, 40.647938>,  <35.035999, 30.130375, 40.600784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377953, 30.332476, 40.647938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204216, 0.536565, -0.818776,
		-0.476938, 0.675885, 0.561881,
		0.854884, 0.505250, 0.117882,
		35.634418, 30.484051, 40.683304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884434, 30.827255, 40.528069>,  <35.035999, 30.130375, 40.600784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884434, 30.827255, 40.528069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277344, 30.824318, 40.453140>,  <35.513088, 30.822556, 40.408184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277344, 30.824318, 40.453140>,  <34.884434, 30.827255, 40.528069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277344, 30.824318, 40.453140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156349, 0.519243, -0.840204,
		0.103434, 0.854595, 0.508889,
		0.982271, -0.007342, -0.187322,
		35.572025, 30.822115, 40.396942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218468, 31.503187, 40.548527>,  <34.884434, 30.827255, 40.528069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218468, 31.503187, 40.548527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478470, 31.280237, 40.341908>,  <35.634472, 31.146467, 40.217934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478470, 31.280237, 40.341908>,  <35.218468, 31.503187, 40.548527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478470, 31.280237, 40.341908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143025, 0.757316, -0.637193,
		0.746349, 0.340300, 0.571979,
		0.650006, -0.557376, -0.516551,
		35.673473, 31.113024, 40.186943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738331, 31.938932, 40.334850>,  <35.218468, 31.503187, 40.548527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738331, 31.938932, 40.334850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803848, 31.628260, 40.091560>,  <35.843159, 31.441856, 39.945587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803848, 31.628260, 40.091560>,  <35.738331, 31.938932, 40.334850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803848, 31.628260, 40.091560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012539, 0.618140, -0.785968,
		0.986415, 0.121110, 0.110986,
		0.163793, -0.776682, -0.608224,
		35.852985, 31.395254, 39.909092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356907, 32.045433, 39.925522>,  <35.738331, 31.938932, 40.334850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356907, 32.045433, 39.925522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117863, 31.800768, 39.718166>,  <35.974438, 31.653967, 39.593754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117863, 31.800768, 39.718166>,  <36.356907, 32.045433, 39.925522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117863, 31.800768, 39.718166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105348, 0.581033, -0.807033,
		0.794837, -0.536901, -0.282792,
		-0.597609, -0.611668, -0.518387,
		35.938580, 31.617268, 39.562649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675522, 31.982752, 39.329025>,  <36.356907, 32.045433, 39.925522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675522, 31.982752, 39.329025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288425, 31.897873, 39.274689>,  <36.056168, 31.846947, 39.242085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288425, 31.897873, 39.274689>,  <36.675522, 31.982752, 39.329025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288425, 31.897873, 39.274689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033396, 0.642436, -0.765611,
		0.249731, -0.736375, -0.628797,
		-0.967739, -0.212196, -0.135845,
		35.998104, 31.834213, 39.233936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450943, 31.637014, 38.655453>,  <36.675522, 31.982752, 39.329025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450943, 31.637014, 38.655453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182629, 31.895071, 38.801788>,  <36.021641, 32.049904, 38.889591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182629, 31.895071, 38.801788>,  <36.450943, 31.637014, 38.655453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182629, 31.895071, 38.801788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074339, 0.549280, -0.832325,
		-0.737918, -0.531113, -0.416407,
		-0.670783, 0.645144, 0.365841,
		35.981392, 32.088615, 38.911541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.818520, 27.646646, 45.838936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434963, 27.757795, 45.815872>,  <36.204830, 27.824484, 45.802036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434963, 27.757795, 45.815872>,  <36.818520, 27.646646, 45.838936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434963, 27.757795, 45.815872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106697, 0.164743, -0.980549,
		-0.262967, -0.946387, -0.187617,
		-0.958887, 0.277870, -0.057655,
		36.147297, 27.841156, 45.798576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579456, 27.301830, 45.234795>,  <36.818520, 27.646646, 45.838936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579456, 27.301830, 45.234795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.327843, 27.607531, 45.291695>,  <36.176872, 27.790951, 45.325836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.327843, 27.607531, 45.291695>,  <36.579456, 27.301830, 45.234795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327843, 27.607531, 45.291695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046240, 0.145878, -0.988221,
		-0.775999, -0.628205, -0.056423,
		-0.629037, 0.764250, 0.142250,
		36.139133, 27.836805, 45.334370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978069, 27.284498, 44.672173>,  <36.579456, 27.301830, 45.234795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978069, 27.284498, 44.672173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010921, 27.655577, 44.817844>,  <36.030632, 27.878223, 44.905247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010921, 27.655577, 44.817844>,  <35.978069, 27.284498, 44.672173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010921, 27.655577, 44.817844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086587, 0.370679, -0.924716,
		-0.992853, 0.044417, 0.110772,
		0.082134, 0.927698, 0.364184,
		36.035561, 27.933886, 44.927101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651196, 27.618309, 44.252285>,  <35.978069, 27.284498, 44.672173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651196, 27.618309, 44.252285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.841812, 27.931482, 44.412247>,  <35.956181, 28.119387, 44.508224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.841812, 27.931482, 44.412247>,  <35.651196, 27.618309, 44.252285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841812, 27.931482, 44.412247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140872, 0.517002, -0.844313,
		-0.867794, 0.346011, 0.356665,
		0.476538, 0.782934, 0.399908,
		35.984772, 28.166363, 44.532219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235096, 28.164211, 44.012123>,  <35.651196, 27.618309, 44.252285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235096, 28.164211, 44.012123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.586914, 28.314337, 44.129108>,  <35.798004, 28.404411, 44.199299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.586914, 28.314337, 44.129108>,  <35.235096, 28.164211, 44.012123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586914, 28.314337, 44.129108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010286, 0.599522, -0.800293,
		-0.475699, 0.706904, 0.523447,
		0.879548, 0.375314, 0.292464,
		35.850777, 28.426931, 44.216846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109135, 28.896280, 44.029041>,  <35.235096, 28.164211, 44.012123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109135, 28.896280, 44.029041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501816, 28.832285, 43.987747>,  <35.737427, 28.793888, 43.962971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501816, 28.832285, 43.987747>,  <35.109135, 28.896280, 44.029041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501816, 28.832285, 43.987747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065909, 0.794215, -0.604052,
		0.178631, 0.586197, 0.790230,
		0.981706, -0.159986, -0.103236,
		35.796329, 28.784288, 43.956776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398121, 29.533587, 44.103241>,  <35.109135, 28.896280, 44.029041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398121, 29.533587, 44.103241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658154, 29.315990, 43.891029>,  <35.814175, 29.185432, 43.763702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658154, 29.315990, 43.891029>,  <35.398121, 29.533587, 44.103241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658154, 29.315990, 43.891029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045150, 0.724617, -0.687671,
		0.758519, 0.423091, 0.495624,
		0.650085, -0.543989, -0.530533,
		35.853180, 29.152794, 43.731869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002583, 30.052914, 43.810627>,  <35.398121, 29.533587, 44.103241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002583, 30.052914, 43.810627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045113, 29.717484, 43.596901>,  <36.070629, 29.516226, 43.468666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045113, 29.717484, 43.596901>,  <36.002583, 30.052914, 43.810627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045113, 29.717484, 43.596901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081475, 0.542899, -0.835836,
		0.990988, 0.045334, 0.126044,
		0.106321, -0.838573, -0.534313,
		36.077007, 29.465912, 43.436607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662113, 30.069748, 43.364410>,  <36.002583, 30.052914, 43.810627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662113, 30.069748, 43.364410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.424015, 29.804232, 43.183273>,  <36.281158, 29.644922, 43.074593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.424015, 29.804232, 43.183273>,  <36.662113, 30.069748, 43.364410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424015, 29.804232, 43.183273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042062, 0.537043, -0.842506,
		0.802445, -0.520542, -0.291750,
		-0.595242, -0.663793, -0.452842,
		36.245441, 29.605093, 43.047421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370411, 29.772034, 43.619148>,  <36.662113, 30.069748, 43.364410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370411, 29.772034, 43.619148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748196, 29.882175, 43.690895>,  <37.974865, 29.948261, 43.733944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748196, 29.882175, 43.690895>,  <37.370411, 29.772034, 43.619148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748196, 29.882175, 43.690895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086866, -0.735584, 0.671841,
		0.316934, -0.618947, -0.718650,
		0.944461, 0.275356, 0.179366,
		38.031532, 29.964783, 43.744705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723579, 29.138575, 43.545387>,  <37.370411, 29.772034, 43.619148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723579, 29.138575, 43.545387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.920918, 29.396349, 43.779076>,  <38.039322, 29.551014, 43.919289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.920918, 29.396349, 43.779076>,  <37.723579, 29.138575, 43.545387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920918, 29.396349, 43.779076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185602, -0.734169, 0.653106,
		0.849801, -0.213774, -0.481807,
		0.493345, 0.644435, 0.584221,
		38.068920, 29.589680, 43.954342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494846, 28.906490, 43.718056>,  <37.723579, 29.138575, 43.545387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494846, 28.906490, 43.718056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325291, 29.124893, 44.007107>,  <38.223557, 29.255936, 44.180538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.325291, 29.124893, 44.007107>,  <38.494846, 28.906490, 43.718056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325291, 29.124893, 44.007107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131259, -0.752398, 0.645498,
		0.896150, 0.368474, 0.247269,
		-0.423894, 0.546007, 0.722627,
		38.198124, 29.288694, 44.223896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693192, 28.478903, 44.235477>,  <38.494846, 28.906490, 43.718056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693192, 28.478903, 44.235477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535011, 28.762684, 44.468819>,  <38.440102, 28.932953, 44.608822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.535011, 28.762684, 44.468819>,  <38.693192, 28.478903, 44.235477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535011, 28.762684, 44.468819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147372, -0.577882, 0.802704,
		0.906587, 0.403400, 0.123971,
		-0.395452, 0.709451, 0.583350,
		38.416374, 28.975519, 44.643826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189697, 28.655224, 44.785484>,  <38.693192, 28.478903, 44.235477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189697, 28.655224, 44.785484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832375, 28.772141, 44.922050>,  <38.617981, 28.842291, 45.003990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.832375, 28.772141, 44.922050>,  <39.189697, 28.655224, 44.785484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832375, 28.772141, 44.922050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150903, -0.520482, 0.840432,
		0.423354, 0.802286, 0.420843,
		-0.893308, 0.292294, 0.341416,
		38.564381, 28.859829, 45.024475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264111, 28.940609, 45.414795>,  <39.189697, 28.655224, 44.785484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264111, 28.940609, 45.414795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873676, 28.854214, 45.424629>,  <38.639416, 28.802378, 45.430531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.873676, 28.854214, 45.424629>,  <39.264111, 28.940609, 45.414795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873676, 28.854214, 45.424629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081875, -0.260525, 0.961989,
		-0.201372, 0.940998, 0.271979,
		-0.976087, -0.215986, 0.024582,
		38.580849, 28.789417, 45.432003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017086, 29.401363, 45.955322>,  <39.264111, 28.940609, 45.414795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017086, 29.401363, 45.955322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768070, 29.092695, 45.903217>,  <38.618660, 28.907494, 45.871956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.768070, 29.092695, 45.903217>,  <39.017086, 29.401363, 45.955322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768070, 29.092695, 45.903217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137599, -0.271786, 0.952470,
		-0.770396, 0.575027, 0.275379,
		-0.622540, -0.771671, -0.130260,
		38.581306, 28.861195, 45.864140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601257, 29.354446, 46.460838>,  <39.017086, 29.401363, 45.955322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601257, 29.354446, 46.460838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506611, 28.985308, 46.339268>,  <38.449821, 28.763824, 46.266327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506611, 28.985308, 46.339268>,  <38.601257, 29.354446, 46.460838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506611, 28.985308, 46.339268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076654, -0.294098, 0.952696,
		-0.968575, 0.248720, -0.001152,
		-0.236616, -0.922846, -0.303922,
		38.435627, 28.708454, 46.248093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022484, 29.234266, 46.962360>,  <38.601257, 29.354446, 46.460838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022484, 29.234266, 46.962360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136604, 28.871481, 46.838409>,  <38.205078, 28.653811, 46.764038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136604, 28.871481, 46.838409>,  <38.022484, 29.234266, 46.962360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136604, 28.871481, 46.838409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073331, -0.343022, 0.936461,
		-0.955628, -0.244451, -0.164374,
		0.285302, -0.906962, -0.309876,
		38.222195, 28.599392, 46.745445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529381, 28.705130, 47.197807>,  <38.022484, 29.234266, 46.962360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529381, 28.705130, 47.197807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.864864, 28.497952, 47.130516>,  <38.066154, 28.373644, 47.090141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.864864, 28.497952, 47.130516>,  <37.529381, 28.705130, 47.197807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864864, 28.497952, 47.130516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018949, -0.336488, 0.941497,
		-0.544255, -0.786451, -0.292029,
		0.838706, -0.517949, -0.168233,
		38.116478, 28.342567, 47.080048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427608, 27.918745, 47.369164>,  <37.529381, 28.705130, 47.197807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427608, 27.918745, 47.369164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.822487, 27.974724, 47.399788>,  <38.059414, 28.008310, 47.418163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.822487, 27.974724, 47.399788>,  <37.427608, 27.918745, 47.369164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822487, 27.974724, 47.399788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023989, -0.344237, 0.938576,
		0.157704, -0.928394, -0.336471,
		0.987195, 0.139946, 0.076559,
		38.118645, 28.016706, 47.422756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650692, 27.403856, 47.740211>,  <37.427608, 27.918745, 47.369164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650692, 27.403856, 47.740211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.961342, 27.653940, 47.771122>,  <38.147732, 27.803989, 47.789669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.961342, 27.653940, 47.771122>,  <37.650692, 27.403856, 47.740211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961342, 27.653940, 47.771122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122089, -0.269714, 0.955169,
		0.618022, -0.732372, -0.285797,
		0.776623, 0.625208, 0.077274,
		38.194328, 27.841503, 47.794304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154652, 26.998039, 48.126030>,  <37.650692, 27.403856, 47.740211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154652, 26.998039, 48.126030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.276386, 27.372507, 48.196419>,  <38.349426, 27.597187, 48.238651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.276386, 27.372507, 48.196419>,  <38.154652, 26.998039, 48.126030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276386, 27.372507, 48.196419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021883, -0.191558, 0.981238,
		0.952312, -0.294780, -0.078785,
		0.304341, 0.936168, 0.175972,
		38.367687, 27.653358, 48.249210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669140, 26.939611, 48.747498>,  <38.154652, 26.998039, 48.126030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669140, 26.939611, 48.747498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541355, 27.318060, 48.726341>,  <38.464684, 27.545130, 48.713646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.541355, 27.318060, 48.726341>,  <38.669140, 26.939611, 48.747498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541355, 27.318060, 48.726341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061536, 0.076412, 0.995176,
		0.945599, 0.314665, -0.082631,
		-0.319461, 0.946122, -0.052892,
		38.445518, 27.601896, 48.710472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.642309, 30.706085, 49.718533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.939804, 30.522398, 49.524223>,  <32.118301, 30.412186, 49.407639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.939804, 30.522398, 49.524223>,  <31.642309, 30.706085, 49.718533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939804, 30.522398, 49.524223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032397, 0.701077, -0.712349,
		0.667689, 0.545537, 0.506539,
		0.743735, -0.459217, -0.485775,
		32.162926, 30.384632, 49.378490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882261, 31.258411, 49.345173>,  <31.642309, 30.706085, 49.718533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882261, 31.258411, 49.345173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037155, 30.936428, 49.165356>,  <32.130093, 30.743238, 49.057465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.037155, 30.936428, 49.165356>,  <31.882261, 31.258411, 49.345173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037155, 30.936428, 49.165356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013245, 0.482679, -0.875697,
		0.921886, 0.345054, 0.176248,
		0.387234, -0.804959, -0.449546,
		32.153324, 30.694941, 49.030491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424671, 31.519985, 48.994961>,  <31.882261, 31.258411, 49.345173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424671, 31.519985, 48.994961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337288, 31.168663, 48.824852>,  <32.284859, 30.957869, 48.722786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337288, 31.168663, 48.824852>,  <32.424671, 31.519985, 48.994961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337288, 31.168663, 48.824852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180212, 0.391989, -0.902146,
		0.959063, -0.273716, 0.072650,
		-0.218454, -0.878307, -0.425269,
		32.271751, 30.905170, 48.697269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958782, 31.459686, 48.608887>,  <32.424671, 31.519985, 48.994961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958782, 31.459686, 48.608887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.671532, 31.223888, 48.460949>,  <32.499180, 31.082411, 48.372185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.671532, 31.223888, 48.460949>,  <32.958782, 31.459686, 48.608887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671532, 31.223888, 48.460949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158423, 0.379020, -0.911727,
		0.677636, -0.713331, -0.178796,
		-0.718130, -0.589493, -0.369846,
		32.456093, 31.047041, 48.349995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234612, 31.150105, 47.995384>,  <32.958782, 31.459686, 48.608887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234612, 31.150105, 47.995384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.841183, 31.095312, 47.948360>,  <32.605125, 31.062437, 47.920147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.841183, 31.095312, 47.948360>,  <33.234612, 31.150105, 47.995384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841183, 31.095312, 47.948360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081833, 0.242111, -0.966792,
		0.160891, -0.960531, -0.226924,
		-0.983574, -0.136978, -0.117557,
		32.546112, 31.054218, 47.913094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208775, 30.789726, 47.378399>,  <33.234612, 31.150105, 47.995384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208775, 30.789726, 47.378399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839489, 30.930573, 47.439964>,  <32.617916, 31.015079, 47.476906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.839489, 30.930573, 47.439964>,  <33.208775, 30.789726, 47.378399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839489, 30.930573, 47.439964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032823, 0.326807, -0.944521,
		-0.382881, -0.877047, -0.290155,
		-0.923214, 0.352115, 0.153915,
		32.562523, 31.036207, 47.486137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818596, 30.403709, 47.000488>,  <33.208775, 30.789726, 47.378399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818596, 30.403709, 47.000488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.622864, 30.751793, 47.023449>,  <32.505424, 30.960644, 47.037228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.622864, 30.751793, 47.023449>,  <32.818596, 30.403709, 47.000488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622864, 30.751793, 47.023449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117647, 0.131088, -0.984365,
		-0.864128, -0.474924, -0.166522,
		-0.489327, 0.870209, 0.057404,
		32.476067, 31.012856, 47.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473145, 30.522676, 46.342007>,  <32.818596, 30.403709, 47.000488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473145, 30.522676, 46.342007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.471207, 30.879576, 46.522617>,  <32.470043, 31.093716, 46.630981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.471207, 30.879576, 46.522617>,  <32.473145, 30.522676, 46.342007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471207, 30.879576, 46.522617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013464, 0.451545, -0.892147,
		-0.999898, 0.001757, -0.014201,
		-0.004845, 0.892247, 0.451523,
		32.469753, 31.147249, 46.658073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082382, 30.884581, 45.841820>,  <32.473145, 30.522676, 46.342007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082382, 30.884581, 45.841820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.242580, 31.164143, 46.078846>,  <32.338699, 31.331881, 46.221062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.242580, 31.164143, 46.078846>,  <32.082382, 30.884581, 45.841820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242580, 31.164143, 46.078846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268873, 0.528595, -0.805168,
		-0.875965, 0.481789, 0.023781,
		0.400492, 0.698904, 0.592570,
		32.362728, 31.373814, 46.256618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937805, 31.412294, 45.448898>,  <32.082382, 30.884581, 45.841820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937805, 31.412294, 45.448898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232971, 31.540808, 45.686302>,  <32.410072, 31.617916, 45.828747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.232971, 31.540808, 45.686302>,  <31.937805, 31.412294, 45.448898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232971, 31.540808, 45.686302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337748, 0.585571, -0.736908,
		-0.584301, 0.744233, 0.323588,
		0.737915, 0.321285, 0.593513,
		32.454346, 31.637194, 45.864357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992727, 31.975798, 45.265514>,  <31.937805, 31.412294, 45.448898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992727, 31.975798, 45.265514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339840, 31.926838, 45.458168>,  <32.548107, 31.897461, 45.573761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339840, 31.926838, 45.458168>,  <31.992727, 31.975798, 45.265514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339840, 31.926838, 45.458168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430924, 0.668052, -0.606640,
		-0.247503, 0.733979, 0.632469,
		0.867783, -0.122401, 0.481634,
		32.600174, 31.890118, 45.602657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180050, 32.605644, 45.534863>,  <31.992727, 31.975798, 45.265514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180050, 32.605644, 45.534863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.511444, 32.395947, 45.456100>,  <32.710281, 32.270126, 45.408844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.511444, 32.395947, 45.456100>,  <32.180050, 32.605644, 45.534863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511444, 32.395947, 45.456100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154675, 0.552158, -0.819266,
		0.538222, 0.648296, 0.538544,
		0.828488, -0.524247, -0.196908,
		32.759991, 32.238674, 45.397026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651543, 33.088074, 45.146004>,  <32.180050, 32.605644, 45.534863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651543, 33.088074, 45.146004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.835316, 32.738972, 45.080017>,  <32.945580, 32.529510, 45.040424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.835316, 32.738972, 45.080017>,  <32.651543, 33.088074, 45.146004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835316, 32.738972, 45.080017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288510, 0.322297, -0.901603,
		0.840050, 0.366630, 0.399873,
		0.459432, -0.872759, -0.164969,
		32.973145, 32.477142, 45.030525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378334, 33.252483, 45.043324>,  <32.651543, 33.088074, 45.146004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378334, 33.252483, 45.043324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289410, 32.907722, 44.861031>,  <33.236053, 32.700867, 44.751656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.289410, 32.907722, 44.861031>,  <33.378334, 33.252483, 45.043324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289410, 32.907722, 44.861031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260391, 0.397965, -0.879671,
		0.939560, -0.314231, 0.135960,
		-0.222313, -0.861907, -0.455735,
		33.222717, 32.649151, 44.724312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080936, 33.121174, 45.371288>,  <33.378334, 33.252483, 45.043324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080936, 33.121174, 45.371288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.438461, 33.287113, 45.439407>,  <34.652977, 33.386677, 45.480278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.438461, 33.287113, 45.439407>,  <34.080936, 33.121174, 45.371288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438461, 33.287113, 45.439407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102933, -0.179832, 0.978297,
		0.436470, -0.891943, -0.118034,
		0.893811, 0.414848, 0.170302,
		34.706604, 33.411568, 45.490498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546150, 32.674664, 45.821629>,  <34.080936, 33.121174, 45.371288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546150, 32.674664, 45.821629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700832, 33.036400, 45.893871>,  <34.793644, 33.253441, 45.937218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.700832, 33.036400, 45.893871>,  <34.546150, 32.674664, 45.821629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700832, 33.036400, 45.893871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094341, -0.233608, 0.967743,
		0.917364, -0.357197, -0.175655,
		0.386709, 0.904344, 0.180606,
		34.816845, 33.307701, 45.948051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179096, 32.575275, 46.217499>,  <34.546150, 32.674664, 45.821629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179096, 32.575275, 46.217499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022011, 32.937233, 46.283165>,  <34.927757, 33.154408, 46.322563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022011, 32.937233, 46.283165>,  <35.179096, 32.575275, 46.217499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022011, 32.937233, 46.283165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030004, -0.165800, 0.985703,
		0.919170, 0.392027, 0.037962,
		-0.392716, 0.904890, 0.164161,
		34.904198, 33.208698, 46.332413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603275, 32.902588, 46.789307>,  <35.179096, 32.575275, 46.217499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603275, 32.902588, 46.789307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250534, 33.089577, 46.764645>,  <35.038887, 33.201771, 46.749847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250534, 33.089577, 46.764645>,  <35.603275, 32.902588, 46.789307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250534, 33.089577, 46.764645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153749, -0.161476, 0.974826,
		0.445746, 0.869136, 0.214272,
		-0.881857, 0.467469, -0.061652,
		34.985977, 33.229816, 46.746151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633224, 33.248566, 47.385963>,  <35.603275, 32.902588, 46.789307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633224, 33.248566, 47.385963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245937, 33.280369, 47.291111>,  <35.013565, 33.299450, 47.234200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245937, 33.280369, 47.291111>,  <35.633224, 33.248566, 47.385963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245937, 33.280369, 47.291111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238658, -0.010104, 0.971051,
		0.074807, 0.996783, 0.028757,
		-0.968218, 0.079505, -0.237134,
		34.955471, 33.304222, 47.219971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352985, 33.626472, 47.940975>,  <35.633224, 33.248566, 47.385963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352985, 33.626472, 47.940975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039791, 33.434002, 47.783291>,  <34.851875, 33.318520, 47.688683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039791, 33.434002, 47.783291>,  <35.352985, 33.626472, 47.940975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039791, 33.434002, 47.783291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363209, -0.160822, 0.917723,
		-0.504986, 0.861744, -0.048847,
		-0.782986, -0.481179, -0.394206,
		34.804893, 33.289650, 47.665028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762218, 33.858257, 48.308479>,  <35.352985, 33.626472, 47.940975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762218, 33.858257, 48.308479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616291, 33.523998, 48.144238>,  <34.528736, 33.323441, 48.045692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616291, 33.523998, 48.144238>,  <34.762218, 33.858257, 48.308479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616291, 33.523998, 48.144238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090727, -0.406999, 0.908912,
		-0.926649, 0.368839, 0.072664,
		-0.364816, -0.835649, -0.410609,
		34.506847, 33.273304, 48.021053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248981, 33.656555, 48.741798>,  <34.762218, 33.858257, 48.308479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248981, 33.656555, 48.741798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.368168, 33.331020, 48.542244>,  <34.439682, 33.135700, 48.422512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.368168, 33.331020, 48.542244>,  <34.248981, 33.656555, 48.741798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368168, 33.331020, 48.542244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064468, -0.538591, 0.840098,
		-0.952396, -0.218162, -0.212950,
		0.297970, -0.813834, -0.498887,
		34.457558, 33.086868, 48.392578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843510, 33.161545, 49.019169>,  <34.248981, 33.656555, 48.741798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843510, 33.161545, 49.019169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.164207, 32.981026, 48.862431>,  <34.356625, 32.872715, 48.768387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.164207, 32.981026, 48.862431>,  <33.843510, 33.161545, 49.019169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164207, 32.981026, 48.862431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020600, -0.634363, 0.772761,
		-0.597305, -0.627633, -0.499304,
		0.801750, -0.451288, -0.391837,
		34.404732, 32.845638, 48.744877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657421, 32.556969, 49.018009>,  <33.843510, 33.161545, 49.019169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657421, 32.556969, 49.018009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057384, 32.551517, 49.018974>,  <34.297363, 32.548248, 49.019554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.057384, 32.551517, 49.018974>,  <33.657421, 32.556969, 49.018009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057384, 32.551517, 49.018974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010590, -0.641116, 0.767371,
		-0.008907, -0.767323, -0.641199,
		0.999904, -0.013625, 0.002416,
		34.357357, 32.547428, 49.019699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820469, 31.865690, 48.917931>,  <33.657421, 32.556969, 49.018009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820469, 31.865690, 48.917931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153210, 32.031857, 49.065144>,  <34.352856, 32.131557, 49.153473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153210, 32.031857, 49.065144>,  <33.820469, 31.865690, 48.917931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153210, 32.031857, 49.065144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108207, -0.771802, 0.626588,
		0.544342, -0.481407, -0.686978,
		0.831855, 0.415414, 0.368033,
		34.402767, 32.156479, 49.175552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220699, 31.330378, 49.097115>,  <33.820469, 31.865690, 48.917931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220699, 31.330378, 49.097115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.414585, 31.606737, 49.311668>,  <34.530914, 31.772552, 49.440403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.414585, 31.606737, 49.311668>,  <34.220699, 31.330378, 49.097115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414585, 31.606737, 49.311668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066716, -0.640658, 0.764922,
		0.872126, -0.334981, -0.356628,
		0.484711, 0.690901, 0.536387,
		34.559998, 31.814007, 49.472584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838779, 30.963196, 49.433735>,  <34.220699, 31.330378, 49.097115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838779, 30.963196, 49.433735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.739536, 31.295881, 49.632408>,  <34.679989, 31.495493, 49.751614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.739536, 31.295881, 49.632408>,  <34.838779, 30.963196, 49.433735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739536, 31.295881, 49.632408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004912, -0.511629, 0.859192,
		0.968719, 0.215614, 0.122855,
		-0.248110, 0.831713, 0.496684,
		34.665104, 31.545395, 49.781414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209454, 30.960863, 50.028606>,  <34.838779, 30.963196, 49.433735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209454, 30.960863, 50.028606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.913097, 31.213659, 50.119522>,  <34.735283, 31.365337, 50.174072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.913097, 31.213659, 50.119522>,  <35.209454, 30.960863, 50.028606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913097, 31.213659, 50.119522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023059, -0.362162, 0.931830,
		0.671225, 0.685147, 0.282897,
		-0.740895, 0.631992, 0.227293,
		34.690830, 31.403257, 50.187710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802547, 31.477018, 49.974567>,  <35.209454, 30.960863, 50.028606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802547, 31.477018, 49.974567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201324, 31.503521, 49.991112>,  <36.440590, 31.519423, 50.001038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.201324, 31.503521, 49.991112>,  <35.802547, 31.477018, 49.974567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201324, 31.503521, 49.991112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016139, 0.343380, -0.939058,
		-0.076423, 0.936857, 0.341261,
		0.996945, 0.066258, 0.041362,
		36.500408, 31.523397, 50.003521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068470, 32.192486, 49.864994>,  <35.802547, 31.477018, 49.974567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068470, 32.192486, 49.864994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370296, 31.951162, 49.761726>,  <36.551392, 31.806368, 49.699768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370296, 31.951162, 49.761726>,  <36.068470, 32.192486, 49.864994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370296, 31.951162, 49.761726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006752, 0.400527, -0.916260,
		0.656189, 0.689636, 0.306297,
		0.754566, -0.603308, -0.258165,
		36.596664, 31.770170, 49.684277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515385, 32.611786, 49.652908>,  <36.068470, 32.192486, 49.864994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515385, 32.611786, 49.652908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627102, 32.265144, 49.487507>,  <36.694134, 32.057159, 49.388268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.627102, 32.265144, 49.487507>,  <36.515385, 32.611786, 49.652908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627102, 32.265144, 49.487507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306166, 0.488538, -0.817064,
		0.910085, 0.101603, 0.401774,
		0.279298, -0.866607, -0.413503,
		36.710892, 32.005161, 49.363457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316772, 32.654770, 49.420006>,  <36.515385, 32.611786, 49.652908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316772, 32.654770, 49.420006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184040, 32.328609, 49.230263>,  <37.104401, 32.132912, 49.116417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.184040, 32.328609, 49.230263>,  <37.316772, 32.654770, 49.420006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184040, 32.328609, 49.230263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492043, 0.279419, -0.824511,
		0.804851, -0.506998, 0.308494,
		-0.331827, -0.815400, -0.474355,
		37.084492, 32.083988, 49.087955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878933, 32.535091, 48.946587>,  <37.316772, 32.654770, 49.420006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878933, 32.535091, 48.946587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557110, 32.346577, 48.802048>,  <37.364017, 32.233467, 48.715324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557110, 32.346577, 48.802048>,  <37.878933, 32.535091, 48.946587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557110, 32.346577, 48.802048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277554, 0.239516, -0.930374,
		0.525025, -0.848833, -0.061896,
		-0.804557, -0.471290, -0.361349,
		37.315742, 32.205189, 48.693642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124798, 32.157703, 48.438530>,  <37.878933, 32.535091, 48.946587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124798, 32.157703, 48.438530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738731, 32.213055, 48.349705>,  <37.507092, 32.246265, 48.296410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.738731, 32.213055, 48.349705>,  <38.124798, 32.157703, 48.438530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738731, 32.213055, 48.349705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248268, 0.216438, -0.944202,
		-0.082594, -0.966440, -0.243253,
		-0.965164, 0.138378, -0.222060,
		37.449181, 32.254566, 48.283089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985931, 31.722172, 47.898209>,  <38.124798, 32.157703, 48.438530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985931, 31.722172, 47.898209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710732, 32.010342, 47.863243>,  <37.545612, 32.183243, 47.842262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710732, 32.010342, 47.863243>,  <37.985931, 31.722172, 47.898209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710732, 32.010342, 47.863243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268263, 0.140549, -0.953038,
		-0.674306, -0.679142, -0.289961,
		-0.688002, 0.720425, -0.087416,
		37.504330, 32.226467, 47.837017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742069, 31.551767, 47.275246>,  <37.985931, 31.722172, 47.898209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742069, 31.551767, 47.275246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593925, 31.919125, 47.330936>,  <37.505039, 32.139538, 47.364353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.593925, 31.919125, 47.330936>,  <37.742069, 31.551767, 47.275246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593925, 31.919125, 47.330936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230154, 0.235946, -0.944118,
		-0.899922, -0.317622, -0.298758,
		-0.370363, 0.918393, 0.139231,
		37.482815, 32.194641, 47.372707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358253, 31.682943, 46.713276>,  <37.742069, 31.551767, 47.275246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358253, 31.682943, 46.713276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.423916, 32.043453, 46.873657>,  <37.463314, 32.259758, 46.969887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.423916, 32.043453, 46.873657>,  <37.358253, 31.682943, 46.713276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423916, 32.043453, 46.873657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204634, 0.366509, -0.907632,
		-0.964976, 0.231037, -0.124268,
		0.164151, 0.901273, 0.400950,
		37.473160, 32.313835, 46.993942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958443, 32.245262, 46.275448>,  <37.358253, 31.682943, 46.713276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958443, 32.245262, 46.275448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.247192, 32.423618, 46.487137>,  <37.420441, 32.530632, 46.614151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.247192, 32.423618, 46.487137>,  <36.958443, 32.245262, 46.275448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247192, 32.423618, 46.487137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360603, 0.410343, -0.837606,
		-0.590645, 0.795486, 0.135426,
		0.721875, 0.445892, 0.529222,
		37.463757, 32.557384, 46.645905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160225, 32.816750, 45.866863>,  <36.958443, 32.245262, 46.275448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160225, 32.816750, 45.866863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456532, 32.806538, 46.135376>,  <37.634315, 32.800411, 46.296482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456532, 32.806538, 46.135376>,  <37.160225, 32.816750, 45.866863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456532, 32.806538, 46.135376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620949, 0.407287, -0.669731,
		-0.256308, 0.912943, 0.317554,
		0.740762, -0.025528, 0.671282,
		37.678761, 32.798878, 46.336761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466690, 33.411751, 45.871662>,  <37.160225, 32.816750, 45.866863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466690, 33.411751, 45.871662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742134, 33.182522, 46.049381>,  <37.907398, 33.044983, 46.156013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742134, 33.182522, 46.049381>,  <37.466690, 33.411751, 45.871662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742134, 33.182522, 46.049381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666294, 0.258279, -0.699531,
		0.286132, 0.777737, 0.559691,
		0.688608, -0.573077, 0.444300,
		37.948715, 33.010597, 46.182671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032204, 33.814690, 45.977005>,  <37.466690, 33.411751, 45.871662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032204, 33.814690, 45.977005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.185329, 33.445309, 45.987549>,  <38.277206, 33.223682, 45.993874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.185329, 33.445309, 45.987549>,  <38.032204, 33.814690, 45.977005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185329, 33.445309, 45.987549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713595, 0.277460, -0.643272,
		0.586715, 0.265064, 0.765184,
		0.382816, -0.923449, 0.026359,
		38.300175, 33.168274, 45.995457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768185, 33.790562, 46.201324>,  <38.032204, 33.814690, 45.977005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768185, 33.790562, 46.201324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684299, 33.463039, 45.987568>,  <38.633968, 33.266525, 45.859314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.684299, 33.463039, 45.987568>,  <38.768185, 33.790562, 46.201324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684299, 33.463039, 45.987568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659005, 0.285391, -0.695891,
		0.722312, -0.498103, 0.479749,
		-0.209710, -0.818807, -0.534394,
		38.621387, 33.217396, 45.827251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.409924, 42.934418, 34.185562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218777, 42.788864, 33.865753>,  <27.104088, 42.701530, 33.673870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218777, 42.788864, 33.865753>,  <27.409924, 42.934418, 34.185562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218777, 42.788864, 33.865753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210545, -0.931083, 0.297919,
		-0.852826, -0.025969, 0.521549,
		-0.477869, -0.363883, -0.799519,
		27.075417, 42.679699, 33.625896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866110, 42.556221, 34.271580>,  <27.409924, 42.934418, 34.185562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866110, 42.556221, 34.271580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956604, 42.374260, 33.927048>,  <27.010900, 42.265083, 33.720329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.956604, 42.374260, 33.927048>,  <26.866110, 42.556221, 34.271580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956604, 42.374260, 33.927048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173406, -0.888936, 0.423937,
		-0.958513, 0.053451, -0.279991,
		0.226234, -0.454901, -0.861326,
		27.024475, 42.237789, 33.668652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266733, 42.240585, 34.027962>,  <26.866110, 42.556221, 34.271580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266733, 42.240585, 34.027962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589041, 42.039764, 33.902309>,  <26.782425, 41.919270, 33.826920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.589041, 42.039764, 33.902309>,  <26.266733, 42.240585, 34.027962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589041, 42.039764, 33.902309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302014, -0.804609, 0.511265,
		-0.509435, -0.317089, -0.799957,
		0.805769, -0.502054, -0.314130,
		26.830770, 41.889149, 33.808071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018255, 41.516705, 34.001003>,  <26.266733, 42.240585, 34.027962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018255, 41.516705, 34.001003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411583, 41.483776, 33.936123>,  <26.647579, 41.464020, 33.897194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.411583, 41.483776, 33.936123>,  <26.018255, 41.516705, 34.001003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411583, 41.483776, 33.936123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050209, -0.979917, 0.192980,
		-0.174827, -0.181617, -0.967704,
		0.983318, -0.082325, -0.162198,
		26.706579, 41.459080, 33.887463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100626, 40.993332, 33.462078>,  <26.018255, 41.516705, 34.001003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100626, 40.993332, 33.462078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.430487, 41.015972, 33.687199>,  <26.628403, 41.029556, 33.822269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.430487, 41.015972, 33.687199>,  <26.100626, 40.993332, 33.462078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.430487, 41.015972, 33.687199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088363, -0.969875, 0.227011,
		0.558693, -0.236936, -0.794810,
		0.824654, 0.056598, 0.562799,
		26.677883, 41.032951, 33.856037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393787, 40.351440, 33.333122>,  <26.100626, 40.993332, 33.462078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393787, 40.351440, 33.333122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596874, 40.475513, 33.654621>,  <26.718727, 40.549957, 33.847519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.596874, 40.475513, 33.654621>,  <26.393787, 40.351440, 33.333122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596874, 40.475513, 33.654621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049994, -0.941973, 0.331945,
		0.860072, -0.128351, -0.493763,
		0.507717, 0.310182, 0.803748,
		26.749189, 40.568569, 33.895744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869440, 39.820927, 33.394611>,  <26.393787, 40.351440, 33.333122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869440, 39.820927, 33.394611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.902712, 40.009590, 33.745750>,  <26.922674, 40.122787, 33.956432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.902712, 40.009590, 33.745750>,  <26.869440, 39.820927, 33.394611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902712, 40.009590, 33.745750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204034, -0.870299, 0.448274,
		0.975424, 0.141824, -0.168626,
		0.083179, 0.471662, 0.877847,
		26.927666, 40.151089, 34.009106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470537, 39.549236, 33.705189>,  <26.869440, 39.820927, 33.394611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470537, 39.549236, 33.705189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.256964, 39.712391, 34.001442>,  <27.128819, 39.810284, 34.179195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.256964, 39.712391, 34.001442>,  <27.470537, 39.549236, 33.705189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256964, 39.712391, 34.001442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041110, -0.862387, 0.504578,
		0.844526, 0.299859, 0.443690,
		-0.533935, 0.407889, 0.740635,
		27.096783, 39.834759, 34.223633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874079, 39.306679, 34.212536>,  <27.470537, 39.549236, 33.705189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874079, 39.306679, 34.212536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514139, 39.383492, 34.369198>,  <27.298176, 39.429577, 34.463196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514139, 39.383492, 34.369198>,  <27.874079, 39.306679, 34.212536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514139, 39.383492, 34.369198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009120, -0.889406, 0.457027,
		0.436103, 0.414828, 0.798581,
		-0.899850, 0.192028, 0.391656,
		27.244184, 39.441101, 34.486694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.893267, 39.402508, 35.002342>,  <27.874079, 39.306679, 34.212536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.893267, 39.402508, 35.002342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509232, 39.313278, 34.934856>,  <27.278811, 39.259739, 34.894363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.509232, 39.313278, 34.934856>,  <27.893267, 39.402508, 35.002342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509232, 39.313278, 34.934856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108996, -0.853933, 0.508839,
		-0.257581, 0.470142, 0.844167,
		-0.960089, -0.223079, -0.168713,
		27.221205, 39.246353, 34.884243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693176, 39.069771, 35.587593>,  <27.893267, 39.402508, 35.002342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693176, 39.069771, 35.587593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413723, 38.964779, 35.321358>,  <27.246050, 38.901783, 35.161617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.413723, 38.964779, 35.321358>,  <27.693176, 39.069771, 35.587593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413723, 38.964779, 35.321358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224954, -0.802516, 0.552597,
		-0.679194, 0.535792, 0.501620,
		-0.698635, -0.262479, -0.665593,
		27.204132, 38.886036, 35.121681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229027, 38.768284, 35.957447>,  <27.693176, 39.069771, 35.587593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229027, 38.768284, 35.957447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.090961, 38.635670, 35.606232>,  <27.008123, 38.556103, 35.395504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.090961, 38.635670, 35.606232>,  <27.229027, 38.768284, 35.957447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090961, 38.635670, 35.606232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361086, -0.816613, 0.450288,
		-0.866302, 0.472469, 0.162152,
		-0.345162, -0.331535, -0.878036,
		26.987413, 38.536209, 35.342819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420649, 38.648262, 36.059238>,  <27.229027, 38.768284, 35.957447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420649, 38.648262, 36.059238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.507380, 38.427696, 35.737015>,  <26.559418, 38.295357, 35.543682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.507380, 38.427696, 35.737015>,  <26.420649, 38.648262, 36.059238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507380, 38.427696, 35.737015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418105, -0.798130, 0.433793,
		-0.882142, 0.242750, -0.403607,
		0.216828, -0.551418, -0.805559,
		26.572428, 38.262272, 35.495346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913921, 38.324627, 36.063095>,  <26.420649, 38.648262, 36.059238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913921, 38.324627, 36.063095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.147491, 38.087234, 35.841534>,  <26.287634, 37.944798, 35.708595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.147491, 38.087234, 35.841534>,  <25.913921, 38.324627, 36.063095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147491, 38.087234, 35.841534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370632, -0.801946, 0.468523,
		-0.722264, -0.068285, -0.688238,
		0.583923, -0.593481, -0.553908,
		26.322668, 37.909191, 35.675362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503368, 37.826412, 35.882374>,  <25.913921, 38.324627, 36.063095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503368, 37.826412, 35.882374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.869726, 37.677883, 35.821365>,  <26.089540, 37.588768, 35.784760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.869726, 37.677883, 35.821365>,  <25.503368, 37.826412, 35.882374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869726, 37.677883, 35.821365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246784, -0.820513, 0.515612,
		-0.316604, -0.434605, -0.843137,
		0.915893, -0.371318, -0.152524,
		26.144493, 37.566486, 35.775608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377964, 37.200703, 35.539639>,  <25.503368, 37.826412, 35.882374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377964, 37.200703, 35.539639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.744896, 37.164539, 35.694729>,  <25.965055, 37.142841, 35.787785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.744896, 37.164539, 35.694729>,  <25.377964, 37.200703, 35.539639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744896, 37.164539, 35.694729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223689, -0.922665, 0.314088,
		0.329349, -0.374853, -0.866611,
		0.917329, -0.090407, 0.387730,
		26.020094, 37.137417, 35.811047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653271, 36.437786, 35.319073>,  <25.377964, 37.200703, 35.539639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653271, 36.437786, 35.319073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850451, 36.580158, 35.636642>,  <25.968760, 36.665581, 35.827183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.850451, 36.580158, 35.636642>,  <25.653271, 36.437786, 35.319073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850451, 36.580158, 35.636642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077088, -0.891036, 0.447339,
		0.866636, -0.281718, -0.411798,
		0.492950, 0.355935, 0.793921,
		25.998335, 36.686939, 35.874817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042181, 35.809155, 35.556244>,  <25.653271, 36.437786, 35.319073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042181, 35.809155, 35.556244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.084988, 36.065140, 35.860611>,  <26.110672, 36.218731, 36.043232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.084988, 36.065140, 35.860611>,  <26.042181, 35.809155, 35.556244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084988, 36.065140, 35.860611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134084, -0.749029, 0.648828,
		0.985175, -0.171461, 0.005651,
		0.107016, 0.639967, 0.760914,
		26.117092, 36.257130, 36.088886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536825, 35.418709, 36.066441>,  <26.042181, 35.809155, 35.556244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536825, 35.418709, 36.066441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.326040, 35.697258, 36.261326>,  <26.199570, 35.864388, 36.378258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.326040, 35.697258, 36.261326>,  <26.536825, 35.418709, 36.066441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326040, 35.697258, 36.261326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083420, -0.612879, 0.785761,
		0.845785, 0.373423, 0.381055,
		-0.526961, 0.696373, 0.487213,
		26.167952, 35.906170, 36.407490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946684, 35.553047, 36.641022>,  <26.536825, 35.418709, 36.066441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946684, 35.553047, 36.641022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566980, 35.643497, 36.728455>,  <26.339159, 35.697769, 36.780914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.566980, 35.643497, 36.728455>,  <26.946684, 35.553047, 36.641022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566980, 35.643497, 36.728455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017893, -0.655050, 0.755374,
		0.313992, 0.720955, 0.617765,
		-0.949257, 0.226128, 0.218581,
		26.282204, 35.711334, 36.794029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439770, 35.544800, 37.163719>,  <26.946684, 35.553047, 36.641022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439770, 35.544800, 37.163719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834692, 35.607334, 37.152534>,  <28.071646, 35.644855, 37.145824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.834692, 35.607334, 37.152534>,  <27.439770, 35.544800, 37.163719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834692, 35.607334, 37.152534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124247, 0.869987, 0.477163,
		0.098930, -0.467632, 0.878370,
		0.987307, 0.156340, -0.027966,
		28.130884, 35.654236, 37.144146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505011, 35.957897, 37.746521>,  <27.439770, 35.544800, 37.163719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505011, 35.957897, 37.746521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.843840, 35.989605, 37.536308>,  <28.047136, 36.008629, 37.410179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.843840, 35.989605, 37.536308>,  <27.505011, 35.957897, 37.746521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843840, 35.989605, 37.536308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043844, 0.975023, 0.217732,
		0.529667, -0.207476, 0.822440,
		0.847072, 0.079266, -0.525534,
		28.097961, 36.013386, 37.378647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993992, 36.299503, 38.133144>,  <27.505011, 35.957897, 37.746521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.993992, 36.299503, 38.133144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120882, 36.366558, 37.759777>,  <28.197016, 36.406792, 37.535759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120882, 36.366558, 37.759777>,  <27.993992, 36.299503, 38.133144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120882, 36.366558, 37.759777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072488, 0.977087, 0.200114,
		0.945575, -0.131143, 0.297807,
		0.317227, 0.167635, -0.933416,
		28.216049, 36.416847, 37.479752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612314, 36.678711, 38.185009>,  <27.993992, 36.299503, 38.133144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612314, 36.678711, 38.185009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541233, 36.730820, 37.794838>,  <28.498585, 36.762085, 37.560738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541233, 36.730820, 37.794838>,  <28.612314, 36.678711, 38.185009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541233, 36.730820, 37.794838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051561, 0.991070, 0.122972,
		0.982733, -0.028442, -0.182831,
		-0.177701, 0.130276, -0.975423,
		28.487923, 36.769901, 37.502213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095730, 37.024036, 37.948776>,  <28.612314, 36.678711, 38.185009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095730, 37.024036, 37.948776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.778414, 37.097748, 37.716663>,  <28.588024, 37.141975, 37.577396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.778414, 37.097748, 37.716663>,  <29.095730, 37.024036, 37.948776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.778414, 37.097748, 37.716663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126398, 0.982176, 0.139116,
		0.595578, 0.037013, -0.802444,
		-0.793291, 0.184282, -0.580284,
		28.540426, 37.153034, 37.542580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203079, 37.624344, 37.767269>,  <29.095730, 37.024036, 37.948776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203079, 37.624344, 37.767269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832270, 37.626144, 37.617275>,  <28.609785, 37.627224, 37.527279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832270, 37.626144, 37.617275>,  <29.203079, 37.624344, 37.767269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832270, 37.626144, 37.617275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011367, 0.999131, 0.040101,
		0.374836, 0.041437, -0.926165,
		-0.927022, 0.004503, -0.374981,
		28.554163, 37.627495, 37.504780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184782, 38.047375, 37.155403>,  <29.203079, 37.624344, 37.767269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184782, 38.047375, 37.155403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810230, 38.027481, 37.294380>,  <28.585499, 38.015545, 37.377766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.810230, 38.027481, 37.294380>,  <29.184782, 38.047375, 37.155403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810230, 38.027481, 37.294380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130676, 0.968141, -0.213606,
		-0.325755, -0.245419, -0.913046,
		-0.936380, -0.049730, 0.347447,
		28.529316, 38.012562, 37.398613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768810, 38.264538, 36.663979>,  <29.184782, 38.047375, 37.155403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768810, 38.264538, 36.663979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.545715, 38.325203, 36.990395>,  <28.411860, 38.361603, 37.186245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.545715, 38.325203, 36.990395>,  <28.768810, 38.264538, 36.663979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545715, 38.325203, 36.990395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044100, 0.976361, -0.211601,
		-0.828847, -0.154005, -0.537862,
		-0.557735, 0.151665, 0.816045,
		28.378395, 38.370701, 37.235207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446856, 38.787567, 36.488258>,  <28.768810, 38.264538, 36.663979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446856, 38.787567, 36.488258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347359, 38.787476, 36.875687>,  <28.287661, 38.787422, 37.108143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.347359, 38.787476, 36.875687>,  <28.446856, 38.787567, 36.488258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347359, 38.787476, 36.875687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155472, 0.987042, -0.039697,
		-0.956011, -0.160460, -0.245553,
		-0.248741, -0.000226, 0.968570,
		28.272736, 38.787407, 37.166256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727978, 38.898354, 36.576977>,  <28.446856, 38.787567, 36.488258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727978, 38.898354, 36.576977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879663, 39.006149, 36.931057>,  <27.970675, 39.070827, 37.143505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.879663, 39.006149, 36.931057>,  <27.727978, 38.898354, 36.576977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879663, 39.006149, 36.931057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386645, 0.915278, -0.113011,
		-0.840657, -0.299401, 0.451282,
		0.379213, 0.269489, 0.885197,
		27.993427, 39.086994, 37.196617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179121, 39.219364, 36.823639>,  <27.727978, 38.898354, 36.576977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179121, 39.219364, 36.823639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488571, 39.335213, 37.049072>,  <27.674242, 39.404724, 37.184330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.488571, 39.335213, 37.049072>,  <27.179121, 39.219364, 36.823639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.488571, 39.335213, 37.049072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436877, 0.888027, 0.143340,
		-0.458959, -0.357107, 0.813530,
		0.773625, 0.289626, 0.563580,
		27.720659, 39.422100, 37.218147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886896, 39.528427, 37.455467>,  <27.179121, 39.219364, 36.823639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886896, 39.528427, 37.455467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.251080, 39.668007, 37.366657>,  <27.469589, 39.751755, 37.313370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.251080, 39.668007, 37.366657>,  <26.886896, 39.528427, 37.455467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251080, 39.668007, 37.366657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371528, 0.925905, -0.068313,
		0.181737, 0.144685, 0.972645,
		0.910461, 0.348950, -0.222026,
		27.524218, 39.772694, 37.300049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070738, 40.096390, 37.900734>,  <26.886896, 39.528427, 37.455467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070738, 40.096390, 37.900734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.359081, 40.138542, 37.626724>,  <27.532087, 40.163834, 37.462318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.359081, 40.138542, 37.626724>,  <27.070738, 40.096390, 37.900734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359081, 40.138542, 37.626724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188652, 0.980888, -0.047626,
		0.666913, 0.163563, 0.726963,
		0.720859, 0.105381, -0.685023,
		27.575338, 40.170155, 37.421219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424141, 40.705830, 38.091221>,  <27.070738, 40.096390, 37.900734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424141, 40.705830, 38.091221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514332, 40.631496, 37.708675>,  <27.568447, 40.586895, 37.479149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514332, 40.631496, 37.708675>,  <27.424141, 40.705830, 38.091221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514332, 40.631496, 37.708675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263921, 0.933284, -0.243573,
		0.937819, 0.307324, 0.161391,
		0.225480, -0.185833, -0.956360,
		27.581976, 40.575748, 37.421768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799520, 41.358868, 37.909687>,  <27.424141, 40.705830, 38.091221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799520, 41.358868, 37.909687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.698736, 41.185009, 37.563831>,  <27.638266, 41.080696, 37.356319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.698736, 41.185009, 37.563831>,  <27.799520, 41.358868, 37.909687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698736, 41.185009, 37.563831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003174, 0.893088, -0.449870,
		0.967732, -0.116093, -0.223643,
		-0.251960, -0.434645, -0.864639,
		27.623148, 41.054615, 37.304440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346760, 41.543877, 37.455223>,  <27.799520, 41.358868, 37.909687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346760, 41.543877, 37.455223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033070, 41.432362, 37.233494>,  <27.844856, 41.365452, 37.100456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033070, 41.432362, 37.233494>,  <28.346760, 41.543877, 37.455223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033070, 41.432362, 37.233494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021311, 0.880746, -0.473108,
		0.620112, -0.382836, -0.684761,
		-0.784223, -0.278787, -0.554320,
		27.797802, 41.348724, 37.067196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503702, 41.758831, 36.794777>,  <28.346760, 41.543877, 37.455223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503702, 41.758831, 36.794777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.111015, 41.688248, 36.766235>,  <27.875402, 41.645897, 36.749111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.111015, 41.688248, 36.766235>,  <28.503702, 41.758831, 36.794777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111015, 41.688248, 36.766235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119914, 0.864521, -0.488083,
		0.147816, -0.470603, -0.869875,
		-0.981718, -0.176457, -0.071359,
		27.816500, 41.635311, 36.744827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310320, 42.059898, 36.120277>,  <28.503702, 41.758831, 36.794777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310320, 42.059898, 36.120277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.974476, 42.025749, 36.334854>,  <27.772970, 42.005260, 36.463600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.974476, 42.025749, 36.334854>,  <28.310320, 42.059898, 36.120277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974476, 42.025749, 36.334854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304769, 0.891518, -0.335130,
		-0.449636, -0.444868, -0.774545,
		-0.839609, -0.085371, 0.536441,
		27.722593, 42.000137, 36.495785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819328, 42.185211, 35.615025>,  <28.310320, 42.059898, 36.120277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819328, 42.185211, 35.615025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639891, 42.262096, 35.964153>,  <27.532228, 42.308228, 36.173630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.639891, 42.262096, 35.964153>,  <27.819328, 42.185211, 35.615025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639891, 42.262096, 35.964153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303608, 0.885746, -0.351106,
		-0.840586, -0.422499, -0.338983,
		-0.448595, 0.192217, 0.872820,
		27.505312, 42.319763, 36.225998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168516, 42.461021, 35.397636>,  <27.819328, 42.185211, 35.615025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168516, 42.461021, 35.397636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244825, 42.594666, 35.766846>,  <27.290611, 42.674850, 35.988373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.244825, 42.594666, 35.766846>,  <27.168516, 42.461021, 35.397636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244825, 42.594666, 35.766846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319075, 0.910341, -0.263572,
		-0.928330, -0.244232, 0.280273,
		0.190772, 0.334111, 0.923026,
		27.302057, 42.694901, 36.043755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611488, 42.696903, 35.711411>,  <27.168516, 42.461021, 35.397636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611488, 42.696903, 35.711411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913971, 42.887180, 35.891129>,  <27.095461, 43.001347, 35.998959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913971, 42.887180, 35.891129>,  <26.611488, 42.696903, 35.711411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913971, 42.887180, 35.891129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403409, 0.879559, -0.252266,
		-0.515182, 0.009516, 0.857028,
		0.756207, 0.475695, 0.449294,
		27.140833, 43.029888, 36.025917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312078, 43.310722, 35.821926>,  <26.611488, 42.696903, 35.711411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312078, 43.310722, 35.821926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693613, 43.379063, 35.920723>,  <26.922533, 43.420067, 35.980000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693613, 43.379063, 35.920723>,  <26.312078, 43.310722, 35.821926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693613, 43.379063, 35.920723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123994, 0.973080, -0.194271,
		-0.273533, 0.154677, 0.949344,
		0.953837, 0.170852, 0.246991,
		26.979765, 43.430317, 35.994820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.143841, 27.326700, 49.282391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.849766, 27.583958, 49.196724>,  <38.673321, 27.738312, 49.145325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.849766, 27.583958, 49.196724>,  <39.143841, 27.326700, 49.282391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849766, 27.583958, 49.196724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032750, 0.281878, 0.958891,
		0.677073, 0.711978, -0.186170,
		-0.735187, 0.643142, -0.214170,
		38.629211, 27.776901, 49.132473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293125, 27.907242, 49.556473>,  <39.143841, 27.326700, 49.282391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293125, 27.907242, 49.556473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.896912, 27.936422, 49.509945>,  <38.659184, 27.953930, 49.482029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.896912, 27.936422, 49.509945>,  <39.293125, 27.907242, 49.556473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896912, 27.936422, 49.509945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106333, 0.128391, 0.986007,
		0.086863, 0.989037, -0.119418,
		-0.990529, 0.072950, -0.116320,
		38.599754, 27.958307, 49.475048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177505, 28.421991, 50.018486>,  <39.293125, 27.907242, 49.556473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177505, 28.421991, 50.018486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839264, 28.217888, 49.955761>,  <38.636318, 28.095427, 49.918125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.839264, 28.217888, 49.955761>,  <39.177505, 28.421991, 50.018486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839264, 28.217888, 49.955761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159787, -0.038345, 0.986407,
		-0.509334, 0.859167, -0.049108,
		-0.845605, -0.510257, -0.156814,
		38.585583, 28.064812, 49.908718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762062, 28.715796, 50.475914>,  <39.177505, 28.421991, 50.018486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762062, 28.715796, 50.475914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563717, 28.383633, 50.374294>,  <38.444710, 28.184336, 50.313320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563717, 28.383633, 50.374294>,  <38.762062, 28.715796, 50.475914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563717, 28.383633, 50.374294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295536, -0.113718, 0.948540,
		-0.816565, 0.545428, -0.189027,
		-0.495864, -0.830408, -0.254051,
		38.414959, 28.134510, 50.298080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121155, 28.756905, 50.789841>,  <38.762062, 28.715796, 50.475914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121155, 28.756905, 50.789841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155464, 28.365236, 50.716228>,  <38.176052, 28.130236, 50.672062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155464, 28.365236, 50.716228>,  <38.121155, 28.756905, 50.789841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155464, 28.365236, 50.716228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169620, -0.196366, 0.965748,
		-0.981770, -0.051622, -0.182931,
		0.085776, -0.979171, -0.184030,
		38.181198, 28.071486, 50.661018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566288, 28.451826, 51.280006>,  <38.121155, 28.756905, 50.789841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566288, 28.451826, 51.280006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791248, 28.140724, 51.167717>,  <37.926224, 27.954063, 51.100342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.791248, 28.140724, 51.167717>,  <37.566288, 28.451826, 51.280006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791248, 28.140724, 51.167717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365956, -0.538568, 0.758961,
		-0.741475, -0.324104, -0.587513,
		0.562398, -0.777754, -0.280727,
		37.959969, 27.907398, 51.083500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151638, 27.894423, 51.206760>,  <37.566288, 28.451826, 51.280006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151638, 27.894423, 51.206760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520596, 27.752506, 51.267845>,  <37.741970, 27.667356, 51.304497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520596, 27.752506, 51.267845>,  <37.151638, 27.894423, 51.206760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520596, 27.752506, 51.267845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366286, -0.677939, 0.637365,
		-0.122603, -0.643834, -0.755279,
		0.922390, -0.354791, 0.152710,
		37.797314, 27.646069, 51.313660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078602, 27.212286, 51.276566>,  <37.151638, 27.894423, 51.206760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078602, 27.212286, 51.276566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431530, 27.260431, 51.458565>,  <37.643288, 27.289318, 51.567764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431530, 27.260431, 51.458565>,  <37.078602, 27.212286, 51.276566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431530, 27.260431, 51.458565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305377, -0.589211, 0.748048,
		0.358129, -0.798964, -0.483116,
		0.882320, 0.120365, 0.454998,
		37.696224, 27.296541, 51.595066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279495, 26.531847, 51.414394>,  <37.078602, 27.212286, 51.276566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279495, 26.531847, 51.414394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479176, 26.775417, 51.660973>,  <37.598984, 26.921560, 51.808918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479176, 26.775417, 51.660973>,  <37.279495, 26.531847, 51.414394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479176, 26.775417, 51.660973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235147, -0.589527, 0.772764,
		0.833966, -0.530723, -0.151108,
		0.499205, 0.608926, 0.616444,
		37.628937, 26.958096, 51.845905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724129, 26.093718, 51.856792>,  <37.279495, 26.531847, 51.414394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724129, 26.093718, 51.856792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659893, 26.438763, 52.048672>,  <37.621353, 26.645790, 52.163799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659893, 26.438763, 52.048672>,  <37.724129, 26.093718, 51.856792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659893, 26.438763, 52.048672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183129, -0.503604, 0.844303,
		0.969884, 0.047739, 0.238843,
		-0.160589, 0.862615, 0.479695,
		37.611717, 26.697548, 52.192581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045017, 26.040777, 52.624134>,  <37.724129, 26.093718, 51.856792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045017, 26.040777, 52.624134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.770878, 26.331758, 52.610825>,  <37.606392, 26.506348, 52.602840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.770878, 26.331758, 52.610825>,  <38.045017, 26.040777, 52.624134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770878, 26.331758, 52.610825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397811, -0.335736, 0.853831,
		0.609949, 0.598412, 0.519486,
		-0.685353, 0.727451, -0.033273,
		37.565273, 26.549994, 52.600842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072960, 26.257980, 53.225430>,  <38.045017, 26.040777, 52.624134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072960, 26.257980, 53.225430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721073, 26.384996, 53.083858>,  <37.509941, 26.461206, 52.998917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721073, 26.384996, 53.083858>,  <38.072960, 26.257980, 53.225430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721073, 26.384996, 53.083858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460780, -0.385576, 0.799383,
		0.117370, 0.866314, 0.485514,
		-0.879719, 0.317539, -0.353925,
		37.457157, 26.480259, 52.977680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804283, 26.648201, 53.817684>,  <38.072960, 26.257980, 53.225430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804283, 26.648201, 53.817684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551922, 26.504557, 53.542583>,  <37.400505, 26.418371, 53.377525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551922, 26.504557, 53.542583>,  <37.804283, 26.648201, 53.817684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551922, 26.504557, 53.542583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640118, -0.259968, 0.722956,
		-0.438413, 0.896358, -0.065857,
		-0.630907, -0.359110, -0.687748,
		37.362648, 26.396824, 53.336258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188431, 27.158321, 53.767097>,  <37.804283, 26.648201, 53.817684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188431, 27.158321, 53.767097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202839, 26.760340, 53.729645>,  <37.211483, 26.521551, 53.707172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202839, 26.760340, 53.729645>,  <37.188431, 27.158321, 53.767097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202839, 26.760340, 53.729645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586990, -0.096891, 0.803776,
		-0.808793, 0.026013, -0.587518,
		0.036017, -0.994955, -0.093634,
		37.213642, 26.461853, 53.701553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589218, 27.745041, 54.034122>,  <37.188431, 27.158321, 53.767097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589218, 27.745041, 54.034122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296936, 27.948544, 54.216213>,  <37.121567, 28.070646, 54.325470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296936, 27.948544, 54.216213>,  <37.589218, 27.745041, 54.034122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296936, 27.948544, 54.216213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148209, 0.532697, -0.833228,
		-0.666411, -0.676313, -0.313842,
		-0.730705, 0.508758, 0.455230,
		37.077724, 28.101171, 54.352783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079861, 27.861994, 53.533470>,  <37.589218, 27.745041, 54.034122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079861, 27.861994, 53.533470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024834, 28.145548, 53.810181>,  <36.991817, 28.315681, 53.976208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024834, 28.145548, 53.810181>,  <37.079861, 27.861994, 53.533470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024834, 28.145548, 53.810181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283282, 0.641085, -0.713275,
		-0.949119, -0.294090, 0.112623,
		-0.137566, 0.708887, 0.691777,
		36.983562, 28.358213, 54.017715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442680, 28.177334, 53.327576>,  <37.079861, 27.861994, 53.533470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442680, 28.177334, 53.327576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649139, 28.440969, 53.546368>,  <36.773014, 28.599152, 53.677643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.649139, 28.440969, 53.546368>,  <36.442680, 28.177334, 53.327576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649139, 28.440969, 53.546368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180834, 0.708090, -0.682574,
		-0.837191, 0.253397, 0.484666,
		0.516149, 0.659090, 0.546984,
		36.803986, 28.638697, 53.710464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061333, 28.918791, 53.290222>,  <36.442680, 28.177334, 53.327576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061333, 28.918791, 53.290222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446125, 28.975151, 53.383804>,  <36.677002, 29.008966, 53.439953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.446125, 28.975151, 53.383804>,  <36.061333, 28.918791, 53.290222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446125, 28.975151, 53.383804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033434, 0.789439, -0.612918,
		-0.271053, 0.597439, 0.754716,
		0.961984, 0.140900, 0.233955,
		36.734718, 29.017422, 53.453991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170479, 29.691769, 53.283825>,  <36.061333, 28.918791, 53.290222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170479, 29.691769, 53.283825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536652, 29.536694, 53.240578>,  <36.756355, 29.443647, 53.214630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536652, 29.536694, 53.240578>,  <36.170479, 29.691769, 53.283825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536652, 29.536694, 53.240578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207841, 0.685395, -0.697880,
		0.344666, 0.616386, 0.708007,
		0.915427, -0.387689, -0.108122,
		36.811279, 29.420387, 53.208141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624210, 30.248117, 53.509186>,  <36.170479, 29.691769, 53.283825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624210, 30.248117, 53.509186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.842766, 30.000467, 53.283569>,  <36.973900, 29.851877, 53.148201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.842766, 30.000467, 53.283569>,  <36.624210, 30.248117, 53.509186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842766, 30.000467, 53.283569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029160, 0.687109, -0.725969,
		0.837025, 0.380213, 0.393481,
		0.546387, -0.619128, -0.564041,
		37.006683, 29.814730, 53.114357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295765, 30.574968, 53.367767>,  <36.624210, 30.248117, 53.509186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295765, 30.574968, 53.367767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.218483, 30.291487, 53.096352>,  <37.172112, 30.121397, 52.933502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.218483, 30.291487, 53.096352>,  <37.295765, 30.574968, 53.367767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218483, 30.291487, 53.096352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204664, 0.647242, -0.734296,
		0.959575, -0.280743, 0.019994,
		-0.193207, -0.708704, -0.678535,
		37.160522, 30.078875, 52.892792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730927, 30.708981, 52.760006>,  <37.295765, 30.574968, 53.367767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730927, 30.708981, 52.760006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464066, 30.448456, 52.615395>,  <37.303951, 30.292141, 52.528625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464066, 30.448456, 52.615395>,  <37.730927, 30.708981, 52.760006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464066, 30.448456, 52.615395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090816, 0.410595, -0.907284,
		0.739367, -0.638127, -0.214779,
		-0.667150, -0.651311, -0.361532,
		37.263920, 30.253063, 52.506935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955009, 30.642204, 52.086838>,  <37.730927, 30.708981, 52.760006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955009, 30.642204, 52.086838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582668, 30.497591, 52.065639>,  <37.359264, 30.410824, 52.052921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.582668, 30.497591, 52.065639>,  <37.955009, 30.642204, 52.086838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582668, 30.497591, 52.065639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042872, 0.252103, -0.966750,
		0.362874, -0.897629, -0.250170,
		-0.930852, -0.361534, -0.052999,
		37.303413, 30.389132, 52.049740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905304, 30.401236, 51.442249>,  <37.955009, 30.642204, 52.086838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905304, 30.401236, 51.442249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517189, 30.401325, 51.539036>,  <37.284321, 30.401379, 51.597107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517189, 30.401325, 51.539036>,  <37.905304, 30.401236, 51.442249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517189, 30.401325, 51.539036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232725, 0.272893, -0.933471,
		-0.066244, -0.962044, -0.264731,
		-0.970283, 0.000227, 0.241969,
		37.226105, 30.401394, 51.611626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508278, 29.954386, 50.881958>,  <37.905304, 30.401236, 51.442249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508278, 29.954386, 50.881958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290554, 30.234890, 51.066116>,  <37.159920, 30.403193, 51.176613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.290554, 30.234890, 51.066116>,  <37.508278, 29.954386, 50.881958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290554, 30.234890, 51.066116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104787, 0.487684, -0.866709,
		-0.832314, -0.520001, -0.191968,
		-0.544309, 0.701259, 0.460396,
		37.127262, 30.445267, 51.204235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962921, 30.032135, 50.416531>,  <37.508278, 29.954386, 50.881958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962921, 30.032135, 50.416531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943478, 30.352058, 50.655842>,  <36.931812, 30.544012, 50.799431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.943478, 30.352058, 50.655842>,  <36.962921, 30.032135, 50.416531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943478, 30.352058, 50.655842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253125, 0.569572, -0.781994,
		-0.966212, -0.189451, 0.174766,
		-0.048608, 0.799810, 0.598282,
		36.928894, 30.592001, 50.835327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384388, 30.367874, 50.263542>,  <36.962921, 30.032135, 50.416531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384388, 30.367874, 50.263542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613735, 30.645927, 50.436996>,  <36.751343, 30.812759, 50.541069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.613735, 30.645927, 50.436996>,  <36.384388, 30.367874, 50.263542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613735, 30.645927, 50.436996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016403, 0.519433, -0.854354,
		-0.819133, 0.496973, 0.286424,
		0.573369, 0.695131, 0.433637,
		36.785748, 30.854467, 50.567089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006283, 30.828526, 50.161327>,  <36.384388, 30.367874, 50.263542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006283, 30.828526, 50.161327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.344532, 31.019087, 50.257629>,  <36.547482, 31.133425, 50.315411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.344532, 31.019087, 50.257629>,  <36.006283, 30.828526, 50.161327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344532, 31.019087, 50.257629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167929, 0.665574, -0.727194,
		-0.506681, 0.574501, 0.642825,
		0.845621, 0.476404, 0.240758,
		36.598217, 31.162008, 50.329857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505924, 31.219021, 50.617863>,  <36.006283, 30.828526, 50.161327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505924, 31.219021, 50.617863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110958, 31.281385, 50.628407>,  <34.873978, 31.318804, 50.634731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110958, 31.281385, 50.628407>,  <35.505924, 31.219021, 50.617863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110958, 31.281385, 50.628407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056122, -0.501399, 0.863394,
		0.147831, 0.851053, 0.503841,
		-0.987419, 0.155914, 0.026359,
		34.814732, 31.328159, 50.636314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425613, 31.366686, 51.255524>,  <35.505924, 31.219021, 50.617863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425613, 31.366686, 51.255524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046638, 31.307693, 51.141960>,  <34.819252, 31.272299, 51.073822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.046638, 31.307693, 51.141960>,  <35.425613, 31.366686, 51.255524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046638, 31.307693, 51.141960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214153, -0.366927, 0.905264,
		-0.237683, 0.918485, 0.316058,
		-0.947441, -0.147481, -0.283908,
		34.762405, 31.263449, 51.056789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949493, 31.657030, 51.793728>,  <35.425613, 31.366686, 51.255524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949493, 31.657030, 51.793728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718498, 31.390120, 51.605579>,  <34.579899, 31.229973, 51.492691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.718498, 31.390120, 51.605579>,  <34.949493, 31.657030, 51.793728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718498, 31.390120, 51.605579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216149, -0.430626, 0.876265,
		-0.787264, 0.607705, 0.104452,
		-0.577490, -0.667275, -0.470371,
		34.545250, 31.189938, 51.464470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264687, 31.449844, 52.206257>,  <34.949493, 31.657030, 51.793728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264687, 31.449844, 52.206257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337944, 31.158142, 51.942547>,  <34.381897, 30.983120, 51.784321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337944, 31.158142, 51.942547>,  <34.264687, 31.449844, 52.206257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337944, 31.158142, 51.942547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169679, -0.684001, 0.709473,
		-0.968333, -0.018068, -0.249008,
		0.183140, -0.729257, -0.659275,
		34.392887, 30.939365, 51.744766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655338, 31.129904, 52.266689>,  <34.264687, 31.449844, 52.206257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655338, 31.129904, 52.266689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938660, 30.882133, 52.131271>,  <34.108654, 30.733471, 52.050022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.938660, 30.882133, 52.131271>,  <33.655338, 31.129904, 52.266689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938660, 30.882133, 52.131271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251868, -0.669789, 0.698531,
		-0.659430, -0.409516, -0.630436,
		0.708318, -0.619419, -0.338535,
		34.151150, 30.696306, 52.029709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366371, 30.469927, 52.494083>,  <33.655338, 31.129904, 52.266689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366371, 30.469927, 52.494083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730797, 30.340067, 52.392445>,  <33.949451, 30.262150, 52.331459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730797, 30.340067, 52.392445>,  <33.366371, 30.469927, 52.494083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730797, 30.340067, 52.392445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134430, -0.816597, 0.561337,
		-0.389735, -0.477254, -0.787613,
		0.911062, -0.324651, -0.254099,
		34.004116, 30.242672, 52.316216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311840, 29.769365, 52.353359>,  <33.366371, 30.469927, 52.494083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311840, 29.769365, 52.353359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700329, 29.821795, 52.432911>,  <33.933422, 29.853252, 52.480644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700329, 29.821795, 52.432911>,  <33.311840, 29.769365, 52.353359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700329, 29.821795, 52.432911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007884, -0.852206, 0.523147,
		0.238059, -0.506522, -0.828712,
		0.971219, 0.131073, 0.198882,
		33.991695, 29.861116, 52.492577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205715, 29.275408, 51.825760>,  <33.311840, 29.769365, 52.353359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205715, 29.275408, 51.825760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858345, 29.113533, 51.711178>,  <32.649921, 29.016407, 51.642429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858345, 29.113533, 51.711178>,  <33.205715, 29.275408, 51.825760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858345, 29.113533, 51.711178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065203, 0.479516, -0.875108,
		0.491509, -0.778646, -0.390038,
		-0.868429, -0.404691, -0.286456,
		32.597816, 28.992126, 51.625240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280773, 28.797169, 51.276093>,  <33.205715, 29.275408, 51.825760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280773, 28.797169, 51.276093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898388, 28.904936, 51.229542>,  <32.668957, 28.969597, 51.201611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.898388, 28.904936, 51.229542>,  <33.280773, 28.797169, 51.276093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898388, 28.904936, 51.229542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166264, 0.170400, -0.971246,
		-0.241842, -0.947827, -0.207691,
		-0.955965, 0.269420, -0.116380,
		32.611599, 28.985762, 51.194630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083782, 28.550802, 50.627544>,  <33.280773, 28.797169, 51.276093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083782, 28.550802, 50.627544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810555, 28.825752, 50.726276>,  <32.646618, 28.990723, 50.785515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810555, 28.825752, 50.726276>,  <33.083782, 28.550802, 50.627544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810555, 28.825752, 50.726276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041668, 0.374091, -0.926455,
		-0.729162, -0.622550, -0.284172,
		-0.683071, 0.687377, 0.246832,
		32.605633, 29.031965, 50.800327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721565, 28.654156, 49.984077>,  <33.083782, 28.550802, 50.627544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721565, 28.654156, 49.984077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599075, 28.960192, 50.210655>,  <32.525581, 29.143814, 50.346603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599075, 28.960192, 50.210655>,  <32.721565, 28.654156, 49.984077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599075, 28.960192, 50.210655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138033, 0.553057, -0.821629,
		-0.941899, -0.329791, -0.063752,
		-0.306224, 0.765092, 0.566446,
		32.507210, 29.189720, 50.380589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024136, 28.844265, 49.766712>,  <32.721565, 28.654156, 49.984077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024136, 28.844265, 49.766712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195675, 29.155413, 49.950459>,  <32.298599, 29.342100, 50.060707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.195675, 29.155413, 49.950459>,  <32.024136, 28.844265, 49.766712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195675, 29.155413, 49.950459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079695, 0.539088, -0.838471,
		-0.899855, 0.322966, 0.293178,
		0.428846, 0.777867, 0.459362,
		32.324329, 29.388773, 50.088268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746872, 29.355442, 49.492546>,  <32.024136, 28.844265, 49.766712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746872, 29.355442, 49.492546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019672, 29.566536, 49.695080>,  <32.183353, 29.693193, 49.816601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019672, 29.566536, 49.695080>,  <31.746872, 29.355442, 49.492546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019672, 29.566536, 49.695080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057212, 0.728697, -0.682443,
		-0.729111, 0.436458, 0.527164,
		0.682000, 0.527737, 0.506330,
		32.224274, 29.724857, 49.846977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451664, 29.989700, 49.714035>,  <31.746872, 29.355442, 49.492546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451664, 29.989700, 49.714035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845011, 29.991741, 49.641415>,  <32.081020, 29.992966, 49.597843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845011, 29.991741, 49.641415>,  <31.451664, 29.989700, 49.714035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845011, 29.991741, 49.641415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148126, 0.600967, -0.785428,
		0.105099, 0.799257, 0.591728,
		0.983368, 0.005103, -0.181552,
		32.140022, 29.993273, 49.586948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.659088, 26.057735, 52.396915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.583424, 25.704655, 52.224842>,  <34.538025, 25.492805, 52.121597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.583424, 25.704655, 52.224842>,  <34.659088, 26.057735, 52.396915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583424, 25.704655, 52.224842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925955, -0.014529, -0.377356,
		0.326843, -0.469708, 0.820091,
		-0.189162, -0.882703, -0.430179,
		34.526676, 25.439844, 52.095787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094238, 25.550852, 52.165691>,  <34.659088, 26.057735, 52.396915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094238, 25.550852, 52.165691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.417355, 25.558130, 51.930016>,  <35.611225, 25.562498, 51.788609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.417355, 25.558130, 51.930016>,  <35.094238, 25.550852, 52.165691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417355, 25.558130, 51.930016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338957, 0.832088, -0.439019,
		0.482268, 0.554345, 0.678321,
		0.807791, 0.018196, -0.589189,
		35.659691, 25.563589, 51.753258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973701, 26.005434, 51.574020>,  <35.094238, 25.550852, 52.165691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973701, 26.005434, 51.574020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.370110, 25.961554, 51.543427>,  <35.607952, 25.935225, 51.525070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.370110, 25.961554, 51.543427>,  <34.973701, 26.005434, 51.574020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370110, 25.961554, 51.543427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014832, 0.658554, -0.752387,
		0.132907, 0.744494, 0.654265,
		0.991017, -0.109702, -0.076485,
		35.667416, 25.928642, 51.520481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286469, 26.649633, 51.354546>,  <34.973701, 26.005434, 51.574020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286469, 26.649633, 51.354546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.584347, 26.395748, 51.272018>,  <35.763073, 26.243418, 51.222504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.584347, 26.395748, 51.272018>,  <35.286469, 26.649633, 51.354546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584347, 26.395748, 51.272018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072133, 0.383869, -0.920566,
		0.663492, 0.670661, 0.331650,
		0.744697, -0.634712, -0.206317,
		35.807755, 26.205334, 51.210125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714626, 27.034512, 51.008591>,  <35.286469, 26.649633, 51.354546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714626, 27.034512, 51.008591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.803738, 26.657084, 50.910580>,  <35.857204, 26.430626, 50.851772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.803738, 26.657084, 50.910580>,  <35.714626, 27.034512, 51.008591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803738, 26.657084, 50.910580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135331, 0.278846, -0.950752,
		0.965429, 0.178651, 0.189817,
		0.222783, -0.943572, -0.245029,
		35.870571, 26.374012, 50.837070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365734, 27.000278, 50.730644>,  <35.714626, 27.034512, 51.008591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365734, 27.000278, 50.730644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.157665, 26.698366, 50.570778>,  <36.032825, 26.517220, 50.474857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.157665, 26.698366, 50.570778>,  <36.365734, 27.000278, 50.730644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157665, 26.698366, 50.570778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223273, 0.331507, -0.916653,
		0.824362, -0.566049, -0.003918,
		-0.520169, -0.754779, -0.399666,
		36.001614, 26.471933, 50.450878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703960, 26.850849, 50.073799>,  <36.365734, 27.000278, 50.730644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703960, 26.850849, 50.073799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.347565, 26.678144, 50.017628>,  <36.133728, 26.574522, 49.983925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.347565, 26.678144, 50.017628>,  <36.703960, 26.850849, 50.073799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347565, 26.678144, 50.017628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060951, 0.192754, -0.979352,
		0.449913, -0.881153, -0.145425,
		-0.890990, -0.431759, -0.140430,
		36.080269, 26.548616, 49.975498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768871, 26.425636, 49.365231>,  <36.703960, 26.850849, 50.073799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768871, 26.425636, 49.365231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375622, 26.443605, 49.436165>,  <36.139671, 26.454388, 49.478725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.375622, 26.443605, 49.436165>,  <36.768871, 26.425636, 49.365231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375622, 26.443605, 49.436165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165190, 0.198474, -0.966085,
		-0.078597, -0.979076, -0.187704,
		-0.983125, 0.044925, 0.177333,
		36.080685, 26.457083, 49.489365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498680, 26.051598, 48.812321>,  <36.768871, 26.425636, 49.365231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498680, 26.051598, 48.812321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.221542, 26.303885, 48.952133>,  <36.055260, 26.455257, 49.036018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.221542, 26.303885, 48.952133>,  <36.498680, 26.051598, 48.812321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221542, 26.303885, 48.952133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240743, 0.254587, -0.936605,
		-0.679717, -0.733063, -0.024547,
		-0.692840, 0.630717, 0.349527,
		36.013691, 26.493099, 49.056992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845261, 25.943851, 48.469913>,  <36.498680, 26.051598, 48.812321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845261, 25.943851, 48.469913> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810959, 26.309061, 48.629429>,  <35.790379, 26.528187, 48.725140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.810959, 26.309061, 48.629429>,  <35.845261, 25.943851, 48.469913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810959, 26.309061, 48.629429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342679, 0.348812, -0.872297,
		-0.935530, -0.211461, 0.282962,
		-0.085756, 0.913025, 0.398787,
		35.785233, 26.582968, 48.749065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167244, 26.166260, 48.256207>,  <35.845261, 25.943851, 48.469913>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167244, 26.166260, 48.256207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383121, 26.493635, 48.335083>,  <35.512650, 26.690062, 48.382408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383121, 26.493635, 48.335083>,  <35.167244, 26.166260, 48.256207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383121, 26.493635, 48.335083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230924, 0.369173, -0.900214,
		-0.809569, 0.440305, 0.388239,
		0.539696, 0.818440, 0.197194,
		35.545029, 26.739166, 48.394241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746639, 26.670601, 48.092304>,  <35.167244, 26.166260, 48.256207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746639, 26.670601, 48.092304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.102924, 26.851624, 48.075222>,  <35.316696, 26.960238, 48.064972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.102924, 26.851624, 48.075222>,  <34.746639, 26.670601, 48.092304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102924, 26.851624, 48.075222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304557, 0.524385, -0.795151,
		-0.337455, 0.721258, 0.604905,
		0.890712, 0.452556, -0.042708,
		35.370136, 26.987391, 48.062408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306473, 27.116783, 48.617550>,  <34.746639, 26.670601, 48.092304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306473, 27.116783, 48.617550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.920010, 27.218767, 48.633240>,  <33.688133, 27.279957, 48.642654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.920010, 27.218767, 48.633240>,  <34.306473, 27.116783, 48.617550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920010, 27.218767, 48.633240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115169, -0.562411, 0.818798,
		0.230823, 0.786568, 0.572740,
		-0.966156, 0.254960, 0.039229,
		33.630161, 27.295256, 48.645008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175121, 27.279184, 49.330116>,  <34.306473, 27.116783, 48.617550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175121, 27.279184, 49.330116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.819973, 27.209246, 49.159885>,  <33.606884, 27.167282, 49.057747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.819973, 27.209246, 49.159885>,  <34.175121, 27.279184, 49.330116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819973, 27.209246, 49.159885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310133, -0.455825, 0.834291,
		-0.339863, 0.872727, 0.350487,
		-0.887869, -0.174847, -0.425579,
		33.553612, 27.156792, 49.032211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803558, 27.309586, 49.865921>,  <34.175121, 27.279184, 49.330116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803558, 27.309586, 49.865921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586262, 27.100201, 49.603355>,  <33.455883, 26.974571, 49.445816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586262, 27.100201, 49.603355>,  <33.803558, 27.309586, 49.865921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586262, 27.100201, 49.603355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461392, -0.467058, 0.754303,
		-0.701430, 0.712633, 0.012206,
		-0.543243, -0.523460, -0.656412,
		33.423290, 26.943163, 49.406433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035419, 27.427834, 49.987484>,  <33.803558, 27.309586, 49.865921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035419, 27.427834, 49.987484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058559, 27.076214, 49.798199>,  <33.072445, 26.865242, 49.684628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058559, 27.076214, 49.798199>,  <33.035419, 27.427834, 49.987484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058559, 27.076214, 49.798199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455235, -0.445084, 0.771143,
		-0.888490, 0.170811, -0.425921,
		0.057851, -0.879047, -0.473212,
		33.075916, 26.812500, 49.656235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367107, 27.061081, 50.223843>,  <33.035419, 27.427834, 49.987484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367107, 27.061081, 50.223843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.608971, 26.780628, 50.072681>,  <32.754089, 26.612356, 49.981987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.608971, 26.780628, 50.072681>,  <32.367107, 27.061081, 50.223843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608971, 26.780628, 50.072681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379114, -0.670611, 0.637615,
		-0.700477, -0.242269, -0.671296,
		0.604653, -0.701132, -0.377900,
		32.790367, 26.570290, 49.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929466, 26.502701, 50.093910>,  <32.367107, 27.061081, 50.223843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929466, 26.502701, 50.093910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.296177, 26.343472, 50.080925>,  <32.516205, 26.247934, 50.073135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.296177, 26.343472, 50.080925>,  <31.929466, 26.502701, 50.093910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296177, 26.343472, 50.080925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329214, -0.799197, 0.502894,
		-0.226130, -0.450357, -0.863738,
		0.916779, -0.398074, -0.032459,
		32.571209, 26.224049, 50.071186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837677, 25.767685, 49.911701>,  <31.929466, 26.502701, 50.093910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837677, 25.767685, 49.911701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.169529, 25.833876, 50.124992>,  <32.368641, 25.873590, 50.252968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.169529, 25.833876, 50.124992>,  <31.837677, 25.767685, 49.911701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169529, 25.833876, 50.124992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258462, -0.732734, 0.629522,
		0.494883, -0.660090, -0.565130,
		0.829631, 0.165475, 0.533226,
		32.418419, 25.883518, 50.284962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066921, 25.081470, 50.267200>,  <31.837677, 25.767685, 49.911701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066921, 25.081470, 50.267200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.298294, 25.356220, 50.443207>,  <32.437119, 25.521070, 50.548809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.298294, 25.356220, 50.443207>,  <32.066921, 25.081470, 50.267200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298294, 25.356220, 50.443207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091749, -0.590775, 0.801603,
		0.810551, -0.423305, -0.404746,
		0.578436, 0.686875, 0.440016,
		32.471825, 25.562283, 50.575211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587078, 24.651310, 50.620129>,  <32.066921, 25.081470, 50.267200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587078, 24.651310, 50.620129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.578308, 25.018362, 50.778862>,  <32.573048, 25.238592, 50.874104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.578308, 25.018362, 50.778862>,  <32.587078, 24.651310, 50.620129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578308, 25.018362, 50.778862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067617, -0.394658, 0.916336,
		0.997470, 0.046925, -0.053394,
		-0.021926, 0.917629, 0.396833,
		32.571732, 25.293652, 50.897911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942055, 24.560961, 51.145741>,  <32.587078, 24.651310, 50.620129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942055, 24.560961, 51.145741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.769005, 24.906876, 51.247704>,  <32.665176, 25.114426, 51.308884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.769005, 24.906876, 51.247704>,  <32.942055, 24.560961, 51.145741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769005, 24.906876, 51.247704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023502, -0.271824, 0.962060,
		0.901269, 0.422200, 0.097273,
		-0.432622, 0.864789, 0.254909,
		32.639217, 25.166311, 51.324177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289448, 24.876467, 51.644344>,  <32.942055, 24.560961, 51.145741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289448, 24.876467, 51.644344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.914822, 25.010460, 51.685596>,  <32.690048, 25.090857, 51.710346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.914822, 25.010460, 51.685596>,  <33.289448, 24.876467, 51.644344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914822, 25.010460, 51.685596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015280, -0.332981, 0.942810,
		0.350165, 0.881425, 0.316976,
		-0.936563, 0.334982, 0.103130,
		32.633854, 25.110954, 51.716534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309155, 25.170681, 52.292789>,  <33.289448, 24.876467, 51.644344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309155, 25.170681, 52.292789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.917870, 25.143946, 52.214165>,  <32.683098, 25.127905, 52.166988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.917870, 25.143946, 52.214165>,  <33.309155, 25.170681, 52.292789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917870, 25.143946, 52.214165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163007, -0.339106, 0.926518,
		-0.128582, 0.938371, 0.320822,
		-0.978210, -0.066837, -0.196563,
		32.624405, 25.123894, 52.155197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015316, 25.419537, 52.870911>,  <33.309155, 25.170681, 52.292789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015316, 25.419537, 52.870911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.724033, 25.211857, 52.691959>,  <32.549263, 25.087250, 52.584587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.724033, 25.211857, 52.691959>,  <33.015316, 25.419537, 52.870911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724033, 25.211857, 52.691959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262037, -0.392252, 0.881746,
		-0.633286, 0.759323, 0.149591,
		-0.728207, -0.519199, -0.447378,
		32.505569, 25.056097, 52.557747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225830, 25.632206, 53.127274>,  <33.015316, 25.419537, 52.870911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225830, 25.632206, 53.127274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261116, 25.247589, 53.023228>,  <32.282288, 25.016819, 52.960800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.261116, 25.247589, 53.023228>,  <32.225830, 25.632206, 53.127274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261116, 25.247589, 53.023228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318257, -0.274652, 0.907348,
		-0.943891, 0.002738, -0.330246,
		0.088218, -0.961540, -0.260112,
		32.287582, 24.959127, 52.945194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599670, 26.208275, 53.254730>,  <32.225830, 25.632206, 53.127274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599670, 26.208275, 53.254730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.567963, 26.575300, 53.410576>,  <32.548939, 26.795515, 53.504082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.567963, 26.575300, 53.410576>,  <32.599670, 26.208275, 53.254730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567963, 26.575300, 53.410576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424930, 0.322448, -0.845850,
		-0.901749, -0.232609, 0.364338,
		-0.079272, 0.917562, 0.389610,
		32.544182, 26.850569, 53.527458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934822, 26.578293, 53.029202>,  <32.599670, 26.208275, 53.254730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934822, 26.578293, 53.029202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153393, 26.897701, 53.130219>,  <32.284534, 27.089348, 53.190830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.153393, 26.897701, 53.130219>,  <31.934822, 26.578293, 53.029202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153393, 26.897701, 53.130219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399079, 0.513364, -0.759733,
		-0.736311, 0.314353, 0.599190,
		0.546427, 0.798524, 0.252544,
		32.317322, 27.137259, 53.205982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491405, 27.139105, 52.947384>,  <31.934822, 26.578293, 53.029202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491405, 27.139105, 52.947384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868896, 27.271370, 52.944950>,  <32.095390, 27.350729, 52.943489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.868896, 27.271370, 52.944950>,  <31.491405, 27.139105, 52.947384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868896, 27.271370, 52.944950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238583, 0.667953, -0.704924,
		-0.229027, 0.666709, 0.709257,
		0.943729, 0.330663, -0.006086,
		32.152016, 27.370569, 52.943123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397264, 27.856728, 52.866215>,  <31.491405, 27.139105, 52.947384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397264, 27.856728, 52.866215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.783112, 27.823250, 52.766209>,  <32.014618, 27.803164, 52.706203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.783112, 27.823250, 52.766209>,  <31.397264, 27.856728, 52.866215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783112, 27.823250, 52.766209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102066, 0.755801, -0.646797,
		0.243096, 0.649430, 0.720517,
		0.964617, -0.083694, -0.250017,
		32.072498, 27.798141, 52.691204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640846, 28.521456, 52.935410>,  <31.397264, 27.856728, 52.866215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640846, 28.521456, 52.935410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.902725, 28.322489, 52.707745>,  <32.059853, 28.203110, 52.571144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.902725, 28.322489, 52.707745>,  <31.640846, 28.521456, 52.935410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902725, 28.322489, 52.707745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064326, 0.713578, -0.697616,
		0.753150, 0.493339, 0.435180,
		0.654696, -0.497416, -0.569166,
		32.099133, 28.173264, 52.536995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192844, 28.991680, 52.812744>,  <31.640846, 28.521456, 52.935410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192844, 28.991680, 52.812744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199928, 28.716652, 52.522381>,  <32.204178, 28.551636, 52.348164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199928, 28.716652, 52.522381>,  <32.192844, 28.991680, 52.812744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199928, 28.716652, 52.522381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169882, 0.717530, -0.675492,
		0.985305, -0.111354, 0.129514,
		0.017711, -0.687568, -0.725904,
		32.205242, 28.510382, 52.304611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734985, 29.179361, 52.437614>,  <32.192844, 28.991680, 52.812744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734985, 29.179361, 52.437614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.568890, 28.927275, 52.175194>,  <32.469231, 28.776022, 52.017742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.568890, 28.927275, 52.175194>,  <32.734985, 29.179361, 52.437614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568890, 28.927275, 52.175194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268713, 0.604011, -0.750309,
		0.869119, -0.487849, -0.081463,
		-0.415242, -0.630217, -0.656049,
		32.444317, 28.738209, 51.978378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578369, 29.044735, 52.464928>,  <32.734985, 29.179361, 52.437614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578369, 29.044735, 52.464928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.883518, 29.256767, 52.613003>,  <34.066608, 29.383987, 52.701847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.883518, 29.256767, 52.613003>,  <33.578369, 29.044735, 52.464928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883518, 29.256767, 52.613003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169114, -0.716223, 0.677071,
		0.624042, -0.453914, -0.636030,
		0.762871, 0.530082, 0.370190,
		34.112381, 29.415792, 52.724060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135967, 28.596991, 52.501408>,  <33.578369, 29.044735, 52.464928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135967, 28.596991, 52.501408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.233128, 28.887501, 52.758633>,  <34.291424, 29.061806, 52.912968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.233128, 28.887501, 52.758633>,  <34.135967, 28.596991, 52.501408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233128, 28.887501, 52.758633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329408, -0.685277, 0.649528,
		0.912409, 0.054057, -0.405695,
		0.242902, 0.726274, 0.643059,
		34.306000, 29.105383, 52.951550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885639, 28.543182, 52.691750>,  <34.135967, 28.596991, 52.501408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885639, 28.543182, 52.691750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.705116, 28.764196, 52.972042>,  <34.596802, 28.896805, 53.140217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.705116, 28.764196, 52.972042>,  <34.885639, 28.543182, 52.691750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705116, 28.764196, 52.972042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282910, -0.656148, 0.699594,
		0.846333, 0.513978, 0.139809,
		-0.451311, 0.552536, 0.700729,
		34.569721, 28.929956, 53.182262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305725, 28.613789, 53.238434>,  <34.885639, 28.543182, 52.691750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305725, 28.613789, 53.238434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991108, 28.746691, 53.446648>,  <34.802338, 28.826433, 53.571575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.991108, 28.746691, 53.446648>,  <35.305725, 28.613789, 53.238434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991108, 28.746691, 53.446648> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325073, -0.493912, 0.806460,
		0.525051, 0.803527, 0.280475,
		-0.786543, 0.332258, 0.520534,
		34.755146, 28.846369, 53.602806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590652, 28.916241, 53.885159>,  <35.305725, 28.613789, 53.238434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590652, 28.916241, 53.885159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.211338, 28.803671, 53.943882>,  <34.983749, 28.736130, 53.979118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.211338, 28.803671, 53.943882>,  <35.590652, 28.916241, 53.885159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211338, 28.803671, 53.943882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280753, -0.527860, 0.801587,
		-0.148089, 0.801352, 0.579573,
		-0.948287, -0.281423, 0.146812,
		34.926853, 28.719244, 53.987926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602787, 28.978289, 54.620441>,  <35.590652, 28.916241, 53.885159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602787, 28.978289, 54.620441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278683, 28.763195, 54.527206>,  <35.084221, 28.634140, 54.471268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.278683, 28.763195, 54.527206>,  <35.602787, 28.978289, 54.620441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278683, 28.763195, 54.527206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169971, -0.596215, 0.784626,
		-0.560887, 0.596132, 0.574486,
		-0.810257, -0.537732, -0.233084,
		35.035606, 28.601875, 54.457283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374222, 28.803352, 55.246044>,  <35.602787, 28.978289, 54.620441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374222, 28.803352, 55.246044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186623, 28.545668, 55.004372>,  <35.074062, 28.391056, 54.859367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.186623, 28.545668, 55.004372>,  <35.374222, 28.803352, 55.246044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186623, 28.545668, 55.004372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115783, -0.723021, 0.681054,
		-0.875578, 0.249459, 0.413684,
		-0.468997, -0.644213, -0.604178,
		35.045925, 28.352404, 54.823120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993748, 28.352959, 55.681961>,  <35.374222, 28.803352, 55.246044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993748, 28.352959, 55.681961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.048199, 28.164463, 55.333385>,  <35.080868, 28.051367, 55.124241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.048199, 28.164463, 55.333385>,  <34.993748, 28.352959, 55.681961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048199, 28.164463, 55.333385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347827, -0.800896, 0.487424,
		-0.927624, -0.369461, 0.054885,
		0.136127, -0.471237, -0.871438,
		35.089039, 28.023092, 55.071953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606026, 27.746544, 55.735672>,  <34.993748, 28.352959, 55.681961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606026, 27.746544, 55.735672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.886166, 27.672182, 55.460003>,  <35.054249, 27.627565, 55.294601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.886166, 27.672182, 55.460003>,  <34.606026, 27.746544, 55.735672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886166, 27.672182, 55.460003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332128, -0.769740, 0.545153,
		-0.631828, -0.610688, -0.477340,
		0.700346, -0.185905, -0.689169,
		35.096268, 27.616411, 55.253250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.308128, 33.533264, 40.872158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659847, 33.475445, 41.053684>,  <36.870876, 33.440754, 41.162601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659847, 33.475445, 41.053684>,  <36.308128, 33.533264, 40.872158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659847, 33.475445, 41.053684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469084, -0.097823, 0.877719,
		-0.082463, -0.984653, -0.153812,
		0.879295, -0.144530, 0.453819,
		36.923634, 33.432079, 41.189827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095711, 33.137405, 41.357418>,  <36.308128, 33.533264, 40.872158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095711, 33.137405, 41.357418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468395, 33.225788, 41.472721>,  <36.692005, 33.278816, 41.541904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468395, 33.225788, 41.472721>,  <36.095711, 33.137405, 41.357418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468395, 33.225788, 41.472721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240422, -0.219688, 0.945481,
		0.272239, -0.950218, -0.151562,
		0.931710, 0.220958, 0.288261,
		36.747910, 33.292076, 41.559200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261635, 32.615658, 41.936268>,  <36.095711, 33.137405, 41.357418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261635, 32.615658, 41.936268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515579, 32.922047, 41.976723>,  <36.667946, 33.105881, 42.000996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515579, 32.922047, 41.976723>,  <36.261635, 32.615658, 41.936268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515579, 32.922047, 41.976723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228445, 0.061051, 0.971641,
		0.738080, -0.639963, 0.213743,
		0.634863, 0.765977, 0.101136,
		36.706039, 33.151840, 42.007065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641201, 32.532330, 42.460087>,  <36.261635, 32.615658, 41.936268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641201, 32.532330, 42.460087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647324, 32.930740, 42.425011>,  <36.650997, 33.169788, 42.403965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647324, 32.930740, 42.425011>,  <36.641201, 32.532330, 42.460087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647324, 32.930740, 42.425011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343915, 0.087591, 0.934906,
		0.938876, 0.015851, 0.343891,
		0.015303, 0.996030, -0.087688,
		36.651913, 33.229549, 42.398705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949368, 32.780827, 43.070419>,  <36.641201, 32.532330, 42.460087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949368, 32.780827, 43.070419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761784, 33.110817, 42.944248>,  <36.649231, 33.308811, 42.868546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761784, 33.110817, 42.944248>,  <36.949368, 32.780827, 43.070419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761784, 33.110817, 42.944248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458578, 0.077787, 0.885243,
		0.754838, 0.559793, 0.341835,
		-0.468963, 0.824973, -0.315425,
		36.621094, 33.358311, 42.849621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125599, 33.273602, 43.509064>,  <36.949368, 32.780827, 43.070419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125599, 33.273602, 43.509064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780243, 33.407578, 43.358131>,  <36.573029, 33.487965, 43.267570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780243, 33.407578, 43.358131>,  <37.125599, 33.273602, 43.509064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780243, 33.407578, 43.358131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407294, -0.021293, 0.913049,
		0.297784, 0.941998, 0.154804,
		-0.863387, 0.334942, -0.377329,
		36.521225, 33.508060, 43.244934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819920, 33.599121, 44.033054>,  <37.125599, 33.273602, 43.509064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819920, 33.599121, 44.033054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506969, 33.579788, 43.784683>,  <36.319199, 33.568188, 43.635658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506969, 33.579788, 43.784683>,  <36.819920, 33.599121, 44.033054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506969, 33.579788, 43.784683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618973, 0.170806, 0.766615,
		0.069009, 0.984119, -0.163549,
		-0.782375, -0.048329, -0.620930,
		36.272259, 33.565289, 43.598404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502155, 34.162029, 44.232868>,  <36.819920, 33.599121, 44.033054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502155, 34.162029, 44.232868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227261, 33.928871, 44.059464>,  <36.062325, 33.788975, 43.955421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227261, 33.928871, 44.059464>,  <36.502155, 34.162029, 44.232868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227261, 33.928871, 44.059464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627746, 0.176220, 0.758210,
		-0.365563, 0.793208, -0.487016,
		-0.687240, -0.582895, -0.433513,
		36.021088, 33.754002, 43.929409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807442, 34.513477, 44.266907>,  <36.502155, 34.162029, 44.232868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807442, 34.513477, 44.266907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743126, 34.120747, 44.226570>,  <35.704536, 33.885109, 44.202366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743126, 34.120747, 44.226570>,  <35.807442, 34.513477, 44.266907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743126, 34.120747, 44.226570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552117, 0.004785, 0.833753,
		-0.818115, 0.189739, -0.542850,
		-0.160793, -0.981823, -0.100844,
		35.694889, 33.826199, 44.196316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147060, 34.521595, 44.440033>,  <35.807442, 34.513477, 44.266907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147060, 34.521595, 44.440033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243053, 34.133869, 44.461308>,  <35.300652, 33.901234, 44.474072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243053, 34.133869, 44.461308>,  <35.147060, 34.521595, 44.440033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243053, 34.133869, 44.461308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631436, -0.114248, 0.766965,
		-0.737357, -0.217643, -0.639481,
		0.239984, -0.969319, 0.053186,
		35.315048, 33.843075, 44.477264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577179, 34.156998, 44.586006>,  <35.147060, 34.521595, 44.440033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577179, 34.156998, 44.586006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857883, 33.890766, 44.687622>,  <35.026306, 33.731026, 44.748592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857883, 33.890766, 44.687622>,  <34.577179, 34.156998, 44.586006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857883, 33.890766, 44.687622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519291, -0.233773, 0.822002,
		-0.487722, -0.708767, -0.509683,
		0.701758, -0.665582, 0.254040,
		35.068413, 33.691093, 44.763836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248489, 33.535385, 44.761173>,  <34.577179, 34.156998, 44.586006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248489, 33.535385, 44.761173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597435, 33.547382, 44.956352>,  <34.806801, 33.554581, 45.073460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597435, 33.547382, 44.956352>,  <34.248489, 33.535385, 44.761173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597435, 33.547382, 44.956352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441817, -0.378853, 0.813184,
		0.209251, -0.924970, -0.317244,
		0.872360, 0.029996, 0.487943,
		34.859142, 33.556381, 45.102734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152843, 32.896172, 44.386860>,  <34.248489, 33.535385, 44.761173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152843, 32.896172, 44.386860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794147, 32.739117, 44.305176>,  <33.578930, 32.644886, 44.256165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794147, 32.739117, 44.305176>,  <34.152843, 32.896172, 44.386860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794147, 32.739117, 44.305176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099305, 0.271150, -0.957401,
		0.431282, -0.878815, -0.204160,
		-0.896736, -0.392635, -0.204212,
		33.525127, 32.621326, 44.243912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236591, 32.437611, 43.778625>,  <34.152843, 32.896172, 44.386860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236591, 32.437611, 43.778625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843849, 32.508003, 43.806889>,  <33.608204, 32.550240, 43.823845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843849, 32.508003, 43.806889>,  <34.236591, 32.437611, 43.778625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843849, 32.508003, 43.806889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037630, 0.184372, -0.982136,
		-0.185869, -0.966973, -0.174403,
		-0.981854, 0.175986, 0.070656,
		33.549294, 32.560799, 43.828087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985043, 32.145000, 43.166973>,  <34.236591, 32.437611, 43.778625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985043, 32.145000, 43.166973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689522, 32.387142, 43.285450>,  <33.512211, 32.532425, 43.356537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689522, 32.387142, 43.285450>,  <33.985043, 32.145000, 43.166973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689522, 32.387142, 43.285450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180655, 0.245519, -0.952410,
		-0.649262, -0.757146, -0.072030,
		-0.738798, 0.605351, 0.296188,
		33.467884, 32.568748, 43.374306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451832, 31.992907, 42.741886>,  <33.985043, 32.145000, 43.166973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451832, 31.992907, 42.741886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358376, 32.352531, 42.889992>,  <33.302299, 32.568306, 42.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358376, 32.352531, 42.889992>,  <33.451832, 31.992907, 42.741886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358376, 32.352531, 42.889992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188744, 0.331622, -0.924339,
		-0.953827, -0.285850, 0.092211,
		-0.233643, 0.899065, 0.370262,
		33.288284, 32.622250, 43.001072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871227, 32.166306, 42.401524>,  <33.451832, 31.992907, 42.741886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871227, 32.166306, 42.401524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991627, 32.529011, 42.519630>,  <33.063866, 32.746632, 42.590496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991627, 32.529011, 42.519630>,  <32.871227, 32.166306, 42.401524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991627, 32.529011, 42.519630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214788, 0.366137, -0.905434,
		-0.929120, 0.209117, 0.304969,
		0.301002, 0.906760, 0.295269,
		33.081928, 32.801041, 42.608212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317787, 32.583736, 42.407738>,  <32.871227, 32.166306, 42.401524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317787, 32.583736, 42.407738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627338, 32.837032, 42.403259>,  <32.813068, 32.989010, 42.400574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627338, 32.837032, 42.403259>,  <32.317787, 32.583736, 42.407738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627338, 32.837032, 42.403259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511627, 0.614642, -0.600377,
		-0.373298, 0.470347, 0.799639,
		0.773877, 0.633237, -0.011198,
		32.859501, 33.027004, 42.399899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014694, 33.293056, 42.529564>,  <32.317787, 32.583736, 42.407738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014694, 33.293056, 42.529564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372883, 33.374279, 42.371120>,  <32.587795, 33.423012, 42.276054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372883, 33.374279, 42.371120>,  <32.014694, 33.293056, 42.529564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372883, 33.374279, 42.371120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437789, 0.562676, -0.701239,
		0.080489, 0.801350, 0.592756,
		0.895468, 0.203060, -0.396111,
		32.641521, 33.435196, 42.252289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095470, 33.974152, 42.658489>,  <32.014694, 33.293056, 42.529564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095470, 33.974152, 42.658489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306061, 33.852852, 42.340782>,  <32.432415, 33.780071, 42.150158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306061, 33.852852, 42.340782>,  <32.095470, 33.974152, 42.658489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306061, 33.852852, 42.340782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520407, 0.623814, -0.583123,
		0.672307, 0.720344, 0.170610,
		0.526478, -0.303251, -0.794267,
		32.464005, 33.761875, 42.102501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290001, 34.590733, 42.168034>,  <32.095470, 33.974152, 42.658489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290001, 34.590733, 42.168034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319279, 34.265381, 41.937187>,  <32.336845, 34.070171, 41.798679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319279, 34.265381, 41.937187>,  <32.290001, 34.590733, 42.168034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319279, 34.265381, 41.937187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375825, 0.513512, -0.771402,
		0.923795, 0.273360, -0.268099,
		0.073198, -0.813375, -0.577116,
		32.341240, 34.021370, 41.764053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399384, 34.898983, 41.566856>,  <32.290001, 34.590733, 42.168034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399384, 34.898983, 41.566856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316444, 34.525513, 41.450062>,  <32.266682, 34.301430, 41.379986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316444, 34.525513, 41.450062>,  <32.399384, 34.898983, 41.566856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316444, 34.525513, 41.450062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150505, 0.325366, -0.933534,
		0.966621, -0.149618, -0.207986,
		-0.207345, -0.933677, -0.291987,
		32.254242, 34.245411, 41.362465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828773, 34.791382, 40.937855>,  <32.399384, 34.898983, 41.566856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828773, 34.791382, 40.937855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524677, 34.532097, 40.955059>,  <32.342220, 34.376526, 40.965382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524677, 34.532097, 40.955059>,  <32.828773, 34.791382, 40.937855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524677, 34.532097, 40.955059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297854, 0.288958, -0.909828,
		0.577332, -0.704503, -0.412751,
		-0.760244, -0.648212, 0.043014,
		32.296604, 34.337635, 40.967964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808571, 34.512516, 40.288353>,  <32.828773, 34.791382, 40.937855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808571, 34.512516, 40.288353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460461, 34.357410, 40.409851>,  <32.251595, 34.264347, 40.482750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460461, 34.357410, 40.409851>,  <32.808571, 34.512516, 40.288353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460461, 34.357410, 40.409851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349637, 0.051958, -0.935444,
		0.346949, -0.920293, -0.180795,
		-0.870276, -0.387764, 0.303741,
		32.199379, 34.241081, 40.500973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617821, 33.986725, 39.764469>,  <32.808571, 34.512516, 40.288353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617821, 33.986725, 39.764469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295048, 34.115494, 39.962551>,  <32.101383, 34.192757, 40.081398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295048, 34.115494, 39.962551>,  <32.617821, 33.986725, 39.764469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295048, 34.115494, 39.962551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469128, 0.160067, -0.868503,
		-0.358859, -0.933136, 0.021861,
		-0.806932, 0.321925, 0.495202,
		32.052967, 34.212070, 40.111111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998316, 33.641621, 39.417007>,  <32.617821, 33.986725, 39.764469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998316, 33.641621, 39.417007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893154, 33.982319, 39.598297>,  <31.830057, 34.186737, 39.707069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893154, 33.982319, 39.598297>,  <31.998316, 33.641621, 39.417007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893154, 33.982319, 39.598297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469276, 0.297551, -0.831410,
		-0.843007, -0.431268, 0.321476,
		-0.262905, 0.851746, 0.453221,
		31.814283, 34.237843, 39.734264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332199, 33.063267, 38.953388>,  <31.998316, 33.641621, 39.417007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332199, 33.063267, 38.953388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140598, 32.727261, 39.055317>,  <32.025639, 32.525658, 39.116474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140598, 32.727261, 39.055317>,  <32.332199, 33.063267, 38.953388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140598, 32.727261, 39.055317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867223, -0.497802, -0.010841,
		0.135957, 0.215793, 0.966928,
		-0.478999, -0.840016, 0.254820,
		31.996899, 32.475254, 39.131763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027882, 32.912186, 38.948547>,  <32.332199, 33.063267, 38.953388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027882, 32.912186, 38.948547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156597, 32.551731, 38.832340>,  <33.233826, 32.335457, 38.762615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156597, 32.551731, 38.832340>,  <33.027882, 32.912186, 38.948547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156597, 32.551731, 38.832340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042573, -0.320296, 0.946361,
		-0.945853, -0.292163, -0.141433,
		0.321792, -0.901139, -0.290514,
		33.253136, 32.281391, 38.745186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563736, 32.355934, 39.255547>,  <33.027882, 32.912186, 38.948547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563736, 32.355934, 39.255547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904057, 32.145741, 39.255306>,  <33.108250, 32.019623, 39.255161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904057, 32.145741, 39.255306>,  <32.563736, 32.355934, 39.255547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904057, 32.145741, 39.255306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196873, -0.319813, 0.926802,
		-0.487211, -0.788408, -0.375551,
		0.850803, -0.525484, -0.000600,
		33.159298, 31.988096, 39.255127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525105, 31.511129, 39.277779>,  <32.563736, 32.355934, 39.255547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525105, 31.511129, 39.277779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858101, 31.646090, 39.453560>,  <33.057899, 31.727066, 39.559029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858101, 31.646090, 39.453560>,  <32.525105, 31.511129, 39.277779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858101, 31.646090, 39.453560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258007, -0.465840, 0.846419,
		0.490300, -0.818018, -0.300755,
		0.832489, 0.337402, 0.439455,
		33.107849, 31.747311, 39.585396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753860, 30.935606, 39.698925>,  <32.525105, 31.511129, 39.277779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753860, 30.935606, 39.698925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937569, 31.257374, 39.849644>,  <33.047794, 31.450436, 39.940075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937569, 31.257374, 39.849644>,  <32.753860, 30.935606, 39.698925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937569, 31.257374, 39.849644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179771, -0.499571, 0.847414,
		0.869914, -0.321458, -0.374052,
		0.459274, 0.804421, 0.376795,
		33.075352, 31.498699, 39.962681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364555, 30.630733, 40.011543>,  <32.753860, 30.935606, 39.698925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364555, 30.630733, 40.011543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315262, 30.976440, 40.206627>,  <33.285686, 31.183865, 40.323677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315262, 30.976440, 40.206627>,  <33.364555, 30.630733, 40.011543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315262, 30.976440, 40.206627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174886, -0.464849, 0.867946,
		0.976846, 0.192251, -0.093865,
		-0.123230, 0.864265, 0.487708,
		33.278294, 31.235720, 40.352940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777180, 30.531139, 40.557800>,  <33.364555, 30.630733, 40.011543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777180, 30.531139, 40.557800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567467, 30.853277, 40.668468>,  <33.441639, 31.046560, 40.734867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567467, 30.853277, 40.668468>,  <33.777180, 30.531139, 40.557800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567467, 30.853277, 40.668468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021242, -0.337168, 0.941205,
		0.851279, 0.487580, 0.193879,
		-0.524283, 0.805347, 0.276667,
		33.410183, 31.094881, 40.751469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199280, 30.746374, 41.162949>,  <33.777180, 30.531139, 40.557800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199280, 30.746374, 41.162949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822071, 30.873999, 41.200695>,  <33.595745, 30.950573, 41.223343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822071, 30.873999, 41.200695>,  <34.199280, 30.746374, 41.162949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822071, 30.873999, 41.200695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058306, -0.437686, 0.897236,
		0.327575, 0.840613, 0.431352,
		-0.943025, 0.319062, 0.094362,
		33.539165, 30.969717, 41.229004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179073, 31.067732, 41.853207>,  <34.199280, 30.746374, 41.162949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179073, 31.067732, 41.853207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802113, 30.987562, 41.746094>,  <33.575935, 30.939461, 41.681824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802113, 30.987562, 41.746094>,  <34.179073, 31.067732, 41.853207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802113, 30.987562, 41.746094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181560, -0.365873, 0.912783,
		-0.280918, 0.908828, 0.308410,
		-0.942402, -0.200422, -0.267787,
		33.519394, 30.927435, 41.665756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743061, 31.377567, 42.394199>,  <34.179073, 31.067732, 41.853207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743061, 31.377567, 42.394199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517391, 31.096745, 42.220383>,  <33.381989, 30.928251, 42.116093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517391, 31.096745, 42.220383>,  <33.743061, 31.377567, 42.394199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517391, 31.096745, 42.220383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220389, -0.379155, 0.898705,
		-0.795701, 0.602791, 0.059182,
		-0.564171, -0.702057, -0.434542,
		33.348141, 30.886127, 42.090019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287277, 31.319815, 42.914398>,  <33.743061, 31.377567, 42.394199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287277, 31.319815, 42.914398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205303, 31.012131, 42.672302>,  <33.156120, 30.827520, 42.527042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205303, 31.012131, 42.672302>,  <33.287277, 31.319815, 42.914398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205303, 31.012131, 42.672302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363593, -0.514291, 0.776727,
		-0.908737, 0.379238, -0.174285,
		-0.204931, -0.769209, -0.605244,
		33.143826, 30.781368, 42.490730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645390, 31.050966, 43.223583>,  <33.287277, 31.319815, 42.914398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645390, 31.050966, 43.223583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817039, 30.760323, 43.008965>,  <32.920029, 30.585936, 42.880192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817039, 30.760323, 43.008965>,  <32.645390, 31.050966, 43.223583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817039, 30.760323, 43.008965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229614, -0.662267, 0.713218,
		-0.873573, -0.182860, -0.451035,
		0.429125, -0.726611, -0.536551,
		32.945778, 30.542339, 42.848000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171898, 30.565386, 43.154655>,  <32.645390, 31.050966, 43.223583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171898, 30.565386, 43.154655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528839, 30.388041, 43.120857>,  <32.743004, 30.281633, 43.100578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528839, 30.388041, 43.120857>,  <32.171898, 30.565386, 43.154655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528839, 30.388041, 43.120857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209887, -0.573369, 0.791957,
		-0.399569, -0.688970, -0.604702,
		0.892352, -0.443360, -0.084494,
		32.796543, 30.255032, 43.095509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003841, 29.877617, 43.436546>,  <32.171898, 30.565386, 43.154655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003841, 29.877617, 43.436546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403721, 29.882078, 43.427765>,  <32.643646, 29.884756, 43.422497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403721, 29.882078, 43.427765>,  <32.003841, 29.877617, 43.436546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403721, 29.882078, 43.427765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023699, -0.678291, 0.734411,
		-0.006701, -0.734709, -0.678350,
		0.999697, 0.011155, -0.021957,
		32.703629, 29.885426, 43.421177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234562, 29.209496, 43.634632>,  <32.003841, 29.877617, 43.436546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234562, 29.209496, 43.634632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558304, 29.437082, 43.692913>,  <32.752548, 29.573633, 43.727882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558304, 29.437082, 43.692913>,  <32.234562, 29.209496, 43.634632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558304, 29.437082, 43.692913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230631, -0.536030, 0.812085,
		0.540148, -0.623659, -0.565058,
		0.809352, 0.568965, 0.145700,
		32.801109, 29.607771, 43.736622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707153, 28.773321, 43.673309>,  <32.234562, 29.209496, 43.634632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707153, 28.773321, 43.673309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868824, 29.097775, 43.842403>,  <32.965828, 29.292446, 43.943859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868824, 29.097775, 43.842403>,  <32.707153, 28.773321, 43.673309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868824, 29.097775, 43.842403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130289, -0.508508, 0.851143,
		0.905353, -0.288936, -0.311209,
		0.404178, 0.811133, 0.422734,
		32.990078, 29.341114, 43.969223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477371, 28.693691, 43.965233>,  <32.707153, 28.773321, 43.673309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477371, 28.693691, 43.965233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299393, 28.991693, 44.164024>,  <33.192604, 29.170494, 44.283298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299393, 28.991693, 44.164024>,  <33.477371, 28.693691, 43.965233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299393, 28.991693, 44.164024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171523, -0.473772, 0.863782,
		0.878976, 0.469583, 0.083020,
		-0.444951, 0.745004, 0.496979,
		33.165909, 29.215195, 44.313118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963154, 28.791246, 44.471378>,  <33.477371, 28.693691, 43.965233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963154, 28.791246, 44.471378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629528, 28.966995, 44.604820>,  <33.429352, 29.072445, 44.684887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629528, 28.966995, 44.604820>,  <33.963154, 28.791246, 44.471378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629528, 28.966995, 44.604820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083814, -0.496774, 0.863823,
		0.545266, 0.748444, 0.377515,
		-0.834063, 0.439372, 0.333604,
		33.379311, 29.098806, 44.704903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106888, 28.970659, 45.163715>,  <33.963154, 28.791246, 44.471378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106888, 28.970659, 45.163715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709694, 29.013145, 45.142956>,  <33.471378, 29.038637, 45.130501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709694, 29.013145, 45.142956>,  <34.106888, 28.970659, 45.163715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709694, 29.013145, 45.142956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083837, -0.323226, 0.942601,
		0.083347, 0.940342, 0.329865,
		-0.992988, 0.106218, -0.051895,
		33.411797, 29.045012, 45.127388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962955, 29.461935, 45.673019>,  <34.106888, 28.970659, 45.163715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962955, 29.461935, 45.673019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630383, 29.250107, 45.605755>,  <33.430840, 29.123011, 45.565395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630383, 29.250107, 45.605755>,  <33.962955, 29.461935, 45.673019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630383, 29.250107, 45.605755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150283, -0.077038, 0.985637,
		-0.534918, 0.844761, -0.015534,
		-0.831431, -0.529569, -0.168162,
		33.380955, 29.091236, 45.555305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472416, 29.811256, 46.090893>,  <33.962955, 29.461935, 45.673019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472416, 29.811256, 46.090893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353336, 29.443977, 45.986359>,  <33.281891, 29.223610, 45.923637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353336, 29.443977, 45.986359>,  <33.472416, 29.811256, 46.090893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353336, 29.443977, 45.986359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246350, -0.190585, 0.950257,
		-0.922328, 0.347266, -0.169461,
		-0.297695, -0.918196, -0.261331,
		33.264027, 29.168518, 45.907959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894421, 29.652588, 46.481007>,  <33.472416, 29.811256, 46.090893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894421, 29.652588, 46.481007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012257, 29.289364, 46.361908>,  <33.082958, 29.071430, 46.290451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.012257, 29.289364, 46.361908>,  <32.894421, 29.652588, 46.481007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012257, 29.289364, 46.361908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160641, -0.354189, 0.921273,
		-0.942027, -0.223564, -0.250210,
		0.294585, -0.908058, -0.297742,
		33.100632, 29.016947, 46.272587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439934, 29.183401, 46.862789>,  <32.894421, 29.652588, 46.481007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439934, 29.183401, 46.862789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701569, 28.918356, 46.716850>,  <32.858551, 28.759329, 46.629288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701569, 28.918356, 46.716850>,  <32.439934, 29.183401, 46.862789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701569, 28.918356, 46.716850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089818, -0.546956, 0.832329,
		-0.751066, -0.511648, -0.417273,
		0.654089, -0.662612, -0.364845,
		32.897797, 28.719572, 46.607395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224575, 28.406382, 46.934772>,  <32.439934, 29.183401, 46.862789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224575, 28.406382, 46.934772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623913, 28.389954, 46.918686>,  <32.863518, 28.380096, 46.909035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623913, 28.389954, 46.918686>,  <32.224575, 28.406382, 46.934772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623913, 28.389954, 46.918686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008955, -0.579922, 0.814623,
		-0.056778, -0.813636, -0.578595,
		0.998347, -0.041072, -0.040213,
		32.923416, 28.377632, 46.906620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519650, 27.623814, 47.015118>,  <32.224575, 28.406382, 46.934772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519650, 27.623814, 47.015118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814404, 27.872164, 47.122082>,  <32.991257, 28.021173, 47.186260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814404, 27.872164, 47.122082>,  <32.519650, 27.623814, 47.015118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814404, 27.872164, 47.122082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165214, -0.548982, 0.819343,
		0.655514, -0.559584, -0.507116,
		0.736889, 0.620874, 0.267415,
		33.035469, 28.058426, 47.202305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987217, 27.165915, 47.206898>,  <32.519650, 27.623814, 47.015118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987217, 27.165915, 47.206898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127468, 27.506315, 47.363285>,  <33.211620, 27.710556, 47.457115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127468, 27.506315, 47.363285>,  <32.987217, 27.165915, 47.206898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127468, 27.506315, 47.363285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031435, -0.427929, 0.903266,
		0.935985, -0.304424, -0.176797,
		0.350632, 0.851001, 0.390965,
		33.232658, 27.761616, 47.480576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447762, 26.900118, 47.528839>,  <32.987217, 27.165915, 47.206898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447762, 26.900118, 47.528839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380760, 27.261015, 47.687786>,  <33.340557, 27.477552, 47.783154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380760, 27.261015, 47.687786>,  <33.447762, 26.900118, 47.528839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380760, 27.261015, 47.687786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169535, -0.370697, 0.913149,
		0.971184, 0.220326, -0.090868,
		-0.167506, 0.902242, 0.397368,
		33.330509, 27.531687, 47.806995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976284, 27.072247, 47.952888>,  <33.447762, 26.900118, 47.528839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976284, 27.072247, 47.952888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654114, 27.266586, 48.088673>,  <33.460812, 27.383190, 48.170143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654114, 27.266586, 48.088673>,  <33.976284, 27.072247, 47.952888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654114, 27.266586, 48.088673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061854, -0.500716, 0.863399,
		0.589457, 0.716403, 0.373239,
		-0.805429, 0.485850, 0.339462,
		33.412487, 27.412342, 48.190510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630978, 27.522680, 47.881535>,  <33.976284, 27.072247, 47.952888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630978, 27.522680, 47.881535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010777, 27.421560, 47.807198>,  <35.238655, 27.360888, 47.762596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010777, 27.421560, 47.807198>,  <34.630978, 27.522680, 47.881535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010777, 27.421560, 47.807198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037416, 0.496858, -0.867025,
		0.311523, 0.830195, 0.462309,
		0.949502, -0.252801, -0.185846,
		35.295628, 27.345720, 47.751446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964130, 28.209145, 47.640324>,  <34.630978, 27.522680, 47.881535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964130, 28.209145, 47.640324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211433, 27.911407, 47.539356>,  <35.359814, 27.732765, 47.478775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211433, 27.911407, 47.539356>,  <34.964130, 28.209145, 47.640324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211433, 27.911407, 47.539356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107454, 0.398180, -0.910992,
		0.778596, 0.536105, 0.326161,
		0.618258, -0.744342, -0.252415,
		35.396912, 27.688105, 47.463631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595779, 28.531662, 47.364716>,  <34.964130, 28.209145, 47.640324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595779, 28.531662, 47.364716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606720, 28.160030, 47.217167>,  <35.613285, 27.937052, 47.128639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606720, 28.160030, 47.217167>,  <35.595779, 28.531662, 47.364716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606720, 28.160030, 47.217167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294833, 0.360093, -0.885103,
		0.955157, -0.084545, 0.283773,
		0.027354, -0.929078, -0.368872,
		35.614925, 27.881308, 47.106506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251995, 28.435507, 47.137604>,  <35.595779, 28.531662, 47.364716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251995, 28.435507, 47.137604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048676, 28.161062, 46.929417>,  <35.926682, 27.996395, 46.804504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048676, 28.161062, 46.929417>,  <36.251995, 28.435507, 47.137604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048676, 28.161062, 46.929417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383131, 0.361089, -0.850191,
		0.771260, -0.631558, 0.079328,
		-0.508301, -0.686111, -0.520463,
		35.896187, 27.955229, 46.773277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754364, 28.104389, 46.526463>,  <36.251995, 28.435507, 47.137604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754364, 28.104389, 46.526463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378223, 28.043173, 46.404930>,  <36.152538, 28.006443, 46.332012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378223, 28.043173, 46.404930>,  <36.754364, 28.104389, 46.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378223, 28.043173, 46.404930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249060, 0.298678, -0.921282,
		0.231740, -0.942003, -0.242747,
		-0.940354, -0.153039, -0.303831,
		36.096119, 27.997261, 46.313782>
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
