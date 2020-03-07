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
	<2.319911, 1.473148, 1.785514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.396355, 1.121641, 1.960442>,  <2.442221, 0.910737, 2.065398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.396355, 1.121641, 1.960442>,  <2.319911, 1.473148, 1.785514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.396355, 1.121641, 1.960442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804097, 0.395678, 0.443698,
		-0.562944, 0.266851, 0.782231,
		0.191110, -0.878766, 0.437318,
		2.453688, 0.858011, 2.091637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.640125, 1.663258, 2.458162>,  <2.319911, 1.473148, 1.785514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.640125, 1.663258, 2.458162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.745438, 1.284313, 2.385290>,  <2.808625, 1.056947, 2.341567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.745438, 1.284313, 2.385290>,  <2.640125, 1.663258, 2.458162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.745438, 1.284313, 2.385290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909564, 0.180826, 0.374159,
		-0.321521, -0.264214, 0.909294,
		0.263282, -0.947361, -0.182180,
		2.824422, 1.000105, 2.330636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.724623, 1.201294, 3.118433>,  <2.640125, 1.663258, 2.458162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.724623, 1.201294, 3.118433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.948696, 1.114670, 2.798609>,  <3.083140, 1.062696, 2.606714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.948696, 1.114670, 2.798609>,  <2.724623, 1.201294, 3.118433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.948696, 1.114670, 2.798609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823904, 0.245744, 0.510678,
		0.085895, -0.944834, 0.316086,
		0.560183, -0.216560, -0.799561,
		3.116751, 1.049702, 2.558741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.245253, 0.896720, 3.378692>,  <2.724623, 1.201294, 3.118433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.245253, 0.896720, 3.378692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.383839, 0.986408, 3.014343>,  <3.466990, 1.040221, 2.795734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.383839, 0.986408, 3.014343>,  <3.245253, 0.896720, 3.378692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.383839, 0.986408, 3.014343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866876, 0.294514, 0.402228,
		0.358452, -0.928971, -0.092334,
		0.346464, 0.224222, -0.910872,
		3.487778, 1.053675, 2.741082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.948517, 0.748974, 3.396799>,  <3.245253, 0.896720, 3.378692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.948517, 0.748974, 3.396799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.909309, 0.984325, 3.075750>,  <3.885785, 1.125536, 2.883121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.909309, 0.984325, 3.075750>,  <3.948517, 0.748974, 3.396799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.909309, 0.984325, 3.075750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927981, 0.345384, 0.139862,
		0.359505, -0.731109, -0.579859,
		-0.098020, 0.588379, -0.802622,
		3.879904, 1.160839, 2.834964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.519856, 0.624737, 3.002852>,  <3.948517, 0.748974, 3.396799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.519856, 0.624737, 3.002852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.356083, 0.984201, 2.939896>,  <4.257819, 1.199880, 2.902122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.356083, 0.984201, 2.939896>,  <4.519856, 0.624737, 3.002852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.356083, 0.984201, 2.939896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898907, 0.426852, 0.098815,
		0.155984, -0.101022, -0.982580,
		-0.409433, 0.898661, -0.157392,
		4.233253, 1.253800, 2.892678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.026196, 0.970468, 2.504558>,  <4.519856, 0.624737, 3.002852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.026196, 0.970468, 2.504558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.790306, 1.239168, 2.683880>,  <4.648772, 1.400388, 2.791473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.790306, 1.239168, 2.683880>,  <5.026196, 0.970468, 2.504558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.790306, 1.239168, 2.683880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797867, 0.570546, 0.194641,
		-0.125028, 0.472472, -0.872432,
		-0.589725, 0.671750, 0.448304,
		4.613389, 1.440693, 2.818371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.253057, 1.639912, 2.342582>,  <5.026196, 0.970468, 2.504558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.253057, 1.639912, 2.342582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073933, 1.676659, 2.698341>,  <4.966458, 1.698707, 2.911797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.073933, 1.676659, 2.698341>,  <5.253057, 1.639912, 2.342582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.073933, 1.676659, 2.698341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742591, 0.592255, 0.312718,
		-0.498021, 0.800497, -0.333437,
		-0.447809, 0.091867, 0.889397,
		4.939590, 1.704219, 2.965161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.497545, 1.666551, 5.070622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.189903, 1.554626, 5.300468>,  <5.005318, 1.487472, 5.438376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.189903, 1.554626, 5.300468>,  <5.497545, 1.666551, 5.070622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.189903, 1.554626, 5.300468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418583, 0.899943, -0.122031,
		-0.482975, -0.334379, -0.809275,
		-0.769105, -0.279811, 0.574615,
		4.959172, 1.470683, 5.472853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.343876, 1.494292, 4.362353>,  <5.497545, 1.666551, 5.070622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.343876, 1.494292, 4.362353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.212280, 1.825218, 4.180225>,  <5.133323, 2.023774, 4.070949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.212280, 1.825218, 4.180225>,  <5.343876, 1.494292, 4.362353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.212280, 1.825218, 4.180225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644000, -0.549201, -0.532580,
		-0.690673, 0.118012, 0.713473,
		-0.328990, 0.827316, -0.455319,
		5.113584, 2.073413, 4.043630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.554011, 1.489025, 4.190385>,  <5.343876, 1.494292, 4.362353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.554011, 1.489025, 4.190385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.722916, 1.738132, 3.926914>,  <4.824258, 1.887597, 3.768832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.722916, 1.738132, 3.926914>,  <4.554011, 1.489025, 4.190385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.722916, 1.738132, 3.926914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627150, -0.323947, -0.708336,
		-0.654506, 0.712192, 0.253779,
		0.422261, 0.622768, -0.658677,
		4.849594, 1.924963, 3.729311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.151997, 2.070849, 4.011732>,  <4.554011, 1.489025, 4.190385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.151997, 2.070849, 4.011732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.385178, 2.023380, 3.690214>,  <4.525086, 1.994899, 3.497303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.385178, 2.023380, 3.690214>,  <4.151997, 2.070849, 4.011732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.385178, 2.023380, 3.690214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809334, -0.172157, -0.561552,
		-0.071738, 0.977895, -0.196405,
		0.582951, -0.118672, -0.803794,
		4.560063, 1.987779, 3.449076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.863412, 2.350127, 3.379392>,  <4.151997, 2.070849, 4.011732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.863412, 2.350127, 3.379392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.104355, 2.079082, 3.210629>,  <4.248921, 1.916456, 3.109370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.104355, 2.079082, 3.210629>,  <3.863412, 2.350127, 3.379392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.104355, 2.079082, 3.210629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780709, -0.389996, -0.488258,
		0.166306, 0.623495, -0.763935,
		0.602358, -0.677611, -0.421910,
		4.285062, 1.875799, 3.084056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.761753, 2.425065, 2.630475>,  <3.863412, 2.350127, 3.379392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.761753, 2.425065, 2.630475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.901596, 2.055687, 2.693750>,  <3.985502, 1.834060, 2.731716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.901596, 2.055687, 2.693750>,  <3.761753, 2.425065, 2.630475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.901596, 2.055687, 2.693750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768169, -0.379193, -0.515876,
		0.536367, 0.058839, -0.841931,
		0.349608, -0.923445, 0.158188,
		4.006479, 1.778654, 2.741207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.725137, 2.134444, 1.955995>,  <3.761753, 2.425065, 2.630475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.725137, 2.134444, 1.955995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.768051, 1.838966, 2.222174>,  <3.793799, 1.661680, 2.381881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.768051, 1.838966, 2.222174>,  <3.725137, 2.134444, 1.955995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.768051, 1.838966, 2.222174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637142, -0.564894, -0.524352,
		0.763243, -0.367730, -0.531257,
		0.107284, -0.738694, 0.665448,
		3.800236, 1.617358, 2.421808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.847028, 1.535934, 1.578752>,  <3.725137, 2.134444, 1.955995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.847028, 1.535934, 1.578752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.639763, 1.475590, 1.915501>,  <3.515404, 1.439383, 2.117550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.639763, 1.475590, 1.915501>,  <3.847028, 1.535934, 1.578752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.639763, 1.475590, 1.915501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712342, -0.468664, -0.522420,
		0.473368, -0.870400, 0.135380,
		-0.518162, -0.150860, 0.841873,
		3.484314, 1.430332, 2.168062>
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
