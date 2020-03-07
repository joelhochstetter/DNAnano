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
	<2.855600, 3.848876, 3.280880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.122913, 3.568008, 3.182610>,  <3.283301, 3.399488, 3.123647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.122913, 3.568008, 3.182610>,  <2.855600, 3.848876, 3.280880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.122913, 3.568008, 3.182610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716231, 0.518076, 0.467558,
		-0.201026, -0.488422, 0.849136,
		0.668283, -0.702169, -0.245676,
		3.323398, 3.357358, 3.108907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.203408, 3.608459, 3.781001>,  <2.855600, 3.848876, 3.280880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.203408, 3.608459, 3.781001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.466356, 3.540897, 3.487244>,  <3.624125, 3.500360, 3.310989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.466356, 3.540897, 3.487244>,  <3.203408, 3.608459, 3.781001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.466356, 3.540897, 3.487244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686877, 0.535136, 0.491762,
		0.309940, -0.827709, 0.467799,
		0.657371, -0.168903, -0.734394,
		3.663568, 3.490227, 3.266925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.903398, 3.604377, 3.975637>,  <3.203408, 3.608459, 3.781001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.903398, 3.604377, 3.975637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.973885, 3.656151, 3.585316>,  <4.016177, 3.687215, 3.351123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.973885, 3.656151, 3.585316>,  <3.903398, 3.604377, 3.975637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.973885, 3.656151, 3.585316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857998, 0.465697, 0.216715,
		0.482480, -0.875428, -0.028991,
		0.176218, 0.129435, -0.975804,
		4.026750, 3.694981, 3.292574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.590852, 3.572357, 4.069944>,  <3.903398, 3.604377, 3.975637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.590852, 3.572357, 4.069944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.500448, 3.727062, 3.712322>,  <4.446206, 3.819885, 3.497749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.500448, 3.727062, 3.712322>,  <4.590852, 3.572357, 4.069944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.500448, 3.727062, 3.712322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955238, 0.267850, -0.125606,
		0.190893, -0.882423, -0.429988,
		-0.226010, 0.386763, -0.894054,
		4.432645, 3.843091, 3.444106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.110168, 3.404485, 3.461471>,  <4.590852, 3.572357, 4.069944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.110168, 3.404485, 3.461471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.935278, 3.742985, 3.339687>,  <4.830344, 3.946084, 3.266617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.935278, 3.742985, 3.339687>,  <5.110168, 3.404485, 3.461471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.935278, 3.742985, 3.339687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897233, 0.433662, -0.083124,
		0.061688, -0.309515, -0.948891,
		-0.437227, 0.846249, -0.304459,
		4.804110, 3.996860, 3.248350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.451415, 3.571722, 2.789942>,  <5.110168, 3.404485, 3.461471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.451415, 3.571722, 2.789942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.274965, 3.912155, 2.903831>,  <5.169096, 4.116415, 2.972165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.274965, 3.912155, 2.903831>,  <5.451415, 3.571722, 2.789942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.274965, 3.912155, 2.903831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809142, 0.514407, -0.284034,
		-0.388200, 0.105089, -0.915564,
		-0.441123, 0.851083, 0.284724,
		5.142628, 4.167480, 2.989249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.541665, 4.103917, 2.264927>,  <5.451415, 3.571722, 2.789942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.541665, 4.103917, 2.264927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.465601, 4.340893, 2.578068>,  <5.419962, 4.483078, 2.765952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.465601, 4.340893, 2.578068>,  <5.541665, 4.103917, 2.264927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.465601, 4.340893, 2.578068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663384, 0.665355, -0.342380,
		-0.723713, 0.454224, -0.519539,
		-0.190160, 0.592439, 0.782851,
		5.408553, 4.518624, 2.812923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.563275, 4.718482, 1.985396>,  <5.541665, 4.103917, 2.264927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.563275, 4.718482, 1.985396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.605320, 4.788208, 2.377022>,  <5.630547, 4.830044, 2.611997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.605320, 4.788208, 2.377022>,  <5.563275, 4.718482, 1.985396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.605320, 4.788208, 2.377022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704148, 0.682163, -0.197052,
		-0.702230, 0.710118, -0.051039,
		0.105114, 0.174315, 0.979064,
		5.636854, 4.840503, 2.670741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.772939, 0.560015, 2.102541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.961179, 0.562927, 2.455467>,  <2.074124, 0.564675, 2.667223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.961179, 0.562927, 2.455467>,  <1.772939, 0.560015, 2.102541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.961179, 0.562927, 2.455467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819619, -0.366689, 0.440187,
		0.326741, -0.930315, -0.166596,
		0.470601, 0.007281, 0.882316,
		2.102360, 0.565111, 2.720162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.783962, -0.090221, 2.448192>,  <1.772939, 0.560015, 2.102541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.783962, -0.090221, 2.448192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.792671, 0.205910, 2.716949>,  <1.797896, 0.383588, 2.878204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.792671, 0.205910, 2.716949>,  <1.783962, -0.090221, 2.448192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.792671, 0.205910, 2.716949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852840, -0.336953, 0.398906,
		0.521718, -0.581703, 0.624045,
		0.021771, 0.740327, 0.671895,
		1.799202, 0.428008, 2.918518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.859231, -0.364321, 3.198848>,  <1.783962, -0.090221, 2.448192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.859231, -0.364321, 3.198848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.651416, -0.027428, 3.141266>,  <1.526728, 0.174709, 3.106716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.651416, -0.027428, 3.141266>,  <1.859231, -0.364321, 3.198848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.651416, -0.027428, 3.141266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823424, -0.448529, 0.347555,
		0.228154, 0.299105, 0.926543,
		-0.519536, 0.842234, -0.143957,
		1.495555, 0.225243, 3.098079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.352215, -0.311645, 3.787332>,  <1.859231, -0.364321, 3.198848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.352215, -0.311645, 3.787332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.207545, -0.106026, 3.476219>,  <1.120743, 0.017346, 3.289551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.207545, -0.106026, 3.476219>,  <1.352215, -0.311645, 3.787332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.207545, -0.106026, 3.476219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896886, -0.419607, 0.139734,
		-0.254533, 0.748120, 0.612804,
		-0.361675, 0.514049, -0.777782,
		1.099042, 0.048189, 3.242884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.711149, -0.019623, 4.005792>,  <1.352215, -0.311645, 3.787332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.711149, -0.019623, 4.005792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.697671, -0.066589, 3.608788>,  <0.689584, -0.094769, 3.370585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.697671, -0.066589, 3.608788>,  <0.711149, -0.019623, 4.005792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.697671, -0.066589, 3.608788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881404, -0.464672, 0.084894,
		-0.471161, 0.877663, -0.087835,
		-0.033694, -0.117417, -0.992511,
		0.687563, -0.101814, 3.311034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.031570, 0.201315, 3.814500>,  <0.711149, -0.019623, 4.005792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.031570, 0.201315, 3.814500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.159172, -0.027115, 3.511948>,  <0.235732, -0.164173, 3.330416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.159172, -0.027115, 3.511948>,  <0.031570, 0.201315, 3.814500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.159172, -0.027115, 3.511948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889611, -0.455655, -0.031170,
		-0.326848, 0.682828, -0.653389,
		0.319003, -0.571074, -0.756381,
		0.254872, -0.198437, 3.285033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.486363, 0.260686, 3.306702>,  <0.031570, 0.201315, 3.814500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.486363, 0.260686, 3.306702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.268162, -0.067619, 3.238846>,  <-0.137242, -0.264602, 3.198132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.268162, -0.067619, 3.238846>,  <-0.486363, 0.260686, 3.306702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.268162, -0.067619, 3.238846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836720, -0.544977, -0.053852,
		-0.048250, 0.171318, -0.984033,
		0.545501, -0.820762, -0.169640,
		-0.104512, -0.313848, 3.187953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.769318, 0.041616, 2.744229>,  <-0.486363, 0.260686, 3.306702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.769318, 0.041616, 2.744229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.606952, -0.260590, 2.949921>,  <-0.509533, -0.441913, 3.073335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.606952, -0.260590, 2.949921>,  <-0.769318, 0.041616, 2.744229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.606952, -0.260590, 2.949921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856018, -0.511385, -0.075624,
		0.320104, -0.409491, -0.854313,
		0.405915, -0.755515, 0.514228,
		-0.485178, -0.487244, 3.104189>
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
