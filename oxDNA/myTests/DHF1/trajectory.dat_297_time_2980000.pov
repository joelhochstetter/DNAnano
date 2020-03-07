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
	<3.217373, 4.202240, 1.255846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.939327, 3.976791, 1.434349>,  <2.772500, 3.841522, 1.541451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.939327, 3.976791, 1.434349>,  <3.217373, 4.202240, 1.255846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.939327, 3.976791, 1.434349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147420, -0.495807, -0.855829,
		0.703621, -0.660687, 0.261554,
		-0.695115, -0.563621, 0.446258,
		2.730793, 3.807705, 1.568227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.337575, 3.586860, 1.189049>,  <3.217373, 4.202240, 1.255846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.337575, 3.586860, 1.189049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.939564, 3.625336, 1.178734>,  <2.700757, 3.648421, 1.172545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.939564, 3.625336, 1.178734>,  <3.337575, 3.586860, 1.189049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.939564, 3.625336, 1.178734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032484, -0.558277, -0.829018,
		-0.094139, -0.824059, 0.558627,
		-0.995029, 0.096189, -0.025787,
		2.641055, 3.654193, 1.170998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.016088, 2.908836, 1.221558>,  <3.337575, 3.586860, 1.189049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.016088, 2.908836, 1.221558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.803883, 3.175995, 1.012764>,  <2.676559, 3.336290, 0.887487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.803883, 3.175995, 1.012764>,  <3.016088, 2.908836, 1.221558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.803883, 3.175995, 1.012764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065439, -0.646216, -0.760344,
		-0.845147, -0.369214, 0.386532,
		-0.530512, 0.667897, -0.521986,
		2.644729, 3.376364, 0.856168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.539358, 2.596466, 0.785960>,  <3.016088, 2.908836, 1.221558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.539358, 2.596466, 0.785960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.603809, 2.952805, 0.616051>,  <2.642480, 3.166608, 0.514105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.603809, 2.952805, 0.616051>,  <2.539358, 2.596466, 0.785960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.603809, 2.952805, 0.616051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125953, -0.408316, -0.904109,
		-0.978863, 0.199178, 0.046414,
		0.161128, 0.890845, -0.424773,
		2.652148, 3.220058, 0.488619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.028261, 2.880800, 0.321307>,  <2.539358, 2.596466, 0.785960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.028261, 2.880800, 0.321307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.393620, 2.978134, 0.190773>,  <2.612835, 3.036535, 0.112453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.393620, 2.978134, 0.190773>,  <2.028261, 2.880800, 0.321307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.393620, 2.978134, 0.190773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175911, -0.486998, -0.855504,
		-0.367098, 0.838821, -0.402017,
		0.913397, 0.243335, -0.326334,
		2.667639, 3.051135, 0.092873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.966516, 2.945071, -0.418715>,  <2.028261, 2.880800, 0.321307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.966516, 2.945071, -0.418715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.365078, 2.930023, -0.388351>,  <2.604215, 2.920994, -0.370133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.365078, 2.930023, -0.388351>,  <1.966516, 2.945071, -0.418715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.365078, 2.930023, -0.388351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036656, -0.616342, -0.786624,
		0.076379, 0.786579, -0.612748,
		0.996405, -0.037620, 0.075908,
		2.664000, 2.918737, -0.365579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.310933, 3.237969, -1.074022>,  <1.966516, 2.945071, -0.418715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.310933, 3.237969, -1.074022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.604565, 3.010376, -0.925758>,  <2.780744, 2.873820, -0.836800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.604565, 3.010376, -0.925758>,  <2.310933, 3.237969, -1.074022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.604565, 3.010376, -0.925758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163435, -0.381757, -0.909698,
		0.659104, 0.728368, -0.187247,
		0.734078, -0.568983, 0.370659,
		2.824788, 2.839681, -0.814561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.005451, 3.326750, -1.440172>,  <2.310933, 3.237969, -1.074022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.005451, 3.326750, -1.440172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.983921, 2.963547, -1.273979>,  <2.971003, 2.745625, -1.174263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.983921, 2.963547, -1.273979>,  <3.005451, 3.326750, -1.440172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.983921, 2.963547, -1.273979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001347, -0.416151, -0.909294,
		0.998549, -0.048383, 0.023622,
		-0.053825, -0.908007, 0.415482,
		2.967774, 2.691144, -1.149334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.810156, 1.686296, 2.175422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.773689, 1.443405, 2.491135>,  <2.751810, 1.297671, 2.680562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.773689, 1.443405, 2.491135>,  <2.810156, 1.686296, 2.175422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.773689, 1.443405, 2.491135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252705, 0.752531, 0.608143,
		-0.963239, 0.254897, 0.084845,
		-0.091166, -0.607227, 0.789280,
		2.746340, 1.261237, 2.727919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.477242, 2.068017, 2.772869>,  <2.810156, 1.686296, 2.175422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.477242, 2.068017, 2.772869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.705915, 1.765076, 2.899101>,  <2.843120, 1.583311, 2.974841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.705915, 1.765076, 2.899101>,  <2.477242, 2.068017, 2.772869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.705915, 1.765076, 2.899101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266796, 0.535325, 0.801403,
		-0.775885, -0.373953, 0.508096,
		0.571684, -0.757354, 0.315582,
		2.877421, 1.537869, 2.993776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.218823, 1.917734, 3.431808>,  <2.477242, 2.068017, 2.772869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.218823, 1.917734, 3.431808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.608095, 1.838654, 3.384758>,  <2.841658, 1.791206, 3.356528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.608095, 1.838654, 3.384758>,  <2.218823, 1.917734, 3.431808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.608095, 1.838654, 3.384758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227273, 0.747103, 0.624647,
		-0.035614, -0.634627, 0.771998,
		0.973180, -0.197700, -0.117626,
		2.900049, 1.779343, 3.349470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.422797, 1.852261, 4.051269>,  <2.218823, 1.917734, 3.431808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.422797, 1.852261, 4.051269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.750011, 1.982849, 3.861855>,  <2.946340, 2.061202, 3.748206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.750011, 1.982849, 3.861855>,  <2.422797, 1.852261, 4.051269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.750011, 1.982849, 3.861855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240416, 0.553843, 0.797156,
		0.522507, -0.765949, 0.374578,
		0.818038, 0.326465, -0.473533,
		2.995422, 2.080790, 3.719794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.934692, 1.650349, 4.480158>,  <2.422797, 1.852261, 4.051269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.934692, 1.650349, 4.480158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.985596, 1.984406, 4.266113>,  <3.016138, 2.184839, 4.137687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.985596, 1.984406, 4.266113>,  <2.934692, 1.650349, 4.480158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.985596, 1.984406, 4.266113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209139, 0.504775, 0.837534,
		0.969570, -0.218498, -0.110423,
		0.127260, 0.835141, -0.535111,
		3.023774, 2.234948, 4.105580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.578996, 1.987903, 4.816066>,  <2.934692, 1.650349, 4.480158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.578996, 1.987903, 4.816066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.345808, 2.246323, 4.618980>,  <3.205895, 2.401374, 4.500729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.345808, 2.246323, 4.618980>,  <3.578996, 1.987903, 4.816066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.345808, 2.246323, 4.618980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061407, 0.639723, 0.766149,
		0.810170, 0.416385, -0.412611,
		-0.582970, 0.646048, -0.492715,
		3.170917, 2.440137, 4.471166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.896231, 2.616706, 4.846993>,  <3.578996, 1.987903, 4.816066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.896231, 2.616706, 4.846993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.517313, 2.716202, 4.766235>,  <3.289962, 2.775899, 4.717781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.517313, 2.716202, 4.766235>,  <3.896231, 2.616706, 4.846993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.517313, 2.716202, 4.766235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015186, 0.664363, 0.747255,
		0.320004, 0.704805, -0.633125,
		-0.947294, 0.248740, -0.201896,
		3.233125, 2.790824, 4.705667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.830343, 3.282312, 4.616170>,  <3.896231, 2.616706, 4.846993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.830343, 3.282312, 4.616170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.486931, 3.181778, 4.794945>,  <3.280883, 3.121457, 4.902210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.486931, 3.181778, 4.794945>,  <3.830343, 3.282312, 4.616170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.486931, 3.181778, 4.794945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194216, 0.647295, 0.737082,
		-0.474556, 0.719611, -0.506910,
		-0.858532, -0.251336, 0.446938,
		3.229371, 3.106377, 4.929026>
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
