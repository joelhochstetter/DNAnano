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
	<-1.142323, 1.304319, 1.687153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.032806, 0.927151, 1.762983>,  <-0.967096, 0.700850, 1.808482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.032806, 0.927151, 1.762983>,  <-1.142323, 1.304319, 1.687153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.032806, 0.927151, 1.762983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906152, 0.186825, -0.379454,
		0.322377, 0.275676, 0.905580,
		0.273792, -0.942921, 0.189576,
		-0.950669, 0.644275, 1.819856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.420343, 1.351016, 1.970948>,  <-1.142323, 1.304319, 1.687153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.420343, 1.351016, 1.970948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.485512, 1.008919, 1.774168>,  <-0.524613, 0.803660, 1.656100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.485512, 1.008919, 1.774168>,  <-0.420343, 1.351016, 1.970948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.485512, 1.008919, 1.774168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902665, 0.072087, -0.424264,
		0.398312, -0.513188, 0.760254,
		-0.162922, -0.855244, -0.491949,
		-0.534389, 0.752346, 1.626583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.169476, 0.876684, 1.958382>,  <-0.420343, 1.351016, 1.970948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.169476, 0.876684, 1.958382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.035114, 0.792118, 1.625229>,  <-0.157869, 0.741378, 1.425337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.035114, 0.792118, 1.625229>,  <0.169476, 0.876684, 1.958382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.035114, 0.792118, 1.625229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858140, -0.175962, -0.482321,
		-0.044585, -0.961427, 0.271425,
		-0.511477, -0.211416, -0.832883,
		-0.188557, 0.728693, 1.375364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.378568, 0.158096, 1.630662>,  <0.169476, 0.876684, 1.958382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.378568, 0.158096, 1.630662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.222012, 0.380051, 1.337019>,  <0.128078, 0.513223, 1.160833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.222012, 0.380051, 1.337019>,  <0.378568, 0.158096, 1.630662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.222012, 0.380051, 1.337019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843043, -0.103597, -0.527774,
		-0.368906, -0.825451, -0.427246,
		-0.391391, 0.554886, -0.734108,
		0.104594, 0.546516, 1.116786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.604139, -0.129998, 1.030472>,  <0.378568, 0.158096, 1.630662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.604139, -0.129998, 1.030472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.556454, 0.252224, 0.922619>,  <0.527842, 0.481557, 0.857907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.556454, 0.252224, 0.922619>,  <0.604139, -0.129998, 1.030472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.556454, 0.252224, 0.922619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978632, 0.067264, -0.194308,
		-0.167535, -0.287035, -0.943156,
		-0.119213, 0.955555, -0.269633,
		0.520690, 0.538891, 0.841729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.034167, -0.121542, 0.459686>,  <0.604139, -0.129998, 1.030472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.034167, -0.121542, 0.459686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978035, 0.269157, 0.524519>,  <0.944356, 0.503577, 0.563419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.978035, 0.269157, 0.524519>,  <1.034167, -0.121542, 0.459686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.978035, 0.269157, 0.524519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874023, 0.199118, -0.443211,
		-0.465179, 0.079468, -0.881642,
		-0.140329, 0.976748, 0.162083,
		0.935936, 0.562182, 0.573144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.859227, 0.211520, -0.160832>,  <1.034167, -0.121542, 0.459686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.859227, 0.211520, -0.160832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.009716, 0.478821, 0.095884>,  <1.100010, 0.639202, 0.249914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.009716, 0.478821, 0.095884>,  <0.859227, 0.211520, -0.160832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.009716, 0.478821, 0.095884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822069, 0.078762, -0.563914,
		-0.427386, 0.739753, -0.519718,
		0.376223, 0.668253, 0.641790,
		1.122583, 0.679297, 0.288421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.277164, 0.673738, -0.611913>,  <0.859227, 0.211520, -0.160832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.277164, 0.673738, -0.611913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.432465, 0.768623, -0.255713>,  <1.525645, 0.825554, -0.041992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.432465, 0.768623, -0.255713>,  <1.277164, 0.673738, -0.611913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.432465, 0.768623, -0.255713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900050, 0.109921, -0.421696,
		-0.197916, 0.965219, -0.170826,
		0.388252, 0.237212, 0.890500,
		1.548940, 0.839787, 0.011438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.341387, 0.526571, -0.448837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.550835, 0.812126, -0.262854>,  <2.676504, 0.983459, -0.151264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.550835, 0.812126, -0.262854>,  <2.341387, 0.526571, -0.448837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.550835, 0.812126, -0.262854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752506, 0.131666, 0.645289,
		0.399445, -0.687770, 0.606148,
		0.523620, 0.713888, 0.464958,
		2.707921, 1.026292, -0.123366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.518336, 0.442694, 0.228617>,  <2.341387, 0.526571, -0.448837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.518336, 0.442694, 0.228617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.436020, 0.828915, 0.164917>,  <2.386631, 1.060647, 0.126697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.436020, 0.828915, 0.164917>,  <2.518336, 0.442694, 0.228617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.436020, 0.828915, 0.164917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845128, -0.093310, 0.526358,
		0.493366, 0.242905, 0.835217,
		-0.205789, 0.965552, -0.159250,
		2.374283, 1.118580, 0.117142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.358996, 0.816932, 0.870203>,  <2.518336, 0.442694, 0.228617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.358996, 0.816932, 0.870203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.179382, 0.975876, 0.550085>,  <2.071614, 1.071242, 0.358014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.179382, 0.975876, 0.550085>,  <2.358996, 0.816932, 0.870203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.179382, 0.975876, 0.550085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889634, -0.115448, 0.441840,
		0.083177, 0.910372, 0.405344,
		-0.449035, 0.397359, -0.800296,
		2.044672, 1.095083, 0.309996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.969737, 1.297351, 1.166107>,  <2.358996, 0.816932, 0.870203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.969737, 1.297351, 1.166107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.821785, 1.194347, 0.809034>,  <1.733014, 1.132545, 0.594791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.821785, 1.194347, 0.809034>,  <1.969737, 1.297351, 1.166107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.821785, 1.194347, 0.809034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913341, -0.075326, 0.400169,
		-0.170289, 0.963335, -0.207332,
		-0.369879, -0.257508, -0.892681,
		1.710821, 1.117095, 0.541230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.399055, 1.642434, 1.072898>,  <1.969737, 1.297351, 1.166107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.399055, 1.642434, 1.072898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329491, 1.351761, 0.807060>,  <1.287752, 1.177357, 0.647557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.329491, 1.351761, 0.807060>,  <1.399055, 1.642434, 1.072898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.329491, 1.351761, 0.807060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946144, -0.063839, 0.317390,
		-0.273070, 0.684000, -0.676445,
		-0.173911, -0.726684, -0.664595,
		1.277317, 1.133756, 0.607682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.844819, 1.876772, 0.858671>,  <1.399055, 1.642434, 1.072898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.844819, 1.876772, 0.858671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.859482, 1.487801, 0.766548>,  <0.868279, 1.254418, 0.711275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.859482, 1.487801, 0.766548>,  <0.844819, 1.876772, 0.858671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.859482, 1.487801, 0.766548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921905, -0.121850, 0.367755,
		-0.385678, 0.198840, -0.900952,
		0.036657, -0.972427, -0.230307,
		0.870479, 1.196072, 0.697456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.230582, 1.762611, 0.470880>,  <0.844819, 1.876772, 0.858671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.230582, 1.762611, 0.470880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334435, 1.398552, 0.600014>,  <0.396746, 1.180116, 0.677494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.334435, 1.398552, 0.600014>,  <0.230582, 1.762611, 0.470880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.334435, 1.398552, 0.600014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901907, -0.109033, 0.417942,
		-0.345190, -0.399678, -0.849177,
		0.259631, -0.910148, 0.322835,
		0.412324, 1.125508, 0.696864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.214689, 1.202472, 0.128968>,  <0.230582, 1.762611, 0.470880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.214689, 1.202472, 0.128968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.091560, 1.108978, 0.497883>,  <-0.017683, 1.052882, 0.719232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.091560, 1.108978, 0.497883>,  <-0.214689, 1.202472, 0.128968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.091560, 1.108978, 0.497883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946093, -0.177860, 0.270692,
		0.100769, -0.955895, -0.275882,
		0.307822, -0.233732, 0.922288,
		0.000786, 1.038858, 0.774569>
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
