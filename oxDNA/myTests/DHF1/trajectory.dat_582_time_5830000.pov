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
	<4.844980, 0.113348, -0.997486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.948071, -0.221104, -0.803800>,  <5.009925, -0.421775, -0.687588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.948071, -0.221104, -0.803800>,  <4.844980, 0.113348, -0.997486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.948071, -0.221104, -0.803800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591438, 0.259771, 0.763361,
		-0.764054, -0.483121, -0.427569,
		0.257726, -0.836130, 0.484215,
		5.025388, -0.471943, -0.658535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.211625, -0.078536, -0.728622>,  <4.844980, 0.113348, -0.997486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.211625, -0.078536, -0.728622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.517445, -0.231805, -0.521299>,  <4.700937, -0.323766, -0.396905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.517445, -0.231805, -0.521299>,  <4.211625, -0.078536, -0.728622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.517445, -0.231805, -0.521299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400281, 0.348024, 0.847735,
		-0.505212, -0.855605, 0.112705,
		0.764550, -0.383172, 0.518308,
		4.746809, -0.346756, -0.365807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.925958, -0.347326, -0.059933>,  <4.211625, -0.078536, -0.728622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.925958, -0.347326, -0.059933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.304134, -0.217128, -0.065479>,  <4.531041, -0.139009, -0.068806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.304134, -0.217128, -0.065479>,  <3.925958, -0.347326, -0.059933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.304134, -0.217128, -0.065479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205248, 0.628136, 0.750546,
		0.253008, -0.706752, 0.660673,
		0.945442, 0.325495, -0.013864,
		4.587767, -0.119480, -0.069638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.240120, -0.349147, 0.617829>,  <3.925958, -0.347326, -0.059933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.240120, -0.349147, 0.617829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433033, -0.063711, 0.414579>,  <4.548781, 0.107551, 0.292629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433033, -0.063711, 0.414579>,  <4.240120, -0.349147, 0.617829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.433033, -0.063711, 0.414579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096858, 0.533048, 0.840523,
		0.870645, -0.454585, 0.187962,
		0.482282, 0.713591, -0.508125,
		4.577718, 0.150367, 0.262141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.981154, -0.190397, 0.871073>,  <4.240120, -0.349147, 0.617829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.981154, -0.190397, 0.871073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.803673, 0.124582, 0.699935>,  <4.697184, 0.313570, 0.597252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.803673, 0.124582, 0.699935>,  <4.981154, -0.190397, 0.871073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.803673, 0.124582, 0.699935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184176, 0.547345, 0.816390,
		0.877044, 0.283436, -0.387888,
		-0.443703, 0.787450, -0.427844,
		4.670562, 0.360817, 0.571582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.315254, 0.347591, 1.114802>,  <4.981154, -0.190397, 0.871073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.315254, 0.347591, 1.114802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.985046, 0.531353, 0.983673>,  <4.786922, 0.641609, 0.904996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.985046, 0.531353, 0.983673>,  <5.315254, 0.347591, 1.114802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.985046, 0.531353, 0.983673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009331, 0.591889, 0.805966,
		0.564297, 0.662281, -0.492902,
		-0.825519, 0.459403, -0.327822,
		4.737391, 0.669174, 0.885327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.423288, 1.085672, 1.223419>,  <5.315254, 0.347591, 1.114802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.423288, 1.085672, 1.223419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.027081, 1.058864, 1.175451>,  <4.789356, 1.042780, 1.146671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.027081, 1.058864, 1.175451>,  <5.423288, 1.085672, 1.223419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.027081, 1.058864, 1.175451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137183, 0.528742, 0.837623,
		0.007269, 0.846133, -0.532923,
		-0.990519, -0.067019, -0.119918,
		4.729925, 1.038759, 1.139476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.237616, 1.755170, 1.181013>,  <5.423288, 1.085672, 1.223419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.237616, 1.755170, 1.181013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.925453, 1.542961, 1.313384>,  <4.738156, 1.415635, 1.392807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.925453, 1.542961, 1.313384>,  <5.237616, 1.755170, 1.181013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.925453, 1.542961, 1.313384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008942, 0.519729, 0.854284,
		-0.625209, 0.669648, -0.400856,
		-0.780406, -0.530522, 0.330927,
		4.691331, 1.383804, 1.412662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.246857, 1.508703, 2.608713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.886009, 1.646009, 2.504138>,  <4.669501, 1.728393, 2.441393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.886009, 1.646009, 2.504138>,  <5.246857, 1.508703, 2.608713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.886009, 1.646009, 2.504138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112938, -0.772621, -0.624742,
		-0.416445, -0.534065, 0.735764,
		-0.902119, 0.343266, -0.261438,
		4.615374, 1.748989, 2.425707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.814701, 0.929366, 2.334982>,  <5.246857, 1.508703, 2.608713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.814701, 0.929366, 2.334982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.590714, 1.242704, 2.227053>,  <4.456321, 1.430707, 2.162295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.590714, 1.242704, 2.227053>,  <4.814701, 0.929366, 2.334982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.590714, 1.242704, 2.227053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375666, -0.530329, -0.760017,
		-0.738452, -0.324221, 0.591243,
		-0.559967, 0.783347, -0.269824,
		4.422723, 1.477708, 2.146106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.059680, 0.622751, 2.284046>,  <4.814701, 0.929366, 2.334982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.059680, 0.622751, 2.284046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.140930, 0.961926, 2.088191>,  <4.189680, 1.165430, 1.970678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.140930, 0.961926, 2.088191>,  <4.059680, 0.622751, 2.284046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.140930, 0.961926, 2.088191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205390, -0.452039, -0.868030,
		-0.957369, 0.276885, 0.082338,
		0.203125, 0.847936, -0.489638,
		4.201868, 1.216306, 1.941300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.641248, 0.669127, 1.667157>,  <4.059680, 0.622751, 2.284046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.641248, 0.669127, 1.667157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.924469, 0.937351, 1.578605>,  <4.094402, 1.098286, 1.525474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.924469, 0.937351, 1.578605>,  <3.641248, 0.669127, 1.667157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.924469, 0.937351, 1.578605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039908, -0.275000, -0.960616,
		-0.705030, 0.689002, -0.167954,
		0.708053, 0.670560, -0.221380,
		4.136885, 1.138519, 1.512191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.463856, 1.019108, 1.028596>,  <3.641248, 0.669127, 1.667157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.463856, 1.019108, 1.028596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.862259, 1.006487, 1.061993>,  <4.101301, 0.998914, 1.082031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.862259, 1.006487, 1.061993>,  <3.463856, 1.019108, 1.028596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.862259, 1.006487, 1.061993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056966, -0.495416, -0.866786,
		0.068714, 0.868083, -0.491641,
		0.996009, -0.031553, 0.083493,
		4.161061, 0.997021, 1.087041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.634681, 1.185475, 0.359099>,  <3.463856, 1.019108, 1.028596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.634681, 1.185475, 0.359099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955795, 1.017033, 0.527956>,  <4.148464, 0.915967, 0.629270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.955795, 1.017033, 0.527956>,  <3.634681, 1.185475, 0.359099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.955795, 1.017033, 0.527956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127908, -0.569875, -0.811716,
		0.582387, 0.705629, -0.403624,
		0.802786, -0.421106, 0.422143,
		4.196631, 0.890701, 0.654599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.182835, 1.302252, -0.086664>,  <3.634681, 1.185475, 0.359099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.182835, 1.302252, -0.086664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254715, 0.982641, 0.142862>,  <4.297843, 0.790875, 0.280578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.254715, 0.982641, 0.142862>,  <4.182835, 1.302252, -0.086664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.254715, 0.982641, 0.142862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133045, -0.558210, -0.818963,
		0.974683, 0.223511, 0.005996,
		0.179700, -0.799027, 0.573815,
		4.308625, 0.742933, 0.315007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.802803, 1.028499, -0.202964>,  <4.182835, 1.302252, -0.086664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.802803, 1.028499, -0.202964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.545959, 0.742445, -0.092489>,  <4.391854, 0.570813, -0.026204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.545959, 0.742445, -0.092489>,  <4.802803, 1.028499, -0.202964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.545959, 0.742445, -0.092489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148721, -0.469627, -0.870249,
		0.752051, -0.517718, 0.407906,
		-0.642108, -0.715135, 0.276188,
		4.353327, 0.527904, -0.009633>
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
