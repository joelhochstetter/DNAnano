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
	<-1.206901, -0.076112, 2.523986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.255819, -0.200943, 2.147125>,  <-1.285170, -0.275841, 1.921009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.255819, -0.200943, 2.147125>,  <-1.206901, -0.076112, 2.523986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.255819, -0.200943, 2.147125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979781, 0.113487, -0.164772,
		0.158344, -0.943254, 0.291887,
		-0.122296, -0.312076, -0.942153,
		-1.292508, -0.294566, 1.864479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.598363, -0.409087, 2.364778>,  <-1.206901, -0.076112, 2.523986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.598363, -0.409087, 2.364778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.710554, -0.323471, 1.990501>,  <-0.777869, -0.272101, 1.765935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.710554, -0.323471, 1.990501>,  <-0.598363, -0.409087, 2.364778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.710554, -0.323471, 1.990501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937489, 0.270322, -0.219180,
		0.206024, -0.938676, -0.276479,
		-0.280477, 0.214040, -0.935692,
		-0.794697, -0.259259, 1.709794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.201536, -0.668020, 1.983913>,  <-0.598363, -0.409087, 2.364778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.201536, -0.668020, 1.983913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.334635, -0.348320, 1.783722>,  <-0.414494, -0.156500, 1.663607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.334635, -0.348320, 1.783722>,  <-0.201536, -0.668020, 1.983913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.334635, -0.348320, 1.783722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936882, 0.340617, -0.078936,
		0.107381, -0.495154, -0.862144,
		-0.332747, 0.799251, -0.500477,
		-0.434459, -0.108545, 1.633579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.350254, -0.188533, 1.987760>,  <-0.201536, -0.668020, 1.983913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.350254, -0.188533, 1.987760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.167345, 0.026276, 1.704208>,  <0.057600, 0.155161, 1.534077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.167345, 0.026276, 1.704208>,  <0.350254, -0.188533, 1.987760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.167345, 0.026276, 1.704208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815763, 0.570719, -0.093862,
		0.354165, -0.621199, -0.699056,
		-0.457272, 0.537022, -0.708880,
		0.030163, 0.187382, 1.491544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.788316, -0.238046, 1.475502>,  <0.350254, -0.188533, 1.987760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.788316, -0.238046, 1.475502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.554409, 0.074524, 1.388397>,  <0.414065, 0.262066, 1.336134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.554409, 0.074524, 1.388397>,  <0.788316, -0.238046, 1.475502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.554409, 0.074524, 1.388397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807709, 0.585759, -0.067026,
		0.075181, -0.215084, -0.973698,
		-0.584768, 0.781425, -0.217763,
		0.378979, 0.308951, 1.323068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.024439, 0.141022, 0.880466>,  <0.788316, -0.238046, 1.475502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.024439, 0.141022, 0.880466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802313, 0.415741, 1.068054>,  <0.669037, 0.580572, 1.180607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802313, 0.415741, 1.068054>,  <1.024439, 0.141022, 0.880466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.802313, 0.415741, 1.068054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711349, 0.684394, -0.159960,
		-0.430821, 0.244773, -0.868608,
		-0.555316, 0.686797, 0.468970,
		0.635718, 0.621780, 1.208745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.877509, 0.723854, 0.449604>,  <1.024439, 0.141022, 0.880466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.877509, 0.723854, 0.449604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.875059, 0.851570, 0.828659>,  <0.873589, 0.928200, 1.056092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.875059, 0.851570, 0.828659>,  <0.877509, 0.723854, 0.449604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.875059, 0.851570, 0.828659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675865, 0.699757, -0.231402,
		-0.737000, 0.639057, -0.220083,
		-0.006125, 0.319290, 0.947637,
		0.873222, 0.947357, 1.112950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.090497, 1.356671, 0.418763>,  <0.877509, 0.723854, 0.449604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.090497, 1.356671, 0.418763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.162340, 1.272240, 0.803093>,  <1.205446, 1.221581, 1.033691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.162340, 1.272240, 0.803093>,  <1.090497, 1.356671, 0.418763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.162340, 1.272240, 0.803093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668360, 0.742854, 0.038256,
		-0.721828, 0.635307, 0.274500,
		0.179609, -0.211079, 0.960826,
		1.216223, 1.208916, 1.091341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.008652, 1.487220, 0.661632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.038589, 1.769188, 0.943764>,  <2.056550, 1.938368, 1.113043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.038589, 1.769188, 0.943764>,  <2.008652, 1.487220, 0.661632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.038589, 1.769188, 0.943764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679597, -0.481564, 0.553394,
		0.729758, -0.520755, 0.443021,
		0.074840, 0.704919, 0.705328,
		2.061041, 1.980664, 1.155362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.228204, 1.139459, 1.268697>,  <2.008652, 1.487220, 0.661632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.228204, 1.139459, 1.268697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.991751, 1.460861, 1.296822>,  <1.849880, 1.653702, 1.313697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.991751, 1.460861, 1.296822>,  <2.228204, 1.139459, 1.268697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.991751, 1.460861, 1.296822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653143, -0.528008, 0.542782,
		0.473254, 0.274931, 0.836925,
		-0.591130, 0.803505, 0.070313,
		1.814412, 1.701913, 1.317915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.963606, 1.229493, 2.019030>,  <2.228204, 1.139459, 1.268697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.963606, 1.229493, 2.019030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.700228, 1.406982, 1.775864>,  <1.542202, 1.513476, 1.629964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.700228, 1.406982, 1.775864>,  <1.963606, 1.229493, 2.019030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.700228, 1.406982, 1.775864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706464, -0.642920, 0.295909,
		-0.259539, 0.624310, 0.736802,
		-0.658444, 0.443724, -0.607915,
		1.502695, 1.540100, 1.593489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.302373, 1.188040, 2.395431>,  <1.963606, 1.229493, 2.019030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.302373, 1.188040, 2.395431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213615, 1.260216, 2.012138>,  <1.160361, 1.303521, 1.782163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.213615, 1.260216, 2.012138>,  <1.302373, 1.188040, 2.395431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.213615, 1.260216, 2.012138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714691, -0.698617, 0.033944,
		-0.663311, 0.692370, 0.283977,
		-0.221893, 0.180440, -0.958230,
		1.147048, 1.314348, 1.724669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.580750, 1.536967, 2.255220>,  <1.302373, 1.188040, 2.395431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.580750, 1.536967, 2.255220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.664229, 1.361397, 1.905640>,  <0.714316, 1.256055, 1.695891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.664229, 1.361397, 1.905640>,  <0.580750, 1.536967, 2.255220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.664229, 1.361397, 1.905640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874930, -0.483077, 0.033685,
		-0.436970, 0.757616, -0.484846,
		0.208698, -0.438925, -0.873951,
		0.726838, 1.229719, 1.643454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.030770, 1.512156, 1.810798>,  <0.580750, 1.536967, 2.255220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.030770, 1.512156, 1.810798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.181014, 1.242134, 1.605286>,  <0.308085, 1.080121, 1.481978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.181014, 1.242134, 1.605286>,  <-0.030770, 1.512156, 1.810798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.181014, 1.242134, 1.605286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841896, -0.492592, -0.220374,
		-0.104320, 0.549230, -0.829135,
		0.529461, -0.675056, -0.513782,
		0.339852, 1.039618, 1.451151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.297569, 1.434715, 1.152539>,  <-0.030770, 1.512156, 1.810798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.297569, 1.434715, 1.152539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.114975, 1.085167, 1.219437>,  <-0.005419, 0.875438, 1.259575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.114975, 1.085167, 1.219437>,  <-0.297569, 1.434715, 1.152539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.114975, 1.085167, 1.219437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836711, -0.485549, -0.253290,
		0.302548, -0.024312, -0.952824,
		0.456485, -0.873871, 0.167244,
		0.021970, 0.823006, 1.269610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.772869, 0.999396, 0.890162>,  <-0.297569, 1.434715, 1.152539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.772869, 0.999396, 0.890162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.495624, 0.750015, 1.034882>,  <-0.329276, 0.600387, 1.121714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.495624, 0.750015, 1.034882>,  <-0.772869, 0.999396, 0.890162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.495624, 0.750015, 1.034882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684924, -0.726057, 0.060997,
		0.224658, -0.290083, -0.930258,
		0.693114, -0.623453, 0.361799,
		-0.287689, 0.562979, 1.143421>
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
