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
	<1.912583, 2.321124, 2.867233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.587177, 2.238289, 3.084602>,  <1.391934, 2.188588, 3.215024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.587177, 2.238289, 3.084602>,  <1.912583, 2.321124, 2.867233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.587177, 2.238289, 3.084602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384833, 0.892287, -0.236067,
		-0.436002, -0.401171, -0.805583,
		-0.813515, -0.207089, 0.543423,
		1.343123, 2.176162, 3.247629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.407048, 2.468141, 2.435194>,  <1.912583, 2.321124, 2.867233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.407048, 2.468141, 2.435194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.253487, 2.485283, 2.804146>,  <1.161350, 2.495568, 3.025517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.253487, 2.485283, 2.804146>,  <1.407048, 2.468141, 2.435194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.253487, 2.485283, 2.804146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522974, 0.813170, -0.255447,
		-0.760997, -0.580447, -0.289766,
		-0.383902, 0.042855, 0.922379,
		1.138316, 2.498139, 3.080859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.660539, 2.653987, 2.311912>,  <1.407048, 2.468141, 2.435194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.660539, 2.653987, 2.311912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.780071, 2.768929, 2.675919>,  <0.851790, 2.837893, 2.894322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.780071, 2.768929, 2.675919>,  <0.660539, 2.653987, 2.311912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.780071, 2.768929, 2.675919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586962, 0.807225, -0.062149,
		-0.752447, -0.515573, 0.409888,
		0.298830, 0.287352, 0.910016,
		0.869720, 2.855134, 2.948923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.075102, 2.886411, 2.750906>,  <0.660539, 2.653987, 2.311912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.075102, 2.886411, 2.750906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.417160, 3.058464, 2.866638>,  <0.622395, 3.161696, 2.936078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.417160, 3.058464, 2.866638>,  <0.075102, 2.886411, 2.750906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.417160, 3.058464, 2.866638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429285, 0.900462, -0.069879,
		-0.290588, -0.064449, 0.954675,
		0.855145, 0.430133, 0.289331,
		0.673704, 3.187504, 2.953437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.019442, 3.315503, 3.455725>,  <0.075102, 2.886411, 2.750906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.019442, 3.315503, 3.455725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.295959, 3.447212, 3.247940>,  <0.485200, 3.526238, 3.123269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.295959, 3.447212, 3.247940>,  <-0.019442, 3.315503, 3.455725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.295959, 3.447212, 3.247940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417706, 0.906642, -0.059348,
		0.451424, 0.263779, 0.852430,
		0.788504, 0.329273, -0.519462,
		0.532511, 3.545994, 3.092101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.261065, 3.919019, 3.738390>,  <-0.019442, 3.315503, 3.455725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.261065, 3.919019, 3.738390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.346512, 3.944649, 3.348465>,  <0.397780, 3.960027, 3.114510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.346512, 3.944649, 3.348465>,  <0.261065, 3.919019, 3.738390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.346512, 3.944649, 3.348465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623310, 0.777287, -0.085499,
		0.752231, 0.625875, 0.205981,
		0.213618, 0.064075, -0.974814,
		0.410597, 3.963871, 3.056021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.329793, 4.615230, 3.510570>,  <0.261065, 3.919019, 3.738390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.329793, 4.615230, 3.510570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.257370, 4.431778, 3.162575>,  <0.213916, 4.321707, 2.953778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.257370, 4.431778, 3.162575>,  <0.329793, 4.615230, 3.510570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.257370, 4.431778, 3.162575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547555, 0.781830, -0.298203,
		0.816947, 0.422374, -0.392680,
		-0.181056, -0.458630, -0.869987,
		0.203053, 4.294189, 2.901579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.377690, 5.105376, 2.865331>,  <0.329793, 4.615230, 3.510570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.377690, 5.105376, 2.865331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.136620, 4.811455, 2.740852>,  <-0.008023, 4.635102, 2.666165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.136620, 4.811455, 2.740852>,  <0.377690, 5.105376, 2.865331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.136620, 4.811455, 2.740852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619147, 0.676612, -0.398563,
		0.503426, -0.047528, -0.862730,
		-0.602676, -0.734804, -0.311197,
		-0.044183, 4.591013, 2.647493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.465195, 5.717221, 1.553595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.478186, 5.340485, 1.419800>,  <-0.485981, 5.114443, 1.339523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.478186, 5.340485, 1.419800>,  <-0.465195, 5.717221, 1.553595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.478186, 5.340485, 1.419800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598545, -0.286344, 0.748165,
		-0.800430, -0.175908, 0.573034,
		-0.032477, -0.941841, -0.334487,
		-0.487929, 5.057932, 1.319454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.557511, 5.332187, 2.125453>,  <-0.465195, 5.717221, 1.553595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.557511, 5.332187, 2.125453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.397301, 5.075745, 1.863594>,  <-0.301175, 4.921879, 1.706479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.397301, 5.075745, 1.863594>,  <-0.557511, 5.332187, 2.125453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.397301, 5.075745, 1.863594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614792, -0.341735, 0.710808,
		-0.679419, -0.687168, 0.257274,
		0.400525, -0.641106, -0.654647,
		-0.277143, 4.883413, 1.667200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.502810, 4.607649, 2.206940>,  <-0.557511, 5.332187, 2.125453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.502810, 4.607649, 2.206940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.174033, 4.632950, 1.980522>,  <0.023234, 4.648130, 1.844671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.174033, 4.632950, 1.980522>,  <-0.502810, 4.607649, 2.206940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.174033, 4.632950, 1.980522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552317, -0.331256, 0.764993,
		-0.139118, -0.941418, -0.307209,
		0.821944, 0.063253, -0.566045,
		0.072550, 4.651926, 1.810708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.322189, 4.002383, 2.112079>,  <-0.502810, 4.607649, 2.206940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.322189, 4.002383, 2.112079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.005725, 4.230545, 2.091728>,  <0.202474, 4.367443, 2.079518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.005725, 4.230545, 2.091728>,  <-0.322189, 4.002383, 2.112079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.005725, 4.230545, 2.091728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369940, -0.459663, 0.807375,
		0.437145, -0.680696, -0.587841,
		0.819786, 0.570406, -0.050877,
		0.251661, 4.401667, 2.076465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.335517, 3.611984, 2.017847>,  <-0.322190, 4.002383, 2.112079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.335517, 3.611984, 2.017847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.394548, 3.946198, 2.229546>,  <0.429967, 4.146726, 2.356565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.394548, 3.946198, 2.229546>,  <0.335517, 3.611984, 2.017847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.394548, 3.946198, 2.229546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361036, -0.543690, 0.757664,
		0.920801, 0.079263, -0.381895,
		0.147577, 0.835535, 0.529247,
		0.438822, 4.196858, 2.388319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.039217, 3.858384, 2.038811>,  <0.335517, 3.611984, 2.017847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.039217, 3.858384, 2.038811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.876123, 3.967316, 2.387428>,  <0.778267, 4.032675, 2.596599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.876123, 3.967316, 2.387428>,  <1.039217, 3.858384, 2.038811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.876123, 3.967316, 2.387428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601875, -0.637625, 0.480813,
		0.686658, 0.720604, 0.096074,
		-0.407735, 0.272330, 0.871544,
		0.753803, 4.049015, 2.648891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.581720, 3.911512, 2.417725>,  <1.039217, 3.858384, 2.038811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.581720, 3.911512, 2.417725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265031, 3.811615, 2.640724>,  <1.075017, 3.751677, 2.774523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265031, 3.811615, 2.640724>,  <1.581720, 3.911512, 2.417725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.265031, 3.811615, 2.640724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560987, -0.658474, 0.501703,
		0.241801, 0.709959, 0.661431,
		-0.791723, -0.249741, 0.557497,
		1.027514, 3.736693, 2.807973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.767788, 3.849965, 3.147878>,  <1.581720, 3.911512, 2.417725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.767788, 3.849965, 3.147878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.430047, 3.641708, 3.097275>,  <1.227403, 3.516755, 3.066913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.430047, 3.641708, 3.097275>,  <1.767788, 3.849965, 3.147878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.430047, 3.641708, 3.097275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493381, -0.847601, 0.195315,
		-0.208917, 0.102498, 0.972547,
		-0.844351, -0.520641, -0.126508,
		1.176742, 3.485516, 3.059322>
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
