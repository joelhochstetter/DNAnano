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
	<24.580305, 35.357456, 34.965992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322683, 35.124893, 34.767136>,  <24.168110, 34.985355, 34.647820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.322683, 35.124893, 34.767136>,  <24.580305, 35.357456, 34.965992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.322683, 35.124893, 34.767136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592946, 0.031183, -0.804638,
		0.483329, -0.813011, 0.324663,
		-0.644056, -0.581412, -0.497143,
		24.129467, 34.950470, 34.617992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151052, 34.939476, 34.696056>,  <24.580305, 35.357456, 34.965992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151052, 34.939476, 34.696056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151773, 35.328308, 34.602200>,  <25.152206, 35.561607, 34.545887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151773, 35.328308, 34.602200>,  <25.151052, 34.939476, 34.696056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151773, 35.328308, 34.602200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960727, -0.066792, -0.269337,
		-0.277489, -0.224942, -0.934024,
		0.001800, 0.972080, -0.234642,
		25.152313, 35.619930, 34.531807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516256, 35.140205, 34.108097>,  <25.151052, 34.939476, 34.696056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516256, 35.140205, 34.108097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578987, 35.480175, 34.309307>,  <25.616625, 35.684158, 34.430035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578987, 35.480175, 34.309307>,  <25.516256, 35.140205, 34.108097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578987, 35.480175, 34.309307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984509, -0.094101, -0.147941,
		-0.078404, 0.518434, -0.851516,
		0.156826, 0.849924, 0.503025,
		25.626036, 35.735153, 34.460217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878609, 35.678848, 33.714050>,  <25.516256, 35.140205, 34.108097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878609, 35.678848, 33.714050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970949, 35.728691, 34.100040>,  <26.026354, 35.758598, 34.331635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.970949, 35.728691, 34.100040>,  <25.878609, 35.678848, 33.714050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970949, 35.728691, 34.100040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972949, -0.020542, -0.230106,
		-0.008850, 0.991993, -0.125979,
		0.230852, 0.124607, 0.964977,
		26.040205, 35.766075, 34.389534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.507488, 36.029613, 33.656681>,  <25.878609, 35.678848, 33.714050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.507488, 36.029613, 33.656681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506090, 35.917076, 34.040520>,  <26.505251, 35.849552, 34.270824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506090, 35.917076, 34.040520>,  <26.507488, 36.029613, 33.656681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506090, 35.917076, 34.040520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859579, 0.489509, 0.146648,
		-0.510991, 0.825364, 0.240128,
		-0.003493, -0.281345, 0.959600,
		26.505043, 35.832672, 34.328400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323387, 36.742260, 33.930313>,  <26.507488, 36.029613, 33.656681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323387, 36.742260, 33.930313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503525, 36.849461, 33.589642>,  <26.611607, 36.913780, 33.385239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.503525, 36.849461, 33.589642>,  <26.323387, 36.742260, 33.930313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.503525, 36.849461, 33.589642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669772, -0.732182, 0.123754,
		-0.590420, -0.626164, -0.509237,
		0.450345, 0.268006, -0.851682,
		26.638628, 36.929863, 33.334137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.869406, 36.745342, 34.533207>,  <26.323387, 36.742260, 33.930313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.869406, 36.745342, 34.533207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765806, 36.935116, 34.869740>,  <25.703646, 37.048981, 35.071659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765806, 36.935116, 34.869740>,  <25.869406, 36.745342, 34.533207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765806, 36.935116, 34.869740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582172, -0.618367, 0.527919,
		0.770711, 0.626529, -0.116044,
		-0.258999, 0.474430, 0.841330,
		25.688107, 37.077446, 35.122139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012745, 36.555317, 35.207993>,  <25.869406, 36.745342, 34.533207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012745, 36.555317, 35.207993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381416, 36.444469, 35.099392>,  <26.602619, 36.377960, 35.034229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381416, 36.444469, 35.099392>,  <26.012745, 36.555317, 35.207993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381416, 36.444469, 35.099392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166089, -0.350606, 0.921678,
		-0.350606, -0.894584, -0.277119,
		-0.921678, 0.277119, 0.271504,
		26.657919, 36.361332, 35.017941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201313, 35.823956, 35.342587>,  <26.012745, 36.555317, 35.207993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201313, 35.823956, 35.342587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528288, 36.053867, 35.357704>,  <26.724474, 36.191814, 35.366776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.528288, 36.053867, 35.357704>,  <26.201313, 35.823956, 35.342587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528288, 36.053867, 35.357704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154188, -0.281565, 0.947073,
		0.554996, -0.768345, -0.318785,
		0.817438, 0.574775, 0.037798,
		26.773520, 36.226299, 35.369045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734991, 35.411518, 35.586094>,  <26.201313, 35.823956, 35.342587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734991, 35.411518, 35.586094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829777, 35.792164, 35.664349>,  <26.886648, 36.020554, 35.711300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829777, 35.792164, 35.664349>,  <26.734991, 35.411518, 35.586094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829777, 35.792164, 35.664349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139754, -0.232667, 0.962463,
		0.961413, -0.200730, -0.188126,
		0.236966, 0.951616, 0.195636,
		26.900867, 36.077648, 35.723038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403240, 35.358780, 35.811443>,  <26.734991, 35.411518, 35.586094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403240, 35.358780, 35.811443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260551, 35.709457, 35.940540>,  <27.174938, 35.919865, 36.017998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.260551, 35.709457, 35.940540>,  <27.403240, 35.358780, 35.811443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.260551, 35.709457, 35.940540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073311, -0.318140, 0.945205,
		0.931331, 0.360834, 0.049216,
		-0.356720, 0.876690, 0.322747,
		27.153536, 35.972466, 36.037365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841066, 35.668648, 36.341812>,  <27.403240, 35.358780, 35.811443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841066, 35.668648, 36.341812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467110, 35.806858, 36.374287>,  <27.242735, 35.889782, 36.393772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467110, 35.806858, 36.374287>,  <27.841066, 35.668648, 36.341812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467110, 35.806858, 36.374287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025943, -0.294651, 0.955253,
		0.353985, 0.890951, 0.284431,
		-0.934891, 0.345524, 0.081188,
		27.186642, 35.910515, 36.398643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697296, 35.055103, 36.840904>,  <27.841066, 35.668648, 36.341812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697296, 35.055103, 36.840904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758280, 35.450142, 36.855885>,  <27.794870, 35.687164, 36.864872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758280, 35.450142, 36.855885>,  <27.697296, 35.055103, 36.840904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758280, 35.450142, 36.855885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748971, -0.090732, -0.656362,
		-0.644825, 0.128115, -0.753516,
		0.152458, 0.987600, 0.037448,
		27.804016, 35.746422, 36.867119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958275, 35.386852, 37.023354>,  <27.697296, 35.055103, 36.840904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958275, 35.386852, 37.023354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089071, 35.754696, 37.110443>,  <27.167549, 35.975403, 37.162697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089071, 35.754696, 37.110443>,  <26.958275, 35.386852, 37.023354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089071, 35.754696, 37.110443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293824, 0.317897, -0.901448,
		-0.898190, 0.230792, 0.374151,
		0.326989, 0.919607, 0.217720,
		27.187168, 36.030579, 37.175758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410398, 35.873814, 37.008423>,  <26.958275, 35.386852, 37.023354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410398, 35.873814, 37.008423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748018, 36.076725, 36.938854>,  <26.950590, 36.198471, 36.897114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748018, 36.076725, 36.938854>,  <26.410398, 35.873814, 37.008423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748018, 36.076725, 36.938854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317735, 0.211794, -0.924223,
		-0.432004, 0.835350, 0.339945,
		0.844048, 0.507280, -0.173924,
		27.001232, 36.228909, 36.886677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247372, 36.606956, 36.766609>,  <26.410398, 35.873814, 37.008423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247372, 36.606956, 36.766609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614063, 36.491417, 36.656208>,  <26.834078, 36.422092, 36.589966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614063, 36.491417, 36.656208>,  <26.247372, 36.606956, 36.766609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614063, 36.491417, 36.656208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128952, 0.439943, -0.888719,
		0.378128, 0.850305, 0.366061,
		0.916728, -0.288844, -0.276004,
		26.889082, 36.404762, 36.573406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692354, 37.150208, 36.400433>,  <26.247372, 36.606956, 36.766609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692354, 37.150208, 36.400433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816305, 36.782322, 36.304008>,  <26.890675, 36.561592, 36.246155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816305, 36.782322, 36.304008>,  <26.692354, 37.150208, 36.400433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816305, 36.782322, 36.304008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038376, 0.241235, -0.969707,
		0.950002, 0.309740, 0.039459,
		0.309876, -0.919710, -0.241060,
		26.909267, 36.506409, 36.231689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334591, 37.288700, 35.992538>,  <26.692354, 37.150208, 36.400433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334591, 37.288700, 35.992538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188488, 36.925381, 35.910980>,  <27.100826, 36.707390, 35.862045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188488, 36.925381, 35.910980>,  <27.334591, 37.288700, 35.992538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188488, 36.925381, 35.910980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056704, 0.196918, -0.978779,
		0.929178, -0.369068, -0.020421,
		-0.365258, -0.908302, -0.203900,
		27.078911, 36.652889, 35.849812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683348, 37.130615, 35.363754>,  <27.334591, 37.288700, 35.992538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683348, 37.130615, 35.363754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406208, 36.842331, 35.373020>,  <27.239923, 36.669361, 35.378582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406208, 36.842331, 35.373020>,  <27.683348, 37.130615, 35.363754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406208, 36.842331, 35.373020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019730, -0.013169, -0.999719,
		0.720813, -0.693111, -0.005096,
		-0.692849, -0.720711, 0.023167,
		27.198353, 36.626118, 35.379971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111609, 37.553970, 35.090794>,  <27.683348, 37.130615, 35.363754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111609, 37.553970, 35.090794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150721, 37.164608, 35.007927>,  <28.174189, 36.930988, 34.958206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150721, 37.164608, 35.007927>,  <28.111609, 37.553970, 35.090794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150721, 37.164608, 35.007927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964194, 0.144220, -0.222556,
		0.246515, -0.177984, 0.952655,
		0.097780, -0.973408, -0.207163,
		28.180054, 36.872585, 34.945778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788473, 37.425941, 35.013527>,  <28.111609, 37.553970, 35.090794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788473, 37.425941, 35.013527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665251, 37.079510, 34.856041>,  <28.591316, 36.871651, 34.761551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665251, 37.079510, 34.856041>,  <28.788473, 37.425941, 35.013527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665251, 37.079510, 34.856041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922502, -0.170764, -0.346163,
		0.232572, -0.469841, 0.851563,
		-0.308058, -0.866077, -0.393714,
		28.572834, 36.819687, 34.737926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219893, 36.940296, 35.201683>,  <28.788473, 37.425941, 35.013527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219893, 36.940296, 35.201683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071766, 36.876274, 34.835678>,  <28.982889, 36.837860, 34.616074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071766, 36.876274, 34.835678>,  <29.219893, 36.940296, 35.201683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071766, 36.876274, 34.835678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925633, 0.019027, -0.377943,
		0.077901, -0.986925, 0.141106,
		-0.370316, -0.160055, -0.915013,
		28.960670, 36.828259, 34.561172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318092, 36.233170, 35.083946>,  <29.219893, 36.940296, 35.201683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318092, 36.233170, 35.083946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347416, 36.522175, 34.808964>,  <29.365009, 36.695580, 34.643974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347416, 36.522175, 34.808964>,  <29.318092, 36.233170, 35.083946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347416, 36.522175, 34.808964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996086, -0.087167, 0.014609,
		-0.049368, -0.685838, -0.726078,
		0.073310, 0.722515, -0.687457,
		29.369410, 36.738930, 34.602726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804602, 36.048042, 34.541092>,  <29.318092, 36.233170, 35.083946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804602, 36.048042, 34.541092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784996, 36.447346, 34.554211>,  <29.773232, 36.686928, 34.562084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.784996, 36.447346, 34.554211>,  <29.804602, 36.048042, 34.541092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784996, 36.447346, 34.554211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990988, 0.044508, 0.126337,
		0.124657, 0.038696, -0.991445,
		-0.049016, 0.998259, 0.032799,
		29.770290, 36.746822, 34.564049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293188, 36.391884, 34.053780>,  <29.804602, 36.048042, 34.541092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293188, 36.391884, 34.053780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218952, 36.669239, 34.332283>,  <30.174410, 36.835651, 34.499386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218952, 36.669239, 34.332283>,  <30.293188, 36.391884, 34.053780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218952, 36.669239, 34.332283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966597, 0.256291, 0.002419,
		-0.176767, 0.673447, -0.717790,
		-0.185592, 0.693385, 0.696256,
		30.163275, 36.877254, 34.541161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657661, 37.069355, 33.846268>,  <30.293188, 36.391884, 34.053780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657661, 37.069355, 33.846268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575863, 37.081444, 34.237629>,  <30.526783, 37.088699, 34.472446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575863, 37.081444, 34.237629>,  <30.657661, 37.069355, 33.846268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575863, 37.081444, 34.237629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875859, 0.451968, 0.169104,
		-0.437095, 0.891522, -0.118899,
		-0.204499, 0.030224, 0.978400,
		30.514513, 37.090511, 34.531151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888935, 37.820190, 34.165783>,  <30.657661, 37.069355, 33.846268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888935, 37.820190, 34.165783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879774, 37.511131, 34.419552>,  <30.874277, 37.325695, 34.571815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879774, 37.511131, 34.419552>,  <30.888935, 37.820190, 34.165783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879774, 37.511131, 34.419552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873244, 0.293504, 0.388974,
		-0.486745, 0.562916, 0.667986,
		-0.022903, -0.772646, 0.634424,
		30.872904, 37.279339, 34.609879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143534, 37.990734, 34.777519>,  <30.888935, 37.820190, 34.165783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143534, 37.990734, 34.777519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166775, 37.592194, 34.802513>,  <31.180719, 37.353069, 34.817509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166775, 37.592194, 34.802513>,  <31.143534, 37.990734, 34.777519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166775, 37.592194, 34.802513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934527, 0.076299, 0.347616,
		-0.351116, 0.038200, 0.935552,
		0.058103, -0.996353, 0.062489,
		31.184206, 37.293289, 34.821259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527163, 37.720791, 35.387791>,  <31.143534, 37.990734, 34.777519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527163, 37.720791, 35.387791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578112, 37.420860, 35.128086>,  <31.608681, 37.240902, 34.972263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578112, 37.420860, 35.128086>,  <31.527163, 37.720791, 35.387791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578112, 37.420860, 35.128086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991852, 0.094742, 0.085163,
		-0.002345, -0.654819, 0.755782,
		0.127371, -0.749824, -0.649261,
		31.616323, 37.195911, 34.933308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130180, 37.385017, 35.691132>,  <31.527163, 37.720791, 35.387791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130180, 37.385017, 35.691132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094730, 37.254086, 35.314835>,  <32.073460, 37.175526, 35.089054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094730, 37.254086, 35.314835>,  <32.130180, 37.385017, 35.691132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094730, 37.254086, 35.314835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990154, 0.073792, -0.118955,
		0.108356, -0.942026, 0.317564,
		-0.088625, -0.327326, -0.940746,
		32.068142, 37.155888, 35.032612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538250, 36.941776, 36.243210>,  <32.130180, 37.385017, 35.691132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538250, 36.941776, 36.243210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781822, 36.648624, 36.364597>,  <32.927967, 36.472733, 36.437428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781822, 36.648624, 36.364597>,  <32.538250, 36.941776, 36.243210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781822, 36.648624, 36.364597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377984, -0.068250, -0.923293,
		0.697372, 0.676929, 0.235457,
		0.608933, -0.732878, 0.303464,
		32.964500, 36.428761, 36.455635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210403, 37.065693, 36.051079>,  <32.538250, 36.941776, 36.243210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210403, 37.065693, 36.051079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177391, 36.669769, 36.097504>,  <33.157581, 36.432217, 36.125359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177391, 36.669769, 36.097504>,  <33.210403, 37.065693, 36.051079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177391, 36.669769, 36.097504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498736, -0.141850, -0.855068,
		0.862815, -0.012689, 0.505360,
		-0.082536, -0.989807, 0.116062,
		33.152630, 36.372826, 36.132324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728306, 36.748291, 35.745644>,  <33.210403, 37.065693, 36.051079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728306, 36.748291, 35.745644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503651, 36.417778, 35.762665>,  <33.368858, 36.219471, 35.772877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503651, 36.417778, 35.762665>,  <33.728306, 36.748291, 35.745644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503651, 36.417778, 35.762665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361659, -0.291436, -0.885589,
		0.744152, -0.481993, 0.462516,
		-0.561641, -0.826286, 0.042555,
		33.335159, 36.169891, 35.775433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231361, 36.246613, 35.512016>,  <33.728306, 36.748291, 35.745644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231361, 36.246613, 35.512016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862862, 36.095474, 35.475056>,  <33.641762, 36.004791, 35.452881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862862, 36.095474, 35.475056>,  <34.231361, 36.246613, 35.512016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862862, 36.095474, 35.475056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194918, -0.242862, -0.950276,
		0.336616, -0.893449, 0.297385,
		-0.921247, -0.377844, -0.092398,
		33.586487, 35.982121, 35.447338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286083, 35.609680, 35.267162>,  <34.231361, 36.246613, 35.512016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286083, 35.609680, 35.267162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912529, 35.724445, 35.181797>,  <33.688396, 35.793304, 35.130577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912529, 35.724445, 35.181797>,  <34.286083, 35.609680, 35.267162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912529, 35.724445, 35.181797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101568, -0.359415, -0.927634,
		-0.342847, -0.887979, 0.306511,
		-0.933884, 0.286905, -0.213415,
		33.632366, 35.810520, 35.117771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959068, 35.480892, 34.521664>,  <34.286083, 35.609680, 35.267162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959068, 35.480892, 34.521664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936047, 35.262363, 34.187424>,  <33.922234, 35.131248, 33.986881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936047, 35.262363, 34.187424>,  <33.959068, 35.480892, 34.521664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936047, 35.262363, 34.187424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981391, -0.122624, 0.147769,
		-0.183193, 0.828553, -0.529094,
		-0.057555, -0.546318, -0.835598,
		33.918781, 35.098469, 33.936745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825550, 36.146194, 34.259094>,  <33.959068, 35.480892, 34.521664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825550, 36.146194, 34.259094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508389, 35.903934, 34.232285>,  <33.318092, 35.758579, 34.216198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508389, 35.903934, 34.232285>,  <33.825550, 36.146194, 34.259094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508389, 35.903934, 34.232285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159912, 0.100679, 0.981984,
		-0.587987, 0.789339, -0.176679,
		-0.792906, -0.605647, -0.067027,
		33.270515, 35.722240, 34.212177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117825, 36.405174, 34.510803>,  <33.825550, 36.146194, 34.259094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117825, 36.405174, 34.510803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125671, 36.008568, 34.562187>,  <33.130379, 35.770603, 34.593018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125671, 36.008568, 34.562187>,  <33.117825, 36.405174, 34.510803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125671, 36.008568, 34.562187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241714, 0.119970, 0.962903,
		-0.970149, -0.049939, -0.237311,
		0.019616, -0.991521, 0.128459,
		33.131557, 35.711113, 34.600723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444527, 36.059559, 34.944580>,  <33.117825, 36.405174, 34.510803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444527, 36.059559, 34.944580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809723, 35.896614, 34.953522>,  <33.028843, 35.798847, 34.958885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809723, 35.896614, 34.953522>,  <32.444527, 36.059559, 34.944580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809723, 35.896614, 34.953522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072069, -0.107105, 0.991632,
		-0.401557, -0.906965, -0.127145,
		0.912994, -0.407361, 0.022355,
		33.083622, 35.774406, 34.960228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396000, 35.408325, 35.289516>,  <32.444527, 36.059559, 34.944580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396000, 35.408325, 35.289516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752827, 35.578926, 35.349262>,  <32.966923, 35.681286, 35.385109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752827, 35.578926, 35.349262>,  <32.396000, 35.408325, 35.289516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752827, 35.578926, 35.349262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166470, 0.002875, 0.986042,
		0.420123, -0.904480, 0.073565,
		0.892067, 0.426505, 0.149361,
		33.020447, 35.706879, 35.394070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663357, 35.072613, 35.806408>,  <32.396000, 35.408325, 35.289516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663357, 35.072613, 35.806408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854729, 35.423862, 35.807331>,  <32.969551, 35.634613, 35.807884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854729, 35.423862, 35.807331>,  <32.663357, 35.072613, 35.806408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854729, 35.423862, 35.807331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195367, 0.103877, 0.975214,
		0.856119, -0.467020, 0.221254,
		0.478427, 0.878124, 0.002310,
		32.998257, 35.687298, 35.808025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104980, 35.074104, 36.448841>,  <32.663357, 35.072613, 35.806408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104980, 35.074104, 36.448841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100605, 35.458858, 36.339550>,  <33.097980, 35.689713, 36.273975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100605, 35.458858, 36.339550>,  <33.104980, 35.074104, 36.448841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100605, 35.458858, 36.339550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243635, 0.262444, 0.933684,
		0.969805, 0.076782, 0.231479,
		-0.010940, 0.961888, -0.273227,
		33.097324, 35.747425, 36.257584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470013, 35.506180, 36.976349>,  <33.104980, 35.074104, 36.448841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470013, 35.506180, 36.976349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181950, 35.710041, 36.788036>,  <33.009113, 35.832355, 36.675049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181950, 35.710041, 36.788036>,  <33.470013, 35.506180, 36.976349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181950, 35.710041, 36.788036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350752, 0.318012, 0.880818,
		0.598623, 0.799453, -0.050257,
		-0.720155, 0.509650, -0.470779,
		32.965904, 35.862938, 36.646801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614048, 36.266567, 36.943485>,  <33.470013, 35.506180, 36.976349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614048, 36.266567, 36.943485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257179, 36.088932, 36.976517>,  <33.043060, 35.982349, 36.996338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257179, 36.088932, 36.976517>,  <33.614048, 36.266567, 36.943485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257179, 36.088932, 36.976517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038885, 0.257651, 0.965455,
		-0.450027, 0.858137, -0.247137,
		-0.892168, -0.444091, 0.082581,
		32.989529, 35.955704, 37.001289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944031, 36.645931, 37.111916>,  <33.614048, 36.266567, 36.943485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944031, 36.645931, 37.111916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966511, 36.285507, 37.283932>,  <32.980000, 36.069252, 37.387142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966511, 36.285507, 37.283932>,  <32.944031, 36.645931, 37.111916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966511, 36.285507, 37.283932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150274, 0.418177, 0.895849,
		-0.987046, -0.114973, -0.111903,
		0.056203, -0.901060, 0.430038,
		32.983372, 36.015190, 37.412945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387501, 36.572182, 37.471104>,  <32.944031, 36.645931, 37.111916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387501, 36.572182, 37.471104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694405, 36.368080, 37.626511>,  <32.878548, 36.245617, 37.719753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694405, 36.368080, 37.626511>,  <32.387501, 36.572182, 37.471104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694405, 36.368080, 37.626511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183901, 0.405308, 0.895492,
		-0.614401, -0.758526, 0.217140,
		0.767263, -0.510259, 0.388516,
		32.924583, 36.215004, 37.743065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186188, 36.076370, 38.093662>,  <32.387501, 36.572182, 37.471104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186188, 36.076370, 38.093662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523613, 36.291122, 38.088531>,  <32.726067, 36.419975, 38.085453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523613, 36.291122, 38.088531>,  <32.186188, 36.076370, 38.093662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523613, 36.291122, 38.088531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287100, 0.471032, 0.834088,
		0.453838, -0.699927, 0.551482,
		0.843567, 0.536871, -0.012823,
		32.776680, 36.452187, 38.084682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734428, 36.036991, 38.636581>,  <32.186188, 36.076370, 38.093662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734428, 36.036991, 38.636581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722492, 36.414600, 38.505169>,  <32.715328, 36.641167, 38.426323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722492, 36.414600, 38.505169>,  <32.734428, 36.036991, 38.636581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722492, 36.414600, 38.505169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359022, 0.296618, 0.884941,
		0.932852, 0.144360, 0.330072,
		-0.029845, 0.944022, -0.328529,
		32.713539, 36.697807, 38.406609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084591, 36.521202, 39.059898>,  <32.734428, 36.036991, 38.636581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084591, 36.521202, 39.059898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815552, 36.739803, 38.860321>,  <32.654129, 36.870964, 38.740574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815552, 36.739803, 38.860321>,  <33.084591, 36.521202, 39.059898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815552, 36.739803, 38.860321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343515, 0.366618, 0.864632,
		0.655450, 0.752942, -0.058852,
		-0.672594, 0.546507, -0.498946,
		32.613773, 36.903755, 38.710636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685665, 36.484081, 39.523987>,  <33.084591, 36.521202, 39.059898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685665, 36.484081, 39.523987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063839, 36.572247, 39.619965>,  <34.290745, 36.625145, 39.677551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063839, 36.572247, 39.619965>,  <33.685665, 36.484081, 39.523987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063839, 36.572247, 39.619965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322900, 0.732081, 0.599828,
		-0.043448, -0.644575, 0.763305,
		0.945435, 0.220410, 0.239941,
		34.347469, 36.638371, 39.691948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786045, 36.360310, 40.236229>,  <33.685665, 36.484081, 39.523987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786045, 36.360310, 40.236229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051113, 36.636101, 40.119270>,  <34.210152, 36.801575, 40.049095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051113, 36.636101, 40.119270>,  <33.786045, 36.360310, 40.236229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051113, 36.636101, 40.119270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369298, 0.640495, 0.673339,
		0.651542, -0.338204, 0.679051,
		0.662655, 0.689481, -0.292411,
		34.249912, 36.842945, 40.031551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118427, 36.701649, 40.816883>,  <33.786045, 36.360310, 40.236229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118427, 36.701649, 40.816883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207321, 36.991257, 40.555683>,  <34.260658, 37.165020, 40.398964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207321, 36.991257, 40.555683>,  <34.118427, 36.701649, 40.816883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207321, 36.991257, 40.555683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294252, 0.688322, 0.663045,
		0.929531, 0.044795, 0.366013,
		0.222234, 0.724021, -0.652997,
		34.273991, 37.208462, 40.359783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433678, 37.278793, 41.206455>,  <34.118427, 36.701649, 40.816883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433678, 37.278793, 41.206455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291992, 37.416912, 40.858822>,  <34.206982, 37.499783, 40.650242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291992, 37.416912, 40.858822>,  <34.433678, 37.278793, 41.206455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291992, 37.416912, 40.858822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519101, 0.700413, 0.489854,
		0.777860, 0.624655, -0.068855,
		-0.354216, 0.345295, -0.869081,
		34.185726, 37.520500, 40.598099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652069, 37.939911, 41.231281>,  <34.433678, 37.278793, 41.206455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652069, 37.939911, 41.231281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295940, 37.902985, 41.052929>,  <34.082264, 37.880829, 40.945919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295940, 37.902985, 41.052929>,  <34.652069, 37.939911, 41.231281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295940, 37.902985, 41.052929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403321, 0.614389, 0.678129,
		0.211339, 0.783584, -0.584237,
		-0.890319, -0.092320, -0.445880,
		34.028843, 37.875290, 40.919167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463074, 38.617649, 40.961227>,  <34.652069, 37.939911, 41.231281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463074, 38.617649, 40.961227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125988, 38.412842, 41.027771>,  <33.923737, 38.289955, 41.067696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125988, 38.412842, 41.027771>,  <34.463074, 38.617649, 40.961227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125988, 38.412842, 41.027771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347950, 0.753787, 0.557438,
		-0.410816, 0.411875, -0.813381,
		-0.842710, -0.512020, 0.166356,
		33.873177, 38.259235, 41.077679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046925, 39.135780, 41.100307>,  <34.463074, 38.617649, 40.961227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046925, 39.135780, 41.100307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884151, 38.798233, 41.240192>,  <33.786488, 38.595707, 41.324123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884151, 38.798233, 41.240192>,  <34.046925, 39.135780, 41.100307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884151, 38.798233, 41.240192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442011, 0.516947, 0.733070,
		-0.799396, 0.143731, -0.583359,
		-0.406931, -0.843864, 0.349715,
		33.762074, 38.545074, 41.345108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281960, 39.243221, 41.175850>,  <34.046925, 39.135780, 41.100307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281960, 39.243221, 41.175850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416336, 38.973965, 41.439369>,  <33.496964, 38.812412, 41.597481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416336, 38.973965, 41.439369>,  <33.281960, 39.243221, 41.175850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416336, 38.973965, 41.439369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623288, 0.365517, 0.691310,
		-0.706153, -0.642866, -0.296768,
		0.335946, -0.673142, 0.658802,
		33.517120, 38.772022, 41.637009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747612, 38.762123, 41.580471>,  <33.281960, 39.243221, 41.175850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747612, 38.762123, 41.580471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048401, 38.838631, 41.832806>,  <33.228874, 38.884533, 41.984207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048401, 38.838631, 41.832806>,  <32.747612, 38.762123, 41.580471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048401, 38.838631, 41.832806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659100, 0.233949, 0.714741,
		-0.010879, -0.953250, 0.301986,
		0.751976, 0.191263, 0.630833,
		33.273994, 38.896011, 42.022057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221622, 38.260132, 41.236938>,  <32.747612, 38.762123, 41.580471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221622, 38.260132, 41.236938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479523, 38.455887, 41.002064>,  <33.634262, 38.573341, 40.861141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479523, 38.455887, 41.002064>,  <33.221622, 38.260132, 41.236938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479523, 38.455887, 41.002064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106331, -0.818129, -0.565118,
		-0.756957, 0.301927, -0.579530,
		0.644755, 0.489392, -0.587185,
		33.672951, 38.602703, 40.825909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876549, 38.245674, 40.551167>,  <33.221622, 38.260132, 41.236938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876549, 38.245674, 40.551167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275013, 38.275940, 40.568748>,  <33.514091, 38.294098, 40.579300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275013, 38.275940, 40.568748>,  <32.876549, 38.245674, 40.551167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275013, 38.275940, 40.568748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087013, -0.803143, -0.589398,
		-0.009293, 0.590962, -0.806646,
		0.996164, 0.075666, 0.043958,
		33.573864, 38.298641, 40.581936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121170, 37.978657, 39.921169>,  <32.876549, 38.245674, 40.551167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121170, 37.978657, 39.921169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455727, 37.964504, 40.139965>,  <33.656460, 37.956013, 40.271244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455727, 37.964504, 40.139965>,  <33.121170, 37.978657, 39.921169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455727, 37.964504, 40.139965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369976, -0.699858, -0.610996,
		0.404434, 0.713405, -0.572265,
		0.836392, -0.035383, 0.546989,
		33.706646, 37.953888, 40.304062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738922, 38.044361, 39.504349>,  <33.121170, 37.978657, 39.921169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738922, 38.044361, 39.504349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885490, 37.879597, 39.838070>,  <33.973434, 37.780739, 40.038303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885490, 37.879597, 39.838070>,  <33.738922, 38.044361, 39.504349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885490, 37.879597, 39.838070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523290, -0.650188, -0.550839,
		0.769350, 0.638424, -0.022697,
		0.366425, -0.411911, 0.834303,
		33.995419, 37.756023, 40.088360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422489, 37.945744, 39.315006>,  <33.738922, 38.044361, 39.504349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422489, 37.945744, 39.315006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317207, 37.707882, 39.618877>,  <34.254036, 37.565166, 39.801201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317207, 37.707882, 39.618877>,  <34.422489, 37.945744, 39.315006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317207, 37.707882, 39.618877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407595, -0.782258, -0.471105,
		0.874408, 0.185643, 0.448272,
		-0.263207, -0.594651, 0.759679,
		34.238247, 37.529488, 39.846783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077038, 37.639065, 39.451923>,  <34.422489, 37.945744, 39.315006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077038, 37.639065, 39.451923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813305, 37.405052, 39.640823>,  <34.655064, 37.264645, 39.754166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813305, 37.405052, 39.640823>,  <35.077038, 37.639065, 39.451923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813305, 37.405052, 39.640823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489969, -0.810762, -0.320305,
		0.570271, 0.020201, 0.821208,
		-0.659334, -0.585027, 0.472252,
		34.615505, 37.229546, 39.782497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520615, 37.208008, 39.828606>,  <35.077038, 37.639065, 39.451923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520615, 37.208008, 39.828606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166348, 37.026215, 39.790554>,  <34.953789, 36.917141, 39.767723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166348, 37.026215, 39.790554>,  <35.520615, 37.208008, 39.828606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166348, 37.026215, 39.790554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449895, -0.789241, -0.417963,
		0.114873, -0.412974, 0.903469,
		-0.885663, -0.454478, -0.095133,
		34.900650, 36.889870, 39.762012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718704, 36.591064, 40.018974>,  <35.520615, 37.208008, 39.828606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718704, 36.591064, 40.018974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386093, 36.570972, 39.797695>,  <35.186527, 36.558918, 39.664925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386093, 36.570972, 39.797695>,  <35.718704, 36.591064, 40.018974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386093, 36.570972, 39.797695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380427, -0.777186, -0.501255,
		-0.404761, -0.627262, 0.665365,
		-0.831531, -0.050235, -0.553202,
		35.136635, 36.555901, 39.631733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537537, 35.917355, 39.820087>,  <35.718704, 36.591064, 40.018974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537537, 35.917355, 39.820087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341454, 36.139706, 39.551556>,  <35.223804, 36.273117, 39.390434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341454, 36.139706, 39.551556>,  <35.537537, 35.917355, 39.820087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341454, 36.139706, 39.551556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289993, -0.622327, -0.727058,
		-0.821947, -0.551095, 0.143871,
		-0.490212, 0.555881, -0.671333,
		35.194389, 36.306469, 39.350155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149933, 35.478779, 39.319572>,  <35.537537, 35.917355, 39.820087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149933, 35.478779, 39.319572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227154, 35.824303, 39.133423>,  <35.273487, 36.031616, 39.021732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227154, 35.824303, 39.133423>,  <35.149933, 35.478779, 39.319572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227154, 35.824303, 39.133423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205084, -0.499341, -0.841783,
		-0.959516, 0.067068, -0.273551,
		0.193052, 0.863806, -0.465372,
		35.285069, 36.083443, 38.993813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771801, 35.437160, 38.699284>,  <35.149933, 35.478779, 39.319572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771801, 35.437160, 38.699284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045395, 35.719341, 38.624981>,  <35.209553, 35.888649, 38.580399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045395, 35.719341, 38.624981>,  <34.771801, 35.437160, 38.699284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045395, 35.719341, 38.624981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250041, -0.465925, -0.848760,
		-0.685306, 0.534092, -0.495077,
		0.683985, 0.705450, -0.185756,
		35.250591, 35.930977, 38.569256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736778, 35.442196, 38.023544>,  <34.771801, 35.437160, 38.699284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736778, 35.442196, 38.023544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072166, 35.653446, 38.077271>,  <35.273399, 35.780197, 38.109509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072166, 35.653446, 38.077271>,  <34.736778, 35.442196, 38.023544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072166, 35.653446, 38.077271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352918, -0.338451, -0.872296,
		-0.415225, 0.778800, -0.470169,
		0.838473, 0.528130, 0.134319,
		35.323708, 35.811886, 38.117565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855087, 35.893139, 37.424717>,  <34.736778, 35.442196, 38.023544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855087, 35.893139, 37.424717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220043, 35.850430, 37.582779>,  <35.439018, 35.824802, 37.677616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220043, 35.850430, 37.582779>,  <34.855087, 35.893139, 37.424717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220043, 35.850430, 37.582779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311203, -0.446150, -0.839109,
		0.265895, 0.888566, -0.373833,
		0.912388, -0.106777, 0.395153,
		35.493759, 35.818398, 37.701324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315365, 36.130081, 36.966549>,  <34.855087, 35.893139, 37.424717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315365, 36.130081, 36.966549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514343, 35.859627, 37.183949>,  <35.633732, 35.697353, 37.314388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514343, 35.859627, 37.183949>,  <35.315365, 36.130081, 36.966549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514343, 35.859627, 37.183949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324166, -0.436246, -0.839408,
		0.804649, 0.593747, 0.002168,
		0.497450, -0.676131, 0.543498,
		35.663578, 35.656788, 37.346996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085144, 36.089733, 36.669205>,  <35.315365, 36.130081, 36.966549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085144, 36.089733, 36.669205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005962, 35.754353, 36.872307>,  <35.958454, 35.553123, 36.994167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005962, 35.754353, 36.872307>,  <36.085144, 36.089733, 36.669205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005962, 35.754353, 36.872307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315851, -0.544937, -0.776712,
		0.927930, 0.006625, 0.372696,
		-0.197951, -0.838451, 0.507756,
		35.946579, 35.502819, 37.024635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663540, 35.715698, 36.488998>,  <36.085144, 36.089733, 36.669205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663540, 35.715698, 36.488998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400768, 35.448536, 36.628910>,  <36.243103, 35.288239, 36.712856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400768, 35.448536, 36.628910>,  <36.663540, 35.715698, 36.488998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400768, 35.448536, 36.628910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103048, -0.539118, -0.835903,
		0.746873, -0.513088, 0.422990,
		-0.656933, -0.667901, 0.349780,
		36.203690, 35.248165, 36.733845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080406, 35.195129, 36.343864>,  <36.663540, 35.715698, 36.488998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080406, 35.195129, 36.343864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699692, 35.078880, 36.383148>,  <36.471264, 35.009129, 36.406719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699692, 35.078880, 36.383148>,  <37.080406, 35.195129, 36.343864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699692, 35.078880, 36.383148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109153, -0.620024, -0.776953,
		0.286695, -0.728771, 0.621851,
		-0.951783, -0.290626, 0.098210,
		36.414158, 34.991692, 36.412613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066994, 34.503483, 36.105179>,  <37.080406, 35.195129, 36.343864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066994, 34.503483, 36.105179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678684, 34.599304, 36.099243>,  <36.445698, 34.656796, 36.095680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678684, 34.599304, 36.099243>,  <37.066994, 34.503483, 36.105179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678684, 34.599304, 36.099243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090346, -0.422019, -0.902074,
		-0.222353, -0.874366, 0.431327,
		-0.970771, 0.239548, -0.014841,
		36.387451, 34.671169, 36.094791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727097, 33.949829, 35.854038>,  <37.066994, 34.503483, 36.105179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727097, 33.949829, 35.854038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492435, 34.265858, 35.782894>,  <36.351639, 34.455475, 35.740208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492435, 34.265858, 35.782894>,  <36.727097, 33.949829, 35.854038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492435, 34.265858, 35.782894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104496, -0.291635, -0.950805,
		-0.803071, -0.539203, 0.253646,
		-0.586650, 0.790069, -0.177860,
		36.316441, 34.502880, 35.729538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213184, 33.692963, 35.369869>,  <36.727097, 33.949829, 35.854038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213184, 33.692963, 35.369869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176685, 34.090588, 35.346172>,  <36.154785, 34.329163, 35.331955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176685, 34.090588, 35.346172>,  <36.213184, 33.692963, 35.369869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176685, 34.090588, 35.346172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277528, -0.082521, -0.957167,
		-0.956375, -0.070895, 0.283411,
		-0.091246, 0.994065, -0.059246,
		36.149311, 34.388805, 35.328400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658787, 33.787136, 34.952602>,  <36.213184, 33.692963, 35.369869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658787, 33.787136, 34.952602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859085, 34.133034, 34.937244>,  <35.979263, 34.340572, 34.928032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859085, 34.133034, 34.937244>,  <35.658787, 33.787136, 34.952602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859085, 34.133034, 34.937244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112781, 0.021205, -0.993394,
		-0.858217, 0.501766, 0.108145,
		0.500744, 0.864744, -0.038391,
		36.009308, 34.392456, 34.925728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334267, 34.131432, 34.454815>,  <35.658787, 33.787136, 34.952602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334267, 34.131432, 34.454815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689072, 34.309555, 34.503647>,  <35.901955, 34.416431, 34.532944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689072, 34.309555, 34.503647>,  <35.334267, 34.131432, 34.454815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689072, 34.309555, 34.503647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104592, 0.063738, -0.992471,
		-0.449741, 0.893103, 0.009960,
		0.887014, 0.445313, 0.122077,
		35.955177, 34.443150, 34.540272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283863, 34.634357, 34.063530>,  <35.334267, 34.131432, 34.454815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283863, 34.634357, 34.063530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681225, 34.628441, 34.109009>,  <35.919643, 34.624893, 34.136295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681225, 34.628441, 34.109009>,  <35.283863, 34.634357, 34.063530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681225, 34.628441, 34.109009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113893, 0.013192, -0.993405,
		0.013192, 0.999804, 0.014789,
		0.993405, -0.014789, 0.113697,
		35.979248, 34.624004, 34.143116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571789, 35.222683, 33.740337>,  <35.283863, 34.634357, 34.063530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571789, 35.222683, 33.740337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875195, 34.962189, 33.749660>,  <36.057240, 34.805893, 33.755253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875195, 34.962189, 33.749660>,  <35.571789, 35.222683, 33.740337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875195, 34.962189, 33.749660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219638, 0.221819, -0.950029,
		0.613522, 0.725734, 0.311290,
		0.758519, -0.651234, 0.023308,
		36.102749, 34.766819, 33.756653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119778, 35.654968, 33.417137>,  <35.571789, 35.222683, 33.740337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119778, 35.654968, 33.417137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238274, 35.273449, 33.397118>,  <36.309372, 35.044537, 33.385105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238274, 35.273449, 33.397118>,  <36.119778, 35.654968, 33.417137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238274, 35.273449, 33.397118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350513, 0.157310, -0.923252,
		0.888472, 0.255963, 0.380922,
		0.296241, -0.953801, -0.050047,
		36.327145, 34.987309, 33.382103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788143, 35.683647, 33.082569>,  <36.119778, 35.654968, 33.417137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788143, 35.683647, 33.082569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664310, 35.307182, 33.028343>,  <36.590012, 35.081303, 32.995808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.664310, 35.307182, 33.028343>,  <36.788143, 35.683647, 33.082569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664310, 35.307182, 33.028343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385095, 0.006260, -0.922856,
		0.869404, -0.337902, 0.360498,
		-0.309578, -0.941161, -0.135567,
		36.571438, 35.024834, 32.987675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332222, 35.316380, 32.765003>,  <36.788143, 35.683647, 33.082569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332222, 35.316380, 32.765003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002968, 35.104500, 32.683155>,  <36.805416, 34.977371, 32.634045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002968, 35.104500, 32.683155>,  <37.332222, 35.316380, 32.765003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002968, 35.104500, 32.683155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259730, -0.030757, -0.965191,
		0.504965, -0.847629, 0.162895,
		-0.823135, -0.529696, -0.204624,
		36.756027, 34.945591, 32.621769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610405, 34.819191, 32.293964>,  <37.332222, 35.316380, 32.765003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610405, 34.819191, 32.293964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215626, 34.859150, 32.243454>,  <36.978756, 34.883125, 32.213146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215626, 34.859150, 32.243454>,  <37.610405, 34.819191, 32.293964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215626, 34.859150, 32.243454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127694, 0.007866, -0.991782,
		-0.098090, -0.994966, -0.020520,
		-0.986951, 0.099904, -0.126280,
		36.919540, 34.889122, 32.205570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494106, 34.407555, 31.662193>,  <37.610405, 34.819191, 32.293964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494106, 34.407555, 31.662193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154202, 34.610134, 31.720737>,  <36.950260, 34.731682, 31.755865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154202, 34.610134, 31.720737>,  <37.494106, 34.407555, 31.662193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154202, 34.610134, 31.720737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152809, 0.029087, -0.987828,
		-0.504541, -0.861779, 0.052673,
		-0.849757, 0.506449, 0.146363,
		36.899273, 34.762070, 31.764647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011059, 34.156063, 31.199005>,  <37.494106, 34.407555, 31.662193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011059, 34.156063, 31.199005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890812, 34.535763, 31.235994>,  <36.818665, 34.763584, 31.258188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890812, 34.535763, 31.235994>,  <37.011059, 34.156063, 31.199005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890812, 34.535763, 31.235994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253734, 0.013866, -0.967175,
		-0.919375, -0.314208, 0.236689,
		-0.300613, 0.949253, 0.092473,
		36.800629, 34.820538, 31.263737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445091, 34.118973, 30.781590>,  <37.011059, 34.156063, 31.199005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445091, 34.118973, 30.781590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530426, 34.507587, 30.822762>,  <36.581627, 34.740757, 30.847466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530426, 34.507587, 30.822762>,  <36.445091, 34.118973, 30.781590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530426, 34.507587, 30.822762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038418, 0.096931, -0.994549,
		-0.976223, 0.216129, -0.016646,
		0.213337, 0.971541, 0.102929,
		36.594429, 34.799049, 30.853640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952320, 34.496075, 30.322258>,  <36.445091, 34.118973, 30.781590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952320, 34.496075, 30.322258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281815, 34.716549, 30.375410>,  <36.479511, 34.848835, 30.407301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281815, 34.716549, 30.375410>,  <35.952320, 34.496075, 30.322258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281815, 34.716549, 30.375410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051515, 0.160635, -0.985669,
		-0.564631, 0.818774, 0.103926,
		0.823734, 0.551185, 0.132878,
		36.528934, 34.881905, 30.415274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895844, 35.037357, 29.843866>,  <35.952320, 34.496075, 30.322258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895844, 35.037357, 29.843866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285568, 35.043484, 29.933741>,  <36.519402, 35.047161, 29.987665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285568, 35.043484, 29.933741>,  <35.895844, 35.037357, 29.843866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285568, 35.043484, 29.933741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210545, 0.292137, -0.932913,
		-0.079928, 0.956254, 0.281407,
		0.974311, 0.015317, 0.224685,
		36.577862, 35.048080, 30.001146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079945, 35.691570, 29.596096>,  <35.895844, 35.037357, 29.843866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079945, 35.691570, 29.596096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419975, 35.484318, 29.633865>,  <36.623993, 35.359966, 29.656527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419975, 35.484318, 29.633865>,  <36.079945, 35.691570, 29.596096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419975, 35.484318, 29.633865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295537, 0.320889, -0.899827,
		0.435929, 0.792824, 0.425906,
		0.850073, -0.518131, 0.094424,
		36.674995, 35.328876, 29.662193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714931, 36.107445, 29.542940>,  <36.079945, 35.691570, 29.596096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714931, 36.107445, 29.542940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831581, 35.731754, 29.470484>,  <36.901573, 35.506340, 29.427010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831581, 35.731754, 29.470484>,  <36.714931, 36.107445, 29.542940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831581, 35.731754, 29.470484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389642, 0.289592, -0.874252,
		0.873574, 0.184377, 0.450414,
		0.291629, -0.939224, -0.181139,
		36.919071, 35.449986, 29.416142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335400, 36.181793, 29.185722>,  <36.714931, 36.107445, 29.542940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335400, 36.181793, 29.185722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220314, 35.807022, 29.106342>,  <37.151264, 35.582157, 29.058714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220314, 35.807022, 29.106342>,  <37.335400, 36.181793, 29.185722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220314, 35.807022, 29.106342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244484, 0.128496, -0.961102,
		0.925986, -0.325036, 0.192096,
		-0.287709, -0.936931, -0.198452,
		37.134003, 35.525944, 29.046806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872093, 35.870876, 28.859314>,  <37.335400, 36.181793, 29.185722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872093, 35.870876, 28.859314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542084, 35.666622, 28.762491>,  <37.344078, 35.544071, 28.704397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542084, 35.666622, 28.762491>,  <37.872093, 35.870876, 28.859314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542084, 35.666622, 28.762491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184027, 0.162217, -0.969443,
		0.534298, -0.844356, -0.039862,
		-0.825021, -0.510636, -0.242056,
		37.294579, 35.513432, 28.689875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151520, 35.362431, 28.463478>,  <37.872093, 35.870876, 28.859314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151520, 35.362431, 28.463478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760113, 35.404968, 28.392839>,  <37.525269, 35.430492, 28.350456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760113, 35.404968, 28.392839>,  <38.151520, 35.362431, 28.463478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760113, 35.404968, 28.392839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187598, 0.104262, -0.976697,
		-0.085458, -0.988848, -0.121973,
		-0.978522, 0.106348, -0.176596,
		37.466557, 35.436874, 28.339861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113602, 35.001606, 27.825998>,  <38.151520, 35.362431, 28.463478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113602, 35.001606, 27.825998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796291, 35.239407, 27.878574>,  <37.605904, 35.382088, 27.910120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796291, 35.239407, 27.878574>,  <38.113602, 35.001606, 27.825998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796291, 35.239407, 27.878574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002209, 0.218685, -0.975793,
		-0.608854, -0.773786, -0.174791,
		-0.793279, 0.594502, 0.131438,
		37.558308, 35.417755, 27.918005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747482, 34.861382, 27.301115>,  <38.113602, 35.001606, 27.825998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747482, 34.861382, 27.301115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602493, 35.213276, 27.424196>,  <37.515499, 35.424412, 27.498045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602493, 35.213276, 27.424196>,  <37.747482, 34.861382, 27.301115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602493, 35.213276, 27.424196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043380, 0.313871, -0.948474,
		-0.930984, -0.357145, -0.075608,
		-0.362474, 0.879734, 0.307702,
		37.493752, 35.477196, 27.516506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049572, 34.989765, 26.962570>,  <37.747482, 34.861382, 27.301115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049572, 34.989765, 26.962570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210712, 35.347301, 27.041325>,  <37.307396, 35.561821, 27.088577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210712, 35.347301, 27.041325>,  <37.049572, 34.989765, 26.962570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210712, 35.347301, 27.041325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033980, 0.200359, -0.979133,
		-0.914634, 0.401136, 0.050342,
		0.402852, 0.893838, 0.196886,
		37.331570, 35.615452, 27.100389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715782, 35.452396, 26.509844>,  <37.049572, 34.989765, 26.962570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715782, 35.452396, 26.509844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037941, 35.650723, 26.639771>,  <37.231236, 35.769718, 26.717728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037941, 35.650723, 26.639771>,  <36.715782, 35.452396, 26.509844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037941, 35.650723, 26.639771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124799, 0.393867, -0.910656,
		-0.579450, 0.773975, 0.255342,
		0.805396, 0.495813, 0.324818,
		37.279560, 35.799465, 26.737215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583908, 36.055901, 26.195030>,  <36.715782, 35.452396, 26.509844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583908, 36.055901, 26.195030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969772, 36.052334, 26.300375>,  <37.201290, 36.050194, 26.363583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.969772, 36.052334, 26.300375>,  <36.583908, 36.055901, 26.195030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969772, 36.052334, 26.300375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237039, 0.465961, -0.852463,
		-0.115115, 0.884760, 0.451606,
		0.964656, -0.008917, 0.263362,
		37.259171, 36.049660, 26.379383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839062, 36.667927, 25.886465>,  <36.583908, 36.055901, 26.195030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839062, 36.667927, 25.886465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167305, 36.457829, 25.976559>,  <37.364250, 36.331772, 26.030615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167305, 36.457829, 25.976559>,  <36.839062, 36.667927, 25.886465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167305, 36.457829, 25.976559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488507, 0.440129, -0.753424,
		0.296598, 0.728291, 0.617756,
		0.820604, -0.525242, 0.225233,
		37.413486, 36.300255, 26.044128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411388, 37.209480, 25.771051>,  <36.839062, 36.667927, 25.886465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411388, 37.209480, 25.771051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581997, 36.849068, 25.739483>,  <37.684361, 36.632820, 25.720541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581997, 36.849068, 25.739483>,  <37.411388, 37.209480, 25.771051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581997, 36.849068, 25.739483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596147, 0.345674, -0.724651,
		0.680211, 0.262031, 0.684582,
		0.426523, -0.901027, -0.078922,
		37.709953, 36.578758, 25.715807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229641, 37.289017, 25.886318>,  <37.411388, 37.209480, 25.771051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229641, 37.289017, 25.886318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133606, 36.967800, 25.668150>,  <38.075985, 36.775070, 25.537249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133606, 36.967800, 25.668150>,  <38.229641, 37.289017, 25.886318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133606, 36.967800, 25.668150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645737, 0.287408, -0.707405,
		0.724833, -0.522036, 0.449551,
		-0.240086, -0.803042, -0.545420,
		38.061581, 36.726887, 25.504524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845814, 36.960125, 25.629162>,  <38.229641, 37.289017, 25.886318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845814, 36.960125, 25.629162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547783, 36.865551, 25.379696>,  <38.368965, 36.808807, 25.230017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547783, 36.865551, 25.379696>,  <38.845814, 36.960125, 25.629162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547783, 36.865551, 25.379696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567219, 0.267305, -0.778981,
		0.350887, -0.934156, -0.065054,
		-0.745079, -0.236434, -0.623665,
		38.324261, 36.794621, 25.192596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143841, 36.921749, 25.014147>,  <38.845814, 36.960125, 25.629162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143841, 36.921749, 25.014147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776970, 36.867111, 24.864408>,  <38.556847, 36.834328, 24.774565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776970, 36.867111, 24.864408>,  <39.143841, 36.921749, 25.014147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776970, 36.867111, 24.864408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299097, 0.384780, -0.873204,
		0.263313, -0.912846, -0.312056,
		-0.917174, -0.136591, -0.374347,
		38.501820, 36.826134, 24.752104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202435, 36.499931, 24.314457>,  <39.143841, 36.921749, 25.014147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202435, 36.499931, 24.314457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855808, 36.699078, 24.328300>,  <38.647835, 36.818565, 24.336607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855808, 36.699078, 24.328300>,  <39.202435, 36.499931, 24.314457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855808, 36.699078, 24.328300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262277, 0.513304, -0.817147,
		-0.424596, -0.699031, -0.575390,
		-0.866562, 0.497869, 0.034607,
		38.595840, 36.848438, 24.338682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808167, 36.578888, 23.605183>,  <39.202435, 36.499931, 24.314457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808167, 36.578888, 23.605183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710541, 36.905140, 23.815012>,  <38.651966, 37.100891, 23.940908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710541, 36.905140, 23.815012>,  <38.808167, 36.578888, 23.605183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710541, 36.905140, 23.815012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312299, 0.578221, -0.753744,
		-0.918096, -0.020141, -0.395847,
		-0.244068, 0.815632, 0.524572,
		38.637321, 37.149830, 23.972383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380974, 36.902111, 23.110435>,  <38.808167, 36.578888, 23.605183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380974, 36.902111, 23.110435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445934, 37.186321, 23.384308>,  <38.484909, 37.356846, 23.548632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445934, 37.186321, 23.384308>,  <38.380974, 36.902111, 23.110435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445934, 37.186321, 23.384308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123255, 0.673848, -0.728517,
		-0.978997, 0.202699, 0.021855,
		0.162397, 0.710522, 0.684679,
		38.494652, 37.399479, 23.589712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034985, 37.421986, 22.843479>,  <38.380974, 36.902111, 23.110435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034985, 37.421986, 22.843479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278786, 37.583851, 23.116169>,  <38.425068, 37.680969, 23.279783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278786, 37.583851, 23.116169>,  <38.034985, 37.421986, 22.843479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278786, 37.583851, 23.116169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379246, 0.606313, -0.698968,
		-0.696187, 0.684567, 0.216084,
		0.609505, 0.404664, 0.681726,
		38.461636, 37.705250, 23.320686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978683, 38.196533, 22.832609>,  <38.034985, 37.421986, 22.843479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978683, 38.196533, 22.832609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333313, 38.090126, 22.983986>,  <38.546089, 38.026279, 23.074812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333313, 38.090126, 22.983986>,  <37.978683, 38.196533, 22.832609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333313, 38.090126, 22.983986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451612, 0.674893, -0.583580,
		-0.100165, 0.688296, 0.718481,
		0.886574, -0.266020, 0.378444,
		38.599285, 38.010319, 23.097519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404213, 38.820934, 23.004313>,  <37.978683, 38.196533, 22.832609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404213, 38.820934, 23.004313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622982, 38.504082, 22.895935>,  <38.754242, 38.313972, 22.830908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622982, 38.504082, 22.895935>,  <38.404213, 38.820934, 23.004313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622982, 38.504082, 22.895935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341491, 0.506573, -0.791687,
		0.764370, 0.340466, 0.547560,
		0.546921, -0.792128, -0.270943,
		38.787060, 38.266445, 22.814651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237415, 38.946068, 22.975605>,  <38.404213, 38.820934, 23.004313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237415, 38.946068, 22.975605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117554, 38.671886, 22.710167>,  <39.045635, 38.507378, 22.550905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117554, 38.671886, 22.710167>,  <39.237415, 38.946068, 22.975605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117554, 38.671886, 22.710167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530399, 0.458467, -0.713081,
		0.793021, -0.565650, 0.226181,
		-0.299657, -0.685455, -0.663594,
		39.027657, 38.466251, 22.511089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758114, 38.888565, 22.455309>,  <39.237415, 38.946068, 22.975605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758114, 38.888565, 22.455309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418373, 38.803989, 22.261858>,  <39.214527, 38.753246, 22.145788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418373, 38.803989, 22.261858>,  <39.758114, 38.888565, 22.455309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418373, 38.803989, 22.261858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189179, 0.733443, -0.652896,
		0.492758, -0.646031, -0.582953,
		-0.849353, -0.211437, -0.483625,
		39.163567, 38.740559, 22.116770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873516, 38.997490, 21.753651>,  <39.758114, 38.888565, 22.455309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873516, 38.997490, 21.753651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487476, 39.039387, 21.849655>,  <39.255852, 39.064526, 21.907257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487476, 39.039387, 21.849655>,  <39.873516, 38.997490, 21.753651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487476, 39.039387, 21.849655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048255, 0.829701, -0.556118,
		-0.257386, -0.548293, -0.795693,
		-0.965103, 0.104741, 0.240011,
		39.197945, 39.070808, 21.921659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513569, 39.043667, 22.025637>,  <39.873516, 38.997490, 21.753651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513569, 39.043667, 22.025637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383945, 39.421909, 22.037083>,  <40.306171, 39.648853, 22.043951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383945, 39.421909, 22.037083>,  <40.513569, 39.043667, 22.025637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383945, 39.421909, 22.037083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297738, -0.130651, 0.945665,
		0.897964, 0.297930, 0.323881,
		-0.324057, 0.945605, 0.028615,
		40.286728, 39.705589, 22.045668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690292, 39.393501, 22.650003>,  <40.513569, 39.043667, 22.025637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690292, 39.393501, 22.650003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352501, 39.566780, 22.524019>,  <40.149826, 39.670750, 22.448429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352501, 39.566780, 22.524019>,  <40.690292, 39.393501, 22.650003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352501, 39.566780, 22.524019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402231, -0.124656, 0.907012,
		0.353656, 0.892635, 0.279516,
		-0.844474, 0.433201, -0.314960,
		40.099159, 39.696739, 22.429531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471016, 40.001587, 23.055796>,  <40.690292, 39.393501, 22.650003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471016, 40.001587, 23.055796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146725, 39.832268, 22.894037>,  <39.952148, 39.730675, 22.796982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146725, 39.832268, 22.894037>,  <40.471016, 40.001587, 23.055796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146725, 39.832268, 22.894037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504730, 0.155446, 0.849167,
		-0.296589, 0.892556, -0.339676,
		-0.810730, -0.423298, -0.404396,
		39.903507, 39.705276, 22.772718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877094, 40.126537, 23.627522>,  <40.471016, 40.001587, 23.055796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877094, 40.126537, 23.627522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672050, 39.919704, 23.353338>,  <39.549023, 39.795605, 23.188828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672050, 39.919704, 23.353338>,  <39.877094, 40.126537, 23.627522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672050, 39.919704, 23.353338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726024, -0.165160, 0.667542,
		-0.458385, 0.839849, -0.290752,
		-0.512614, -0.517084, -0.685457,
		39.518265, 39.764580, 23.147701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339588, 40.476963, 23.475071>,  <39.877094, 40.126537, 23.627522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339588, 40.476963, 23.475071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283810, 40.083042, 23.433668>,  <39.250343, 39.846687, 23.408827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283810, 40.083042, 23.433668>,  <39.339588, 40.476963, 23.475071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283810, 40.083042, 23.433668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597319, 0.000283, 0.802004,
		-0.789788, 0.173662, -0.588283,
		-0.139444, -0.984805, -0.103508,
		39.241978, 39.787601, 23.402617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608143, 40.250431, 23.538391>,  <39.339588, 40.476963, 23.475071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608143, 40.250431, 23.538391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852783, 39.962124, 23.668892>,  <38.999565, 39.789139, 23.747192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.852783, 39.962124, 23.668892>,  <38.608143, 40.250431, 23.538391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852783, 39.962124, 23.668892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261995, 0.204593, 0.943133,
		-0.746530, -0.662294, -0.063710,
		0.611597, -0.720769, 0.326253,
		39.036263, 39.745892, 23.766768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214870, 39.786034, 24.059151>,  <38.608143, 40.250431, 23.538391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214870, 39.786034, 24.059151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598877, 39.704273, 24.135658>,  <38.829281, 39.655216, 24.181562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598877, 39.704273, 24.135658>,  <38.214870, 39.786034, 24.059151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598877, 39.704273, 24.135658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154749, 0.181859, 0.971072,
		-0.233274, -0.961845, 0.142957,
		0.960019, -0.204403, 0.191267,
		38.886883, 39.642952, 24.193039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122242, 39.222645, 24.420607>,  <38.214870, 39.786034, 24.059151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122242, 39.222645, 24.420607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466454, 39.393867, 24.531061>,  <38.672981, 39.496601, 24.597334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466454, 39.393867, 24.531061>,  <38.122242, 39.222645, 24.420607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466454, 39.393867, 24.531061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323078, 0.039527, 0.945547,
		0.393834, -0.902887, 0.172310,
		0.860532, 0.428058, 0.276136,
		38.724613, 39.522285, 24.613901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328701, 38.843239, 25.017332>,  <38.122242, 39.222645, 24.420607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328701, 38.843239, 25.017332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525982, 39.189468, 25.052040>,  <38.644348, 39.397205, 25.072865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525982, 39.189468, 25.052040>,  <38.328701, 38.843239, 25.017332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525982, 39.189468, 25.052040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123640, -0.028985, 0.991904,
		0.861085, -0.499934, 0.092725,
		0.493199, 0.865578, 0.086770,
		38.673943, 39.449142, 25.078072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658623, 38.765106, 25.671701>,  <38.328701, 38.843239, 25.017332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658623, 38.765106, 25.671701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718037, 39.158684, 25.632111>,  <38.753685, 39.394829, 25.608356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718037, 39.158684, 25.632111>,  <38.658623, 38.765106, 25.671701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718037, 39.158684, 25.632111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033759, 0.094985, 0.994906,
		0.988331, -0.151120, -0.019108,
		0.148535, 0.983941, -0.098978,
		38.762596, 39.453865, 25.602417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139198, 38.885170, 26.210009>,  <38.658623, 38.765106, 25.671701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139198, 38.885170, 26.210009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984043, 39.241573, 26.115643>,  <38.890949, 39.455414, 26.059023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984043, 39.241573, 26.115643>,  <39.139198, 38.885170, 26.210009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984043, 39.241573, 26.115643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016472, 0.249213, 0.968309,
		0.921561, 0.379477, -0.081989,
		-0.387884, 0.891005, -0.235916,
		38.867680, 39.508873, 26.044868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482513, 39.344696, 26.657032>,  <39.139198, 38.885170, 26.210009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482513, 39.344696, 26.657032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151131, 39.540932, 26.548965>,  <38.952301, 39.658672, 26.484125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.151131, 39.540932, 26.548965>,  <39.482513, 39.344696, 26.657032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151131, 39.540932, 26.548965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167072, 0.243944, 0.955290,
		0.534559, 0.836549, -0.120133,
		-0.828453, 0.490588, -0.270166,
		38.902596, 39.688107, 26.467916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597366, 40.078362, 26.976913>,  <39.482513, 39.344696, 26.657032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597366, 40.078362, 26.976913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212639, 39.998219, 26.902344>,  <38.981800, 39.950130, 26.857601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212639, 39.998219, 26.902344>,  <39.597366, 40.078362, 26.976913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212639, 39.998219, 26.902344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230777, 0.227618, 0.946008,
		-0.147110, 0.952914, -0.265167,
		-0.961821, -0.200362, -0.186426,
		38.924091, 39.938110, 26.846416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270260, 40.574158, 27.375736>,  <39.597366, 40.078362, 26.976913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270260, 40.574158, 27.375736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981171, 40.309246, 27.296673>,  <38.807716, 40.150299, 27.249235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981171, 40.309246, 27.296673>,  <39.270260, 40.574158, 27.375736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981171, 40.309246, 27.296673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307269, 0.051720, 0.950216,
		-0.619082, 0.747473, -0.240876,
		-0.722719, -0.662275, -0.197656,
		38.764355, 40.110565, 27.237375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655491, 40.789120, 27.776985>,  <39.270260, 40.574158, 27.375736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655491, 40.789120, 27.776985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599396, 40.400440, 27.700947>,  <38.565739, 40.167233, 27.655323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599396, 40.400440, 27.700947>,  <38.655491, 40.789120, 27.776985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599396, 40.400440, 27.700947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287708, -0.143717, 0.946873,
		-0.947395, 0.187477, -0.259411,
		-0.140235, -0.971698, -0.190096,
		38.557323, 40.108932, 27.643919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067787, 40.585560, 28.178257>,  <38.655491, 40.789120, 27.776985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067787, 40.585560, 28.178257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249950, 40.240162, 28.091553>,  <38.359249, 40.032925, 28.039530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249950, 40.240162, 28.091553>,  <38.067787, 40.585560, 28.178257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249950, 40.240162, 28.091553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247333, -0.356600, 0.900923,
		-0.855237, -0.356674, -0.375969,
		0.455407, -0.863493, -0.216760,
		38.386574, 39.981113, 28.026525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712166, 40.147392, 28.634317>,  <38.067787, 40.585560, 28.178257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712166, 40.147392, 28.634317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020473, 39.921062, 28.517183>,  <38.205460, 39.785263, 28.446903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020473, 39.921062, 28.517183>,  <37.712166, 40.147392, 28.634317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020473, 39.921062, 28.517183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123604, -0.583699, 0.802507,
		-0.625011, -0.582350, -0.519835,
		0.770768, -0.565830, -0.292838,
		38.251705, 39.751312, 28.429333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533474, 39.426605, 28.499487>,  <37.712166, 40.147392, 28.634317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533474, 39.426605, 28.499487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923965, 39.411507, 28.584862>,  <38.158260, 39.402447, 28.636087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923965, 39.411507, 28.584862>,  <37.533474, 39.426605, 28.499487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923965, 39.411507, 28.584862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178528, -0.698438, 0.693045,
		0.122914, -0.714674, -0.688573,
		0.976228, -0.037744, 0.213437,
		38.216835, 39.400185, 28.648893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678543, 38.713886, 28.431770>,  <37.533474, 39.426605, 28.499487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678543, 38.713886, 28.431770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953327, 38.899570, 28.655413>,  <38.118198, 39.010979, 28.789598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953327, 38.899570, 28.655413>,  <37.678543, 38.713886, 28.431770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953327, 38.899570, 28.655413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200924, -0.618059, 0.760021,
		0.698369, -0.634440, -0.331309,
		0.686957, 0.464208, 0.559108,
		38.159416, 39.038834, 28.823145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089233, 38.154961, 28.792931>,  <37.678543, 38.713886, 28.431770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089233, 38.154961, 28.792931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171879, 38.483723, 29.005264>,  <38.221466, 38.680981, 29.132664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171879, 38.483723, 29.005264>,  <38.089233, 38.154961, 28.792931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171879, 38.483723, 29.005264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212438, -0.491914, 0.844329,
		0.955083, -0.287216, 0.072969,
		0.206610, 0.821905, 0.530834,
		38.233860, 38.730293, 29.164515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558285, 38.001190, 29.386379>,  <38.089233, 38.154961, 28.792931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558285, 38.001190, 29.386379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403164, 38.353241, 29.495911>,  <38.310089, 38.564472, 29.561630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403164, 38.353241, 29.495911>,  <38.558285, 38.001190, 29.386379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403164, 38.353241, 29.495911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019132, -0.289328, 0.957039,
		0.921543, 0.376383, 0.095364,
		-0.387805, 0.880128, 0.273829,
		38.286823, 38.617279, 29.578060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940750, 38.279480, 30.002468>,  <38.558285, 38.001190, 29.386379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940750, 38.279480, 30.002468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582672, 38.455460, 30.030943>,  <38.367825, 38.561047, 30.048029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582672, 38.455460, 30.030943>,  <38.940750, 38.279480, 30.002468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582672, 38.455460, 30.030943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016205, -0.127494, 0.991707,
		0.445376, 0.888927, 0.107003,
		-0.895197, 0.439948, 0.071188,
		38.314114, 38.587444, 30.052299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973034, 38.676140, 30.575218>,  <38.940750, 38.279480, 30.002468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973034, 38.676140, 30.575218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582626, 38.746540, 30.523975>,  <38.348381, 38.788780, 30.493229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582626, 38.746540, 30.523975>,  <38.973034, 38.676140, 30.575218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582626, 38.746540, 30.523975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117425, 0.069881, 0.990620,
		0.183306, 0.981906, -0.047538,
		-0.976017, 0.176005, -0.128109,
		38.289822, 38.799343, 30.485542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769703, 39.312634, 30.836548>,  <38.973034, 38.676140, 30.575218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769703, 39.312634, 30.836548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442192, 39.083271, 30.847984>,  <38.245686, 38.945656, 30.854847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442192, 39.083271, 30.847984>,  <38.769703, 39.312634, 30.836548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442192, 39.083271, 30.847984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080464, 0.163922, 0.983186,
		-0.568449, 0.802707, -0.180354,
		-0.818775, -0.573403, 0.028592,
		38.196560, 38.911251, 30.856562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343788, 39.756344, 31.292379>,  <38.769703, 39.312634, 30.836548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343788, 39.756344, 31.292379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190903, 39.387123, 31.275043>,  <38.099171, 39.165588, 31.264643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190903, 39.387123, 31.275043>,  <38.343788, 39.756344, 31.292379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190903, 39.387123, 31.275043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075817, -0.015418, 0.997002,
		-0.920957, 0.384357, -0.064090,
		-0.382217, -0.923056, -0.043340,
		38.076237, 39.110207, 31.262041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650070, 39.798401, 31.584908>,  <38.343788, 39.756344, 31.292379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650070, 39.798401, 31.584908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759216, 39.414467, 31.611002>,  <37.824703, 39.184105, 31.626657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759216, 39.414467, 31.611002>,  <37.650070, 39.798401, 31.584908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759216, 39.414467, 31.611002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214924, 0.005276, 0.976616,
		-0.937738, -0.280503, -0.204853,
		0.272863, -0.959839, 0.065235,
		37.841076, 39.126514, 31.630573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044399, 39.448620, 31.827888>,  <37.650070, 39.798401, 31.584908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044399, 39.448620, 31.827888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352283, 39.206467, 31.908943>,  <37.537014, 39.061172, 31.957577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352283, 39.206467, 31.908943>,  <37.044399, 39.448620, 31.827888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352283, 39.206467, 31.908943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340191, -0.120359, 0.932622,
		-0.540206, -0.786780, -0.298588,
		0.769706, -0.605385, 0.202637,
		37.583195, 39.024853, 31.969734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755436, 38.867386, 31.982744>,  <37.044399, 39.448620, 31.827888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755436, 38.867386, 31.982744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110325, 38.843578, 32.165737>,  <37.323257, 38.829292, 32.275532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110325, 38.843578, 32.165737>,  <36.755436, 38.867386, 31.982744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110325, 38.843578, 32.165737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461260, -0.096140, 0.882041,
		-0.008516, -0.993587, -0.112752,
		0.887225, -0.059519, 0.457483,
		37.376492, 38.825722, 32.302982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659218, 38.397350, 32.376087>,  <36.755436, 38.867386, 31.982744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659218, 38.397350, 32.376087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981915, 38.555504, 32.551739>,  <37.175533, 38.650398, 32.657131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981915, 38.555504, 32.551739>,  <36.659218, 38.397350, 32.376087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981915, 38.555504, 32.551739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293993, -0.376066, 0.878716,
		0.512576, -0.837999, -0.187147,
		0.806743, 0.395388, 0.439128,
		37.223938, 38.674122, 32.683475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980907, 37.868652, 32.730473>,  <36.659218, 38.397350, 32.376087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980907, 37.868652, 32.730473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105076, 38.185810, 32.940216>,  <37.179577, 38.376106, 33.066063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105076, 38.185810, 32.940216>,  <36.980907, 37.868652, 32.730473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105076, 38.185810, 32.940216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315106, -0.434596, 0.843703,
		0.896855, -0.427131, 0.114940,
		0.310419, 0.792897, 0.524361,
		37.198200, 38.423679, 33.097523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285648, 37.598980, 33.397148>,  <36.980907, 37.868652, 32.730473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285648, 37.598980, 33.397148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197750, 37.982006, 33.471752>,  <37.145012, 38.211823, 33.516514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.197750, 37.982006, 33.471752>,  <37.285648, 37.598980, 33.397148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197750, 37.982006, 33.471752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231437, -0.236893, 0.943567,
		0.947706, 0.164185, 0.273672,
		-0.219750, 0.957562, 0.186506,
		37.131824, 38.269276, 33.527702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524178, 37.691208, 34.055428>,  <37.285648, 37.598980, 33.397148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524178, 37.691208, 34.055428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253006, 37.974442, 33.976406>,  <37.090305, 38.144382, 33.928993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253006, 37.974442, 33.976406>,  <37.524178, 37.691208, 34.055428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253006, 37.974442, 33.976406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340549, -0.064333, 0.938023,
		0.651494, 0.703188, 0.284752,
		-0.677925, 0.708088, -0.197557,
		37.049629, 38.186867, 33.917137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566559, 38.250488, 34.587803>,  <37.524178, 37.691208, 34.055428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566559, 38.250488, 34.587803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195522, 38.256351, 34.438484>,  <36.972900, 38.259869, 34.348892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195522, 38.256351, 34.438484>,  <37.566559, 38.250488, 34.587803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195522, 38.256351, 34.438484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370517, -0.163924, 0.914246,
		-0.047793, 0.986364, 0.157486,
		-0.927595, 0.014657, -0.373299,
		36.917244, 38.260750, 34.326496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092556, 38.603409, 35.044029>,  <37.566559, 38.250488, 34.587803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092556, 38.603409, 35.044029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836266, 38.399063, 34.814774>,  <36.682491, 38.276455, 34.677219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836266, 38.399063, 34.814774>,  <37.092556, 38.603409, 35.044029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836266, 38.399063, 34.814774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569809, -0.183922, 0.800931,
		-0.514580, 0.839757, -0.173251,
		-0.640722, -0.510863, -0.573144,
		36.644051, 38.245804, 34.642830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462791, 39.093483, 34.971893>,  <37.092556, 38.603409, 35.044029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462791, 39.093483, 34.971893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339489, 38.724972, 34.877048>,  <36.265507, 38.503864, 34.820141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339489, 38.724972, 34.877048>,  <36.462791, 39.093483, 34.971893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339489, 38.724972, 34.877048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657567, 0.026233, 0.752939,
		-0.687445, 0.388022, -0.613888,
		-0.308261, -0.921277, -0.237117,
		36.247009, 38.448589, 34.805912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813896, 39.145512, 35.056004>,  <36.462791, 39.093483, 34.971893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813896, 39.145512, 35.056004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900333, 38.754967, 35.057934>,  <35.952194, 38.520641, 35.059090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900333, 38.754967, 35.057934>,  <35.813896, 39.145512, 35.056004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900333, 38.754967, 35.057934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593818, -0.127502, 0.794433,
		-0.775039, -0.174533, -0.607333,
		0.216091, -0.976362, 0.004822,
		35.965160, 38.462059, 35.059380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183620, 38.810432, 35.163078>,  <35.813896, 39.145512, 35.056004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183620, 38.810432, 35.163078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451809, 38.530056, 35.260361>,  <35.612720, 38.361832, 35.318729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451809, 38.530056, 35.260361>,  <35.183620, 38.810432, 35.163078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451809, 38.530056, 35.260361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562105, -0.265945, 0.783142,
		-0.484257, -0.661781, -0.572312,
		0.670472, -0.700941, 0.243205,
		35.652950, 38.319775, 35.333321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826241, 38.237553, 35.337509>,  <35.183620, 38.810432, 35.163078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826241, 38.237553, 35.337509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177891, 38.170776, 35.516064>,  <35.388882, 38.130711, 35.623196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177891, 38.170776, 35.516064>,  <34.826241, 38.237553, 35.337509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177891, 38.170776, 35.516064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466559, -0.110334, 0.877581,
		-0.097218, -0.979780, -0.174868,
		0.879131, -0.166903, 0.446399,
		35.441628, 38.120693, 35.649982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552345, 37.955360, 35.875927>,  <34.826241, 38.237553, 35.337509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552345, 37.955360, 35.875927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934582, 38.024727, 35.971233>,  <35.163925, 38.066349, 36.028416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934582, 38.024727, 35.971233>,  <34.552345, 37.955360, 35.875927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934582, 38.024727, 35.971233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217583, -0.130098, 0.967332,
		0.198754, -0.976217, -0.086587,
		0.955592, 0.173421, 0.238266,
		35.221260, 38.076752, 36.042713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750313, 37.435528, 36.262283>,  <34.552345, 37.955360, 35.875927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750313, 37.435528, 36.262283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018139, 37.710251, 36.375401>,  <35.178833, 37.875084, 36.443272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018139, 37.710251, 36.375401>,  <34.750313, 37.435528, 36.262283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018139, 37.710251, 36.375401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199226, -0.200718, 0.959177,
		0.715535, -0.698573, 0.002437,
		0.669567, 0.686810, 0.282795,
		35.219009, 37.916294, 36.460239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241871, 37.118496, 36.784966>,  <34.750313, 37.435528, 36.262283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241871, 37.118496, 36.784966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244400, 37.515743, 36.831734>,  <35.245918, 37.754093, 36.859795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244400, 37.515743, 36.831734>,  <35.241871, 37.118496, 36.784966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244400, 37.515743, 36.831734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237890, -0.112074, 0.964805,
		0.971271, -0.033918, 0.235544,
		0.006326, 0.993121, 0.116923,
		35.246300, 37.813679, 36.866810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739067, 37.212467, 37.312134>,  <35.241871, 37.118496, 36.784966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739067, 37.212467, 37.312134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538948, 37.558681, 37.302723>,  <35.418877, 37.766411, 37.297077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538948, 37.558681, 37.302723>,  <35.739067, 37.212467, 37.312134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538948, 37.558681, 37.302723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040966, 0.050808, 0.997868,
		0.864884, 0.498267, -0.060877,
		-0.500297, 0.865534, -0.023531,
		35.388859, 37.818340, 37.295662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143570, 37.610809, 37.796055>,  <35.739067, 37.212467, 37.312134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143570, 37.610809, 37.796055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773460, 37.756683, 37.754353>,  <35.551395, 37.844208, 37.729332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773460, 37.756683, 37.754353>,  <36.143570, 37.610809, 37.796055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773460, 37.756683, 37.754353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144088, -0.083701, 0.986019,
		0.350864, 0.927360, 0.129994,
		-0.925275, 0.364689, -0.104253,
		35.495876, 37.866089, 37.723076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952625, 38.217892, 38.297119>,  <36.143570, 37.610809, 37.796055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952625, 38.217892, 38.297119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603310, 38.061840, 38.180386>,  <35.393719, 37.968208, 38.110348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603310, 38.061840, 38.180386>,  <35.952625, 38.217892, 38.297119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603310, 38.061840, 38.180386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267768, -0.116084, 0.956465,
		-0.407023, 0.913413, -0.003090,
		-0.873288, -0.390131, -0.291832,
		35.341324, 37.944801, 38.092834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277657, 38.521389, 37.678383>,  <35.952625, 38.217892, 38.297119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277657, 38.521389, 37.678383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601521, 38.307842, 37.775898>,  <36.795837, 38.179714, 37.834408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601521, 38.307842, 37.775898>,  <36.277657, 38.521389, 37.678383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601521, 38.307842, 37.775898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337523, 0.083748, -0.937584,
		0.480132, 0.841409, 0.248001,
		0.809661, -0.533871, 0.243784,
		36.844418, 38.147682, 37.849033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794647, 38.882919, 37.352943>,  <36.277657, 38.521389, 37.678383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794647, 38.882919, 37.352943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989113, 38.543465, 37.436340>,  <37.105793, 38.339794, 37.486378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989113, 38.543465, 37.436340>,  <36.794647, 38.882919, 37.352943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989113, 38.543465, 37.436340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582070, 0.136518, -0.801597,
		0.651799, 0.511062, 0.560333,
		0.486161, -0.848633, 0.208491,
		37.134960, 38.288876, 37.498886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574696, 39.011711, 37.345310>,  <36.794647, 38.882919, 37.352943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574696, 39.011711, 37.345310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590340, 38.616863, 37.283268>,  <37.599728, 38.379955, 37.246044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590340, 38.616863, 37.283268>,  <37.574696, 39.011711, 37.345310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590340, 38.616863, 37.283268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609711, 0.146555, -0.778957,
		0.791658, -0.064103, 0.607592,
		0.039113, -0.987123, -0.155106,
		37.602074, 38.320724, 37.236736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302670, 38.853573, 37.242386>,  <37.574696, 39.011711, 37.345310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302670, 38.853573, 37.242386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107460, 38.537888, 37.093269>,  <37.990334, 38.348476, 37.003799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107460, 38.537888, 37.093269>,  <38.302670, 38.853573, 37.242386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107460, 38.537888, 37.093269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662212, -0.056553, -0.747179,
		0.568602, -0.611509, 0.550226,
		-0.488024, -0.789214, -0.372793,
		37.961052, 38.301125, 36.981430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858078, 38.391117, 37.061058>,  <38.302670, 38.853573, 37.242386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858078, 38.391117, 37.061058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551991, 38.259033, 36.840004>,  <38.368340, 38.179783, 36.707371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551991, 38.259033, 36.840004>,  <38.858078, 38.391117, 37.061058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551991, 38.259033, 36.840004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602553, -0.065127, -0.795417,
		0.226660, -0.941660, 0.248804,
		-0.765216, -0.330206, -0.552638,
		38.322426, 38.159973, 36.674213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170547, 38.024418, 36.660347>,  <38.858078, 38.391117, 37.061058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170547, 38.024418, 36.660347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829502, 38.037205, 36.451721>,  <38.624874, 38.044876, 36.326546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829502, 38.037205, 36.451721>,  <39.170547, 38.024418, 36.660347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829502, 38.037205, 36.451721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522365, 0.078103, -0.849138,
		0.013590, -0.996433, -0.083291,
		-0.852614, 0.031968, -0.521563,
		38.573719, 38.046795, 36.295254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127964, 37.509823, 36.131519>,  <39.170547, 38.024418, 36.660347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127964, 37.509823, 36.131519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859207, 37.783569, 36.018246>,  <38.697952, 37.947819, 35.950279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859207, 37.783569, 36.018246>,  <39.127964, 37.509823, 36.131519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859207, 37.783569, 36.018246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524049, 0.169090, -0.834734,
		-0.523383, -0.709258, -0.472254,
		-0.671895, 0.684370, -0.283187,
		38.657639, 37.988880, 35.933289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009052, 37.343540, 35.339115>,  <39.127964, 37.509823, 36.131519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009052, 37.343540, 35.339115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902790, 37.720711, 35.419434>,  <38.839031, 37.947014, 35.467625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902790, 37.720711, 35.419434>,  <39.009052, 37.343540, 35.339115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902790, 37.720711, 35.419434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585710, 0.323293, -0.743254,
		-0.765748, -0.079843, -0.638165,
		-0.265658, 0.942925, 0.200796,
		38.823093, 38.003590, 35.479671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771103, 37.607250, 34.768745>,  <39.009052, 37.343540, 35.339115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771103, 37.607250, 34.768745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903748, 37.909389, 34.994839>,  <38.983334, 38.090672, 35.130493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903748, 37.909389, 34.994839>,  <38.771103, 37.607250, 34.768745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903748, 37.909389, 34.994839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555757, 0.327734, -0.764019,
		-0.762345, 0.567486, -0.311110,
		0.331609, 0.755348, 0.565231,
		39.003231, 38.135994, 35.164410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934589, 38.004868, 34.307098>,  <38.771103, 37.607250, 34.768745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934589, 38.004868, 34.307098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120399, 38.186871, 34.610992>,  <39.231884, 38.296070, 34.793327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120399, 38.186871, 34.610992>,  <38.934589, 38.004868, 34.307098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120399, 38.186871, 34.610992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632560, 0.429910, -0.644240,
		-0.619748, 0.779839, -0.088114,
		0.464523, 0.455004, 0.759730,
		39.259758, 38.323372, 34.838913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051479, 38.695904, 34.090855>,  <38.934589, 38.004868, 34.307098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051479, 38.695904, 34.090855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306076, 38.687496, 34.399254>,  <39.458832, 38.682449, 34.584293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306076, 38.687496, 34.399254>,  <39.051479, 38.695904, 34.090855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306076, 38.687496, 34.399254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655927, 0.540644, -0.526749,
		-0.405762, 0.840989, 0.357903,
		0.636488, -0.021024, 0.771000,
		39.497021, 38.681190, 34.630554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299435, 39.383686, 34.133404>,  <39.051479, 38.695904, 34.090855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299435, 39.383686, 34.133404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554600, 39.146439, 34.329880>,  <39.707699, 39.004089, 34.447765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554600, 39.146439, 34.329880>,  <39.299435, 39.383686, 34.133404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554600, 39.146439, 34.329880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767595, 0.438261, -0.467681,
		0.062123, 0.675376, 0.734852,
		0.637917, -0.593123, 0.491189,
		39.745975, 38.968502, 34.477238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598499, 39.808891, 34.601532>,  <39.299435, 39.383686, 34.133404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598499, 39.808891, 34.601532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838970, 39.498634, 34.524628>,  <39.983253, 39.312481, 34.478485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838970, 39.498634, 34.524628>,  <39.598499, 39.808891, 34.601532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838970, 39.498634, 34.524628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607965, 0.600082, -0.519884,
		0.518619, 0.195652, 0.832319,
		0.601177, -0.775643, -0.192264,
		40.019321, 39.265942, 34.466949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397537, 40.043331, 34.644768>,  <39.598499, 39.808891, 34.601532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397537, 40.043331, 34.644768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357735, 39.714478, 34.420555>,  <40.333855, 39.517166, 34.286026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357735, 39.714478, 34.420555>,  <40.397537, 40.043331, 34.644768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357735, 39.714478, 34.420555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519216, 0.437658, -0.734078,
		0.848831, -0.364080, 0.383316,
		-0.099502, -0.822132, -0.560534,
		40.327885, 39.467838, 34.252396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885796, 40.179951, 34.263775>,  <40.397537, 40.043331, 34.644768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885796, 40.179951, 34.263775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697258, 39.884472, 34.071041>,  <40.584137, 39.707184, 33.955402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697258, 39.884472, 34.071041>,  <40.885796, 40.179951, 34.263775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697258, 39.884472, 34.071041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380286, 0.322704, -0.866744,
		0.795752, -0.591765, 0.128813,
		-0.471340, -0.738699, -0.481832,
		40.555855, 39.662861, 33.926491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452145, 39.799816, 33.796417>,  <40.885796, 40.179951, 34.263775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452145, 39.799816, 33.796417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086647, 39.753376, 33.640678>,  <40.867348, 39.725513, 33.547237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086647, 39.753376, 33.640678>,  <41.452145, 39.799816, 33.796417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086647, 39.753376, 33.640678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367272, 0.173722, -0.913746,
		0.173722, -0.977928, -0.116098,
		0.913746, 0.116098, 0.389345,
		40.812523, 39.718548, 33.523876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473709, 39.367435, 33.210808>,  <41.452145, 39.799816, 33.796417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473709, 39.367435, 33.210808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125965, 39.557018, 33.154831>,  <40.917320, 39.670769, 33.121246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125965, 39.557018, 33.154831>,  <41.473709, 39.367435, 33.210808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125965, 39.557018, 33.154831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259555, 0.196941, -0.945434,
		-0.420534, -0.858242, -0.294230,
		-0.869357, 0.473956, -0.139941,
		40.865158, 39.699203, 33.112850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259163, 39.201950, 32.487118>,  <41.473709, 39.367435, 33.210808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259163, 39.201950, 32.487118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048088, 39.532307, 32.566563>,  <40.921444, 39.730522, 32.614227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048088, 39.532307, 32.566563>,  <41.259163, 39.201950, 32.487118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048088, 39.532307, 32.566563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015109, 0.224650, -0.974322,
		-0.849307, -0.517134, -0.106065,
		-0.527683, 0.825896, 0.198610,
		40.889782, 39.780075, 32.626144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730270, 39.154858, 32.019146>,  <41.259163, 39.201950, 32.487118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730270, 39.154858, 32.019146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706867, 39.538937, 32.128391>,  <40.692825, 39.769386, 32.193939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706867, 39.538937, 32.128391>,  <40.730270, 39.154858, 32.019146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706867, 39.538937, 32.128391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138351, 0.263146, -0.954784,
		-0.988654, -0.093645, 0.117450,
		-0.058504, 0.960200, 0.273116,
		40.689316, 39.826996, 32.210327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209785, 39.398521, 31.661905>,  <40.730270, 39.154858, 32.019146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209785, 39.398521, 31.661905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411274, 39.728298, 31.765104>,  <40.532166, 39.926163, 31.827024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411274, 39.728298, 31.765104>,  <40.209785, 39.398521, 31.661905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411274, 39.728298, 31.765104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011143, 0.304831, -0.952341,
		-0.863796, 0.476837, 0.162736,
		0.503718, 0.824442, 0.257998,
		40.562389, 39.975632, 31.842505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797955, 39.894924, 31.479593>,  <40.209785, 39.398521, 31.661905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797955, 39.894924, 31.479593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151745, 40.080536, 31.499063>,  <40.364021, 40.191902, 31.510746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151745, 40.080536, 31.499063>,  <39.797955, 39.894924, 31.479593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151745, 40.080536, 31.499063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047419, 0.193179, -0.980017,
		-0.464163, 0.864497, 0.192867,
		0.884480, 0.464033, 0.048673,
		40.417088, 40.219746, 31.513666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763523, 40.645824, 31.136889>,  <39.797955, 39.894924, 31.479593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763523, 40.645824, 31.136889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139454, 40.509182, 31.134985>,  <40.365013, 40.427197, 31.133842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139454, 40.509182, 31.134985>,  <39.763523, 40.645824, 31.136889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139454, 40.509182, 31.134985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074364, -0.190954, -0.978778,
		0.333448, 0.920240, -0.204868,
		0.939831, -0.341606, -0.004759,
		40.421402, 40.406700, 31.133556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962307, 40.807426, 30.431854>,  <39.763523, 40.645824, 31.136889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962307, 40.807426, 30.431854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264381, 40.578083, 30.558945>,  <40.445625, 40.440475, 30.635199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264381, 40.578083, 30.558945>,  <39.962307, 40.807426, 30.431854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264381, 40.578083, 30.558945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279940, -0.156186, -0.947227,
		0.592728, 0.804277, 0.042558,
		0.755186, -0.573362, 0.317725,
		40.490936, 40.406075, 30.654263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615234, 41.060959, 30.047413>,  <39.962307, 40.807426, 30.431854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615234, 41.060959, 30.047413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709435, 40.687523, 30.155449>,  <40.765953, 40.463463, 30.220270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709435, 40.687523, 30.155449>,  <40.615234, 41.060959, 30.047413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709435, 40.687523, 30.155449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330177, -0.184524, -0.925707,
		0.914069, 0.307182, 0.264795,
		0.235500, -0.933590, 0.270092,
		40.780083, 40.407448, 30.236477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362171, 40.929756, 29.815670>,  <40.615234, 41.060959, 30.047413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362171, 40.929756, 29.815670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164463, 40.584721, 29.858822>,  <41.045837, 40.377701, 29.884712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164463, 40.584721, 29.858822>,  <41.362171, 40.929756, 29.815670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164463, 40.584721, 29.858822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256137, -0.263097, -0.930147,
		0.830718, -0.432111, 0.350982,
		-0.494269, -0.862589, 0.107880,
		41.016182, 40.325943, 29.891186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674530, 40.512138, 29.356173>,  <41.362171, 40.929756, 29.815670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674530, 40.512138, 29.356173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352848, 40.296413, 29.456091>,  <41.159840, 40.166977, 29.516043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352848, 40.296413, 29.456091>,  <41.674530, 40.512138, 29.356173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352848, 40.296413, 29.456091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030775, -0.457503, -0.888676,
		0.593561, -0.706986, 0.384522,
		-0.804201, -0.539317, 0.249798,
		41.111588, 40.134617, 29.531031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895779, 39.755318, 29.431757>,  <41.674530, 40.512138, 29.356173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895779, 39.755318, 29.431757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511112, 39.793102, 29.328789>,  <41.280312, 39.815773, 29.267008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511112, 39.793102, 29.328789>,  <41.895779, 39.755318, 29.431757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511112, 39.793102, 29.328789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173334, -0.518011, -0.837627,
		-0.212474, -0.850142, 0.481782,
		-0.961671, 0.094464, -0.257422,
		41.222610, 39.821442, 29.251562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709545, 39.166637, 29.149143>,  <41.895779, 39.755318, 29.431757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709545, 39.166637, 29.149143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416191, 39.388660, 28.992138>,  <41.240181, 39.521873, 28.897934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416191, 39.388660, 28.992138>,  <41.709545, 39.166637, 29.149143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416191, 39.388660, 28.992138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149279, -0.431801, -0.889530,
		-0.663225, -0.710958, 0.233817,
		-0.733381, 0.555055, -0.392513,
		41.196178, 39.555176, 28.874384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298916, 38.644073, 28.770420>,  <41.709545, 39.166637, 29.149143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298916, 38.644073, 28.770420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223801, 39.013275, 28.636076>,  <41.178730, 39.234795, 28.555470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223801, 39.013275, 28.636076>,  <41.298916, 38.644073, 28.770420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223801, 39.013275, 28.636076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024558, -0.346249, -0.937821,
		-0.981903, -0.167864, 0.087688,
		-0.187788, 0.923003, -0.335860,
		41.167465, 39.290176, 28.535318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710003, 38.540413, 28.298107>,  <41.298916, 38.644073, 28.770420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710003, 38.540413, 28.298107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892578, 38.882660, 28.200474>,  <41.002125, 39.088009, 28.141893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892578, 38.882660, 28.200474>,  <40.710003, 38.540413, 28.298107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892578, 38.882660, 28.200474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151007, -0.195850, -0.968937,
		-0.876845, 0.479122, 0.039810,
		0.456443, 0.855619, -0.244081,
		41.029510, 39.139347, 28.127249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387321, 38.823391, 27.657995>,  <40.710003, 38.540413, 28.298107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387321, 38.823391, 27.657995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726002, 39.035919, 27.646656>,  <40.929211, 39.163437, 27.639853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726002, 39.035919, 27.646656>,  <40.387321, 38.823391, 27.657995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726002, 39.035919, 27.646656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025338, -0.093485, -0.995298,
		-0.531470, 0.841999, -0.092616,
		0.846698, 0.531318, -0.028350,
		40.980011, 39.195316, 27.638151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240341, 39.245800, 27.136824>,  <40.387321, 38.823391, 27.657995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240341, 39.245800, 27.136824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639042, 39.230431, 27.165152>,  <40.878262, 39.221210, 27.182148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639042, 39.230431, 27.165152>,  <40.240341, 39.245800, 27.136824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639042, 39.230431, 27.165152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067521, -0.081243, -0.994405,
		0.043960, 0.995954, -0.078384,
		0.996749, -0.038422, 0.070819,
		40.938068, 39.218903, 27.186398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422874, 39.682140, 26.682512>,  <40.240341, 39.245800, 27.136824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422874, 39.682140, 26.682512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735592, 39.437809, 26.732618>,  <40.923222, 39.291210, 26.762682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735592, 39.437809, 26.732618>,  <40.422874, 39.682140, 26.682512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735592, 39.437809, 26.732618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003881, -0.205653, -0.978617,
		0.623530, 0.764587, -0.163148,
		0.781790, -0.610830, 0.125263,
		40.970127, 39.254559, 26.770197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044456, 39.926029, 26.132132>,  <40.422874, 39.682140, 26.682512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044456, 39.926029, 26.132132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128399, 39.556622, 26.260555>,  <41.178764, 39.334976, 26.337610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128399, 39.556622, 26.260555>,  <41.044456, 39.926029, 26.132132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128399, 39.556622, 26.260555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271489, -0.260419, -0.926540,
		0.939283, 0.281608, 0.196072,
		0.209860, -0.923514, 0.321061,
		41.191357, 39.279568, 26.356873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742355, 39.788105, 25.792688>,  <41.044456, 39.926029, 26.132132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742355, 39.788105, 25.792688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582649, 39.431690, 25.879076>,  <41.486824, 39.217842, 25.930908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582649, 39.431690, 25.879076>,  <41.742355, 39.788105, 25.792688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582649, 39.431690, 25.879076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047307, -0.215225, -0.975418,
		0.915614, -0.399667, 0.043780,
		-0.399265, -0.891036, 0.215970,
		41.462868, 39.164379, 25.943867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026993, 39.302567, 25.322224>,  <41.742355, 39.788105, 25.792688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026993, 39.302567, 25.322224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679825, 39.146133, 25.444714>,  <41.471523, 39.052273, 25.518208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679825, 39.146133, 25.444714>,  <42.026993, 39.302567, 25.322224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679825, 39.146133, 25.444714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111674, -0.447090, -0.887491,
		0.483993, -0.804466, 0.344363,
		-0.867917, -0.391083, 0.306226,
		41.419449, 39.028809, 25.536581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067219, 38.556705, 25.219582>,  <42.026993, 39.302567, 25.322224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067219, 38.556705, 25.219582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682083, 38.663940, 25.232731>,  <41.451004, 38.728279, 25.240620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682083, 38.663940, 25.232731>,  <42.067219, 38.556705, 25.219582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682083, 38.663940, 25.232731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177552, -0.536525, -0.824995,
		-0.203529, -0.800170, 0.564183,
		-0.962835, 0.268082, 0.032873,
		41.393234, 38.744366, 25.242592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084507, 38.068092, 24.558636>,  <42.067219, 38.556705, 25.219582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084507, 38.068092, 24.558636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417442, 37.907658, 24.405615>,  <42.617203, 37.811398, 24.313803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417442, 37.907658, 24.405615>,  <42.084507, 38.068092, 24.558636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417442, 37.907658, 24.405615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212459, -0.406603, 0.888558,
		-0.511939, -0.820854, -0.253214,
		0.832333, -0.401090, -0.382554,
		42.667141, 37.787331, 24.290848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060760, 37.399628, 24.748211>,  <42.084507, 38.068092, 24.558636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060760, 37.399628, 24.748211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451336, 37.476482, 24.708902>,  <42.685680, 37.522594, 24.685316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451336, 37.476482, 24.708902>,  <42.060760, 37.399628, 24.748211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451336, 37.476482, 24.708902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167390, -0.386858, 0.906819,
		0.136216, -0.901900, -0.409904,
		0.976435, 0.192137, -0.098273,
		42.744267, 37.534122, 24.679420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384018, 36.822441, 24.899553>,  <42.060760, 37.399628, 24.748211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384018, 36.822441, 24.899553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638672, 37.121319, 24.975868>,  <42.791466, 37.300644, 25.021656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638672, 37.121319, 24.975868>,  <42.384018, 36.822441, 24.899553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638672, 37.121319, 24.975868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140903, -0.355941, 0.923825,
		0.758183, -0.561258, -0.331886,
		0.636636, 0.747192, 0.190785,
		42.829662, 37.345478, 25.033104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793869, 36.517891, 25.427835>,  <42.384018, 36.822441, 24.899553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793869, 36.517891, 25.427835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917000, 36.898071, 25.445232>,  <42.990879, 37.126179, 25.455671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917000, 36.898071, 25.445232>,  <42.793869, 36.517891, 25.427835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917000, 36.898071, 25.445232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278465, -0.133708, 0.951094,
		0.909781, -0.280659, -0.305826,
		0.307824, 0.950449, 0.043492,
		43.009346, 37.183205, 25.458281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401112, 36.518711, 25.807621>,  <42.793869, 36.517891, 25.427835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401112, 36.518711, 25.807621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249851, 36.887260, 25.843569>,  <43.159096, 37.108391, 25.865137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249851, 36.887260, 25.843569>,  <43.401112, 36.518711, 25.807621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249851, 36.887260, 25.843569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164658, -0.028588, 0.985936,
		0.910983, 0.387630, -0.140900,
		-0.378150, 0.921372, 0.089869,
		43.136406, 37.163673, 25.870529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779526, 36.852371, 26.295834>,  <43.401112, 36.518711, 25.807621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779526, 36.852371, 26.295834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449436, 37.077976, 26.307777>,  <43.251381, 37.213341, 26.314943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449436, 37.077976, 26.307777>,  <43.779526, 36.852371, 26.295834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449436, 37.077976, 26.307777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036040, -0.000172, 0.999350,
		0.563652, 0.825766, -0.020185,
		-0.825226, 0.564013, 0.029858,
		43.201870, 37.247181, 26.316734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787910, 37.175476, 26.912176>,  <43.779526, 36.852371, 26.295834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787910, 37.175476, 26.912176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407803, 37.269508, 26.830465>,  <43.179737, 37.325928, 26.781439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.407803, 37.269508, 26.830465>,  <43.787910, 37.175476, 26.912176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407803, 37.269508, 26.830465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178241, 0.127349, 0.975711,
		0.255385, 0.963597, -0.079114,
		-0.950268, 0.235081, -0.204275,
		43.122723, 37.340034, 26.769182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616684, 37.848564, 27.237078>,  <43.787910, 37.175476, 26.912176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616684, 37.848564, 27.237078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269234, 37.654568, 27.196545>,  <43.060764, 37.538170, 27.172226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269234, 37.654568, 27.196545>,  <43.616684, 37.848564, 27.237078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269234, 37.654568, 27.196545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232653, 0.218686, 0.947654,
		-0.437448, 0.846732, -0.302792,
		-0.868626, -0.484995, -0.101331,
		43.008644, 37.509068, 27.166145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121193, 38.151585, 27.482056>,  <43.616684, 37.848564, 27.237078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121193, 38.151585, 27.482056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931637, 37.799351, 27.482361>,  <42.817902, 37.588013, 27.482544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931637, 37.799351, 27.482361>,  <43.121193, 38.151585, 27.482056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931637, 37.799351, 27.482361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388500, 0.209853, 0.897235,
		-0.790248, 0.424899, -0.441554,
		-0.473895, -0.880581, 0.000763,
		42.789467, 37.535175, 27.482590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400139, 38.264091, 27.705612>,  <43.121193, 38.151585, 27.482056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400139, 38.264091, 27.705612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456608, 37.872295, 27.763105>,  <42.490490, 37.637218, 27.797602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.456608, 37.872295, 27.763105>,  <42.400139, 38.264091, 27.705612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456608, 37.872295, 27.763105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300051, 0.096023, 0.949078,
		-0.943419, -0.177115, -0.280342,
		0.141177, -0.979495, 0.143734,
		42.498962, 37.578445, 27.806225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689255, 38.117470, 27.912252>,  <42.400139, 38.264091, 27.705612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689255, 38.117470, 27.912252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952061, 37.840416, 28.031303>,  <42.109745, 37.674183, 28.102734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952061, 37.840416, 28.031303>,  <41.689255, 38.117470, 27.912252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952061, 37.840416, 28.031303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309598, 0.112064, 0.944241,
		-0.687369, -0.712528, -0.140811,
		0.657018, -0.692637, 0.297627,
		42.149166, 37.632626, 28.120592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294090, 37.692379, 28.388802>,  <41.689255, 38.117470, 27.912252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294090, 37.692379, 28.388802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678894, 37.603344, 28.452044>,  <41.909775, 37.549923, 28.489988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678894, 37.603344, 28.452044>,  <41.294090, 37.692379, 28.388802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678894, 37.603344, 28.452044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175889, -0.062345, 0.982434,
		-0.208826, -0.972916, -0.099128,
		0.962005, -0.222594, 0.158106,
		41.967495, 37.536568, 28.499475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305992, 37.054157, 28.667807>,  <41.294090, 37.692379, 28.388802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305992, 37.054157, 28.667807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647736, 37.227276, 28.782873>,  <41.852783, 37.331146, 28.851913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647736, 37.227276, 28.782873>,  <41.305992, 37.054157, 28.667807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647736, 37.227276, 28.782873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175682, -0.280418, 0.943664,
		0.489081, -0.856769, -0.163545,
		0.854363, 0.432796, 0.287666,
		41.904045, 37.357113, 28.869173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572155, 36.636509, 29.228735>,  <41.305992, 37.054157, 28.667807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572155, 36.636509, 29.228735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746597, 36.991989, 29.285332>,  <41.851265, 37.205276, 29.319290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746597, 36.991989, 29.285332>,  <41.572155, 36.636509, 29.228735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746597, 36.991989, 29.285332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092967, -0.200887, 0.975193,
		0.895078, -0.412137, -0.170229,
		0.436110, 0.888700, 0.141494,
		41.877430, 37.258598, 29.327780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227726, 36.533779, 29.676655>,  <41.572155, 36.636509, 29.228735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227726, 36.533779, 29.676655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143570, 36.921970, 29.723841>,  <42.093075, 37.154884, 29.752153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143570, 36.921970, 29.723841>,  <42.227726, 36.533779, 29.676655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143570, 36.921970, 29.723841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237869, -0.066224, 0.969037,
		0.948238, 0.231936, -0.216913,
		-0.210389, 0.970474, 0.117966,
		42.080452, 37.213112, 29.759230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630875, 36.829102, 30.125574>,  <42.227726, 36.533779, 29.676655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630875, 36.829102, 30.125574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345158, 37.109024, 30.128836>,  <42.173729, 37.276978, 30.130793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345158, 37.109024, 30.128836>,  <42.630875, 36.829102, 30.125574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345158, 37.109024, 30.128836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079739, 0.069805, 0.994368,
		0.695293, 0.710917, -0.105663,
		-0.714289, 0.699803, 0.008153,
		42.130871, 37.318966, 30.131281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886852, 37.388409, 30.510685>,  <42.630875, 36.829102, 30.125574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886852, 37.388409, 30.510685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490746, 37.443691, 30.517365>,  <42.253082, 37.476860, 30.521372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490746, 37.443691, 30.517365>,  <42.886852, 37.388409, 30.510685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490746, 37.443691, 30.517365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050131, 0.242131, 0.968948,
		0.129869, 0.960350, -0.246702,
		-0.990263, 0.138203, 0.016698,
		42.193668, 37.485153, 30.522373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746479, 37.898094, 31.051659>,  <42.886852, 37.388409, 30.510685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746479, 37.898094, 31.051659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382507, 37.743595, 30.991203>,  <42.164124, 37.650894, 30.954929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382507, 37.743595, 30.991203>,  <42.746479, 37.898094, 31.051659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382507, 37.743595, 30.991203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284109, 0.314944, 0.905590,
		-0.302185, 0.866960, -0.396313,
		-0.909927, -0.386252, -0.151139,
		42.109528, 37.627720, 30.945862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251862, 38.359596, 31.282135>,  <42.746479, 37.898094, 31.051659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251862, 38.359596, 31.282135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059261, 38.009705, 31.304090>,  <41.943703, 37.799770, 31.317263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059261, 38.009705, 31.304090>,  <42.251862, 38.359596, 31.282135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059261, 38.009705, 31.304090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149314, 0.143577, 0.978310,
		-0.863636, 0.462857, -0.199741,
		-0.481496, -0.874728, 0.054888,
		41.914814, 37.747288, 31.320557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674591, 38.534557, 31.689232>,  <42.251862, 38.359596, 31.282135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674591, 38.534557, 31.689232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750664, 38.141918, 31.696060>,  <41.796307, 37.906334, 31.700157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750664, 38.141918, 31.696060>,  <41.674591, 38.534557, 31.689232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750664, 38.141918, 31.696060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030834, 0.023351, 0.999252,
		-0.981266, -0.189509, 0.034708,
		0.190177, -0.981601, 0.017071,
		41.807716, 37.847439, 31.701181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448006, 38.417080, 32.292778>,  <41.674591, 38.534557, 31.689232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448006, 38.417080, 32.292778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615376, 38.061398, 32.218765>,  <41.715797, 37.847988, 32.174358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615376, 38.061398, 32.218765>,  <41.448006, 38.417080, 32.292778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615376, 38.061398, 32.218765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027031, -0.191440, 0.981132,
		-0.907850, -0.415531, -0.056067,
		0.418424, -0.889205, -0.185031,
		41.740902, 37.794636, 32.163258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106186, 37.871334, 32.686153>,  <41.448006, 38.417080, 32.292778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106186, 37.871334, 32.686153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462132, 37.702488, 32.616928>,  <41.675701, 37.601181, 32.575394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462132, 37.702488, 32.616928>,  <41.106186, 37.871334, 32.686153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462132, 37.702488, 32.616928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141936, -0.104365, 0.984359,
		-0.433579, -0.900512, -0.032957,
		0.889867, -0.422120, -0.173066,
		41.729092, 37.575851, 32.565010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135971, 37.191208, 33.016678>,  <41.106186, 37.871334, 32.686153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135971, 37.191208, 33.016678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507183, 37.330559, 32.963921>,  <41.729912, 37.414169, 32.932266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507183, 37.330559, 32.963921>,  <41.135971, 37.191208, 33.016678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507183, 37.330559, 32.963921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131761, 0.024194, 0.990986,
		0.348426, -0.937043, -0.023450,
		0.928029, 0.348375, -0.131895,
		41.785591, 37.435070, 32.924351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422565, 36.901699, 33.641609>,  <41.135971, 37.191208, 33.016678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422565, 36.901699, 33.641609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676750, 37.178692, 33.504990>,  <41.829262, 37.344887, 33.423016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676750, 37.178692, 33.504990>,  <41.422565, 36.901699, 33.641609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676750, 37.178692, 33.504990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249080, 0.234856, 0.939575,
		0.730856, -0.682136, -0.023243,
		0.635459, 0.692483, -0.341552,
		41.867390, 37.386436, 33.402523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040070, 36.769352, 33.958889>,  <41.422565, 36.901699, 33.641609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040070, 36.769352, 33.958889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051743, 37.158810, 33.868412>,  <42.058746, 37.392483, 33.814125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051743, 37.158810, 33.868412>,  <42.040070, 36.769352, 33.958889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051743, 37.158810, 33.868412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252027, 0.211814, 0.944255,
		0.967280, -0.084564, -0.239203,
		0.029183, 0.973645, -0.226196,
		42.060497, 37.450905, 33.800552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680370, 36.931194, 34.346439>,  <42.040070, 36.769352, 33.958889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680370, 36.931194, 34.346439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505226, 37.279404, 34.256577>,  <42.400139, 37.488327, 34.202660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505226, 37.279404, 34.256577>,  <42.680370, 36.931194, 34.346439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505226, 37.279404, 34.256577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283242, 0.370726, 0.884498,
		0.853259, 0.323657, -0.408895,
		-0.437862, 0.870522, -0.224652,
		42.373867, 37.540562, 34.189182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229908, 37.471142, 34.447720>,  <42.680370, 36.931194, 34.346439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229908, 37.471142, 34.447720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857998, 37.617165, 34.466667>,  <42.634850, 37.704781, 34.478035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857998, 37.617165, 34.466667>,  <43.229908, 37.471142, 34.447720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857998, 37.617165, 34.466667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228604, 0.471723, 0.851597,
		0.288538, 0.802626, -0.522052,
		-0.929777, 0.365062, 0.047374,
		42.579063, 37.726685, 34.480881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327297, 37.992714, 34.873154>,  <43.229908, 37.471142, 34.447720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327297, 37.992714, 34.873154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927338, 37.995575, 34.878040>,  <42.687363, 37.997292, 34.880974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927338, 37.995575, 34.878040>,  <43.327297, 37.992714, 34.873154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927338, 37.995575, 34.878040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014155, 0.514769, 0.857212,
		-0.000156, 0.857299, -0.514818,
		-0.999900, 0.007154, 0.012216,
		42.627369, 37.997723, 34.881706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049709, 38.771557, 35.033363>,  <43.327297, 37.992714, 34.873154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049709, 38.771557, 35.033363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758232, 38.513622, 35.125618>,  <42.583344, 38.358864, 35.180969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758232, 38.513622, 35.125618>,  <43.049709, 38.771557, 35.033363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758232, 38.513622, 35.125618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174230, 0.500250, 0.848171,
		-0.662302, 0.577877, -0.476880,
		-0.728697, -0.644832, 0.230633,
		42.539623, 38.320171, 35.194809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531235, 39.163525, 35.241871>,  <43.049709, 38.771557, 35.033363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531235, 39.163525, 35.241871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432816, 38.809879, 35.400768>,  <42.373764, 38.597691, 35.496105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432816, 38.809879, 35.400768>,  <42.531235, 39.163525, 35.241871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432816, 38.809879, 35.400768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074391, 0.425858, 0.901727,
		-0.966398, 0.192319, -0.170553,
		-0.246051, -0.884115, 0.397241,
		42.359001, 38.544643, 35.519939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905579, 39.263432, 35.586582>,  <42.531235, 39.163525, 35.241871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905579, 39.263432, 35.586582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086094, 38.956142, 35.768208>,  <42.194405, 38.771770, 35.877182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086094, 38.956142, 35.768208>,  <41.905579, 39.263432, 35.586582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086094, 38.956142, 35.768208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084300, 0.469848, 0.878713,
		-0.888387, -0.434831, 0.147276,
		0.451289, -0.768222, 0.454063,
		42.221481, 38.725677, 35.904427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546135, 39.117313, 36.183605>,  <41.905579, 39.263432, 35.586582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546135, 39.117313, 36.183605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858662, 38.887806, 36.281853>,  <42.046177, 38.750099, 36.340801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858662, 38.887806, 36.281853>,  <41.546135, 39.117313, 36.183605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858662, 38.887806, 36.281853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113984, 0.255747, 0.960001,
		-0.613639, -0.778061, 0.134418,
		0.781317, -0.573772, 0.245622,
		42.093056, 38.715675, 36.355541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304974, 38.644642, 36.609509>,  <41.546135, 39.117313, 36.183605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304974, 38.644642, 36.609509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697113, 38.635578, 36.687904>,  <41.932396, 38.630138, 36.734940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697113, 38.635578, 36.687904>,  <41.304974, 38.644642, 36.609509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697113, 38.635578, 36.687904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197031, -0.061377, 0.978474,
		-0.010140, -0.997857, -0.064634,
		0.980345, -0.022656, 0.195986,
		41.991215, 38.628780, 36.746700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446556, 38.058758, 37.045807>,  <41.304974, 38.644642, 36.609509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446556, 38.058758, 37.045807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782921, 38.270313, 37.091671>,  <41.984737, 38.397247, 37.119190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782921, 38.270313, 37.091671>,  <41.446556, 38.058758, 37.045807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782921, 38.270313, 37.091671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014606, -0.233982, 0.972131,
		0.540980, -0.815798, -0.204482,
		0.840908, 0.528891, 0.114664,
		42.035194, 38.428982, 37.126072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927086, 37.597843, 37.184692>,  <41.446556, 38.058758, 37.045807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927086, 37.597843, 37.184692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009670, 37.958565, 37.336548>,  <42.059223, 38.174995, 37.427662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.009670, 37.958565, 37.336548>,  <41.927086, 37.597843, 37.184692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.009670, 37.958565, 37.336548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107228, -0.364808, 0.924888,
		0.972561, -0.231663, 0.021379,
		0.206463, 0.901802, 0.379638,
		42.071609, 38.229107, 37.450439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086842, 37.378574, 37.847435>,  <41.927086, 37.597843, 37.184692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086842, 37.378574, 37.847435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113064, 37.777222, 37.867264>,  <42.128799, 38.016411, 37.879162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113064, 37.777222, 37.867264>,  <42.086842, 37.378574, 37.847435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113064, 37.777222, 37.867264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318232, -0.026205, 0.947651,
		0.945743, -0.077902, 0.315437,
		0.065558, 0.996617, 0.049574,
		42.132732, 38.076206, 37.882137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420086, 37.514473, 38.422455>,  <42.086842, 37.378574, 37.847435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420086, 37.514473, 38.422455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251446, 37.873158, 38.368546>,  <42.150261, 38.088367, 38.336201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251446, 37.873158, 38.368546>,  <42.420086, 37.514473, 38.422455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251446, 37.873158, 38.368546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338262, -0.017631, 0.940887,
		0.841326, 0.442267, 0.310757,
		-0.421602, 0.896710, -0.134769,
		42.124966, 38.142170, 38.328114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807030, 38.053051, 38.886463>,  <42.420086, 37.514473, 38.422455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807030, 38.053051, 38.886463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437443, 38.157585, 38.774757>,  <42.215691, 38.220306, 38.707733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437443, 38.157585, 38.774757>,  <42.807030, 38.053051, 38.886463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437443, 38.157585, 38.774757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301907, -0.050084, 0.952021,
		0.234814, 0.963947, 0.125176,
		-0.923967, 0.261340, -0.279262,
		42.160252, 38.235989, 38.690979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537739, 38.550137, 39.412331>,  <42.807030, 38.053051, 38.886463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537739, 38.550137, 39.412331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205666, 38.406528, 39.241734>,  <42.006420, 38.320362, 39.139374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205666, 38.406528, 39.241734>,  <42.537739, 38.550137, 39.412331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205666, 38.406528, 39.241734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315471, -0.328213, 0.890367,
		-0.459639, 0.873717, 0.159218,
		-0.830186, -0.359019, -0.426492,
		41.956608, 38.298824, 39.113785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990826, 38.942966, 39.670193>,  <42.537739, 38.550137, 39.412331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990826, 38.942966, 39.670193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848839, 38.594700, 39.533989>,  <41.763649, 38.385742, 39.452267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848839, 38.594700, 39.533989>,  <41.990826, 38.942966, 39.670193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848839, 38.594700, 39.533989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429557, -0.171608, 0.886584,
		-0.830350, 0.460975, -0.313084,
		-0.354965, -0.870663, -0.340509,
		41.742348, 38.333500, 39.431835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292160, 38.909618, 39.891335>,  <41.990826, 38.942966, 39.670193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292160, 38.909618, 39.891335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363781, 38.523388, 39.815861>,  <41.406754, 38.291649, 39.770576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363781, 38.523388, 39.815861>,  <41.292160, 38.909618, 39.891335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363781, 38.523388, 39.815861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457892, -0.251529, 0.852683,
		-0.870790, -0.066279, -0.487167,
		0.179052, -0.965577, -0.188680,
		41.417496, 38.233715, 39.759258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663715, 38.583427, 39.988232>,  <41.292160, 38.909618, 39.891335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663715, 38.583427, 39.988232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916183, 38.274479, 40.016720>,  <41.067665, 38.089111, 40.033813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916183, 38.274479, 40.016720>,  <40.663715, 38.583427, 39.988232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916183, 38.274479, 40.016720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415959, -0.259553, 0.871556,
		-0.654680, -0.579721, -0.485096,
		0.631168, -0.772370, 0.071216,
		41.105534, 38.042767, 40.038086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253574, 38.083923, 40.158627>,  <40.663715, 38.583427, 39.988232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253574, 38.083923, 40.158627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621925, 37.958817, 40.251720>,  <40.842937, 37.883751, 40.307575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621925, 37.958817, 40.251720>,  <40.253574, 38.083923, 40.158627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621925, 37.958817, 40.251720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368087, -0.500850, 0.783366,
		-0.128447, -0.807048, -0.576346,
		0.920876, -0.312767, 0.232731,
		40.898190, 37.864986, 40.321541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231186, 37.263382, 40.074471>,  <40.253574, 38.083923, 40.158627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231186, 37.263382, 40.074471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544453, 37.345306, 40.309315>,  <40.732414, 37.394463, 40.450222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544453, 37.345306, 40.309315>,  <40.231186, 37.263382, 40.074471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544453, 37.345306, 40.309315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325679, -0.669225, 0.667885,
		0.529702, -0.714276, -0.457412,
		0.783166, 0.204811, 0.587115,
		40.779404, 37.406750, 40.485451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720711, 36.639648, 40.244652>,  <40.231186, 37.263382, 40.074471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720711, 36.639648, 40.244652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777351, 36.888573, 40.552593>,  <40.811337, 37.037926, 40.737358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777351, 36.888573, 40.552593>,  <40.720711, 36.639648, 40.244652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777351, 36.888573, 40.552593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251144, -0.729664, 0.636016,
		0.957536, -0.283407, 0.052966,
		0.141605, 0.622310, 0.769856,
		40.819832, 37.075264, 40.783550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096436, 36.147694, 40.675564>,  <40.720711, 36.639648, 40.244652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096436, 36.147694, 40.675564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956619, 36.445381, 40.903233>,  <40.872730, 36.623993, 41.039833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956619, 36.445381, 40.903233>,  <41.096436, 36.147694, 40.675564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956619, 36.445381, 40.903233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263087, -0.661014, 0.702742,
		0.899226, 0.095894, 0.426845,
		-0.349539, 0.744221, 0.569172,
		40.851757, 36.668648, 41.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990025, 35.919628, 41.370071>,  <41.096436, 36.147694, 40.675564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990025, 35.919628, 41.370071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877228, 36.297047, 41.439587>,  <40.809551, 36.523499, 41.481297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877228, 36.297047, 41.439587>,  <40.990025, 35.919628, 41.370071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877228, 36.297047, 41.439587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107128, -0.210969, 0.971605,
		0.953418, 0.255365, 0.160571,
		-0.281989, 0.943547, 0.173785,
		40.792629, 36.580112, 41.491722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404320, 36.259678, 41.894627>,  <40.990025, 35.919628, 41.370071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404320, 36.259678, 41.894627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016590, 36.344494, 41.844902>,  <40.783955, 36.395386, 41.815067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016590, 36.344494, 41.844902>,  <41.404320, 36.259678, 41.894627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016590, 36.344494, 41.844902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188746, -0.318136, 0.929066,
		0.157452, 0.924028, 0.348398,
		-0.969321, 0.212042, -0.124315,
		40.725792, 36.408108, 41.807606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216614, 36.481960, 42.544987>,  <41.404320, 36.259678, 41.894627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216614, 36.481960, 42.544987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864819, 36.411369, 42.368191>,  <40.653740, 36.369015, 42.262112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864819, 36.411369, 42.368191>,  <41.216614, 36.481960, 42.544987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864819, 36.411369, 42.368191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340337, -0.415957, 0.843297,
		-0.332674, 0.892096, 0.305767,
		-0.879488, -0.176479, -0.441991,
		40.600971, 36.358425, 42.235592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571472, 36.837410, 42.767593>,  <41.216614, 36.481960, 42.544987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571472, 36.837410, 42.767593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509521, 36.458279, 42.656139>,  <40.472351, 36.230801, 42.589268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509521, 36.458279, 42.656139>,  <40.571472, 36.837410, 42.767593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509521, 36.458279, 42.656139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378292, -0.203648, 0.903008,
		-0.912639, 0.245260, -0.327015,
		-0.154875, -0.947827, -0.278636,
		40.463058, 36.173931, 42.572548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223049, 37.105701, 43.379604>,  <40.571472, 36.837410, 42.767593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223049, 37.105701, 43.379604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877686, 36.904194, 43.390491>,  <39.670467, 36.783291, 43.397026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.877686, 36.904194, 43.390491>,  <40.223049, 37.105701, 43.379604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877686, 36.904194, 43.390491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504398, 0.863074, -0.026191,
		-0.010299, -0.036343, -0.999286,
		-0.863410, -0.503768, 0.027220,
		39.618664, 36.753063, 43.398659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791519, 36.655880, 42.853344>,  <40.223049, 37.105701, 43.379604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791519, 36.655880, 42.853344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989304, 36.308250, 42.859356>,  <40.107975, 36.099674, 42.862961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989304, 36.308250, 42.859356>,  <39.791519, 36.655880, 42.853344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989304, 36.308250, 42.859356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464498, -0.249587, 0.849676,
		-0.734677, -0.427112, -0.527092,
		0.494461, -0.869070, 0.015027,
		40.137642, 36.047531, 42.863865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285282, 36.082985, 43.188225>,  <39.791519, 36.655880, 42.853344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285282, 36.082985, 43.188225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642349, 35.903431, 43.204483>,  <39.856590, 35.795700, 43.214237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642349, 35.903431, 43.204483>,  <39.285282, 36.082985, 43.188225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642349, 35.903431, 43.204483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246089, -0.409855, 0.878327,
		-0.377604, -0.794057, -0.476329,
		0.892667, -0.448879, 0.040646,
		39.910149, 35.768764, 43.216675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229992, 35.363384, 43.473869>,  <39.285282, 36.082985, 43.188225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229992, 35.363384, 43.473869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614700, 35.456562, 43.531475>,  <39.845524, 35.512470, 43.566040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614700, 35.456562, 43.531475>,  <39.229992, 35.363384, 43.473869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614700, 35.456562, 43.531475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071282, -0.294817, 0.952891,
		0.264430, -0.926725, -0.266940,
		0.961767, 0.232946, 0.144017,
		39.903229, 35.526447, 43.574680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706707, 34.700294, 43.682789>,  <39.229992, 35.363384, 43.473869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706707, 34.700294, 43.682789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772850, 35.063686, 43.836315>,  <39.812534, 35.281723, 43.928432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772850, 35.063686, 43.836315>,  <39.706707, 34.700294, 43.682789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772850, 35.063686, 43.836315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179708, -0.354904, 0.917468,
		0.969724, -0.220681, 0.104577,
		0.165353, 0.908484, 0.383817,
		39.822456, 35.336231, 43.951462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214951, 34.573227, 44.134201>,  <39.706707, 34.700294, 43.682789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214951, 34.573227, 44.134201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017536, 34.897636, 44.259846>,  <39.899090, 35.092281, 44.335232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017536, 34.897636, 44.259846>,  <40.214951, 34.573227, 44.134201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017536, 34.897636, 44.259846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136504, -0.428919, 0.892970,
		0.858947, 0.397833, 0.322394,
		-0.493534, 0.811022, 0.314113,
		39.869476, 35.140942, 44.354080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554924, 34.724968, 44.742462>,  <40.214951, 34.573227, 44.134201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554924, 34.724968, 44.742462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185795, 34.877296, 44.765671>,  <39.964317, 34.968693, 44.779598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185795, 34.877296, 44.765671>,  <40.554924, 34.724968, 44.742462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185795, 34.877296, 44.765671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029357, -0.219720, 0.975121,
		0.384095, 0.898164, 0.213943,
		-0.922827, 0.380820, 0.058026,
		39.908947, 34.991543, 44.783077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549698, 34.856026, 45.372265>,  <40.554924, 34.724968, 44.742462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549698, 34.856026, 45.372265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166447, 34.937439, 45.291706>,  <39.936497, 34.986286, 45.243370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166447, 34.937439, 45.291706>,  <40.549698, 34.856026, 45.372265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166447, 34.937439, 45.291706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227022, -0.111342, 0.967504,
		0.174495, 0.972717, 0.152886,
		-0.958130, 0.203533, -0.201400,
		39.879009, 34.998497, 45.231285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237347, 35.333042, 45.940575>,  <40.549698, 34.856026, 45.372265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237347, 35.333042, 45.940575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942738, 35.121857, 45.771442>,  <39.765972, 34.995144, 45.669964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942738, 35.121857, 45.771442>,  <40.237347, 35.333042, 45.940575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942738, 35.121857, 45.771442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332832, -0.261324, 0.906053,
		-0.588862, 0.808060, 0.016746,
		-0.736522, -0.527966, -0.422832,
		39.721783, 34.963467, 45.644592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692966, 35.500965, 46.324905>,  <40.237347, 35.333042, 45.940575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692966, 35.500965, 46.324905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585938, 35.164654, 46.136650>,  <39.521721, 34.962868, 46.023697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585938, 35.164654, 46.136650>,  <39.692966, 35.500965, 46.324905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585938, 35.164654, 46.136650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335737, -0.376487, 0.863446,
		-0.903153, 0.389047, -0.181541,
		-0.267573, -0.840774, -0.470642,
		39.505665, 34.912422, 45.995457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026443, 35.340767, 46.541580>,  <39.692966, 35.500965, 46.324905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026443, 35.340767, 46.541580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188419, 34.990868, 46.435116>,  <39.285603, 34.780930, 46.371239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188419, 34.990868, 46.435116>,  <39.026443, 35.340767, 46.541580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188419, 34.990868, 46.435116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320680, -0.408476, 0.854582,
		-0.856265, -0.260700, -0.445922,
		0.404938, -0.874747, -0.266162,
		39.309902, 34.728443, 46.355267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527534, 34.644867, 46.500351>,  <39.026443, 35.340767, 46.541580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527534, 34.644867, 46.500351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903641, 34.616974, 46.633644>,  <39.129303, 34.600239, 46.713619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903641, 34.616974, 46.633644>,  <38.527534, 34.644867, 46.500351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903641, 34.616974, 46.633644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336063, -0.346759, 0.875682,
		0.054490, -0.935358, -0.349479,
		0.940262, -0.069731, 0.333234,
		39.185719, 34.596054, 46.733616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654034, 34.002605, 46.846100>,  <38.527534, 34.644867, 46.500351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654034, 34.002605, 46.846100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859100, 34.286148, 47.039883>,  <38.982140, 34.456272, 47.156151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859100, 34.286148, 47.039883>,  <38.654034, 34.002605, 46.846100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859100, 34.286148, 47.039883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237302, -0.425284, 0.873396,
		0.825142, -0.562724, -0.049817,
		0.512667, 0.708855, 0.484455,
		39.012901, 34.498806, 47.185219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131519, 33.897503, 47.429184>,  <38.654034, 34.002605, 46.846100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131519, 33.897503, 47.429184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236053, 33.618786, 47.161999>,  <39.298775, 33.451557, 47.001686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236053, 33.618786, 47.161999>,  <39.131519, 33.897503, 47.429184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236053, 33.618786, 47.161999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049469, 0.700776, -0.711664,
		0.963978, 0.152943, 0.217610,
		0.261340, -0.696793, -0.667967,
		39.314457, 33.409748, 46.961609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745304, 34.136555, 47.124424>,  <39.131519, 33.897503, 47.429184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745304, 34.136555, 47.124424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517242, 33.910667, 46.885757>,  <39.380405, 33.775135, 46.742558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517242, 33.910667, 46.885757>,  <39.745304, 34.136555, 47.124424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517242, 33.910667, 46.885757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112279, 0.665906, -0.737538,
		0.813830, -0.487503, -0.316262,
		-0.570153, -0.564721, -0.596670,
		39.346195, 33.741253, 46.706757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073658, 33.834332, 46.349621>,  <39.745304, 34.136555, 47.124424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073658, 33.834332, 46.349621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683586, 33.921425, 46.365711>,  <39.449543, 33.973679, 46.375366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683586, 33.921425, 46.365711>,  <40.073658, 33.834332, 46.349621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683586, 33.921425, 46.365711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116332, 0.658414, -0.743611,
		-0.188393, -0.720474, -0.667401,
		-0.975179, 0.217732, 0.040226,
		39.391033, 33.986744, 46.377781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692265, 33.689438, 45.769138>,  <40.073658, 33.834332, 46.349621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692265, 33.689438, 45.769138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470444, 33.988949, 45.914360>,  <39.337353, 34.168655, 46.001492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470444, 33.988949, 45.914360>,  <39.692265, 33.689438, 45.769138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470444, 33.988949, 45.914360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160390, 0.524278, -0.836306,
		-0.816549, -0.405542, -0.410834,
		-0.554548, 0.748778, 0.363053,
		39.304081, 34.213581, 46.023277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070652, 33.856842, 45.364189>,  <39.692265, 33.689438, 45.769138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070652, 33.856842, 45.364189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180710, 34.192833, 45.551266>,  <39.246746, 34.394428, 45.663513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180710, 34.192833, 45.551266>,  <39.070652, 33.856842, 45.364189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180710, 34.192833, 45.551266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147677, 0.443773, -0.883888,
		-0.949993, 0.312266, -0.001943,
		0.275146, 0.839974, 0.467695,
		39.263252, 34.444824, 45.691574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676609, 34.479031, 45.078148>,  <39.070652, 33.856842, 45.364189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676609, 34.479031, 45.078148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023945, 34.598877, 45.236244>,  <39.232346, 34.670784, 45.331100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023945, 34.598877, 45.236244>,  <38.676609, 34.479031, 45.078148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023945, 34.598877, 45.236244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162387, 0.581225, -0.797376,
		-0.468629, 0.756576, 0.456048,
		0.868342, 0.299617, 0.395237,
		39.284447, 34.688763, 45.354816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613968, 35.197006, 45.032578>,  <38.676609, 34.479031, 45.078148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613968, 35.197006, 45.032578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004818, 35.122829, 45.074211>,  <39.239330, 35.078323, 45.099190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004818, 35.122829, 45.074211>,  <38.613968, 35.197006, 45.032578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004818, 35.122829, 45.074211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203100, 0.668780, -0.715180,
		0.063016, 0.719962, 0.691147,
		0.977128, -0.185440, 0.104081,
		39.297955, 35.067196, 45.105434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954285, 35.780567, 44.809612>,  <38.613968, 35.197006, 45.032578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954285, 35.780567, 44.809612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275604, 35.543499, 44.833149>,  <39.468395, 35.401260, 44.847271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275604, 35.543499, 44.833149>,  <38.954285, 35.780567, 44.809612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275604, 35.543499, 44.833149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544267, 0.690372, -0.476613,
		0.241848, 0.414888, 0.877142,
		0.803295, -0.592667, 0.058844,
		39.516594, 35.365700, 44.850803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493687, 36.261639, 44.866520>,  <38.954285, 35.780567, 44.809612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493687, 36.261639, 44.866520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617893, 35.915726, 44.708664>,  <39.692417, 35.708179, 44.613953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617893, 35.915726, 44.708664>,  <39.493687, 36.261639, 44.866520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617893, 35.915726, 44.708664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378991, 0.493361, -0.782918,
		0.871750, 0.093543, 0.480939,
		0.310513, -0.864780, -0.394635,
		39.711048, 35.656292, 44.590275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145393, 36.381870, 44.722801>,  <39.493687, 36.261639, 44.866520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145393, 36.381870, 44.722801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042473, 36.069679, 44.494888>,  <39.980721, 35.882366, 44.358139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042473, 36.069679, 44.494888>,  <40.145393, 36.381870, 44.722801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042473, 36.069679, 44.494888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495189, 0.399844, -0.771306,
		0.829810, -0.480608, 0.283604,
		-0.257299, -0.780475, -0.569786,
		39.965282, 35.835537, 44.323952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563812, 36.490780, 44.007740>,  <40.145393, 36.381870, 44.722801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563812, 36.490780, 44.007740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407013, 36.122993, 43.995625>,  <40.312935, 35.902321, 43.988354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407013, 36.122993, 43.995625>,  <40.563812, 36.490780, 44.007740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407013, 36.122993, 43.995625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376965, -0.130504, -0.916988,
		0.839189, -0.370870, 0.397765,
		-0.391993, -0.919469, -0.030287,
		40.289413, 35.847153, 43.986538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085907, 36.044380, 43.671635>,  <40.563812, 36.490780, 44.007740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085907, 36.044380, 43.671635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723747, 35.877338, 43.641006>,  <40.506451, 35.777115, 43.622631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723747, 35.877338, 43.641006>,  <41.085907, 36.044380, 43.671635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723747, 35.877338, 43.641006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155587, -0.158550, -0.975015,
		0.395026, -0.894691, 0.208524,
		-0.905399, -0.417600, -0.076571,
		40.452129, 35.752060, 43.618034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175030, 35.317802, 43.408916>,  <41.085907, 36.044380, 43.671635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175030, 35.317802, 43.408916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812057, 35.454983, 43.311787>,  <40.594276, 35.537289, 43.253510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812057, 35.454983, 43.311787>,  <41.175030, 35.317802, 43.408916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812057, 35.454983, 43.311787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307022, 0.146547, -0.940352,
		-0.286905, -0.927853, -0.238273,
		-0.907426, 0.342947, -0.242826,
		40.539829, 35.557865, 43.238937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832382, 34.948673, 42.822536>,  <41.175030, 35.317802, 43.408916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832382, 34.948673, 42.822536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601990, 35.275127, 42.841167>,  <40.463753, 35.471001, 42.852345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601990, 35.275127, 42.841167>,  <40.832382, 34.948673, 42.822536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601990, 35.275127, 42.841167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093414, -0.009108, -0.995586,
		-0.812109, -0.577788, 0.081484,
		-0.575980, 0.816136, 0.046577,
		40.429195, 35.519970, 42.855141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242584, 34.887310, 42.349941>,  <40.832382, 34.948673, 42.822536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242584, 34.887310, 42.349941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332348, 35.272976, 42.406555>,  <40.386208, 35.504375, 42.440525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332348, 35.272976, 42.406555>,  <40.242584, 34.887310, 42.349941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332348, 35.272976, 42.406555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051924, 0.133206, -0.989727,
		-0.973110, 0.229455, -0.020170,
		0.224411, 0.964161, 0.141538,
		40.399670, 35.562225, 42.449017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765236, 35.356350, 42.020817>,  <40.242584, 34.887310, 42.349941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765236, 35.356350, 42.020817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143322, 35.486725, 42.013466>,  <40.370174, 35.564949, 42.009056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143322, 35.486725, 42.013466>,  <39.765236, 35.356350, 42.020817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143322, 35.486725, 42.013466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065540, 0.134316, -0.988769,
		-0.319809, 0.935801, 0.148319,
		0.945212, 0.325938, -0.018377,
		40.426888, 35.584507, 42.007954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498096, 35.975792, 41.646008>,  <39.765236, 35.356350, 42.020817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498096, 35.975792, 41.646008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818401, 36.113953, 41.841751>,  <40.010586, 36.196850, 41.959198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818401, 36.113953, 41.841751>,  <39.498096, 35.975792, 41.646008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818401, 36.113953, 41.841751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196098, 0.620791, -0.759054,
		-0.565974, 0.703785, 0.429373,
		0.800762, 0.345406, 0.489362,
		40.058628, 36.217575, 41.988560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509995, 36.733505, 41.496910>,  <39.498096, 35.975792, 41.646008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509995, 36.733505, 41.496910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879436, 36.624752, 41.605011>,  <40.101101, 36.559502, 41.669872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879436, 36.624752, 41.605011>,  <39.509995, 36.733505, 41.496910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879436, 36.624752, 41.605011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378284, 0.532161, -0.757433,
		0.062116, 0.801800, 0.594355,
		0.923603, -0.271884, 0.270253,
		40.156517, 36.543186, 41.686089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833469, 37.248032, 41.778503>,  <39.509995, 36.733505, 41.496910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833469, 37.248032, 41.778503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131699, 37.015392, 41.648357>,  <40.310635, 36.875809, 41.570271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131699, 37.015392, 41.648357>,  <39.833469, 37.248032, 41.778503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131699, 37.015392, 41.648357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355089, 0.759843, -0.544564,
		0.563946, 0.290478, 0.773038,
		0.745571, -0.581602, -0.325364,
		40.355370, 36.840912, 41.550747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348526, 37.705338, 41.777756>,  <39.833469, 37.248032, 41.778503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348526, 37.705338, 41.777756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517544, 37.408390, 41.569778>,  <40.618954, 37.230221, 41.444992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.517544, 37.408390, 41.569778>,  <40.348526, 37.705338, 41.777756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517544, 37.408390, 41.569778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551376, 0.665853, -0.502617,
		0.719333, -0.074304, 0.690680,
		0.422545, -0.742373, -0.519940,
		40.644306, 37.185677, 41.413795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106369, 37.797253, 41.739071>,  <40.348526, 37.705338, 41.777756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106369, 37.797253, 41.739071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994041, 37.585484, 41.418858>,  <40.926643, 37.458424, 41.226730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994041, 37.585484, 41.418858>,  <41.106369, 37.797253, 41.739071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994041, 37.585484, 41.418858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629665, 0.527870, -0.569979,
		0.724336, -0.664128, 0.185123,
		-0.280818, -0.529421, -0.800533,
		40.909798, 37.426659, 41.178696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692818, 37.694931, 41.337738>,  <41.106369, 37.797253, 41.739071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692818, 37.694931, 41.337738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420059, 37.597980, 41.061687>,  <41.256405, 37.539810, 40.896057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420059, 37.597980, 41.061687>,  <41.692818, 37.694931, 41.337738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420059, 37.597980, 41.061687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622376, 0.303413, -0.721518,
		0.384275, -0.921516, -0.056044,
		-0.681895, -0.242381, -0.690123,
		41.215492, 37.525265, 40.854649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052097, 37.461208, 40.745323>,  <41.692818, 37.694931, 41.337738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052097, 37.461208, 40.745323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698013, 37.563416, 40.589828>,  <41.485561, 37.624741, 40.496532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.698013, 37.563416, 40.589828>,  <42.052097, 37.461208, 40.745323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698013, 37.563416, 40.589828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460609, 0.364398, -0.809354,
		-0.065151, -0.895502, -0.440263,
		-0.885209, 0.255519, -0.388735,
		41.432449, 37.640072, 40.473209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007847, 37.110798, 40.044769>,  <42.052097, 37.461208, 40.745323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007847, 37.110798, 40.044769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728943, 37.397499, 40.048683>,  <41.561600, 37.569519, 40.051033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.728943, 37.397499, 40.048683>,  <42.007847, 37.110798, 40.044769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.728943, 37.397499, 40.048683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252051, 0.257934, -0.932706,
		-0.671041, -0.647873, -0.360505,
		-0.697262, 0.716750, 0.009787,
		41.519764, 37.612526, 40.051620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288750, 36.428612, 40.401882>,  <42.007847, 37.110798, 40.044769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288750, 36.428612, 40.401882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347210, 36.291489, 40.773067>,  <42.382286, 36.209213, 40.995781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.347210, 36.291489, 40.773067>,  <42.288750, 36.428612, 40.401882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347210, 36.291489, 40.773067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158361, -0.934049, -0.320117,
		0.976504, -0.100166, -0.190804,
		0.146155, -0.342812, 0.927965,
		42.391056, 36.188644, 41.051456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822872, 35.869183, 40.423107>,  <42.288750, 36.428612, 40.401882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822872, 35.869183, 40.423107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547237, 35.842880, 40.711784>,  <42.381859, 35.827099, 40.884991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547237, 35.842880, 40.711784>,  <42.822872, 35.869183, 40.423107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547237, 35.842880, 40.711784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225742, -0.926847, -0.299991,
		0.688626, -0.369635, 0.623830,
		-0.689082, -0.065757, 0.721694,
		42.340511, 35.823154, 40.928291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229996, 35.532593, 40.839390>,  <42.822872, 35.869183, 40.423107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229996, 35.532593, 40.839390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372406, 35.441505, 41.201912>,  <43.457851, 35.386852, 41.419426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372406, 35.441505, 41.201912>,  <43.229996, 35.532593, 40.839390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372406, 35.441505, 41.201912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756600, 0.639463, -0.136542,
		-0.548456, 0.734324, 0.399956,
		0.356023, -0.227719, 0.906307,
		43.479214, 35.373188, 41.473804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406151, 36.233749, 41.140163>,  <43.229996, 35.532593, 40.839390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406151, 36.233749, 41.140163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614586, 35.902901, 41.224384>,  <43.739647, 35.704391, 41.274918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.614586, 35.902901, 41.224384>,  <43.406151, 36.233749, 41.140163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614586, 35.902901, 41.224384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833344, 0.439763, -0.334881,
		0.184393, 0.349968, 0.918434,
		0.521092, -0.827122, 0.210555,
		43.770912, 35.654766, 41.287552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109573, 36.464336, 41.565937>,  <43.406151, 36.233749, 41.140163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109573, 36.464336, 41.565937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128048, 36.127323, 41.351269>,  <44.139133, 35.925117, 41.222469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.128048, 36.127323, 41.351269>,  <44.109573, 36.464336, 41.565937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128048, 36.127323, 41.351269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728471, 0.396015, -0.559020,
		0.683518, -0.365125, 0.632049,
		0.046189, -0.842529, -0.536666,
		44.141903, 35.874565, 41.190269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867935, 36.330738, 41.352764>,  <44.109573, 36.464336, 41.565937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867935, 36.330738, 41.352764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625534, 36.124340, 41.110607>,  <44.480095, 36.000500, 40.965313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625534, 36.124340, 41.110607>,  <44.867935, 36.330738, 41.352764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625534, 36.124340, 41.110607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587610, 0.222593, -0.777924,
		0.536166, -0.827162, 0.168315,
		-0.606003, -0.516000, -0.605396,
		44.443733, 35.969540, 40.928989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082985, 35.663563, 41.133476>,  <44.867935, 36.330738, 41.352764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082985, 35.663563, 41.133476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848907, 35.811485, 40.844814>,  <44.708462, 35.900238, 40.671616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848907, 35.811485, 40.844814>,  <45.082985, 35.663563, 41.133476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848907, 35.811485, 40.844814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800061, 0.118331, -0.588133,
		-0.132103, -0.921542, -0.365117,
		-0.585193, 0.369809, -0.721658,
		44.673351, 35.922428, 40.628319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127556, 35.225681, 40.550915>,  <45.082985, 35.663563, 41.133476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127556, 35.225681, 40.550915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049274, 35.611031, 40.477581>,  <45.002304, 35.842239, 40.433582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049274, 35.611031, 40.477581>,  <45.127556, 35.225681, 40.550915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049274, 35.611031, 40.477581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950779, 0.140598, -0.276136,
		-0.240246, -0.228348, -0.943472,
		-0.195705, 0.963374, -0.183330,
		44.990562, 35.900043, 40.422581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.378849, 35.455856, 39.800446>,  <45.127556, 35.225681, 40.550915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.378849, 35.455856, 39.800446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372345, 35.774433, 40.042244>,  <45.368443, 35.965580, 40.187325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372345, 35.774433, 40.042244>,  <45.378849, 35.455856, 39.800446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372345, 35.774433, 40.042244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914040, 0.256903, -0.313896,
		-0.405297, 0.547435, -0.732154,
		-0.016255, 0.796439, 0.604500,
		45.367470, 36.013367, 40.223595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.444130, 36.112259, 39.508667>,  <45.378849, 35.455856, 39.800446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.444130, 36.112259, 39.508667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585335, 36.144268, 39.881542>,  <45.670059, 36.163475, 40.105267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585335, 36.144268, 39.881542>,  <45.444130, 36.112259, 39.508667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585335, 36.144268, 39.881542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898527, 0.248759, -0.361618,
		-0.260829, 0.965254, 0.015912,
		0.353011, 0.080023, 0.932191,
		45.691238, 36.168274, 40.161198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968811, 36.448166, 39.382900>,  <45.444130, 36.112259, 39.508667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968811, 36.448166, 39.382900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036606, 36.196854, 39.686619>,  <46.077282, 36.046066, 39.868851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.036606, 36.196854, 39.686619>,  <45.968811, 36.448166, 39.382900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.036606, 36.196854, 39.686619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976207, 0.001285, -0.216838,
		0.135260, 0.777984, 0.613551,
		0.169485, -0.628282, 0.759300,
		46.087452, 36.008369, 39.914410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.021931, 36.059273, 38.741844>,  <45.968811, 36.448166, 39.382900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.021931, 36.059273, 38.741844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163036, 35.725048, 38.573376>,  <46.247700, 35.524513, 38.472294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163036, 35.725048, 38.573376>,  <46.021931, 36.059273, 38.741844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163036, 35.725048, 38.573376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584883, 0.548247, -0.597777,
		0.730388, -0.035460, 0.682111,
		0.352768, -0.835564, -0.421173,
		46.268867, 35.474380, 38.447025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857719, 36.162491, 38.610954>,  <46.021931, 36.059273, 38.741844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857719, 36.162491, 38.610954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714035, 35.888535, 38.357372>,  <46.627827, 35.724163, 38.205223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714035, 35.888535, 38.357372>,  <46.857719, 36.162491, 38.610954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714035, 35.888535, 38.357372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707406, 0.243258, -0.663628,
		0.608725, -0.686843, 0.397114,
		-0.359207, -0.684888, -0.633955,
		46.606274, 35.683067, 38.167187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.327572, 35.705246, 38.306892>,  <46.857719, 36.162491, 38.610954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.327572, 35.705246, 38.306892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034016, 35.746216, 38.038292>,  <46.857880, 35.770798, 37.877132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.034016, 35.746216, 38.038292>,  <47.327572, 35.705246, 38.306892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.034016, 35.746216, 38.038292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679115, 0.131506, -0.722156,
		0.014343, -0.986010, -0.166066,
		-0.733892, 0.102420, -0.671500,
		46.813847, 35.776943, 37.836842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470654, 35.285122, 37.680473>,  <47.327572, 35.705246, 38.306892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470654, 35.285122, 37.680473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248825, 35.612839, 37.622219>,  <47.115730, 35.809471, 37.587269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.248825, 35.612839, 37.622219>,  <47.470654, 35.285122, 37.680473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.248825, 35.612839, 37.622219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622934, 0.292704, -0.725450,
		-0.551730, -0.493032, -0.672691,
		-0.554569, 0.819295, -0.145632,
		47.082455, 35.858627, 37.578529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.279491, 35.296043, 37.069374>,  <47.470654, 35.285122, 37.680473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.279491, 35.296043, 37.069374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305561, 35.682606, 37.168819>,  <47.321205, 35.914543, 37.228489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305561, 35.682606, 37.168819>,  <47.279491, 35.296043, 37.069374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.305561, 35.682606, 37.168819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560687, 0.170631, -0.810256,
		-0.825459, 0.192208, -0.530730,
		0.065179, 0.966406, 0.248618,
		47.325115, 35.972527, 37.243404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.193810, 35.573353, 36.438484>,  <47.279491, 35.296043, 37.069374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.193810, 35.573353, 36.438484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396103, 35.821617, 36.678158>,  <47.517479, 35.970577, 36.821960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.396103, 35.821617, 36.678158>,  <47.193810, 35.573353, 36.438484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.396103, 35.821617, 36.678158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562890, 0.288929, -0.774387,
		-0.653754, 0.728902, -0.203244,
		0.505729, 0.620662, 0.599180,
		47.547821, 36.007816, 36.857910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.279713, 36.336533, 36.037300>,  <47.193810, 35.573353, 36.438484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.279713, 36.336533, 36.037300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564903, 36.257233, 36.306332>,  <47.736019, 36.209652, 36.467751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564903, 36.257233, 36.306332>,  <47.279713, 36.336533, 36.037300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.564903, 36.257233, 36.306332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686460, 0.392907, -0.611880,
		-0.142954, 0.897954, 0.416225,
		0.712977, -0.198251, 0.672577,
		47.778797, 36.197758, 36.508106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.782635, 35.803696, 36.059017>,  <47.279713, 36.336533, 36.037300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.782635, 35.803696, 36.059017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506054, 35.629131, 35.828732>,  <47.340107, 35.524395, 35.690559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.506054, 35.629131, 35.828732>,  <47.782635, 35.803696, 36.059017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.506054, 35.629131, 35.828732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714285, -0.293692, -0.635250,
		0.108147, -0.850466, 0.514793,
		-0.691449, -0.436409, -0.575713,
		47.298618, 35.498207, 35.656017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.029041, 35.152390, 36.059437>,  <47.782635, 35.803696, 36.059017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.029041, 35.152390, 36.059437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828369, 35.297485, 35.745308>,  <47.707966, 35.384544, 35.556831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.828369, 35.297485, 35.745308>,  <48.029041, 35.152390, 36.059437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.828369, 35.297485, 35.745308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739762, -0.290676, -0.606844,
		-0.448403, -0.885395, -0.122517,
		-0.501684, 0.362744, -0.785322,
		47.677864, 35.406307, 35.509712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866783, 34.572121, 35.463093>,  <48.029041, 35.152390, 36.059437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866783, 34.572121, 35.463093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.885853, 34.944313, 35.317799>,  <47.897293, 35.167629, 35.230621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.885853, 34.944313, 35.317799>,  <47.866783, 34.572121, 35.463093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.885853, 34.944313, 35.317799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866039, -0.219696, -0.449121,
		-0.497699, -0.293167, -0.816302,
		0.047671, 0.930477, -0.363236,
		47.900154, 35.223457, 35.208828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.077702, 33.468346, 30.441814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684616, 33.448498, 30.370462>,  <39.448765, 33.436588, 30.327652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684616, 33.448498, 30.370462>,  <40.077702, 33.468346, 30.441814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684616, 33.448498, 30.370462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172890, -0.098836, 0.979970,
		-0.066259, 0.993866, 0.088548,
		-0.982710, -0.049622, -0.178378,
		39.389805, 33.433613, 30.316950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840256, 34.028309, 30.810888>,  <40.077702, 33.468346, 30.441814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840256, 34.028309, 30.810888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.535419, 33.771694, 30.775887>,  <39.352520, 33.617725, 30.754887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.535419, 33.771694, 30.775887>,  <39.840256, 34.028309, 30.810888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535419, 33.771694, 30.775887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201078, 0.106038, 0.973819,
		-0.615460, 0.759730, -0.209809,
		-0.762087, -0.641535, -0.087503,
		39.306793, 33.579235, 30.749636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361946, 34.278107, 31.320185>,  <39.840256, 34.028309, 30.810888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361946, 34.278107, 31.320185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.190010, 33.919846, 31.274511>,  <39.086849, 33.704887, 31.247107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.190010, 33.919846, 31.274511>,  <39.361946, 34.278107, 31.320185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190010, 33.919846, 31.274511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207166, -0.025259, 0.977980,
		-0.878819, 0.444027, -0.174692,
		-0.429837, -0.895657, -0.114186,
		39.061058, 33.651150, 31.240255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780293, 34.315895, 31.532017>,  <39.361946, 34.278107, 31.320185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780293, 34.315895, 31.532017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848404, 33.923325, 31.567362>,  <38.889271, 33.687782, 31.588568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848404, 33.923325, 31.567362>,  <38.780293, 34.315895, 31.532017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848404, 33.923325, 31.567362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379681, 0.017401, 0.924954,
		-0.909311, -0.191051, -0.369666,
		0.170280, -0.981426, 0.088362,
		38.899487, 33.628899, 31.593870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139790, 33.971951, 31.868700>,  <38.780293, 34.315895, 31.532017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139790, 33.971951, 31.868700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455669, 33.734512, 31.930698>,  <38.645199, 33.592049, 31.967897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455669, 33.734512, 31.930698>,  <38.139790, 33.971951, 31.868700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455669, 33.734512, 31.930698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286351, -0.133203, 0.948820,
		-0.542566, -0.793666, -0.275166,
		0.789700, -0.593592, 0.154996,
		38.692581, 33.556435, 31.977198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839245, 33.468956, 32.233673>,  <38.139790, 33.971951, 31.868700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839245, 33.468956, 32.233673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223621, 33.364719, 32.270954>,  <38.454247, 33.302177, 32.293324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.223621, 33.364719, 32.270954>,  <37.839245, 33.468956, 32.233673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223621, 33.364719, 32.270954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130655, -0.130272, 0.982832,
		-0.243982, -0.956618, -0.159232,
		0.960938, -0.260597, 0.093202,
		38.511902, 33.286541, 32.298916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877739, 32.918716, 32.635540>,  <37.839245, 33.468956, 32.233673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877739, 32.918716, 32.635540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235775, 33.087391, 32.693485>,  <38.450596, 33.188595, 32.728252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.235775, 33.087391, 32.693485>,  <37.877739, 32.918716, 32.635540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235775, 33.087391, 32.693485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015692, -0.294905, 0.955398,
		0.445601, -0.857444, -0.257351,
		0.895094, 0.421688, 0.144865,
		38.504303, 33.213898, 32.736946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366768, 32.540443, 33.244846>,  <37.877739, 32.918716, 32.635540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366768, 32.540443, 33.244846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.459274, 32.929550, 33.238701>,  <38.514778, 33.163013, 33.235012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.459274, 32.929550, 33.238701>,  <38.366768, 32.540443, 33.244846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459274, 32.929550, 33.238701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016494, 0.011871, 0.999794,
		0.972751, -0.231469, -0.013299,
		0.231264, 0.972770, -0.015366,
		38.528652, 33.221382, 33.234093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807362, 32.624313, 33.856373>,  <38.366768, 32.540443, 33.244846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807362, 32.624313, 33.856373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766254, 32.999355, 33.723507>,  <38.741589, 33.224380, 33.643787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766254, 32.999355, 33.723507>,  <38.807362, 32.624313, 33.856373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766254, 32.999355, 33.723507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116647, 0.342987, 0.932070,
		0.987842, 0.057042, -0.144618,
		-0.102769, 0.937607, -0.332163,
		38.735424, 33.280636, 33.623859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369041, 33.056030, 34.142101>,  <38.807362, 32.624313, 33.856373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369041, 33.056030, 34.142101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.057892, 33.290134, 34.050552>,  <38.871201, 33.430595, 33.995625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.057892, 33.290134, 34.050552>,  <39.369041, 33.056030, 34.142101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057892, 33.290134, 34.050552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022498, 0.389900, 0.920582,
		0.628016, 0.710949, -0.316460,
		-0.777875, 0.585260, -0.228869,
		38.824528, 33.465714, 33.981892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585720, 33.726254, 34.470787>,  <39.369041, 33.056030, 34.142101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585720, 33.726254, 34.470787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193443, 33.735058, 34.393059>,  <38.958076, 33.740341, 34.346420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.193443, 33.735058, 34.393059>,  <39.585720, 33.726254, 34.470787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193443, 33.735058, 34.393059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144706, 0.586711, 0.796762,
		0.131552, 0.809497, -0.572196,
		-0.980691, 0.022015, -0.194322,
		38.899235, 33.741661, 34.334763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434620, 34.438156, 34.504959>,  <39.585720, 33.726254, 34.470787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434620, 34.438156, 34.504959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095680, 34.233543, 34.561993>,  <38.892315, 34.110775, 34.596210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095680, 34.233543, 34.561993>,  <39.434620, 34.438156, 34.504959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095680, 34.233543, 34.561993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108153, 0.429109, 0.896755,
		-0.519900, 0.744447, -0.418930,
		-0.847353, -0.511532, 0.142579,
		38.841473, 34.080086, 34.604767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942001, 34.854176, 34.655758>,  <39.434620, 34.438156, 34.504959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942001, 34.854176, 34.655758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792839, 34.516346, 34.809448>,  <38.703342, 34.313648, 34.901665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.792839, 34.516346, 34.809448>,  <38.942001, 34.854176, 34.655758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792839, 34.516346, 34.809448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017193, 0.420316, 0.907215,
		-0.927709, 0.331701, -0.171260,
		-0.372908, -0.844576, 0.384228,
		38.680965, 34.262974, 34.924717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325188, 35.107433, 34.974857>,  <38.942001, 34.854176, 34.655758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325188, 35.107433, 34.974857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443455, 34.763718, 35.141811>,  <38.514416, 34.557487, 35.241985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443455, 34.763718, 35.141811>,  <38.325188, 35.107433, 34.974857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443455, 34.763718, 35.141811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157777, 0.386993, 0.908484,
		-0.942173, -0.334459, -0.021156,
		0.295663, -0.859287, 0.417385,
		38.532154, 34.505932, 35.267025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073376, 35.176933, 35.652782>,  <38.325188, 35.107433, 34.974857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073376, 35.176933, 35.652782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270447, 34.832142, 35.700562>,  <38.388691, 34.625267, 35.729229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270447, 34.832142, 35.700562>,  <38.073376, 35.176933, 35.652782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270447, 34.832142, 35.700562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126166, 0.206570, 0.970263,
		-0.861017, -0.462957, 0.210525,
		0.492679, -0.861974, 0.119451,
		38.418251, 34.573551, 35.736397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716930, 34.892384, 36.161777>,  <38.073376, 35.176933, 35.652782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716930, 34.892384, 36.161777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080921, 34.726791, 36.152298>,  <38.299316, 34.627438, 36.146610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080921, 34.726791, 36.152298>,  <37.716930, 34.892384, 36.161777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080921, 34.726791, 36.152298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114419, 0.195760, 0.973954,
		-0.398557, -0.888988, 0.225505,
		0.909978, -0.413978, -0.023696,
		38.353916, 34.602596, 36.145187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785847, 34.537346, 36.731476>,  <37.716930, 34.892384, 36.161777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785847, 34.537346, 36.731476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166157, 34.602612, 36.626095>,  <38.394344, 34.641769, 36.562866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.166157, 34.602612, 36.626095>,  <37.785847, 34.537346, 36.731476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166157, 34.602612, 36.626095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259168, 0.047392, 0.964669,
		0.169884, -0.985460, 0.002772,
		0.950774, 0.163164, -0.263451,
		38.451389, 34.651562, 36.547058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151833, 34.239750, 37.216297>,  <37.785847, 34.537346, 36.731476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151833, 34.239750, 37.216297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.437508, 34.482403, 37.076622>,  <38.608913, 34.627995, 36.992817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.437508, 34.482403, 37.076622>,  <38.151833, 34.239750, 37.216297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437508, 34.482403, 37.076622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298887, 0.186801, 0.935827,
		0.632931, -0.772724, -0.047904,
		0.714188, 0.606632, -0.349190,
		38.651764, 34.664391, 36.971867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635967, 34.140293, 37.639164>,  <38.151833, 34.239750, 37.216297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635967, 34.140293, 37.639164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712875, 34.504284, 37.492214>,  <38.759022, 34.722679, 37.404045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712875, 34.504284, 37.492214>,  <38.635967, 34.140293, 37.639164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712875, 34.504284, 37.492214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251878, 0.316060, 0.914693,
		0.948467, -0.268402, -0.168436,
		0.192269, 0.909981, -0.367377,
		38.770557, 34.777279, 37.382000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286045, 34.306664, 37.912014>,  <38.635967, 34.140293, 37.639164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286045, 34.306664, 37.912014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.118748, 34.655052, 37.808876>,  <39.018368, 34.864086, 37.746994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.118748, 34.655052, 37.808876>,  <39.286045, 34.306664, 37.912014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118748, 34.655052, 37.808876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350169, 0.416531, 0.838978,
		0.838124, 0.260608, -0.479198,
		-0.418245, 0.870968, -0.257848,
		38.993275, 34.916344, 37.731522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896519, 34.790432, 37.994934>,  <39.286045, 34.306664, 37.912014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896519, 34.790432, 37.994934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539383, 34.969395, 38.015610>,  <39.325104, 35.076771, 38.028015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539383, 34.969395, 38.015610>,  <39.896519, 34.790432, 37.994934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539383, 34.969395, 38.015610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221413, 0.336090, 0.915434,
		0.392201, 0.828776, -0.399135,
		-0.892835, 0.447408, 0.051687,
		39.271534, 35.103619, 38.031116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050201, 35.460720, 38.215385>,  <39.896519, 34.790432, 37.994934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050201, 35.460720, 38.215385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.659931, 35.419010, 38.292519>,  <39.425770, 35.393982, 38.338799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.659931, 35.419010, 38.292519>,  <40.050201, 35.460720, 38.215385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659931, 35.419010, 38.292519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149222, 0.328495, 0.932643,
		-0.160599, 0.938732, -0.304944,
		-0.975674, -0.104277, 0.192835,
		39.367229, 35.387726, 38.350368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621712, 35.810932, 38.675148>,  <40.050201, 35.460720, 38.215385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621712, 35.810932, 38.675148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.001080, 35.713821, 38.756687>,  <41.228703, 35.655556, 38.805611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.001080, 35.713821, 38.756687>,  <40.621712, 35.810932, 38.675148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001080, 35.713821, 38.756687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233999, 0.102318, -0.966838,
		0.213869, 0.964671, 0.153851,
		0.948422, -0.242777, 0.203850,
		41.285606, 35.640987, 38.817841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992157, 36.205227, 38.220158>,  <40.621712, 35.810932, 38.675148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992157, 36.205227, 38.220158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286381, 35.951588, 38.315559>,  <41.462914, 35.799404, 38.372799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286381, 35.951588, 38.315559>,  <40.992157, 36.205227, 38.220158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286381, 35.951588, 38.315559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387853, 0.105506, -0.915663,
		0.555453, 0.766024, 0.323541,
		0.735555, -0.634095, 0.238501,
		41.507046, 35.761360, 38.387108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546223, 36.476078, 37.882271>,  <40.992157, 36.205227, 38.220158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546223, 36.476078, 37.882271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.632694, 36.091259, 37.948883>,  <41.684578, 35.860367, 37.988850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.632694, 36.091259, 37.948883>,  <41.546223, 36.476078, 37.882271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632694, 36.091259, 37.948883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371810, -0.076591, -0.925144,
		0.902787, 0.261911, 0.341142,
		0.216177, -0.962048, 0.166527,
		41.697548, 35.802643, 37.998840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162365, 36.353107, 37.620552>,  <41.546223, 36.476078, 37.882271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162365, 36.353107, 37.620552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.012478, 35.982422, 37.631714>,  <41.922546, 35.760010, 37.638412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.012478, 35.982422, 37.631714>,  <42.162365, 36.353107, 37.620552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012478, 35.982422, 37.631714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358672, -0.172655, -0.917357,
		0.854950, -0.333743, 0.397085,
		-0.374720, -0.926718, 0.027907,
		41.900063, 35.704407, 37.640087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616795, 36.031376, 37.213974>,  <42.162365, 36.353107, 37.620552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616795, 36.031376, 37.213974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.312000, 35.773365, 37.236973>,  <42.129124, 35.618557, 37.250771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.312000, 35.773365, 37.236973>,  <42.616795, 36.031376, 37.213974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312000, 35.773365, 37.236973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196773, -0.315206, -0.928399,
		0.616970, -0.696118, 0.367108,
		-0.761990, -0.645032, 0.057495,
		42.083405, 35.579857, 37.254223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868534, 35.414024, 36.997269>,  <42.616795, 36.031376, 37.213974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868534, 35.414024, 36.997269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.472515, 35.425571, 36.942162>,  <42.234905, 35.432499, 36.909096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.472515, 35.425571, 36.942162>,  <42.868534, 35.414024, 36.997269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472515, 35.425571, 36.942162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129244, -0.201328, -0.970960,
		-0.055762, -0.979099, 0.195593,
		-0.990044, 0.028864, -0.137769,
		42.175503, 35.434231, 36.900829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751408, 34.814968, 36.641396>,  <42.868534, 35.414024, 36.997269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751408, 34.814968, 36.641396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.438995, 35.048073, 36.551613>,  <42.251549, 35.187935, 36.497742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.438995, 35.048073, 36.551613>,  <42.751408, 34.814968, 36.641396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438995, 35.048073, 36.551613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029819, -0.324219, -0.945512,
		-0.623781, -0.745167, 0.235848,
		-0.781030, 0.582759, -0.224461,
		42.204685, 35.222900, 36.484276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333698, 34.441845, 36.224770>,  <42.751408, 34.814968, 36.641396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333698, 34.441845, 36.224770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.202629, 34.811932, 36.148243>,  <42.123989, 35.033985, 36.102329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.202629, 34.811932, 36.148243>,  <42.333698, 34.441845, 36.224770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202629, 34.811932, 36.148243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132993, -0.245644, -0.960194,
		-0.935385, -0.289183, 0.203538,
		-0.327669, 0.925220, -0.191312,
		42.104328, 35.089497, 36.090851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665546, 34.443012, 35.889233>,  <42.333698, 34.441845, 36.224770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665546, 34.443012, 35.889233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.809040, 34.801018, 35.783211>,  <41.895138, 35.015823, 35.719597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.809040, 34.801018, 35.783211>,  <41.665546, 34.443012, 35.889233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809040, 34.801018, 35.783211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198748, -0.204203, -0.958541,
		-0.912036, 0.396540, 0.104629,
		0.358734, 0.895018, -0.265052,
		41.916660, 35.069523, 35.703693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214092, 34.560539, 35.423225>,  <41.665546, 34.443012, 35.889233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214092, 34.560539, 35.423225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.499798, 34.832630, 35.357353>,  <41.671219, 34.995884, 35.317829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.499798, 34.832630, 35.357353>,  <41.214092, 34.560539, 35.423225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499798, 34.832630, 35.357353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059472, -0.175463, -0.982688,
		-0.697347, 0.711691, -0.084872,
		0.714262, 0.680227, -0.164684,
		41.714077, 35.036697, 35.307949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967876, 34.970455, 34.887226>,  <41.214092, 34.560539, 35.423225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967876, 34.970455, 34.887226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.366302, 35.005535, 34.882103>,  <41.605358, 35.026585, 34.879028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.366302, 35.005535, 34.882103>,  <40.967876, 34.970455, 34.887226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366302, 35.005535, 34.882103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003942, -0.100578, -0.994921,
		-0.088543, 0.991057, -0.099837,
		0.996065, 0.087699, -0.012812,
		41.665123, 35.031845, 34.878258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061840, 35.336918, 34.321651>,  <40.967876, 34.970455, 34.887226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061840, 35.336918, 34.321651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.437233, 35.212479, 34.381615>,  <41.662468, 35.137814, 34.417591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.437233, 35.212479, 34.381615>,  <41.061840, 35.336918, 34.321651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437233, 35.212479, 34.381615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160720, 0.009260, -0.986957,
		0.305653, 0.950332, 0.058691,
		0.938480, -0.311099, 0.149907,
		41.718777, 35.119148, 34.426586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605755, 35.769787, 33.974091>,  <41.061840, 35.336918, 34.321651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.605755, 35.769787, 33.974091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.793629, 35.419441, 34.018372>,  <41.906353, 35.209232, 34.044941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.793629, 35.419441, 34.018372>,  <41.605755, 35.769787, 33.974091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793629, 35.419441, 34.018372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112396, -0.065049, -0.991532,
		0.875651, 0.478148, 0.067892,
		0.469682, -0.875867, 0.110702,
		41.934532, 35.156681, 34.051582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165062, 35.723289, 33.460121>,  <41.605755, 35.769787, 33.974091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165062, 35.723289, 33.460121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.133308, 35.338833, 33.565884>,  <42.114258, 35.108158, 33.629341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.133308, 35.338833, 33.565884>,  <42.165062, 35.723289, 33.460121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133308, 35.338833, 33.565884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169464, -0.274390, -0.946569,
		0.982334, -0.030333, 0.184660,
		-0.079381, -0.961140, 0.264402,
		42.109493, 35.050491, 33.645203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722805, 35.349030, 33.127850>,  <42.165062, 35.723289, 33.460121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722805, 35.349030, 33.127850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.437450, 35.081909, 33.212814>,  <42.266235, 34.921638, 33.263794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.437450, 35.081909, 33.212814>,  <42.722805, 35.349030, 33.127850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437450, 35.081909, 33.212814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023849, -0.326076, -0.945043,
		0.700360, -0.669119, 0.248546,
		-0.713390, -0.667798, 0.212413,
		42.223434, 34.881569, 33.276539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960819, 34.677559, 32.876934>,  <42.722805, 35.349030, 33.127850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960819, 34.677559, 32.876934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.563286, 34.645779, 32.907894>,  <42.324768, 34.626709, 32.926468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.563286, 34.645779, 32.907894>,  <42.960819, 34.677559, 32.876934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563286, 34.645779, 32.907894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051625, -0.286244, -0.956765,
		0.098172, -0.954857, 0.280376,
		-0.993830, -0.079453, 0.077396,
		42.265137, 34.621944, 32.931114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769779, 34.064331, 32.485298>,  <42.960819, 34.677559, 32.876934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769779, 34.064331, 32.485298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.437347, 34.284283, 32.518616>,  <42.237888, 34.416256, 32.538605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.437347, 34.284283, 32.518616>,  <42.769779, 34.064331, 32.485298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437347, 34.284283, 32.518616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106487, -0.010334, -0.994260,
		-0.545865, -0.835179, 0.067144,
		-0.831079, 0.549882, 0.083295,
		42.188023, 34.449245, 32.543606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281677, 33.752243, 32.018749>,  <42.769779, 34.064331, 32.485298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281677, 33.752243, 32.018749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.084618, 34.096519, 32.070141>,  <41.966381, 34.303085, 32.100975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.084618, 34.096519, 32.070141>,  <42.281677, 33.752243, 32.018749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084618, 34.096519, 32.070141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290194, -0.023290, -0.956684,
		-0.820420, -0.508591, 0.261242,
		-0.492645, 0.860693, 0.128482,
		41.936825, 34.354729, 32.108685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.607468, 33.680050, 31.806498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.660133, 34.076496, 31.799038>,  <41.691734, 34.314365, 31.794563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.660133, 34.076496, 31.799038>,  <41.607468, 33.680050, 31.806498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660133, 34.076496, 31.799038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286180, 0.019995, -0.957967,
		-0.949086, 0.131469, 0.286271,
		0.131667, 0.991119, -0.018647,
		41.699635, 34.373833, 31.793444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966019, 33.963291, 31.454304>,  <41.607468, 33.680050, 31.806498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966019, 33.963291, 31.454304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266544, 34.227074, 31.444229>,  <41.446861, 34.385345, 31.438185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.266544, 34.227074, 31.444229>,  <40.966019, 33.963291, 31.454304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266544, 34.227074, 31.444229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121218, 0.100390, -0.987536,
		-0.648712, 0.745007, 0.155363,
		0.751318, 0.659459, -0.025184,
		41.491940, 34.424911, 31.436674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722656, 34.457069, 30.975887>,  <40.966019, 33.963291, 31.454304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722656, 34.457069, 30.975887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118549, 34.497295, 31.016529>,  <41.356083, 34.521431, 31.040915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.118549, 34.497295, 31.016529>,  <40.722656, 34.457069, 30.975887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118549, 34.497295, 31.016529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101244, 0.008707, -0.994824,
		-0.100926, 0.994893, -0.001564,
		0.989729, 0.100562, 0.101606,
		41.415466, 34.527462, 31.047010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838890, 34.889599, 30.444225>,  <40.722656, 34.457069, 30.975887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838890, 34.889599, 30.444225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.193695, 34.727188, 30.532185>,  <41.406578, 34.629742, 30.584961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.193695, 34.727188, 30.532185>,  <40.838890, 34.889599, 30.444225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193695, 34.727188, 30.532185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259227, 0.043773, -0.964824,
		0.382121, 0.912811, 0.144081,
		0.887009, -0.406030, 0.219899,
		41.459797, 34.605381, 30.598154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272846, 35.310020, 30.245649>,  <40.838890, 34.889599, 30.444225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272846, 35.310020, 30.245649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453804, 34.953423, 30.236086>,  <41.562378, 34.739464, 30.230347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453804, 34.953423, 30.236086>,  <41.272846, 35.310020, 30.245649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453804, 34.953423, 30.236086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092469, 0.073556, -0.992995,
		0.887012, 0.447014, 0.115712,
		0.452394, -0.891498, -0.023910,
		41.589523, 34.685974, 30.228912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858036, 35.443741, 29.928532>,  <41.272846, 35.310020, 30.245649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858036, 35.443741, 29.928532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.806961, 35.048725, 29.891727>,  <41.776314, 34.811718, 29.869644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.806961, 35.048725, 29.891727>,  <41.858036, 35.443741, 29.928532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806961, 35.048725, 29.891727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115064, 0.077395, -0.990338,
		0.985117, -0.137043, 0.103748,
		-0.127690, -0.987537, -0.092012,
		41.768654, 34.752464, 29.864124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300739, 35.301727, 29.423155>,  <41.858036, 35.443741, 29.928532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300739, 35.301727, 29.423155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102169, 34.954716, 29.435493>,  <41.983028, 34.746510, 29.442896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.102169, 34.954716, 29.435493>,  <42.300739, 35.301727, 29.423155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102169, 34.954716, 29.435493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330046, -0.221489, -0.917612,
		0.802890, -0.445345, 0.396278,
		-0.496425, -0.867531, 0.030847,
		41.953243, 34.694458, 29.444748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722645, 34.885456, 28.886789>,  <42.300739, 35.301727, 29.423155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722645, 34.885456, 28.886789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.379013, 34.682732, 28.915413>,  <42.172832, 34.561096, 28.932587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.379013, 34.682732, 28.915413>,  <42.722645, 34.885456, 28.886789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379013, 34.682732, 28.915413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165038, -0.406624, -0.898565,
		0.484498, -0.760133, 0.432967,
		-0.859084, -0.506809, 0.071558,
		42.121288, 34.530689, 28.936880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757332, 34.200558, 28.634701>,  <42.722645, 34.885456, 28.886789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757332, 34.200558, 28.634701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.370087, 34.279739, 28.573288>,  <42.137741, 34.327248, 28.536440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.370087, 34.279739, 28.573288>,  <42.757332, 34.200558, 28.634701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370087, 34.279739, 28.573288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076340, -0.350595, -0.933410,
		-0.238595, -0.915368, 0.324305,
		-0.968114, 0.197950, -0.153529,
		42.079651, 34.339123, 28.527229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568542, 33.609970, 28.323627>,  <42.757332, 34.200558, 28.634701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568542, 33.609970, 28.323627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.332764, 33.921490, 28.237820>,  <42.191296, 34.108402, 28.186335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.332764, 33.921490, 28.237820>,  <42.568542, 33.609970, 28.323627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332764, 33.921490, 28.237820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122029, -0.176663, -0.976678,
		-0.798537, -0.601877, 0.009097,
		-0.589447, 0.778803, -0.214518,
		42.155930, 34.155132, 28.173464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216175, 33.352657, 27.770649>,  <42.568542, 33.609970, 28.323627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216175, 33.352657, 27.770649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150082, 33.746964, 27.758228>,  <42.110424, 33.983547, 27.750776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150082, 33.746964, 27.758228>,  <42.216175, 33.352657, 27.770649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150082, 33.746964, 27.758228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073014, -0.019173, -0.997146,
		-0.983548, -0.167030, -0.068806,
		-0.165234, 0.985765, -0.031053,
		42.100510, 34.042694, 27.748913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690613, 33.458290, 27.300476>,  <42.216175, 33.352657, 27.770649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690613, 33.458290, 27.300476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.891521, 33.803982, 27.312023>,  <42.012066, 34.011395, 27.318951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.891521, 33.803982, 27.312023>,  <41.690613, 33.458290, 27.300476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891521, 33.803982, 27.312023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085614, 0.082921, -0.992872,
		-0.860459, 0.496224, 0.115639,
		0.502276, 0.864226, 0.028866,
		42.042206, 34.063248, 27.320683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454815, 33.915863, 26.798141>,  <41.690613, 33.458290, 27.300476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454815, 33.915863, 26.798141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.782475, 34.135223, 26.865379>,  <41.979069, 34.266842, 26.905722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.782475, 34.135223, 26.865379>,  <41.454815, 33.915863, 26.798141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782475, 34.135223, 26.865379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026073, 0.328355, -0.944194,
		-0.572993, 0.769050, 0.283269,
		0.819145, 0.548403, 0.168094,
		42.028217, 34.299744, 26.915808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446106, 34.513981, 26.388901>,  <41.454815, 33.915863, 26.798141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446106, 34.513981, 26.388901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.835827, 34.492817, 26.476477>,  <42.069660, 34.480118, 26.529022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.835827, 34.492817, 26.476477>,  <41.446106, 34.513981, 26.388901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835827, 34.492817, 26.476477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224172, 0.322318, -0.919706,
		-0.021910, 0.945152, 0.325895,
		0.974303, -0.052906, 0.218938,
		42.128117, 34.476944, 26.542158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705826, 35.171738, 26.214142>,  <41.446106, 34.513981, 26.388901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705826, 35.171738, 26.214142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023026, 34.928249, 26.224010>,  <42.213345, 34.782154, 26.229933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.023026, 34.928249, 26.224010>,  <41.705826, 35.171738, 26.214142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023026, 34.928249, 26.224010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185428, 0.202589, -0.961548,
		0.580318, 0.767082, 0.273527,
		0.792999, -0.608723, 0.024673,
		42.260925, 34.745632, 26.231413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377834, 35.503361, 25.989874>,  <41.705826, 35.171738, 26.214142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377834, 35.503361, 25.989874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.468941, 35.117496, 25.936871>,  <42.523605, 34.885979, 25.905069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.468941, 35.117496, 25.936871>,  <42.377834, 35.503361, 25.989874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468941, 35.117496, 25.936871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386341, 0.214442, -0.897082,
		0.893793, 0.153128, 0.421529,
		0.227762, -0.964659, -0.132507,
		42.537270, 34.828098, 25.897118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009190, 35.459267, 25.728363>,  <42.377834, 35.503361, 25.989874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009190, 35.459267, 25.728363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.845764, 35.110729, 25.619669>,  <42.747707, 34.901608, 25.554453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.845764, 35.110729, 25.619669>,  <43.009190, 35.459267, 25.728363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845764, 35.110729, 25.619669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275804, 0.165937, -0.946782,
		0.870061, -0.461769, 0.172523,
		-0.408566, -0.871341, -0.271733,
		42.723194, 34.849327, 25.538149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495369, 35.276409, 25.182056>,  <43.009190, 35.459267, 25.728363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495369, 35.276409, 25.182056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.177406, 35.038677, 25.133249>,  <42.986629, 34.896038, 25.103964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.177406, 35.038677, 25.133249>,  <43.495369, 35.276409, 25.182056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177406, 35.038677, 25.133249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141598, 0.013831, -0.989828,
		0.589972, -0.804102, 0.073161,
		-0.794911, -0.594330, -0.122019,
		42.938934, 34.860378, 25.096643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740097, 34.970074, 24.674292>,  <43.495369, 35.276409, 25.182056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740097, 34.970074, 24.674292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.346775, 34.899506, 24.656479>,  <43.110783, 34.857166, 24.645792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.346775, 34.899506, 24.656479>,  <43.740097, 34.970074, 24.674292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.346775, 34.899506, 24.656479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014036, 0.170460, -0.985265,
		0.181404, -0.969444, -0.165138,
		-0.983309, -0.176413, -0.044529,
		43.051785, 34.846581, 24.643120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730667, 34.597050, 24.108534>,  <43.740097, 34.970074, 24.674292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730667, 34.597050, 24.108534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357792, 34.733582, 24.156717>,  <43.134068, 34.815502, 24.185627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.357792, 34.733582, 24.156717>,  <43.730667, 34.597050, 24.108534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357792, 34.733582, 24.156717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085166, 0.116621, -0.989518,
		-0.351802, -0.932680, -0.079643,
		-0.932192, 0.341332, 0.120460,
		43.078133, 34.835979, 24.192856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389687, 34.274158, 23.561367>,  <43.730667, 34.597050, 24.108534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389687, 34.274158, 23.561367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.174488, 34.589069, 23.681866>,  <43.045368, 34.778015, 23.754164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.174488, 34.589069, 23.681866>,  <43.389687, 34.274158, 23.561367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174488, 34.589069, 23.681866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135585, 0.271897, -0.952727,
		-0.831971, -0.553408, -0.039536,
		-0.537997, 0.787281, 0.301245,
		43.013088, 34.825253, 23.772240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747784, 34.222023, 23.265875>,  <43.389687, 34.274158, 23.561367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747784, 34.222023, 23.265875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.784550, 34.612614, 23.343899>,  <42.806610, 34.846970, 23.390713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.784550, 34.612614, 23.343899>,  <42.747784, 34.222023, 23.265875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784550, 34.612614, 23.343899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116009, 0.205054, -0.971851,
		-0.988987, 0.066696, 0.132126,
		0.091912, 0.976476, 0.195058,
		42.812122, 34.905556, 23.402416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334354, 34.519665, 22.770689>,  <42.747784, 34.222023, 23.265875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334354, 34.519665, 22.770689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.598423, 34.789593, 22.902626>,  <42.756863, 34.951550, 22.981789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.598423, 34.789593, 22.902626>,  <42.334354, 34.519665, 22.770689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598423, 34.789593, 22.902626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095306, 0.360329, -0.927944,
		-0.745043, 0.644039, 0.173566,
		0.660172, 0.674816, 0.329842,
		42.796474, 34.992039, 23.001579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127331, 35.247246, 22.602594>,  <42.334354, 34.519665, 22.770689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127331, 35.247246, 22.602594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.521477, 35.179058, 22.602545>,  <42.757965, 35.138145, 22.602514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.521477, 35.179058, 22.602545>,  <42.127331, 35.247246, 22.602594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521477, 35.179058, 22.602545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059530, 0.344787, -0.936791,
		0.159741, 0.923071, 0.349889,
		0.985362, -0.170473, -0.000126,
		42.817085, 35.127914, 22.602507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566296, 35.237671, 23.090567>,  <42.127331, 35.247246, 22.602594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566296, 35.237671, 23.090567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.250355, 35.150703, 22.861181>,  <41.060791, 35.098522, 22.723551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.250355, 35.150703, 22.861181>,  <41.566296, 35.237671, 23.090567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250355, 35.150703, 22.861181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570077, -0.084513, 0.817233,
		-0.226143, 0.972414, -0.057190,
		-0.789856, -0.217414, -0.573463,
		41.013397, 35.085480, 22.689142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016315, 35.774521, 23.253883>,  <41.566296, 35.237671, 23.090567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016315, 35.774521, 23.253883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.884060, 35.422955, 23.116373>,  <40.804707, 35.212013, 23.033867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.884060, 35.422955, 23.116373>,  <41.016315, 35.774521, 23.253883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884060, 35.422955, 23.116373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637553, -0.060562, 0.768022,
		-0.695848, 0.473114, -0.540332,
		-0.330639, -0.878917, -0.343777,
		40.784870, 35.159279, 23.013241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383286, 35.882420, 23.486092>,  <41.016315, 35.774521, 23.253883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383286, 35.882420, 23.486092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.405567, 35.489681, 23.413565>,  <40.418934, 35.254040, 23.370049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.405567, 35.489681, 23.413565>,  <40.383286, 35.882420, 23.486092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405567, 35.489681, 23.413565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526540, -0.183181, 0.830181,
		-0.848324, 0.049228, -0.527185,
		0.055703, -0.981846, -0.181317,
		40.422279, 35.195129, 23.359169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678349, 35.695988, 23.436295>,  <40.383286, 35.882420, 23.486092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678349, 35.695988, 23.436295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923126, 35.399223, 23.545912>,  <40.069992, 35.221165, 23.611681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923126, 35.399223, 23.545912>,  <39.678349, 35.695988, 23.436295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923126, 35.399223, 23.545912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645444, -0.268217, 0.715165,
		-0.457084, -0.614519, -0.642993,
		0.611944, -0.741907, 0.274040,
		40.106709, 35.176651, 23.628124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246735, 35.290783, 23.697029>,  <39.678349, 35.695988, 23.436295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246735, 35.290783, 23.697029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.586853, 35.152176, 23.855484>,  <39.790924, 35.069012, 23.950556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.586853, 35.152176, 23.855484>,  <39.246735, 35.290783, 23.697029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586853, 35.152176, 23.855484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482141, -0.211042, 0.850295,
		-0.211042, -0.913994, -0.346519,
		-0.850295, 0.346519, -0.396136,
		39.841942, 35.048222, 23.974325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097801, 34.702335, 24.051134>,  <39.246735, 35.290783, 23.697029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097801, 34.702335, 24.051134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.440231, 34.810211, 24.227497>,  <39.645691, 34.874935, 24.333315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.440231, 34.810211, 24.227497>,  <39.097801, 34.702335, 24.051134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440231, 34.810211, 24.227497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434257, -0.087279, 0.896551,
		0.280271, -0.958984, 0.042397,
		0.856078, 0.269689, 0.440908,
		39.697056, 34.891117, 24.359770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098778, 34.277245, 24.570587>,  <39.097801, 34.702335, 24.051134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098778, 34.277245, 24.570587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385265, 34.536686, 24.673613>,  <39.557159, 34.692352, 24.735428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.385265, 34.536686, 24.673613>,  <39.098778, 34.277245, 24.570587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385265, 34.536686, 24.673613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105026, -0.264688, 0.958598,
		0.689923, -0.713621, -0.121456,
		0.716223, 0.648603, 0.257563,
		39.600132, 34.731266, 24.750881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751034, 33.923416, 24.923248>,  <39.098778, 34.277245, 24.570587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751034, 33.923416, 24.923248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.700111, 34.294716, 25.063042>,  <39.669559, 34.517498, 25.146917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.700111, 34.294716, 25.063042>,  <39.751034, 33.923416, 24.923248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700111, 34.294716, 25.063042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179126, -0.368075, 0.912379,
		0.975555, 0.053548, 0.213131,
		-0.127304, 0.928253, 0.349486,
		39.661919, 34.573193, 25.167887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115192, 33.855431, 25.470438>,  <39.751034, 33.923416, 24.923248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115192, 33.855431, 25.470438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.911503, 34.189495, 25.553574>,  <39.789291, 34.389935, 25.603455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.911503, 34.189495, 25.553574>,  <40.115192, 33.855431, 25.470438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911503, 34.189495, 25.553574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252532, -0.375859, 0.891604,
		0.822752, 0.401537, 0.402301,
		-0.509221, 0.835163, 0.207838,
		39.758736, 34.440044, 25.615925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289455, 34.054333, 26.089403>,  <40.115192, 33.855431, 25.470438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289455, 34.054333, 26.089403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945389, 34.255928, 26.058136>,  <39.738949, 34.376884, 26.039375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945389, 34.255928, 26.058136>,  <40.289455, 34.054333, 26.089403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945389, 34.255928, 26.058136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325361, -0.424218, 0.845092,
		0.392759, 0.752350, 0.528876,
		-0.860163, 0.503993, -0.078170,
		39.687340, 34.407127, 26.034685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278473, 34.642567, 26.657879>,  <40.289455, 34.054333, 26.089403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278473, 34.642567, 26.657879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.911209, 34.536259, 26.540337>,  <39.690849, 34.472473, 26.469810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.911209, 34.536259, 26.540337>,  <40.278473, 34.642567, 26.657879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911209, 34.536259, 26.540337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165642, -0.416262, 0.894029,
		-0.359929, 0.869535, 0.338171,
		-0.918158, -0.265771, -0.293856,
		39.635761, 34.456528, 26.452179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921707, 34.728367, 27.208319>,  <40.278473, 34.642567, 26.657879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921707, 34.728367, 27.208319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669868, 34.511856, 26.985386>,  <39.518764, 34.381950, 26.851625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.669868, 34.511856, 26.985386>,  <39.921707, 34.728367, 27.208319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669868, 34.511856, 26.985386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300178, -0.492175, 0.817103,
		-0.716586, 0.681748, 0.147393,
		-0.629601, -0.541280, -0.557331,
		39.480988, 34.349472, 26.818186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165199, 34.898792, 27.371548>,  <39.921707, 34.728367, 27.208319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165199, 34.898792, 27.371548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.209019, 34.524696, 27.236893>,  <39.235310, 34.300240, 27.156099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.209019, 34.524696, 27.236893>,  <39.165199, 34.898792, 27.371548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209019, 34.524696, 27.236893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347219, -0.353348, 0.868668,
		-0.931364, 0.021726, -0.363442,
		0.109548, -0.935240, -0.336639,
		39.241882, 34.244125, 27.135900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723816, 34.562340, 27.816896>,  <39.165199, 34.898792, 27.371548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723816, 34.562340, 27.816896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875168, 34.233547, 27.646633>,  <38.965977, 34.036274, 27.544476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875168, 34.233547, 27.646633>,  <38.723816, 34.562340, 27.816896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875168, 34.233547, 27.646633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142014, -0.505949, 0.850792,
		-0.914694, -0.261469, -0.308171,
		0.378375, -0.821979, -0.425656,
		38.988682, 33.986954, 27.518936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300182, 34.064564, 27.900747>,  <38.723816, 34.562340, 27.816896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300182, 34.064564, 27.900747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659924, 33.892475, 27.869566>,  <38.875767, 33.789223, 27.850857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659924, 33.892475, 27.869566>,  <38.300182, 34.064564, 27.900747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659924, 33.892475, 27.869566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080840, -0.338834, 0.937367,
		-0.429695, -0.836717, -0.339510,
		0.899348, -0.430228, -0.077955,
		38.929729, 33.763409, 27.846180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267532, 33.417004, 28.236025>,  <38.300182, 34.064564, 27.900747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267532, 33.417004, 28.236025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.663616, 33.472485, 28.229664>,  <38.901264, 33.505775, 28.225847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.663616, 33.472485, 28.229664>,  <38.267532, 33.417004, 28.236025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663616, 33.472485, 28.229664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064720, -0.355116, 0.932579,
		0.123706, -0.924475, -0.360615,
		0.990206, 0.138705, -0.015902,
		38.960678, 33.514095, 28.224894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357525, 33.020836, 28.794003>,  <38.267532, 33.417004, 28.236025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357525, 33.020836, 28.794003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.719425, 33.179039, 28.730762>,  <38.936565, 33.273960, 28.692818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.719425, 33.179039, 28.730762>,  <38.357525, 33.020836, 28.794003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719425, 33.179039, 28.730762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171575, 0.001321, 0.985170,
		0.389848, -0.918463, -0.066663,
		0.904754, 0.395504, -0.158100,
		38.990852, 33.297691, 28.683332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942627, 32.531796, 29.077450>,  <38.357525, 33.020836, 28.794003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942627, 32.531796, 29.077450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050941, 32.916634, 29.064465>,  <39.115929, 33.147537, 29.056673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050941, 32.916634, 29.064465>,  <38.942627, 32.531796, 29.077450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050941, 32.916634, 29.064465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162171, -0.012349, 0.986685,
		0.948882, -0.272444, -0.159367,
		0.270784, 0.962092, -0.032464,
		39.132175, 33.205261, 29.054726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498066, 32.567696, 29.408665>,  <38.942627, 32.531796, 29.077450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498066, 32.567696, 29.408665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379250, 32.949627, 29.405495>,  <39.307961, 33.178787, 29.403593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379250, 32.949627, 29.405495>,  <39.498066, 32.567696, 29.408665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379250, 32.949627, 29.405495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076487, -0.015519, 0.996950,
		0.951796, 0.296742, 0.077643,
		-0.297041, 0.954832, -0.007926,
		39.290138, 33.236076, 29.403116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925282, 32.861374, 29.863735>,  <39.498066, 32.567696, 29.408665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925282, 32.861374, 29.863735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.613384, 33.111122, 29.845148>,  <39.426247, 33.260971, 29.833996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.613384, 33.111122, 29.845148>,  <39.925282, 32.861374, 29.863735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613384, 33.111122, 29.845148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096234, -0.046184, 0.994287,
		0.618660, 0.779760, 0.096097,
		-0.779743, 0.624373, -0.046467,
		39.379463, 33.298435, 29.831207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.801868, 34.511284, 34.700401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469223, 34.713127, 34.607632>,  <42.269638, 34.834232, 34.551968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.469223, 34.713127, 34.607632>,  <42.801868, 34.511284, 34.700401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469223, 34.713127, 34.607632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077331, 0.518768, 0.851410,
		0.549948, 0.690107, -0.470435,
		-0.831611, 0.504611, -0.231929,
		42.219738, 34.864510, 34.538052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956005, 35.327721, 34.799854>,  <42.801868, 34.511284, 34.700401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956005, 35.327721, 34.799854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569878, 35.226593, 34.825882>,  <42.338200, 35.165916, 34.841499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569878, 35.226593, 34.825882>,  <42.956005, 35.327721, 34.799854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569878, 35.226593, 34.825882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054993, 0.440584, 0.896025,
		-0.255200, 0.861376, -0.439209,
		-0.965323, -0.252819, 0.065067,
		42.280281, 35.150745, 34.845402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638462, 35.920086, 34.996189>,  <42.956005, 35.327721, 34.799854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638462, 35.920086, 34.996189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368664, 35.644222, 35.101585>,  <42.206787, 35.478703, 35.164825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.368664, 35.644222, 35.101585>,  <42.638462, 35.920086, 34.996189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368664, 35.644222, 35.101585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040535, 0.390960, 0.919515,
		-0.737167, 0.609526, -0.291656,
		-0.674494, -0.689658, 0.263495,
		42.166317, 35.437325, 35.180634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310081, 36.277149, 35.577579>,  <42.638462, 35.920086, 34.996189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310081, 36.277149, 35.577579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.143311, 35.914753, 35.606831>,  <42.043247, 35.697315, 35.624382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.143311, 35.914753, 35.606831>,  <42.310081, 36.277149, 35.577579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143311, 35.914753, 35.606831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176622, 0.159669, 0.971242,
		-0.891614, 0.392024, -0.226589,
		-0.416929, -0.905993, 0.073123,
		42.018230, 35.642956, 35.628769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580315, 36.241684, 35.885723>,  <42.310081, 36.277149, 35.577579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580315, 36.241684, 35.885723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.745117, 35.883583, 35.953579>,  <41.843998, 35.668724, 35.994293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.745117, 35.883583, 35.953579>,  <41.580315, 36.241684, 35.885723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745117, 35.883583, 35.953579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255617, 0.065138, 0.964581,
		-0.874593, -0.440773, -0.202005,
		0.412004, -0.895252, 0.169638,
		41.868717, 35.615009, 36.004471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163876, 35.981049, 36.287716>,  <41.580315, 36.241684, 35.885723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163876, 35.981049, 36.287716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468143, 35.728664, 36.348732>,  <41.650703, 35.577236, 36.385342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.468143, 35.728664, 36.348732>,  <41.163876, 35.981049, 36.287716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468143, 35.728664, 36.348732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233891, -0.047200, 0.971116,
		-0.605533, -0.774380, -0.183479,
		0.760674, -0.630957, 0.152540,
		41.696346, 35.539379, 36.394493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941631, 35.340958, 36.762665>,  <41.163876, 35.981049, 36.287716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941631, 35.340958, 36.762665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.340103, 35.338955, 36.797558>,  <41.579185, 35.337753, 36.818493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.340103, 35.338955, 36.797558>,  <40.941631, 35.340958, 36.762665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340103, 35.338955, 36.797558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087375, -0.067316, 0.993898,
		0.000903, -0.997719, -0.067496,
		0.996175, -0.005000, 0.087237,
		41.638954, 35.337456, 36.823730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067631, 34.819016, 37.262703>,  <40.941631, 35.340958, 36.762665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067631, 34.819016, 37.262703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.385002, 35.062469, 37.265404>,  <41.575424, 35.208542, 37.267025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.385002, 35.062469, 37.265404>,  <41.067631, 34.819016, 37.262703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385002, 35.062469, 37.265404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030527, -0.050876, 0.998238,
		0.607902, -0.791821, -0.058946,
		0.793425, 0.608631, 0.006755,
		41.623028, 35.245060, 37.267429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458057, 34.565807, 37.839405>,  <41.067631, 34.819016, 37.262703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458057, 34.565807, 37.839405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588943, 34.935032, 37.758530>,  <41.667477, 35.156567, 37.710003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588943, 34.935032, 37.758530>,  <41.458057, 34.565807, 37.839405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588943, 34.935032, 37.758530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041304, 0.227736, 0.972847,
		0.944046, -0.309982, 0.112645,
		0.327218, 0.923064, -0.202190,
		41.687107, 35.211952, 37.697872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126919, 34.586143, 38.188042>,  <41.458057, 34.565807, 37.839405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126919, 34.586143, 38.188042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999229, 34.960499, 38.128426>,  <41.922615, 35.185112, 38.092655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.999229, 34.960499, 38.128426>,  <42.126919, 34.586143, 38.188042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999229, 34.960499, 38.128426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087873, 0.127356, 0.987957,
		0.943596, 0.328476, 0.041584,
		-0.319224, 0.935887, -0.149037,
		41.903461, 35.241264, 38.083714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399910, 34.909008, 38.793564>,  <42.126919, 34.586143, 38.188042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399910, 34.909008, 38.793564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132477, 35.175625, 38.661678>,  <41.972015, 35.335594, 38.582546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.132477, 35.175625, 38.661678>,  <42.399910, 34.909008, 38.793564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132477, 35.175625, 38.661678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203528, 0.262439, 0.943240,
		0.715242, 0.697742, -0.039802,
		-0.668584, 0.666545, -0.329717,
		41.931900, 35.375587, 38.562763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537510, 35.428276, 39.267323>,  <42.399910, 34.909008, 38.793564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537510, 35.428276, 39.267323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.168621, 35.472149, 39.119007>,  <41.947289, 35.498474, 39.030018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.168621, 35.472149, 39.119007>,  <42.537510, 35.428276, 39.267323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168621, 35.472149, 39.119007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352422, 0.156137, 0.922724,
		0.159100, 0.981627, -0.105338,
		-0.922218, 0.109682, -0.370788,
		41.891956, 35.505054, 39.007771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269711, 36.097866, 39.499569>,  <42.537510, 35.428276, 39.267323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269711, 36.097866, 39.499569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.964985, 35.849003, 39.427391>,  <41.782150, 35.699684, 39.384087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.964985, 35.849003, 39.427391>,  <42.269711, 36.097866, 39.499569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964985, 35.849003, 39.427391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337936, 0.144048, 0.930080,
		-0.552664, 0.769526, -0.319987,
		-0.761815, -0.622157, -0.180441,
		41.736439, 35.662357, 39.373260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612755, 36.364597, 39.805000>,  <42.269711, 36.097866, 39.499569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612755, 36.364597, 39.805000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.626816, 35.964966, 39.814842>,  <41.635254, 35.725185, 39.820747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.626816, 35.964966, 39.814842>,  <41.612755, 36.364597, 39.805000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626816, 35.964966, 39.814842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259875, 0.014639, 0.965531,
		-0.965002, -0.040337, -0.259121,
		0.035154, -0.999079, 0.024609,
		41.637363, 35.665241, 39.822224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688927, 37.061520, 39.362988>,  <41.612755, 36.364597, 39.805000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688927, 37.061520, 39.362988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583767, 37.422428, 39.499687>,  <41.520672, 37.638973, 39.581707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.583767, 37.422428, 39.499687>,  <41.688927, 37.061520, 39.362988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583767, 37.422428, 39.499687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094232, 0.376531, -0.921599,
		-0.960210, -0.210087, -0.184013,
		-0.262903, 0.902268, 0.341752,
		41.504894, 37.693108, 39.602211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176521, 37.346931, 38.880993>,  <41.688927, 37.061520, 39.362988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176521, 37.346931, 38.880993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.337181, 37.669044, 39.055435>,  <41.433578, 37.862312, 39.160103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.337181, 37.669044, 39.055435>,  <41.176521, 37.346931, 38.880993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337181, 37.669044, 39.055435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187416, 0.393851, -0.899865,
		-0.896411, 0.443164, 0.007267,
		0.401650, 0.805287, 0.436108,
		41.457676, 37.910629, 39.186268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917103, 37.864719, 38.392807>,  <41.176521, 37.346931, 38.880993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917103, 37.864719, 38.392807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222042, 38.009808, 38.607197>,  <41.405006, 38.096859, 38.735828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.222042, 38.009808, 38.607197>,  <40.917103, 37.864719, 38.392807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222042, 38.009808, 38.607197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319127, 0.509793, -0.798918,
		-0.563013, 0.780095, 0.272887,
		0.762347, 0.362716, 0.535970,
		41.450745, 38.118622, 38.767986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969646, 38.664818, 38.389439>,  <40.917103, 37.864719, 38.392807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969646, 38.664818, 38.389439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331181, 38.503822, 38.447525>,  <41.548100, 38.407227, 38.482376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331181, 38.503822, 38.447525>,  <40.969646, 38.664818, 38.389439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331181, 38.503822, 38.447525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344750, 0.483994, -0.804299,
		0.253435, 0.777017, 0.576208,
		0.903835, -0.402485, 0.145215,
		41.602333, 38.383076, 38.491089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480106, 39.215260, 38.112118>,  <40.969646, 38.664818, 38.389439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480106, 39.215260, 38.112118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.697475, 38.886211, 38.179035>,  <41.827896, 38.688782, 38.219185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.697475, 38.886211, 38.179035>,  <41.480106, 39.215260, 38.112118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697475, 38.886211, 38.179035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614626, 0.254154, -0.746753,
		0.571775, 0.508628, 0.643717,
		0.543423, -0.822620, 0.167297,
		41.860500, 38.639427, 38.229225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150562, 39.397583, 38.117455>,  <41.480106, 39.215260, 38.112118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150562, 39.397583, 38.117455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123844, 39.008549, 38.028347>,  <42.107815, 38.775127, 37.974884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.123844, 39.008549, 38.028347>,  <42.150562, 39.397583, 38.117455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123844, 39.008549, 38.028347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547691, 0.150883, -0.822964,
		0.834011, -0.176976, 0.522595,
		-0.066794, -0.972581, -0.222766,
		42.103806, 38.716774, 37.961517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590260, 39.503185, 37.646168>,  <42.150562, 39.397583, 38.117455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590260, 39.503185, 37.646168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.451237, 39.130756, 37.601776>,  <42.367825, 38.907299, 37.575142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.451237, 39.130756, 37.601776>,  <42.590260, 39.503185, 37.646168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451237, 39.130756, 37.601776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289921, 0.005851, -0.957033,
		0.891713, -0.364796, 0.267903,
		-0.347554, -0.931069, -0.110980,
		42.346970, 38.851437, 37.568481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026878, 39.234936, 37.202393>,  <42.590260, 39.503185, 37.646168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026878, 39.234936, 37.202393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727516, 38.969646, 37.200436>,  <42.547901, 38.810471, 37.199261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.727516, 38.969646, 37.200436>,  <43.026878, 39.234936, 37.202393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727516, 38.969646, 37.200436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220782, -0.242165, -0.944781,
		0.625420, -0.708156, 0.327665,
		-0.748402, -0.663228, -0.004893,
		42.502995, 38.770679, 37.198967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270466, 38.543995, 37.023224>,  <43.026878, 39.234936, 37.202393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270466, 38.543995, 37.023224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.883446, 38.573547, 36.926571>,  <42.651234, 38.591278, 36.868580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.883446, 38.573547, 36.926571>,  <43.270466, 38.543995, 37.023224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883446, 38.573547, 36.926571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195685, -0.385871, -0.901560,
		-0.159851, -0.919589, 0.358892,
		-0.967551, 0.073885, -0.241632,
		42.593182, 38.595715, 36.854080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149551, 38.013466, 36.624287>,  <43.270466, 38.543995, 37.023224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149551, 38.013466, 36.624287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820217, 38.228676, 36.552010>,  <42.622616, 38.357800, 36.508644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.820217, 38.228676, 36.552010>,  <43.149551, 38.013466, 36.624287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820217, 38.228676, 36.552010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035098, -0.366023, -0.929944,
		-0.566467, -0.759315, 0.320244,
		-0.823337, 0.538022, -0.180689,
		42.573215, 38.390083, 36.497803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561260, 37.544117, 36.340614>,  <43.149551, 38.013466, 36.624287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561260, 37.544117, 36.340614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496067, 37.920677, 36.222488>,  <42.456951, 38.146614, 36.151615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496067, 37.920677, 36.222488>,  <42.561260, 37.544117, 36.340614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496067, 37.920677, 36.222488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152463, -0.319749, -0.935155,
		-0.974777, -0.107393, 0.195643,
		-0.162986, 0.941396, -0.295311,
		42.447170, 38.203094, 36.133896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893909, 37.441559, 35.997055>,  <42.561260, 37.544117, 36.340614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893909, 37.441559, 35.997055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.053169, 37.776676, 35.847618>,  <42.148727, 37.977749, 35.757954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.053169, 37.776676, 35.847618>,  <41.893909, 37.441559, 35.997055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053169, 37.776676, 35.847618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225244, -0.305510, -0.925164,
		-0.889235, 0.452507, 0.067068,
		0.398154, 0.837795, -0.373595,
		42.172615, 38.028015, 35.735538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507553, 37.527851, 35.500317>,  <41.893909, 37.441559, 35.997055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507553, 37.527851, 35.500317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827248, 37.754944, 35.421421>,  <42.019062, 37.891201, 35.374084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827248, 37.754944, 35.421421>,  <41.507553, 37.527851, 35.500317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827248, 37.754944, 35.421421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105715, -0.190263, -0.976025,
		-0.591652, 0.800922, -0.092046,
		0.799233, 0.567736, -0.197239,
		42.067017, 37.925266, 35.362247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324715, 37.967728, 34.918053>,  <41.507553, 37.527851, 35.500317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324715, 37.967728, 34.918053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.724430, 37.959553, 34.905407>,  <41.964260, 37.954647, 34.897820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.724430, 37.959553, 34.905407>,  <41.324715, 37.967728, 34.918053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724430, 37.959553, 34.905407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030336, 0.060043, -0.997735,
		0.022289, 0.997986, 0.059381,
		0.999291, -0.020438, -0.031613,
		42.024216, 37.953423, 34.895924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615860, 38.161823, 34.907860>,  <41.324715, 37.967728, 34.918053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615860, 38.161823, 34.907860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322971, 38.399506, 34.774727>,  <40.147240, 38.542114, 34.694847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322971, 38.399506, 34.774727>,  <40.615860, 38.161823, 34.907860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322971, 38.399506, 34.774727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532110, -0.194084, 0.824130,
		0.425108, 0.780543, 0.458295,
		-0.732217, 0.594208, -0.332828,
		40.103306, 38.577766, 34.674877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453762, 38.539825, 35.538818>,  <40.615860, 38.161823, 34.907860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453762, 38.539825, 35.538818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156414, 38.560574, 35.272072>,  <39.978004, 38.573025, 35.112022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.156414, 38.560574, 35.272072>,  <40.453762, 38.539825, 35.538818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156414, 38.560574, 35.272072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663857, -0.179228, 0.726065,
		-0.081859, 0.982439, 0.167669,
		-0.743366, 0.051873, -0.666870,
		39.933403, 38.576134, 35.072010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873119, 39.060452, 35.761898>,  <40.453762, 38.539825, 35.538818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873119, 39.060452, 35.761898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677166, 38.844711, 35.487930>,  <39.559593, 38.715267, 35.323547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.677166, 38.844711, 35.487930>,  <39.873119, 39.060452, 35.761898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677166, 38.844711, 35.487930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746195, -0.146835, 0.649333,
		-0.450789, 0.829180, -0.330530,
		-0.489881, -0.539351, -0.684921,
		39.530201, 38.682907, 35.282455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157516, 39.277004, 35.731411>,  <39.873119, 39.060452, 35.761898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157516, 39.277004, 35.731411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134563, 38.915878, 35.560940>,  <39.120792, 38.699203, 35.458656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.134563, 38.915878, 35.560940>,  <39.157516, 39.277004, 35.731411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134563, 38.915878, 35.560940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725639, -0.255468, 0.638893,
		-0.685679, 0.345911, -0.640461,
		-0.057383, -0.902819, -0.426175,
		39.117348, 38.645031, 35.433086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466061, 39.265163, 35.518894>,  <39.157516, 39.277004, 35.731411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466061, 39.265163, 35.518894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.591400, 38.885700, 35.536148>,  <38.666603, 38.658024, 35.546501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.591400, 38.885700, 35.536148>,  <38.466061, 39.265163, 35.518894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591400, 38.885700, 35.536148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794750, -0.237107, 0.558707,
		-0.519795, -0.209349, -0.828243,
		0.313347, -0.948659, 0.043133,
		38.685406, 38.601101, 35.549088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931992, 38.964073, 35.526634>,  <38.466061, 39.265163, 35.518894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931992, 38.964073, 35.526634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.152504, 38.650143, 35.639870>,  <38.284809, 38.461784, 35.707813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.152504, 38.650143, 35.639870>,  <37.931992, 38.964073, 35.526634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152504, 38.650143, 35.639870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688770, -0.236621, 0.685278,
		-0.470839, -0.572762, -0.671009,
		0.551276, -0.784827, 0.283091,
		38.317886, 38.414696, 35.724796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490147, 38.383152, 35.681194>,  <37.931992, 38.964073, 35.526634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490147, 38.383152, 35.681194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828571, 38.260635, 35.855721>,  <38.031624, 38.187126, 35.960438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828571, 38.260635, 35.855721>,  <37.490147, 38.383152, 35.681194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828571, 38.260635, 35.855721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527561, -0.363491, 0.767824,
		-0.076581, -0.879807, -0.469121,
		0.846058, -0.306291, 0.436316,
		38.082390, 38.168747, 35.986614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323296, 37.774254, 35.998371>,  <37.490147, 38.383152, 35.681194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323296, 37.774254, 35.998371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.643185, 37.898178, 36.204075>,  <37.835117, 37.972534, 36.327496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.643185, 37.898178, 36.204075>,  <37.323296, 37.774254, 35.998371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643185, 37.898178, 36.204075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406228, -0.351480, 0.843470,
		0.442068, -0.883447, -0.155232,
		0.799722, 0.309812, 0.514259,
		37.883102, 37.991123, 36.358353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446095, 37.196758, 36.496056>,  <37.323296, 37.774254, 35.998371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446095, 37.196758, 36.496056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.585567, 37.540134, 36.646523>,  <37.669250, 37.746159, 36.736801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.585567, 37.540134, 36.646523>,  <37.446095, 37.196758, 36.496056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585567, 37.540134, 36.646523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407009, -0.222846, 0.885823,
		0.844253, -0.461977, 0.271689,
		0.348685, 0.858439, 0.376168,
		37.690174, 37.797665, 36.759373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422035, 37.022968, 37.204624>,  <37.446095, 37.196758, 36.496056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422035, 37.022968, 37.204624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.454792, 37.421349, 37.189823>,  <37.474445, 37.660378, 37.180943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.454792, 37.421349, 37.189823>,  <37.422035, 37.022968, 37.204624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454792, 37.421349, 37.189823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244361, 0.056057, 0.968062,
		0.966220, -0.070239, 0.247963,
		0.081896, 0.995954, -0.036999,
		37.479362, 37.720135, 37.178722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798878, 37.171219, 37.697285>,  <37.422035, 37.022968, 37.204624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798878, 37.171219, 37.697285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587887, 37.504757, 37.632198>,  <37.461292, 37.704880, 37.593147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587887, 37.504757, 37.632198>,  <37.798878, 37.171219, 37.697285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587887, 37.504757, 37.632198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239037, 0.038126, 0.970261,
		0.815247, 0.550687, 0.179209,
		-0.527478, 0.833841, -0.162716,
		37.429642, 37.754910, 37.583382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913925, 37.574490, 38.296265>,  <37.798878, 37.171219, 37.697285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913925, 37.574490, 38.296265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587830, 37.728588, 38.123302>,  <37.392174, 37.821049, 38.019524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.587830, 37.728588, 38.123302>,  <37.913925, 37.574490, 38.296265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587830, 37.728588, 38.123302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492581, -0.068614, 0.867558,
		0.304553, 0.920260, 0.245702,
		-0.815237, 0.385245, -0.432405,
		37.343258, 37.844162, 37.993580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.562260, 40.791840, 31.570665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197121, 40.628551, 31.573727>,  <40.978035, 40.530579, 31.575563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197121, 40.628551, 31.573727>,  <41.562260, 40.791840, 31.570665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197121, 40.628551, 31.573727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031433, 0.088955, 0.995540,
		-0.407080, 0.908539, -0.094034,
		-0.912852, -0.408220, 0.007654,
		40.923264, 40.506084, 31.576023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219997, 41.009682, 32.245869>,  <41.562260, 40.791840, 31.570665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219997, 41.009682, 32.245869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025124, 40.680660, 32.128529>,  <40.908199, 40.483246, 32.058125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025124, 40.680660, 32.128529>,  <41.219997, 41.009682, 32.245869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025124, 40.680660, 32.128529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185394, -0.230838, 0.955167,
		-0.853396, 0.519724, -0.040037,
		-0.487180, -0.822558, -0.293350,
		40.878971, 40.433891, 32.040524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701557, 41.041065, 32.567875>,  <41.219997, 41.009682, 32.245869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701557, 41.041065, 32.567875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684914, 40.659214, 32.449924>,  <40.674927, 40.430103, 32.379154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684914, 40.659214, 32.449924>,  <40.701557, 41.041065, 32.567875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684914, 40.659214, 32.449924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185601, -0.282612, 0.941107,
		-0.981744, 0.093888, -0.165421,
		-0.041608, -0.954629, -0.294879,
		40.672432, 40.372826, 32.361462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041069, 40.767490, 32.833591>,  <40.701557, 41.041065, 32.567875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041069, 40.767490, 32.833591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289993, 40.462383, 32.763264>,  <40.439346, 40.279320, 32.721066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289993, 40.462383, 32.763264>,  <40.041069, 40.767490, 32.833591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289993, 40.462383, 32.763264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339764, -0.465563, 0.817198,
		-0.705192, -0.448809, -0.548885,
		0.622306, -0.762772, -0.175822,
		40.476685, 40.233551, 32.710518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667336, 40.141689, 32.994049>,  <40.041069, 40.767490, 32.833591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667336, 40.141689, 32.994049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046299, 40.013767, 32.998840>,  <40.273678, 39.937012, 33.001717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046299, 40.013767, 32.998840>,  <39.667336, 40.141689, 32.994049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046299, 40.013767, 32.998840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195067, -0.547395, 0.813823,
		-0.253709, -0.773358, -0.580989,
		0.947407, -0.319806, 0.011978,
		40.330521, 39.917824, 33.002434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624416, 39.445179, 33.011036>,  <39.667336, 40.141689, 32.994049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624416, 39.445179, 33.011036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974285, 39.535423, 33.182640>,  <40.184208, 39.589569, 33.285603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974285, 39.535423, 33.182640>,  <39.624416, 39.445179, 33.011036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974285, 39.535423, 33.182640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170197, -0.685770, 0.707638,
		0.453851, -0.691968, -0.561427,
		0.874673, 0.225610, 0.429008,
		40.236687, 39.603107, 33.311344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816559, 38.786633, 33.266655>,  <39.624416, 39.445179, 33.011036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816559, 38.786633, 33.266655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059570, 39.041149, 33.456833>,  <40.205376, 39.193859, 33.570938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059570, 39.041149, 33.456833>,  <39.816559, 38.786633, 33.266655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059570, 39.041149, 33.456833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067624, -0.637830, 0.767203,
		0.791414, -0.433946, -0.430528,
		0.607528, 0.636289, 0.475443,
		40.241829, 39.232037, 33.599464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448292, 38.468651, 33.448895>,  <39.816559, 38.786633, 33.266655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448292, 38.468651, 33.448895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402599, 38.775185, 33.701778>,  <40.375183, 38.959103, 33.853508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402599, 38.775185, 33.701778>,  <40.448292, 38.468651, 33.448895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402599, 38.775185, 33.701778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066295, -0.640836, 0.764810,
		0.991239, 0.045455, 0.124009,
		-0.114234, 0.766331, 0.632208,
		40.368328, 39.005085, 33.891441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773972, 38.297081, 34.047520>,  <40.448292, 38.468651, 33.448895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773972, 38.297081, 34.047520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529976, 38.590942, 34.166313>,  <40.383579, 38.767258, 34.237591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529976, 38.590942, 34.166313>,  <40.773972, 38.297081, 34.047520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529976, 38.590942, 34.166313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232865, -0.524432, 0.818990,
		0.757418, 0.430421, 0.490974,
		-0.609993, 0.734649, 0.296984,
		40.346977, 38.811337, 34.255409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461288, 38.361801, 34.346703>,  <40.773972, 38.297081, 34.047520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461288, 38.361801, 34.346703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802124, 38.160290, 34.403496>,  <42.006626, 38.039383, 34.437572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802124, 38.160290, 34.403496>,  <41.461288, 38.361801, 34.346703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802124, 38.160290, 34.403496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051781, -0.188800, -0.980649,
		0.520835, 0.842949, -0.134788,
		0.852085, -0.503778, 0.141982,
		42.057751, 38.009155, 34.446091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860771, 38.700401, 34.005402>,  <41.461288, 38.361801, 34.346703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860771, 38.700401, 34.005402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994022, 38.324863, 34.040245>,  <42.073975, 38.099541, 34.061150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994022, 38.324863, 34.040245>,  <41.860771, 38.700401, 34.005402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994022, 38.324863, 34.040245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055677, -0.111807, -0.992169,
		0.941235, 0.325672, -0.089518,
		0.333131, -0.938849, 0.087105,
		42.093960, 38.043209, 34.066376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375019, 38.635872, 33.462616>,  <41.860771, 38.700401, 34.005402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375019, 38.635872, 33.462616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263226, 38.266827, 33.568958>,  <42.196148, 38.045399, 33.632763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263226, 38.266827, 33.568958>,  <42.375019, 38.635872, 33.462616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263226, 38.266827, 33.568958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073789, -0.296710, -0.952112,
		0.957310, -0.246484, 0.151004,
		-0.279485, -0.922610, 0.265856,
		42.179379, 37.990044, 33.648716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826649, 38.192703, 33.111595>,  <42.375019, 38.635872, 33.462616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826649, 38.192703, 33.111595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527290, 37.938080, 33.186096>,  <42.347675, 37.785305, 33.230797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527290, 37.938080, 33.186096>,  <42.826649, 38.192703, 33.111595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527290, 37.938080, 33.186096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057314, -0.341838, -0.938010,
		0.660769, -0.691330, 0.292315,
		-0.748398, -0.636561, 0.186253,
		42.302773, 37.747112, 33.241974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044685, 37.644489, 32.808964>,  <42.826649, 38.192703, 33.111595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044685, 37.644489, 32.808964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652794, 37.566147, 32.825836>,  <42.417660, 37.519142, 32.835960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652794, 37.566147, 32.825836>,  <43.044685, 37.644489, 32.808964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652794, 37.566147, 32.825836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004203, -0.190409, -0.981696,
		0.200303, -0.961969, 0.185725,
		-0.979725, -0.195856, 0.042183,
		42.358875, 37.507389, 32.838490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938587, 37.209835, 32.305912>,  <43.044685, 37.644489, 32.808964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938587, 37.209835, 32.305912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559727, 37.321560, 32.369011>,  <42.332409, 37.388596, 32.406868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559727, 37.321560, 32.369011>,  <42.938587, 37.209835, 32.305912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559727, 37.321560, 32.369011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192066, -0.099939, -0.976280,
		-0.256924, -0.954985, 0.148305,
		-0.947154, 0.279314, 0.157743,
		42.275581, 37.405354, 32.416332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438557, 36.741764, 31.921051>,  <42.938587, 37.209835, 32.305912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438557, 36.741764, 31.921051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215542, 37.065422, 31.995281>,  <42.081734, 37.259617, 32.039818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215542, 37.065422, 31.995281>,  <42.438557, 36.741764, 31.921051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215542, 37.065422, 31.995281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335082, -0.014822, -0.942073,
		-0.759523, -0.587421, 0.279394,
		-0.557535, 0.809146, 0.185576,
		42.048283, 37.308167, 32.050953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757290, 36.582737, 31.686787>,  <42.438557, 36.741764, 31.921051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757290, 36.582737, 31.686787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785133, 36.981651, 31.696388>,  <41.801838, 37.221001, 31.702148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785133, 36.981651, 31.696388>,  <41.757290, 36.582737, 31.686787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785133, 36.981651, 31.696388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357123, 0.047378, -0.932855,
		-0.931460, 0.056362, 0.359452,
		0.069607, 0.997286, 0.024002,
		41.806015, 37.280838, 31.703588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211395, 36.654831, 31.399117>,  <41.757290, 36.582737, 31.686787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211395, 36.654831, 31.399117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439213, 36.983372, 31.386490>,  <41.575905, 37.180496, 31.378914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439213, 36.983372, 31.386490>,  <41.211395, 36.654831, 31.399117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439213, 36.983372, 31.386490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160936, 0.073772, -0.984204,
		-0.806050, 0.565630, 0.174202,
		0.569547, 0.821352, -0.031566,
		41.610077, 37.229778, 31.377020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981735, 37.016178, 30.857748>,  <41.211395, 36.654831, 31.399117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981735, 37.016178, 30.857748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340698, 37.190441, 30.885641>,  <41.556076, 37.294998, 30.902376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340698, 37.190441, 30.885641>,  <40.981735, 37.016178, 30.857748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340698, 37.190441, 30.885641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079042, 0.314247, -0.946045,
		-0.434061, 0.843478, 0.316443,
		0.897410, 0.435653, 0.069732,
		41.609921, 37.321136, 30.906561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866364, 37.629189, 30.581711>,  <40.981735, 37.016178, 30.857748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866364, 37.629189, 30.581711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261456, 37.570827, 30.559452>,  <41.498512, 37.535812, 30.546097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261456, 37.570827, 30.559452>,  <40.866364, 37.629189, 30.581711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261456, 37.570827, 30.559452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007526, 0.311468, -0.950227,
		0.155972, 0.938989, 0.306549,
		0.987733, -0.145902, -0.055648,
		41.557774, 37.527058, 30.542757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193348, 38.209461, 30.120981>,  <40.866364, 37.629189, 30.581711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193348, 38.209461, 30.120981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481773, 37.932621, 30.134035>,  <41.654831, 37.766518, 30.141867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481773, 37.932621, 30.134035>,  <41.193348, 38.209461, 30.120981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481773, 37.932621, 30.134035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191188, 0.153476, -0.969480,
		0.665967, 0.705298, 0.242987,
		0.721066, -0.692098, 0.032635,
		41.698093, 37.724991, 30.143826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817497, 38.473892, 29.840904>,  <41.193348, 38.209461, 30.120981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817497, 38.473892, 29.840904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917538, 38.086937, 29.824818>,  <41.977562, 37.854763, 29.815166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917538, 38.086937, 29.824818>,  <41.817497, 38.473892, 29.840904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917538, 38.086937, 29.824818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362820, 0.132146, -0.922442,
		0.897671, 0.216109, 0.384036,
		0.250096, -0.967385, -0.040215,
		41.992565, 37.796722, 29.812754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630199, 38.284489, 29.572359>,  <41.817497, 38.473892, 29.840904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630199, 38.284489, 29.572359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390854, 37.978809, 29.476053>,  <42.247246, 37.795403, 29.418270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390854, 37.978809, 29.476053>,  <42.630199, 38.284489, 29.572359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390854, 37.978809, 29.476053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356454, 0.015224, -0.934189,
		0.717570, -0.644803, 0.263292,
		-0.598360, -0.764197, -0.240767,
		42.211346, 37.749550, 29.403824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.249012, 34.835850, 28.292580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558178, 35.058762, 28.413935>,  <36.743675, 35.192509, 28.486748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558178, 35.058762, 28.413935>,  <36.249012, 34.835850, 28.292580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558178, 35.058762, 28.413935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026272, -0.449630, 0.892829,
		0.633968, -0.698049, -0.332884,
		0.772913, 0.557279, 0.303390,
		36.790051, 35.225945, 28.504951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732422, 34.343632, 28.650709>,  <36.249012, 34.835850, 28.292580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732422, 34.343632, 28.650709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822617, 34.711899, 28.778162>,  <36.876732, 34.932858, 28.854633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.822617, 34.711899, 28.778162>,  <36.732422, 34.343632, 28.650709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822617, 34.711899, 28.778162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008932, -0.325087, 0.945642,
		0.974205, -0.216076, -0.065080,
		0.225487, 0.920668, 0.318631,
		36.890263, 34.988098, 28.873751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223743, 34.267937, 29.185608>,  <36.732422, 34.343632, 28.650709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223743, 34.267937, 29.185608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137421, 34.652973, 29.251146>,  <37.085629, 34.883995, 29.290468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137421, 34.652973, 29.251146>,  <37.223743, 34.267937, 29.185608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137421, 34.652973, 29.251146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089201, -0.147662, 0.985007,
		0.972354, 0.227183, -0.053998,
		-0.215803, 0.962592, 0.163845,
		37.072681, 34.941750, 29.300301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650841, 34.479195, 29.826517>,  <37.223743, 34.267937, 29.185608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650841, 34.479195, 29.826517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379864, 34.769424, 29.778170>,  <37.217278, 34.943562, 29.749161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.379864, 34.769424, 29.778170>,  <37.650841, 34.479195, 29.826517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379864, 34.769424, 29.778170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016534, 0.179301, 0.983655,
		0.735388, 0.664373, -0.133463,
		-0.677444, 0.725575, -0.120871,
		37.176632, 34.987099, 29.741909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851929, 35.055012, 30.251902>,  <37.650841, 34.479195, 29.826517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851929, 35.055012, 30.251902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461296, 35.100502, 30.178854>,  <37.226917, 35.127796, 30.135025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.461296, 35.100502, 30.178854>,  <37.851929, 35.055012, 30.251902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461296, 35.100502, 30.178854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166795, 0.135874, 0.976585,
		0.135874, 0.984177, -0.113724,
		-0.976585, 0.113724, -0.182618,
		37.168320, 35.134621, 30.124069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539379, 35.687820, 30.591816>,  <37.851929, 35.055012, 30.251902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539379, 35.687820, 30.591816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230595, 35.438595, 30.541422>,  <37.045326, 35.289059, 30.511185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230595, 35.438595, 30.541422>,  <37.539379, 35.687820, 30.591816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230595, 35.438595, 30.541422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225252, 0.082784, 0.970777,
		-0.594425, 0.777779, -0.204252,
		-0.771959, -0.623063, -0.125987,
		36.999008, 35.251675, 30.503626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952946, 36.039043, 31.012304>,  <37.539379, 35.687820, 30.591816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952946, 36.039043, 31.012304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838814, 35.659763, 30.956444>,  <36.770332, 35.432194, 30.922928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838814, 35.659763, 30.956444>,  <36.952946, 36.039043, 31.012304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838814, 35.659763, 30.956444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360684, -0.028766, 0.932245,
		-0.887971, 0.316369, -0.333793,
		-0.285332, -0.948200, -0.139652,
		36.753216, 35.375305, 30.914549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285854, 35.987041, 31.337948>,  <36.952946, 36.039043, 31.012304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285854, 35.987041, 31.337948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435326, 35.616879, 31.312675>,  <36.525009, 35.394783, 31.297512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435326, 35.616879, 31.312675>,  <36.285854, 35.987041, 31.337948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435326, 35.616879, 31.312675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319576, -0.192391, 0.927824,
		-0.870767, -0.326516, -0.367629,
		0.373678, -0.925404, -0.063181,
		36.547428, 35.339256, 31.293720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852589, 35.503700, 31.740168>,  <36.285854, 35.987041, 31.337948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852589, 35.503700, 31.740168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.178314, 35.271687, 31.748690>,  <36.373749, 35.132477, 31.753803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.178314, 35.271687, 31.748690>,  <35.852589, 35.503700, 31.740168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178314, 35.271687, 31.748690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160301, -0.189464, 0.968714,
		-0.557850, -0.792253, -0.247263,
		0.814314, -0.580033, 0.021306,
		36.422607, 35.097675, 31.755081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652359, 34.795609, 31.904850>,  <35.852589, 35.503700, 31.740168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652359, 34.795609, 31.904850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035419, 34.827343, 32.015564>,  <36.265255, 34.846382, 32.081993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035419, 34.827343, 32.015564>,  <35.652359, 34.795609, 31.904850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035419, 34.827343, 32.015564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253408, -0.224173, 0.941027,
		0.136701, -0.971315, -0.194576,
		0.957652, 0.079332, 0.276783,
		36.322716, 34.851143, 32.098598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649273, 34.382954, 32.396179>,  <35.652359, 34.795609, 31.904850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649273, 34.382954, 32.396179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005386, 34.551426, 32.465454>,  <36.219055, 34.652508, 32.507019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005386, 34.551426, 32.465454>,  <35.649273, 34.382954, 32.396179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005386, 34.551426, 32.465454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124582, -0.140543, 0.982205,
		0.438027, -0.896021, -0.072652,
		0.890288, 0.421181, 0.173190,
		36.272472, 34.677780, 32.517410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019936, 33.865238, 32.781536>,  <35.649273, 34.382954, 32.396179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019936, 33.865238, 32.781536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.190025, 34.221375, 32.846622>,  <36.292080, 34.435055, 32.885674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.190025, 34.221375, 32.846622>,  <36.019936, 33.865238, 32.781536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190025, 34.221375, 32.846622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059157, -0.206736, 0.976607,
		0.903151, -0.405655, -0.140580,
		0.425228, 0.890339, 0.162716,
		36.317593, 34.488476, 32.895439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670258, 33.767365, 33.140598>,  <36.019936, 33.865238, 32.781536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670258, 33.767365, 33.140598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.566063, 34.142792, 33.231148>,  <36.503548, 34.368046, 33.285477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.566063, 34.142792, 33.231148>,  <36.670258, 33.767365, 33.140598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566063, 34.142792, 33.231148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228972, -0.167722, 0.958875,
		0.937933, 0.301607, -0.171216,
		-0.260486, 0.938564, 0.226371,
		36.487919, 34.424362, 33.299061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150517, 34.018196, 33.667004>,  <36.670258, 33.767365, 33.140598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150517, 34.018196, 33.667004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828350, 34.253483, 33.696148>,  <36.635052, 34.394653, 33.713634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828350, 34.253483, 33.696148>,  <37.150517, 34.018196, 33.667004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828350, 34.253483, 33.696148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042544, -0.065233, 0.996963,
		0.591181, 0.806070, 0.027515,
		-0.805416, 0.588214, 0.072858,
		36.586723, 34.429947, 33.718006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813271, 34.222965, 33.646622>,  <37.150517, 34.018196, 33.667004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813271, 34.222965, 33.646622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.124680, 33.997086, 33.756172>,  <38.311527, 33.861557, 33.821903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.124680, 33.997086, 33.756172>,  <37.813271, 34.222965, 33.646622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124680, 33.997086, 33.756172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158660, -0.245123, -0.956421,
		0.607226, 0.788053, -0.101239,
		0.778526, -0.564701, 0.273878,
		38.358238, 33.827675, 33.838337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401791, 34.468525, 33.196060>,  <37.813271, 34.222965, 33.646622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401791, 34.468525, 33.196060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507580, 34.104916, 33.324886>,  <38.571053, 33.886749, 33.402184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507580, 34.104916, 33.324886>,  <38.401791, 34.468525, 33.196060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507580, 34.104916, 33.324886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249923, -0.257948, -0.933275,
		0.931447, 0.327317, 0.158967,
		0.264471, -0.909025, 0.322069,
		38.586922, 33.832207, 33.421509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144138, 34.262947, 33.056572>,  <38.401791, 34.468525, 33.196060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144138, 34.262947, 33.056572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.961533, 33.907345, 33.070751>,  <38.851971, 33.693981, 33.079258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.961533, 33.907345, 33.070751>,  <39.144138, 34.262947, 33.056572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961533, 33.907345, 33.070751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347547, -0.214859, -0.912714,
		0.819028, -0.404347, 0.407059,
		-0.456513, -0.889010, 0.035446,
		38.824577, 33.640640, 33.081387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644501, 33.782398, 32.870579>,  <39.144138, 34.262947, 33.056572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644501, 33.782398, 32.870579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.287117, 33.606087, 32.836067>,  <39.072685, 33.500301, 32.815361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.287117, 33.606087, 32.836067>,  <39.644501, 33.782398, 32.870579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287117, 33.606087, 32.836067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183239, -0.182341, -0.966010,
		0.410065, -0.878900, 0.243683,
		-0.893460, -0.440779, -0.086277,
		39.019077, 33.473854, 32.810184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761822, 33.112549, 32.611645>,  <39.644501, 33.782398, 32.870579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761822, 33.112549, 32.611645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.386391, 33.207180, 32.511166>,  <39.161133, 33.263958, 32.450878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.386391, 33.207180, 32.511166>,  <39.761822, 33.112549, 32.611645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386391, 33.207180, 32.511166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185832, -0.266839, -0.945655,
		-0.290758, -0.934251, 0.206483,
		-0.938576, 0.236586, -0.251200,
		39.104816, 33.278156, 32.435806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505825, 32.610962, 32.154480>,  <39.761822, 33.112549, 32.611645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505825, 32.610962, 32.154480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.264023, 32.922356, 32.086903>,  <39.118942, 33.109192, 32.046356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.264023, 32.922356, 32.086903>,  <39.505825, 32.610962, 32.154480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264023, 32.922356, 32.086903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072059, -0.157771, -0.984843,
		-0.793335, -0.607517, 0.039277,
		-0.604505, 0.778480, -0.168943,
		39.082672, 33.155899, 32.036221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013775, 32.334667, 31.576460>,  <39.505825, 32.610962, 32.154480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013775, 32.334667, 31.576460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997517, 32.734108, 31.589989>,  <38.987762, 32.973774, 31.598106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.997517, 32.734108, 31.589989>,  <39.013775, 32.334667, 31.576460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997517, 32.734108, 31.589989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021002, 0.032988, -0.999235,
		-0.998953, -0.041325, 0.019632,
		-0.040646, 0.998601, 0.033821,
		38.985321, 33.033688, 31.600136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568138, 32.433613, 30.957813>,  <39.013775, 32.334667, 31.576460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568138, 32.433613, 30.957813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706055, 32.800594, 31.037218>,  <38.788803, 33.020782, 31.084862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.706055, 32.800594, 31.037218>,  <38.568138, 32.433613, 30.957813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706055, 32.800594, 31.037218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052742, 0.192212, -0.979935,
		-0.937198, 0.348339, 0.017884,
		0.344787, 0.917450, 0.198513,
		38.809490, 33.075829, 31.096771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230495, 32.855492, 30.494455>,  <38.568138, 32.433613, 30.957813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230495, 32.855492, 30.494455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557259, 33.064289, 30.592585>,  <38.753315, 33.189568, 30.651463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557259, 33.064289, 30.592585>,  <38.230495, 32.855492, 30.494455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557259, 33.064289, 30.592585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109718, 0.276932, -0.954605,
		-0.566238, 0.806740, 0.168955,
		0.816907, 0.521996, 0.245323,
		38.802330, 33.220886, 30.666182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111645, 33.422184, 30.144011>,  <38.230495, 32.855492, 30.494455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111645, 33.422184, 30.144011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506725, 33.454102, 30.197792>,  <38.743774, 33.473251, 30.230061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506725, 33.454102, 30.197792>,  <38.111645, 33.422184, 30.144011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506725, 33.454102, 30.197792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097029, 0.361469, -0.927322,
		-0.122598, 0.928963, 0.349281,
		0.987702, 0.079797, 0.134452,
		38.803036, 33.478043, 30.238127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359192, 34.089912, 29.866592>,  <38.111645, 33.422184, 30.144011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359192, 34.089912, 29.866592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689308, 33.864040, 29.868568>,  <38.887379, 33.728516, 29.869753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.689308, 33.864040, 29.868568>,  <38.359192, 34.089912, 29.866592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689308, 33.864040, 29.868568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204104, 0.290123, -0.934971,
		0.526529, 0.772633, 0.354690,
		0.825293, -0.564683, 0.004939,
		38.936897, 33.694637, 29.870050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868065, 34.473228, 29.571495>,  <38.359192, 34.089912, 29.866592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868065, 34.473228, 29.571495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.012985, 34.102650, 29.530636>,  <39.099937, 33.880302, 29.506121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.012985, 34.102650, 29.530636>,  <38.868065, 34.473228, 29.571495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012985, 34.102650, 29.530636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159329, 0.169541, -0.972559,
		0.918342, 0.336083, 0.209035,
		0.362301, -0.926447, -0.102149,
		39.121674, 33.824715, 29.499990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554386, 34.471458, 29.147118>,  <38.868065, 34.473228, 29.571495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554386, 34.471458, 29.147118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.413555, 34.099190, 29.107344>,  <39.329056, 33.875828, 29.083479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.413555, 34.099190, 29.107344>,  <39.554386, 34.471458, 29.147118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413555, 34.099190, 29.107344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084497, 0.074197, -0.993657,
		0.932150, -0.358245, 0.052516,
		-0.352076, -0.930675, -0.099434,
		39.307934, 33.819988, 29.077513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091034, 34.041969, 28.808899>,  <39.554386, 34.471458, 29.147118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091034, 34.041969, 28.808899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747417, 33.849316, 28.739534>,  <39.541248, 33.733723, 28.697916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.747417, 33.849316, 28.739534>,  <40.091034, 34.041969, 28.808899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747417, 33.849316, 28.739534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198035, -0.000300, -0.980195,
		0.472043, -0.876372, 0.095638,
		-0.859045, -0.481634, -0.173411,
		39.489704, 33.704826, 28.687511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808075, 34.037487, 28.939362>,  <40.091034, 34.041969, 28.808899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808075, 34.037487, 28.939362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.185417, 34.166382, 28.907740>,  <41.411823, 34.243717, 28.888765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.185417, 34.166382, 28.907740>,  <40.808075, 34.037487, 28.939362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185417, 34.166382, 28.907740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074635, 0.026071, 0.996870,
		0.323288, -0.946301, 0.000544,
		0.943353, 0.322235, -0.079056,
		41.468422, 34.263054, 28.884024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226364, 33.656841, 29.483189>,  <40.808075, 34.037487, 28.939362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226364, 33.656841, 29.483189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479263, 33.965481, 29.455185>,  <41.631004, 34.150665, 29.438383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.479263, 33.965481, 29.455185>,  <41.226364, 33.656841, 29.483189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479263, 33.965481, 29.455185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101461, 0.007124, 0.994814,
		0.768095, -0.636071, -0.073783,
		0.632247, 0.771598, -0.070008,
		41.668938, 34.196960, 29.434183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712963, 33.479172, 29.889870>,  <41.226364, 33.656841, 29.483189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712963, 33.479172, 29.889870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.754631, 33.875740, 29.858274>,  <41.779633, 34.113682, 29.839317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.754631, 33.875740, 29.858274>,  <41.712963, 33.479172, 29.889870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754631, 33.875740, 29.858274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194014, 0.057636, 0.979304,
		0.975452, -0.117338, -0.186345,
		0.104170, 0.991418, -0.078986,
		41.785881, 34.173164, 29.834579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357685, 33.579815, 30.333752>,  <41.712963, 33.479172, 29.889870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357685, 33.579815, 30.333752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.146931, 33.917015, 30.290394>,  <42.020477, 34.119335, 30.264380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.146931, 33.917015, 30.290394>,  <42.357685, 33.579815, 30.333752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146931, 33.917015, 30.290394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161708, 0.025776, 0.986502,
		0.834414, 0.537298, 0.122738,
		-0.526882, 0.842999, -0.108393,
		41.988865, 34.169914, 30.257875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519184, 33.920513, 30.898384>,  <42.357685, 33.579815, 30.333752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519184, 33.920513, 30.898384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.210094, 34.154419, 30.799637>,  <42.024639, 34.294762, 30.740389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.210094, 34.154419, 30.799637>,  <42.519184, 33.920513, 30.898384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210094, 34.154419, 30.799637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036530, 0.347319, 0.937035,
		0.633684, 0.733092, -0.247022,
		-0.772729, 0.584761, -0.246870,
		41.978275, 34.329845, 30.725576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705124, 34.598213, 31.164408>,  <42.519184, 33.920513, 30.898384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705124, 34.598213, 31.164408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.307316, 34.581535, 31.126080>,  <42.068630, 34.571529, 31.103083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.307316, 34.581535, 31.126080>,  <42.705124, 34.598213, 31.164408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307316, 34.581535, 31.126080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104493, 0.386751, 0.916245,
		-0.001147, 0.921241, -0.388990,
		-0.994525, -0.041697, -0.095820,
		42.008957, 34.569027, 31.097334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445026, 35.273296, 31.318775>,  <42.705124, 34.598213, 31.164408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445026, 35.273296, 31.318775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.145966, 35.009262, 31.347921>,  <41.966530, 34.850842, 31.365408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.145966, 35.009262, 31.347921>,  <42.445026, 35.273296, 31.318775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145966, 35.009262, 31.347921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139513, 0.263390, 0.954548,
		-0.649273, 0.703502, -0.289014,
		-0.747650, -0.660083, 0.072865,
		41.921669, 34.811237, 31.369781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934189, 35.639069, 31.751953>,  <42.445026, 35.273296, 31.318775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934189, 35.639069, 31.751953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.895893, 35.241657, 31.776430>,  <41.872917, 35.003212, 31.791117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.895893, 35.241657, 31.776430>,  <41.934189, 35.639069, 31.751953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895893, 35.241657, 31.776430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186461, 0.042487, 0.981543,
		-0.977786, 0.105384, 0.181186,
		-0.095741, -0.993523, 0.061193,
		41.867172, 34.943600, 31.794788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535137, 35.571915, 32.349243>,  <41.934189, 35.639069, 31.751953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535137, 35.571915, 32.349243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.677708, 35.204483, 32.280930>,  <41.763248, 34.984024, 32.239941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.677708, 35.204483, 32.280930>,  <41.535137, 35.571915, 32.349243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677708, 35.204483, 32.280930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033708, -0.170031, 0.984862,
		-0.933717, -0.356784, -0.029640,
		0.356423, -0.918583, -0.170788,
		41.784634, 34.928909, 32.229694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067909, 35.055996, 32.686378>,  <41.535137, 35.571915, 32.349243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067909, 35.055996, 32.686378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.410969, 34.853287, 32.651470>,  <41.616806, 34.731663, 32.630527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.410969, 34.853287, 32.651470>,  <41.067909, 35.055996, 32.686378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410969, 34.853287, 32.651470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019996, -0.202443, 0.979090,
		-0.513844, -0.837972, -0.183759,
		0.857651, -0.506774, -0.087268,
		41.668262, 34.701256, 32.625290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970154, 34.520050, 33.172138>,  <41.067909, 35.055996, 32.686378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970154, 34.520050, 33.172138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.361908, 34.558445, 33.101036>,  <41.596958, 34.581482, 33.058376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.361908, 34.558445, 33.101036>,  <40.970154, 34.520050, 33.172138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361908, 34.558445, 33.101036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194685, -0.213605, 0.957325,
		0.053923, -0.972193, -0.227888,
		0.979383, 0.095988, -0.177753,
		41.655724, 34.587242, 33.047710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323944, 33.976429, 33.431717>,  <40.970154, 34.520050, 33.172138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323944, 33.976429, 33.431717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.610020, 34.254478, 33.402550>,  <41.781666, 34.421307, 33.385052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.610020, 34.254478, 33.402550>,  <41.323944, 33.976429, 33.431717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610020, 34.254478, 33.402550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171973, -0.073898, 0.982326,
		0.677446, -0.715086, -0.172393,
		0.715187, 0.695120, -0.072914,
		41.824577, 34.463013, 33.380676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909569, 33.733246, 33.815231>,  <41.323944, 33.976429, 33.431717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909569, 33.733246, 33.815231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.939774, 34.130077, 33.775070>,  <41.957897, 34.368176, 33.750973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.939774, 34.130077, 33.775070>,  <41.909569, 33.733246, 33.815231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939774, 34.130077, 33.775070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174650, 0.085970, 0.980870,
		0.981731, -0.091603, -0.166774,
		0.075513, 0.992078, -0.100398,
		41.962429, 34.427700, 33.744949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465595, 33.954601, 34.193264>,  <41.909569, 33.733246, 33.815231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465595, 33.954601, 34.193264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.259777, 34.295620, 34.156574>,  <42.136288, 34.500229, 34.134560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.259777, 34.295620, 34.156574>,  <42.465595, 33.954601, 34.193264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259777, 34.295620, 34.156574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109368, 0.171349, 0.979121,
		0.850459, 0.493772, -0.181408,
		-0.514547, 0.852543, -0.091723,
		42.105412, 34.551384, 34.129059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.047035, 37.935440, 29.041142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.691788, 37.756638, 28.998373>,  <42.478638, 37.649357, 28.972712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.691788, 37.756638, 28.998373>,  <43.047035, 37.935440, 29.041142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691788, 37.756638, 28.998373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148853, -0.059641, -0.987059,
		0.434841, -0.892542, 0.119507,
		-0.888119, -0.447003, -0.106923,
		42.425350, 37.622536, 28.966295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231003, 37.339649, 28.759813>,  <43.047035, 37.935440, 29.041142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231003, 37.339649, 28.759813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.839355, 37.382355, 28.690620>,  <42.604366, 37.407978, 28.649105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.839355, 37.382355, 28.690620>,  <43.231003, 37.339649, 28.759813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839355, 37.382355, 28.690620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132576, -0.309700, -0.941546,
		-0.154094, -0.944822, 0.289080,
		-0.979121, 0.106761, -0.172984,
		42.545620, 37.414383, 28.638725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877678, 36.646255, 28.601961>,  <43.231003, 37.339649, 28.759813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877678, 36.646255, 28.601961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.685120, 36.965481, 28.456991>,  <42.569584, 37.157017, 28.370008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.685120, 36.965481, 28.456991>,  <42.877678, 36.646255, 28.601961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685120, 36.965481, 28.456991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044697, -0.390603, -0.919473,
		-0.875360, -0.458834, 0.152365,
		-0.481400, 0.798060, -0.362427,
		42.540699, 37.204899, 28.348263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461826, 36.327545, 28.031464>,  <42.877678, 36.646255, 28.601961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461826, 36.327545, 28.031464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.473167, 36.723911, 27.978880>,  <42.479973, 36.961731, 27.947329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.473167, 36.723911, 27.978880>,  <42.461826, 36.327545, 28.031464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473167, 36.723911, 27.978880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073494, -0.129092, -0.988905,
		-0.996893, 0.037702, 0.069166,
		0.028355, 0.990916, -0.131461,
		42.481674, 37.021187, 27.939442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184479, 36.428173, 27.323786>,  <42.461826, 36.327545, 28.031464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184479, 36.428173, 27.323786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.367363, 36.780205, 27.375048>,  <42.477093, 36.991425, 27.405806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.367363, 36.780205, 27.375048>,  <42.184479, 36.428173, 27.323786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367363, 36.780205, 27.375048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148629, 0.066461, -0.986657,
		-0.876853, 0.470154, -0.100418,
		0.457207, 0.880078, 0.128155,
		42.504524, 37.044228, 27.413494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943100, 36.860546, 26.779686>,  <42.184479, 36.428173, 27.323786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943100, 36.860546, 26.779686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.262440, 37.060867, 26.913454>,  <42.454044, 37.181061, 26.993715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.262440, 37.060867, 26.913454>,  <41.943100, 36.860546, 26.779686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262440, 37.060867, 26.913454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159243, 0.359999, -0.919262,
		-0.580757, 0.787147, 0.207656,
		0.798350, 0.500800, 0.334420,
		42.501945, 37.211109, 27.013781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826164, 37.484550, 26.529037>,  <41.943100, 36.860546, 26.779686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826164, 37.484550, 26.529037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.219265, 37.449432, 26.594152>,  <42.455124, 37.428360, 26.633221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.219265, 37.449432, 26.594152>,  <41.826164, 37.484550, 26.529037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219265, 37.449432, 26.594152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176991, 0.190943, -0.965513,
		0.053687, 0.977667, 0.203189,
		0.982747, -0.087798, 0.162787,
		42.514088, 37.423092, 26.642988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207996, 38.055706, 26.337479>,  <41.826164, 37.484550, 26.529037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207996, 38.055706, 26.337479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518394, 37.803600, 26.327614>,  <42.704632, 37.652336, 26.321695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.518394, 37.803600, 26.327614>,  <42.207996, 38.055706, 26.337479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518394, 37.803600, 26.327614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146517, 0.218150, -0.964854,
		0.613490, 0.745105, 0.261627,
		0.775991, -0.630261, -0.024663,
		42.751190, 37.614521, 26.320215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745636, 38.453854, 26.032175>,  <42.207996, 38.055706, 26.337479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745636, 38.453854, 26.032175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.859024, 38.074959, 25.972336>,  <42.927059, 37.847622, 25.936432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.859024, 38.074959, 25.972336>,  <42.745636, 38.453854, 26.032175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859024, 38.074959, 25.972336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166297, 0.202190, -0.965124,
		0.944451, 0.248710, 0.214839,
		0.283475, -0.947239, -0.149599,
		42.944065, 37.790787, 25.927456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173477, 38.460999, 25.457029>,  <42.745636, 38.453854, 26.032175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173477, 38.460999, 25.457029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.146893, 38.061886, 25.458212>,  <43.130939, 37.822418, 25.458921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.146893, 38.061886, 25.458212>,  <43.173477, 38.460999, 25.457029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146893, 38.061886, 25.458212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120923, -0.010997, -0.992601,
		0.990434, -0.065617, 0.121386,
		-0.066466, -0.997784, 0.002957,
		43.126953, 37.762550, 25.459099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788017, 38.192543, 25.091309>,  <43.173477, 38.460999, 25.457029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788017, 38.192543, 25.091309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.485199, 37.931744, 25.074415>,  <43.303509, 37.775265, 25.064280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.485199, 37.931744, 25.074415>,  <43.788017, 38.192543, 25.091309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485199, 37.931744, 25.074415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148570, -0.108843, -0.982894,
		0.636248, -0.750368, 0.179266,
		-0.757044, -0.651997, -0.042231,
		43.258087, 37.736145, 25.061747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974186, 37.752716, 24.491394>,  <43.788017, 38.192543, 25.091309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974186, 37.752716, 24.491394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.580917, 37.692093, 24.532181>,  <43.344955, 37.655720, 24.556652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.580917, 37.692093, 24.532181>,  <43.974186, 37.752716, 24.491394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580917, 37.692093, 24.532181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110425, 0.048473, -0.992702,
		0.145508, -0.987259, -0.064393,
		-0.983175, -0.151557, 0.101965,
		43.285965, 37.646626, 24.562771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778255, 37.267544, 24.015724>,  <43.974186, 37.752716, 24.491394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778255, 37.267544, 24.015724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.434700, 37.454941, 24.098507>,  <43.228565, 37.567379, 24.148176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.434700, 37.454941, 24.098507>,  <43.778255, 37.267544, 24.015724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434700, 37.454941, 24.098507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204687, 0.056425, -0.977200,
		-0.469486, -0.881665, 0.047431,
		-0.858887, 0.468490, 0.206956,
		43.177032, 37.595486, 24.160593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123177, 36.826405, 23.783455>,  <43.778255, 37.267544, 24.015724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123177, 36.826405, 23.783455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.106937, 37.225746, 23.767298>,  <43.097195, 37.465351, 23.757603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.106937, 37.225746, 23.767298>,  <43.123177, 36.826405, 23.783455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106937, 37.225746, 23.767298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305554, -0.050895, -0.950814,
		-0.951309, -0.026260, 0.307119,
		-0.040599, 0.998359, -0.040393,
		43.094757, 37.525253, 23.755180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830154, 36.164753, 23.678024>,  <43.123177, 36.826405, 23.783455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830154, 36.164753, 23.678024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.806210, 35.773109, 23.600300>,  <42.791843, 35.538124, 23.553665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.806210, 35.773109, 23.600300>,  <42.830154, 36.164753, 23.678024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806210, 35.773109, 23.600300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054332, -0.197569, 0.978782,
		-0.996727, 0.048038, 0.065024,
		-0.059866, -0.979111, -0.194313,
		42.788250, 35.479378, 23.542006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251507, 35.904041, 24.061836>,  <42.830154, 36.164753, 23.678024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251507, 35.904041, 24.061836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.505611, 35.605656, 23.981844>,  <42.658073, 35.426624, 23.933849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.505611, 35.605656, 23.981844>,  <42.251507, 35.904041, 24.061836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505611, 35.605656, 23.981844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092319, -0.330430, 0.939305,
		-0.766762, -0.578239, -0.278775,
		0.635258, -0.745960, -0.199979,
		42.696190, 35.381866, 23.921850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855843, 35.409641, 24.303875>,  <42.251507, 35.904041, 24.061836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855843, 35.409641, 24.303875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.223675, 35.256897, 24.266878>,  <42.444374, 35.165249, 24.244680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.223675, 35.256897, 24.266878>,  <41.855843, 35.409641, 24.303875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223675, 35.256897, 24.266878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103659, -0.462864, 0.880348,
		-0.378980, -0.799963, -0.465224,
		0.919581, -0.381859, -0.092493,
		42.499550, 35.142338, 24.239130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780464, 34.773060, 24.466064>,  <41.855843, 35.409641, 24.303875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780464, 34.773060, 24.466064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.175236, 34.781124, 24.530008>,  <42.412098, 34.785961, 24.568375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.175236, 34.781124, 24.530008>,  <41.780464, 34.773060, 24.466064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175236, 34.781124, 24.530008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148695, -0.268226, 0.951811,
		0.062066, -0.963145, -0.261724,
		0.986933, 0.020158, 0.159862,
		42.471317, 34.787170, 24.577967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958076, 34.071354, 24.787603>,  <41.780464, 34.773060, 24.466064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958076, 34.071354, 24.787603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.244019, 34.333076, 24.886292>,  <42.415585, 34.490108, 24.945503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.244019, 34.333076, 24.886292>,  <41.958076, 34.071354, 24.787603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244019, 34.333076, 24.886292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039540, -0.390076, 0.919933,
		0.698159, -0.647859, -0.304718,
		0.714850, 0.654308, 0.246719,
		42.458473, 34.529369, 24.960308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312546, 33.637844, 25.257900>,  <41.958076, 34.071354, 24.787603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312546, 33.637844, 25.257900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.441383, 34.007324, 25.340868>,  <42.518688, 34.229012, 25.390650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.441383, 34.007324, 25.340868>,  <42.312546, 33.637844, 25.257900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441383, 34.007324, 25.340868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036760, -0.231135, 0.972227,
		0.945993, -0.305525, -0.108403,
		0.322096, 0.923705, 0.207421,
		42.538013, 34.284435, 25.403095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843945, 33.559135, 25.771008>,  <42.312546, 33.637844, 25.257900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843945, 33.559135, 25.771008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.720116, 33.937481, 25.809988>,  <42.645817, 34.164490, 25.833376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.720116, 33.937481, 25.809988>,  <42.843945, 33.559135, 25.771008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720116, 33.937481, 25.809988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087179, -0.073819, 0.993454,
		0.946870, 0.316044, -0.059607,
		-0.309575, 0.945868, 0.097449,
		42.627243, 34.221241, 25.839222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269283, 33.959919, 26.323452>,  <42.843945, 33.559135, 25.771008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269283, 33.959919, 26.323452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.941383, 34.186302, 26.288340>,  <42.744644, 34.322132, 26.267271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.941383, 34.186302, 26.288340>,  <43.269283, 33.959919, 26.323452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941383, 34.186302, 26.288340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108758, -0.003345, 0.994063,
		0.562300, 0.824430, 0.064294,
		-0.819750, 0.565954, -0.087782,
		42.695457, 34.356087, 26.262005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359455, 34.457314, 26.865522>,  <43.269283, 33.959919, 26.323452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359455, 34.457314, 26.865522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.970455, 34.463219, 26.772547>,  <42.737057, 34.466763, 26.716761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.970455, 34.463219, 26.772547>,  <43.359455, 34.457314, 26.865522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.970455, 34.463219, 26.772547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232222, -0.137952, 0.962830,
		-0.017852, 0.990329, 0.137586,
		-0.972499, 0.014762, -0.232439,
		42.678707, 34.467648, 26.702816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050037, 35.022087, 27.183645>,  <43.359455, 34.457314, 26.865522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050037, 35.022087, 27.183645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.748486, 34.766335, 27.123167>,  <42.567554, 34.612881, 27.086880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.748486, 34.766335, 27.123167>,  <43.050037, 35.022087, 27.183645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748486, 34.766335, 27.123167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212004, 0.018915, 0.977086,
		-0.621872, 0.768656, -0.149812,
		-0.753876, -0.639383, -0.151195,
		42.522324, 34.574520, 27.077808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470287, 35.276253, 27.546705>,  <43.050037, 35.022087, 27.183645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470287, 35.276253, 27.546705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.357124, 34.899117, 27.476267>,  <42.289227, 34.672832, 27.434004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.357124, 34.899117, 27.476267>,  <42.470287, 35.276253, 27.546705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357124, 34.899117, 27.476267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235369, -0.109737, 0.965691,
		-0.929820, 0.314647, -0.190871,
		-0.282906, -0.942844, -0.176094,
		42.272251, 34.616264, 27.423439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716789, 35.298161, 27.548542>,  <42.470287, 35.276253, 27.546705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716789, 35.298161, 27.548542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.863590, 34.934010, 27.624979>,  <41.951672, 34.715519, 27.670841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.863590, 34.934010, 27.624979>,  <41.716789, 35.298161, 27.548542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863590, 34.934010, 27.624979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523166, -0.032145, 0.851624,
		-0.769159, -0.412522, -0.488077,
		0.367004, -0.910380, 0.191093,
		41.973690, 34.660896, 27.682306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171494, 34.876575, 27.800804>,  <41.716789, 35.298161, 27.548542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171494, 34.876575, 27.800804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.500000, 34.683010, 27.921703>,  <41.697102, 34.566872, 27.994244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.500000, 34.683010, 27.921703>,  <41.171494, 34.876575, 27.800804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500000, 34.683010, 27.921703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413312, -0.139398, 0.899856,
		-0.393322, -0.863940, -0.314491,
		0.821262, -0.483917, 0.302249,
		41.746380, 34.537834, 28.012379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831280, 34.261707, 28.195004>,  <41.171494, 34.876575, 27.800804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831280, 34.261707, 28.195004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.202553, 34.337070, 28.323366>,  <41.425316, 34.382286, 28.400383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.202553, 34.337070, 28.323366>,  <40.831280, 34.261707, 28.195004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202553, 34.337070, 28.323366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319738, -0.037413, 0.946767,
		0.190384, -0.981378, 0.025515,
		0.928182, 0.188407, 0.320907,
		41.481007, 34.393593, 28.419638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225216, 33.772644, 28.171942>,  <40.831280, 34.261707, 28.195004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225216, 33.772644, 28.171942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.837696, 33.675034, 28.189276>,  <39.605183, 33.616467, 28.199677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.837696, 33.675034, 28.189276>,  <40.225216, 33.772644, 28.171942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837696, 33.675034, 28.189276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098106, 0.217009, -0.971227,
		0.227631, -0.945168, -0.234180,
		-0.968793, -0.244056, 0.043329,
		39.547058, 33.601826, 28.202276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054283, 33.178062, 27.674692>,  <40.225216, 33.772644, 28.171942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054283, 33.178062, 27.674692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717049, 33.386349, 27.728458>,  <39.514709, 33.511318, 27.760717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.717049, 33.386349, 27.728458>,  <40.054283, 33.178062, 27.674692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717049, 33.386349, 27.728458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023019, 0.214769, -0.976393,
		-0.537289, -0.826276, -0.169082,
		-0.843084, 0.520714, 0.134413,
		39.464123, 33.542564, 27.768782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681877, 32.967007, 27.101429>,  <40.054283, 33.178062, 27.674692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681877, 32.967007, 27.101429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.480793, 33.294140, 27.213453>,  <39.360142, 33.490417, 27.280668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.480793, 33.294140, 27.213453>,  <39.681877, 32.967007, 27.101429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480793, 33.294140, 27.213453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015832, 0.315207, -0.948891,
		-0.864308, -0.481454, -0.145511,
		-0.502713, 0.817830, 0.280059,
		39.329979, 33.539490, 27.297470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246822, 33.047787, 26.607002>,  <39.681877, 32.967007, 27.101429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246822, 33.047787, 26.607002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266602, 33.413235, 26.768421>,  <39.278469, 33.632504, 26.865273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.266602, 33.413235, 26.768421>,  <39.246822, 33.047787, 26.607002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266602, 33.413235, 26.768421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033964, 0.402269, -0.914891,
		-0.998199, 0.058943, -0.011140,
		0.049445, 0.913622, 0.403546,
		39.281433, 33.687321, 26.889484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723015, 33.517540, 26.246380>,  <39.246822, 33.047787, 26.607002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723015, 33.517540, 26.246380> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983147, 33.767120, 26.419704>,  <39.139225, 33.916870, 26.523699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983147, 33.767120, 26.419704>,  <38.723015, 33.517540, 26.246380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983147, 33.767120, 26.419704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103525, 0.637878, -0.763148,
		-0.752568, 0.451436, 0.479423,
		0.650326, 0.623953, 0.433311,
		39.178246, 33.954308, 26.549698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435196, 34.158432, 26.058693>,  <38.723015, 33.517540, 26.246380>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435196, 34.158432, 26.058693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815422, 34.244568, 26.148193>,  <39.043556, 34.296249, 26.201893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815422, 34.244568, 26.148193>,  <38.435196, 34.158432, 26.058693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815422, 34.244568, 26.148193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026895, 0.660722, -0.750149,
		-0.309372, 0.719079, 0.622265,
		0.950561, 0.215339, 0.223749,
		39.100590, 34.309170, 26.215319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503914, 34.906807, 25.904623>,  <38.435196, 34.158432, 26.058693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503914, 34.906807, 25.904623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871037, 34.749870, 25.928967>,  <39.091309, 34.655708, 25.943573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.871037, 34.749870, 25.928967>,  <38.503914, 34.906807, 25.904623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871037, 34.749870, 25.928967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313922, 0.623264, -0.716236,
		0.243074, 0.676471, 0.695199,
		0.917806, -0.392337, 0.060860,
		39.146378, 34.632168, 25.947224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389366, 35.491905, 26.171124>,  <38.503914, 34.906807, 25.904623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389366, 35.491905, 26.171124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.118256, 35.785366, 26.151630>,  <37.955589, 35.961441, 26.139935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.118256, 35.785366, 26.151630>,  <38.389366, 35.491905, 26.171124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118256, 35.785366, 26.151630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294214, -0.209873, 0.932412,
		0.673834, 0.646308, 0.358097,
		-0.677780, 0.733648, -0.048733,
		37.914921, 36.005459, 26.137011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480507, 35.885876, 26.731005>,  <38.389366, 35.491905, 26.171124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480507, 35.885876, 26.731005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096790, 35.915916, 26.622107>,  <37.866562, 35.933941, 26.556768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096790, 35.915916, 26.622107>,  <38.480507, 35.885876, 26.731005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096790, 35.915916, 26.622107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279923, -0.125097, 0.951837,
		0.037427, 0.989298, 0.141027,
		-0.959292, 0.075101, -0.272246,
		37.809002, 35.938446, 26.540432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333244, 36.441509, 27.209387>,  <38.480507, 35.885876, 26.731005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333244, 36.441509, 27.209387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.002022, 36.271694, 27.062914>,  <37.803288, 36.169807, 26.975029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.002022, 36.271694, 27.062914>,  <38.333244, 36.441509, 27.209387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002022, 36.271694, 27.062914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385975, -0.042037, 0.921551,
		-0.406623, 0.904436, -0.129050,
		-0.828059, -0.424534, -0.366183,
		37.753605, 36.144333, 26.953058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714622, 36.779171, 27.486082>,  <38.333244, 36.441509, 27.209387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714622, 36.779171, 27.486082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.609550, 36.415302, 27.357397>,  <37.546509, 36.196980, 27.280186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.609550, 36.415302, 27.357397>,  <37.714622, 36.779171, 27.486082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609550, 36.415302, 27.357397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320680, -0.232164, 0.918294,
		-0.910036, 0.344381, -0.230730,
		-0.262676, -0.909671, -0.321713,
		37.530746, 36.142403, 27.260883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086037, 36.644531, 27.905928>,  <37.714622, 36.779171, 27.486082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086037, 36.644531, 27.905928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185257, 36.279644, 27.775499>,  <37.244789, 36.060711, 27.697243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185257, 36.279644, 27.775499>,  <37.086037, 36.644531, 27.905928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185257, 36.279644, 27.775499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316964, -0.394489, 0.862503,
		-0.915425, -0.110595, -0.386996,
		0.248054, -0.912221, -0.326071,
		37.259674, 36.005978, 27.677679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507866, 36.227146, 28.000080>,  <37.086037, 36.644531, 27.905928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507866, 36.227146, 28.000080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810024, 35.967308, 27.965670>,  <36.991318, 35.811405, 27.945024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.810024, 35.967308, 27.965670>,  <36.507866, 36.227146, 28.000080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810024, 35.967308, 27.965670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199623, -0.353175, 0.914012,
		-0.624121, -0.673269, -0.396462,
		0.755396, -0.649597, -0.086024,
		37.036644, 35.772430, 27.939863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180092, 35.537987, 28.019228>,  <36.507866, 36.227146, 28.000080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180092, 35.537987, 28.019228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565247, 35.520496, 28.125769>,  <36.796337, 35.510002, 28.189693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565247, 35.520496, 28.125769>,  <36.180092, 35.537987, 28.019228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565247, 35.520496, 28.125769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259512, -0.421342, 0.868979,
		0.074228, -0.905847, -0.417050,
		0.962883, -0.043727, 0.266353,
		36.854111, 35.507378, 28.205675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.605961, 38.871296, 25.052893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419731, 38.813770, 24.703594>,  <39.307995, 38.779255, 24.494015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.419731, 38.813770, 24.703594>,  <39.605961, 38.871296, 25.052893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419731, 38.813770, 24.703594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665126, 0.707772, 0.238048,
		0.583826, 0.691648, -0.425171,
		-0.465570, -0.143814, -0.873249,
		39.280060, 38.770626, 24.441620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155834, 39.103355, 25.526161>,  <39.605961, 38.871296, 25.052893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155834, 39.103355, 25.526161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.518494, 38.965557, 25.428738>,  <40.736088, 38.882877, 25.370283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.518494, 38.965557, 25.428738>,  <40.155834, 39.103355, 25.526161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518494, 38.965557, 25.428738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214280, -0.121288, 0.969213,
		-0.363428, -0.930921, -0.036148,
		0.906645, -0.344493, -0.243557,
		40.790485, 38.862209, 25.355671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338375, 38.462826, 25.922537>,  <40.155834, 39.103355, 25.526161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338375, 38.462826, 25.922537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681732, 38.633282, 25.808294>,  <40.887745, 38.735554, 25.739748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681732, 38.633282, 25.808294>,  <40.338375, 38.462826, 25.922537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681732, 38.633282, 25.808294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354779, -0.090997, 0.930512,
		0.370539, -0.900069, -0.229296,
		0.858390, 0.426140, -0.285608,
		40.939251, 38.761124, 25.722612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888458, 38.040306, 26.168550>,  <40.338375, 38.462826, 25.922537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888458, 38.040306, 26.168550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.048317, 38.402451, 26.111139>,  <41.144230, 38.619740, 26.076693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.048317, 38.402451, 26.111139>,  <40.888458, 38.040306, 26.168550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048317, 38.402451, 26.111139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270891, 0.032938, 0.962046,
		0.875729, -0.423358, -0.232091,
		0.399645, 0.905364, -0.143529,
		41.168209, 38.674061, 26.068081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397675, 38.045727, 26.660492>,  <40.888458, 38.040306, 26.168550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397675, 38.045727, 26.660492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.347252, 38.434952, 26.583284>,  <41.316998, 38.668488, 26.536961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.347252, 38.434952, 26.583284>,  <41.397675, 38.045727, 26.660492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347252, 38.434952, 26.583284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201240, 0.215608, 0.955518,
		0.971397, 0.081605, -0.222998,
		-0.126055, 0.973064, -0.193019,
		41.309437, 38.726871, 26.525379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923519, 38.391968, 27.052221>,  <41.397675, 38.045727, 26.660492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923519, 38.391968, 27.052221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638618, 38.652569, 26.947729>,  <41.467678, 38.808929, 26.885035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.638618, 38.652569, 26.947729>,  <41.923519, 38.391968, 27.052221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638618, 38.652569, 26.947729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082723, 0.447479, 0.890460,
		0.697031, 0.612624, -0.372613,
		-0.712254, 0.651502, -0.261228,
		41.424942, 38.848019, 26.869360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206535, 39.100060, 27.251617>,  <41.923519, 38.391968, 27.052221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206535, 39.100060, 27.251617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.808838, 39.142525, 27.245968>,  <41.570217, 39.168003, 27.242579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.808838, 39.142525, 27.245968>,  <42.206535, 39.100060, 27.251617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808838, 39.142525, 27.245968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031529, 0.416160, 0.908745,
		0.102353, 0.903073, -0.417113,
		-0.994248, 0.106163, -0.014122,
		41.510563, 39.174374, 27.241732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089527, 39.782169, 27.591867>,  <42.206535, 39.100060, 27.251617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089527, 39.782169, 27.591867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.741005, 39.588287, 27.622541>,  <41.531891, 39.471958, 27.640945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.741005, 39.588287, 27.622541>,  <42.089527, 39.782169, 27.591867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741005, 39.588287, 27.622541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121052, 0.363726, 0.923607,
		-0.475570, 0.795464, -0.375593,
		-0.871309, -0.484706, 0.076685,
		41.479610, 39.442875, 27.645546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546577, 40.280323, 27.824604>,  <42.089527, 39.782169, 27.591867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546577, 40.280323, 27.824604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.365780, 39.936119, 27.918608>,  <41.257301, 39.729599, 27.975010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.365780, 39.936119, 27.918608>,  <41.546577, 40.280323, 27.824604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365780, 39.936119, 27.918608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338172, 0.409091, 0.847517,
		-0.825435, 0.303597, -0.475906,
		-0.451992, -0.860508, 0.235010,
		41.230183, 39.677967, 27.989111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808056, 40.436371, 28.081911>,  <41.546577, 40.280323, 27.824604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808056, 40.436371, 28.081911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.894119, 40.072071, 28.222898>,  <40.945759, 39.853489, 28.307491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.894119, 40.072071, 28.222898>,  <40.808056, 40.436371, 28.081911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894119, 40.072071, 28.222898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408182, 0.244016, 0.879684,
		-0.887184, -0.333143, -0.319251,
		0.215158, -0.910754, 0.352470,
		40.958668, 39.798843, 28.328640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214016, 40.290562, 28.431515>,  <40.808056, 40.436371, 28.081911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214016, 40.290562, 28.431515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.500629, 40.054783, 28.580721>,  <40.672596, 39.913315, 28.670244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.500629, 40.054783, 28.580721>,  <40.214016, 40.290562, 28.431515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500629, 40.054783, 28.580721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302362, 0.219447, 0.927588,
		-0.628617, -0.777431, -0.020984,
		0.716531, -0.589443, 0.373014,
		40.715588, 39.877949, 28.692625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978970, 39.860958, 29.031713>,  <40.214016, 40.290562, 28.431515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978970, 39.860958, 29.031713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.374718, 39.868778, 29.089359>,  <40.612167, 39.873470, 29.123947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.374718, 39.868778, 29.089359>,  <39.978970, 39.860958, 29.031713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374718, 39.868778, 29.089359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145047, 0.204926, 0.967970,
		-0.010611, -0.978582, 0.205582,
		0.989368, 0.019548, 0.144115,
		40.671528, 39.874641, 29.132593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484642, 39.421551, 28.835146>,  <39.978970, 39.860958, 29.031713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484642, 39.421551, 28.835146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.090202, 39.389530, 28.776911>,  <38.853539, 39.370319, 28.741970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.090202, 39.389530, 28.776911>,  <39.484642, 39.421551, 28.835146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090202, 39.389530, 28.776911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097913, 0.427939, -0.898488,
		0.134228, -0.900256, -0.414153,
		-0.986101, -0.080051, -0.145588,
		38.794373, 39.365513, 28.733234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416115, 39.148575, 28.173132>,  <39.484642, 39.421551, 28.835146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416115, 39.148575, 28.173132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.067345, 39.331291, 28.243668>,  <38.858082, 39.440922, 28.285990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.067345, 39.331291, 28.243668>,  <39.416115, 39.148575, 28.173132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067345, 39.331291, 28.243668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068589, 0.242648, -0.967687,
		-0.484816, -0.855843, -0.180240,
		-0.871922, 0.456787, 0.176341,
		38.805767, 39.468327, 28.296570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926403, 38.731991, 27.693163>,  <39.416115, 39.148575, 28.173132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926403, 38.731991, 27.693163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.802261, 39.104839, 27.767813>,  <38.727776, 39.328548, 27.812603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.802261, 39.104839, 27.767813>,  <38.926403, 38.731991, 27.693163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802261, 39.104839, 27.767813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113877, 0.158452, -0.980778,
		-0.943777, -0.325638, 0.056972,
		-0.310351, 0.932123, 0.186626,
		38.709156, 39.384476, 27.823801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303722, 38.916840, 27.381746>,  <38.926403, 38.731991, 27.693163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303722, 38.916840, 27.381746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.395901, 39.301373, 27.442064>,  <38.451210, 39.532093, 27.478254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.395901, 39.301373, 27.442064>,  <38.303722, 38.916840, 27.381746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395901, 39.301373, 27.442064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176535, 0.193694, -0.965048,
		-0.956937, 0.195773, 0.214344,
		0.230448, 0.961330, 0.150793,
		38.465034, 39.589771, 27.487303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780136, 39.311981, 27.116941>,  <38.303722, 38.916840, 27.381746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780136, 39.311981, 27.116941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090523, 39.563900, 27.130978>,  <38.276756, 39.715050, 27.139399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090523, 39.563900, 27.130978>,  <37.780136, 39.311981, 27.116941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090523, 39.563900, 27.130978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118604, 0.200320, -0.972525,
		-0.619520, 0.750488, 0.230138,
		0.775969, 0.629794, 0.035091,
		38.323315, 39.752838, 27.141504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682621, 39.861210, 26.617832>,  <37.780136, 39.311981, 27.116941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682621, 39.861210, 26.617832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077507, 39.871861, 26.680693>,  <38.314438, 39.878250, 26.718409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.077507, 39.871861, 26.680693>,  <37.682621, 39.861210, 26.617832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077507, 39.871861, 26.680693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154040, 0.093924, -0.983590,
		-0.040954, 0.995223, 0.088621,
		0.987216, 0.026631, 0.157150,
		38.373672, 39.879848, 26.727839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803154, 40.343239, 26.169704>,  <37.682621, 39.861210, 26.617832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803154, 40.343239, 26.169704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.156773, 40.172039, 26.244846>,  <38.368942, 40.069321, 26.289932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.156773, 40.172039, 26.244846>,  <37.803154, 40.343239, 26.169704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156773, 40.172039, 26.244846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215991, 0.017646, -0.976236,
		0.414509, 0.903609, 0.108043,
		0.884042, -0.427995, 0.187857,
		38.421986, 40.043640, 26.301203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286182, 40.695843, 25.790327>,  <37.803154, 40.343239, 26.169704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286182, 40.695843, 25.790327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.468086, 40.348389, 25.868973>,  <38.577229, 40.139915, 25.916161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.468086, 40.348389, 25.868973>,  <38.286182, 40.695843, 25.790327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468086, 40.348389, 25.868973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268887, -0.076552, -0.960125,
		0.849053, 0.489495, 0.198754,
		0.454762, -0.868639, 0.196615,
		38.604515, 40.087795, 25.927958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640633, 40.709991, 25.222603>,  <38.286182, 40.695843, 25.790327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640633, 40.709991, 25.222603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699921, 40.339470, 25.361162>,  <38.735493, 40.117157, 25.444298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699921, 40.339470, 25.361162>,  <38.640633, 40.709991, 25.222603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699921, 40.339470, 25.361162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519221, -0.225221, -0.824430,
		0.841689, 0.302057, 0.447573,
		0.148222, -0.926303, 0.346400,
		38.744389, 40.061581, 25.465082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357651, 40.551453, 25.252272>,  <38.640633, 40.709991, 25.222603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357651, 40.551453, 25.252272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.144444, 40.218262, 25.192892>,  <39.016518, 40.018345, 25.157265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.144444, 40.218262, 25.192892>,  <39.357651, 40.551453, 25.252272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144444, 40.218262, 25.192892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581520, -0.233213, -0.779388,
		0.614595, -0.501752, 0.608701,
		-0.533017, -0.832980, -0.148447,
		38.984539, 39.968369, 25.148357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851280, 40.040638, 24.913910>,  <39.357651, 40.551453, 25.252272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851280, 40.040638, 24.913910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.480431, 39.916481, 24.829906>,  <39.257923, 39.841988, 24.779505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.480431, 39.916481, 24.829906>,  <39.851280, 40.040638, 24.913910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480431, 39.916481, 24.829906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295618, -0.261293, -0.918877,
		0.230340, -0.913992, 0.334008,
		-0.927121, -0.310393, -0.210006,
		39.202293, 39.823364, 24.766905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097496, 39.506584, 24.593164>,  <39.851280, 40.040638, 24.913910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097496, 39.506584, 24.593164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.720444, 39.549721, 24.466785>,  <39.494213, 39.575603, 24.390957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.720444, 39.549721, 24.466785>,  <40.097496, 39.506584, 24.593164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720444, 39.549721, 24.466785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273347, -0.294013, -0.915881,
		-0.191662, -0.949698, 0.247667,
		-0.942628, 0.107840, -0.315948,
		39.437656, 39.582073, 24.372002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839836, 38.878456, 24.195673>,  <40.097496, 39.506584, 24.593164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839836, 38.878456, 24.195673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.632481, 39.188061, 24.050245>,  <39.508068, 39.373825, 23.962988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.632481, 39.188061, 24.050245>,  <39.839836, 38.878456, 24.195673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632481, 39.188061, 24.050245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211047, -0.296206, -0.931516,
		-0.828696, -0.559613, -0.009805,
		-0.518384, 0.774013, -0.363569,
		39.476967, 39.420265, 23.941174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427452, 38.215649, 24.170395>,  <39.839836, 38.878456, 24.195673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427452, 38.215649, 24.170395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125111, 38.092777, 23.939112>,  <38.943707, 38.019054, 23.800343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.125111, 38.092777, 23.939112>,  <39.427452, 38.215649, 24.170395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125111, 38.092777, 23.939112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434332, -0.425584, 0.793873,
		-0.489939, 0.851186, 0.188261,
		-0.755854, -0.307181, -0.578208,
		38.898354, 38.000622, 23.765650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779167, 38.297188, 24.486380>,  <39.427452, 38.215649, 24.170395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779167, 38.297188, 24.486380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667385, 38.026649, 24.213776>,  <38.600315, 37.864326, 24.050213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667385, 38.026649, 24.213776>,  <38.779167, 38.297188, 24.486380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667385, 38.026649, 24.213776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402059, -0.562133, 0.722742,
		-0.871925, 0.475982, -0.114840,
		-0.279457, -0.676349, -0.681510,
		38.583549, 37.823746, 24.009323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987198, 38.076782, 24.426588>,  <38.779167, 38.297188, 24.486380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987198, 38.076782, 24.426588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.200695, 37.756691, 24.317221>,  <38.328793, 37.564636, 24.251600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.200695, 37.756691, 24.317221>,  <37.987198, 38.076782, 24.426588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200695, 37.756691, 24.317221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563008, -0.577511, 0.591188,
		-0.630989, -0.161600, -0.758774,
		0.533737, -0.800229, -0.273421,
		38.360817, 37.516621, 24.235195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428928, 37.568634, 24.262297>,  <37.987198, 38.076782, 24.426588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428928, 37.568634, 24.262297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777016, 37.375015, 24.298990>,  <37.985870, 37.258842, 24.321007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.777016, 37.375015, 24.298990>,  <37.428928, 37.568634, 24.262297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777016, 37.375015, 24.298990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436062, -0.670124, 0.600653,
		-0.229270, -0.562702, -0.794230,
		0.870221, -0.484045, 0.091734,
		38.038082, 37.229801, 24.326509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287518, 36.865143, 24.278952>,  <37.428928, 37.568634, 24.262297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287518, 36.865143, 24.278952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.661240, 36.849247, 24.420650>,  <37.885475, 36.839710, 24.505671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.661240, 36.849247, 24.420650>,  <37.287518, 36.865143, 24.278952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661240, 36.849247, 24.420650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329546, -0.475164, 0.815854,
		0.135905, -0.879000, -0.457045,
		0.934307, -0.039739, 0.354248,
		37.941532, 36.837326, 24.526924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478931, 36.192074, 24.374435>,  <37.287518, 36.865143, 24.278952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478931, 36.192074, 24.374435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.722836, 36.393909, 24.618919>,  <37.869179, 36.515011, 24.765610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.722836, 36.393909, 24.618919>,  <37.478931, 36.192074, 24.374435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722836, 36.393909, 24.618919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318369, -0.550278, 0.771904,
		0.725832, -0.665268, -0.174892,
		0.609762, 0.504592, 0.611209,
		37.905766, 36.545288, 24.802282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813347, 35.649693, 24.818001>,  <37.478931, 36.192074, 24.374435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813347, 35.649693, 24.818001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.866867, 35.987801, 25.024929>,  <37.898979, 36.190666, 25.149086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.866867, 35.987801, 25.024929>,  <37.813347, 35.649693, 24.818001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866867, 35.987801, 25.024929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330460, -0.454083, 0.827408,
		0.934288, -0.281662, 0.218570,
		0.133800, 0.845266, 0.517322,
		37.907005, 36.241379, 25.180126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195072, 35.418682, 25.470156>,  <37.813347, 35.649693, 24.818001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195072, 35.418682, 25.470156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.034119, 35.773911, 25.559078>,  <37.937546, 35.987049, 25.612431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.034119, 35.773911, 25.559078>,  <38.195072, 35.418682, 25.470156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034119, 35.773911, 25.559078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170973, -0.311456, 0.934753,
		0.899366, 0.338118, 0.277160,
		-0.402380, 0.888072, 0.222304,
		37.913406, 36.040333, 25.625769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021137, 35.499146, 25.676388>,  <38.195072, 35.418682, 25.470156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021137, 35.499146, 25.676388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281742, 35.195854, 25.686266>,  <39.438107, 35.013878, 25.692192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281742, 35.195854, 25.686266>,  <39.021137, 35.499146, 25.676388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281742, 35.195854, 25.686266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440466, 0.351568, -0.826069,
		0.617670, 0.549075, 0.563028,
		0.651517, -0.758232, 0.024696,
		39.477196, 34.968384, 25.693674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673656, 35.780022, 25.402885>,  <39.021137, 35.499146, 25.676388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673656, 35.780022, 25.402885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.693398, 35.382675, 25.361324>,  <39.705242, 35.144268, 25.336388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.693398, 35.382675, 25.361324>,  <39.673656, 35.780022, 25.402885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693398, 35.382675, 25.361324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390281, 0.114936, -0.913494,
		0.919372, 0.004530, 0.393363,
		0.049350, -0.993363, -0.103901,
		39.708202, 35.084667, 25.330154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300797, 35.746761, 25.129797>,  <39.673656, 35.780022, 25.402885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300797, 35.746761, 25.129797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.119068, 35.412914, 25.005217>,  <40.010033, 35.212605, 24.930468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.119068, 35.412914, 25.005217>,  <40.300797, 35.746761, 25.129797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119068, 35.412914, 25.005217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430782, 0.100190, -0.896877,
		0.779758, -0.541634, 0.314022,
		-0.454318, -0.834622, -0.311451,
		39.982773, 35.162529, 24.911781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827335, 35.242577, 24.835121>,  <40.300797, 35.746761, 25.129797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827335, 35.242577, 24.835121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.474899, 35.122269, 24.689129>,  <40.263435, 35.050083, 24.601534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.474899, 35.122269, 24.689129>,  <40.827335, 35.242577, 24.835121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474899, 35.122269, 24.689129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368891, 0.045878, -0.928340,
		0.295961, -0.952593, 0.070529,
		-0.881094, -0.300769, -0.364980,
		40.210571, 35.032040, 24.579636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988575, 34.636616, 24.441751>,  <40.827335, 35.242577, 24.835121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988575, 34.636616, 24.441751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.641071, 34.772381, 24.297503>,  <40.432568, 34.853840, 24.210953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.641071, 34.772381, 24.297503>,  <40.988575, 34.636616, 24.441751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641071, 34.772381, 24.297503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373922, -0.027882, -0.927041,
		-0.324708, -0.940223, -0.102692,
		-0.868762, 0.339417, -0.360623,
		40.380444, 34.874207, 24.189316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850689, 34.143684, 23.898602>,  <40.988575, 34.636616, 24.441751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850689, 34.143684, 23.898602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.619114, 34.461403, 23.824917>,  <40.480167, 34.652035, 23.780706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.619114, 34.461403, 23.824917>,  <40.850689, 34.143684, 23.898602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619114, 34.461403, 23.824917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286832, -0.013088, -0.957892,
		-0.763257, -0.607395, -0.220251,
		-0.578936, 0.794292, -0.184210,
		40.445435, 34.699692, 23.769653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528225, 33.936794, 23.184523>,  <40.850689, 34.143684, 23.898602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528225, 33.936794, 23.184523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.485626, 34.330379, 23.241745>,  <40.460068, 34.566532, 23.276079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.485626, 34.330379, 23.241745>,  <40.528225, 33.936794, 23.184523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485626, 34.330379, 23.241745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332193, 0.170819, -0.927615,
		-0.937180, -0.051269, -0.345059,
		-0.106500, 0.983968, 0.143057,
		40.453674, 34.625568, 23.284662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210468, 34.088352, 22.584335>,  <40.528225, 33.936794, 23.184523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210468, 34.088352, 22.584335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.403862, 34.407413, 22.728550>,  <40.519897, 34.598850, 22.815079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.403862, 34.407413, 22.728550>,  <40.210468, 34.088352, 22.584335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403862, 34.407413, 22.728550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602811, -0.004752, -0.797870,
		-0.634712, 0.603095, -0.483133,
		0.483487, 0.797656, 0.360536,
		40.548908, 34.646709, 22.836710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399368, 34.497032, 22.040926>,  <40.210468, 34.088352, 22.584335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399368, 34.497032, 22.040926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.664642, 34.552525, 22.335119>,  <40.823807, 34.585819, 22.511635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.664642, 34.552525, 22.335119>,  <40.399368, 34.497032, 22.040926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664642, 34.552525, 22.335119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741670, 0.010194, -0.670687,
		-0.100541, 0.990278, -0.096130,
		0.663186, 0.138728, 0.735485,
		40.863598, 34.594143, 22.555765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.103050, 35.406570, 38.498253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.497639, 35.449558, 38.448730>,  <38.734390, 35.475349, 38.419018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.497639, 35.449558, 38.448730>,  <38.103050, 35.406570, 38.498253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497639, 35.449558, 38.448730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103819, -0.174992, -0.979081,
		-0.126886, 0.978687, -0.161467,
		0.986469, 0.107468, -0.123810,
		38.793579, 35.481800, 38.411587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249695, 35.983627, 38.036564>,  <38.103050, 35.406570, 38.498253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249695, 35.983627, 38.036564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536064, 35.704437, 38.029793>,  <38.707886, 35.536922, 38.025730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536064, 35.704437, 38.029793>,  <38.249695, 35.983627, 38.036564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536064, 35.704437, 38.029793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130813, -0.110276, -0.985255,
		0.685817, 0.707579, -0.170253,
		0.715921, -0.697976, -0.016931,
		38.750839, 35.495045, 38.024715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339760, 35.924850, 37.326057>,  <38.249695, 35.983627, 38.036564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339760, 35.924850, 37.326057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558807, 35.614956, 37.452484>,  <38.690235, 35.429020, 37.528339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.558807, 35.614956, 37.452484>,  <38.339760, 35.924850, 37.326057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558807, 35.614956, 37.452484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058347, -0.341463, -0.938082,
		0.834692, 0.532152, -0.141787,
		0.547618, -0.774737, 0.316066,
		38.723091, 35.382534, 37.547302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866539, 35.936863, 36.826172>,  <38.339760, 35.924850, 37.326057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866539, 35.936863, 36.826172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888844, 35.586296, 37.017494>,  <38.902225, 35.375954, 37.132286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888844, 35.586296, 37.017494>,  <38.866539, 35.936863, 36.826172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888844, 35.586296, 37.017494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084076, -0.473228, -0.876919,
		0.994898, 0.089110, 0.047300,
		0.055759, -0.876421, 0.478306,
		38.905571, 35.323368, 37.160988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353436, 35.612411, 36.444752>,  <38.866539, 35.936863, 36.826172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353436, 35.612411, 36.444752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.137135, 35.325447, 36.620441>,  <39.007355, 35.153271, 36.725853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.137135, 35.325447, 36.620441>,  <39.353436, 35.612411, 36.444752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137135, 35.325447, 36.620441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072151, -0.480666, -0.873931,
		0.838083, -0.504269, 0.208159,
		-0.540751, -0.717407, 0.439221,
		38.974911, 35.110226, 36.752209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690613, 34.951260, 36.354294>,  <39.353436, 35.612411, 36.444752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690613, 34.951260, 36.354294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302471, 34.868721, 36.404613>,  <39.069584, 34.819199, 36.434807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302471, 34.868721, 36.404613>,  <39.690613, 34.951260, 36.354294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302471, 34.868721, 36.404613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024710, -0.602533, -0.797711,
		0.240407, -0.770956, 0.589772,
		-0.970357, -0.206349, 0.125803,
		39.011364, 34.806816, 36.442356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599838, 34.255215, 36.147072>,  <39.690613, 34.951260, 36.354294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599838, 34.255215, 36.147072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213856, 34.359886, 36.139275>,  <38.982265, 34.422688, 36.134598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.213856, 34.359886, 36.139275>,  <39.599838, 34.255215, 36.147072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213856, 34.359886, 36.139275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107291, -0.461249, -0.880760,
		-0.239463, -0.847806, 0.473162,
		-0.964959, 0.261675, -0.019490,
		38.924370, 34.438389, 36.133427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344906, 33.719746, 35.801361>,  <39.599838, 34.255215, 36.147072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344906, 33.719746, 35.801361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047615, 33.987095, 35.813316>,  <38.869240, 34.147503, 35.820488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.047615, 33.987095, 35.813316>,  <39.344906, 33.719746, 35.801361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047615, 33.987095, 35.813316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302588, -0.295961, -0.906007,
		-0.596706, -0.682410, 0.422207,
		-0.743224, 0.668374, 0.029887,
		38.824646, 34.187607, 35.822281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745480, 33.303993, 35.880051>,  <39.344906, 33.719746, 35.801361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745480, 33.303993, 35.880051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.709953, 33.654888, 35.691341>,  <38.688637, 33.865425, 35.578117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.709953, 33.654888, 35.691341>,  <38.745480, 33.303993, 35.880051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709953, 33.654888, 35.691341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256976, -0.477790, -0.840047,
		-0.962327, 0.046621, 0.267866,
		-0.088820, 0.877236, -0.471771,
		38.683308, 33.918060, 35.549809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345100, 33.156425, 35.396492>,  <38.745480, 33.303993, 35.880051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345100, 33.156425, 35.396492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450424, 33.515259, 35.254562>,  <38.513618, 33.730560, 35.169403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.450424, 33.515259, 35.254562>,  <38.345100, 33.156425, 35.396492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450424, 33.515259, 35.254562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113670, -0.336393, -0.934836,
		-0.957991, 0.286484, 0.013396,
		0.263309, 0.897088, -0.354827,
		38.529415, 33.784386, 35.148113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817120, 33.291096, 34.885036>,  <38.345100, 33.156425, 35.396492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817120, 33.291096, 34.885036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.121853, 33.530983, 34.787106>,  <38.304695, 33.674915, 34.728348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.121853, 33.530983, 34.787106>,  <37.817120, 33.291096, 34.885036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121853, 33.530983, 34.787106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140002, -0.216581, -0.966174,
		-0.632461, 0.770342, -0.081036,
		0.761835, 0.599722, -0.244828,
		38.350403, 33.710899, 34.713657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594059, 33.765919, 34.271236>,  <37.817120, 33.291096, 34.885036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594059, 33.765919, 34.271236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993698, 33.752590, 34.281719>,  <38.233482, 33.744595, 34.288010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993698, 33.752590, 34.281719>,  <37.594059, 33.765919, 34.271236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993698, 33.752590, 34.281719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019338, -0.191827, -0.981238,
		0.037720, 0.980863, -0.191011,
		0.999101, -0.033318, 0.026203,
		38.293430, 33.742596, 34.289581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222393, 34.410408, 34.260456>,  <37.594059, 33.765919, 34.271236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222393, 34.410408, 34.260456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.832272, 34.485558, 34.213997>,  <36.598198, 34.530647, 34.186123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.832272, 34.485558, 34.213997>,  <37.222393, 34.410408, 34.260456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832272, 34.485558, 34.213997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098093, 0.102710, 0.989863,
		0.197898, 0.976808, -0.081744,
		-0.975302, 0.187873, -0.116144,
		36.539680, 34.541920, 34.179153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074886, 35.047699, 34.594986>,  <37.222393, 34.410408, 34.260456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074886, 35.047699, 34.594986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722076, 34.859970, 34.578178>,  <36.510391, 34.747334, 34.568092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722076, 34.859970, 34.578178>,  <37.074886, 35.047699, 34.594986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722076, 34.859970, 34.578178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147334, 0.189988, 0.970669,
		-0.447573, 0.862347, -0.236722,
		-0.882027, -0.469322, -0.042019,
		36.457470, 34.719173, 34.565571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586796, 35.520424, 34.917061>,  <37.074886, 35.047699, 34.594986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586796, 35.520424, 34.917061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431885, 35.151661, 34.921242>,  <36.338940, 34.930405, 34.923752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.431885, 35.151661, 34.921242>,  <36.586796, 35.520424, 34.917061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431885, 35.151661, 34.921242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118261, 0.060920, 0.991112,
		-0.914347, 0.382600, -0.132618,
		-0.387279, -0.921904, 0.010455,
		36.315701, 34.875092, 34.924377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987206, 35.649643, 35.058315>,  <36.586796, 35.520424, 34.917061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987206, 35.649643, 35.058315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051208, 35.268921, 35.162983>,  <36.089611, 35.040489, 35.225784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.051208, 35.268921, 35.162983>,  <35.987206, 35.649643, 35.058315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051208, 35.268921, 35.162983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237790, 0.220113, 0.946048,
		-0.958047, -0.213594, -0.191110,
		0.160005, -0.951802, 0.261669,
		36.099209, 34.983379, 35.241486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500809, 35.519596, 35.531265>,  <35.987206, 35.649643, 35.058315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500809, 35.519596, 35.531265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748707, 35.212143, 35.594658>,  <35.897446, 35.027672, 35.632694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.748707, 35.212143, 35.594658>,  <35.500809, 35.519596, 35.531265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748707, 35.212143, 35.594658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190232, 0.048785, 0.980526,
		-0.761396, -0.637828, -0.115985,
		0.619749, -0.768633, 0.158480,
		35.934631, 34.981552, 35.642200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068424, 35.037338, 36.071609>,  <35.500809, 35.519596, 35.531265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068424, 35.037338, 36.071609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461349, 34.962921, 36.063053>,  <35.697105, 34.918270, 36.057919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461349, 34.962921, 36.063053>,  <35.068424, 35.037338, 36.071609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461349, 34.962921, 36.063053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007826, -0.073370, 0.997274,
		-0.187106, -0.979798, -0.070617,
		0.982309, -0.186043, -0.021396,
		35.756042, 34.907108, 36.056633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184952, 34.473660, 36.507008>,  <35.068424, 35.037338, 36.071609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184952, 34.473660, 36.507008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548332, 34.637135, 36.471924>,  <35.766361, 34.735222, 36.450874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.548332, 34.637135, 36.471924>,  <35.184952, 34.473660, 36.507008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548332, 34.637135, 36.471924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050979, 0.099950, 0.993686,
		0.414877, -0.907184, 0.069965,
		0.908448, 0.408691, -0.087714,
		35.820866, 34.759743, 36.445610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458878, 34.315495, 37.157085>,  <35.184952, 34.473660, 36.507008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458878, 34.315495, 37.157085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712536, 34.604496, 37.046928>,  <35.864731, 34.777897, 36.980835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.712536, 34.604496, 37.046928>,  <35.458878, 34.315495, 37.157085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712536, 34.604496, 37.046928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002963, 0.353893, 0.935281,
		0.773204, -0.593925, 0.222281,
		0.634150, 0.722505, -0.275391,
		35.902782, 34.821247, 36.964310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905579, 34.433544, 37.762966>,  <35.458878, 34.315495, 37.157085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905579, 34.433544, 37.762966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890423, 34.750782, 37.519798>,  <35.881329, 34.941124, 37.373898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.890423, 34.750782, 37.519798>,  <35.905579, 34.433544, 37.762966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890423, 34.750782, 37.519798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200913, 0.589885, 0.782093,
		0.978876, 0.151770, 0.136994,
		-0.037887, 0.793096, -0.607917,
		35.879055, 34.988712, 37.337421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416443, 34.905766, 38.054470>,  <35.905579, 34.433544, 37.762966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416443, 34.905766, 38.054470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178310, 35.141922, 37.836468>,  <36.035431, 35.283615, 37.705666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178310, 35.141922, 37.836468>,  <36.416443, 34.905766, 38.054470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178310, 35.141922, 37.836468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018507, 0.688195, 0.725289,
		0.803270, 0.421698, -0.420627,
		-0.595327, 0.590388, -0.545003,
		35.999714, 35.319038, 37.672966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645931, 35.598900, 38.307995>,  <36.416443, 34.905766, 38.054470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645931, 35.598900, 38.307995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295055, 35.640125, 38.120415>,  <36.084530, 35.664860, 38.007866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.295055, 35.640125, 38.120415>,  <36.645931, 35.598900, 38.307995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295055, 35.640125, 38.120415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330154, 0.579678, 0.744964,
		0.348618, 0.808302, -0.474461,
		-0.877191, 0.103063, -0.468951,
		36.031898, 35.671043, 37.979729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494850, 36.284096, 38.294575>,  <36.645931, 35.598900, 38.307995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494850, 36.284096, 38.294575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119526, 36.162682, 38.228317>,  <35.894333, 36.089832, 38.188564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119526, 36.162682, 38.228317>,  <36.494850, 36.284096, 38.294575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119526, 36.162682, 38.228317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334310, 0.673868, 0.658892,
		-0.088379, 0.673621, -0.733774,
		-0.938310, -0.303540, -0.165643,
		35.838032, 36.071621, 38.178623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122940, 36.873074, 38.364803>,  <36.494850, 36.284096, 38.294575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122940, 36.873074, 38.364803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851070, 36.585205, 38.421539>,  <35.687950, 36.412483, 38.455582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851070, 36.585205, 38.421539>,  <36.122940, 36.873074, 38.364803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851070, 36.585205, 38.421539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391298, 0.519292, 0.759751,
		-0.620430, 0.460878, -0.634554,
		-0.679671, -0.719672, 0.141843,
		35.647171, 36.369305, 38.464092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526413, 37.265198, 38.511585>,  <36.122940, 36.873074, 38.364803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526413, 37.265198, 38.511585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471836, 36.893925, 38.650070>,  <35.439091, 36.671162, 38.733162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471836, 36.893925, 38.650070>,  <35.526413, 37.265198, 38.511585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471836, 36.893925, 38.650070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397133, 0.371419, 0.839246,
		-0.907563, -0.022987, -0.419287,
		-0.136439, -0.928181, 0.346215,
		35.430904, 36.615471, 38.753933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913361, 37.131771, 38.703564>,  <35.526413, 37.265198, 38.511585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913361, 37.131771, 38.703564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169685, 36.927792, 38.933105>,  <35.323483, 36.805405, 39.070831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.169685, 36.927792, 38.933105>,  <34.913361, 37.131771, 38.703564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169685, 36.927792, 38.933105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295824, 0.525744, 0.797547,
		-0.708410, -0.680839, 0.186048,
		0.640815, -0.509953, 0.573851,
		35.361931, 36.774807, 39.105259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571117, 37.041603, 38.070885>,  <34.913361, 37.131771, 38.703564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571117, 37.041603, 38.070885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686283, 37.400063, 38.205956>,  <34.755383, 37.615139, 38.286999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.686283, 37.400063, 38.205956>,  <34.571117, 37.041603, 38.070885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686283, 37.400063, 38.205956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061506, 0.334571, -0.940361,
		-0.955680, 0.291511, 0.041209,
		0.287913, 0.896149, 0.337672,
		34.772655, 37.668907, 38.307259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115791, 37.661324, 37.756310>,  <34.571117, 37.041603, 38.070885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115791, 37.661324, 37.756310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491695, 37.752029, 37.858631>,  <34.717236, 37.806454, 37.920025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491695, 37.752029, 37.858631>,  <34.115791, 37.661324, 37.756310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491695, 37.752029, 37.858631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180811, 0.305319, -0.934927,
		-0.290108, 0.924856, 0.245925,
		0.939758, 0.226764, 0.255800,
		34.773624, 37.820057, 37.935371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261658, 38.372551, 37.554958>,  <34.115791, 37.661324, 37.756310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261658, 38.372551, 37.554958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635380, 38.238979, 37.604847>,  <34.859615, 38.158836, 37.634781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635380, 38.238979, 37.604847>,  <34.261658, 38.372551, 37.554958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635380, 38.238979, 37.604847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220924, 0.267856, -0.937788,
		0.279749, 0.903738, 0.324034,
		0.934309, -0.333932, 0.124725,
		34.915672, 38.138802, 37.642265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708565, 38.889759, 37.210125>,  <34.261658, 38.372551, 37.554958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708565, 38.889759, 37.210125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944290, 38.567322, 37.231743>,  <35.085724, 38.373859, 37.244713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944290, 38.567322, 37.231743>,  <34.708565, 38.889759, 37.210125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944290, 38.567322, 37.231743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191217, 0.074169, -0.978742,
		0.784949, 0.587121, 0.197848,
		0.589314, -0.806094, 0.054049,
		35.121086, 38.325493, 37.247959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358955, 39.110706, 36.953293>,  <34.708565, 38.889759, 37.210125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358955, 39.110706, 36.953293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336941, 38.711689, 36.935951>,  <35.323730, 38.472279, 36.925545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.336941, 38.711689, 36.935951>,  <35.358955, 39.110706, 36.953293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336941, 38.711689, 36.935951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164869, 0.033747, -0.985738,
		0.984779, -0.061402, 0.162607,
		-0.055039, -0.997542, -0.043357,
		35.320431, 38.412426, 36.922943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005630, 38.907501, 36.691833>,  <35.358955, 39.110706, 36.953293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005630, 38.907501, 36.691833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757690, 38.607033, 36.601028>,  <35.608929, 38.426754, 36.546543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757690, 38.607033, 36.601028>,  <36.005630, 38.907501, 36.691833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757690, 38.607033, 36.601028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339824, 0.003814, -0.940481,
		0.707326, -0.660099, 0.252901,
		-0.619847, -0.751169, -0.227015,
		35.571735, 38.381683, 36.532925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418335, 38.275192, 36.529915>,  <36.005630, 38.907501, 36.691833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418335, 38.275192, 36.529915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064171, 38.232998, 36.348843>,  <35.851673, 38.207680, 36.240200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064171, 38.232998, 36.348843>,  <36.418335, 38.275192, 36.529915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064171, 38.232998, 36.348843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464165, -0.251918, -0.849169,
		-0.024462, -0.961982, 0.272015,
		-0.885411, -0.105487, -0.452681,
		35.798546, 38.201351, 36.213039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543121, 37.692657, 36.179882>,  <36.418335, 38.275192, 36.529915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543121, 37.692657, 36.179882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.204247, 37.812778, 36.004574>,  <36.000919, 37.884850, 35.899387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.204247, 37.812778, 36.004574>,  <36.543121, 37.692657, 36.179882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204247, 37.812778, 36.004574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496785, 0.155332, -0.853860,
		-0.188339, -0.941111, -0.280782,
		-0.847191, 0.300304, -0.438274,
		35.950089, 37.902870, 35.873093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469803, 37.378326, 35.556465>,  <36.543121, 37.692657, 36.179882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469803, 37.378326, 35.556465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186699, 37.652660, 35.488693>,  <36.016834, 37.817261, 35.448029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.186699, 37.652660, 35.488693>,  <36.469803, 37.378326, 35.556465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186699, 37.652660, 35.488693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400083, 0.191462, -0.896257,
		-0.582243, -0.702122, -0.409900,
		-0.707762, 0.685833, -0.169429,
		35.974369, 37.858410, 35.437866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071705, 37.083172, 35.061184>,  <36.469803, 37.378326, 35.556465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071705, 37.083172, 35.061184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011040, 37.478542, 35.060486>,  <35.974640, 37.715767, 35.060066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011040, 37.478542, 35.060486>,  <36.071705, 37.083172, 35.061184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011040, 37.478542, 35.060486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371682, 0.055393, -0.926706,
		-0.915888, -0.141199, -0.375783,
		-0.151666, 0.988430, -0.001747,
		35.965542, 37.775070, 35.059963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800350, 37.325718, 34.346100>,  <36.071705, 37.083172, 35.061184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800350, 37.325718, 34.346100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949387, 37.662403, 34.502407>,  <36.038807, 37.864414, 34.596191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.949387, 37.662403, 34.502407>,  <35.800350, 37.325718, 34.346100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949387, 37.662403, 34.502407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539967, 0.145828, -0.828957,
		-0.754726, 0.519865, -0.400161,
		0.372591, 0.841709, 0.390771,
		36.061165, 37.914917, 34.619637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765774, 37.741360, 33.775101>,  <35.800350, 37.325718, 34.346100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765774, 37.741360, 33.775101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004063, 37.921825, 34.040901>,  <36.147038, 38.030106, 34.200382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004063, 37.921825, 34.040901>,  <35.765774, 37.741360, 33.775101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004063, 37.921825, 34.040901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476263, 0.467770, -0.744557,
		-0.646750, 0.760030, 0.063791,
		0.595725, 0.451161, 0.664504,
		36.182781, 38.057175, 34.240253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846954, 38.482933, 33.593269>,  <35.765774, 37.741360, 33.775101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846954, 38.482933, 33.593269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155643, 38.412693, 33.837765>,  <36.340858, 38.370548, 33.984463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155643, 38.412693, 33.837765>,  <35.846954, 38.482933, 33.593269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155643, 38.412693, 33.837765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612556, 0.463586, -0.640206,
		-0.170942, 0.868478, 0.465322,
		0.771722, -0.175598, 0.611237,
		36.387161, 38.360012, 34.021137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239758, 39.105064, 33.496082>,  <35.846954, 38.482933, 33.593269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239758, 39.105064, 33.496082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496754, 38.847427, 33.662144>,  <36.650951, 38.692844, 33.761780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496754, 38.847427, 33.662144>,  <36.239758, 39.105064, 33.496082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496754, 38.847427, 33.662144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715346, 0.309874, -0.626304,
		0.274751, 0.699373, 0.659840,
		0.642488, -0.644092, 0.415156,
		36.689499, 38.654202, 33.786690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829205, 39.518532, 33.769775>,  <36.239758, 39.105064, 33.496082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829205, 39.518532, 33.769775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931393, 39.141918, 33.681919>,  <36.992706, 38.915951, 33.629204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.931393, 39.141918, 33.681919>,  <36.829205, 39.518532, 33.769775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931393, 39.141918, 33.681919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391537, 0.308471, -0.866917,
		0.883987, 0.135475, 0.447452,
		0.255472, -0.941537, -0.219641,
		37.008034, 38.859459, 33.616028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524250, 39.578655, 33.632729>,  <36.829205, 39.518532, 33.769775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524250, 39.578655, 33.632729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464127, 39.215874, 33.475327>,  <37.428055, 38.998203, 33.380886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.464127, 39.215874, 33.475327>,  <37.524250, 39.578655, 33.632729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464127, 39.215874, 33.475327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601563, 0.231960, -0.764406,
		0.784557, -0.351612, 0.510724,
		-0.150307, -0.906953, -0.393502,
		37.419033, 38.943787, 33.357277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152660, 39.338013, 33.244202>,  <37.524250, 39.578655, 33.632729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152660, 39.338013, 33.244202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863155, 39.115326, 33.081116>,  <37.689453, 38.981712, 32.983265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863155, 39.115326, 33.081116>,  <38.152660, 39.338013, 33.244202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863155, 39.115326, 33.081116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524055, -0.059071, -0.849634,
		0.448924, -0.828597, 0.334505,
		-0.723764, -0.556720, -0.407712,
		37.646027, 38.948311, 32.958801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548759, 38.761372, 32.825241>,  <38.152660, 39.338013, 33.244202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548759, 38.761372, 32.825241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183994, 38.784943, 32.662785>,  <37.965137, 38.799088, 32.565311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.183994, 38.784943, 32.662785>,  <38.548759, 38.761372, 32.825241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183994, 38.784943, 32.662785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395753, -0.135707, -0.908275,
		-0.108636, -0.988995, 0.100433,
		-0.911909, 0.058925, -0.406140,
		37.910423, 38.802624, 32.540943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582394, 38.216179, 32.289593>,  <38.548759, 38.761372, 32.825241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582394, 38.216179, 32.289593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259045, 38.435047, 32.202747>,  <38.065033, 38.566368, 32.150642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259045, 38.435047, 32.202747>,  <38.582394, 38.216179, 32.289593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259045, 38.435047, 32.202747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062455, -0.287018, -0.955887,
		-0.585346, -0.786275, 0.197845,
		-0.808375, 0.547168, -0.217112,
		38.016533, 38.599197, 32.137615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071766, 37.880295, 31.882391>,  <38.582394, 38.216179, 32.289593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071766, 37.880295, 31.882391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991577, 38.260731, 31.788372>,  <37.943466, 38.488991, 31.731960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991577, 38.260731, 31.788372>,  <38.071766, 37.880295, 31.882391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991577, 38.260731, 31.788372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019554, -0.235988, -0.971560,
		-0.979505, -0.199362, 0.028710,
		-0.200467, 0.951086, -0.235050,
		37.931438, 38.546055, 31.717857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606354, 37.835571, 31.332500>,  <38.071766, 37.880295, 31.882391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606354, 37.835571, 31.332500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746437, 38.209541, 31.309605>,  <37.830486, 38.433922, 31.295868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746437, 38.209541, 31.309605>,  <37.606354, 37.835571, 31.332500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746437, 38.209541, 31.309605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034038, -0.048365, -0.998250,
		-0.936054, 0.351542, 0.014885,
		0.350206, 0.934922, -0.057238,
		37.851498, 38.490017, 31.292433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108028, 38.293903, 30.926359>,  <37.606354, 37.835571, 31.332500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108028, 38.293903, 30.926359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456097, 38.487408, 30.888878>,  <37.664936, 38.603512, 30.866390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456097, 38.487408, 30.888878>,  <37.108028, 38.293903, 30.926359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456097, 38.487408, 30.888878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127853, 0.038015, -0.991064,
		-0.475878, 0.874373, 0.094930,
		0.870169, 0.483763, -0.093701,
		37.717148, 38.632538, 30.860767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027683, 38.715908, 30.282511>,  <37.108028, 38.293903, 30.926359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027683, 38.715908, 30.282511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417583, 38.752171, 30.364138>,  <37.651524, 38.773926, 30.413113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417583, 38.752171, 30.364138>,  <37.027683, 38.715908, 30.282511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417583, 38.752171, 30.364138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186994, 0.168077, -0.967876,
		-0.122041, 0.981597, 0.146881,
		0.974751, 0.090654, 0.204065,
		37.710011, 38.779366, 30.425358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340942, 39.396263, 30.161863>,  <37.027683, 38.715908, 30.282511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340942, 39.396263, 30.161863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656513, 39.150951, 30.146423>,  <37.845856, 39.003765, 30.137159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656513, 39.150951, 30.146423>,  <37.340942, 39.396263, 30.161863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656513, 39.150951, 30.146423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261065, 0.391373, -0.882424,
		0.556279, 0.686087, 0.468868,
		0.788923, -0.613279, -0.038600,
		37.893188, 38.966969, 30.134844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917068, 39.786049, 30.040421>,  <37.340942, 39.396263, 30.161863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917068, 39.786049, 30.040421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002964, 39.424534, 29.892342>,  <38.054501, 39.207623, 29.803493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002964, 39.424534, 29.892342>,  <37.917068, 39.786049, 30.040421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002964, 39.424534, 29.892342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439307, 0.427915, -0.789872,
		0.872294, 0.006987, 0.488933,
		0.214740, -0.903792, -0.370198,
		38.067387, 39.153397, 29.781282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633060, 39.717850, 29.872362>,  <37.917068, 39.786049, 30.040421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633060, 39.717850, 29.872362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491905, 39.411400, 29.657505>,  <38.407211, 39.227531, 29.528591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.491905, 39.411400, 29.657505>,  <38.633060, 39.717850, 29.872362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491905, 39.411400, 29.657505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504130, 0.327945, -0.798940,
		0.788242, -0.552725, 0.270499,
		-0.352886, -0.766125, -0.537145,
		38.386040, 39.181561, 29.496361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173889, 39.482994, 29.527794>,  <38.633060, 39.717850, 29.872362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173889, 39.482994, 29.527794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876266, 39.339813, 29.302141>,  <38.697693, 39.253906, 29.166750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876266, 39.339813, 29.302141>,  <39.173889, 39.482994, 29.527794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876266, 39.339813, 29.302141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342660, 0.520404, -0.782154,
		0.573551, -0.775274, -0.264555,
		-0.744059, -0.357953, -0.564133,
		38.653049, 39.232430, 29.132902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965256, 39.367027, 29.552704>,  <39.173889, 39.482994, 29.527794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965256, 39.367027, 29.552704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.301777, 39.583248, 29.551998>,  <40.503689, 39.712982, 29.551575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.301777, 39.583248, 29.551998>,  <39.965256, 39.367027, 29.552704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301777, 39.583248, 29.551998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041721, 0.068189, 0.996800,
		0.538946, -0.838540, 0.079921,
		0.841306, 0.540555, -0.001766,
		40.554169, 39.745415, 29.551468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308025, 39.196598, 30.210932>,  <39.965256, 39.367027, 29.552704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308025, 39.196598, 30.210932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.525139, 39.515553, 30.105427>,  <40.655407, 39.706924, 30.042124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.525139, 39.515553, 30.105427>,  <40.308025, 39.196598, 30.210932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525139, 39.515553, 30.105427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191189, 0.188499, 0.963283,
		0.817824, -0.573280, -0.050137,
		0.542780, 0.797382, -0.263764,
		40.687973, 39.754768, 30.026299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923225, 39.169483, 30.641151>,  <40.308025, 39.196598, 30.210932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923225, 39.169483, 30.641151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.850437, 39.544281, 30.521873>,  <40.806767, 39.769161, 30.450306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.850437, 39.544281, 30.521873>,  <40.923225, 39.169483, 30.641151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850437, 39.544281, 30.521873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033027, 0.308913, 0.950517,
		0.982750, 0.163116, -0.087158,
		-0.181969, 0.936998, -0.298197,
		40.795845, 39.825382, 30.432415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474751, 39.583176, 30.979952>,  <40.923225, 39.169483, 30.641151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474751, 39.583176, 30.979952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.186310, 39.845547, 30.890711>,  <41.013245, 40.002968, 30.837166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.186310, 39.845547, 30.890711>,  <41.474751, 39.583176, 30.979952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186310, 39.845547, 30.890711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066864, 0.386394, 0.919907,
		0.689598, 0.648427, -0.322486,
		-0.721099, 0.655929, -0.223101,
		40.969978, 40.042324, 30.823780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711853, 40.126343, 31.252375>,  <41.474751, 39.583176, 30.979952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711853, 40.126343, 31.252375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.319000, 40.192673, 31.216774>,  <41.083290, 40.232471, 31.195414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.319000, 40.192673, 31.216774>,  <41.711853, 40.126343, 31.252375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319000, 40.192673, 31.216774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013171, 0.532309, 0.846448,
		0.187743, 0.830149, -0.524981,
		-0.982130, 0.165829, -0.089004,
		41.024361, 40.242420, 31.190073>
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
