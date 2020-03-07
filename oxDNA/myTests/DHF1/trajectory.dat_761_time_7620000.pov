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
	<2.153468, 4.059654, 4.092254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.859993, 4.233715, 4.301001>,  <1.683908, 4.338151, 4.426249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.859993, 4.233715, 4.301001>,  <2.153468, 4.059654, 4.092254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.859993, 4.233715, 4.301001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596768, -0.779919, -0.188666,
		0.324915, -0.449855, 0.831902,
		-0.733688, 0.435153, 0.521866,
		1.639886, 4.364261, 4.457561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.772658, 3.500947, 4.446381>,  <2.153468, 4.059654, 4.092254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.772658, 3.500947, 4.446381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.520050, 3.811079, 4.449118>,  <1.368485, 3.997158, 4.450759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.520050, 3.811079, 4.449118>,  <1.772658, 3.500947, 4.446381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.520050, 3.811079, 4.449118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774402, -0.631154, 0.044104,
		0.038513, 0.022555, 0.999003,
		-0.631520, 0.775329, 0.006841,
		1.330594, 4.043678, 4.451170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.381301, 3.572874, 5.058330>,  <1.772658, 3.500947, 4.446381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.381301, 3.572874, 5.058330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.224728, 3.673140, 4.704166>,  <1.130784, 3.733299, 4.491668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.224728, 3.673140, 4.704166>,  <1.381301, 3.572874, 5.058330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.224728, 3.673140, 4.704166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555010, -0.831785, 0.009882,
		-0.733992, 0.495279, 0.464709,
		-0.391433, 0.250665, -0.885408,
		1.107298, 3.748339, 4.438544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.741270, 3.428202, 5.100473>,  <1.381301, 3.572874, 5.058330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.741270, 3.428202, 5.100473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.811295, 3.437290, 4.706755>,  <0.853309, 3.442743, 4.470524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.811295, 3.437290, 4.706755>,  <0.741270, 3.428202, 5.100473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.811295, 3.437290, 4.706755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552151, -0.825458, -0.117256,
		-0.815158, 0.564007, -0.131960,
		0.175061, 0.022720, -0.984295,
		0.863813, 3.444106, 4.411466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.057981, 3.368170, 4.704133>,  <0.741270, 3.428202, 5.100473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.057981, 3.368170, 4.704133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.374058, 3.238117, 4.496330>,  <0.563704, 3.160085, 4.371649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.374058, 3.238117, 4.496330>,  <0.057981, 3.368170, 4.704133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.374058, 3.238117, 4.496330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523396, -0.799007, -0.296049,
		-0.318833, 0.505842, -0.801542,
		0.790191, -0.325133, -0.519506,
		0.611115, 3.140577, 4.340478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.321280, 3.183763, 4.062990>,  <0.057981, 3.368170, 4.704133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.321280, 3.183763, 4.062990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.040722, 3.019917, 4.017069>,  <0.257923, 2.921609, 3.989516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.040722, 3.019917, 4.017069>,  <-0.321280, 3.183763, 4.062990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.040722, 3.019917, 4.017069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416964, -0.800670, -0.430195,
		0.084296, 0.437198, -0.895406,
		0.905006, -0.409616, -0.114803,
		0.312224, 2.897032, 3.982628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.516245, 2.628117, 3.698827>,  <-0.321280, 3.183763, 4.062990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.516245, 2.628117, 3.698827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.124348, 2.566059, 3.749474>,  <0.110791, 2.528824, 3.779861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.124348, 2.566059, 3.749474>,  <-0.516245, 2.628117, 3.698827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.124348, 2.566059, 3.749474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088816, -0.903342, -0.419626,
		0.179480, 0.399880, -0.898823,
		0.979744, -0.155145, 0.126616,
		0.169576, 2.519516, 3.787458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.217863, 2.450625, 3.143471>,  <-0.516245, 2.628117, 3.698827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.217863, 2.450625, 3.143471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.016476, 2.279011, 3.443457>,  <0.104357, 2.176042, 3.623448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.016476, 2.279011, 3.443457>,  <-0.217863, 2.450625, 3.143471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.016476, 2.279011, 3.443457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194928, -0.902026, -0.385166,
		0.841737, 0.047730, -0.537773,
		0.503470, -0.429035, 0.749965,
		0.134565, 2.150300, 3.668446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.313606, 2.093642, 4.491060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.524315, 2.336090, 4.252689>,  <-1.650740, 2.481559, 4.109667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.524315, 2.336090, 4.252689>,  <-1.313606, 2.093642, 4.491060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.524315, 2.336090, 4.252689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337732, -0.792618, -0.507636,
		-0.780030, -0.066145, 0.622236,
		-0.526772, 0.606120, -0.595927,
		-1.682347, 2.517926, 4.073911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.632515, 1.671158, 4.378370>,  <-1.313606, 2.093642, 4.491060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.632515, 1.671158, 4.378370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.282928, 1.481777, 4.334505>,  <-0.073176, 1.368149, 4.308186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.282928, 1.481777, 4.334505>,  <-0.632515, 1.671158, 4.378370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.282928, 1.481777, 4.334505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432831, 0.860913, -0.267370,
		0.220997, 0.186208, 0.957333,
		0.873967, -0.473451, -0.109662,
		-0.020738, 1.339742, 4.301606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.056841, 2.056487, 4.749359>,  <-0.632515, 1.671158, 4.378370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.056841, 2.056487, 4.749359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.119171, 1.839481, 4.463127>,  <0.224778, 1.709278, 4.291388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.119171, 1.839481, 4.463127>,  <-0.056841, 2.056487, 4.749359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.119171, 1.839481, 4.463127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589413, 0.775682, -0.225634,
		0.677471, -0.322486, 0.661087,
		0.440029, -0.542514, -0.715579,
		0.251180, 1.676727, 4.248454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.659526, 1.874555, 4.750419>,  <-0.056841, 2.056487, 4.749359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.659526, 1.874555, 4.750419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.527489, 1.920132, 4.375601>,  <0.448266, 1.947477, 4.150710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.527489, 1.920132, 4.375601>,  <0.659526, 1.874555, 4.750419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.527489, 1.920132, 4.375601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525343, 0.846922, -0.082081,
		0.784253, -0.519365, -0.339422,
		-0.330094, 0.113941, -0.937046,
		0.428461, 1.954314, 4.094487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.289367, 2.054308, 4.414913>,  <0.659526, 1.874555, 4.750419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.289367, 2.054308, 4.414913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.957802, 2.177631, 4.228216>,  <0.758863, 2.251626, 4.116198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.957802, 2.177631, 4.228216>,  <1.289367, 2.054308, 4.414913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.957802, 2.177631, 4.228216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425417, 0.889244, -0.168125,
		0.363213, -0.337921, -0.868266,
		-0.828913, 0.308309, -0.466742,
		0.709128, 2.270124, 4.088193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.429088, 2.310619, 3.851455>,  <1.289367, 2.054308, 4.414913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.429088, 2.310619, 3.851455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.075462, 2.490215, 3.903358>,  <0.863287, 2.597973, 3.934501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.075462, 2.490215, 3.903358>,  <1.429088, 2.310619, 3.851455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.075462, 2.490215, 3.903358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428013, 0.889305, -0.161060,
		-0.187710, -0.086849, -0.978377,
		-0.884064, 0.448991, 0.129760,
		0.810243, 2.624913, 3.942286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.317883, 2.697970, 3.327441>,  <1.429088, 2.310619, 3.851455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.317883, 2.697970, 3.327441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.105087, 2.842365, 3.633820>,  <0.977410, 2.929003, 3.817647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.105087, 2.842365, 3.633820>,  <1.317883, 2.697970, 3.327441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.105087, 2.842365, 3.633820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394299, 0.906124, -0.153193,
		-0.749343, 0.220515, -0.624386,
		-0.531990, 0.360989, 0.765946,
		0.945490, 2.950662, 3.863603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.185808, 3.400338, 3.103681>,  <1.317883, 2.697970, 3.327441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.185808, 3.400338, 3.103681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120872, 3.397621, 3.498365>,  <1.081911, 3.395991, 3.735176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.120872, 3.397621, 3.498365>,  <1.185808, 3.400338, 3.103681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.120872, 3.397621, 3.498365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217134, 0.975219, 0.042437,
		-0.962548, 0.221138, -0.156841,
		-0.162339, -0.006792, 0.986712,
		1.072171, 3.395583, 3.794379>
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
