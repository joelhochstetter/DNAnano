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
	<5.929252, 3.907866, 0.887365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.586859, 3.863464, 0.685387>,  <5.381423, 3.836823, 0.564200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.586859, 3.863464, 0.685387>,  <5.929252, 3.907866, 0.887365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.586859, 3.863464, 0.685387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468858, -0.244897, 0.848644,
		-0.217863, 0.963173, 0.157583,
		-0.855983, -0.111005, -0.504946,
		5.330064, 3.830163, 0.533903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.471382, 4.461391, 1.194672>,  <5.929252, 3.907866, 0.887365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.471382, 4.461391, 1.194672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.351005, 4.107567, 1.052132>,  <5.278778, 3.895272, 0.966607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.351005, 4.107567, 1.052132>,  <5.471382, 4.461391, 1.194672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.351005, 4.107567, 1.052132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391620, -0.226080, 0.891920,
		-0.869521, 0.407971, -0.278375,
		-0.300943, -0.884560, -0.356351,
		5.260722, 3.842199, 0.945226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.667417, 4.284320, 1.243805>,  <5.471382, 4.461391, 1.194672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.667417, 4.284320, 1.243805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.930953, 3.986618, 1.287647>,  <5.089075, 3.807997, 1.313952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.930953, 3.986618, 1.287647>,  <4.667417, 4.284320, 1.243805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.930953, 3.986618, 1.287647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376381, -0.199962, 0.904628,
		-0.651357, -0.637259, -0.411866,
		0.658841, -0.744255, 0.109605,
		5.128605, 3.763341, 1.320529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.350729, 3.608555, 1.316383>,  <4.667417, 4.284320, 1.243805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.350729, 3.608555, 1.316383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.688444, 3.630783, 1.529583>,  <4.891073, 3.644120, 1.657503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.688444, 3.630783, 1.529583>,  <4.350729, 3.608555, 1.316383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.688444, 3.630783, 1.529583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508381, -0.231515, 0.829427,
		0.169489, -0.971243, -0.167214,
		0.844288, 0.055570, 0.533001,
		4.941730, 3.647454, 1.689483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.324047, 3.107031, 1.809107>,  <4.350729, 3.608555, 1.316383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.324047, 3.107031, 1.809107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.631757, 3.312473, 1.961121>,  <4.816383, 3.435739, 2.052329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.631757, 3.312473, 1.961121>,  <4.324047, 3.107031, 1.809107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.631757, 3.312473, 1.961121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269364, -0.278652, 0.921844,
		0.579362, -0.811518, -0.076013,
		0.769274, 0.513606, 0.380034,
		4.862539, 3.466555, 2.075131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.703725, 2.671734, 2.285565>,  <4.324047, 3.107031, 1.809107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.703725, 2.671734, 2.285565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.764434, 3.060879, 2.355427>,  <4.800859, 3.294366, 2.397344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.764434, 3.060879, 2.355427>,  <4.703725, 2.671734, 2.285565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.764434, 3.060879, 2.355427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249614, -0.133249, 0.959134,
		0.956378, -0.189166, 0.222617,
		0.151772, 0.972862, 0.174655,
		4.809966, 3.352737, 2.407823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.161426, 2.767484, 2.814197>,  <4.703725, 2.671734, 2.285565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.161426, 2.767484, 2.814197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.907763, 3.075966, 2.791969>,  <4.755565, 3.261055, 2.778632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.907763, 3.075966, 2.791969>,  <5.161426, 2.767484, 2.814197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.907763, 3.075966, 2.791969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364755, -0.235017, 0.900956,
		0.681761, 0.591618, 0.430339,
		-0.634158, 0.771204, -0.055570,
		4.717515, 3.307327, 2.775298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.117677, 2.954313, 3.523099>,  <5.161426, 2.767484, 2.814197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.117677, 2.954313, 3.523099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.795498, 3.130764, 3.364777>,  <4.602190, 3.236635, 3.269783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.795498, 3.130764, 3.364777>,  <5.117677, 2.954313, 3.523099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.795498, 3.130764, 3.364777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500685, -0.149108, 0.852691,
		0.317128, 0.884971, 0.340965,
		-0.805447, 0.441128, -0.395805,
		4.553864, 3.263102, 3.246035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.928303, 3.614115, 5.196019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.063141, 3.443634, 4.860229>,  <4.144044, 3.341345, 4.658756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.063141, 3.443634, 4.860229>,  <3.928303, 3.614115, 5.196019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.063141, 3.443634, 4.860229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612683, 0.577706, -0.539328,
		0.714833, 0.696137, -0.066386,
		0.337095, -0.426203, -0.839475,
		4.164269, 3.315773, 4.608387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.277041, 4.111226, 4.783584>,  <3.928303, 3.614115, 5.196019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.277041, 4.111226, 4.783584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.102369, 3.828865, 4.560509>,  <3.997566, 3.659449, 4.426664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.102369, 3.828865, 4.560509>,  <4.277041, 4.111226, 4.783584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.102369, 3.828865, 4.560509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585922, 0.693572, -0.419110,
		0.682644, 0.143739, -0.716475,
		-0.436685, -0.705901, -0.557682,
		3.971366, 3.617095, 4.393202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.415693, 4.231270, 4.088748>,  <4.277041, 4.111226, 4.783584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.415693, 4.231270, 4.088748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.076046, 4.028084, 4.146671>,  <3.872257, 3.906172, 4.181425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.076046, 4.028084, 4.146671>,  <4.415693, 4.231270, 4.088748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.076046, 4.028084, 4.146671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502376, 0.691984, -0.518436,
		0.163143, -0.512961, -0.842766,
		-0.849119, -0.507965, 0.144807,
		3.821310, 3.875694, 4.190114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.064737, 4.093521, 3.430347>,  <4.415693, 4.231270, 4.088748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.064737, 4.093521, 3.430347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.789642, 4.113716, 3.720028>,  <3.624585, 4.125834, 3.893836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.789642, 4.113716, 3.720028>,  <4.064737, 4.093521, 3.430347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.789642, 4.113716, 3.720028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432693, 0.772510, -0.464764,
		-0.582919, -0.632992, -0.509438,
		-0.687738, 0.050489, 0.724202,
		3.583321, 4.128863, 3.937289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.522200, 3.884588, 2.808273>,  <4.064737, 4.093521, 3.430347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.522200, 3.884588, 2.808273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847679, 3.697151, 2.945862>,  <4.042967, 3.584689, 3.028415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.847679, 3.697151, 2.945862>,  <3.522200, 3.884588, 2.808273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.847679, 3.697151, 2.945862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486364, 0.224757, -0.844354,
		0.318348, 0.854345, 0.410790,
		0.813698, -0.468592, 0.343972,
		4.091789, 3.556574, 3.049053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.049510, 4.395747, 2.667960>,  <3.522200, 3.884588, 2.808273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.049510, 4.395747, 2.667960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.237608, 4.044640, 2.704605>,  <4.350467, 3.833975, 2.726592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.237608, 4.044640, 2.704605>,  <4.049510, 4.395747, 2.667960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.237608, 4.044640, 2.704605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513668, 0.187811, -0.837181,
		0.717645, 0.440740, 0.539198,
		0.470246, -0.877767, 0.091613,
		4.378682, 3.781309, 2.732089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.767002, 4.578415, 2.773155>,  <4.049510, 4.395747, 2.667960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.767002, 4.578415, 2.773155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.731808, 4.217064, 2.605267>,  <4.710691, 4.000253, 2.504533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.731808, 4.217064, 2.605267>,  <4.767002, 4.578415, 2.773155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.731808, 4.217064, 2.605267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521683, 0.317161, -0.791994,
		0.848590, -0.288646, 0.443372,
		-0.087986, -0.903378, -0.419722,
		4.705412, 3.946050, 2.479350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.460939, 4.352879, 2.573092>,  <4.767002, 4.578415, 2.773155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.460939, 4.352879, 2.573092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.171047, 4.211349, 2.336594>,  <4.997112, 4.126432, 2.194694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.171047, 4.211349, 2.336594>,  <5.460939, 4.352879, 2.573092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.171047, 4.211349, 2.336594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496408, 0.326976, -0.804155,
		0.477854, -0.876296, -0.061328,
		-0.724731, -0.353825, -0.591248,
		4.953628, 4.105202, 2.159220>
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
