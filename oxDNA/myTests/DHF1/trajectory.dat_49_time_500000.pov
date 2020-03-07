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
	<0.438370, 1.192228, 4.191384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.287580, 0.852028, 4.044664>,  <0.197107, 0.647908, 3.956633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.287580, 0.852028, 4.044664>,  <0.438370, 1.192228, 4.191384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.287580, 0.852028, 4.044664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624489, 0.059077, -0.778796,
		0.684035, -0.522647, 0.508857,
		-0.376974, -0.850500, -0.366798,
		0.174488, 0.596878, 3.934625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.436728, 1.509138, 3.457259>,  <0.438370, 1.192228, 4.191384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.436728, 1.509138, 3.457259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.719519, 1.545158, 3.176666>,  <0.889193, 1.566771, 3.008311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.719519, 1.545158, 3.176666>,  <0.436728, 1.509138, 3.457259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.719519, 1.545158, 3.176666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638217, -0.346140, -0.687652,
		-0.304735, 0.933851, -0.187241,
		0.706976, 0.090051, -0.701481,
		0.931612, 1.572174, 2.966222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.768656, 1.030327, 2.937132>,  <0.436728, 1.509138, 3.457259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.768656, 1.030327, 2.937132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.001123, 0.716362, 3.023067>,  <1.140604, 0.527983, 3.074629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.001123, 0.716362, 3.023067>,  <0.768656, 1.030327, 2.937132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.001123, 0.716362, 3.023067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810494, -0.534575, 0.239435,
		-0.073088, -0.313278, -0.946845,
		0.581169, -0.784912, 0.214838,
		1.175474, 0.480888, 3.087519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.508686, 0.473317, 2.745715>,  <0.768656, 1.030327, 2.937132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.508686, 0.473317, 2.745715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.743788, 0.374603, 3.053907>,  <0.884849, 0.315375, 3.238823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.743788, 0.374603, 3.053907>,  <0.508686, 0.473317, 2.745715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.743788, 0.374603, 3.053907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798792, -0.328113, 0.504256,
		0.128363, -0.911833, -0.389979,
		0.587754, -0.246784, 0.770482,
		0.920114, 0.300568, 3.285052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.387994, -0.216992, 2.915703>,  <0.508686, 0.473317, 2.745715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.387994, -0.216992, 2.915703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.509249, -0.001312, 3.229996>,  <0.582002, 0.128095, 3.418571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.509249, -0.001312, 3.229996>,  <0.387994, -0.216992, 2.915703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.509249, -0.001312, 3.229996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769606, -0.347721, 0.535535,
		0.561975, -0.767043, 0.309563,
		0.303137, 0.539198, 0.785731,
		0.600190, 0.160447, 3.465715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.191886, -0.636509, 3.491206>,  <0.387994, -0.216992, 2.915703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.191886, -0.636509, 3.491206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.235559, -0.259506, 3.617544>,  <0.261763, -0.033304, 3.693347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.235559, -0.259506, 3.617544>,  <0.191886, -0.636509, 3.491206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.235559, -0.259506, 3.617544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819296, -0.094600, 0.565513,
		0.562879, -0.320516, 0.761864,
		0.109183, 0.942508, 0.315846,
		0.268314, 0.023246, 3.712298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.231780, -0.625657, 4.188749>,  <0.191886, -0.636509, 3.491206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.231780, -0.625657, 4.188749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.068789, -0.276520, 4.081339>,  <-0.029006, -0.067037, 4.016893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.068789, -0.276520, 4.081339>,  <0.231780, -0.625657, 4.188749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.068789, -0.276520, 4.081339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770142, -0.170429, 0.614683,
		0.490758, 0.457272, 0.741660,
		-0.407478, 0.872844, -0.268525,
		-0.053455, -0.014667, 4.000782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.210731, -0.487080, 4.700551>,  <0.231780, -0.625657, 4.188749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.210731, -0.487080, 4.700551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.318295, -0.220261, 4.422634>,  <-0.382833, -0.060169, 4.255884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.318295, -0.220261, 4.422634>,  <-0.210731, -0.487080, 4.700551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.318295, -0.220261, 4.422634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907078, 0.067179, 0.415567,
		0.323879, 0.741981, 0.586999,
		-0.268909, 0.667047, -0.694792,
		-0.398967, -0.020146, 4.214197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.023062, 2.216469, 4.135186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.735898, 1.963165, 4.019539>,  <-0.563600, 1.811183, 3.950151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.735898, 1.963165, 4.019539>,  <-1.023062, 2.216469, 4.135186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.735898, 1.963165, 4.019539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692994, 0.610694, 0.383161,
		-0.066079, -0.475431, 0.877268,
		0.717909, -0.633260, -0.289117,
		-0.520526, 1.773187, 3.932804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.556753, 2.268122, 4.629827>,  <-1.023062, 2.216469, 4.135186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.556753, 2.268122, 4.629827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.397011, 2.167030, 4.277317>,  <-0.301166, 2.106375, 4.065811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.397011, 2.167030, 4.277317>,  <-0.556753, 2.268122, 4.629827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.397011, 2.167030, 4.277317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595921, 0.802045, 0.040037,
		0.696703, -0.541158, 0.470907,
		0.399354, -0.252729, -0.881274,
		-0.277205, 2.091212, 4.012935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.179633, 2.212573, 4.706192>,  <-0.556753, 2.268122, 4.629827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.179633, 2.212573, 4.706192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.118269, 2.275902, 4.316032>,  <0.081451, 2.313899, 4.081937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.118269, 2.275902, 4.316032>,  <0.179633, 2.212573, 4.706192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.118269, 2.275902, 4.316032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743375, 0.668823, -0.008357,
		0.651045, -0.726368, -0.220296,
		-0.153409, 0.158321, -0.975397,
		0.072246, 2.323398, 4.023413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.786999, 2.730420, 4.540611>,  <0.179633, 2.212573, 4.706192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.786999, 2.730420, 4.540611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596545, 2.783676, 4.192917>,  <0.482273, 2.815630, 3.984301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.596545, 2.783676, 4.192917>,  <0.786999, 2.730420, 4.540611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.596545, 2.783676, 4.192917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728512, 0.613334, -0.305109,
		0.492509, -0.778521, -0.389024,
		-0.476136, 0.133140, -0.869235,
		0.453705, 2.823618, 3.932147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.128307, 3.319437, 4.726182>,  <0.786999, 2.730420, 4.540611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.128307, 3.319437, 4.726182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.323802, 3.646538, 4.847782>,  <1.441100, 3.842798, 4.920742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.323802, 3.646538, 4.847782>,  <1.128307, 3.319437, 4.726182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.323802, 3.646538, 4.847782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789916, -0.562705, 0.243715,
		0.370361, 0.121020, -0.920971,
		0.488740, 0.817752, 0.303999,
		1.470424, 3.891863, 4.938982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.811791, 3.171077, 4.471275>,  <1.128307, 3.319437, 4.726182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.811791, 3.171077, 4.471275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846287, 3.453247, 4.752682>,  <1.866984, 3.622549, 4.921526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.846287, 3.453247, 4.752682>,  <1.811791, 3.171077, 4.471275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.846287, 3.453247, 4.752682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834310, -0.437077, 0.335991,
		0.544509, 0.557976, -0.626237,
		0.086239, 0.705426, 0.703518,
		1.872158, 3.664875, 4.963737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.497970, 3.427329, 4.664070>,  <1.811791, 3.171077, 4.471275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.497970, 3.427329, 4.664070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.311618, 3.489357, 5.012531>,  <2.199807, 3.526574, 5.221608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.311618, 3.489357, 5.012531>,  <2.497970, 3.427329, 4.664070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.311618, 3.489357, 5.012531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809917, -0.321767, 0.490408,
		0.356356, 0.934034, 0.024312,
		-0.465880, 0.155069, 0.871154,
		2.171854, 3.535878, 5.273878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.200985, 3.582183, 4.550104>,  <2.497970, 3.427329, 4.664070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.200985, 3.582183, 4.550104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.162553, 3.184319, 4.565178>,  <3.139494, 2.945600, 4.574223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.162553, 3.184319, 4.565178>,  <3.200985, 3.582183, 4.550104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.162553, 3.184319, 4.565178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066345, -0.044176, -0.996818,
		0.993160, -0.093274, 0.070235,
		-0.096080, -0.994660, 0.037685,
		3.133729, 2.885921, 4.576483>
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
