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
	<3.567434, 2.733855, 1.173229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.696541, 2.920723, 1.502488>,  <3.774005, 3.032844, 1.700044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.696541, 2.920723, 1.502488>,  <3.567434, 2.733855, 1.173229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.696541, 2.920723, 1.502488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659704, 0.512583, -0.549590,
		-0.678684, 0.720424, -0.142750,
		0.322767, 0.467171, 0.823148,
		3.793371, 3.060874, 1.749433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.524006, 3.478391, 1.048879>,  <3.567434, 2.733855, 1.173229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.524006, 3.478391, 1.048879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.806419, 3.358551, 1.305552>,  <3.975867, 3.286647, 1.459556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.806419, 3.358551, 1.305552>,  <3.524006, 3.478391, 1.048879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.806419, 3.358551, 1.305552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695513, 0.463950, -0.548645,
		-0.133334, 0.833661, 0.535940,
		0.706033, -0.299600, 0.641683,
		4.018229, 3.268671, 1.498057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.553757, 3.569905, 0.221310>,  <3.524006, 3.478391, 1.048879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.553757, 3.569905, 0.221310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.786835, 3.735527, -0.058411>,  <3.926681, 3.834900, -0.226244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.786835, 3.735527, -0.058411>,  <3.553757, 3.569905, 0.221310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.786835, 3.735527, -0.058411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729974, -0.644883, 0.226416,
		-0.357220, -0.642405, -0.678019,
		0.582694, 0.414056, -0.699304,
		3.961643, 3.859744, -0.268202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.661858, 3.148211, -0.364358>,  <3.553757, 3.569905, 0.221310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.661858, 3.148211, -0.364358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.968597, 3.400963, -0.319326>,  <4.152641, 3.552613, -0.292307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.968597, 3.400963, -0.319326>,  <3.661858, 3.148211, -0.364358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.968597, 3.400963, -0.319326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605445, -0.770380, 0.199879,
		0.213028, -0.085117, -0.973331,
		0.766848, 0.631878, 0.112579,
		4.198652, 3.590526, -0.285552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.223461, 2.913603, -0.768708>,  <3.661858, 3.148211, -0.364358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.223461, 2.913603, -0.768708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.378357, 3.135574, -0.474199>,  <4.471294, 3.268757, -0.297493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.378357, 3.135574, -0.474199>,  <4.223461, 2.913603, -0.768708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.378357, 3.135574, -0.474199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655984, -0.726986, 0.202918,
		0.647866, 0.404406, -0.645543,
		0.387240, 0.554929, 0.736273,
		4.494529, 3.302053, -0.253317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.910269, 2.826461, -0.812068>,  <4.223461, 2.913603, -0.768708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.910269, 2.826461, -0.812068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.845161, 2.943649, -0.435202>,  <4.806097, 3.013962, -0.209082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.845161, 2.943649, -0.435202>,  <4.910269, 2.826461, -0.812068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.845161, 2.943649, -0.435202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715091, -0.622902, 0.317233,
		0.679817, 0.725370, -0.108111,
		-0.162769, 0.292970, 0.942165,
		4.796331, 3.031540, -0.152553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.636549, 2.914957, -0.539724>,  <4.910269, 2.826461, -0.812068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.636549, 2.914957, -0.539724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.419838, 2.928619, -0.203793>,  <5.289812, 2.936817, -0.002234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.419838, 2.928619, -0.203793>,  <5.636549, 2.914957, -0.539724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.419838, 2.928619, -0.203793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684519, -0.561899, 0.464439,
		0.487762, 0.826500, 0.281044,
		-0.541777, 0.034156, 0.839828,
		5.257305, 2.938866, 0.048156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.045561, 3.195230, -0.003310>,  <5.636549, 2.914957, -0.539724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.045561, 3.195230, -0.003310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.753082, 2.949013, 0.114304>,  <5.577595, 2.801282, 0.184872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.753082, 2.949013, 0.114304>,  <6.045561, 3.195230, -0.003310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.753082, 2.949013, 0.114304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625672, -0.433397, 0.648615,
		-0.271817, 0.658235, 0.702027,
		-0.731197, -0.615544, 0.294035,
		5.533723, 2.764350, 0.202514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.668139, 2.399727, -0.200256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.603203, 2.261345, 0.169384>,  <1.564241, 2.178316, 0.391168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.603203, 2.261345, 0.169384>,  <1.668139, 2.399727, -0.200256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.603203, 2.261345, 0.169384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764440, 0.636267, 0.103906,
		-0.623921, -0.689550, -0.367754,
		-0.162341, -0.345955, 0.924100,
		1.554500, 2.157558, 0.446614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.964632, 2.181044, 0.067052>,  <1.668139, 2.399727, -0.200256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.964632, 2.181044, 0.067052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.061584, 2.246094, 0.449633>,  <1.119756, 2.285123, 0.679182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.061584, 2.246094, 0.449633>,  <0.964632, 2.181044, 0.067052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.061584, 2.246094, 0.449633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864381, 0.483879, 0.136776,
		-0.440565, -0.859893, 0.257850,
		0.242381, 0.162622, 0.956455,
		1.134299, 2.294881, 0.736570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.474037, 1.882802, 0.666258>,  <0.964632, 2.181044, 0.067052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.474037, 1.882802, 0.666258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.648849, 2.239799, 0.710904>,  <0.753737, 2.453998, 0.737691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.648849, 2.239799, 0.710904>,  <0.474037, 1.882802, 0.666258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.648849, 2.239799, 0.710904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888622, 0.447628, -0.099898,
		-0.139120, -0.055524, 0.988718,
		0.437031, 0.892494, 0.111614,
		0.779959, 2.507548, 0.744388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.031869, 2.268688, 1.094383>,  <0.474037, 1.882802, 0.666258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.031869, 2.268688, 1.094383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.254555, 2.507591, 0.863436>,  <0.388166, 2.650933, 0.724868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.254555, 2.507591, 0.863436>,  <0.031869, 2.268688, 1.094383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.254555, 2.507591, 0.863436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815822, 0.524066, -0.244517,
		0.156539, 0.607154, 0.779012,
		0.556713, 0.597259, -0.577367,
		0.421569, 2.686769, 0.690226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.338486, 2.886802, 1.152567>,  <0.031869, 2.268688, 1.094383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.338486, 2.886802, 1.152567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.146263, 2.935524, 0.805182>,  <-0.030929, 2.964757, 0.596750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.146263, 2.935524, 0.805182>,  <-0.338486, 2.886802, 1.152567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.146263, 2.935524, 0.805182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630652, 0.736138, -0.245720,
		0.609379, 0.665781, 0.430573,
		0.480557, 0.121805, -0.868463,
		-0.002096, 2.972065, 0.544643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.350460, 3.549971, 1.032270>,  <-0.338486, 2.886802, 1.152567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.350460, 3.549971, 1.032270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.282333, 3.403183, 0.666467>,  <-0.241457, 3.315110, 0.446985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.282333, 3.403183, 0.666467>,  <-0.350460, 3.549971, 1.032270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.282333, 3.403183, 0.666467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415860, 0.814603, -0.404330,
		0.893338, 0.449171, -0.013868,
		0.170317, -0.366971, -0.914508,
		-0.231238, 3.293092, 0.392115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.079163, 4.093155, 0.679632>,  <-0.350460, 3.549971, 1.032270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.079163, 4.093155, 0.679632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.226990, 3.845123, 0.402816>,  <-0.315686, 3.696304, 0.236726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.226990, 3.845123, 0.402816>,  <-0.079163, 4.093155, 0.679632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.226990, 3.845123, 0.402816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479620, 0.765183, -0.429488,
		0.795855, 0.173193, -0.580188,
		-0.369566, -0.620080, -0.692042,
		-0.337860, 3.659099, 0.195203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.106486, 4.421077, -0.018083>,  <-0.079163, 4.093155, 0.679632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.106486, 4.421077, -0.018083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.197815, 4.168015, -0.076051>,  <-0.380395, 4.016177, -0.110832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.197815, 4.168015, -0.076051>,  <0.106486, 4.421077, -0.018083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.197815, 4.168015, -0.076051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515075, 0.724341, -0.458288,
		0.394910, -0.273999, -0.876909,
		-0.760752, -0.632657, -0.144920,
		-0.426041, 3.978217, -0.119527>
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
