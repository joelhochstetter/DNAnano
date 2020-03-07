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
	<0.838444, 3.053010, -0.249626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.672549, 3.217228, 0.075199>,  <0.573013, 3.315759, 0.270094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.672549, 3.217228, 0.075199>,  <0.838444, 3.053010, -0.249626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.672549, 3.217228, 0.075199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471968, 0.860058, -0.193767,
		-0.777972, 0.302906, -0.550462,
		-0.414736, 0.410546, 0.812063,
		0.548128, 3.340392, 0.318818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.420219, 3.707538, -0.354827>,  <0.838444, 3.053010, -0.249626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.420219, 3.707538, -0.354827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.632763, 3.654442, -0.020154>,  <0.760290, 3.622584, 0.180650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.632763, 3.654442, -0.020154>,  <0.420219, 3.707538, -0.354827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.632763, 3.654442, -0.020154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629001, 0.723397, -0.284700,
		-0.567462, 0.677552, 0.467878,
		0.531361, -0.132739, 0.836681,
		0.792171, 3.614620, 0.230850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.632940, 4.339808, -0.019941>,  <0.420219, 3.707538, -0.354827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.632940, 4.339808, -0.019941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.897498, 4.062122, 0.093635>,  <1.056233, 3.895511, 0.161780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.897498, 4.062122, 0.093635>,  <0.632940, 4.339808, -0.019941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.897498, 4.062122, 0.093635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743278, 0.657364, -0.124137,
		-0.100474, 0.293150, 0.950772,
		0.661395, -0.694216, 0.283940,
		1.095917, 3.853858, 0.178816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.921966, 4.516136, 0.602647>,  <0.632940, 4.339808, -0.019941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.921966, 4.516136, 0.602647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.206848, 4.283436, 0.445507>,  <1.377777, 4.143816, 0.351223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.206848, 4.283436, 0.445507>,  <0.921966, 4.516136, 0.602647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.206848, 4.283436, 0.445507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675923, 0.719369, 0.160117,
		0.189455, -0.379571, 0.905557,
		0.712205, -0.581751, -0.392849,
		1.420509, 4.108911, 0.327652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.421336, 4.435197, 1.122392>,  <0.921966, 4.516136, 0.602647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.421336, 4.435197, 1.122392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.561330, 4.410774, 0.748487>,  <1.645326, 4.396121, 0.524143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.561330, 4.410774, 0.748487>,  <1.421336, 4.435197, 1.122392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.561330, 4.410774, 0.748487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653769, 0.730585, 0.197058,
		0.670892, -0.680087, 0.295611,
		0.349986, -0.061056, -0.934763,
		1.666325, 4.392457, 0.468058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.226330, 4.252437, 1.062344>,  <1.421336, 4.435197, 1.122392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.226330, 4.252437, 1.062344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.058378, 4.513165, 0.809731>,  <1.957607, 4.669601, 0.658164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.058378, 4.513165, 0.809731>,  <2.226330, 4.252437, 1.062344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.058378, 4.513165, 0.809731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741718, 0.647449, 0.175110,
		0.523025, -0.394894, -0.755317,
		-0.419879, 0.651819, -0.631532,
		1.932414, 4.708710, 0.620272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.638347, 4.515772, 0.452997>,  <2.226330, 4.252437, 1.062344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.638347, 4.515772, 0.452997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.433122, 4.854065, 0.511654>,  <2.309986, 5.057041, 0.546848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.433122, 4.854065, 0.511654>,  <2.638347, 4.515772, 0.452997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.433122, 4.854065, 0.511654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847871, 0.472735, 0.240074,
		0.133715, 0.247507, -0.959615,
		-0.513064, 0.845731, 0.146642,
		2.279202, 5.107784, 0.555647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.831174, 5.182222, 0.063865>,  <2.638347, 4.515772, 0.452997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.831174, 5.182222, 0.063865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.713397, 5.203197, 0.445557>,  <2.642731, 5.215783, 0.674572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.713397, 5.203197, 0.445557>,  <2.831174, 5.182222, 0.063865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.713397, 5.203197, 0.445557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901257, 0.347348, 0.259009,
		-0.317868, 0.936269, -0.149535,
		-0.294443, 0.052438, 0.954229,
		2.625064, 5.218929, 0.731825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.415004, 1.779109, 4.348910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.298843, 1.463669, 4.132105>,  <2.229147, 1.274405, 4.002022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.298843, 1.463669, 4.132105>,  <2.415004, 1.779109, 4.348910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.298843, 1.463669, 4.132105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882276, 0.001358, 0.470731,
		-0.370482, 0.614905, -0.696157,
		-0.290401, -0.788600, -0.542013,
		2.211723, 1.227089, 3.969501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.603898, 2.571932, 4.191934>,  <2.415004, 1.779109, 4.348910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.603898, 2.571932, 4.191934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.708549, 2.535698, 4.576297>,  <2.771340, 2.513958, 4.806915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.708549, 2.535698, 4.576297>,  <2.603898, 2.571932, 4.191934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.708549, 2.535698, 4.576297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518855, -0.826290, -0.219165,
		0.813842, 0.555912, -0.169181,
		0.261629, -0.090585, 0.960908,
		2.787038, 2.508522, 4.864569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.405299, 2.438002, 4.173458>,  <2.603898, 2.571932, 4.191934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.405299, 2.438002, 4.173458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.232136, 2.262241, 4.488295>,  <3.128237, 2.156785, 4.677197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.232136, 2.262241, 4.488295>,  <3.405299, 2.438002, 4.173458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.232136, 2.262241, 4.488295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542768, -0.824192, -0.161585,
		0.719717, 0.357257, 0.595294,
		-0.432909, -0.439402, 0.787093,
		3.102263, 2.130421, 4.724423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.884367, 2.227737, 4.676134>,  <3.405299, 2.438002, 4.173458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.884367, 2.227737, 4.676134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.578465, 1.970016, 4.674295>,  <3.394923, 1.815384, 4.673192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.578465, 1.970016, 4.674295>,  <3.884367, 2.227737, 4.676134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.578465, 1.970016, 4.674295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635333, -0.752887, -0.171797,
		0.107228, -0.134303, 0.985122,
		-0.764758, -0.644302, -0.004597,
		3.349037, 1.776726, 4.672916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.027007, 1.713362, 5.229826>,  <3.884367, 2.227737, 4.676134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.027007, 1.713362, 5.229826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.806767, 1.563301, 4.931539>,  <3.674622, 1.473264, 4.752566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.806767, 1.563301, 4.931539>,  <4.027007, 1.713362, 5.229826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.806767, 1.563301, 4.931539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656591, -0.746276, -0.109361,
		-0.515486, -0.549847, 0.657223,
		-0.550602, -0.375153, -0.745720,
		3.641586, 1.450755, 4.707823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.182446, 0.965323, 5.128799>,  <4.027007, 1.713362, 5.229826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.182446, 0.965323, 5.128799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.040081, 1.060631, 4.767346>,  <3.954662, 1.117816, 4.550474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.040081, 1.060631, 4.767346>,  <4.182446, 0.965323, 5.128799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.040081, 1.060631, 4.767346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775243, -0.464678, -0.427870,
		-0.521848, -0.852820, -0.019334,
		-0.355912, 0.238271, -0.903634,
		3.933307, 1.132112, 4.496256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.960757, 0.391314, 4.720401>,  <4.182446, 0.965323, 5.128799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.960757, 0.391314, 4.720401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.117966, 0.702728, 4.524679>,  <4.212291, 0.889577, 4.407246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.117966, 0.702728, 4.524679>,  <3.960757, 0.391314, 4.720401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.117966, 0.702728, 4.524679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727898, -0.588560, -0.351796,
		-0.561871, -0.217900, -0.798011,
		0.393021, 0.778535, -0.489304,
		4.235872, 0.936289, 4.377888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.028037, 0.226662, 3.996794>,  <3.960757, 0.391314, 4.720401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.028037, 0.226662, 3.996794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.298294, 0.500141, 4.107113>,  <4.460448, 0.664229, 4.173305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.298294, 0.500141, 4.107113>,  <4.028037, 0.226662, 3.996794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.298294, 0.500141, 4.107113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737198, -0.623059, -0.261413,
		-0.006888, 0.379940, -0.924985,
		0.675642, 0.683697, 0.275799,
		4.500987, 0.705250, 4.189853>
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
