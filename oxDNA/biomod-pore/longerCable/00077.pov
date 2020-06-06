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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.320986, 34.579174, 35.188076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343719, 34.854847, 34.899132>,  <24.357359, 35.020252, 34.725765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343719, 34.854847, 34.899132>,  <24.320986, 34.579174, 35.188076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343719, 34.854847, 34.899132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995284, 0.017863, 0.095347,
		0.078615, -0.724369, -0.684916,
		0.056832, 0.689181, -0.722357,
		24.360769, 35.061600, 34.682426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917149, 34.413155, 34.834087>,  <24.320986, 34.579174, 35.188076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917149, 34.413155, 34.834087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837564, 34.789307, 34.723743>,  <24.789814, 35.014999, 34.657539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.837564, 34.789307, 34.723743>,  <24.917149, 34.413155, 34.834087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837564, 34.789307, 34.723743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976993, 0.212389, 0.019376,
		0.076810, -0.265656, -0.961003,
		-0.198959, 0.940382, -0.275858,
		24.777876, 35.071423, 34.640987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554661, 34.546631, 34.446117>,  <24.917149, 34.413155, 34.834087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554661, 34.546631, 34.446117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388315, 34.909916, 34.464893>,  <25.288507, 35.127888, 34.476158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388315, 34.909916, 34.464893>,  <25.554661, 34.546631, 34.446117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388315, 34.909916, 34.464893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907953, 0.417574, -0.035403,
		-0.051753, 0.027894, -0.998270,
		-0.415864, 0.908215, 0.046937,
		25.263556, 35.182381, 34.478973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880247, 35.329712, 34.426140>,  <25.554661, 34.546631, 34.446117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880247, 35.329712, 34.426140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872663, 35.069141, 34.122749>,  <25.868114, 34.912800, 33.940716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872663, 35.069141, 34.122749>,  <25.880247, 35.329712, 34.426140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872663, 35.069141, 34.122749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977238, 0.148250, -0.151751,
		0.211299, -0.744090, 0.633784,
		-0.018958, -0.651423, -0.758478,
		25.866976, 34.873714, 33.895206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545572, 34.930141, 34.432968>,  <25.880247, 35.329712, 34.426140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545572, 34.930141, 34.432968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870064, 35.138340, 34.539551>,  <27.064758, 35.263260, 34.603500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.870064, 35.138340, 34.539551>,  <26.545572, 34.930141, 34.432968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870064, 35.138340, 34.539551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463847, -0.850279, 0.248741,
		0.356027, -0.078192, -0.931199,
		0.811228, 0.520492, 0.266453,
		27.113432, 35.294487, 34.619488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222418, 34.730934, 34.031452>,  <26.545572, 34.930141, 34.432968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222418, 34.730934, 34.031452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259220, 34.859913, 34.408295>,  <27.281301, 34.937302, 34.634399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259220, 34.859913, 34.408295>,  <27.222418, 34.730934, 34.031452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259220, 34.859913, 34.408295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433510, -0.864722, 0.253624,
		0.896440, 0.385078, -0.219341,
		0.092004, 0.322445, 0.942106,
		27.286821, 34.956646, 34.690926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238527, 34.224598, 34.550972>,  <27.222418, 34.730934, 34.031452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238527, 34.224598, 34.550972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459293, 34.120510, 34.867874>,  <27.591753, 34.058056, 35.058018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.459293, 34.120510, 34.867874>,  <27.238527, 34.224598, 34.550972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459293, 34.120510, 34.867874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680067, 0.409364, 0.608219,
		-0.482594, -0.874474, 0.048966,
		0.551917, -0.260223, 0.792257,
		27.624868, 34.042442, 35.105553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898115, 33.689735, 34.975304>,  <27.238527, 34.224598, 34.550972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898115, 33.689735, 34.975304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148056, 33.919556, 35.186756>,  <27.298021, 34.057449, 35.313629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.148056, 33.919556, 35.186756>,  <26.898115, 33.689735, 34.975304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148056, 33.919556, 35.186756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771092, 0.348013, 0.533201,
		0.122381, -0.740795, 0.660489,
		0.624852, 0.574552, 0.528631,
		27.335512, 34.091923, 35.345345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.987585, 33.444492, 35.612583>,  <26.898115, 33.689735, 34.975304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.987585, 33.444492, 35.612583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096289, 33.826553, 35.659626>,  <27.161510, 34.055790, 35.687851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096289, 33.826553, 35.659626>,  <26.987585, 33.444492, 35.612583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096289, 33.826553, 35.659626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549643, 0.053733, 0.833670,
		0.789961, -0.291202, 0.539595,
		0.271761, 0.955151, 0.117610,
		27.177816, 34.113098, 35.694908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051996, 33.499939, 36.311436>,  <26.987585, 33.444492, 35.612583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051996, 33.499939, 36.311436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029173, 33.872204, 36.166874>,  <27.015478, 34.095562, 36.080135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029173, 33.872204, 36.166874>,  <27.051996, 33.499939, 36.311436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029173, 33.872204, 36.166874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664406, 0.234800, 0.709530,
		0.745190, 0.280605, 0.604940,
		-0.057058, 0.930661, -0.361406,
		27.012056, 34.151402, 36.058453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893442, 33.837196, 36.890621>,  <27.051996, 33.499939, 36.311436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893442, 33.837196, 36.890621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764843, 34.110580, 36.628471>,  <26.687683, 34.274612, 36.471180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.764843, 34.110580, 36.628471>,  <26.893442, 33.837196, 36.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764843, 34.110580, 36.628471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740366, 0.250054, 0.623964,
		0.590336, 0.685822, 0.425619,
		-0.321500, 0.683462, -0.655375,
		26.668392, 34.315620, 36.431858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829174, 34.565990, 37.203606>,  <26.893442, 33.837196, 36.890621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829174, 34.565990, 37.203606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575289, 34.480759, 36.906490>,  <26.422958, 34.429619, 36.728222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575289, 34.480759, 36.906490>,  <26.829174, 34.565990, 37.203606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575289, 34.480759, 36.906490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764726, 0.311347, 0.564142,
		0.111058, 0.926099, -0.360564,
		-0.634712, -0.213080, -0.742790,
		26.384874, 34.416836, 36.683655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037689, 34.686676, 37.277534>,  <26.829174, 34.565990, 37.203606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037689, 34.686676, 37.277534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669634, 34.670525, 37.121731>,  <25.448801, 34.660835, 37.028248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669634, 34.670525, 37.121731>,  <26.037689, 34.686676, 37.277534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669634, 34.670525, 37.121731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282492, 0.620399, -0.731644,
		0.271192, -0.783246, -0.559446,
		-0.920138, -0.040377, -0.389508,
		25.393593, 34.658413, 37.004879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823904, 34.138710, 36.886238>,  <26.037689, 34.686676, 37.277534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823904, 34.138710, 36.886238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689150, 34.513115, 36.845448>,  <25.608297, 34.737759, 36.820972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689150, 34.513115, 36.845448>,  <25.823904, 34.138710, 36.886238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689150, 34.513115, 36.845448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728293, 0.190404, -0.658283,
		-0.596740, -0.296033, -0.745832,
		-0.336883, 0.936008, -0.101977,
		25.588085, 34.793919, 36.814854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.486351, 34.257862, 36.246292>,  <25.823904, 34.138710, 36.886238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.486351, 34.257862, 36.246292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684124, 34.571957, 36.395393>,  <25.802788, 34.760414, 36.484856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684124, 34.571957, 36.395393>,  <25.486351, 34.257862, 36.246292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684124, 34.571957, 36.395393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692079, -0.096177, -0.715385,
		-0.525894, 0.611685, -0.590997,
		0.494431, 0.785233, 0.372756,
		25.832453, 34.807526, 36.507221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724623, 34.735199, 35.686943>,  <25.486351, 34.257862, 36.246292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724623, 34.735199, 35.686943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965139, 34.777672, 36.003719>,  <26.109449, 34.803158, 36.193787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965139, 34.777672, 36.003719>,  <25.724623, 34.735199, 35.686943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965139, 34.777672, 36.003719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798821, -0.102608, -0.592754,
		0.018317, 0.989038, -0.146521,
		0.601290, 0.106187, 0.791943,
		26.145527, 34.809528, 36.241302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254362, 35.320057, 35.619137>,  <25.724623, 34.735199, 35.686943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254362, 35.320057, 35.619137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387491, 35.032505, 35.863251>,  <26.467369, 34.859974, 36.009720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387491, 35.032505, 35.863251>,  <26.254362, 35.320057, 35.619137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387491, 35.032505, 35.863251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852501, -0.047255, -0.520584,
		0.403075, 0.693530, 0.597115,
		0.332824, -0.718876, 0.610283,
		26.487339, 34.816841, 36.046337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878246, 35.365921, 35.526905>,  <26.254362, 35.320057, 35.619137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878246, 35.365921, 35.526905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929735, 35.025078, 35.729824>,  <26.960629, 34.820572, 35.851574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929735, 35.025078, 35.729824>,  <26.878246, 35.365921, 35.526905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929735, 35.025078, 35.729824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850165, -0.168537, -0.498814,
		0.510540, 0.495493, 0.702734,
		0.128722, -0.852104, 0.507296,
		26.968351, 34.769447, 35.882011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597431, 35.345016, 35.754139>,  <26.878246, 35.365921, 35.526905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597431, 35.345016, 35.754139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461552, 34.969360, 35.733627>,  <27.380024, 34.743969, 35.721321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461552, 34.969360, 35.733627>,  <27.597431, 35.345016, 35.754139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461552, 34.969360, 35.733627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812958, -0.265767, -0.518139,
		0.472975, -0.217697, 0.853758,
		-0.339698, -0.939136, -0.051278,
		27.359642, 34.687618, 35.718243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236105, 34.917660, 35.946255>,  <27.597431, 35.345016, 35.754139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236105, 34.917660, 35.946255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964899, 34.696850, 35.752113>,  <27.802176, 34.564365, 35.635628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964899, 34.696850, 35.752113>,  <28.236105, 34.917660, 35.946255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964899, 34.696850, 35.752113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727882, -0.412241, -0.547946,
		0.102397, -0.724794, 0.681314,
		-0.678013, -0.552025, -0.485352,
		27.761496, 34.531242, 35.606506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329357, 34.272804, 36.123440>,  <28.236105, 34.917660, 35.946255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329357, 34.272804, 36.123440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132479, 34.248215, 35.776115>,  <28.014351, 34.233459, 35.567722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132479, 34.248215, 35.776115>,  <28.329357, 34.272804, 36.123440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132479, 34.248215, 35.776115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737639, -0.559102, -0.378542,
		-0.462202, -0.826816, 0.320536,
		-0.492197, -0.061477, -0.868310,
		27.984819, 34.229771, 35.515621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282270, 33.428764, 35.933441>,  <28.329357, 34.272804, 36.123440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282270, 33.428764, 35.933441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264736, 33.681908, 35.624229>,  <28.254215, 33.833794, 35.438702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264736, 33.681908, 35.624229>,  <28.282270, 33.428764, 35.933441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264736, 33.681908, 35.624229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742934, -0.496670, -0.448741,
		-0.667928, -0.593978, -0.448400,
		-0.043836, 0.632858, -0.773026,
		28.251585, 33.871765, 35.392323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201550, 32.996189, 35.256161>,  <28.282270, 33.428764, 35.933441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201550, 32.996189, 35.256161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385063, 33.350163, 35.224148>,  <28.495171, 33.562546, 35.204941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385063, 33.350163, 35.224148>,  <28.201550, 32.996189, 35.256161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385063, 33.350163, 35.224148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673109, -0.404934, -0.618831,
		-0.580036, 0.230036, -0.781436,
		0.458784, 0.884936, -0.080037,
		28.522697, 33.615643, 35.200138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328131, 33.201408, 34.596497>,  <28.201550, 32.996189, 35.256161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328131, 33.201408, 34.596497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622766, 33.403305, 34.776569>,  <28.799549, 33.524445, 34.884613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622766, 33.403305, 34.776569>,  <28.328131, 33.201408, 34.596497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622766, 33.403305, 34.776569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670942, -0.461405, -0.580467,
		-0.085269, 0.729616, -0.678521,
		0.736590, 0.504744, 0.450187,
		28.843744, 33.554729, 34.911625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606464, 33.689133, 34.043488>,  <28.328131, 33.201408, 34.596497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606464, 33.689133, 34.043488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839134, 33.547153, 34.336243>,  <28.978737, 33.461964, 34.511898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839134, 33.547153, 34.336243>,  <28.606464, 33.689133, 34.043488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839134, 33.547153, 34.336243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443688, -0.615679, -0.651215,
		0.681759, 0.703526, -0.200638,
		0.581675, -0.354951, 0.731891,
		29.013638, 33.440670, 34.555809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313540, 33.453415, 33.791443>,  <28.606464, 33.689133, 34.043488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313540, 33.453415, 33.791443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673258, 33.313927, 33.685867>,  <29.889088, 33.230236, 33.622520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673258, 33.313927, 33.685867>,  <29.313540, 33.453415, 33.791443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673258, 33.313927, 33.685867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126712, 0.369869, -0.920403,
		0.418585, 0.861158, 0.288434,
		0.899295, -0.348718, -0.263940,
		29.943047, 33.209312, 33.606686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795290, 34.014832, 33.525906>,  <29.313540, 33.453415, 33.791443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795290, 34.014832, 33.525906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835310, 33.649349, 33.368359>,  <29.859322, 33.430061, 33.273830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835310, 33.649349, 33.368359>,  <29.795290, 34.014832, 33.525906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835310, 33.649349, 33.368359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290936, 0.351688, -0.889759,
		0.951497, 0.203612, -0.230643,
		0.100051, -0.913705, -0.393868,
		29.865326, 33.375237, 33.250198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629950, 34.157639, 32.876537>,  <29.795290, 34.014832, 33.525906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629950, 34.157639, 32.876537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739067, 33.774426, 32.841301>,  <29.804537, 33.544498, 32.820160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739067, 33.774426, 32.841301>,  <29.629950, 34.157639, 32.876537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739067, 33.774426, 32.841301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216334, 0.028137, -0.975914,
		0.937434, 0.285281, -0.199579,
		0.272794, -0.958031, -0.088093,
		29.820906, 33.487015, 32.814873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811996, 33.952415, 32.184868>,  <29.629950, 34.157639, 32.876537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811996, 33.952415, 32.184868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868370, 34.315506, 32.342941>,  <29.902195, 34.533360, 32.437786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868370, 34.315506, 32.342941>,  <29.811996, 33.952415, 32.184868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868370, 34.315506, 32.342941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156313, 0.373762, -0.914259,
		-0.977601, 0.190624, -0.089213,
		0.140936, 0.907725, 0.395187,
		29.910650, 34.587822, 32.461498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445196, 34.465778, 31.709230>,  <29.811996, 33.952415, 32.184868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445196, 34.465778, 31.709230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745565, 34.623363, 31.921234>,  <29.925787, 34.717915, 32.048435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.745565, 34.623363, 31.921234>,  <29.445196, 34.465778, 31.709230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745565, 34.623363, 31.921234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331357, 0.469457, -0.818421,
		-0.571240, 0.790194, 0.221986,
		0.750924, 0.393958, 0.530009,
		29.970842, 34.741550, 32.080238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524281, 35.211933, 31.841030>,  <29.445196, 34.465778, 31.709230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524281, 35.211933, 31.841030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890257, 35.052597, 31.815088>,  <30.109842, 34.956997, 31.799524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890257, 35.052597, 31.815088>,  <29.524281, 35.211933, 31.841030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890257, 35.052597, 31.815088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168506, 0.523064, -0.835470,
		0.366722, 0.753479, 0.545696,
		0.914943, -0.398338, -0.064853,
		30.164740, 34.933094, 31.795631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066662, 35.721306, 31.841026>,  <29.524281, 35.211933, 31.841030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066662, 35.721306, 31.841026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189829, 35.397221, 31.641533>,  <30.263729, 35.202770, 31.521837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189829, 35.397221, 31.641533>,  <30.066662, 35.721306, 31.841026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189829, 35.397221, 31.641533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194835, 0.566793, -0.800490,
		0.931250, 0.149312, 0.332383,
		0.307915, -0.810217, -0.498735,
		30.282204, 35.154156, 31.491913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644531, 35.960026, 31.528234>,  <30.066662, 35.721306, 31.841026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644531, 35.960026, 31.528234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548267, 35.619366, 31.341999>,  <30.490509, 35.414970, 31.230259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548267, 35.619366, 31.341999>,  <30.644531, 35.960026, 31.528234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548267, 35.619366, 31.341999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241017, 0.412226, -0.878624,
		0.940210, -0.323663, 0.106057,
		-0.240658, -0.851653, -0.465587,
		30.476070, 35.363869, 31.202322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209417, 35.781143, 31.047264>,  <30.644531, 35.960026, 31.528234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209417, 35.781143, 31.047264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889103, 35.590900, 30.901642>,  <30.696915, 35.476753, 30.814268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889103, 35.590900, 30.901642>,  <31.209417, 35.781143, 31.047264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889103, 35.590900, 30.901642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159953, 0.415935, -0.895217,
		0.577199, -0.775109, -0.256999,
		-0.800785, -0.475610, -0.364058,
		30.648867, 35.448219, 30.792425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090380, 36.307350, 30.504402>,  <31.209417, 35.781143, 31.047264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090380, 36.307350, 30.504402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462223, 36.297077, 30.651463>,  <31.685329, 36.290913, 30.739698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462223, 36.297077, 30.651463>,  <31.090380, 36.307350, 30.504402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462223, 36.297077, 30.651463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184490, -0.896004, 0.403906,
		0.319043, -0.443302, -0.837672,
		0.929610, -0.025678, 0.367649,
		31.741106, 36.289375, 30.761757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798422, 36.637646, 29.970797>,  <31.090380, 36.307350, 30.504402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798422, 36.637646, 29.970797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725760, 36.346367, 29.706455>,  <30.682161, 36.171600, 29.547850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725760, 36.346367, 29.706455>,  <30.798422, 36.637646, 29.970797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725760, 36.346367, 29.706455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788541, -0.293661, 0.540339,
		-0.587541, 0.619266, -0.520869,
		-0.181655, -0.728198, -0.660854,
		30.671263, 36.127907, 29.508200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071798, 36.630207, 29.929390>,  <30.798422, 36.637646, 29.970797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071798, 36.630207, 29.929390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227787, 36.282772, 29.807091>,  <30.321381, 36.074310, 29.733711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.227787, 36.282772, 29.807091>,  <30.071798, 36.630207, 29.929390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227787, 36.282772, 29.807091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494359, -0.477616, 0.726287,
		-0.776872, -0.132083, -0.615649,
		0.389974, -0.868584, -0.305750,
		30.344780, 36.022198, 29.715366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626619, 36.098480, 30.129936>,  <30.071798, 36.630207, 29.929390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626619, 36.098480, 30.129936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948662, 35.886005, 30.024370>,  <30.141888, 35.758522, 29.961031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948662, 35.886005, 30.024370>,  <29.626619, 36.098480, 30.129936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948662, 35.886005, 30.024370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178896, -0.641693, 0.745806,
		-0.565510, -0.553240, -0.611657,
		0.805106, -0.531183, -0.263911,
		30.190193, 35.726650, 29.945196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453203, 35.473679, 30.124159>,  <29.626619, 36.098480, 30.129936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453203, 35.473679, 30.124159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846125, 35.456924, 30.197174>,  <30.081879, 35.446873, 30.240984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846125, 35.456924, 30.197174>,  <29.453203, 35.473679, 30.124159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846125, 35.456924, 30.197174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163008, -0.671131, 0.723195,
		0.092216, -0.740154, -0.666084,
		0.982306, -0.041887, 0.182540,
		30.140816, 35.444359, 30.251936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613884, 34.758671, 30.406290>,  <29.453203, 35.473679, 30.124159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613884, 34.758671, 30.406290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937696, 34.966652, 30.515329>,  <30.131985, 35.091442, 30.580753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937696, 34.966652, 30.515329>,  <29.613884, 34.758671, 30.406290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937696, 34.966652, 30.515329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065915, -0.541894, 0.837858,
		0.583365, -0.660304, -0.472953,
		0.809531, 0.519952, 0.272598,
		30.180555, 35.122639, 30.597109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141314, 34.268848, 30.614138>,  <29.613884, 34.758671, 30.406290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.141314, 34.268848, 30.614138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241112, 34.613937, 30.790071>,  <30.300991, 34.820992, 30.895632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241112, 34.613937, 30.790071>,  <30.141314, 34.268848, 30.614138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241112, 34.613937, 30.790071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091920, -0.473249, 0.876120,
		0.964003, -0.178159, -0.197376,
		0.249497, 0.862725, 0.439837,
		30.315960, 34.872753, 30.922022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766270, 34.104282, 30.982723>,  <30.141314, 34.268848, 30.614138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766270, 34.104282, 30.982723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595055, 34.435532, 31.127495>,  <30.492325, 34.634281, 31.214357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595055, 34.435532, 31.127495>,  <30.766270, 34.104282, 30.982723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595055, 34.435532, 31.127495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193811, -0.307044, 0.931752,
		0.882734, 0.468972, -0.029073,
		-0.428039, 0.828124, 0.361930,
		30.466642, 34.683968, 31.236074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206650, 34.394432, 31.597219>,  <30.766270, 34.104282, 30.982723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206650, 34.394432, 31.597219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825035, 34.513695, 31.609285>,  <30.596066, 34.585255, 31.616524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825035, 34.513695, 31.609285>,  <31.206650, 34.394432, 31.597219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825035, 34.513695, 31.609285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130177, -0.502971, 0.854444,
		0.269932, 0.811246, 0.518668,
		-0.954039, 0.298161, 0.030163,
		30.538824, 34.603142, 31.618334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057581, 34.604469, 32.226452>,  <31.206650, 34.394432, 31.597219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057581, 34.604469, 32.226452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686974, 34.543514, 32.088844>,  <30.464609, 34.506943, 32.006279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686974, 34.543514, 32.088844>,  <31.057581, 34.604469, 32.226452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686974, 34.543514, 32.088844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264064, -0.387953, 0.883041,
		-0.268025, 0.908994, 0.319205,
		-0.926516, -0.152386, -0.344014,
		30.409019, 34.497799, 31.985640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444084, 35.088997, 31.737185>,  <31.057581, 34.604469, 32.226452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444084, 35.088997, 31.737185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546711, 34.708107, 31.803444>,  <31.608288, 34.479572, 31.843199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546711, 34.708107, 31.803444>,  <31.444084, 35.088997, 31.737185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546711, 34.708107, 31.803444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566612, 0.287027, 0.772377,
		-0.783023, -0.104308, 0.613184,
		0.256566, -0.952226, 0.165647,
		31.623680, 34.422440, 31.853138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629412, 35.057434, 32.497505>,  <31.444084, 35.088997, 31.737185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629412, 35.057434, 32.497505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760227, 34.717205, 32.332787>,  <31.838717, 34.513069, 32.233955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760227, 34.717205, 32.332787>,  <31.629412, 35.057434, 32.497505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760227, 34.717205, 32.332787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574824, -0.166822, 0.801091,
		-0.750082, -0.498696, 0.434372,
		0.327038, -0.850572, -0.411793,
		31.858339, 34.462032, 32.209248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096020, 35.334740, 32.788136>,  <31.629412, 35.057434, 32.497505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096020, 35.334740, 32.788136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441141, 35.419651, 32.971661>,  <31.648214, 35.470596, 33.081776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441141, 35.419651, 32.971661>,  <31.096020, 35.334740, 32.788136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441141, 35.419651, 32.971661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002659, 0.905648, -0.424022,
		-0.505530, 0.367068, 0.780833,
		0.862805, 0.212280, 0.458808,
		31.699982, 35.483334, 33.109303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137896, 36.056087, 33.315075>,  <31.096020, 35.334740, 32.788136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137896, 36.056087, 33.315075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472948, 35.962505, 33.117634>,  <31.673979, 35.906357, 32.999168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472948, 35.962505, 33.117634>,  <31.137896, 36.056087, 33.315075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472948, 35.962505, 33.117634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034082, 0.879492, -0.474692,
		0.545172, 0.414440, 0.728716,
		0.837631, -0.233953, -0.493599,
		31.724237, 35.892319, 32.969555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829515, 36.546932, 33.493042>,  <31.137896, 36.056087, 33.315075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829515, 36.546932, 33.493042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798588, 36.381535, 33.130154>,  <31.780031, 36.282295, 32.912422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.798588, 36.381535, 33.130154>,  <31.829515, 36.546932, 33.493042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798588, 36.381535, 33.130154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249133, 0.889090, -0.383993,
		0.965378, 0.196328, -0.171760,
		-0.077321, -0.413490, -0.907220,
		31.775391, 36.257488, 32.857986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841024, 37.190788, 33.055588>,  <31.829515, 36.546932, 33.493042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841024, 37.190788, 33.055588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831188, 37.092113, 32.668076>,  <31.825287, 37.032909, 32.435566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831188, 37.092113, 32.668076>,  <31.841024, 37.190788, 33.055588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831188, 37.092113, 32.668076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417900, 0.882879, -0.214206,
		0.908160, 0.399587, -0.124801,
		-0.024590, -0.246688, -0.968783,
		31.823811, 37.018108, 32.377441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904791, 37.845158, 32.687527>,  <31.841024, 37.190788, 33.055588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904791, 37.845158, 32.687527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785898, 37.635162, 32.368519>,  <31.714561, 37.509167, 32.177113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785898, 37.635162, 32.368519>,  <31.904791, 37.845158, 32.687527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785898, 37.635162, 32.368519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386233, 0.829993, -0.402411,
		0.873199, 0.188420, -0.449467,
		-0.297232, -0.524984, -0.797524,
		31.696728, 37.477669, 32.129261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069382, 38.289268, 32.114437>,  <31.904791, 37.845158, 32.687527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069382, 38.289268, 32.114437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787720, 38.018112, 32.029938>,  <31.618723, 37.855419, 31.979239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787720, 38.018112, 32.029938>,  <32.069382, 38.289268, 32.114437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787720, 38.018112, 32.029938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533087, 0.701250, -0.473357,
		0.469021, -0.220706, -0.855166,
		-0.704158, -0.677892, -0.211246,
		31.576473, 37.814743, 31.966564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183167, 37.582199, 31.903566>,  <32.069382, 38.289268, 32.114437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183167, 37.582199, 31.903566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013161, 37.431545, 31.574324>,  <31.911156, 37.341152, 31.376778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013161, 37.431545, 31.574324>,  <32.183167, 37.582199, 31.903566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013161, 37.431545, 31.574324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307911, 0.915255, -0.259805,
		0.851206, 0.143022, -0.504969,
		-0.425018, -0.376633, -0.823108,
		31.885654, 37.318554, 31.327391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198448, 38.000591, 31.307550>,  <32.183167, 37.582199, 31.903566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198448, 38.000591, 31.307550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862831, 37.787922, 31.261358>,  <31.661461, 37.660320, 31.233643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862831, 37.787922, 31.261358>,  <32.198448, 38.000591, 31.307550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862831, 37.787922, 31.261358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473131, 0.817814, -0.327608,
		0.268622, -0.220238, -0.937730,
		-0.839041, -0.531672, -0.115481,
		31.611118, 37.628422, 31.226713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892891, 38.099644, 30.578945>,  <32.198448, 38.000591, 31.307550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892891, 38.099644, 30.578945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633751, 38.008465, 30.869690>,  <31.478266, 37.953758, 31.044136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633751, 38.008465, 30.869690>,  <31.892891, 38.099644, 30.578945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633751, 38.008465, 30.869690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484652, 0.859494, -0.162426,
		-0.587708, -0.457503, -0.667301,
		-0.647852, -0.227949, 0.726861,
		31.439396, 37.940079, 31.087748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184042, 38.267773, 30.344202>,  <31.892891, 38.099644, 30.578945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184042, 38.267773, 30.344202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184767, 38.300373, 30.742870>,  <31.185202, 38.319931, 30.982071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184767, 38.300373, 30.742870>,  <31.184042, 38.267773, 30.344202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184767, 38.300373, 30.742870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374801, 0.924076, -0.074879,
		-0.927103, -0.373418, 0.032220,
		0.001813, 0.081496, 0.996672,
		31.185310, 38.324821, 31.041872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619499, 38.702942, 30.389687>,  <31.184042, 38.267773, 30.344202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619499, 38.702942, 30.389687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831982, 38.699188, 30.728561>,  <30.959473, 38.696938, 30.931887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831982, 38.699188, 30.728561>,  <30.619499, 38.702942, 30.389687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831982, 38.699188, 30.728561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244894, 0.955555, 0.164136,
		-0.811076, -0.294662, 0.505302,
		0.531209, -0.009382, 0.847189,
		30.991344, 38.696373, 30.982718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336317, 38.836296, 31.143570>,  <30.619499, 38.702942, 30.389687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336317, 38.836296, 31.143570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684681, 39.012100, 31.055616>,  <30.893700, 39.117580, 31.002844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684681, 39.012100, 31.055616>,  <30.336317, 38.836296, 31.143570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684681, 39.012100, 31.055616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422793, 0.898157, 0.120664,
		0.250525, -0.012121, 0.968034,
		0.870909, 0.439508, -0.219886,
		30.945953, 39.143951, 30.989651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744452, 39.193764, 31.700171>,  <30.336317, 38.836296, 31.143570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744452, 39.193764, 31.700171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781361, 39.396938, 31.357595>,  <30.803507, 39.518841, 31.152050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781361, 39.396938, 31.357595>,  <30.744452, 39.193764, 31.700171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781361, 39.396938, 31.357595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534901, 0.750753, 0.387622,
		0.839861, 0.422343, 0.340970,
		0.092275, 0.507933, -0.856440,
		30.809044, 39.549320, 31.100664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259476, 38.882458, 32.238071>,  <30.744452, 39.193764, 31.700171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259476, 38.882458, 32.238071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058107, 38.788097, 31.905586>,  <30.937286, 38.731480, 31.706095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058107, 38.788097, 31.905586>,  <31.259476, 38.882458, 32.238071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058107, 38.788097, 31.905586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474633, -0.879368, -0.037891,
		-0.722004, -0.413596, 0.554660,
		-0.503422, -0.235902, -0.831214,
		30.907080, 38.717327, 31.656221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950010, 38.249218, 32.258347>,  <31.259476, 38.882458, 32.238071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950010, 38.249218, 32.258347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016859, 38.282326, 31.865366>,  <31.056969, 38.302193, 31.629578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016859, 38.282326, 31.865366>,  <30.950010, 38.249218, 32.258347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016859, 38.282326, 31.865366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248711, -0.967783, -0.039228,
		-0.954050, -0.237792, -0.182326,
		0.167124, 0.082772, -0.982455,
		31.066996, 38.307156, 31.570629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572697, 37.655396, 31.991966>,  <30.950010, 38.249218, 32.258347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572697, 37.655396, 31.991966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864840, 37.769306, 31.743618>,  <31.040125, 37.837654, 31.594608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.864840, 37.769306, 31.743618>,  <30.572697, 37.655396, 31.991966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864840, 37.769306, 31.743618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428578, -0.898821, 0.091885,
		-0.531884, -0.333200, -0.778510,
		0.730357, 0.284779, -0.620870,
		31.083946, 37.854740, 31.557358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638964, 37.220573, 31.393217>,  <30.572697, 37.655396, 31.991966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638964, 37.220573, 31.393217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002676, 37.367538, 31.471411>,  <31.220903, 37.455719, 31.518326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002676, 37.367538, 31.471411>,  <30.638964, 37.220573, 31.393217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002676, 37.367538, 31.471411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372508, -0.927959, 0.011408,
		0.185591, 0.062445, -0.980641,
		0.909282, 0.367414, 0.195482,
		31.275461, 37.477764, 31.530056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211592, 36.815983, 31.129358>,  <30.638964, 37.220573, 31.393217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211592, 36.815983, 31.129358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373207, 37.001808, 31.444557>,  <31.470177, 37.113304, 31.633677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373207, 37.001808, 31.444557>,  <31.211592, 36.815983, 31.129358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373207, 37.001808, 31.444557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540553, -0.816198, 0.204020,
		0.737939, 0.343521, -0.580895,
		0.404040, 0.464559, 0.787995,
		31.494419, 37.141174, 31.680956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961178, 36.727871, 31.112764>,  <31.211592, 36.815983, 31.129358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961178, 36.727871, 31.112764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886782, 36.792072, 31.500505>,  <31.842144, 36.830593, 31.733150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886782, 36.792072, 31.500505>,  <31.961178, 36.727871, 31.112764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886782, 36.792072, 31.500505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487061, -0.841762, 0.232827,
		0.853334, 0.515438, 0.078388,
		-0.185992, 0.160499, 0.969354,
		31.830984, 36.840221, 31.791311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533562, 36.517799, 31.386044>,  <31.961178, 36.727871, 31.112764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533562, 36.517799, 31.386044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249573, 36.515324, 31.667725>,  <32.079178, 36.513836, 31.836733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249573, 36.515324, 31.667725>,  <32.533562, 36.517799, 31.386044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249573, 36.515324, 31.667725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369242, -0.854761, 0.364752,
		0.599666, 0.518985, 0.609143,
		-0.709973, -0.006192, 0.704202,
		32.036579, 36.513466, 31.878984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789902, 37.029919, 30.805180>,  <32.533562, 36.517799, 31.386044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789902, 37.029919, 30.805180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678528, 37.243687, 30.485964>,  <32.611702, 37.371948, 30.294436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678528, 37.243687, 30.485964>,  <32.789902, 37.029919, 30.805180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678528, 37.243687, 30.485964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284850, 0.839461, 0.462781,
		0.917243, -0.098467, -0.385965,
		-0.278434, 0.534424, -0.798038,
		32.594997, 37.404015, 30.246552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396130, 37.493416, 30.496437>,  <32.789902, 37.029919, 30.805180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396130, 37.493416, 30.496437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027637, 37.638119, 30.439207>,  <32.806541, 37.724937, 30.404869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027637, 37.638119, 30.439207>,  <33.396130, 37.493416, 30.496437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027637, 37.638119, 30.439207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264193, 0.851745, 0.452474,
		0.285548, 0.379033, -0.880225,
		-0.921230, 0.361753, -0.143076,
		32.751270, 37.746643, 30.396284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047424, 37.480518, 30.201410>,  <33.396130, 37.493416, 30.496437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047424, 37.480518, 30.201410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430286, 37.483044, 30.085608>,  <34.660004, 37.484558, 30.016127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430286, 37.483044, 30.085608>,  <34.047424, 37.480518, 30.201410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430286, 37.483044, 30.085608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242653, -0.528104, -0.813772,
		-0.158028, 0.849156, -0.503946,
		0.957156, 0.006315, -0.289506,
		34.717434, 37.484940, 29.998756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995041, 37.657951, 29.510126>,  <34.047424, 37.480518, 30.201410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995041, 37.657951, 29.510126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352577, 37.480335, 29.535011>,  <34.567101, 37.373764, 29.549942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352577, 37.480335, 29.535011>,  <33.995041, 37.657951, 29.510126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352577, 37.480335, 29.535011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178754, -0.480145, -0.858783,
		0.411207, 0.756496, -0.508549,
		0.893843, -0.444043, 0.062213,
		34.620731, 37.347122, 29.553675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139965, 37.677006, 28.890810>,  <33.995041, 37.657951, 29.510126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139965, 37.677006, 28.890810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387154, 37.400272, 29.040197>,  <34.535465, 37.234234, 29.129829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387154, 37.400272, 29.040197>,  <34.139965, 37.677006, 28.890810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387154, 37.400272, 29.040197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116841, -0.550571, -0.826571,
		0.777471, 0.467160, -0.421071,
		0.617971, -0.691833, 0.373469,
		34.572544, 37.192722, 29.152239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868595, 37.521454, 28.518873>,  <34.139965, 37.677006, 28.890810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868595, 37.521454, 28.518873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760071, 37.185062, 28.706121>,  <34.694954, 36.983227, 28.818470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760071, 37.185062, 28.706121>,  <34.868595, 37.521454, 28.518873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760071, 37.185062, 28.706121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191171, -0.523758, -0.830139,
		0.943314, -0.135739, 0.302875,
		-0.271315, -0.840983, 0.468119,
		34.678677, 36.932766, 28.846558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279667, 37.055691, 28.196217>,  <34.868595, 37.521454, 28.518873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279667, 37.055691, 28.196217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064335, 36.793320, 28.407864>,  <34.935135, 36.635899, 28.534851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064335, 36.793320, 28.407864>,  <35.279667, 37.055691, 28.196217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064335, 36.793320, 28.407864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257160, -0.725769, -0.638066,
		0.802540, -0.207422, 0.559380,
		-0.538329, -0.655923, 0.529118,
		34.902836, 36.596542, 28.566599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574329, 36.416409, 28.223682>,  <35.279667, 37.055691, 28.196217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574329, 36.416409, 28.223682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187634, 36.314297, 28.217377>,  <34.955616, 36.253029, 28.213593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187634, 36.314297, 28.217377>,  <35.574329, 36.416409, 28.223682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187634, 36.314297, 28.217377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230287, -0.841969, -0.487911,
		0.111277, -0.475313, 0.872751,
		-0.966740, -0.255276, -0.015766,
		34.897614, 36.237713, 28.212646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658192, 35.802433, 28.133930>,  <35.574329, 36.416409, 28.223682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658192, 35.802433, 28.133930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263107, 35.823608, 28.075109>,  <35.026058, 35.836315, 28.039818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263107, 35.823608, 28.075109>,  <35.658192, 35.802433, 28.133930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263107, 35.823608, 28.075109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043245, -0.811579, -0.582640,
		-0.150187, -0.581840, 0.799316,
		-0.987711, 0.052938, -0.147050,
		34.966793, 35.839489, 28.030994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320335, 35.137207, 28.264418>,  <35.658192, 35.802433, 28.133930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320335, 35.137207, 28.264418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064659, 35.339104, 28.032326>,  <34.911255, 35.460243, 27.893070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064659, 35.339104, 28.032326>,  <35.320335, 35.137207, 28.264418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064659, 35.339104, 28.032326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026694, -0.768584, -0.639192,
		-0.768584, -0.393078, 0.504746,
		0.639192, -0.504746, 0.580228,
		34.872902, 35.490528, 27.858257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835945, 34.644260, 28.085073>,  <35.320335, 35.137207, 28.264418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835945, 34.644260, 28.085073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824707, 34.941128, 27.817225>,  <34.817966, 35.119247, 27.656515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824707, 34.941128, 27.817225>,  <34.835945, 34.644260, 28.085073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824707, 34.941128, 27.817225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089943, -0.669044, -0.737760,
		-0.995551, 0.039503, 0.085547,
		-0.028091, 0.742172, -0.669621,
		34.816280, 35.163780, 27.616339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389130, 34.492981, 27.706360>,  <34.835945, 34.644260, 28.085073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389130, 34.492981, 27.706360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615089, 34.730782, 27.477465>,  <34.750664, 34.873463, 27.340128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615089, 34.730782, 27.477465>,  <34.389130, 34.492981, 27.706360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615089, 34.730782, 27.477465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197334, -0.576035, -0.793249,
		-0.801216, 0.561028, -0.208086,
		0.564899, 0.594501, -0.572238,
		34.784557, 34.909130, 27.305794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967880, 34.596916, 27.053644>,  <34.389130, 34.492981, 27.706360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967880, 34.596916, 27.053644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342442, 34.675606, 26.937407>,  <34.567181, 34.722820, 26.867664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342442, 34.675606, 26.937407>,  <33.967880, 34.596916, 27.053644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342442, 34.675606, 26.937407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204220, -0.367935, -0.907148,
		-0.285376, 0.908804, -0.304362,
		0.936405, 0.196722, -0.290596,
		34.623363, 34.734623, 26.850227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957966, 34.661438, 26.411320>,  <33.967880, 34.596916, 27.053644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957966, 34.661438, 26.411320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356228, 34.642082, 26.443121>,  <34.595184, 34.630466, 26.462202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356228, 34.642082, 26.443121>,  <33.957966, 34.661438, 26.411320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356228, 34.642082, 26.443121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063308, -0.274060, -0.959627,
		0.068227, 0.960494, -0.269807,
		0.995659, -0.048392, 0.079505,
		34.654926, 34.627563, 26.466972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133938, 34.921955, 25.809460>,  <33.957966, 34.661438, 26.411320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133938, 34.921955, 25.809460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482327, 34.747478, 25.899916>,  <34.691360, 34.642792, 25.954189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482327, 34.747478, 25.899916>,  <34.133938, 34.921955, 25.809460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482327, 34.747478, 25.899916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134128, -0.231695, -0.963497,
		0.472666, 0.869513, -0.143295,
		0.870975, -0.436192, 0.226141,
		34.743618, 34.616619, 25.967758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609505, 35.222088, 25.352947>,  <34.133938, 34.921955, 25.809460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609505, 35.222088, 25.352947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793213, 34.879478, 25.447121>,  <34.903439, 34.673912, 25.503624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793213, 34.879478, 25.447121>,  <34.609505, 35.222088, 25.352947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793213, 34.879478, 25.447121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339333, -0.075769, -0.937610,
		0.820927, 0.510509, 0.255849,
		0.459273, -0.856528, 0.235433,
		34.930996, 34.622520, 25.517750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145615, 35.163162, 24.904499>,  <34.609505, 35.222088, 25.352947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145615, 35.163162, 24.904499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106689, 34.780209, 25.013268>,  <35.083332, 34.550434, 25.078529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106689, 34.780209, 25.013268>,  <35.145615, 35.163162, 24.904499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106689, 34.780209, 25.013268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137064, -0.283508, -0.949124,
		0.985770, -0.055094, 0.158813,
		-0.097316, -0.957386, 0.271923,
		35.077496, 34.492992, 25.094845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824013, 34.800938, 24.824430>,  <35.145615, 35.163162, 24.904499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824013, 34.800938, 24.824430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538502, 34.520973, 24.834511>,  <35.367195, 34.352993, 24.840559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538502, 34.520973, 24.834511>,  <35.824013, 34.800938, 24.824430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538502, 34.520973, 24.834511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320615, -0.358534, -0.876732,
		0.622674, -0.617714, 0.480318,
		-0.713781, -0.699916, 0.025202,
		35.324368, 34.310997, 24.842072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146065, 34.075951, 24.711884>,  <35.824013, 34.800938, 24.824430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146065, 34.075951, 24.711884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759155, 34.045475, 24.615070>,  <35.527012, 34.027191, 24.556982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759155, 34.045475, 24.615070>,  <36.146065, 34.075951, 24.711884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759155, 34.045475, 24.615070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246349, -0.510547, -0.823805,
		-0.060807, -0.856468, 0.512607,
		-0.967272, -0.076187, -0.242034,
		35.468975, 34.022617, 24.542459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090046, 33.454006, 24.354858>,  <36.146065, 34.075951, 24.711884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090046, 33.454006, 24.354858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741940, 33.625237, 24.257378>,  <35.533077, 33.727974, 24.198889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741940, 33.625237, 24.257378>,  <36.090046, 33.454006, 24.354858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741940, 33.625237, 24.257378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128627, -0.280087, -0.951318,
		-0.475498, -0.859243, 0.188687,
		-0.870262, 0.428080, -0.243703,
		35.480862, 33.753662, 24.184267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804173, 32.935505, 23.993280>,  <36.090046, 33.454006, 24.354858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804173, 32.935505, 23.993280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597233, 33.266701, 23.906755>,  <35.473068, 33.465416, 23.854841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597233, 33.266701, 23.906755>,  <35.804173, 32.935505, 23.993280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597233, 33.266701, 23.906755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071846, -0.209852, -0.975090,
		-0.852754, -0.520001, 0.049079,
		-0.517347, 0.827986, -0.216312,
		35.442028, 33.515095, 23.841862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140419, 32.712612, 23.584095>,  <35.804173, 32.935505, 23.993280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140419, 32.712612, 23.584095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255569, 33.086857, 23.502359>,  <35.324661, 33.311405, 23.453318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255569, 33.086857, 23.502359>,  <35.140419, 32.712612, 23.584095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255569, 33.086857, 23.502359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142165, -0.252759, -0.957028,
		-0.947056, 0.246456, -0.205775,
		0.287877, 0.935613, -0.204339,
		35.341934, 33.367542, 23.441057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859493, 32.844936, 22.956375>,  <35.140419, 32.712612, 23.584095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859493, 32.844936, 22.956375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123970, 33.144356, 22.976381>,  <35.282658, 33.324005, 22.988384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123970, 33.144356, 22.976381>,  <34.859493, 32.844936, 22.956375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123970, 33.144356, 22.976381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247849, -0.155029, -0.956314,
		-0.708091, 0.644706, -0.288031,
		0.661195, 0.748545, 0.050015,
		35.322327, 33.368919, 22.991386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842663, 33.286510, 22.281412>,  <34.859493, 32.844936, 22.956375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842663, 33.286510, 22.281412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191391, 33.338154, 22.470417>,  <35.400627, 33.369141, 22.583820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191391, 33.338154, 22.470417>,  <34.842663, 33.286510, 22.281412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191391, 33.338154, 22.470417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487162, -0.127940, -0.863889,
		-0.051085, 0.983342, -0.174439,
		0.871816, 0.129112, 0.472511,
		35.452934, 33.376888, 22.612171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136951, 33.883202, 21.975895>,  <34.842663, 33.286510, 22.281412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136951, 33.883202, 21.975895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390804, 33.623150, 22.143023>,  <35.543118, 33.467117, 22.243299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390804, 33.623150, 22.143023>,  <35.136951, 33.883202, 21.975895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390804, 33.623150, 22.143023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354853, -0.235140, -0.904869,
		0.686529, 0.722524, 0.081473,
		0.634632, -0.650130, 0.417820,
		35.581192, 33.428112, 22.268368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730949, 33.896503, 21.554104>,  <35.136951, 33.883202, 21.975895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730949, 33.896503, 21.554104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810326, 33.541344, 21.720121>,  <35.857952, 33.328247, 21.819733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810326, 33.541344, 21.720121>,  <35.730949, 33.896503, 21.554104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810326, 33.541344, 21.720121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160674, -0.388265, -0.907433,
		0.966853, 0.246758, 0.065615,
		0.198440, -0.887897, 0.415043,
		35.869858, 33.274975, 21.844635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325775, 33.656219, 21.199219>,  <35.730949, 33.896503, 21.554104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325775, 33.656219, 21.199219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209789, 33.325665, 21.392302>,  <36.140198, 33.127331, 21.508150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209789, 33.325665, 21.392302>,  <36.325775, 33.656219, 21.199219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209789, 33.325665, 21.392302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286188, -0.556168, -0.780239,
		0.913244, -0.088099, 0.397773,
		-0.289967, -0.826387, 0.482705,
		36.122799, 33.077747, 21.537113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935287, 33.198093, 21.146135>,  <36.325775, 33.656219, 21.199219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935287, 33.198093, 21.146135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609318, 32.976341, 21.213724>,  <36.413734, 32.843288, 21.254276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609318, 32.976341, 21.213724>,  <36.935287, 33.198093, 21.146135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609318, 32.976341, 21.213724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183613, -0.523492, -0.832011,
		0.549708, -0.647004, 0.528400,
		-0.814928, -0.554384, 0.168970,
		36.364838, 32.810024, 21.264416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200996, 32.555809, 21.072617>,  <36.935287, 33.198093, 21.146135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200996, 32.555809, 21.072617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803402, 32.555107, 21.028820>,  <36.564846, 32.554688, 21.002542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803402, 32.555107, 21.028820>,  <37.200996, 32.555809, 21.072617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803402, 32.555107, 21.028820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101641, -0.386844, -0.916526,
		-0.040747, -0.922144, 0.384696,
		-0.993986, -0.001755, -0.109491,
		36.505207, 32.554581, 20.995974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001572, 31.862185, 20.834673>,  <37.200996, 32.555809, 21.072617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001572, 31.862185, 20.834673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740520, 32.147560, 20.732622>,  <36.583889, 32.318787, 20.671392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740520, 32.147560, 20.732622>,  <37.001572, 31.862185, 20.834673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740520, 32.147560, 20.732622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037055, -0.366370, -0.929731,
		-0.756776, -0.597310, 0.265538,
		-0.652623, 0.713437, -0.255127,
		36.544735, 32.361591, 20.656084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531700, 31.440182, 20.401901>,  <37.001572, 31.862185, 20.834673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531700, 31.440182, 20.401901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470280, 31.825788, 20.315098>,  <36.433426, 32.057152, 20.263016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470280, 31.825788, 20.315098>,  <36.531700, 31.440182, 20.401901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470280, 31.825788, 20.315098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019301, -0.222495, -0.974743,
		-0.987952, -0.145486, 0.052771,
		-0.153552, 0.964017, -0.217007,
		36.424213, 32.114994, 20.249996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137199, 31.462414, 19.822968>,  <36.531700, 31.440182, 20.401901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137199, 31.462414, 19.822968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293545, 31.829603, 19.795990>,  <36.387352, 32.049915, 19.779804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293545, 31.829603, 19.795990>,  <36.137199, 31.462414, 19.822968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293545, 31.829603, 19.795990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263855, -0.181943, -0.947247,
		-0.881818, 0.352452, -0.313327,
		0.390867, 0.917973, -0.067444,
		36.410805, 32.104996, 19.775757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058800, 31.606314, 19.163568>,  <36.137199, 31.462414, 19.822968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058800, 31.606314, 19.163568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326664, 31.879150, 19.281084>,  <36.487381, 32.042850, 19.351593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326664, 31.879150, 19.281084>,  <36.058800, 31.606314, 19.163568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326664, 31.879150, 19.281084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511178, -0.136355, -0.848590,
		-0.538756, 0.718442, -0.439981,
		0.669656, 0.682091, 0.293789,
		36.527561, 32.083778, 19.369221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221996, 31.876028, 18.546764>,  <36.058800, 31.606314, 19.163568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221996, 31.876028, 18.546764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520683, 31.948290, 18.802818>,  <36.699898, 31.991648, 18.956450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520683, 31.948290, 18.802818>,  <36.221996, 31.876028, 18.546764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520683, 31.948290, 18.802818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664971, -0.224237, -0.712412,
		0.014840, 0.957644, -0.287574,
		0.746722, 0.180656, 0.640133,
		36.744701, 32.002487, 18.994858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724815, 32.237206, 18.171057>,  <36.221996, 31.876028, 18.546764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724815, 32.237206, 18.171057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938118, 32.123730, 18.489843>,  <37.066101, 32.055645, 18.681116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938118, 32.123730, 18.489843>,  <36.724815, 32.237206, 18.171057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938118, 32.123730, 18.489843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837594, 0.044936, -0.544443,
		0.118640, 0.957863, 0.261579,
		0.533256, -0.283690, 0.796968,
		37.098095, 32.038624, 18.728933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216404, 32.686024, 18.185583>,  <36.724815, 32.237206, 18.171057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216404, 32.686024, 18.185583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342133, 32.358753, 18.378160>,  <37.417572, 32.162392, 18.493708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342133, 32.358753, 18.378160>,  <37.216404, 32.686024, 18.185583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342133, 32.358753, 18.378160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822750, -0.018213, -0.568111,
		0.473583, 0.574680, 0.667430,
		0.314326, -0.818176, 0.481443,
		37.436432, 32.113300, 18.522593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871986, 32.862843, 18.452047>,  <37.216404, 32.686024, 18.185583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871986, 32.862843, 18.452047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823795, 32.469017, 18.401264>,  <37.794880, 32.232723, 18.370794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823795, 32.469017, 18.401264>,  <37.871986, 32.862843, 18.452047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823795, 32.469017, 18.401264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812207, -0.024228, -0.582867,
		0.570794, -0.173341, 0.802588,
		-0.120480, -0.984564, -0.126960,
		37.787651, 32.173649, 18.363176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568996, 32.551651, 18.727980>,  <37.871986, 32.862843, 18.452047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568996, 32.551651, 18.727980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395405, 32.302937, 18.467199>,  <38.291248, 32.153706, 18.310730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395405, 32.302937, 18.467199>,  <38.568996, 32.551651, 18.727980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395405, 32.302937, 18.467199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815989, 0.035448, -0.576980,
		0.381871, -0.782382, 0.491989,
		-0.433978, -0.621789, -0.651952,
		38.265213, 32.116402, 18.271614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162144, 32.193932, 18.441950>,  <38.568996, 32.551651, 18.727980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162144, 32.193932, 18.441950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869545, 32.119087, 18.179682>,  <38.693985, 32.074181, 18.022322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869545, 32.119087, 18.179682>,  <39.162144, 32.193932, 18.441950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869545, 32.119087, 18.179682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680935, -0.150828, -0.716644,
		0.035197, -0.970691, 0.237739,
		-0.731498, -0.187109, -0.655669,
		38.650097, 32.062954, 17.982981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455605, 31.847179, 18.021181>,  <39.162144, 32.193932, 18.441950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455605, 31.847179, 18.021181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121307, 31.923447, 17.815201>,  <38.920727, 31.969208, 17.691612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121307, 31.923447, 17.815201>,  <39.455605, 31.847179, 18.021181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121307, 31.923447, 17.815201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493161, -0.151796, -0.856592,
		-0.241492, -0.969847, 0.032833,
		-0.835747, 0.190668, -0.514949,
		38.870583, 31.980646, 17.660717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376774, 31.326956, 17.576654>,  <39.455605, 31.847179, 18.021181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376774, 31.326956, 17.576654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185940, 31.644070, 17.424929>,  <39.071438, 31.834337, 17.333893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185940, 31.644070, 17.424929>,  <39.376774, 31.326956, 17.576654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185940, 31.644070, 17.424929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510618, -0.101235, -0.853827,
		-0.715301, -0.601036, -0.356512,
		-0.477089, 0.792785, -0.379313,
		39.042812, 31.881905, 17.311134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092834, 31.137484, 16.978430>,  <39.376774, 31.326956, 17.576654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092834, 31.137484, 16.978430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112427, 31.533487, 16.925543>,  <39.124180, 31.771090, 16.893810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112427, 31.533487, 16.925543>,  <39.092834, 31.137484, 16.978430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112427, 31.533487, 16.925543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252178, -0.140344, -0.957450,
		-0.966441, 0.013552, -0.256533,
		0.048978, 0.990010, -0.132217,
		39.127121, 31.830490, 16.885878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765781, 31.252214, 16.236065>,  <39.092834, 31.137484, 16.978430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765781, 31.252214, 16.236065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972370, 31.571520, 16.360023>,  <39.096325, 31.763103, 16.434399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972370, 31.571520, 16.360023>,  <38.765781, 31.252214, 16.236065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972370, 31.571520, 16.360023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453347, 0.052121, -0.889809,
		-0.726452, 0.600052, -0.334970,
		0.516473, 0.798261, 0.309895,
		39.127312, 31.810999, 16.452991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680321, 31.761812, 15.664874>,  <38.765781, 31.252214, 16.236065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680321, 31.761812, 15.664874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997089, 31.872393, 15.882658>,  <39.187149, 31.938742, 16.013329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997089, 31.872393, 15.882658>,  <38.680321, 31.761812, 15.664874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997089, 31.872393, 15.882658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576593, -0.045042, -0.815789,
		-0.201002, 0.959972, -0.195069,
		0.791921, 0.276450, 0.544460,
		39.234665, 31.955328, 16.045996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940269, 32.188366, 15.322352>,  <38.680321, 31.761812, 15.664874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940269, 32.188366, 15.322352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249592, 32.102081, 15.560835>,  <39.435184, 32.050312, 15.703924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249592, 32.102081, 15.560835>,  <38.940269, 32.188366, 15.322352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249592, 32.102081, 15.560835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633997, 0.253670, -0.730547,
		0.006349, 0.942932, 0.332926,
		0.773309, -0.215712, 0.596206,
		39.481583, 32.037369, 15.739697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454460, 32.763660, 15.216582>,  <38.940269, 32.188366, 15.322352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454460, 32.763660, 15.216582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627186, 32.425415, 15.342101>,  <39.730820, 32.222466, 15.417412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627186, 32.425415, 15.342101>,  <39.454460, 32.763660, 15.216582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627186, 32.425415, 15.342101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774030, 0.168811, -0.610230,
		0.463049, 0.506394, 0.727428,
		0.431815, -0.845617, 0.313796,
		39.756729, 32.171730, 15.436240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271317, 32.582359, 15.300769>,  <39.454460, 32.763660, 15.216582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271317, 32.582359, 15.300769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667953, 32.532692, 15.286197>,  <40.905937, 32.502892, 15.277453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667953, 32.532692, 15.286197>,  <40.271317, 32.582359, 15.300769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667953, 32.532692, 15.286197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038404, -0.013537, -0.999171,
		0.123575, 0.992168, -0.018192,
		0.991592, -0.124171, -0.036430,
		40.965431, 32.495441, 15.275268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558910, 33.096054, 14.897038>,  <40.271317, 32.582359, 15.300769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558910, 33.096054, 14.897038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784073, 32.765537, 14.904876>,  <40.919170, 32.567226, 14.909579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784073, 32.765537, 14.904876>,  <40.558910, 33.096054, 14.897038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784073, 32.765537, 14.904876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223345, -0.174894, -0.958921,
		0.795773, 0.535405, -0.282996,
		0.562906, -0.826289, 0.019596,
		40.952946, 32.517651, 14.910754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899612, 33.027523, 14.234828>,  <40.558910, 33.096054, 14.897038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899612, 33.027523, 14.234828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838394, 32.671268, 14.406099>,  <40.801662, 32.457516, 14.508862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838394, 32.671268, 14.406099>,  <40.899612, 33.027523, 14.234828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838394, 32.671268, 14.406099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242375, -0.386219, -0.889994,
		0.958035, -0.239988, -0.156761,
		-0.153044, -0.890640, 0.428179,
		40.792480, 32.404076, 14.534553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416397, 32.490536, 14.159882>,  <40.899612, 33.027523, 14.234828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416397, 32.490536, 14.159882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586220, 32.158981, 14.014171>,  <40.688114, 31.960049, 13.926744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586220, 32.158981, 14.014171>,  <40.416397, 32.490536, 14.159882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586220, 32.158981, 14.014171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634308, -0.014796, 0.772939,
		-0.646069, -0.559219, 0.519488,
		0.424555, -0.828888, -0.364277,
		40.713585, 31.910315, 13.904887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291004, 31.745041, 14.519589>,  <40.416397, 32.490536, 14.159882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291004, 31.745041, 14.519589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648373, 31.814224, 14.353754>,  <40.862793, 31.855734, 14.254253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648373, 31.814224, 14.353754>,  <40.291004, 31.745041, 14.519589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648373, 31.814224, 14.353754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399498, 0.116125, 0.909349,
		0.205425, -0.978059, 0.034652,
		0.893421, 0.172959, -0.414588,
		40.916401, 31.866112, 14.229378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923008, 31.331125, 14.754945>,  <40.291004, 31.745041, 14.519589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923008, 31.331125, 14.754945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054264, 31.689528, 14.635280>,  <41.133018, 31.904570, 14.563480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054264, 31.689528, 14.635280>,  <40.923008, 31.331125, 14.754945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054264, 31.689528, 14.635280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456198, 0.127004, 0.880769,
		0.827169, -0.425491, -0.367082,
		0.328138, 0.896006, -0.299162,
		41.152706, 31.958330, 14.545531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726696, 31.509771, 14.924425>,  <40.923008, 31.331125, 14.754945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726696, 31.509771, 14.924425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501255, 31.839090, 14.897498>,  <41.365990, 32.036682, 14.881342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501255, 31.839090, 14.897498>,  <41.726696, 31.509771, 14.924425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501255, 31.839090, 14.897498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371112, 0.325172, 0.869792,
		0.737986, 0.465239, -0.488804,
		-0.563607, 0.823296, -0.067317,
		41.332172, 32.086079, 14.877303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204636, 32.157459, 15.064692>,  <41.726696, 31.509771, 14.924425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204636, 32.157459, 15.064692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826717, 32.258579, 15.148070>,  <41.599964, 32.319252, 15.198098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826717, 32.258579, 15.148070>,  <42.204636, 32.157459, 15.064692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826717, 32.258579, 15.148070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292715, 0.365365, 0.883644,
		0.147223, 0.895881, -0.419193,
		-0.944798, 0.252797, 0.208448,
		41.543278, 32.334419, 15.210605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254993, 32.810806, 15.371284>,  <42.204636, 32.157459, 15.064692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254993, 32.810806, 15.371284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898125, 32.673729, 15.488983>,  <41.684002, 32.591484, 15.559603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898125, 32.673729, 15.488983>,  <42.254993, 32.810806, 15.371284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898125, 32.673729, 15.488983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148565, 0.392558, 0.907649,
		-0.426556, 0.853498, -0.299319,
		-0.892176, -0.342694, 0.294248,
		41.630470, 32.570919, 15.577257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980324, 33.388916, 15.693804>,  <42.254993, 32.810806, 15.371284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980324, 33.388916, 15.693804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755520, 33.077454, 15.805399>,  <41.620636, 32.890575, 15.872356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755520, 33.077454, 15.805399>,  <41.980324, 33.388916, 15.693804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755520, 33.077454, 15.805399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080405, 0.284268, 0.955367,
		-0.823214, 0.559357, -0.097153,
		-0.562009, -0.778660, 0.278989,
		41.586918, 32.843857, 15.889095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560402, 33.630043, 16.131132>,  <41.980324, 33.388916, 15.693804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560402, 33.630043, 16.131132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521378, 33.246529, 16.237879>,  <41.497963, 33.016422, 16.301926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521378, 33.246529, 16.237879>,  <41.560402, 33.630043, 16.131132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521378, 33.246529, 16.237879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054691, 0.262574, 0.963361,
		-0.993726, 0.108579, 0.026820,
		-0.097559, -0.958783, 0.266864,
		41.492111, 32.958893, 16.317938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050915, 33.650177, 16.674494>,  <41.560402, 33.630043, 16.131132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050915, 33.650177, 16.674494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206959, 33.283657, 16.710724>,  <41.300587, 33.063744, 16.732462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206959, 33.283657, 16.710724>,  <41.050915, 33.650177, 16.674494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206959, 33.283657, 16.710724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009796, 0.102494, 0.994685,
		-0.920714, -0.387154, 0.048960,
		0.390114, -0.916301, 0.090575,
		41.323994, 33.008766, 16.737896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689423, 33.243645, 17.286390>,  <41.050915, 33.650177, 16.674494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689423, 33.243645, 17.286390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069866, 33.125580, 17.250013>,  <41.298134, 33.054741, 17.228188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069866, 33.125580, 17.250013>,  <40.689423, 33.243645, 17.286390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069866, 33.125580, 17.250013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142881, 0.159440, 0.976813,
		-0.273823, -0.942049, 0.193818,
		0.951108, -0.295167, -0.090942,
		41.355198, 33.037029, 17.222731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729710, 32.719814, 17.734667>,  <40.689423, 33.243645, 17.286390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729710, 32.719814, 17.734667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110928, 32.828941, 17.682098>,  <41.339657, 32.894417, 17.650557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110928, 32.828941, 17.682098>,  <40.729710, 32.719814, 17.734667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110928, 32.828941, 17.682098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132849, 0.013322, 0.991047,
		0.272129, -0.961973, -0.023548,
		0.953046, 0.272821, -0.131423,
		41.396843, 32.910786, 17.642672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061890, 32.358501, 18.189455>,  <40.729710, 32.719814, 17.734667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061890, 32.358501, 18.189455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339970, 32.635593, 18.112694>,  <41.506817, 32.801849, 18.066637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339970, 32.635593, 18.112694>,  <41.061890, 32.358501, 18.189455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339970, 32.635593, 18.112694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230747, 0.037776, 0.972280,
		0.680773, -0.720211, -0.133582,
		0.695201, 0.692726, -0.191903,
		41.548531, 32.843410, 18.055122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607109, 32.181458, 18.656689>,  <41.061890, 32.358501, 18.189455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607109, 32.181458, 18.656689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624985, 32.567291, 18.552700>,  <41.635712, 32.798790, 18.490307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.624985, 32.567291, 18.552700>,  <41.607109, 32.181458, 18.656689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624985, 32.567291, 18.552700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095865, 0.254887, 0.962207,
		0.994390, -0.067925, -0.081078,
		0.044692, 0.964582, -0.259969,
		41.638393, 32.856667, 18.474709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142590, 32.398331, 18.991123>,  <41.607109, 32.181458, 18.656689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142590, 32.398331, 18.991123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945335, 32.734398, 18.900850>,  <41.826981, 32.936039, 18.846687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945335, 32.734398, 18.900850>,  <42.142590, 32.398331, 18.991123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945335, 32.734398, 18.900850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091737, 0.308195, 0.946890,
		0.865101, 0.446244, -0.229057,
		-0.493138, 0.840168, -0.225683,
		41.797394, 32.986446, 18.833145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485683, 32.936935, 19.125818>,  <42.142590, 32.398331, 18.991123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485683, 32.936935, 19.125818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113384, 33.081974, 19.144697>,  <41.890003, 33.168995, 19.156025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113384, 33.081974, 19.144697>,  <42.485683, 32.936935, 19.125818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113384, 33.081974, 19.144697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160457, 0.289028, 0.943778,
		0.328567, 0.885995, -0.327194,
		-0.930751, 0.362595, 0.047199,
		41.834160, 33.190754, 19.158857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521389, 33.427593, 19.662579>,  <42.485683, 32.936935, 19.125818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521389, 33.427593, 19.662579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123837, 33.418858, 19.619267>,  <41.885303, 33.413616, 19.593279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123837, 33.418858, 19.619267>,  <42.521389, 33.427593, 19.662579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123837, 33.418858, 19.619267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109016, 0.351917, 0.929661,
		0.017805, 0.935776, -0.352144,
		-0.993881, -0.021837, -0.108280,
		41.825672, 33.412308, 19.586782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303696, 34.117813, 19.780315>,  <42.521389, 33.427593, 19.662579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303696, 34.117813, 19.780315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013519, 33.851830, 19.851376>,  <41.839413, 33.692238, 19.894012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013519, 33.851830, 19.851376>,  <42.303696, 34.117813, 19.780315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013519, 33.851830, 19.851376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153873, 0.408258, 0.899804,
		-0.670863, 0.625420, -0.398487,
		-0.725442, -0.664962, 0.177650,
		41.795887, 33.652340, 19.904671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812069, 34.551735, 20.109646>,  <42.303696, 34.117813, 19.780315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812069, 34.551735, 20.109646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678051, 34.181351, 20.179325>,  <41.597641, 33.959122, 20.221132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678051, 34.181351, 20.179325>,  <41.812069, 34.551735, 20.109646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678051, 34.181351, 20.179325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495281, 0.330366, 0.803464,
		-0.801524, 0.182920, -0.569298,
		-0.335046, -0.925958, 0.174199,
		41.577538, 33.903564, 20.231585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010540, 34.662033, 20.055090>,  <41.812069, 34.551735, 20.109646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010540, 34.662033, 20.055090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123981, 34.327858, 20.243395>,  <41.192047, 34.127354, 20.356379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123981, 34.327858, 20.243395>,  <41.010540, 34.662033, 20.055090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123981, 34.327858, 20.243395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583093, 0.239501, 0.776300,
		-0.761297, -0.494659, -0.419213,
		0.283602, -0.835435, 0.470763,
		41.209061, 34.077229, 20.384624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378628, 34.199753, 20.221058>,  <41.010540, 34.662033, 20.055090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378628, 34.199753, 20.221058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684921, 34.168358, 20.476400>,  <40.868698, 34.149521, 20.629606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684921, 34.168358, 20.476400>,  <40.378628, 34.199753, 20.221058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684921, 34.168358, 20.476400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576303, 0.356913, 0.735179,
		-0.285537, -0.930835, 0.228069,
		0.765731, -0.078484, 0.638355,
		40.914642, 34.144814, 20.667906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052486, 34.099545, 20.811974>,  <40.378628, 34.199753, 20.221058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052486, 34.099545, 20.811974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424763, 34.194828, 20.923016>,  <40.648129, 34.251999, 20.989641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424763, 34.194828, 20.923016>,  <40.052486, 34.099545, 20.811974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424763, 34.194828, 20.923016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338761, 0.274941, 0.899805,
		0.138015, -0.931485, 0.336581,
		0.930695, 0.238207, 0.277605,
		40.703972, 34.266293, 21.006296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057552, 33.889572, 21.542700>,  <40.052486, 34.099545, 20.811974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057552, 33.889572, 21.542700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365505, 34.137203, 21.480690>,  <40.550278, 34.285782, 21.443483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365505, 34.137203, 21.480690>,  <40.057552, 33.889572, 21.542700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365505, 34.137203, 21.480690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227408, 0.493084, 0.839734,
		0.596301, -0.611238, 0.520397,
		0.769878, 0.619077, -0.155026,
		40.596470, 34.322926, 21.434183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466534, 34.006893, 22.186422>,  <40.057552, 33.889572, 21.542700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466534, 34.006893, 22.186422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544144, 34.326405, 21.958630>,  <40.590710, 34.518112, 21.821953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.544144, 34.326405, 21.958630>,  <40.466534, 34.006893, 22.186422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544144, 34.326405, 21.958630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230348, 0.601381, 0.765037,
		0.953569, -0.017256, 0.300679,
		0.194024, 0.798776, -0.569483,
		40.602352, 34.566036, 21.787785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918247, 34.299458, 22.571373>,  <40.466534, 34.006893, 22.186422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918247, 34.299458, 22.571373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764526, 34.581051, 22.332470>,  <40.672295, 34.750008, 22.189127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764526, 34.581051, 22.332470>,  <40.918247, 34.299458, 22.571373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764526, 34.581051, 22.332470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227044, 0.555001, 0.800266,
		0.894856, 0.443144, -0.053449,
		-0.384297, 0.703987, -0.597259,
		40.649239, 34.792248, 22.153292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139374, 34.912476, 22.906635>,  <40.918247, 34.299458, 22.571373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139374, 34.912476, 22.906635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842880, 35.037846, 22.669203>,  <40.664986, 35.113068, 22.526743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842880, 35.037846, 22.669203>,  <41.139374, 34.912476, 22.906635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842880, 35.037846, 22.669203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309131, 0.625549, 0.716329,
		0.595828, 0.714461, -0.366790,
		-0.741234, 0.313422, -0.593581,
		40.620510, 35.131874, 22.491129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081093, 35.603897, 23.021805>,  <41.139374, 34.912476, 22.906635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081093, 35.603897, 23.021805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728977, 35.521553, 22.850826>,  <40.517708, 35.472149, 22.748240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728977, 35.521553, 22.850826>,  <41.081093, 35.603897, 23.021805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728977, 35.521553, 22.850826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459442, 0.594592, 0.659828,
		0.118326, 0.777228, -0.617994,
		-0.880291, -0.205857, -0.427447,
		40.464890, 35.459797, 22.722591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889786, 36.211609, 22.958214>,  <41.081093, 35.603897, 23.021805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889786, 36.211609, 22.958214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564808, 35.978523, 22.965958>,  <40.369820, 35.838673, 22.970604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564808, 35.978523, 22.965958>,  <40.889786, 36.211609, 22.958214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564808, 35.978523, 22.965958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258195, 0.389358, 0.884158,
		-0.522752, 0.713331, -0.466786,
		-0.812444, -0.582717, 0.019359,
		40.321075, 35.803707, 22.971766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332935, 36.712543, 23.254560>,  <40.889786, 36.211609, 22.958214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332935, 36.712543, 23.254560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208416, 36.335163, 23.300163>,  <40.133705, 36.108734, 23.327524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208416, 36.335163, 23.300163>,  <40.332935, 36.712543, 23.254560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208416, 36.335163, 23.300163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354932, 0.226711, 0.906987,
		-0.881544, 0.241875, -0.405435,
		-0.311294, -0.943450, 0.114007,
		40.115028, 36.052128, 23.334366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671055, 36.767891, 23.334328>,  <40.332935, 36.712543, 23.254560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671055, 36.767891, 23.334328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762177, 36.415897, 23.501051>,  <39.816849, 36.204700, 23.601086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762177, 36.415897, 23.501051>,  <39.671055, 36.767891, 23.334328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762177, 36.415897, 23.501051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447212, 0.285688, 0.847575,
		-0.864932, -0.379481, -0.328460,
		0.227802, -0.879987, 0.416810,
		39.830517, 36.151901, 23.626095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015812, 36.487789, 23.606926>,  <39.671055, 36.767891, 23.334328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015812, 36.487789, 23.606926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314384, 36.321030, 23.814400>,  <39.493530, 36.220974, 23.938885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314384, 36.321030, 23.814400>,  <39.015812, 36.487789, 23.606926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314384, 36.321030, 23.814400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418812, 0.311410, 0.853007,
		-0.517139, -0.853944, 0.057845,
		0.746433, -0.416897, 0.518685,
		39.538315, 36.195961, 23.970005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665775, 35.984901, 24.050615>,  <39.015812, 36.487789, 23.606926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665775, 35.984901, 24.050615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013123, 36.120579, 24.195328>,  <39.221531, 36.201984, 24.282156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013123, 36.120579, 24.195328>,  <38.665775, 35.984901, 24.050615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013123, 36.120579, 24.195328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436263, 0.175578, 0.882523,
		0.235824, -0.924187, 0.300443,
		0.868368, 0.339192, 0.361783,
		39.273632, 36.222336, 24.303864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572392, 36.109219, 24.846035>,  <38.665775, 35.984901, 24.050615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572392, 36.109219, 24.846035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956211, 36.221661, 24.852221>,  <39.186504, 36.289127, 24.855932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956211, 36.221661, 24.852221>,  <38.572392, 36.109219, 24.846035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956211, 36.221661, 24.852221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064910, 0.167450, 0.983742,
		0.273951, -0.944954, 0.178924,
		0.959551, 0.281111, 0.015464,
		39.244076, 36.305992, 24.856859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907280, 35.678116, 25.371696>,  <38.572392, 36.109219, 24.846035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907280, 35.678116, 25.371696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069019, 36.038521, 25.308867>,  <39.166061, 36.254765, 25.271170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069019, 36.038521, 25.308867>,  <38.907280, 35.678116, 25.371696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069019, 36.038521, 25.308867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176657, 0.245444, 0.953179,
		0.897383, -0.357667, 0.258415,
		0.404347, 0.901017, -0.157073,
		39.190323, 36.308826, 25.261745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350266, 35.847534, 25.875622>,  <38.907280, 35.678116, 25.371696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350266, 35.847534, 25.875622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279663, 36.218563, 25.743889>,  <39.237301, 36.441181, 25.664848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279663, 36.218563, 25.743889>,  <39.350266, 35.847534, 25.875622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279663, 36.218563, 25.743889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189839, 0.296223, 0.936062,
		0.965819, 0.227742, 0.123803,
		-0.176507, 0.927570, -0.329332,
		39.226711, 36.496834, 25.645090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606647, 36.352997, 26.435553>,  <39.350266, 35.847534, 25.875622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606647, 36.352997, 26.435553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365211, 36.563030, 26.195562>,  <39.220348, 36.689049, 26.051569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365211, 36.563030, 26.195562>,  <39.606647, 36.352997, 26.435553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365211, 36.563030, 26.195562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391456, 0.460396, 0.796742,
		0.694579, 0.715769, -0.072345,
		-0.603590, 0.525081, -0.599974,
		39.184135, 36.720554, 26.015570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765423, 37.030418, 26.649498>,  <39.606647, 36.352997, 26.435553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765423, 37.030418, 26.649498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405296, 37.030815, 26.475405>,  <39.189220, 37.031052, 26.370949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405296, 37.030815, 26.475405>,  <39.765423, 37.030418, 26.649498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405296, 37.030815, 26.475405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355282, 0.575958, 0.736239,
		0.251403, 0.817479, -0.518194,
		-0.900317, 0.000988, -0.435234,
		39.135201, 37.031113, 26.344835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463688, 37.787056, 26.729748>,  <39.765423, 37.030418, 26.649498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463688, 37.787056, 26.729748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149899, 37.547810, 26.664181>,  <38.961624, 37.404263, 26.624840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149899, 37.547810, 26.664181>,  <39.463688, 37.787056, 26.729748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149899, 37.547810, 26.664181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535490, 0.519945, 0.665513,
		-0.312821, 0.609852, -0.728164,
		-0.784470, -0.598111, -0.163920,
		38.914558, 37.368378, 26.615005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912045, 38.260452, 26.457150>,  <39.463688, 37.787056, 26.729748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912045, 38.260452, 26.457150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772427, 37.918301, 26.610250>,  <38.688656, 37.713009, 26.702110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772427, 37.918301, 26.610250>,  <38.912045, 38.260452, 26.457150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772427, 37.918301, 26.610250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494133, 0.515041, 0.700403,
		-0.796243, 0.055339, -0.602441,
		-0.349042, -0.855377, 0.382753,
		38.667713, 37.661686, 26.725077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199547, 38.366726, 26.469976>,  <38.912045, 38.260452, 26.457150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199547, 38.366726, 26.469976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273323, 38.066021, 26.723223>,  <38.317589, 37.885597, 26.875170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273323, 38.066021, 26.723223>,  <38.199547, 38.366726, 26.469976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273323, 38.066021, 26.723223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467780, 0.499381, 0.729246,
		-0.864385, -0.430663, -0.259552,
		0.184444, -0.751763, 0.633114,
		38.328655, 37.840492, 26.913157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535187, 38.200115, 26.730024>,  <38.199547, 38.366726, 26.469976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535187, 38.200115, 26.730024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785069, 38.047150, 27.002350>,  <37.934998, 37.955372, 27.165745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785069, 38.047150, 27.002350>,  <37.535187, 38.200115, 26.730024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785069, 38.047150, 27.002350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597554, 0.327134, 0.732060,
		-0.502666, -0.864144, -0.024150,
		0.624705, -0.382413, 0.680812,
		37.972481, 37.932426, 27.206593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120670, 38.020657, 27.256458>,  <37.535187, 38.200115, 26.730024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120670, 38.020657, 27.256458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479641, 37.997440, 27.431387>,  <37.695023, 37.983509, 27.536345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479641, 37.997440, 27.431387>,  <37.120670, 38.020657, 27.256458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479641, 37.997440, 27.431387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437736, 0.006044, 0.899083,
		-0.054830, -0.998296, -0.019984,
		0.897430, -0.058044, 0.437322,
		37.748871, 37.980030, 27.562584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070671, 37.443527, 27.740351>,  <37.120670, 38.020657, 27.256458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070671, 37.443527, 27.740351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349846, 37.691891, 27.883097>,  <37.517353, 37.840908, 27.968744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349846, 37.691891, 27.883097>,  <37.070671, 37.443527, 27.740351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349846, 37.691891, 27.883097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381458, -0.099419, 0.919024,
		0.606109, -0.777553, 0.167461,
		0.697941, 0.620908, 0.356863,
		37.559227, 37.878162, 27.990156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292603, 37.137707, 28.394548>,  <37.070671, 37.443527, 27.740351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292603, 37.137707, 28.394548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427551, 37.513958, 28.409475>,  <37.508522, 37.739708, 28.418430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427551, 37.513958, 28.409475>,  <37.292603, 37.137707, 28.394548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427551, 37.513958, 28.409475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412842, 0.112217, 0.903863,
		0.846013, -0.320347, 0.426191,
		0.337376, 0.940630, 0.037316,
		37.528763, 37.796146, 28.420670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602047, 37.153667, 29.063688>,  <37.292603, 37.137707, 28.394548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602047, 37.153667, 29.063688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523651, 37.518795, 28.920383>,  <37.476616, 37.737873, 28.834400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523651, 37.518795, 28.920383>,  <37.602047, 37.153667, 29.063688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523651, 37.518795, 28.920383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385050, 0.264369, 0.884221,
		0.901846, 0.311245, 0.299668,
		-0.195986, 0.912818, -0.358264,
		37.464855, 37.792641, 28.812904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442585, 37.117664, 28.965105>,  <37.602047, 37.153667, 29.063688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442585, 37.117664, 28.965105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572060, 36.821705, 29.200996>,  <38.649746, 36.644131, 29.342531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572060, 36.821705, 29.200996>,  <38.442585, 37.117664, 28.965105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572060, 36.821705, 29.200996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713448, -0.218527, -0.665761,
		0.621466, 0.636240, 0.457143,
		0.323686, -0.739895, 0.589731,
		38.669167, 36.599735, 29.377916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140915, 37.270687, 29.053127>,  <38.442585, 37.117664, 28.965105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140915, 37.270687, 29.053127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147007, 36.889889, 29.175426>,  <39.150661, 36.661411, 29.248806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147007, 36.889889, 29.175426>,  <39.140915, 37.270687, 29.053127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147007, 36.889889, 29.175426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561380, -0.244900, -0.790491,
		0.827418, 0.183676, 0.530700,
		0.015226, -0.951991, 0.305747,
		39.151573, 36.604290, 29.267151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913769, 37.051735, 28.963146>,  <39.140915, 37.270687, 29.053127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913769, 37.051735, 28.963146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678268, 36.728687, 28.976490>,  <39.536968, 36.534859, 28.984497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678268, 36.728687, 28.976490>,  <39.913769, 37.051735, 28.963146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678268, 36.728687, 28.976490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457100, -0.366694, -0.810306,
		0.666655, -0.461822, 0.585057,
		-0.588754, -0.807624, 0.033360,
		39.501640, 36.486401, 28.986498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413807, 36.507866, 28.836218>,  <39.913769, 37.051735, 28.963146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413807, 36.507866, 28.836218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073505, 36.307476, 28.772673>,  <39.869324, 36.187244, 28.734547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073505, 36.307476, 28.772673>,  <40.413807, 36.507866, 28.836218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073505, 36.307476, 28.772673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394729, -0.409516, -0.822487,
		0.346987, -0.762445, 0.546148,
		-0.850758, -0.500973, -0.158862,
		39.818279, 36.157185, 28.725014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566174, 35.831844, 28.776413>,  <40.413807, 36.507866, 28.836218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566174, 35.831844, 28.776413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224304, 35.868881, 28.572079>,  <40.019180, 35.891106, 28.449478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224304, 35.868881, 28.572079>,  <40.566174, 35.831844, 28.776413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224304, 35.868881, 28.572079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409369, -0.484946, -0.772816,
		-0.319287, -0.869629, 0.376566,
		-0.854677, 0.092595, -0.510836,
		39.967899, 35.896660, 28.418827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442192, 35.221230, 28.460066>,  <40.566174, 35.831844, 28.776413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442192, 35.221230, 28.460066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212299, 35.479317, 28.258720>,  <40.074364, 35.634171, 28.137913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212299, 35.479317, 28.258720>,  <40.442192, 35.221230, 28.460066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212299, 35.479317, 28.258720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376271, -0.337868, -0.862708,
		-0.726708, -0.685226, -0.048595,
		-0.574731, 0.645221, -0.503362,
		40.039879, 35.672882, 28.107712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132801, 34.806908, 27.968233>,  <40.442192, 35.221230, 28.460066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132801, 34.806908, 27.968233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077065, 35.184444, 27.848406>,  <40.043621, 35.410969, 27.776510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077065, 35.184444, 27.848406>,  <40.132801, 34.806908, 27.968233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077065, 35.184444, 27.848406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322611, -0.242744, -0.914875,
		-0.936218, -0.224127, -0.270670,
		-0.139344, 0.943844, -0.299568,
		40.035259, 35.467598, 27.758535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862804, 34.717377, 27.233208>,  <40.132801, 34.806908, 27.968233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862804, 34.717377, 27.233208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022186, 35.083481, 27.256968>,  <40.117817, 35.303143, 27.271223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022186, 35.083481, 27.256968>,  <39.862804, 34.717377, 27.233208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022186, 35.083481, 27.256968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515722, -0.170019, -0.839717,
		-0.758462, 0.365223, -0.539766,
		0.398454, 0.915263, 0.059400,
		40.141724, 35.358059, 27.274788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727703, 34.993618, 26.633488>,  <39.862804, 34.717377, 27.233208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727703, 34.993618, 26.633488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046268, 35.189728, 26.775112>,  <40.237408, 35.307392, 26.860086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046268, 35.189728, 26.775112>,  <39.727703, 34.993618, 26.633488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046268, 35.189728, 26.775112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469924, -0.133194, -0.872600,
		-0.380650, 0.861333, -0.336467,
		0.796415, 0.490270, 0.354061,
		40.285194, 35.336807, 26.881330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935978, 35.342739, 26.013893>,  <39.727703, 34.993618, 26.633488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935978, 35.342739, 26.013893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259621, 35.357468, 26.248497>,  <40.453808, 35.366302, 26.389259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259621, 35.357468, 26.248497>,  <39.935978, 35.342739, 26.013893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259621, 35.357468, 26.248497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580256, -0.208004, -0.787424,
		0.093004, 0.977435, -0.189661,
		0.809106, 0.036819, 0.586508,
		40.502354, 35.368515, 26.424450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425381, 35.746735, 25.613047>,  <39.935978, 35.342739, 26.013893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425381, 35.746735, 25.613047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605534, 35.516247, 25.885847>,  <40.713623, 35.377953, 26.049528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605534, 35.516247, 25.885847>,  <40.425381, 35.746735, 25.613047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605534, 35.516247, 25.885847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626072, -0.340772, -0.701362,
		0.636547, 0.742861, 0.207280,
		0.450379, -0.576222, 0.682002,
		40.740646, 35.343380, 26.090448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079205, 35.815319, 25.354109>,  <40.425381, 35.746735, 25.613047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079205, 35.815319, 25.354109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069630, 35.484356, 25.578545>,  <41.063885, 35.285778, 25.713205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069630, 35.484356, 25.578545>,  <41.079205, 35.815319, 25.354109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069630, 35.484356, 25.578545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615780, -0.454342, -0.643729,
		0.787554, 0.330098, 0.520378,
		-0.023936, -0.827411, 0.561087,
		41.062450, 35.236134, 25.746870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797279, 35.586411, 25.427784>,  <41.079205, 35.815319, 25.354109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797279, 35.586411, 25.427784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568874, 35.264687, 25.493546>,  <41.431831, 35.071651, 25.533003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568874, 35.264687, 25.493546>,  <41.797279, 35.586411, 25.427784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568874, 35.264687, 25.493546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695024, -0.580213, -0.424611,
		0.436910, -0.128191, 0.890324,
		-0.571008, -0.804314, 0.164405,
		41.397572, 35.023392, 25.542868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312572, 35.055172, 25.652088>,  <41.797279, 35.586411, 25.427784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312572, 35.055172, 25.652088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986530, 34.857582, 25.531033>,  <41.790905, 34.739029, 25.458399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986530, 34.857582, 25.531033>,  <42.312572, 35.055172, 25.652088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986530, 34.857582, 25.531033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568304, -0.580470, -0.583169,
		0.112400, -0.647334, 0.753873,
		-0.815106, -0.493977, -0.302638,
		41.741997, 34.709389, 25.440241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424683, 34.377308, 25.696369>,  <42.312572, 35.055172, 25.652088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424683, 34.377308, 25.696369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117786, 34.358833, 25.440493>,  <41.933647, 34.347748, 25.286966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117786, 34.358833, 25.440493>,  <42.424683, 34.377308, 25.696369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117786, 34.358833, 25.440493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511620, -0.645540, -0.567030,
		-0.386758, -0.762329, 0.518915,
		-0.767244, -0.046184, -0.639691,
		41.887615, 34.344978, 25.248585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491329, 33.766987, 25.470371>,  <42.424683, 34.377308, 25.696369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491329, 33.766987, 25.470371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250904, 33.935604, 25.198776>,  <42.106647, 34.036774, 25.035818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250904, 33.935604, 25.198776>,  <42.491329, 33.766987, 25.470371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250904, 33.935604, 25.198776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482289, -0.486134, -0.728747,
		-0.637274, -0.765493, 0.088895,
		-0.601065, 0.421538, -0.678989,
		42.070583, 34.062065, 24.995079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278427, 33.195930, 25.115410>,  <42.491329, 33.766987, 25.470371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278427, 33.195930, 25.115410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203011, 33.501686, 24.868782>,  <42.157761, 33.685139, 24.720806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203011, 33.501686, 24.868782>,  <42.278427, 33.195930, 25.115410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203011, 33.501686, 24.868782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242614, -0.572114, -0.783469,
		-0.951625, -0.297306, -0.077584,
		-0.188543, 0.764392, -0.616569,
		42.146446, 33.731003, 24.683811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124310, 32.823414, 24.512600>,  <42.278427, 33.195930, 25.115410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124310, 32.823414, 24.512600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170727, 33.208214, 24.413731>,  <42.198578, 33.439095, 24.354408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170727, 33.208214, 24.413731>,  <42.124310, 32.823414, 24.512600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170727, 33.208214, 24.413731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272481, -0.270141, -0.923460,
		-0.955138, 0.039810, -0.293474,
		0.116043, 0.961998, -0.247175,
		42.205540, 33.496815, 24.339579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755718, 33.026585, 23.954964>,  <42.124310, 32.823414, 24.512600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755718, 33.026585, 23.954964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051277, 33.296070, 23.959671>,  <42.228611, 33.457760, 23.962496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051277, 33.296070, 23.959671>,  <41.755718, 33.026585, 23.954964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051277, 33.296070, 23.959671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224009, -0.229134, -0.947268,
		-0.635492, 0.702571, -0.320225,
		0.738898, 0.673715, 0.011769,
		42.272945, 33.498184, 23.963202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677391, 33.392345, 23.355740>,  <41.755718, 33.026585, 23.954964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677391, 33.392345, 23.355740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060875, 33.441837, 23.458164>,  <42.290966, 33.471535, 23.519619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060875, 33.441837, 23.458164>,  <41.677391, 33.392345, 23.355740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060875, 33.441837, 23.458164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283345, -0.338510, -0.897288,
		-0.024346, 0.932792, -0.359592,
		0.958709, 0.123734, 0.256061,
		42.348488, 33.478958, 23.534983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924263, 33.761414, 22.836489>,  <41.677391, 33.392345, 23.355740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924263, 33.761414, 22.836489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235859, 33.605099, 23.032635>,  <42.422817, 33.511311, 23.150322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235859, 33.605099, 23.032635>,  <41.924263, 33.761414, 22.836489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235859, 33.605099, 23.032635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393143, -0.304833, -0.867476,
		0.488476, 0.868541, -0.083829,
		0.778993, -0.390785, 0.490365,
		42.469555, 33.487862, 23.179745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550045, 33.824631, 22.353064>,  <41.924263, 33.761414, 22.836489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550045, 33.824631, 22.353064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618214, 33.510460, 22.591074>,  <42.659115, 33.321957, 22.733881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618214, 33.510460, 22.591074>,  <42.550045, 33.824631, 22.353064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618214, 33.510460, 22.591074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199255, -0.563915, -0.801434,
		0.965015, 0.255142, 0.060399,
		0.170420, -0.785431, 0.595025,
		42.669338, 33.274830, 22.769581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092152, 33.593674, 22.078201>,  <42.550045, 33.824631, 22.353064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092152, 33.593674, 22.078201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975086, 33.285172, 22.304300>,  <42.904846, 33.100071, 22.439960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975086, 33.285172, 22.304300>,  <43.092152, 33.593674, 22.078201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975086, 33.285172, 22.304300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081130, -0.609028, -0.788988,
		0.952767, -0.185050, 0.240813,
		-0.292664, -0.771259, 0.565249,
		42.887287, 33.053795, 22.473875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494869, 32.992317, 21.765728>,  <43.092152, 33.593674, 22.078201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494869, 32.992317, 21.765728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190304, 32.833725, 21.970881>,  <43.007565, 32.738567, 22.093973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190304, 32.833725, 21.970881>,  <43.494869, 32.992317, 21.765728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190304, 32.833725, 21.970881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135875, -0.675981, -0.724284,
		0.633866, -0.621169, 0.460829,
		-0.761414, -0.396484, 0.512883,
		42.961880, 32.714779, 22.124746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655193, 32.326538, 21.848112>,  <43.494869, 32.992317, 21.765728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655193, 32.326538, 21.848112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259312, 32.316833, 21.904528>,  <43.021782, 32.311008, 21.938377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259312, 32.316833, 21.904528>,  <43.655193, 32.326538, 21.848112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259312, 32.316833, 21.904528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075158, -0.750554, -0.656521,
		0.121787, -0.660363, 0.741005,
		-0.989707, -0.024264, 0.141039,
		42.962399, 32.309555, 21.946840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509590, 31.661661, 21.846495>,  <43.655193, 32.326538, 21.848112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509590, 31.661661, 21.846495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151711, 31.821590, 21.766848>,  <42.936981, 31.917547, 21.719059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.151711, 31.821590, 21.766848>,  <43.509590, 31.661661, 21.846495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151711, 31.821590, 21.766848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100796, -0.615025, -0.782039,
		-0.435139, -0.679623, 0.590565,
		-0.894704, 0.399822, -0.199118,
		42.883301, 31.941538, 21.707111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101009, 31.077154, 21.632210>,  <43.509590, 31.661661, 21.846495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101009, 31.077154, 21.632210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890144, 31.372868, 21.464611>,  <42.763626, 31.550295, 21.364052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890144, 31.372868, 21.464611>,  <43.101009, 31.077154, 21.632210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890144, 31.372868, 21.464611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280997, -0.616994, -0.735092,
		-0.801961, -0.269775, 0.532992,
		-0.527162, 0.739284, -0.418999,
		42.731995, 31.594652, 21.338911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593838, 30.708126, 21.482401>,  <43.101009, 31.077154, 21.632210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593838, 30.708126, 21.482401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573769, 31.036551, 21.254950>,  <42.561729, 31.233606, 21.118479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573769, 31.036551, 21.254950>,  <42.593838, 30.708126, 21.482401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573769, 31.036551, 21.254950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093545, -0.570706, -0.815808,
		-0.994350, 0.012262, 0.105439,
		-0.050171, 0.821063, -0.568629,
		42.558716, 31.282869, 21.084360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992466, 30.676865, 21.051702>,  <42.593838, 30.708126, 21.482401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992466, 30.676865, 21.051702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244949, 30.908470, 20.845276>,  <42.396439, 31.047434, 20.721420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244949, 30.908470, 20.845276>,  <41.992466, 30.676865, 21.051702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244949, 30.908470, 20.845276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278605, -0.451693, -0.847557,
		-0.723849, 0.678762, -0.123796,
		0.631207, 0.579013, -0.516064,
		42.434311, 31.082174, 20.690456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533405, 30.954546, 20.623421>,  <41.992466, 30.676865, 21.051702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533405, 30.954546, 20.623421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911026, 30.997131, 20.498560>,  <42.137596, 31.022682, 20.423643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911026, 30.997131, 20.498560>,  <41.533405, 30.954546, 20.623421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911026, 30.997131, 20.498560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268062, -0.303703, -0.914280,
		-0.192138, 0.946800, -0.258172,
		0.944048, 0.106462, -0.312154,
		42.194241, 31.029070, 20.404913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516937, 31.404306, 20.039694>,  <41.533405, 30.954546, 20.623421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516937, 31.404306, 20.039694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855350, 31.193260, 20.009100>,  <42.058399, 31.066633, 19.990744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855350, 31.193260, 20.009100>,  <41.516937, 31.404306, 20.039694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855350, 31.193260, 20.009100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250889, -0.267438, -0.930339,
		0.470407, 0.806287, -0.358635,
		0.846033, -0.527616, -0.076484,
		42.109161, 31.034975, 19.986155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806446, 31.600256, 19.386761>,  <41.516937, 31.404306, 20.039694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806446, 31.600256, 19.386761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987679, 31.254122, 19.472469>,  <42.096416, 31.046440, 19.523895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987679, 31.254122, 19.472469>,  <41.806446, 31.600256, 19.386761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987679, 31.254122, 19.472469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113335, -0.294321, -0.948963,
		0.884237, 0.405670, -0.231423,
		0.453078, -0.865337, 0.214273,
		42.123604, 30.994520, 19.536751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220852, 31.504162, 18.825327>,  <41.806446, 31.600256, 19.386761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220852, 31.504162, 18.825327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191402, 31.145601, 19.000160>,  <42.173733, 30.930466, 19.105061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.191402, 31.145601, 19.000160>,  <42.220852, 31.504162, 18.825327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191402, 31.145601, 19.000160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123184, -0.426744, -0.895944,
		0.989649, -0.119807, -0.079003,
		-0.073626, -0.896402, 0.437085,
		42.169315, 30.876680, 19.131285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698254, 31.102859, 18.515121>,  <42.220852, 31.504162, 18.825327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698254, 31.102859, 18.515121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427940, 30.853640, 18.672668>,  <42.265755, 30.704107, 18.767197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427940, 30.853640, 18.672668>,  <42.698254, 31.102859, 18.515121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427940, 30.853640, 18.672668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050272, -0.494145, -0.867925,
		0.735389, -0.606326, 0.302610,
		-0.675778, -0.623049, 0.393870,
		42.225208, 30.666725, 18.790829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844658, 30.508739, 18.199678>,  <42.698254, 31.102859, 18.515121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844658, 30.508739, 18.199678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480995, 30.415819, 18.337938>,  <42.262798, 30.360067, 18.420895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.480995, 30.415819, 18.337938>,  <42.844658, 30.508739, 18.199678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480995, 30.415819, 18.337938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155713, -0.580158, -0.799481,
		0.386251, -0.780675, 0.491282,
		-0.909156, -0.232301, 0.345648,
		42.208248, 30.346128, 18.441633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828163, 29.809160, 18.186136>,  <42.844658, 30.508739, 18.199678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828163, 29.809160, 18.186136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443672, 29.919430, 18.188675>,  <42.212978, 29.985592, 18.190197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.443672, 29.919430, 18.188675>,  <42.828163, 29.809160, 18.186136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443672, 29.919430, 18.188675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157179, -0.528858, -0.834029,
		-0.226563, -0.802692, 0.551684,
		-0.961231, 0.275673, 0.006346,
		42.155304, 30.002132, 18.190578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296001, 29.169212, 18.326031>,  <42.828163, 29.809160, 18.186136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296001, 29.169212, 18.326031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140957, 29.469177, 18.111597>,  <42.047928, 29.649157, 17.982937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.140957, 29.469177, 18.111597>,  <42.296001, 29.169212, 18.326031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140957, 29.469177, 18.111597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177846, -0.631458, -0.754739,
		-0.904503, -0.197208, 0.378132,
		-0.387615, 0.749913, -0.536083,
		42.024673, 29.694151, 17.950771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731632, 28.732391, 18.270161>,  <42.296001, 29.169212, 18.326031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731632, 28.732391, 18.270161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651005, 28.342369, 18.232986>,  <41.602627, 28.108356, 18.210682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651005, 28.342369, 18.232986>,  <41.731632, 28.732391, 18.270161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651005, 28.342369, 18.232986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200792, -0.134002, 0.970426,
		-0.958672, 0.176949, 0.222794,
		-0.201571, -0.975055, -0.092934,
		41.590534, 28.049852, 18.205107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207787, 28.541014, 18.657318>,  <41.731632, 28.732391, 18.270161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207787, 28.541014, 18.657318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432701, 28.214237, 18.606022>,  <41.567650, 28.018171, 18.575243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432701, 28.214237, 18.606022>,  <41.207787, 28.541014, 18.657318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432701, 28.214237, 18.606022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217994, -0.003162, 0.975945,
		-0.797693, -0.576715, 0.176310,
		0.562285, -0.816939, -0.128243,
		41.601387, 27.969156, 18.567549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970818, 28.015486, 19.105921>,  <41.207787, 28.541014, 18.657318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970818, 28.015486, 19.105921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343872, 27.912174, 19.005135>,  <41.567703, 27.850187, 18.944662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.343872, 27.912174, 19.005135>,  <40.970818, 28.015486, 19.105921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343872, 27.912174, 19.005135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229673, -0.113642, 0.966610,
		-0.278288, -0.959364, -0.046667,
		0.932634, -0.258278, -0.251965,
		41.623661, 27.834690, 18.929544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175667, 27.340240, 19.425014>,  <40.970818, 28.015486, 19.105921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175667, 27.340240, 19.425014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525093, 27.525614, 19.365526>,  <41.734749, 27.636837, 19.329834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525093, 27.525614, 19.365526>,  <41.175667, 27.340240, 19.425014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525093, 27.525614, 19.365526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295556, -0.262333, 0.918601,
		0.386694, -0.846412, -0.366135,
		0.873564, 0.463431, -0.148720,
		41.787163, 27.664642, 19.320910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567200, 26.942707, 19.838915>,  <41.175667, 27.340240, 19.425014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567200, 26.942707, 19.838915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783894, 27.263300, 19.737600>,  <41.913910, 27.455656, 19.676811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783894, 27.263300, 19.737600>,  <41.567200, 26.942707, 19.838915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783894, 27.263300, 19.737600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451334, -0.023151, 0.892055,
		0.709101, -0.597573, -0.374277,
		0.541733, 0.801481, -0.253288,
		41.946415, 27.503744, 19.661613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202885, 26.856201, 20.141975>,  <41.567200, 26.942707, 19.838915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202885, 26.856201, 20.141975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168224, 27.247768, 20.067995>,  <42.147427, 27.482710, 20.023607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168224, 27.247768, 20.067995>,  <42.202885, 26.856201, 20.141975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168224, 27.247768, 20.067995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360129, 0.203874, 0.910353,
		0.928869, 0.012281, -0.370204,
		-0.086655, 0.978920, -0.184950,
		42.142227, 27.541445, 20.012510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867153, 27.192463, 20.444141>,  <42.202885, 26.856201, 20.141975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867153, 27.192463, 20.444141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587967, 27.475897, 20.402660>,  <42.420456, 27.645956, 20.377771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587967, 27.475897, 20.402660>,  <42.867153, 27.192463, 20.444141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587967, 27.475897, 20.402660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249742, 0.376561, 0.892094,
		0.671173, 0.596751, -0.439789,
		-0.697965, 0.708583, -0.103703,
		42.378578, 27.688473, 20.371550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153179, 27.708609, 20.721092>,  <42.867153, 27.192463, 20.444141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153179, 27.708609, 20.721092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766903, 27.812378, 20.716293>,  <42.535137, 27.874640, 20.713413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766903, 27.812378, 20.716293>,  <43.153179, 27.708609, 20.721092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766903, 27.812378, 20.716293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128647, 0.517991, 0.845657,
		0.225596, 0.815099, -0.533593,
		-0.965690, 0.259422, -0.011996,
		42.477196, 27.890205, 20.712694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084183, 28.425724, 20.849510>,  <43.153179, 27.708609, 20.721092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084183, 28.425724, 20.849510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720551, 28.304934, 20.964319>,  <42.502373, 28.232458, 21.033205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720551, 28.304934, 20.964319>,  <43.084183, 28.425724, 20.849510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720551, 28.304934, 20.964319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049691, 0.605421, 0.794353,
		-0.413646, 0.736393, -0.535371,
		-0.909081, -0.301978, 0.287022,
		42.447826, 28.214340, 21.050426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702450, 29.013729, 20.973890>,  <43.084183, 28.425724, 20.849510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702450, 29.013729, 20.973890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493092, 28.740864, 21.178133>,  <42.367477, 28.577145, 21.300678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493092, 28.740864, 21.178133>,  <42.702450, 29.013729, 20.973890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493092, 28.740864, 21.178133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059795, 0.627163, 0.776590,
		-0.849992, 0.375928, -0.369041,
		-0.523391, -0.682162, 0.510604,
		42.336075, 28.536215, 21.331314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167732, 29.382135, 21.246084>,  <42.702450, 29.013729, 20.973890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167732, 29.382135, 21.246084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173275, 29.048147, 21.466133>,  <42.176601, 28.847754, 21.598162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173275, 29.048147, 21.466133>,  <42.167732, 29.382135, 21.246084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173275, 29.048147, 21.466133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207215, 0.535831, 0.818503,
		-0.978197, -0.125339, -0.165591,
		0.013861, -0.834970, 0.550121,
		42.177433, 28.797657, 21.631168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581036, 29.445370, 21.567839>,  <42.167732, 29.382135, 21.246084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581036, 29.445370, 21.567839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799622, 29.190872, 21.785673>,  <41.930771, 29.038174, 21.916374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799622, 29.190872, 21.785673>,  <41.581036, 29.445370, 21.567839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799622, 29.190872, 21.785673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160716, 0.558508, 0.813781,
		-0.821918, -0.532224, 0.202949,
		0.546463, -0.636244, 0.544585,
		41.963562, 29.000000, 21.949049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186687, 29.251566, 22.089581>,  <41.581036, 29.445370, 21.567839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186687, 29.251566, 22.089581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546001, 29.143637, 22.228308>,  <41.761589, 29.078880, 22.311544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546001, 29.143637, 22.228308>,  <41.186687, 29.251566, 22.089581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546001, 29.143637, 22.228308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226334, 0.392408, 0.891509,
		-0.376643, -0.879325, 0.291424,
		0.898283, -0.269822, 0.346819,
		41.815487, 29.062691, 22.332354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093822, 28.964481, 22.692951>,  <41.186687, 29.251566, 22.089581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093822, 28.964481, 22.692951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477947, 29.075584, 22.703176>,  <41.708424, 29.142246, 22.709312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477947, 29.075584, 22.703176>,  <41.093822, 28.964481, 22.692951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477947, 29.075584, 22.703176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179401, 0.544867, 0.819106,
		0.213584, -0.791183, 0.573072,
		0.960311, 0.277758, 0.025564,
		41.766041, 29.158913, 22.710846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241695, 28.938494, 23.401134>,  <41.093822, 28.964481, 22.692951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241695, 28.938494, 23.401134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519897, 29.172329, 23.234024>,  <41.686817, 29.312630, 23.133759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519897, 29.172329, 23.234024>,  <41.241695, 28.938494, 23.401134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519897, 29.172329, 23.234024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114688, 0.664300, 0.738615,
		0.709316, -0.465792, 0.529064,
		0.695498, 0.584589, -0.417778,
		41.728546, 29.347706, 23.108692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677284, 29.090725, 23.921465>,  <41.241695, 28.938494, 23.401134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677284, 29.090725, 23.921465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763321, 29.385372, 23.664988>,  <41.814941, 29.562160, 23.511101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763321, 29.385372, 23.664988>,  <41.677284, 29.090725, 23.921465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763321, 29.385372, 23.664988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059595, 0.645439, 0.761483,
		0.974775, -0.201998, 0.094928,
		0.215088, 0.736617, -0.641196,
		41.827847, 29.606358, 23.472630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203220, 29.388281, 24.230619>,  <41.677284, 29.090725, 23.921465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203220, 29.388281, 24.230619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051830, 29.662979, 23.982382>,  <41.960995, 29.827799, 23.833439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051830, 29.662979, 23.982382>,  <42.203220, 29.388281, 24.230619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051830, 29.662979, 23.982382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077116, 0.691531, 0.718218,
		0.922394, 0.223970, -0.314686,
		-0.378475, 0.686747, -0.620592,
		41.938290, 29.869003, 23.796204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573154, 29.973763, 24.330860>,  <42.203220, 29.388281, 24.230619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573154, 29.973763, 24.330860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263176, 30.140537, 24.140863>,  <42.077187, 30.240602, 24.026865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263176, 30.140537, 24.140863>,  <42.573154, 29.973763, 24.330860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263176, 30.140537, 24.140863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004521, 0.755177, 0.655505,
		0.632008, 0.505835, -0.587108,
		-0.774948, 0.416939, -0.474992,
		42.030693, 30.265619, 23.998365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688274, 30.753687, 24.177895>,  <42.573154, 29.973763, 24.330860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688274, 30.753687, 24.177895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302155, 30.660400, 24.224907>,  <42.070484, 30.604427, 24.253115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302155, 30.660400, 24.224907>,  <42.688274, 30.753687, 24.177895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302155, 30.660400, 24.224907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090465, 0.720772, 0.687243,
		-0.244991, 0.652760, -0.716856,
		-0.965296, -0.233219, 0.117531,
		42.012566, 30.590435, 24.260166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436771, 31.393627, 24.334156>,  <42.688274, 30.753687, 24.177895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436771, 31.393627, 24.334156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115673, 31.176170, 24.432177>,  <41.923012, 31.045696, 24.490990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115673, 31.176170, 24.432177>,  <42.436771, 31.393627, 24.334156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115673, 31.176170, 24.432177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217908, 0.649951, 0.728066,
		-0.555078, 0.531055, -0.640210,
		-0.802748, -0.543640, 0.245053,
		41.874847, 31.013079, 24.505692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852245, 31.761478, 24.252829>,  <42.436771, 31.393627, 24.334156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852245, 31.761478, 24.252829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733028, 31.476633, 24.507093>,  <41.661499, 31.305725, 24.659653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.733028, 31.476633, 24.507093>,  <41.852245, 31.761478, 24.252829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733028, 31.476633, 24.507093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510686, 0.681564, 0.524090,
		-0.806456, -0.168423, -0.566800,
		-0.298041, -0.712113, 0.635663,
		41.643616, 31.262999, 24.697792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320808, 32.089100, 24.469971>,  <41.852245, 31.761478, 24.252829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320808, 32.089100, 24.469971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371140, 31.785345, 24.725313>,  <41.401337, 31.603092, 24.878519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371140, 31.785345, 24.725313>,  <41.320808, 32.089100, 24.469971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371140, 31.785345, 24.725313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213711, 0.607613, 0.764940,
		-0.968759, -0.232676, -0.085834,
		0.125829, -0.759387, 0.638357,
		41.408890, 31.557529, 24.916821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628143, 32.064381, 24.906742>,  <41.320808, 32.089100, 24.469971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628143, 32.064381, 24.906742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953224, 31.904400, 25.076239>,  <41.148273, 31.808411, 25.177937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953224, 31.904400, 25.076239>,  <40.628143, 32.064381, 24.906742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953224, 31.904400, 25.076239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049874, 0.676809, 0.734467,
		-0.580546, -0.618034, 0.530094,
		0.812698, -0.399954, 0.423743,
		41.197033, 31.784414, 25.203362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451035, 31.972754, 25.536064>,  <40.628143, 32.064381, 24.906742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451035, 31.972754, 25.536064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847633, 31.943081, 25.578827>,  <41.085594, 31.925278, 25.604485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847633, 31.943081, 25.578827>,  <40.451035, 31.972754, 25.536064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847633, 31.943081, 25.578827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058227, 0.481824, 0.874331,
		-0.116370, -0.873123, 0.473408,
		0.991498, -0.074180, 0.106909,
		41.145084, 31.920826, 25.610899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474636, 31.700977, 26.127098>,  <40.451035, 31.972754, 25.536064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474636, 31.700977, 26.127098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825115, 31.885178, 26.070234>,  <41.035404, 31.995697, 26.036116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825115, 31.885178, 26.070234>,  <40.474636, 31.700977, 26.127098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825115, 31.885178, 26.070234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051003, 0.381919, 0.922787,
		0.479240, -0.801296, 0.358125,
		0.876201, 0.460502, -0.142162,
		41.087975, 32.023327, 26.027586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821243, 31.728456, 26.864044>,  <40.474636, 31.700977, 26.127098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821243, 31.728456, 26.864044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035995, 31.977982, 26.636847>,  <41.164848, 32.127697, 26.500528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035995, 31.977982, 26.636847>,  <40.821243, 31.728456, 26.864044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035995, 31.977982, 26.636847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271658, 0.509565, 0.816422,
		0.798722, -0.592624, 0.104114,
		0.536885, 0.623810, -0.567992,
		41.197060, 32.165123, 26.466450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566509, 31.793617, 27.156393>,  <40.821243, 31.728456, 26.864044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566509, 31.793617, 27.156393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506241, 32.116600, 26.928249>,  <41.470078, 32.310390, 26.791363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506241, 32.116600, 26.928249>,  <41.566509, 31.793617, 27.156393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506241, 32.116600, 26.928249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364977, 0.581622, 0.726985,
		0.918743, -0.098630, -0.382339,
		-0.150674, 0.807458, -0.570359,
		41.461040, 32.358837, 26.757141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074909, 32.067467, 27.296314>,  <41.566509, 31.793617, 27.156393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074909, 32.067467, 27.296314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835030, 32.356056, 27.157845>,  <41.691101, 32.529209, 27.074762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.835030, 32.356056, 27.157845>,  <42.074909, 32.067467, 27.296314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835030, 32.356056, 27.157845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075108, 0.481430, 0.873260,
		0.796696, 0.497690, -0.342899,
		-0.599695, 0.721478, -0.346173,
		41.655121, 32.572498, 27.053993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440369, 32.628643, 27.542315>,  <42.074909, 32.067467, 27.296314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440369, 32.628643, 27.542315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073780, 32.754566, 27.443537>,  <41.853828, 32.830120, 27.384270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073780, 32.754566, 27.443537>,  <42.440369, 32.628643, 27.542315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073780, 32.754566, 27.443537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069454, 0.482659, 0.873050,
		0.394029, 0.817275, -0.420478,
		-0.916470, 0.314803, -0.246945,
		41.798840, 32.849007, 27.369453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420094, 33.274261, 27.601664>,  <42.440369, 32.628643, 27.542315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420094, 33.274261, 27.601664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028053, 33.201599, 27.633671>,  <41.792828, 33.158001, 27.652876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028053, 33.201599, 27.633671>,  <42.420094, 33.274261, 27.601664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028053, 33.201599, 27.633671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007819, 0.438132, 0.898877,
		-0.198348, 0.880364, -0.430834,
		-0.980101, -0.181659, 0.080019,
		41.734024, 33.147102, 27.657677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071148, 33.946323, 27.720934>,  <42.420094, 33.274261, 27.601664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071148, 33.946323, 27.720934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799126, 33.689213, 27.861990>,  <41.635910, 33.534946, 27.946625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799126, 33.689213, 27.861990>,  <42.071148, 33.946323, 27.720934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799126, 33.689213, 27.861990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125545, 0.575983, 0.807764,
		-0.722329, 0.505054, -0.472400,
		-0.680058, -0.642778, 0.352642,
		41.595108, 33.496380, 27.967783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585258, 34.410107, 28.021435>,  <42.071148, 33.946323, 27.720934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585258, 34.410107, 28.021435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506840, 34.059757, 28.197800>,  <41.459789, 33.849548, 28.303619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506840, 34.059757, 28.197800>,  <41.585258, 34.410107, 28.021435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506840, 34.059757, 28.197800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236190, 0.478580, 0.845680,
		-0.951724, 0.061655, -0.300698,
		-0.196049, -0.875877, 0.440914,
		41.448025, 33.796993, 28.330074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949226, 34.437943, 28.275455>,  <41.585258, 34.410107, 28.021435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949226, 34.437943, 28.275455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124569, 34.154583, 28.496731>,  <41.229774, 33.984566, 28.629496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124569, 34.154583, 28.496731>,  <40.949226, 34.437943, 28.275455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124569, 34.154583, 28.496731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424850, 0.379063, 0.822079,
		-0.792052, -0.595384, -0.134799,
		0.438356, -0.708399, 0.553187,
		41.256077, 33.942062, 28.662687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419029, 34.236031, 28.766665>,  <40.949226, 34.437943, 28.275455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419029, 34.236031, 28.766665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777939, 34.123241, 28.902538>,  <40.993286, 34.055569, 28.984062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777939, 34.123241, 28.902538>,  <40.419029, 34.236031, 28.766665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777939, 34.123241, 28.902538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206874, 0.411173, 0.887772,
		-0.390001, -0.866848, 0.310602,
		0.897275, -0.281977, 0.339686,
		41.047123, 34.038647, 29.004444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261456, 33.923508, 29.424370>,  <40.419029, 34.236031, 28.766665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261456, 33.923508, 29.424370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657276, 33.974392, 29.451519>,  <40.894768, 34.004921, 29.467810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657276, 33.974392, 29.451519>,  <40.261456, 33.923508, 29.424370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657276, 33.974392, 29.451519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125148, 0.523987, 0.842482,
		0.071607, -0.842173, 0.534432,
		0.989551, 0.127211, 0.067875,
		40.954140, 34.012554, 29.471882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389450, 33.748966, 30.022591>,  <40.261456, 33.923508, 29.424370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389450, 33.748966, 30.022591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697231, 33.982090, 29.918072>,  <40.881901, 34.121964, 29.855360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697231, 33.982090, 29.918072>,  <40.389450, 33.748966, 30.022591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697231, 33.982090, 29.918072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145694, 0.558482, 0.816621,
		0.621864, -0.590282, 0.514638,
		0.769454, 0.582807, -0.261299,
		40.928066, 34.156933, 29.839682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857319, 33.768589, 30.673464>,  <40.389450, 33.748966, 30.022591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857319, 33.768589, 30.673464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990719, 34.077110, 30.456623>,  <41.070759, 34.262222, 30.326519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990719, 34.077110, 30.456623>,  <40.857319, 33.768589, 30.673464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990719, 34.077110, 30.456623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154041, 0.611874, 0.775810,
		0.930081, -0.175226, 0.322871,
		0.333498, 0.771302, -0.542101,
		41.090767, 34.308502, 30.293993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444302, 34.124939, 31.042261>,  <40.857319, 33.768589, 30.673464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444302, 34.124939, 31.042261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277618, 34.386089, 30.789246>,  <41.177608, 34.542778, 30.637436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277618, 34.386089, 30.789246>,  <41.444302, 34.124939, 31.042261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277618, 34.386089, 30.789246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078209, 0.667502, 0.740489,
		0.905668, 0.358041, -0.227095,
		-0.416712, 0.652876, -0.632537,
		41.152603, 34.581951, 30.599483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796055, 34.807964, 31.195322>,  <41.444302, 34.124939, 31.042261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796055, 34.807964, 31.195322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458431, 34.901890, 31.002476>,  <41.255859, 34.958244, 30.886768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458431, 34.901890, 31.002476>,  <41.796055, 34.807964, 31.195322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458431, 34.901890, 31.002476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174492, 0.729854, 0.660958,
		0.507074, 0.642010, -0.575065,
		-0.844055, 0.234810, -0.482115,
		41.205215, 34.972332, 30.857841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738033, 35.487865, 31.257736>,  <41.796055, 34.807964, 31.195322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738033, 35.487865, 31.257736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357292, 35.395489, 31.177090>,  <41.128849, 35.340061, 31.128702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357292, 35.395489, 31.177090>,  <41.738033, 35.487865, 31.257736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357292, 35.395489, 31.177090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295922, 0.520350, 0.801041,
		-0.080083, 0.822132, -0.563636,
		-0.951849, -0.230942, -0.201616,
		41.071739, 35.326206, 31.116606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417564, 36.060101, 31.389429>,  <41.738033, 35.487865, 31.257736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417564, 36.060101, 31.389429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120953, 35.791786, 31.384111>,  <40.942986, 35.630798, 31.380920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120953, 35.791786, 31.384111>,  <41.417564, 36.060101, 31.389429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120953, 35.791786, 31.384111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398686, 0.424622, 0.812862,
		-0.539611, 0.608064, -0.582304,
		-0.741531, -0.670786, -0.013296,
		40.898495, 35.590549, 31.380123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891758, 36.487915, 31.559919>,  <41.417564, 36.060101, 31.389429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891758, 36.487915, 31.559919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757168, 36.119156, 31.636736>,  <40.676414, 35.897900, 31.682827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757168, 36.119156, 31.636736>,  <40.891758, 36.487915, 31.559919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757168, 36.119156, 31.636736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338667, 0.308756, 0.888805,
		-0.878685, 0.234025, -0.416108,
		-0.336478, -0.921902, 0.192043,
		40.656223, 35.842587, 31.694349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314659, 36.664501, 31.845245>,  <40.891758, 36.487915, 31.559919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314659, 36.664501, 31.845245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426182, 36.300762, 31.968761>,  <40.493095, 36.082520, 32.042873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426182, 36.300762, 31.968761>,  <40.314659, 36.664501, 31.845245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426182, 36.300762, 31.968761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407770, 0.179019, 0.895363,
		-0.869476, -0.375551, -0.320893,
		0.278809, -0.909348, 0.308792,
		40.509823, 36.027958, 32.061398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744946, 36.417568, 32.133385>,  <40.314659, 36.664501, 31.845245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744946, 36.417568, 32.133385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031261, 36.190273, 32.295742>,  <40.203053, 36.053894, 32.393158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031261, 36.190273, 32.295742>,  <39.744946, 36.417568, 32.133385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031261, 36.190273, 32.295742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352354, 0.207933, 0.912475,
		-0.602904, -0.796157, -0.051386,
		0.715789, -0.568241, 0.405893,
		40.245998, 36.019802, 32.417511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429607, 35.988785, 32.504978>,  <39.744946, 36.417568, 32.133385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429607, 35.988785, 32.504978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785500, 36.027458, 32.683430>,  <39.999035, 36.050663, 32.790501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.785500, 36.027458, 32.683430>,  <39.429607, 35.988785, 32.504978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785500, 36.027458, 32.683430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455281, 0.258988, 0.851848,
		-0.033180, -0.961029, 0.274449,
		0.889730, 0.096687, 0.446131,
		40.052418, 36.056465, 32.817268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511505, 35.642136, 33.260105>,  <39.429607, 35.988785, 32.504978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511505, 35.642136, 33.260105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722992, 35.972038, 33.179867>,  <39.849884, 36.169979, 33.131725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722992, 35.972038, 33.179867>,  <39.511505, 35.642136, 33.260105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722992, 35.972038, 33.179867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437831, 0.467461, 0.767974,
		0.727163, -0.318211, 0.608257,
		0.528714, 0.824756, -0.200597,
		39.881607, 36.219463, 33.119686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714630, 35.966290, 33.957306>,  <39.511505, 35.642136, 33.260105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714630, 35.966290, 33.957306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830791, 36.265209, 33.718239>,  <39.900490, 36.444561, 33.574799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830791, 36.265209, 33.718239>,  <39.714630, 35.966290, 33.957306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830791, 36.265209, 33.718239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007491, 0.626337, 0.779517,
		0.956874, -0.221900, 0.187490,
		0.290407, 0.747303, -0.597663,
		39.917915, 36.489399, 33.538940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264809, 36.274837, 34.275536>,  <39.714630, 35.966290, 33.957306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264809, 36.274837, 34.275536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117672, 36.539978, 34.014671>,  <40.029392, 36.699062, 33.858150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117672, 36.539978, 34.014671>,  <40.264809, 36.274837, 34.275536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117672, 36.539978, 34.014671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020598, 0.706971, 0.706943,
		0.929662, 0.246607, -0.273704,
		-0.367838, 0.662856, -0.652164,
		40.007320, 36.738834, 33.819023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589684, 36.825031, 34.439934>,  <40.264809, 36.274837, 34.275536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589684, 36.825031, 34.439934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310043, 36.985287, 34.203037>,  <40.142262, 37.081440, 34.060898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310043, 36.985287, 34.203037>,  <40.589684, 36.825031, 34.439934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310043, 36.985287, 34.203037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100030, 0.765335, 0.635812,
		0.707995, 0.503737, -0.494968,
		-0.699098, 0.400640, -0.592242,
		40.100315, 37.105480, 34.025364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662254, 37.700855, 34.310806>,  <40.589684, 36.825031, 34.439934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662254, 37.700855, 34.310806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291958, 37.671665, 34.162384>,  <40.069782, 37.654152, 34.073330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291958, 37.671665, 34.162384>,  <40.662254, 37.700855, 34.310806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291958, 37.671665, 34.162384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271163, 0.812013, 0.516823,
		0.263586, 0.579060, -0.771500,
		-0.925739, -0.072975, -0.371055,
		40.014236, 37.649773, 34.051067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400723, 38.425468, 34.133739>,  <40.662254, 37.700855, 34.310806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400723, 38.425468, 34.133739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094456, 38.169708, 34.161789>,  <39.910694, 38.016251, 34.178619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094456, 38.169708, 34.161789>,  <40.400723, 38.425468, 34.133739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094456, 38.169708, 34.161789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514177, 0.673894, 0.530556,
		-0.386495, 0.370173, -0.844745,
		-0.765666, -0.639405, 0.070122,
		39.864758, 37.977886, 34.182827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837742, 38.877842, 34.171703>,  <40.400723, 38.425468, 34.133739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837742, 38.877842, 34.171703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718777, 38.535885, 34.341740>,  <39.647396, 38.330711, 34.443760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718777, 38.535885, 34.341740>,  <39.837742, 38.877842, 34.171703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718777, 38.535885, 34.341740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515476, 0.518551, 0.682194,
		-0.803635, -0.016230, -0.594901,
		-0.297415, -0.854892, 0.425092,
		39.629551, 38.279419, 34.469269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028698, 38.808563, 34.230263>,  <39.837742, 38.877842, 34.171703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028698, 38.808563, 34.230263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211590, 38.603127, 34.520687>,  <39.321323, 38.479866, 34.694942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211590, 38.603127, 34.520687>,  <39.028698, 38.808563, 34.230263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211590, 38.603127, 34.520687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656536, 0.355780, 0.665117,
		-0.599917, -0.780796, -0.174519,
		0.457230, -0.513593, 0.726060,
		39.348759, 38.449047, 34.738506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503944, 38.781780, 34.650284>,  <39.028698, 38.808563, 34.230263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503944, 38.781780, 34.650284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804989, 38.667477, 34.887577>,  <38.985615, 38.598896, 35.029953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804989, 38.667477, 34.887577>,  <38.503944, 38.781780, 34.650284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804989, 38.667477, 34.887577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509258, 0.318522, 0.799500,
		-0.417419, -0.903818, 0.094200,
		0.752608, -0.285755, 0.593234,
		39.030769, 38.581749, 35.065548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266895, 38.367615, 35.197754>,  <38.503944, 38.781780, 34.650284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266895, 38.367615, 35.197754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577164, 38.583591, 35.328480>,  <38.763325, 38.713177, 35.406918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577164, 38.583591, 35.328480>,  <38.266895, 38.367615, 35.197754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577164, 38.583591, 35.328480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590604, 0.438364, 0.677513,
		0.222549, -0.718543, 0.658914,
		0.775667, 0.539937, 0.326817,
		38.809864, 38.745571, 35.426525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257572, 38.308662, 35.872929>,  <38.266895, 38.367615, 35.197754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257572, 38.308662, 35.872929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499645, 38.627090, 35.875263>,  <38.644890, 38.818146, 35.876663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499645, 38.627090, 35.875263>,  <38.257572, 38.308662, 35.872929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499645, 38.627090, 35.875263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402630, 0.299745, 0.864894,
		0.686764, -0.525767, 0.501920,
		0.605181, 0.796067, 0.005836,
		38.681198, 38.865910, 35.877014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421085, 38.372364, 36.580452>,  <38.257572, 38.308662, 35.872929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421085, 38.372364, 36.580452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520351, 38.735992, 36.446583>,  <38.579910, 38.954170, 36.366261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520351, 38.735992, 36.446583>,  <38.421085, 38.372364, 36.580452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520351, 38.735992, 36.446583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301293, 0.400782, 0.865215,
		0.920671, -0.113883, 0.373357,
		0.248168, 0.909068, -0.334676,
		38.594803, 39.008713, 36.346180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800972, 38.823444, 37.094467>,  <38.421085, 38.372364, 36.580452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800972, 38.823444, 37.094467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627796, 39.086155, 36.847500>,  <38.523891, 39.243782, 36.699318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627796, 39.086155, 36.847500>,  <38.800972, 38.823444, 37.094467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627796, 39.086155, 36.847500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373478, 0.492693, 0.785983,
		0.820412, 0.570878, 0.031984,
		-0.432942, 0.656775, -0.617421,
		38.497913, 39.283188, 36.662273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729683, 39.524235, 37.454582>,  <38.800972, 38.823444, 37.094467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729683, 39.524235, 37.454582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489208, 39.594681, 37.142799>,  <38.344921, 39.636948, 36.955730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489208, 39.594681, 37.142799>,  <38.729683, 39.524235, 37.454582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489208, 39.594681, 37.142799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558868, 0.604520, 0.567646,
		0.571170, 0.776877, -0.265005,
		-0.601191, 0.176119, -0.779455,
		38.308849, 39.647518, 36.908962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623806, 40.166862, 37.522564>,  <38.729683, 39.524235, 37.454582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623806, 40.166862, 37.522564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311470, 40.031750, 37.312351>,  <38.124069, 39.950680, 37.186222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311470, 40.031750, 37.312351>,  <38.623806, 40.166862, 37.522564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311470, 40.031750, 37.312351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596405, 0.653472, 0.466127,
		0.185969, 0.677402, -0.711717,
		-0.780843, -0.337786, -0.525532,
		38.077217, 39.930412, 37.154690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168800, 40.674625, 37.517952>,  <38.623806, 40.166862, 37.522564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168800, 40.674625, 37.517952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905552, 40.390766, 37.417336>,  <37.747604, 40.220451, 37.356968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905552, 40.390766, 37.417336>,  <38.168800, 40.674625, 37.517952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905552, 40.390766, 37.417336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705321, 0.464204, 0.535759,
		-0.263438, 0.530008, -0.806035,
		-0.658121, -0.709652, -0.251537,
		37.708115, 40.177872, 37.341873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449890, 40.950787, 37.213760>,  <38.168800, 40.674625, 37.517952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449890, 40.950787, 37.213760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406456, 40.594986, 37.391300>,  <37.380398, 40.381508, 37.497826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406456, 40.594986, 37.391300>,  <37.449890, 40.950787, 37.213760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406456, 40.594986, 37.391300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859165, 0.308564, 0.408196,
		-0.500045, -0.337016, -0.797731,
		-0.108582, -0.889499, 0.443848,
		37.373882, 40.328136, 37.524456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804455, 40.581917, 37.082573>,  <37.449890, 40.950787, 37.213760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804455, 40.581917, 37.082573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917885, 40.421806, 37.431141>,  <36.985943, 40.325741, 37.640282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917885, 40.421806, 37.431141>,  <36.804455, 40.581917, 37.082573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917885, 40.421806, 37.431141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798184, 0.405131, 0.445838,
		-0.531495, -0.821979, -0.204606,
		0.283577, -0.400273, 0.871416,
		37.002956, 40.301723, 37.692566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264874, 40.232090, 37.423279>,  <36.804455, 40.581917, 37.082573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264874, 40.232090, 37.423279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543030, 40.392410, 37.661869>,  <36.709923, 40.488602, 37.805023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543030, 40.392410, 37.661869>,  <36.264874, 40.232090, 37.423279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543030, 40.392410, 37.661869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705347, 0.221828, 0.673259,
		0.137522, -0.888907, 0.436957,
		0.695394, 0.400794, 0.596482,
		36.751648, 40.512650, 37.840813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624073, 39.736385, 37.713009>,  <36.264874, 40.232090, 37.423279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624073, 39.736385, 37.713009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237610, 39.791523, 37.800220>,  <36.005733, 39.824604, 37.852547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.237610, 39.791523, 37.800220>,  <36.624073, 39.736385, 37.713009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237610, 39.791523, 37.800220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244811, 0.756336, 0.606650,
		-0.081284, 0.639496, -0.764485,
		-0.966158, 0.137844, 0.218033,
		35.947762, 39.832874, 37.865631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002159, 39.171661, 37.573341>,  <36.624073, 39.736385, 37.713009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002159, 39.171661, 37.573341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039097, 39.555710, 37.467777>,  <37.061260, 39.786137, 37.404438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039097, 39.555710, 37.467777>,  <37.002159, 39.171661, 37.573341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039097, 39.555710, 37.467777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462438, -0.276080, -0.842574,
		-0.881829, -0.044231, -0.469490,
		0.092349, 0.960116, -0.263909,
		37.066803, 39.843746, 37.388603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791744, 39.310146, 36.785900>,  <37.002159, 39.171661, 37.573341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791744, 39.310146, 36.785900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051853, 39.590359, 36.903477>,  <37.207920, 39.758484, 36.974022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051853, 39.590359, 36.903477>,  <36.791744, 39.310146, 36.785900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051853, 39.590359, 36.903477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621661, -0.268272, -0.735913,
		-0.436670, 0.661280, -0.609941,
		0.650275, 0.700527, 0.293946,
		37.246937, 39.800518, 36.991661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141205, 39.660862, 36.315166>,  <36.791744, 39.310146, 36.785900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141205, 39.660862, 36.315166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425320, 39.749187, 36.582520>,  <37.595787, 39.802181, 36.742931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425320, 39.749187, 36.582520>,  <37.141205, 39.660862, 36.315166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425320, 39.749187, 36.582520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702641, -0.279479, -0.654360,
		0.042307, 0.934416, -0.353663,
		0.710285, 0.220814, 0.668383,
		37.638405, 39.815434, 36.783035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625553, 39.854847, 35.819199>,  <37.141205, 39.660862, 36.315166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625553, 39.854847, 35.819199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842472, 39.802860, 36.151226>,  <37.972626, 39.771667, 36.350445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842472, 39.802860, 36.151226>,  <37.625553, 39.854847, 35.819199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842472, 39.802860, 36.151226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698427, -0.479430, -0.531363,
		0.467021, 0.867903, -0.169222,
		0.542302, -0.129969, 0.830070,
		38.005161, 39.763870, 36.400246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210438, 40.244427, 35.804672>,  <37.625553, 39.854847, 35.819199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210438, 40.244427, 35.804672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288376, 39.942448, 36.055141>,  <38.335136, 39.761261, 36.205421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288376, 39.942448, 36.055141>,  <38.210438, 40.244427, 35.804672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288376, 39.942448, 36.055141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778595, -0.269213, -0.566846,
		0.596512, 0.597981, 0.535343,
		0.194842, -0.754946, 0.626174,
		38.346828, 39.715965, 36.242992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901855, 40.170811, 35.753357>,  <38.210438, 40.244427, 35.804672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901855, 40.170811, 35.753357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783443, 39.818127, 35.900303>,  <38.712399, 39.606518, 35.988472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783443, 39.818127, 35.900303>,  <38.901855, 40.170811, 35.753357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783443, 39.818127, 35.900303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754081, -0.451795, -0.476700,
		0.586285, 0.135908, 0.798623,
		-0.296026, -0.881709, 0.367366,
		38.694637, 39.553616, 36.010513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533291, 39.881775, 35.937592>,  <38.901855, 40.170811, 35.753357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533291, 39.881775, 35.937592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277008, 39.574825, 35.927563>,  <39.123238, 39.390656, 35.921547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277008, 39.574825, 35.927563>,  <39.533291, 39.881775, 35.937592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277008, 39.574825, 35.927563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683732, -0.555409, -0.473318,
		0.349290, -0.320398, 0.880535,
		-0.640707, -0.767376, -0.025067,
		39.084797, 39.344612, 35.920044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901020, 39.253998, 36.048203>,  <39.533291, 39.881775, 35.937592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901020, 39.253998, 36.048203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565174, 39.104633, 35.890411>,  <39.363667, 39.015015, 35.795738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565174, 39.104633, 35.890411>,  <39.901020, 39.253998, 36.048203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565174, 39.104633, 35.890411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526108, -0.739714, -0.419563,
		-0.135129, -0.559808, 0.817530,
		-0.839613, -0.373414, -0.394476,
		39.313290, 38.992607, 35.772068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145760, 38.722160, 35.786919>,  <39.901020, 39.253998, 36.048203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145760, 38.722160, 35.786919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765079, 38.703957, 35.665462>,  <39.536671, 38.693035, 35.592590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765079, 38.703957, 35.665462>,  <40.145760, 38.722160, 35.786919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765079, 38.703957, 35.665462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225007, -0.776247, -0.588908,
		-0.208899, -0.628785, 0.748993,
		-0.951700, -0.045506, -0.303638,
		39.479568, 38.690304, 35.574371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881607, 38.093765, 35.882145>,  <40.145760, 38.722160, 35.786919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881607, 38.093765, 35.882145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622776, 38.223835, 35.606304>,  <39.467480, 38.301876, 35.440800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622776, 38.223835, 35.606304>,  <39.881607, 38.093765, 35.882145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622776, 38.223835, 35.606304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161204, -0.825688, -0.540604,
		-0.745187, -0.460980, 0.481865,
		-0.647078, 0.325173, -0.689604,
		39.428654, 38.321388, 35.399422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516602, 37.517345, 35.657959>,  <39.881607, 38.093765, 35.882145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516602, 37.517345, 35.657959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489769, 37.783688, 35.360737>,  <39.473667, 37.943493, 35.182404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489769, 37.783688, 35.360737>,  <39.516602, 37.517345, 35.657959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489769, 37.783688, 35.360737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151428, -0.729312, -0.667214,
		-0.986189, -0.157280, -0.051903,
		-0.067086, 0.665859, -0.743056,
		39.469643, 37.983444, 35.137821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186142, 37.199253, 35.062836>,  <39.516602, 37.517345, 35.657959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186142, 37.199253, 35.062836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358265, 37.513336, 34.884720>,  <39.461540, 37.701786, 34.777851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358265, 37.513336, 34.884720>,  <39.186142, 37.199253, 35.062836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358265, 37.513336, 34.884720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196442, -0.562926, -0.802823,
		-0.881048, 0.257988, -0.396480,
		0.430308, 0.785211, -0.445285,
		39.487358, 37.748901, 34.751133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902370, 37.176674, 34.333813>,  <39.186142, 37.199253, 35.062836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902370, 37.176674, 34.333813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243973, 37.381367, 34.371349>,  <39.448933, 37.504185, 34.393871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243973, 37.381367, 34.371349>,  <38.902370, 37.176674, 34.333813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243973, 37.381367, 34.371349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266138, -0.274712, -0.923961,
		-0.447043, 0.814040, -0.370797,
		0.854004, 0.511734, 0.093839,
		39.500175, 37.534885, 34.399502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871273, 37.328011, 33.640427>,  <38.902370, 37.176674, 34.333813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871273, 37.328011, 33.640427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225834, 37.409981, 33.806465>,  <39.438568, 37.459164, 33.906090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225834, 37.409981, 33.806465>,  <38.871273, 37.328011, 33.640427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225834, 37.409981, 33.806465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462252, -0.343524, -0.817505,
		-0.024932, 0.916514, -0.399225,
		0.886398, 0.204925, 0.415095,
		39.491753, 37.471458, 33.930992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221733, 37.735165, 33.086880>,  <38.871273, 37.328011, 33.640427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221733, 37.735165, 33.086880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462215, 37.544510, 33.343433>,  <39.606503, 37.430119, 33.497364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462215, 37.544510, 33.343433>,  <39.221733, 37.735165, 33.086880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462215, 37.544510, 33.343433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451522, -0.459603, -0.764783,
		0.659306, 0.749388, -0.061103,
		0.601202, -0.476637, 0.641384,
		39.642574, 37.401520, 33.535847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935265, 37.573257, 32.764561>,  <39.221733, 37.735165, 33.086880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935265, 37.573257, 32.764561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944889, 37.323387, 33.076767>,  <39.950665, 37.173466, 33.264091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944889, 37.323387, 33.076767>,  <39.935265, 37.573257, 32.764561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944889, 37.323387, 33.076767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211535, -0.759878, -0.614685,
		0.977074, 0.179894, 0.113860,
		0.024059, -0.624678, 0.780511,
		39.952106, 37.135983, 33.310921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619198, 37.211330, 32.841164>,  <39.935265, 37.573257, 32.764561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619198, 37.211330, 32.841164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395931, 36.892925, 32.934811>,  <40.261971, 36.701881, 32.991001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395931, 36.892925, 32.934811>,  <40.619198, 37.211330, 32.841164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395931, 36.892925, 32.934811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246485, -0.428499, -0.869272,
		0.792276, -0.427488, 0.435378,
		-0.558162, -0.796017, 0.234120,
		40.228481, 36.654121, 33.005047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951031, 36.574608, 32.838776>,  <40.619198, 37.211330, 32.841164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951031, 36.574608, 32.838776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564724, 36.510803, 32.756950>,  <40.332939, 36.472523, 32.707855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564724, 36.510803, 32.756950>,  <40.951031, 36.574608, 32.838776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564724, 36.510803, 32.756950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250801, -0.372811, -0.893371,
		0.066238, -0.914095, 0.400055,
		-0.965770, -0.159510, -0.204562,
		40.274994, 36.462952, 32.695583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194012, 35.941841, 33.155067>,  <40.951031, 36.574608, 32.838776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194012, 35.941841, 33.155067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805836, 35.914684, 33.062435>,  <40.572929, 35.898388, 33.006855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805836, 35.914684, 33.062435>,  <41.194012, 35.941841, 33.155067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805836, 35.914684, 33.062435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238900, -0.406059, -0.882067,
		-0.034145, -0.911321, 0.410278,
		-0.970444, -0.067897, -0.231579,
		40.514702, 35.894314, 32.992962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106483, 35.281555, 32.956322>,  <41.194012, 35.941841, 33.155067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106483, 35.281555, 32.956322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811695, 35.480110, 32.772812>,  <40.634823, 35.599243, 32.662708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811695, 35.480110, 32.772812>,  <41.106483, 35.281555, 32.956322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811695, 35.480110, 32.772812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219483, -0.466213, -0.857014,
		-0.639297, -0.732287, 0.234637,
		-0.736971, 0.496388, -0.458773,
		40.590603, 35.629025, 32.635181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863091, 34.829288, 32.491852>,  <41.106483, 35.281555, 32.956322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863091, 34.829288, 32.491852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734589, 35.183357, 32.357231>,  <40.657490, 35.395798, 32.276459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734589, 35.183357, 32.357231>,  <40.863091, 34.829288, 32.491852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734589, 35.183357, 32.357231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095028, -0.323466, -0.941456,
		-0.942214, -0.334426, 0.019798,
		-0.321251, 0.885172, -0.336554,
		40.638214, 35.448910, 32.256264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235279, 34.636795, 32.092621>,  <40.863091, 34.829288, 32.491852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235279, 34.636795, 32.092621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362896, 34.998997, 31.980715>,  <40.439465, 35.216320, 31.913570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362896, 34.998997, 31.980715>,  <40.235279, 34.636795, 32.092621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362896, 34.998997, 31.980715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130752, -0.334422, -0.933309,
		-0.938679, 0.261182, -0.225091,
		0.319039, 0.905509, -0.279764,
		40.458607, 35.270649, 31.896786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813389, 34.224091, 31.766758>,  <40.235279, 34.636795, 32.092621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813389, 34.224091, 31.766758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089706, 34.475948, 31.624575>,  <41.255497, 34.627064, 31.539265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089706, 34.475948, 31.624575>,  <40.813389, 34.224091, 31.766758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089706, 34.475948, 31.624575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623789, -0.270378, 0.733336,
		0.365631, -0.728318, -0.579540,
		0.690797, 0.629642, -0.355459,
		41.296944, 34.664841, 31.517937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378674, 33.764343, 31.746754>,  <40.813389, 34.224091, 31.766758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378674, 33.764343, 31.746754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734531, 33.685562, 31.581951>,  <41.948044, 33.638294, 31.483070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734531, 33.685562, 31.581951>,  <41.378674, 33.764343, 31.746754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734531, 33.685562, 31.581951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452853, 0.496761, 0.740373,
		0.058852, -0.845245, 0.531129,
		0.889641, -0.196951, -0.412007,
		42.001423, 33.626476, 31.458349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791439, 33.492508, 32.365158>,  <41.378674, 33.764343, 31.746754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791439, 33.492508, 32.365158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978645, 33.680733, 32.065952>,  <42.090969, 33.793667, 31.886427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978645, 33.680733, 32.065952>,  <41.791439, 33.492508, 32.365158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978645, 33.680733, 32.065952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473907, 0.580799, 0.661880,
		0.745905, -0.664261, 0.048819,
		0.468015, 0.470563, -0.748019,
		42.119049, 33.821903, 31.841547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555481, 33.479733, 32.586315>,  <41.791439, 33.492508, 32.365158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555481, 33.479733, 32.586315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479729, 33.747341, 32.298832>,  <42.434277, 33.907906, 32.126343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.479729, 33.747341, 32.298832>,  <42.555481, 33.479733, 32.586315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479729, 33.747341, 32.298832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476710, 0.702552, 0.528364,
		0.858419, -0.242555, -0.451978,
		-0.189381, 0.669020, -0.718713,
		42.422913, 33.948048, 32.083218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104462, 33.715378, 32.186859>,  <42.555481, 33.479733, 32.586315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104462, 33.715378, 32.186859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812168, 33.980400, 32.252632>,  <42.636791, 34.139416, 32.292095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812168, 33.980400, 32.252632>,  <43.104462, 33.715378, 32.186859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812168, 33.980400, 32.252632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589788, 0.491442, 0.640807,
		0.343763, 0.565243, -0.749885,
		-0.730737, 0.662560, 0.164434,
		42.592949, 34.179169, 32.301964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279057, 34.450687, 32.157692>,  <43.104462, 33.715378, 32.186859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279057, 34.450687, 32.157692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985916, 34.390522, 32.423115>,  <42.810032, 34.354424, 32.582367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985916, 34.390522, 32.423115>,  <43.279057, 34.450687, 32.157692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985916, 34.390522, 32.423115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319348, 0.785117, 0.530667,
		-0.600791, 0.600804, -0.527337,
		-0.732849, -0.150416, 0.663557,
		42.766060, 34.345398, 32.622181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834450, 35.014339, 32.277000>,  <43.279057, 34.450687, 32.157692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834450, 35.014339, 32.277000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824116, 34.813961, 32.623039>,  <42.817917, 34.693733, 32.830662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824116, 34.813961, 32.623039>,  <42.834450, 35.014339, 32.277000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824116, 34.813961, 32.623039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281899, 0.826614, 0.487076,
		-0.959096, 0.256452, 0.119862,
		-0.025832, -0.500942, 0.865096,
		42.816368, 34.663677, 32.882568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350037, 35.350918, 32.704437>,  <42.834450, 35.014339, 32.277000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350037, 35.350918, 32.704437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705132, 35.215744, 32.829479>,  <42.918190, 35.134640, 32.904503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705132, 35.215744, 32.829479>,  <42.350037, 35.350918, 32.704437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705132, 35.215744, 32.829479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215162, 0.904905, 0.367221,
		-0.406977, -0.258734, 0.876029,
		0.887736, -0.337939, 0.312605,
		42.971451, 35.114361, 32.923260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577343, 35.897758, 33.125450>,  <42.350037, 35.350918, 32.704437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577343, 35.897758, 33.125450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887676, 35.645477, 33.132263>,  <43.073875, 35.494106, 33.136353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887676, 35.645477, 33.132263>,  <42.577343, 35.897758, 33.125450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887676, 35.645477, 33.132263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591562, 0.736540, 0.327969,
		-0.219396, -0.244374, 0.944535,
		0.775835, -0.630706, 0.017031,
		43.120426, 35.456264, 33.137371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878288, 35.829067, 33.746334>,  <42.577343, 35.897758, 33.125450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878288, 35.829067, 33.746334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140892, 35.778946, 33.448799>,  <43.298454, 35.748875, 33.270279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.140892, 35.778946, 33.448799>,  <42.878288, 35.829067, 33.746334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140892, 35.778946, 33.448799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579343, 0.715266, 0.390841,
		0.483068, -0.687528, 0.542173,
		0.656512, -0.125301, -0.743836,
		43.337845, 35.741356, 33.225647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782444, 35.074242, 34.037624>,  <42.878288, 35.829067, 33.746334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782444, 35.074242, 34.037624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661495, 34.869335, 34.359158>,  <42.588924, 34.746391, 34.552078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661495, 34.869335, 34.359158>,  <42.782444, 35.074242, 34.037624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661495, 34.869335, 34.359158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909858, 0.096256, 0.403600,
		-0.284126, 0.853414, 0.436987,
		-0.302375, -0.512269, 0.803834,
		42.570782, 34.715652, 34.600307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956230, 35.412323, 34.681641>,  <42.782444, 35.074242, 34.037624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956230, 35.412323, 34.681641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955940, 35.016354, 34.738297>,  <42.955765, 34.778774, 34.772289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955940, 35.016354, 34.738297>,  <42.956230, 35.412323, 34.681641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955940, 35.016354, 34.738297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889829, 0.063989, 0.451786,
		-0.456295, 0.126358, 0.880811,
		-0.000725, -0.989919, 0.141635,
		42.955723, 34.719379, 34.780788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138031, 35.366020, 35.404419>,  <42.956230, 35.412323, 34.681641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138031, 35.366020, 35.404419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207394, 35.032379, 35.194962>,  <43.249012, 34.832195, 35.069286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.207394, 35.032379, 35.194962>,  <43.138031, 35.366020, 35.404419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207394, 35.032379, 35.194962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962043, 0.029698, 0.271276,
		-0.210722, -0.550807, 0.807594,
		0.173405, -0.834104, -0.523642,
		43.259415, 34.782146, 35.037868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384407, 34.803795, 35.640007>,  <43.138031, 35.366020, 35.404419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384407, 34.803795, 35.640007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579170, 34.732845, 35.297905>,  <43.696030, 34.690273, 35.092644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579170, 34.732845, 35.297905>,  <43.384407, 34.803795, 35.640007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579170, 34.732845, 35.297905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865102, 0.233018, 0.444186,
		0.120502, -0.956159, 0.266907,
		0.486907, -0.177377, -0.855254,
		43.725243, 34.679634, 35.041328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072365, 34.522686, 35.867676>,  <43.384407, 34.803795, 35.640007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072365, 34.522686, 35.867676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092403, 34.653431, 35.490177>,  <44.104427, 34.731876, 35.263680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092403, 34.653431, 35.490177>,  <44.072365, 34.522686, 35.867676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092403, 34.653431, 35.490177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966446, 0.222497, 0.128360,
		0.251936, -0.918508, -0.304749,
		0.050093, 0.326862, -0.943744,
		44.107433, 34.751488, 35.207054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705711, 34.222191, 35.648621>,  <44.072365, 34.522686, 35.867676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705711, 34.222191, 35.648621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609459, 34.481712, 35.359859>,  <44.551708, 34.637424, 35.186604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.609459, 34.481712, 35.359859>,  <44.705711, 34.222191, 35.648621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609459, 34.481712, 35.359859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884917, 0.452216, 0.111455,
		0.398768, -0.612004, -0.682960,
		-0.240635, 0.648808, -0.721902,
		44.537270, 34.676353, 35.143288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414055, 34.454094, 35.494743>,  <44.705711, 34.222191, 35.648621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414055, 34.454094, 35.494743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195065, 34.705345, 35.273571>,  <45.063671, 34.856094, 35.140869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195065, 34.705345, 35.273571>,  <45.414055, 34.454094, 35.494743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195065, 34.705345, 35.273571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824998, 0.515821, -0.230882,
		0.140191, -0.582569, -0.800599,
		-0.547471, 0.628125, -0.552932,
		45.030823, 34.893784, 35.107693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946560, 34.976971, 35.491371>,  <45.414055, 34.454094, 35.494743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946560, 34.976971, 35.491371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286919, 34.796280, 35.384098>,  <46.491135, 34.687866, 35.319733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.286919, 34.796280, 35.384098>,  <45.946560, 34.976971, 35.491371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.286919, 34.796280, 35.384098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381347, 0.882241, -0.276091,
		0.361323, 0.132652, 0.922957,
		0.850894, -0.451725, -0.268187,
		46.542187, 34.660763, 35.303642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571850, 35.272732, 35.758289>,  <45.946560, 34.976971, 35.491371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571850, 35.272732, 35.758289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660210, 35.113914, 35.401962>,  <46.713226, 35.018623, 35.188164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.660210, 35.113914, 35.401962>,  <46.571850, 35.272732, 35.758289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660210, 35.113914, 35.401962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516319, 0.822499, -0.238558,
		0.827416, -0.407249, 0.386691,
		0.220901, -0.397043, -0.890820,
		46.726479, 34.994801, 35.134716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231220, 35.575500, 35.557224>,  <46.571850, 35.272732, 35.758289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231220, 35.575500, 35.557224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193794, 35.398937, 35.200256>,  <47.171337, 35.292999, 34.986076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193794, 35.398937, 35.200256>,  <47.231220, 35.575500, 35.557224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193794, 35.398937, 35.200256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887404, 0.369420, -0.275761,
		0.451398, -0.817736, 0.357138,
		-0.093565, -0.441403, -0.892417,
		47.165726, 35.266518, 34.932529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.870598, 35.272705, 35.343235>,  <47.231220, 35.575500, 35.557224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.870598, 35.272705, 35.343235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731632, 35.250011, 34.968838>,  <47.648254, 35.236397, 34.744198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.731632, 35.250011, 34.968838>,  <47.870598, 35.272705, 35.343235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.731632, 35.250011, 34.968838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918142, 0.182291, -0.351833,
		0.190585, -0.981606, -0.011237,
		-0.347409, -0.056737, -0.935995,
		47.627411, 35.232990, 34.688038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.311695, 30.258383, 23.678234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996140, 30.384604, 23.467299>,  <36.806808, 30.460337, 23.340738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996140, 30.384604, 23.467299>,  <37.311695, 30.258383, 23.678234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996140, 30.384604, 23.467299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278069, 0.581942, 0.764212,
		0.548028, 0.749513, -0.371342,
		-0.788887, 0.315551, -0.527338,
		36.759472, 30.479269, 23.309097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401260, 30.993198, 23.758953>,  <37.311695, 30.258383, 23.678234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401260, 30.993198, 23.758953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023663, 30.906693, 23.659271>,  <36.797104, 30.854790, 23.599463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023663, 30.906693, 23.659271>,  <37.401260, 30.993198, 23.758953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023663, 30.906693, 23.659271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329137, 0.563936, 0.757393,
		-0.023262, 0.796998, -0.603534,
		-0.943995, -0.216264, -0.249203,
		36.740463, 30.841814, 23.584511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122143, 31.641537, 23.711573>,  <37.401260, 30.993198, 23.758953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122143, 31.641537, 23.711573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833843, 31.368896, 23.762070>,  <36.660862, 31.205313, 23.792368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833843, 31.368896, 23.762070>,  <37.122143, 31.641537, 23.711573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833843, 31.368896, 23.762070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268880, 0.442751, 0.855380,
		-0.638921, 0.582573, -0.502383,
		-0.720752, -0.681601, 0.126241,
		36.617619, 31.164415, 23.799942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640533, 32.071018, 23.901316>,  <37.122143, 31.641537, 23.711573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640533, 32.071018, 23.901316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527084, 31.710875, 24.033327>,  <36.459015, 31.494789, 24.112534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527084, 31.710875, 24.033327>,  <36.640533, 32.071018, 23.901316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527084, 31.710875, 24.033327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323310, 0.413792, 0.851027,
		-0.902789, 0.134671, -0.408455,
		-0.283624, -0.900355, 0.330027,
		36.441998, 31.440767, 24.132336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103718, 32.243210, 24.238724>,  <36.640533, 32.071018, 23.901316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103718, 32.243210, 24.238724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155582, 31.868814, 24.369637>,  <36.186699, 31.644176, 24.448185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155582, 31.868814, 24.369637>,  <36.103718, 32.243210, 24.238724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155582, 31.868814, 24.369637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258644, 0.286718, 0.922440,
		-0.957231, -0.204252, -0.204913,
		0.129659, -0.935988, 0.327284,
		36.194481, 31.588018, 24.467821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407341, 31.969193, 24.585758>,  <36.103718, 32.243210, 24.238724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407341, 31.969193, 24.585758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737789, 31.795881, 24.729864>,  <35.936058, 31.691895, 24.816328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.737789, 31.795881, 24.729864>,  <35.407341, 31.969193, 24.585758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737789, 31.795881, 24.729864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309579, 0.185227, 0.932658,
		-0.470833, -0.882020, 0.018886,
		0.826122, -0.433280, 0.360266,
		35.985626, 31.665897, 24.837944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132614, 31.582695, 25.143486>,  <35.407341, 31.969193, 24.585758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132614, 31.582695, 25.143486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526051, 31.610176, 25.210205>,  <35.762112, 31.626665, 25.250237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.526051, 31.610176, 25.210205>,  <35.132614, 31.582695, 25.143486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526051, 31.610176, 25.210205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175426, 0.148821, 0.973180,
		0.042038, -0.986475, 0.158432,
		0.983595, 0.068704, 0.166797,
		35.821129, 31.630787, 25.260244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251987, 31.477329, 25.824474>,  <35.132614, 31.582695, 25.143486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251987, 31.477329, 25.824474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.631073, 31.588434, 25.761627>,  <35.858524, 31.655096, 25.723919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.631073, 31.588434, 25.761627>,  <35.251987, 31.477329, 25.824474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631073, 31.588434, 25.761627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129604, 0.114895, 0.984887,
		0.291617, -0.953754, 0.072889,
		0.947714, 0.277763, -0.157116,
		35.915386, 31.671762, 25.714493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719254, 31.173698, 26.335136>,  <35.251987, 31.477329, 25.824474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719254, 31.173698, 26.335136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892002, 31.510347, 26.205427>,  <35.995651, 31.712337, 26.127602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.892002, 31.510347, 26.205427>,  <35.719254, 31.173698, 26.335136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892002, 31.510347, 26.205427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049213, 0.380987, 0.923270,
		0.900590, -0.382777, 0.205958,
		0.431874, 0.841624, -0.324275,
		36.021564, 31.762835, 26.108145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232689, 31.298624, 26.713377>,  <35.719254, 31.173698, 26.335136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232689, 31.298624, 26.713377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182869, 31.673162, 26.582081>,  <36.152977, 31.897886, 26.503304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.182869, 31.673162, 26.582081>,  <36.232689, 31.298624, 26.713377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182869, 31.673162, 26.582081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244119, 0.349567, 0.904549,
		0.961713, 0.032535, -0.272119,
		-0.124553, 0.936346, -0.328241,
		36.145504, 31.954067, 26.483608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626518, 31.707382, 27.211370>,  <36.232689, 31.298624, 26.713377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626518, 31.707382, 27.211370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409443, 31.988522, 27.027418>,  <36.279198, 32.157207, 26.917046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409443, 31.988522, 27.027418>,  <36.626518, 31.707382, 27.211370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409443, 31.988522, 27.027418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233948, 0.652340, 0.720916,
		0.806696, 0.283643, -0.518448,
		-0.542687, 0.702850, -0.459882,
		36.246635, 32.199375, 26.889454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035545, 32.251976, 27.356562>,  <36.626518, 31.707382, 27.211370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035545, 32.251976, 27.356562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682163, 32.406773, 27.250933>,  <36.470135, 32.499653, 27.187555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682163, 32.406773, 27.250933>,  <37.035545, 32.251976, 27.356562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682163, 32.406773, 27.250933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013717, 0.584776, 0.811079,
		0.468307, 0.712933, -0.521934,
		-0.883460, 0.386993, -0.264075,
		36.417126, 32.522869, 27.171711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078304, 33.060768, 27.448822>,  <37.035545, 32.251976, 27.356562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078304, 33.060768, 27.448822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697445, 32.940037, 27.468031>,  <36.468929, 32.867599, 27.479555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697445, 32.940037, 27.468031>,  <37.078304, 33.060768, 27.448822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697445, 32.940037, 27.468031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133669, 0.552569, 0.822679,
		-0.274840, 0.776897, -0.566475,
		-0.952153, -0.301825, 0.048021,
		36.411800, 32.849491, 27.482437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653278, 33.596569, 27.594416>,  <37.078304, 33.060768, 27.448822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653278, 33.596569, 27.594416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.429714, 33.291035, 27.723515>,  <36.295574, 33.107712, 27.800974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.429714, 33.291035, 27.723515>,  <36.653278, 33.596569, 27.594416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429714, 33.291035, 27.723515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025672, 0.404968, 0.913970,
		-0.828828, 0.502546, -0.245952,
		-0.558915, -0.763838, 0.322747,
		36.262039, 33.061882, 27.820339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013630, 33.918087, 27.912872>,  <36.653278, 33.596569, 27.594416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013630, 33.918087, 27.912872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056160, 33.553387, 28.071571>,  <36.081676, 33.334568, 28.166790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056160, 33.553387, 28.071571>,  <36.013630, 33.918087, 27.912872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056160, 33.553387, 28.071571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126575, 0.383353, 0.914887,
		-0.986242, -0.147491, -0.074646,
		0.106322, -0.911749, 0.396748,
		36.088058, 33.279861, 28.190596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596718, 33.962776, 28.428925>,  <36.013630, 33.918087, 27.912872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596718, 33.962776, 28.428925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790291, 33.629711, 28.536612>,  <35.906437, 33.429871, 28.601225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.790291, 33.629711, 28.536612>,  <35.596718, 33.962776, 28.428925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790291, 33.629711, 28.536612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246133, 0.165711, 0.954965,
		-0.839776, -0.528406, -0.124753,
		0.483936, -0.832663, 0.269218,
		35.935471, 33.379913, 28.617376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300991, 33.788208, 29.064360>,  <35.596718, 33.962776, 28.428925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300991, 33.788208, 29.064360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634796, 33.567818, 29.062862>,  <35.835079, 33.435585, 29.061964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.634796, 33.567818, 29.062862>,  <35.300991, 33.788208, 29.064360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634796, 33.567818, 29.062862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128752, 0.188392, 0.973618,
		-0.535733, -0.812980, 0.228154,
		0.834514, -0.550974, -0.003745,
		35.885151, 33.402527, 29.061739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270287, 33.348228, 29.645460>,  <35.300991, 33.788208, 29.064360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270287, 33.348228, 29.645460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654747, 33.421070, 29.562498>,  <35.885426, 33.464775, 29.512720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654747, 33.421070, 29.562498>,  <35.270287, 33.348228, 29.645460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654747, 33.421070, 29.562498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157774, 0.254069, 0.954231,
		0.226464, -0.949888, 0.215469,
		0.961156, 0.182104, -0.207405,
		35.943092, 33.475700, 29.500277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509899, 33.191437, 30.274307>,  <35.270287, 33.348228, 29.645460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509899, 33.191437, 30.274307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833832, 33.340271, 30.092882>,  <36.028191, 33.429573, 29.984026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.833832, 33.340271, 30.092882>,  <35.509899, 33.191437, 30.274307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833832, 33.340271, 30.092882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368198, 0.279531, 0.886731,
		0.456728, -0.885105, 0.089371,
		0.809833, 0.372089, -0.453564,
		36.076782, 33.451897, 29.956814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095879, 33.019379, 30.571747>,  <35.509899, 33.191437, 30.274307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095879, 33.019379, 30.571747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207226, 33.367424, 30.409063>,  <36.274033, 33.576252, 30.311453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207226, 33.367424, 30.409063>,  <36.095879, 33.019379, 30.571747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207226, 33.367424, 30.409063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434145, 0.263729, 0.861374,
		0.856756, -0.416347, -0.304343,
		0.278366, 0.870116, -0.406706,
		36.290737, 33.628460, 30.287052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825439, 33.034225, 30.651060>,  <36.095879, 33.019379, 30.571747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825439, 33.034225, 30.651060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734043, 33.416508, 30.576853>,  <36.679207, 33.645878, 30.532328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734043, 33.416508, 30.576853>,  <36.825439, 33.034225, 30.651060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734043, 33.416508, 30.576853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388701, 0.264268, 0.882651,
		0.892582, 0.129567, -0.431867,
		-0.228491, 0.955706, -0.185518,
		36.665497, 33.703220, 30.521196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419636, 33.432892, 30.719641>,  <36.825439, 33.034225, 30.651060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419636, 33.432892, 30.719641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107498, 33.674896, 30.782921>,  <36.920216, 33.820099, 30.820889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.107498, 33.674896, 30.782921>,  <37.419636, 33.432892, 30.719641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107498, 33.674896, 30.782921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399327, 0.287404, 0.870596,
		0.481255, 0.742535, -0.465871,
		-0.780341, 0.605013, 0.158199,
		36.873394, 33.856400, 30.830381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923126, 33.948750, 30.935183>,  <37.419636, 33.432892, 30.719641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923126, 33.948750, 30.935183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201874, 33.798553, 31.179604>,  <38.369122, 33.708435, 31.326256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201874, 33.798553, 31.179604>,  <37.923126, 33.948750, 30.935183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201874, 33.798553, 31.179604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011905, -0.857936, -0.513619,
		0.717103, 0.350649, -0.602336,
		0.696865, -0.375489, 0.611054,
		38.410934, 33.685905, 31.362919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531452, 33.978550, 30.597862>,  <37.923126, 33.948750, 30.935183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531452, 33.978550, 30.597862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501945, 33.680031, 30.862469>,  <38.484241, 33.500919, 31.021233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501945, 33.680031, 30.862469>,  <38.531452, 33.978550, 30.597862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501945, 33.680031, 30.862469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046504, -0.665176, -0.745236,
		0.996190, -0.024211, 0.083775,
		-0.073768, -0.746293, 0.661517,
		38.479816, 33.456142, 31.060925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098991, 33.463116, 30.369083>,  <38.531452, 33.978550, 30.597862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098991, 33.463116, 30.369083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861324, 33.257774, 30.616770>,  <38.718723, 33.134571, 30.765381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.861324, 33.257774, 30.616770>,  <39.098991, 33.463116, 30.369083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861324, 33.257774, 30.616770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095667, -0.809485, -0.579294,
		0.798628, -0.284962, 0.530084,
		-0.594172, -0.513352, 0.619216,
		38.683071, 33.103767, 30.802534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467224, 32.823124, 30.501760>,  <39.098991, 33.463116, 30.369083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467224, 32.823124, 30.501760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.079533, 32.758766, 30.576290>,  <38.846920, 32.720150, 30.621008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.079533, 32.758766, 30.576290>,  <39.467224, 32.823124, 30.501760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079533, 32.758766, 30.576290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044651, -0.859205, -0.509679,
		0.242095, -0.485674, 0.839947,
		-0.969225, -0.160895, 0.186323,
		38.788765, 32.710499, 30.632187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397533, 32.126316, 30.430092>,  <39.467224, 32.823124, 30.501760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397533, 32.126316, 30.430092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009399, 32.222488, 30.440279>,  <38.776520, 32.280190, 30.446392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009399, 32.222488, 30.440279>,  <39.397533, 32.126316, 30.430092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009399, 32.222488, 30.440279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225867, -0.863884, -0.450210,
		-0.086240, -0.442606, 0.892560,
		-0.970333, 0.240426, 0.025469,
		38.718300, 32.294617, 30.447920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039913, 31.545990, 30.642399>,  <39.397533, 32.126316, 30.430092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039913, 31.545990, 30.642399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773373, 31.774153, 30.450308>,  <38.613449, 31.911051, 30.335054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773373, 31.774153, 30.450308>,  <39.039913, 31.545990, 30.642399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773373, 31.774153, 30.450308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323526, -0.801437, -0.503021,
		-0.671796, -0.179822, 0.718578,
		-0.666349, 0.570406, -0.480225,
		38.573467, 31.945274, 30.306240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542969, 31.032547, 30.536139>,  <39.039913, 31.545990, 30.642399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542969, 31.032547, 30.536139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497154, 31.348005, 30.294504>,  <38.469666, 31.537281, 30.149523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.497154, 31.348005, 30.294504>,  <38.542969, 31.032547, 30.536139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497154, 31.348005, 30.294504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321694, -0.604766, -0.728540,
		-0.939891, 0.110889, 0.322968,
		-0.114533, 0.788645, -0.604087,
		38.462795, 31.584599, 30.113277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070469, 30.779955, 30.145161>,  <38.542969, 31.032547, 30.536139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070469, 30.779955, 30.145161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187069, 31.084517, 29.913544>,  <38.257030, 31.267254, 29.774574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187069, 31.084517, 29.913544>,  <38.070469, 30.779955, 30.145161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187069, 31.084517, 29.913544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166502, -0.555704, -0.814537,
		-0.941969, 0.333848, -0.035212,
		0.291499, 0.761405, -0.579043,
		38.274517, 31.312939, 29.739830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555424, 30.775963, 29.553480>,  <38.070469, 30.779955, 30.145161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555424, 30.775963, 29.553480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858768, 31.006983, 29.432600>,  <38.040775, 31.145596, 29.360073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858768, 31.006983, 29.432600>,  <37.555424, 30.775963, 29.553480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858768, 31.006983, 29.432600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057445, -0.402592, -0.913575,
		-0.649298, 0.710180, -0.272133,
		0.758361, 0.577550, -0.302199,
		38.086277, 31.180248, 29.341940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308117, 31.080519, 28.869028>,  <37.555424, 30.775963, 29.553480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308117, 31.080519, 28.869028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706020, 31.059956, 28.904396>,  <37.944763, 31.047619, 28.925617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.706020, 31.059956, 28.904396>,  <37.308117, 31.080519, 28.869028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706020, 31.059956, 28.904396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067517, -0.319300, -0.945246,
		0.076824, 0.946259, -0.314154,
		0.994756, -0.051406, 0.088418,
		38.004448, 31.044533, 28.930922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503544, 31.346828, 28.271076>,  <37.308117, 31.080519, 28.869028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503544, 31.346828, 28.271076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827724, 31.152668, 28.402258>,  <38.022232, 31.036173, 28.480967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.827724, 31.152668, 28.402258>,  <37.503544, 31.346828, 28.271076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827724, 31.152668, 28.402258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159421, -0.355950, -0.920807,
		0.563694, 0.798553, -0.211098,
		0.810453, -0.485399, 0.327952,
		38.070862, 31.007048, 28.500643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976810, 31.444891, 27.841185>,  <37.503544, 31.346828, 28.271076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976810, 31.444891, 27.841185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154564, 31.133705, 28.018856>,  <38.261215, 30.946995, 28.125460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154564, 31.133705, 28.018856>,  <37.976810, 31.444891, 27.841185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154564, 31.133705, 28.018856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331488, -0.317832, -0.888312,
		0.832249, 0.541993, 0.116646,
		0.444385, -0.777963, 0.444179,
		38.287880, 30.900316, 28.152109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697670, 31.564535, 27.683430>,  <37.976810, 31.444891, 27.841185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697670, 31.564535, 27.683430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601768, 31.183729, 27.759520>,  <38.544228, 30.955246, 27.805174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.601768, 31.183729, 27.759520>,  <38.697670, 31.564535, 27.683430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601768, 31.183729, 27.759520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444161, -0.281793, -0.850478,
		0.863273, -0.119414, 0.490409,
		-0.239753, -0.952015, 0.190225,
		38.529842, 30.898125, 27.816587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280708, 31.180588, 27.406752>,  <38.697670, 31.564535, 27.683430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280708, 31.180588, 27.406752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984016, 30.914915, 27.444048>,  <38.806000, 30.755510, 27.466427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.984016, 30.914915, 27.444048>,  <39.280708, 31.180588, 27.406752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984016, 30.914915, 27.444048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284485, -0.437457, -0.853053,
		0.607374, -0.606210, 0.513426,
		-0.741731, -0.664184, 0.093243,
		38.761497, 30.715660, 27.472021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594860, 30.508932, 27.267756>,  <39.280708, 31.180588, 27.406752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594860, 30.508932, 27.267756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199612, 30.467266, 27.222569>,  <38.962463, 30.442266, 27.195456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.199612, 30.467266, 27.222569>,  <39.594860, 30.508932, 27.267756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199612, 30.467266, 27.222569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150878, -0.518320, -0.841772,
		0.029131, -0.848819, 0.527881,
		-0.988123, -0.104167, -0.112969,
		38.903175, 30.436016, 27.188677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597076, 29.885698, 27.020735>,  <39.594860, 30.508932, 27.267756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597076, 29.885698, 27.020735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.239731, 30.023567, 26.905422>,  <39.025326, 30.106289, 26.836235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.239731, 30.023567, 26.905422>,  <39.597076, 29.885698, 27.020735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239731, 30.023567, 26.905422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138176, -0.399752, -0.906149,
		-0.427574, -0.849349, 0.309495,
		-0.893358, 0.344681, -0.288283,
		38.971722, 30.126970, 26.818937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192493, 29.260832, 26.780130>,  <39.597076, 29.885698, 27.020735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192493, 29.260832, 26.780130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.038212, 29.582460, 26.599155>,  <38.945644, 29.775438, 26.490570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.038212, 29.582460, 26.599155>,  <39.192493, 29.260832, 26.780130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038212, 29.582460, 26.599155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048493, -0.472036, -0.880244,
		-0.921347, -0.361454, 0.143075,
		-0.385704, 0.804072, -0.452437,
		38.922501, 29.823683, 26.463425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602478, 29.011494, 26.359425>,  <39.192493, 29.260832, 26.780130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602478, 29.011494, 26.359425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712685, 29.367735, 26.214695>,  <38.778809, 29.581480, 26.127857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.712685, 29.367735, 26.214695>,  <38.602478, 29.011494, 26.359425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712685, 29.367735, 26.214695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159432, -0.328843, -0.930830,
		-0.947983, 0.314146, 0.051389,
		0.275518, 0.890604, -0.361823,
		38.795341, 29.634916, 26.106148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.951107, 29.254530, 26.001514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254646, 29.462915, 25.845181>,  <38.436768, 29.587946, 25.751381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254646, 29.462915, 25.845181>,  <37.951107, 29.254530, 26.001514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254646, 29.462915, 25.845181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367173, -0.153426, -0.917412,
		-0.537901, 0.839678, 0.074857,
		0.758846, 0.520962, -0.390835,
		38.482300, 29.619204, 25.727930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609055, 29.545454, 25.437414>,  <37.951107, 29.254530, 26.001514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609055, 29.545454, 25.437414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001556, 29.582708, 25.369925>,  <38.237057, 29.605061, 25.329432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001556, 29.582708, 25.369925>,  <37.609055, 29.545454, 25.437414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001556, 29.582708, 25.369925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144768, -0.221685, -0.964312,
		-0.127214, 0.970660, -0.204046,
		0.981254, 0.093135, -0.168722,
		38.295933, 29.610649, 25.319307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743389, 30.043110, 24.886862>,  <37.609055, 29.545454, 25.437414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743389, 30.043110, 24.886862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079235, 29.825869, 24.883224>,  <38.280743, 29.695524, 24.881042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079235, 29.825869, 24.883224>,  <37.743389, 30.043110, 24.886862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079235, 29.825869, 24.883224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024926, -0.021800, -0.999452,
		0.542606, 0.839384, -0.031841,
		0.839617, -0.543102, -0.009094,
		38.331120, 29.662937, 24.880497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100830, 30.168978, 24.252321>,  <37.743389, 30.043110, 24.886862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100830, 30.168978, 24.252321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299477, 29.840998, 24.366203>,  <38.418663, 29.644209, 24.434532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.299477, 29.840998, 24.366203>,  <38.100830, 30.168978, 24.252321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299477, 29.840998, 24.366203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042171, -0.304832, -0.951472,
		0.866946, 0.484521, -0.116805,
		0.496614, -0.819949, 0.284706,
		38.448460, 29.595013, 24.451614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902508, 30.153767, 23.875391>,  <38.100830, 30.168978, 24.252321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902508, 30.153767, 23.875391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794327, 29.780085, 23.968445>,  <38.729420, 29.555876, 24.024277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794327, 29.780085, 23.968445>,  <38.902508, 30.153767, 23.875391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794327, 29.780085, 23.968445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299451, -0.311284, -0.901904,
		0.914978, -0.174258, 0.363936,
		-0.270452, -0.934203, 0.232636,
		38.713192, 29.499825, 24.038237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159584, 29.770823, 23.391981>,  <38.902508, 30.153767, 23.875391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159584, 29.770823, 23.391981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972301, 29.471148, 23.579386>,  <38.859932, 29.291342, 23.691828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972301, 29.471148, 23.579386>,  <39.159584, 29.770823, 23.391981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972301, 29.471148, 23.579386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208676, -0.608968, -0.765253,
		0.858628, -0.260526, 0.441458,
		-0.468202, -0.749189, 0.468512,
		38.831841, 29.246391, 23.719938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578773, 29.109552, 23.435669>,  <39.159584, 29.770823, 23.391981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578773, 29.109552, 23.435669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.186749, 29.030369, 23.428867>,  <38.951534, 28.982859, 23.424786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.186749, 29.030369, 23.428867>,  <39.578773, 29.109552, 23.435669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186749, 29.030369, 23.428867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133535, -0.592884, -0.794139,
		0.147125, -0.780577, 0.607498,
		-0.980063, -0.197960, -0.017006,
		38.892731, 28.970982, 23.423765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521812, 28.447882, 23.371664>,  <39.578773, 29.109552, 23.435669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521812, 28.447882, 23.371664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185253, 28.601391, 23.219471>,  <38.983318, 28.693497, 23.128155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.185253, 28.601391, 23.219471>,  <39.521812, 28.447882, 23.371664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185253, 28.601391, 23.219471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165733, -0.486886, -0.857598,
		-0.514384, -0.784636, 0.346057,
		-0.841393, 0.383782, -0.380487,
		38.932835, 28.716524, 23.105326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290554, 27.842607, 23.017149>,  <39.521812, 28.447882, 23.371664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290554, 27.842607, 23.017149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084446, 28.143869, 22.853561>,  <38.960781, 28.324627, 22.755409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084446, 28.143869, 22.853561>,  <39.290554, 27.842607, 23.017149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084446, 28.143869, 22.853561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087919, -0.428225, -0.899385,
		-0.852509, -0.499379, 0.154433,
		-0.515266, 0.753156, -0.408971,
		38.929867, 28.369816, 22.730869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640648, 27.624540, 22.716337>,  <39.290554, 27.842607, 23.017149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640648, 27.624540, 22.716337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.771004, 27.960442, 22.542622>,  <38.849216, 28.161983, 22.438393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.771004, 27.960442, 22.542622>,  <38.640648, 27.624540, 22.716337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771004, 27.960442, 22.542622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157553, -0.501184, -0.850877,
		-0.932186, 0.208871, -0.295638,
		0.325893, 0.839754, -0.434289,
		38.868771, 28.212368, 22.412334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247765, 27.605534, 22.047010>,  <38.640648, 27.624540, 22.716337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247765, 27.605534, 22.047010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.544037, 27.869986, 21.999178>,  <38.721802, 28.028656, 21.970478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.544037, 27.869986, 21.999178>,  <38.247765, 27.605534, 22.047010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544037, 27.869986, 21.999178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130835, -0.316512, -0.939522,
		-0.658994, 0.680241, -0.320934,
		0.740681, 0.661129, -0.119580,
		38.766243, 28.068325, 21.963305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172112, 27.985832, 21.439789>,  <38.247765, 27.605534, 22.047010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172112, 27.985832, 21.439789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.555901, 28.073668, 21.510429>,  <38.786175, 28.126369, 21.552814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.555901, 28.073668, 21.510429>,  <38.172112, 27.985832, 21.439789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555901, 28.073668, 21.510429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234876, -0.276922, -0.931744,
		-0.155696, 0.935465, -0.317276,
		0.959475, 0.219589, 0.176603,
		38.843742, 28.139544, 21.563410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386791, 28.414558, 20.857124>,  <38.172112, 27.985832, 21.439789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386791, 28.414558, 20.857124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.691883, 28.217554, 21.024776>,  <38.874939, 28.099352, 21.125368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.691883, 28.217554, 21.024776>,  <38.386791, 28.414558, 20.857124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691883, 28.217554, 21.024776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353136, -0.225763, -0.907924,
		0.541788, 0.840513, 0.001727,
		0.762732, -0.492512, 0.419131,
		38.920704, 28.069799, 21.150517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971149, 28.521990, 20.443012>,  <38.386791, 28.414558, 20.857124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971149, 28.521990, 20.443012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.104683, 28.200621, 20.640219>,  <39.184803, 28.007799, 20.758543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.104683, 28.200621, 20.640219>,  <38.971149, 28.521990, 20.443012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104683, 28.200621, 20.640219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516137, -0.281855, -0.808802,
		0.788769, 0.524471, 0.320582,
		0.333835, -0.803422, 0.493018,
		39.204834, 27.959595, 20.788124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702183, 28.445768, 20.225336>,  <38.971149, 28.521990, 20.443012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702183, 28.445768, 20.225336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595211, 28.083559, 20.357100>,  <39.531029, 27.866234, 20.436157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595211, 28.083559, 20.357100>,  <39.702183, 28.445768, 20.225336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595211, 28.083559, 20.357100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493332, -0.422326, -0.760437,
		0.827711, -0.040854, 0.559665,
		-0.267428, -0.905523, 0.329410,
		39.514984, 27.811903, 20.455923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195824, 27.955473, 20.006334>,  <39.702183, 28.445768, 20.225336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195824, 27.955473, 20.006334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921925, 27.688454, 20.123291>,  <39.757584, 27.528242, 20.193466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921925, 27.688454, 20.123291>,  <40.195824, 27.955473, 20.006334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921925, 27.688454, 20.123291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339596, -0.647262, -0.682441,
		0.644819, -0.368006, 0.669910,
		-0.684750, -0.667550, 0.292394,
		39.716499, 27.488188, 20.211010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585518, 27.332891, 20.060566>,  <40.195824, 27.955473, 20.006334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585518, 27.332891, 20.060566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.202534, 27.221573, 20.030067>,  <39.972744, 27.154781, 20.011768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.202534, 27.221573, 20.030067>,  <40.585518, 27.332891, 20.060566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202534, 27.221573, 20.030067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216388, -0.517693, -0.827750,
		0.190890, -0.809039, 0.555893,
		-0.957464, -0.278298, -0.076244,
		39.915295, 27.138084, 20.007195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553997, 26.671434, 19.997438>,  <40.585518, 27.332891, 20.060566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553997, 26.671434, 19.997438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.208599, 26.794374, 19.837479>,  <40.001362, 26.868137, 19.741503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.208599, 26.794374, 19.837479>,  <40.553997, 26.671434, 19.997438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208599, 26.794374, 19.837479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220083, -0.483801, -0.847054,
		-0.453806, -0.819437, 0.350119,
		-0.863495, 0.307343, -0.399895,
		39.949551, 26.886580, 19.717510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279701, 26.100513, 19.664392>,  <40.553997, 26.671434, 19.997438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279701, 26.100513, 19.664392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.097813, 26.410139, 19.488186>,  <39.988678, 26.595915, 19.382462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.097813, 26.410139, 19.488186>,  <40.279701, 26.100513, 19.664392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097813, 26.410139, 19.488186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082479, -0.455884, -0.886209,
		-0.886807, -0.439311, 0.143455,
		-0.454720, 0.774065, -0.440515,
		39.961395, 26.642359, 19.356031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795094, 25.763603, 19.326105>,  <40.279701, 26.100513, 19.664392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795094, 25.763603, 19.326105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.821743, 26.111710, 19.130880>,  <39.837730, 26.320574, 19.013746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.821743, 26.111710, 19.130880>,  <39.795094, 25.763603, 19.326105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821743, 26.111710, 19.130880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103532, -0.492535, -0.864112,
		-0.992392, 0.007038, -0.122913,
		0.066621, 0.870264, -0.488060,
		39.841728, 26.372789, 18.984463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202995, 25.826988, 18.883751>,  <39.795094, 25.763603, 19.326105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202995, 25.826988, 18.883751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.478489, 26.086002, 18.753307>,  <39.643784, 26.241411, 18.675041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.478489, 26.086002, 18.753307>,  <39.202995, 25.826988, 18.883751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478489, 26.086002, 18.753307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043015, -0.412506, -0.909939,
		-0.723741, 0.640730, -0.256251,
		0.688730, 0.647537, -0.326108,
		39.685108, 26.280264, 18.655476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938938, 26.027584, 18.301603>,  <39.202995, 25.826988, 18.883751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938938, 26.027584, 18.301603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.314167, 26.155310, 18.247856>,  <39.539307, 26.231945, 18.215609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.314167, 26.155310, 18.247856>,  <38.938938, 26.027584, 18.301603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314167, 26.155310, 18.247856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038523, -0.289308, -0.956461,
		-0.344285, 0.902408, -0.259092,
		0.938075, 0.319314, -0.134368,
		39.595589, 26.251104, 18.207546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969368, 26.539274, 17.776194>,  <38.938938, 26.027584, 18.301603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969368, 26.539274, 17.776194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.297413, 26.311029, 17.793221>,  <39.494240, 26.174082, 17.803436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.297413, 26.311029, 17.793221>,  <38.969368, 26.539274, 17.776194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297413, 26.311029, 17.793221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004309, -0.080546, -0.996742,
		0.572183, 0.817259, -0.068516,
		0.820115, -0.570613, 0.042565,
		39.543446, 26.139845, 17.805990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806271, 27.249340, 17.426620>,  <38.969368, 26.539274, 17.776194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806271, 27.249340, 17.426620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923153, 27.321976, 17.802204>,  <38.993282, 27.365557, 18.027554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.923153, 27.321976, 17.802204>,  <38.806271, 27.249340, 17.426620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923153, 27.321976, 17.802204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355645, -0.932028, 0.069569,
		0.887768, 0.313607, -0.336924,
		0.292205, 0.181587, 0.938958,
		39.010815, 27.376451, 18.083891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891621, 27.482422, 16.654631>,  <38.806271, 27.249340, 17.426620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891621, 27.482422, 16.654631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.552925, 27.582153, 16.466646>,  <38.349709, 27.641993, 16.353855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.552925, 27.582153, 16.466646>,  <38.891621, 27.482422, 16.654631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552925, 27.582153, 16.466646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010152, 0.875645, 0.482848,
		0.531909, 0.413619, -0.738913,
		-0.846740, 0.249330, -0.469963,
		38.298904, 27.656952, 16.325657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998066, 28.207518, 16.514568>,  <38.891621, 27.482422, 16.654631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998066, 28.207518, 16.514568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600960, 28.168266, 16.486904>,  <38.362694, 28.144716, 16.470306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600960, 28.168266, 16.486904>,  <38.998066, 28.207518, 16.514568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600960, 28.168266, 16.486904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119589, 0.858833, 0.498101,
		0.010520, 0.502770, -0.864356,
		-0.992768, -0.098127, -0.069160,
		38.303131, 28.138828, 16.466156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765762, 28.844526, 16.288427>,  <38.998066, 28.207518, 16.514568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765762, 28.844526, 16.288427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454060, 28.670517, 16.468880>,  <38.267040, 28.566111, 16.577150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454060, 28.670517, 16.468880>,  <38.765762, 28.844526, 16.288427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454060, 28.670517, 16.468880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094063, 0.792871, 0.602086,
		-0.619611, 0.426743, -0.658766,
		-0.779252, -0.435024, 0.451131,
		38.220284, 28.540010, 16.604219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277115, 29.357578, 16.463661>,  <38.765762, 28.844526, 16.288427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277115, 29.357578, 16.463661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161156, 29.067360, 16.713314>,  <38.091579, 28.893229, 16.863106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.161156, 29.067360, 16.713314>,  <38.277115, 29.357578, 16.463661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161156, 29.067360, 16.713314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194208, 0.683165, 0.703967,
		-0.937145, 0.082869, -0.338957,
		-0.289900, -0.725547, 0.624130,
		38.074184, 28.849695, 16.900553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640877, 29.641016, 16.767954>,  <38.277115, 29.357578, 16.463661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640877, 29.641016, 16.767954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747566, 29.350908, 17.021833>,  <37.811581, 29.176844, 17.174162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747566, 29.350908, 17.021833>,  <37.640877, 29.641016, 16.767954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747566, 29.350908, 17.021833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191459, 0.605558, 0.772427,
		-0.944565, -0.327543, 0.022656,
		0.266723, -0.725269, 0.634699,
		37.827583, 29.133327, 17.212244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048992, 29.684439, 17.359463>,  <37.640877, 29.641016, 16.767954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048992, 29.684439, 17.359463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355759, 29.458311, 17.480957>,  <37.539818, 29.322634, 17.553854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.355759, 29.458311, 17.480957>,  <37.048992, 29.684439, 17.359463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355759, 29.458311, 17.480957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135259, 0.320275, 0.937619,
		-0.627335, -0.760155, 0.169158,
		0.766913, -0.565321, 0.303738,
		37.585835, 29.288715, 17.572079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779148, 29.115089, 17.705011>,  <37.048992, 29.684439, 17.359463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779148, 29.115089, 17.705011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144970, 29.202955, 17.840860>,  <37.364464, 29.255674, 17.922369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.144970, 29.202955, 17.840860>,  <36.779148, 29.115089, 17.705011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144970, 29.202955, 17.840860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394108, 0.295126, 0.870391,
		0.090962, -0.929865, 0.356479,
		0.914552, 0.219664, 0.339622,
		37.419334, 29.268854, 17.942747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659328, 28.808216, 18.360451>,  <36.779148, 29.115089, 17.705011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659328, 28.808216, 18.360451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009094, 28.998907, 18.396519>,  <37.218952, 29.113321, 18.418159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.009094, 28.998907, 18.396519>,  <36.659328, 28.808216, 18.360451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009094, 28.998907, 18.396519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140571, 0.071051, 0.987518,
		0.464369, -0.876176, 0.129142,
		0.874415, 0.476726, 0.090171,
		37.271420, 29.141924, 18.423571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895416, 28.600096, 19.077412>,  <36.659328, 28.808216, 18.360451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895416, 28.600096, 19.077412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110188, 28.922388, 18.977407>,  <37.239052, 29.115763, 18.917404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110188, 28.922388, 18.977407>,  <36.895416, 28.600096, 19.077412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110188, 28.922388, 18.977407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196391, 0.168832, 0.965881,
		0.820450, -0.567709, -0.067588,
		0.536928, 0.805731, -0.250012,
		37.271267, 29.164106, 18.902405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433811, 28.572660, 19.544113>,  <36.895416, 28.600096, 19.077412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433811, 28.572660, 19.544113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416767, 28.953339, 19.422483>,  <37.406540, 29.181746, 19.349504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416767, 28.953339, 19.422483>,  <37.433811, 28.572660, 19.544113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416767, 28.953339, 19.422483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243464, 0.305067, 0.920684,
		0.968973, -0.034803, -0.244702,
		-0.042608, 0.951695, -0.304075,
		37.403984, 29.238848, 19.331261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089046, 28.863089, 19.818756>,  <37.433811, 28.572660, 19.544113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089046, 28.863089, 19.818756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819614, 29.150747, 19.750505>,  <37.657955, 29.323341, 19.709555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.819614, 29.150747, 19.750505>,  <38.089046, 28.863089, 19.818756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819614, 29.150747, 19.750505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124109, 0.337629, 0.933061,
		0.728615, 0.607319, -0.316675,
		-0.673585, 0.719145, -0.170628,
		37.617538, 29.366491, 19.699318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317444, 29.495165, 20.174353>,  <38.089046, 28.863089, 19.818756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317444, 29.495165, 20.174353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.935242, 29.588062, 20.101606>,  <37.705921, 29.643801, 20.057959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.935242, 29.588062, 20.101606>,  <38.317444, 29.495165, 20.174353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935242, 29.588062, 20.101606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060837, 0.448140, 0.891891,
		0.288636, 0.863270, -0.414070,
		-0.955504, 0.232241, -0.181868,
		37.648590, 29.657734, 20.047047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167660, 30.215647, 20.345678>,  <38.317444, 29.495165, 20.174353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167660, 30.215647, 20.345678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.835255, 29.996233, 20.382620>,  <37.635811, 29.864584, 20.404785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.835255, 29.996233, 20.382620>,  <38.167660, 30.215647, 20.345678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835255, 29.996233, 20.382620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164629, 0.401119, 0.901111,
		-0.531336, 0.733629, -0.423639,
		-0.831011, -0.548536, 0.092352,
		37.585953, 29.831673, 20.410326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783287, 30.701624, 20.689249>,  <38.167660, 30.215647, 20.345678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783287, 30.701624, 20.689249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626835, 30.335367, 20.726383>,  <37.532963, 30.115614, 20.748665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626835, 30.335367, 20.726383>,  <37.783287, 30.701624, 20.689249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626835, 30.335367, 20.726383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274810, 0.212466, 0.937730,
		-0.878349, 0.341262, -0.334729,
		-0.391130, -0.915641, 0.092837,
		37.509495, 30.060675, 20.754234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099232, 30.797846, 20.930292>,  <37.783287, 30.701624, 20.689249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099232, 30.797846, 20.930292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170666, 30.409740, 20.995651>,  <37.213528, 30.176878, 21.034866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.170666, 30.409740, 20.995651>,  <37.099232, 30.797846, 20.930292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170666, 30.409740, 20.995651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414209, 0.076499, 0.906961,
		-0.892490, -0.229649, -0.388230,
		0.178583, -0.970262, 0.163398,
		37.224239, 30.118662, 21.044670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439926, 30.540663, 21.116610>,  <37.099232, 30.797846, 20.930292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439926, 30.540663, 21.116610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692768, 30.262745, 21.253839>,  <36.844475, 30.095993, 21.336178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692768, 30.262745, 21.253839>,  <36.439926, 30.540663, 21.116610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692768, 30.262745, 21.253839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476790, 0.000270, 0.879017,
		-0.610831, -0.719206, -0.331102,
		0.632105, -0.694797, 0.343075,
		36.882401, 30.054306, 21.356762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053387, 29.920713, 21.366003>,  <36.439926, 30.540663, 21.116610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053387, 29.920713, 21.366003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404396, 29.904888, 21.557163>,  <36.615002, 29.895393, 21.671860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404396, 29.904888, 21.557163>,  <36.053387, 29.920713, 21.366003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404396, 29.904888, 21.557163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478959, -0.023491, 0.877523,
		-0.023491, -0.998941, -0.039563,
		-0.877523, 0.039563, -0.477900,
		36.667652, 29.893019, 21.700533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848995, 29.610779, 21.929813>,  <36.053387, 29.920713, 21.366003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848995, 29.610779, 21.929813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214813, 29.750521, 22.011354>,  <36.434303, 29.834366, 22.060280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214813, 29.750521, 22.011354>,  <35.848995, 29.610779, 21.929813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214813, 29.750521, 22.011354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280780, 0.185562, 0.941663,
		0.291145, -0.918433, 0.267796,
		0.914547, 0.349352, 0.203852,
		36.489178, 29.855326, 22.072510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061153, 29.275919, 22.689260>,  <35.848995, 29.610779, 21.929813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061153, 29.275919, 22.689260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310013, 29.575607, 22.598404>,  <36.459328, 29.755421, 22.543890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.310013, 29.575607, 22.598404>,  <36.061153, 29.275919, 22.689260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310013, 29.575607, 22.598404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065310, 0.338787, 0.938594,
		0.780168, -0.569113, 0.259708,
		0.622151, 0.749223, -0.227142,
		36.496658, 29.800373, 22.530262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633198, 29.281610, 23.100605>,  <36.061153, 29.275919, 22.689260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633198, 29.281610, 23.100605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568459, 29.661573, 22.993662>,  <36.529613, 29.889551, 22.929495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568459, 29.661573, 22.993662>,  <36.633198, 29.281610, 23.100605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568459, 29.661573, 22.993662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030512, 0.275620, 0.960782,
		0.986344, 0.147344, -0.073592,
		-0.161849, 0.949907, -0.267360,
		36.519905, 29.946545, 22.913454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.702965, 29.795403, 28.685219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569946, 30.132584, 28.516060>,  <38.490135, 30.334892, 28.414564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569946, 30.132584, 28.516060>,  <38.702965, 29.795403, 28.685219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569946, 30.132584, 28.516060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119274, 0.407226, 0.905506,
		0.935515, 0.351560, -0.034878,
		-0.332543, 0.842954, -0.422898,
		38.470184, 30.385469, 28.389191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081665, 30.352949, 28.978930>,  <38.702965, 29.795403, 28.685219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081665, 30.352949, 28.978930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756058, 30.542158, 28.844097>,  <38.560692, 30.655684, 28.763197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.756058, 30.542158, 28.844097>,  <39.081665, 30.352949, 28.978930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756058, 30.542158, 28.844097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036231, 0.620556, 0.783325,
		0.579707, 0.625428, -0.522282,
		-0.814019, 0.473022, -0.337081,
		38.511852, 30.684065, 28.742973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295048, 31.022408, 28.868402>,  <39.081665, 30.352949, 28.978930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295048, 31.022408, 28.868402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.897232, 31.046354, 28.902607>,  <38.658543, 31.060722, 28.923130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.897232, 31.046354, 28.902607>,  <39.295048, 31.022408, 28.868402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897232, 31.046354, 28.902607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101266, 0.752120, 0.651199,
		-0.025330, 0.656301, -0.754074,
		-0.994537, 0.059867, 0.085512,
		38.598869, 31.064314, 28.928261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182796, 31.747004, 28.915964>,  <39.295048, 31.022408, 28.868402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182796, 31.747004, 28.915964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824913, 31.613026, 29.034157>,  <38.610184, 31.532639, 29.105072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824913, 31.613026, 29.034157>,  <39.182796, 31.747004, 28.915964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824913, 31.613026, 29.034157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047811, 0.729570, 0.682233,
		-0.444086, 0.596272, -0.668766,
		-0.894708, -0.334945, 0.295483,
		38.556499, 31.512543, 29.122801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630852, 32.302330, 28.961784>,  <39.182796, 31.747004, 28.915964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630852, 32.302330, 28.961784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.543144, 32.008442, 29.218567>,  <38.490520, 31.832109, 29.372637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.543144, 32.008442, 29.218567>,  <38.630852, 32.302330, 28.961784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543144, 32.008442, 29.218567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154122, 0.675791, 0.720800,
		-0.963414, 0.059109, -0.261417,
		-0.219269, -0.734719, 0.641957,
		38.477364, 31.788027, 29.411154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070133, 32.518188, 29.315083>,  <38.630852, 32.302330, 28.961784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070133, 32.518188, 29.315083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182178, 32.221027, 29.558270>,  <38.249405, 32.042728, 29.704182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.182178, 32.221027, 29.558270>,  <38.070133, 32.518188, 29.315083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182178, 32.221027, 29.558270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167606, 0.585748, 0.792974,
		-0.945223, -0.324020, 0.039559,
		0.280111, -0.742907, 0.607970,
		38.266212, 31.998156, 29.740660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596172, 32.663662, 29.791885>,  <38.070133, 32.518188, 29.315083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596172, 32.663662, 29.791885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.890503, 32.443386, 29.949514>,  <38.067101, 32.311218, 30.044092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.890503, 32.443386, 29.949514>,  <37.596172, 32.663662, 29.791885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890503, 32.443386, 29.949514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006932, 0.575787, 0.817570,
		-0.677131, -0.604324, 0.419864,
		0.735829, -0.550692, 0.394073,
		38.111252, 32.278179, 30.067736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470833, 32.653084, 30.405445>,  <37.596172, 32.663662, 29.791885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470833, 32.653084, 30.405445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846210, 32.517231, 30.430647>,  <38.071438, 32.435719, 30.445768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.846210, 32.517231, 30.430647>,  <37.470833, 32.653084, 30.405445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846210, 32.517231, 30.430647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157456, 0.582942, 0.797111,
		-0.307453, -0.738125, 0.600537,
		0.938446, -0.339632, 0.063005,
		38.127743, 32.415340, 30.449549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620987, 32.383156, 30.999676>,  <37.470833, 32.653084, 30.405445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620987, 32.383156, 30.999676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986126, 32.503128, 30.888865>,  <38.205212, 32.575111, 30.822378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.986126, 32.503128, 30.888865>,  <37.620987, 32.383156, 30.999676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986126, 32.503128, 30.888865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071826, 0.549957, 0.832099,
		0.401922, -0.779481, 0.480487,
		0.912852, 0.299928, -0.277026,
		38.259983, 32.593105, 30.805756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952442, 32.346615, 31.622549>,  <37.620987, 32.383156, 30.999676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952442, 32.346615, 31.622549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.162594, 32.584259, 31.378906>,  <38.288685, 32.726845, 31.232721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.162594, 32.584259, 31.378906>,  <37.952442, 32.346615, 31.622549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162594, 32.584259, 31.378906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051443, 0.692376, 0.719700,
		0.849313, -0.409448, 0.333195,
		0.525376, 0.594110, -0.609108,
		38.320206, 32.762493, 31.196175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529030, 32.537472, 32.029297>,  <37.952442, 32.346615, 31.622549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529030, 32.537472, 32.029297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504387, 32.810936, 31.738419>,  <38.489601, 32.975014, 31.563890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.504387, 32.810936, 31.738419>,  <38.529030, 32.537472, 32.029297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504387, 32.810936, 31.738419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195202, 0.722765, 0.662953,
		0.978826, -0.101107, -0.177980,
		-0.061609, 0.683658, -0.727197,
		38.485905, 33.016033, 31.520260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224640, 32.909985, 32.068752>,  <38.529030, 32.537472, 32.029297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224640, 32.909985, 32.068752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977608, 33.148163, 31.863218>,  <38.829388, 33.291069, 31.739897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977608, 33.148163, 31.863218>,  <39.224640, 32.909985, 32.068752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977608, 33.148163, 31.863218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300510, 0.782398, 0.545479,
		0.726831, 0.182465, -0.662135,
		-0.617584, 0.595450, -0.513838,
		38.792332, 33.326797, 31.709066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641342, 33.427738, 31.933292>,  <39.224640, 32.909985, 32.068752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641342, 33.427738, 31.933292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261066, 33.551624, 31.939877>,  <39.032902, 33.625957, 31.943827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261066, 33.551624, 31.939877>,  <39.641342, 33.427738, 31.933292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261066, 33.551624, 31.939877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288036, 0.861966, 0.417193,
		0.115025, 0.401360, -0.908669,
		-0.950686, 0.309717, 0.016458,
		38.975861, 33.644539, 31.944815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521111, 34.092598, 31.597500>,  <39.641342, 33.427738, 31.933292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521111, 34.092598, 31.597500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288574, 33.991142, 31.906748>,  <39.149052, 33.930271, 32.092297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.288574, 33.991142, 31.906748>,  <39.521111, 34.092598, 31.597500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288574, 33.991142, 31.906748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424119, 0.716424, 0.553949,
		-0.694382, 0.649927, -0.308914,
		-0.581340, -0.253636, 0.773119,
		39.114174, 33.915051, 32.138683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925549, 34.692112, 31.388723>,  <39.521111, 34.092598, 31.597500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925549, 34.692112, 31.388723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.227947, 34.953938, 31.389700>,  <40.409386, 35.111034, 31.390285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.227947, 34.953938, 31.389700>,  <39.925549, 34.692112, 31.388723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227947, 34.953938, 31.389700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326151, -0.373455, -0.868422,
		-0.567530, 0.657322, -0.495820,
		0.755999, 0.654568, 0.002439,
		40.454746, 35.150307, 31.390432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870594, 35.100960, 30.774475>,  <39.925549, 34.692112, 31.388723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870594, 35.100960, 30.774475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.249290, 35.159725, 30.889086>,  <40.476509, 35.194984, 30.957851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.249290, 35.159725, 30.889086>,  <39.870594, 35.100960, 30.774475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249290, 35.159725, 30.889086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318352, -0.293619, -0.901354,
		-0.048289, 0.944566, -0.324751,
		0.946742, 0.146910, 0.286526,
		40.533314, 35.203800, 30.975044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231617, 35.556545, 30.276205>,  <39.870594, 35.100960, 30.774475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231617, 35.556545, 30.276205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.514046, 35.334316, 30.451841>,  <40.683502, 35.200977, 30.557222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.514046, 35.334316, 30.451841>,  <40.231617, 35.556545, 30.276205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514046, 35.334316, 30.451841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250652, -0.383843, -0.888728,
		0.662297, 0.737564, -0.131765,
		0.706071, -0.555575, 0.439090,
		40.725868, 35.167645, 30.583569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606850, 35.275242, 29.616373>,  <40.231617, 35.556545, 30.276205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606850, 35.275242, 29.616373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.789371, 35.113255, 29.933304>,  <40.898884, 35.016060, 30.123463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.789371, 35.113255, 29.933304>,  <40.606850, 35.275242, 29.616373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789371, 35.113255, 29.933304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476471, -0.640818, -0.601936,
		0.751504, 0.652189, -0.099454,
		0.456308, -0.404971, 0.792327,
		40.926266, 34.991764, 30.171001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344967, 35.356445, 29.581768>,  <40.606850, 35.275242, 29.616373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344967, 35.356445, 29.581768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264179, 35.026806, 29.793455>,  <41.215706, 34.829021, 29.920467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264179, 35.026806, 29.793455>,  <41.344967, 35.356445, 29.581768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264179, 35.026806, 29.793455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368774, -0.564574, -0.738418,
		0.907311, 0.046021, 0.417934,
		-0.201972, -0.824098, 0.529216,
		41.203587, 34.779575, 29.952219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973530, 34.836971, 29.539331>,  <41.344967, 35.356445, 29.581768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973530, 34.836971, 29.539331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630074, 34.645313, 29.612177>,  <41.424000, 34.530319, 29.655884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630074, 34.645313, 29.612177>,  <41.973530, 34.836971, 29.539331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630074, 34.645313, 29.612177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262107, -0.715740, -0.647314,
		0.440503, -0.508074, 0.740147,
		-0.858637, -0.479142, 0.182116,
		41.372482, 34.501572, 29.666811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228001, 34.184795, 29.499071>,  <41.973530, 34.836971, 29.539331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228001, 34.184795, 29.499071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.829033, 34.156807, 29.492741>,  <41.589653, 34.140015, 29.488943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.829033, 34.156807, 29.492741>,  <42.228001, 34.184795, 29.499071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829033, 34.156807, 29.492741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059393, -0.681778, -0.729144,
		0.040227, -0.728205, 0.684178,
		-0.997424, -0.069967, -0.015825,
		41.529804, 34.135818, 29.487993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111012, 33.468975, 29.564816>,  <42.228001, 34.184795, 29.499071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111012, 33.468975, 29.564816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.787918, 33.636497, 29.398844>,  <41.594063, 33.737011, 29.299261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.787918, 33.636497, 29.398844>,  <42.111012, 33.468975, 29.564816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787918, 33.636497, 29.398844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054855, -0.647369, -0.760200,
		-0.586987, -0.636802, 0.499930,
		-0.807736, 0.418804, -0.414929,
		41.545597, 33.762138, 29.274364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753880, 32.914276, 29.283754>,  <42.111012, 33.468975, 29.564816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753880, 32.914276, 29.283754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.603546, 33.236897, 29.101229>,  <41.513348, 33.430470, 28.991713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.603546, 33.236897, 29.101229>,  <41.753880, 32.914276, 29.283754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603546, 33.236897, 29.101229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124010, -0.444213, -0.887297,
		-0.918352, -0.390063, 0.066930,
		-0.375833, 0.806551, -0.456315,
		41.490795, 33.478863, 28.964334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207130, 32.612442, 28.909138>,  <41.753880, 32.914276, 29.283754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207130, 32.612442, 28.909138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.288372, 32.964485, 28.737488>,  <41.337116, 33.175713, 28.634497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.288372, 32.964485, 28.737488>,  <41.207130, 32.612442, 28.909138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288372, 32.964485, 28.737488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111005, -0.456132, -0.882961,
		-0.972844, 0.131700, -0.190340,
		0.203106, 0.880112, -0.429126,
		41.349304, 33.228519, 28.608749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707001, 32.622799, 28.301556>,  <41.207130, 32.612442, 28.909138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707001, 32.622799, 28.301556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001308, 32.878761, 28.212862>,  <41.177891, 33.032341, 28.159647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001308, 32.878761, 28.212862>,  <40.707001, 32.622799, 28.301556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001308, 32.878761, 28.212862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073255, -0.400686, -0.913282,
		-0.673264, 0.655718, -0.341687,
		0.735765, 0.639910, -0.221732,
		41.222038, 33.070736, 28.146343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485909, 32.885757, 27.689594>,  <40.707001, 32.622799, 28.301556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485909, 32.885757, 27.689594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879009, 32.956463, 27.711325>,  <41.114868, 32.998886, 27.724363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.879009, 32.956463, 27.711325>,  <40.485909, 32.885757, 27.689594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879009, 32.956463, 27.711325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069393, -0.080195, -0.994361,
		-0.171414, 0.980980, -0.091078,
		0.982752, 0.176767, 0.054327,
		41.173836, 33.009495, 27.727623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589981, 33.331829, 27.226545>,  <40.485909, 32.885757, 27.689594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589981, 33.331829, 27.226545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951881, 33.163738, 27.254360>,  <41.169022, 33.062885, 27.271049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951881, 33.163738, 27.254360>,  <40.589981, 33.331829, 27.226545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951881, 33.163738, 27.254360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141690, 0.142969, -0.979532,
		0.401682, 0.896086, 0.188893,
		0.904752, -0.420225, 0.069539,
		41.223309, 33.037670, 27.275223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836910, 33.547863, 26.592060>,  <40.589981, 33.331829, 27.226545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836910, 33.547863, 26.592060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.095509, 33.267426, 26.712404>,  <41.250668, 33.099163, 26.784611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.095509, 33.267426, 26.712404>,  <40.836910, 33.547863, 26.592060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095509, 33.267426, 26.712404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029967, -0.370713, -0.928264,
		0.762332, 0.609131, -0.218653,
		0.646492, -0.701093, 0.300861,
		41.289455, 33.057098, 26.802662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126804, 34.249352, 26.521219>,  <40.836910, 33.547863, 26.592060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126804, 34.249352, 26.521219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137066, 34.563591, 26.273937>,  <41.143223, 34.752136, 26.125568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137066, 34.563591, 26.273937>,  <41.126804, 34.249352, 26.521219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137066, 34.563591, 26.273937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353413, 0.585600, 0.729501,
		0.935116, 0.199768, 0.292663,
		0.025652, 0.785599, -0.618204,
		41.144760, 34.799271, 26.088476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535259, 34.716774, 26.876528>,  <41.126804, 34.249352, 26.521219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535259, 34.716774, 26.876528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287678, 34.904564, 26.624659>,  <41.139130, 35.017239, 26.473537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.287678, 34.904564, 26.624659>,  <41.535259, 34.716774, 26.876528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287678, 34.904564, 26.624659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343038, 0.559605, 0.754432,
		0.706555, 0.682961, -0.185322,
		-0.618954, 0.469475, -0.629673,
		41.101990, 35.045406, 26.435757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581871, 35.379421, 27.170273>,  <41.535259, 34.716774, 26.876528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581871, 35.379421, 27.170273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254902, 35.380856, 26.939863>,  <41.058720, 35.381714, 26.801617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.254902, 35.380856, 26.939863>,  <41.581871, 35.379421, 27.170273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254902, 35.380856, 26.939863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477146, 0.556023, 0.680566,
		0.322721, 0.831159, -0.452798,
		-0.817424, 0.003582, -0.576025,
		41.009674, 35.381931, 26.767056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338051, 36.087521, 27.129354>,  <41.581871, 35.379421, 27.170273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338051, 36.087521, 27.129354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019394, 35.857609, 27.054535>,  <40.828197, 35.719662, 27.009644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.019394, 35.857609, 27.054535>,  <41.338051, 36.087521, 27.129354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019394, 35.857609, 27.054535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539493, 0.536583, 0.648866,
		-0.272585, 0.617828, -0.737554,
		-0.796646, -0.574776, -0.187049,
		40.780399, 35.685177, 26.998421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777855, 36.499134, 27.363836>,  <41.338051, 36.087521, 27.129354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777855, 36.499134, 27.363836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.571800, 36.157104, 27.340225>,  <40.448166, 35.951885, 27.326057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.571800, 36.157104, 27.340225>,  <40.777855, 36.499134, 27.363836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571800, 36.157104, 27.340225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613325, 0.319636, 0.722264,
		-0.598720, 0.408270, -0.689094,
		-0.515137, -0.855073, -0.059030,
		40.417259, 35.900581, 27.322515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008698, 36.651405, 27.256552>,  <40.777855, 36.499134, 27.363836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008698, 36.651405, 27.256552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021980, 36.284042, 27.414249>,  <40.029949, 36.063625, 27.508867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021980, 36.284042, 27.414249>,  <40.008698, 36.651405, 27.256552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021980, 36.284042, 27.414249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582280, 0.302825, 0.754485,
		-0.812310, -0.254611, -0.524715,
		0.033203, -0.918406, 0.394242,
		40.031940, 36.008522, 27.532522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330593, 36.552620, 27.488379>,  <40.008698, 36.651405, 27.256552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330593, 36.552620, 27.488379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.527843, 36.263264, 27.681681>,  <39.646194, 36.089649, 27.797663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.527843, 36.263264, 27.681681>,  <39.330593, 36.552620, 27.488379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527843, 36.263264, 27.681681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479798, 0.237225, 0.844700,
		-0.725689, -0.648405, -0.230101,
		0.493122, -0.723391, 0.483255,
		39.675781, 36.046246, 27.826656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793194, 36.076195, 27.779039>,  <39.330593, 36.552620, 27.488379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793194, 36.076195, 27.779039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140167, 36.052734, 27.976671>,  <39.348351, 36.038658, 28.095251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140167, 36.052734, 27.976671>,  <38.793194, 36.076195, 27.779039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140167, 36.052734, 27.976671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494632, 0.005715, 0.869083,
		-0.053800, -0.998262, -0.024055,
		0.867436, -0.058655, 0.494080,
		39.400398, 36.035137, 28.124895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675869, 35.699020, 28.412127>,  <38.793194, 36.076195, 27.779039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675869, 35.699020, 28.412127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036522, 35.821140, 28.534664>,  <39.252914, 35.894413, 28.608187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036522, 35.821140, 28.534664>,  <38.675869, 35.699020, 28.412127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036522, 35.821140, 28.534664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372290, 0.187347, 0.909011,
		0.220136, -0.933643, 0.282581,
		0.901632, 0.305308, 0.306344,
		39.307011, 35.912731, 28.626568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771603, 35.420296, 29.063051>,  <38.675869, 35.699020, 28.412127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771603, 35.420296, 29.063051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.014309, 35.737576, 29.042395>,  <39.159931, 35.927944, 29.030001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.014309, 35.737576, 29.042395>,  <38.771603, 35.420296, 29.063051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014309, 35.737576, 29.042395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268163, 0.265425, 0.926087,
		0.748280, -0.548070, 0.373758,
		0.606766, 0.793201, -0.051640,
		39.196339, 35.975536, 29.026903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258369, 35.389751, 29.686415>,  <38.771603, 35.420296, 29.063051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258369, 35.389751, 29.686415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202522, 35.760998, 29.548370>,  <39.169014, 35.983746, 29.465544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.202522, 35.760998, 29.548370>,  <39.258369, 35.389751, 29.686415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202522, 35.760998, 29.548370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455691, 0.249203, 0.854543,
		0.879120, 0.276574, 0.388142,
		-0.139618, 0.928119, -0.345112,
		39.160637, 36.039433, 29.444838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342346, 35.755608, 30.280825>,  <39.258369, 35.389751, 29.686415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342346, 35.755608, 30.280825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.132168, 36.009922, 30.054661>,  <39.006062, 36.162510, 29.918962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.132168, 36.009922, 30.054661>,  <39.342346, 35.755608, 30.280825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132168, 36.009922, 30.054661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342897, 0.449942, 0.824605,
		0.778670, 0.627164, -0.018413,
		-0.525447, 0.635782, -0.565409,
		38.974533, 36.200657, 29.885038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.442501, 32.892517, 23.879961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176659, 33.070072, 23.639540>,  <43.017155, 33.176605, 23.495287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176659, 33.070072, 23.639540>,  <43.442501, 32.892517, 23.879961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176659, 33.070072, 23.639540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184758, 0.681804, 0.707819,
		0.723992, 0.581469, -0.371119,
		-0.664605, 0.443888, -0.601052,
		42.977276, 33.203239, 23.459225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610477, 33.568687, 23.860497>,  <43.442501, 32.892517, 23.879961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610477, 33.568687, 23.860497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224003, 33.561916, 23.757582>,  <42.992119, 33.557854, 23.695833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224003, 33.561916, 23.757582>,  <43.610477, 33.568687, 23.860497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224003, 33.561916, 23.757582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227128, 0.528198, 0.818181,
		0.122049, 0.848953, -0.514182,
		-0.966187, -0.016927, -0.257287,
		42.934147, 33.556839, 23.680395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252003, 34.283836, 24.025864>,  <43.610477, 33.568687, 23.860497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252003, 34.283836, 24.025864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958847, 34.012371, 24.006699>,  <42.782955, 33.849491, 23.995199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958847, 34.012371, 24.006699>,  <43.252003, 34.283836, 24.025864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958847, 34.012371, 24.006699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545627, 0.544229, 0.637265,
		-0.406411, 0.493186, -0.769154,
		-0.732885, -0.678663, -0.047915,
		42.738983, 33.808773, 23.992325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578861, 34.767456, 24.019136>,  <43.252003, 34.283836, 24.025864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578861, 34.767456, 24.019136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497452, 34.393013, 24.133877>,  <42.448608, 34.168346, 24.202721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497452, 34.393013, 24.133877>,  <42.578861, 34.767456, 24.019136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497452, 34.393013, 24.133877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629070, 0.349531, 0.694333,
		-0.750233, -0.039138, -0.660014,
		-0.203521, -0.936107, 0.286851,
		42.436394, 34.112183, 24.219933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959892, 34.805038, 23.936823>,  <42.578861, 34.767456, 24.019136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959892, 34.805038, 23.936823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015427, 34.486214, 24.171909>,  <42.048748, 34.294918, 24.312962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015427, 34.486214, 24.171909>,  <41.959892, 34.805038, 23.936823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015427, 34.486214, 24.171909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695280, 0.344153, 0.630987,
		-0.705202, -0.496232, -0.506402,
		0.138837, -0.797064, 0.587718,
		42.057079, 34.247093, 24.348225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341351, 34.591785, 24.054337>,  <41.959892, 34.805038, 23.936823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341351, 34.591785, 24.054337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544056, 34.418217, 24.352304>,  <41.665680, 34.314075, 24.531086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544056, 34.418217, 24.352304>,  <41.341351, 34.591785, 24.054337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544056, 34.418217, 24.352304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647606, 0.378746, 0.661179,
		-0.569035, -0.817474, -0.089076,
		0.506760, -0.433921, 0.744921,
		41.696083, 34.288040, 24.575781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850403, 34.320690, 24.515190>,  <41.341351, 34.591785, 24.054337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850403, 34.320690, 24.515190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185059, 34.342548, 24.733200>,  <41.385853, 34.355663, 24.864006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185059, 34.342548, 24.733200>,  <40.850403, 34.320690, 24.515190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185059, 34.342548, 24.733200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512887, 0.427501, 0.744439,
		-0.192320, -0.902362, 0.385689,
		0.836636, 0.054644, 0.545027,
		41.436050, 34.358940, 24.896708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555115, 34.195950, 25.215904>,  <40.850403, 34.320690, 24.515190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555115, 34.195950, 25.215904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918903, 34.353802, 25.268250>,  <41.137177, 34.448513, 25.299658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918903, 34.353802, 25.268250>,  <40.555115, 34.195950, 25.215904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918903, 34.353802, 25.268250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300506, 0.406420, 0.862855,
		0.287320, -0.824070, 0.488216,
		0.909474, 0.394628, 0.130865,
		41.191746, 34.472191, 25.307508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785603, 33.958706, 25.907784>,  <40.555115, 34.195950, 25.215904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785603, 33.958706, 25.907784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960041, 34.298107, 25.787870>,  <41.064705, 34.501747, 25.715923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960041, 34.298107, 25.787870>,  <40.785603, 33.958706, 25.907784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960041, 34.298107, 25.787870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314916, 0.455955, 0.832426,
		0.843001, -0.268610, 0.466045,
		0.436094, 0.848501, -0.299781,
		41.090870, 34.552658, 25.697937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386368, 33.497051, 26.128096>,  <40.785603, 33.958706, 25.907784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386368, 33.497051, 26.128096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409245, 33.150135, 26.325895>,  <41.422970, 32.941986, 26.444574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409245, 33.150135, 26.325895>,  <41.386368, 33.497051, 26.128096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409245, 33.150135, 26.325895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108462, -0.497775, -0.860497,
		0.992454, -0.004424, -0.122535,
		0.057188, -0.867294, 0.494499,
		41.426399, 32.889946, 26.474245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792885, 33.042614, 25.774576>,  <41.386368, 33.497051, 26.128096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792885, 33.042614, 25.774576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605743, 32.753296, 25.977734>,  <41.493458, 32.579704, 26.099628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.605743, 32.753296, 25.977734>,  <41.792885, 33.042614, 25.774576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605743, 32.753296, 25.977734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069282, -0.542883, -0.836945,
		0.881088, -0.426753, 0.203876,
		-0.467850, -0.723298, 0.507894,
		41.465389, 32.536308, 26.130102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311287, 32.492950, 25.758310>,  <41.792885, 33.042614, 25.774576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311287, 32.492950, 25.758310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958153, 32.333260, 25.857277>,  <41.746273, 32.237446, 25.916656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958153, 32.333260, 25.857277>,  <42.311287, 32.492950, 25.758310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958153, 32.333260, 25.857277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041324, -0.590758, -0.805790,
		0.467858, -0.701157, 0.538041,
		-0.882837, -0.399229, 0.247416,
		41.693302, 32.213490, 25.931501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462109, 31.766178, 25.690434>,  <42.311287, 32.492950, 25.758310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462109, 31.766178, 25.690434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066814, 31.825878, 25.677069>,  <41.829639, 31.861698, 25.669050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066814, 31.825878, 25.677069>,  <42.462109, 31.766178, 25.690434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066814, 31.825878, 25.677069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079413, -0.687416, -0.721909,
		-0.130713, -0.710762, 0.691181,
		-0.988235, 0.149252, -0.033411,
		41.770344, 31.870653, 25.667046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199364, 31.084789, 25.639612>,  <42.462109, 31.766178, 25.690434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199364, 31.084789, 25.639612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878345, 31.299801, 25.536085>,  <41.685734, 31.428808, 25.473969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878345, 31.299801, 25.536085>,  <42.199364, 31.084789, 25.639612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.878345, 31.299801, 25.536085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289273, -0.730028, -0.619178,
		-0.521768, -0.422050, 0.741372,
		-0.802545, 0.537526, -0.258818,
		41.637581, 31.461060, 25.458439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582966, 30.678539, 25.877144>,  <42.199364, 31.084789, 25.639612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582966, 30.678539, 25.877144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518387, 30.914888, 25.560965>,  <41.479637, 31.056698, 25.371258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518387, 30.914888, 25.560965>,  <41.582966, 30.678539, 25.877144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518387, 30.914888, 25.560965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151745, -0.806292, -0.571723,
		-0.975145, 0.027641, 0.219837,
		-0.161450, 0.590871, -0.790446,
		41.469952, 31.092150, 25.323832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135433, 30.342699, 25.397224>,  <41.582966, 30.678539, 25.877144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135433, 30.342699, 25.397224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289494, 30.643349, 25.183039>,  <41.381927, 30.823738, 25.054527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289494, 30.643349, 25.183039>,  <41.135433, 30.342699, 25.397224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289494, 30.643349, 25.183039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034455, -0.591534, -0.805544,
		-0.922212, 0.291804, -0.253725,
		0.385147, 0.751624, -0.535465,
		41.405037, 30.868835, 25.022400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962868, 30.107697, 24.706848>,  <41.135433, 30.342699, 25.397224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962868, 30.107697, 24.706848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204525, 30.420881, 24.647551>,  <41.349522, 30.608793, 24.611973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204525, 30.420881, 24.647551>,  <40.962868, 30.107697, 24.706848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204525, 30.420881, 24.647551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149578, -0.294146, -0.943984,
		-0.782709, 0.548131, -0.294821,
		0.604147, 0.782963, -0.148242,
		41.385769, 30.655769, 24.603079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757496, 30.470945, 24.075085>,  <40.962868, 30.107697, 24.706848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757496, 30.470945, 24.075085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145920, 30.511204, 24.161720>,  <41.378975, 30.535358, 24.213701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145920, 30.511204, 24.161720>,  <40.757496, 30.470945, 24.075085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145920, 30.511204, 24.161720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238024, -0.333323, -0.912272,
		-0.019622, 0.937425, -0.347633,
		0.971061, 0.100646, 0.216589,
		41.437237, 30.541397, 24.226698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037258, 30.842525, 23.494951>,  <40.757496, 30.470945, 24.075085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037258, 30.842525, 23.494951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360600, 30.646536, 23.625484>,  <41.554604, 30.528942, 23.703804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360600, 30.646536, 23.625484>,  <41.037258, 30.842525, 23.494951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360600, 30.646536, 23.625484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135656, -0.384380, -0.913153,
		0.572858, 0.782418, -0.244246,
		0.808351, -0.489974, 0.326335,
		41.603104, 30.499544, 23.723385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443649, 30.697674, 22.926613>,  <41.037258, 30.842525, 23.494951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443649, 30.697674, 22.926613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592155, 30.427896, 23.181889>,  <41.681259, 30.266029, 23.335054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592155, 30.427896, 23.181889>,  <41.443649, 30.697674, 22.926613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592155, 30.427896, 23.181889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165662, -0.628174, -0.760233,
		0.913629, 0.387972, -0.121490,
		0.371266, -0.674445, 0.638190,
		41.703537, 30.225563, 23.373346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082996, 30.549025, 22.674362>,  <41.443649, 30.697674, 22.926613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082996, 30.549025, 22.674362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993492, 30.248337, 22.922508>,  <41.939789, 30.067924, 23.071396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993492, 30.248337, 22.922508>,  <42.082996, 30.549025, 22.674362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993492, 30.248337, 22.922508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290068, -0.659022, -0.693939,
		0.930480, 0.024674, 0.365510,
		-0.223757, -0.751719, 0.620364,
		41.926365, 30.022821, 23.108618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552036, 30.176628, 22.552477>,  <42.082996, 30.549025, 22.674362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552036, 30.176628, 22.552477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307446, 29.918905, 22.736198>,  <42.160690, 29.764271, 22.846432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307446, 29.918905, 22.736198>,  <42.552036, 30.176628, 22.552477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307446, 29.918905, 22.736198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219769, -0.695925, -0.683659,
		0.760129, -0.317102, 0.567143,
		-0.611479, -0.644309, 0.459303,
		42.124001, 29.725613, 22.873989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033939, 29.582529, 22.597271>,  <42.552036, 30.176628, 22.552477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033939, 29.582529, 22.597271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655582, 29.459097, 22.637407>,  <42.428570, 29.385038, 22.661489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655582, 29.459097, 22.637407>,  <43.033939, 29.582529, 22.597271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655582, 29.459097, 22.637407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169956, -0.734572, -0.656901,
		0.276416, -0.604303, 0.747270,
		-0.945891, -0.308581, 0.100343,
		42.371815, 29.366522, 22.667511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.211803, 32.556255, 20.915457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.611187, 32.548111, 20.936140>,  <35.850815, 32.543224, 20.948549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.611187, 32.548111, 20.936140>,  <35.211803, 32.556255, 20.915457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611187, 32.548111, 20.936140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044355, 0.268585, 0.962234,
		-0.033479, -0.963041, 0.267267,
		0.998455, -0.020360, 0.051708,
		35.910725, 32.542004, 20.951653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435909, 31.982777, 21.459631>,  <35.211803, 32.556255, 20.915457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435909, 31.982777, 21.459631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714500, 32.265137, 21.408062>,  <35.881657, 32.434555, 21.377121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.714500, 32.265137, 21.408062>,  <35.435909, 31.982777, 21.459631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714500, 32.265137, 21.408062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077917, 0.252998, 0.964324,
		0.713336, -0.661585, 0.231209,
		0.696478, 0.705902, -0.128924,
		35.923443, 32.476906, 21.369385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813072, 31.980921, 22.088291>,  <35.435909, 31.982777, 21.459631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813072, 31.980921, 22.088291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899204, 32.335777, 21.925016>,  <35.950882, 32.548691, 21.827051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.899204, 32.335777, 21.925016>,  <35.813072, 31.980921, 22.088291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899204, 32.335777, 21.925016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078638, 0.400883, 0.912748,
		0.973370, -0.228641, 0.016560,
		0.215330, 0.887139, -0.408187,
		35.963802, 32.601917, 21.802561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358891, 32.269352, 22.479321>,  <35.813072, 31.980921, 22.088291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358891, 32.269352, 22.479321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.172588, 32.571304, 22.294617>,  <36.060806, 32.752476, 22.183794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.172588, 32.571304, 22.294617>,  <36.358891, 32.269352, 22.479321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172588, 32.571304, 22.294617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057370, 0.494957, 0.867022,
		0.883053, 0.430310, -0.187220,
		-0.465753, 0.754885, -0.461760,
		36.032864, 32.797771, 22.156088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593090, 32.751308, 22.773041>,  <36.358891, 32.269352, 22.479321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593090, 32.751308, 22.773041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258167, 32.915661, 22.628761>,  <36.057213, 33.014271, 22.542194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258167, 32.915661, 22.628761>,  <36.593090, 32.751308, 22.773041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258167, 32.915661, 22.628761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150116, 0.461605, 0.874292,
		0.525728, 0.786193, -0.324823,
		-0.837302, 0.410879, -0.360699,
		36.006977, 33.038925, 22.520552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629631, 33.398769, 23.094137>,  <36.593090, 32.751308, 22.773041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629631, 33.398769, 23.094137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257263, 33.394772, 22.948099>,  <36.033844, 33.392372, 22.860476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257263, 33.394772, 22.948099>,  <36.629631, 33.398769, 23.094137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257263, 33.394772, 22.948099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303378, 0.577751, 0.757737,
		0.203363, 0.816152, -0.540869,
		-0.930916, -0.009992, -0.365095,
		35.977989, 33.391773, 22.838570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368889, 34.134834, 23.101032>,  <36.629631, 33.398769, 23.094137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368889, 34.134834, 23.101032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.050026, 33.894562, 23.076641>,  <35.858707, 33.750397, 23.062006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.050026, 33.894562, 23.076641>,  <36.368889, 34.134834, 23.101032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050026, 33.894562, 23.076641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352444, 0.380946, 0.854788,
		-0.490229, 0.702892, -0.515382,
		-0.797156, -0.600686, -0.060979,
		35.810879, 33.714355, 23.058348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757481, 34.565037, 23.273413>,  <36.368889, 34.134834, 23.101032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757481, 34.565037, 23.273413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.635147, 34.188896, 23.333033>,  <35.561749, 33.963211, 23.368805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.635147, 34.188896, 23.333033>,  <35.757481, 34.565037, 23.273413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635147, 34.188896, 23.333033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503821, 0.292678, 0.812714,
		-0.807857, 0.173457, -0.563276,
		-0.305830, -0.940347, 0.149050,
		35.543400, 33.906792, 23.377748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987995, 34.630161, 23.450861>,  <35.757481, 34.565037, 23.273413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987995, 34.630161, 23.450861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113323, 34.271095, 23.574814>,  <35.188522, 34.055656, 23.649185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113323, 34.271095, 23.574814>,  <34.987995, 34.630161, 23.450861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113323, 34.271095, 23.574814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519301, 0.111243, 0.847320,
		-0.795081, -0.426407, -0.431303,
		0.313324, -0.897665, 0.309881,
		35.207321, 34.001797, 23.667778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364319, 34.340195, 23.815016>,  <34.987995, 34.630161, 23.450861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364319, 34.340195, 23.815016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702412, 34.163578, 23.935436>,  <34.905266, 34.057610, 24.007689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702412, 34.163578, 23.935436>,  <34.364319, 34.340195, 23.815016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702412, 34.163578, 23.935436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339105, -0.007740, 0.940717,
		-0.413034, -0.897208, -0.156271,
		0.845228, -0.441540, 0.301051,
		34.955978, 34.031116, 24.025751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150707, 33.819782, 24.383776>,  <34.364319, 34.340195, 23.815016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150707, 33.819782, 24.383776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.546673, 33.857811, 24.425802>,  <34.784252, 33.880627, 24.451017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.546673, 33.857811, 24.425802>,  <34.150707, 33.819782, 24.383776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546673, 33.857811, 24.425802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113245, 0.085163, 0.989910,
		0.085163, -0.991821, 0.095070,
		-0.989910, -0.095070, -0.105066,
		34.843647, 33.886333, 24.457321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345051, 33.477432, 24.898678>,  <34.150707, 33.819782, 24.383776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345051, 33.477432, 24.898678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647175, 33.739292, 24.886421>,  <34.828449, 33.896408, 24.879068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.647175, 33.739292, 24.886421>,  <34.345051, 33.477432, 24.898678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647175, 33.739292, 24.886421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071745, 0.129066, 0.989037,
		0.651432, -0.744828, 0.144453,
		0.755307, 0.654655, -0.030640,
		34.873768, 33.935688, 24.877230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006199, 33.203228, 25.334665>,  <34.345051, 33.477432, 24.898678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006199, 33.203228, 25.334665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035526, 33.600597, 25.299482>,  <35.053123, 33.839020, 25.278372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035526, 33.600597, 25.299482>,  <35.006199, 33.203228, 25.334665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035526, 33.600597, 25.299482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295680, 0.062576, 0.953236,
		0.952469, -0.095901, -0.289147,
		0.073322, 0.993422, -0.087958,
		35.057522, 33.898624, 25.273094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585693, 33.515884, 25.730694>,  <35.006199, 33.203228, 25.334665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585693, 33.515884, 25.730694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.397984, 33.864777, 25.675566>,  <35.285358, 34.074112, 25.642488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.397984, 33.864777, 25.675566>,  <35.585693, 33.515884, 25.730694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397984, 33.864777, 25.675566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098734, 0.206918, 0.973364,
		0.877517, 0.443165, -0.183220,
		-0.469272, 0.872233, -0.137818,
		35.257202, 34.126446, 25.634220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170773, 33.122902, 25.979887>,  <35.585693, 33.515884, 25.730694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170773, 33.122902, 25.979887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162552, 32.752686, 26.131124>,  <36.157619, 32.530556, 26.221867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162552, 32.752686, 26.131124>,  <36.170773, 33.122902, 25.979887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162552, 32.752686, 26.131124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294422, -0.367007, -0.882395,
		0.955454, 0.093184, 0.280042,
		-0.020553, -0.925539, 0.378094,
		36.156387, 32.475025, 26.244553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712982, 32.779099, 25.688585>,  <36.170773, 33.122902, 25.979887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712982, 32.779099, 25.688585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474258, 32.477612, 25.798655>,  <36.331024, 32.296719, 25.864697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474258, 32.477612, 25.798655>,  <36.712982, 32.779099, 25.688585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474258, 32.477612, 25.798655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228993, -0.488680, -0.841875,
		0.769012, -0.439426, 0.464246,
		-0.596810, -0.753722, 0.275176,
		36.295216, 32.251495, 25.881207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048756, 32.114708, 25.327412>,  <36.712982, 32.779099, 25.688585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048756, 32.114708, 25.327412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.690571, 31.998646, 25.462442>,  <36.475658, 31.929010, 25.543461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.690571, 31.998646, 25.462442>,  <37.048756, 32.114708, 25.327412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690571, 31.998646, 25.462442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033550, -0.712219, -0.701155,
		0.443870, -0.639184, 0.628031,
		-0.895463, -0.290151, 0.337578,
		36.421932, 31.911600, 25.563715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051056, 31.461136, 25.590069>,  <37.048756, 32.114708, 25.327412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051056, 31.461136, 25.590069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671719, 31.519058, 25.477156>,  <36.444118, 31.553812, 25.409407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671719, 31.519058, 25.477156>,  <37.051056, 31.461136, 25.590069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671719, 31.519058, 25.477156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171345, -0.515063, -0.839852,
		-0.267011, -0.844832, 0.463643,
		-0.948339, 0.144806, -0.282285,
		36.387218, 31.562500, 25.392469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852924, 30.783957, 25.379602>,  <37.051056, 31.461136, 25.590069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852924, 30.783957, 25.379602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.593048, 31.036106, 25.209648>,  <36.437122, 31.187397, 25.107676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.593048, 31.036106, 25.209648>,  <36.852924, 30.783957, 25.379602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593048, 31.036106, 25.209648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072351, -0.505102, -0.860021,
		-0.756748, -0.589489, 0.282552,
		-0.649691, 0.630377, -0.424886,
		36.398140, 31.225220, 25.082182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466816, 30.375153, 24.929384>,  <36.852924, 30.783957, 25.379602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466816, 30.375153, 24.929384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363644, 30.738480, 24.797668>,  <36.301739, 30.956476, 24.718639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363644, 30.738480, 24.797668>,  <36.466816, 30.375153, 24.929384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363644, 30.738480, 24.797668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022916, -0.346478, -0.937778,
		-0.965891, -0.234338, 0.110183,
		-0.257933, 0.908317, -0.329289,
		36.286263, 31.010975, 24.698881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864079, 30.347225, 24.521915>,  <36.466816, 30.375153, 24.929384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864079, 30.347225, 24.521915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.062370, 30.666521, 24.385056>,  <36.181347, 30.858099, 24.302938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.062370, 30.666521, 24.385056>,  <35.864079, 30.347225, 24.521915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062370, 30.666521, 24.385056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202582, -0.276818, -0.939325,
		-0.844520, 0.534964, 0.024482,
		0.495728, 0.798239, -0.342152,
		36.211090, 30.905993, 24.282410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518311, 30.516840, 23.931288>,  <35.864079, 30.347225, 24.521915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518311, 30.516840, 23.931288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860054, 30.721743, 23.896263>,  <36.065098, 30.844685, 23.875248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860054, 30.721743, 23.896263>,  <35.518311, 30.516840, 23.931288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860054, 30.721743, 23.896263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083196, -0.301135, -0.949945,
		-0.512984, 0.804308, -0.299894,
		0.854357, 0.512257, -0.087562,
		36.116360, 30.875420, 23.869995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442928, 30.753004, 23.169613>,  <35.518311, 30.516840, 23.931288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442928, 30.753004, 23.169613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820644, 30.768671, 23.300325>,  <36.047272, 30.778070, 23.378754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.820644, 30.768671, 23.300325>,  <35.442928, 30.753004, 23.169613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820644, 30.768671, 23.300325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313579, -0.408571, -0.857168,
		0.099942, 0.911886, -0.398091,
		0.944288, 0.039165, 0.326782,
		36.103931, 30.780420, 23.398359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792465, 31.067705, 22.666281>,  <35.442928, 30.753004, 23.169613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792465, 31.067705, 22.666281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079090, 30.872936, 22.866060>,  <36.251064, 30.756075, 22.985928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.079090, 30.872936, 22.866060>,  <35.792465, 31.067705, 22.666281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079090, 30.872936, 22.866060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322493, -0.403642, -0.856196,
		0.618499, 0.774584, -0.132204,
		0.716559, -0.486922, 0.499450,
		36.294056, 30.726860, 23.015896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451519, 31.144667, 22.361179>,  <35.792465, 31.067705, 22.666281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451519, 31.144667, 22.361179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475239, 30.789768, 22.544167>,  <36.489471, 30.576828, 22.653959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475239, 30.789768, 22.544167>,  <36.451519, 31.144667, 22.361179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475239, 30.789768, 22.544167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419443, -0.393709, -0.817962,
		0.905843, 0.240385, 0.348803,
		0.059298, -0.887248, 0.457466,
		36.493027, 30.523594, 22.681406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167122, 30.924171, 22.398769>,  <36.451519, 31.144667, 22.361179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167122, 30.924171, 22.398769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946144, 30.591497, 22.421051>,  <36.813557, 30.391893, 22.434420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.946144, 30.591497, 22.421051>,  <37.167122, 30.924171, 22.398769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946144, 30.591497, 22.421051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478607, -0.371208, -0.795701,
		0.682448, -0.412925, 0.603123,
		-0.552449, -0.831683, 0.055702,
		36.780411, 30.341991, 22.437761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631458, 30.416117, 22.360069>,  <37.167122, 30.924171, 22.398769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631458, 30.416117, 22.360069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306240, 30.202765, 22.266720>,  <37.111111, 30.074753, 22.210711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306240, 30.202765, 22.266720>,  <37.631458, 30.416117, 22.360069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306240, 30.202765, 22.266720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498137, -0.429836, -0.753061,
		0.301355, -0.728524, 0.615172,
		-0.813046, -0.533379, -0.233371,
		37.062325, 30.042751, 22.196709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810364, 29.724442, 22.350597>,  <37.631458, 30.416117, 22.360069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810364, 29.724442, 22.350597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.479156, 29.770678, 22.131136>,  <37.280430, 29.798420, 21.999458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.479156, 29.770678, 22.131136>,  <37.810364, 29.724442, 22.350597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479156, 29.770678, 22.131136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496512, -0.303451, -0.813261,
		-0.260490, -0.945811, 0.193874,
		-0.828022, 0.115586, -0.548653,
		37.230751, 29.805355, 21.966539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784111, 29.033798, 22.676052>,  <37.810364, 29.724442, 22.350597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784111, 29.033798, 22.676052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.146725, 28.926432, 22.806370>,  <38.364292, 28.862013, 22.884560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.146725, 28.926432, 22.806370>,  <37.784111, 29.033798, 22.676052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146725, 28.926432, 22.806370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235200, 0.319710, 0.917860,
		-0.350526, -0.908702, 0.226699,
		0.906539, -0.268414, 0.325793,
		38.418686, 28.845907, 22.904108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665730, 28.673645, 23.346935>,  <37.784111, 29.033798, 22.676052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665730, 28.673645, 23.346935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.049263, 28.783546, 23.375616>,  <38.279385, 28.849487, 23.392824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.049263, 28.783546, 23.375616>,  <37.665730, 28.673645, 23.346935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049263, 28.783546, 23.375616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138659, 0.232690, 0.962616,
		0.247794, -0.932935, 0.261208,
		0.958839, 0.274750, 0.071701,
		38.336914, 28.865973, 23.397125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712563, 28.667269, 24.065105>,  <37.665730, 28.673645, 23.346935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712563, 28.667269, 24.065105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078831, 28.793493, 23.965532>,  <38.298592, 28.869228, 23.905788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078831, 28.793493, 23.965532>,  <37.712563, 28.667269, 24.065105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078831, 28.793493, 23.965532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116350, 0.384717, 0.915672,
		0.384717, -0.867419, 0.315559,
		-0.915672, -0.315559, 0.248931,
		38.353531, 28.888161, 23.890852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325428, 28.328110, 24.431543>,  <37.712563, 28.667269, 24.065105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325428, 28.328110, 24.431543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451000, 28.691906, 24.322531>,  <38.526344, 28.910185, 24.257122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.451000, 28.691906, 24.322531>,  <38.325428, 28.328110, 24.431543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451000, 28.691906, 24.322531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126831, 0.244301, 0.961369,
		0.940938, -0.336364, -0.038660,
		0.313926, 0.909492, -0.272534,
		38.545177, 28.964754, 24.240770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044655, 28.464312, 24.714500>,  <38.325428, 28.328110, 24.431543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044655, 28.464312, 24.714500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847069, 28.805197, 24.645523>,  <38.728519, 29.009727, 24.604136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847069, 28.805197, 24.645523>,  <39.044655, 28.464312, 24.714500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847069, 28.805197, 24.645523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375400, 0.387924, 0.841778,
		0.784269, 0.351069, -0.511540,
		-0.493961, 0.852212, -0.172445,
		38.698879, 29.060860, 24.593790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430172, 28.975849, 24.994846>,  <39.044655, 28.464312, 24.714500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430172, 28.975849, 24.994846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.089241, 29.179758, 24.948090>,  <38.884682, 29.302103, 24.920036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.089241, 29.179758, 24.948090>,  <39.430172, 28.975849, 24.994846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089241, 29.179758, 24.948090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169117, 0.480126, 0.860743,
		0.494906, 0.713870, -0.495437,
		-0.852331, 0.509774, -0.116890,
		38.833542, 29.332691, 24.913023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523880, 29.654989, 25.053055>,  <39.430172, 28.975849, 24.994846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523880, 29.654989, 25.053055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131424, 29.683613, 25.124870>,  <38.895950, 29.700787, 25.167959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.131424, 29.683613, 25.124870>,  <39.523880, 29.654989, 25.053055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131424, 29.683613, 25.124870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188633, 0.556929, 0.808856,
		-0.042108, 0.827471, -0.559927,
		-0.981144, 0.071561, 0.179540,
		38.837082, 29.705082, 25.178732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453552, 30.364784, 25.233427>,  <39.523880, 29.654989, 25.053055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453552, 30.364784, 25.233427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157673, 30.134714, 25.373150>,  <38.980145, 29.996672, 25.456984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157673, 30.134714, 25.373150>,  <39.453552, 30.364784, 25.233427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157673, 30.134714, 25.373150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003226, 0.516043, 0.856556,
		-0.672926, 0.634724, -0.379863,
		-0.739703, -0.575174, 0.349307,
		38.935760, 29.962162, 25.477942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067917, 30.873638, 25.587254>,  <39.453552, 30.364784, 25.233427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067917, 30.873638, 25.587254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.977375, 30.507826, 25.721357>,  <38.923050, 30.288338, 25.801819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.977375, 30.507826, 25.721357>,  <39.067917, 30.873638, 25.587254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977375, 30.507826, 25.721357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131334, 0.369705, 0.919821,
		-0.965150, 0.164175, -0.203793,
		-0.226355, -0.914530, 0.335259,
		38.909470, 30.233467, 25.821936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491863, 30.949789, 25.952171>,  <39.067917, 30.873638, 25.587254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491863, 30.949789, 25.952171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611649, 30.594217, 26.090805>,  <38.683521, 30.380875, 26.173986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.611649, 30.594217, 26.090805>,  <38.491863, 30.949789, 25.952171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611649, 30.594217, 26.090805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187580, 0.301313, 0.934893,
		-0.935486, -0.344981, -0.076513,
		0.299466, -0.888931, 0.346586,
		38.701488, 30.327538, 26.194780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879738, 30.611053, 26.335003>,  <38.491863, 30.949789, 25.952171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879738, 30.611053, 26.335003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206760, 30.452873, 26.502439>,  <38.402973, 30.357965, 26.602901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206760, 30.452873, 26.502439>,  <37.879738, 30.611053, 26.335003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206760, 30.452873, 26.502439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281797, 0.359180, 0.889708,
		-0.502187, -0.845344, 0.182212,
		0.817556, -0.395453, 0.418591,
		38.452026, 30.334238, 26.628017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615402, 30.315929, 26.959150>,  <37.879738, 30.611053, 26.335003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615402, 30.315929, 26.959150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009399, 30.367298, 27.005270>,  <38.245800, 30.398119, 27.032942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009399, 30.367298, 27.005270>,  <37.615402, 30.315929, 26.959150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009399, 30.367298, 27.005270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155185, 0.366728, 0.917294,
		0.075516, -0.921422, 0.381154,
		0.984995, 0.128420, 0.115297,
		38.304897, 30.405825, 27.039860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720387, 29.908815, 27.585321>,  <37.615402, 30.315929, 26.959150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720387, 29.908815, 27.585321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030727, 30.158813, 27.550821>,  <38.216930, 30.308813, 27.530121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.030727, 30.158813, 27.550821>,  <37.720387, 29.908815, 27.585321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030727, 30.158813, 27.550821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085744, 0.239890, 0.967006,
		0.625067, -0.742854, 0.239708,
		0.775848, 0.624997, -0.086252,
		38.263481, 30.346313, 27.524946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299206, 29.666826, 28.058838>,  <37.720387, 29.908815, 27.585321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299206, 29.666826, 28.058838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347023, 30.057688, 27.988550>,  <38.375713, 30.292206, 27.946379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347023, 30.057688, 27.988550>,  <38.299206, 29.666826, 28.058838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347023, 30.057688, 27.988550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033867, 0.172871, 0.984362,
		0.992251, -0.123626, -0.012428,
		0.119544, 0.977155, -0.175718,
		38.382885, 30.350834, 27.935835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.023891, 28.833040, 22.742952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.656967, 28.901796, 22.599285>,  <42.436813, 28.943050, 22.513084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.656967, 28.901796, 22.599285>,  <43.023891, 28.833040, 22.742952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656967, 28.901796, 22.599285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124822, -0.732417, -0.669317,
		-0.378108, -0.658801, 0.650396,
		-0.917308, 0.171890, -0.359166,
		42.381775, 28.953363, 22.491535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743446, 28.165241, 22.601643>,  <43.023891, 28.833040, 22.742952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743446, 28.165241, 22.601643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.509262, 28.416910, 22.397144>,  <42.368752, 28.567911, 22.274445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.509262, 28.416910, 22.397144>,  <42.743446, 28.165241, 22.601643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509262, 28.416910, 22.397144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136531, -0.698140, -0.702823,
		-0.799119, -0.341676, 0.494637,
		-0.585464, 0.629173, -0.511247,
		42.333622, 28.605661, 22.243771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119743, 27.780157, 22.422215>,  <42.743446, 28.165241, 22.601643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119743, 27.780157, 22.422215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.154545, 28.092478, 22.174738>,  <42.175426, 28.279871, 22.026253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.154545, 28.092478, 22.174738>,  <42.119743, 27.780157, 22.422215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154545, 28.092478, 22.174738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246895, -0.584769, -0.772715,
		-0.965128, 0.219983, 0.141897,
		0.087008, 0.780803, -0.618689,
		42.180649, 28.326719, 21.989132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728611, 27.516060, 21.850204>,  <42.119743, 27.780157, 22.422215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728611, 27.516060, 21.850204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.907906, 27.842016, 21.703217>,  <42.015484, 28.037590, 21.615023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.907906, 27.842016, 21.703217>,  <41.728611, 27.516060, 21.850204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907906, 27.842016, 21.703217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186550, -0.316756, -0.929981,
		-0.874230, 0.485407, 0.010034,
		0.448241, 0.814889, -0.367471,
		42.042377, 28.086483, 21.592976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229294, 27.744722, 21.361996>,  <41.728611, 27.516060, 21.850204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229294, 27.744722, 21.361996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588928, 27.897379, 21.276205>,  <41.804707, 27.988974, 21.224731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588928, 27.897379, 21.276205>,  <41.229294, 27.744722, 21.361996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588928, 27.897379, 21.276205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134610, -0.225183, -0.964973,
		-0.416572, 0.896461, -0.151085,
		0.899082, 0.381643, -0.214477,
		41.858654, 28.011871, 21.211863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188976, 28.118795, 20.772511>,  <41.229294, 27.744722, 21.361996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188976, 28.118795, 20.772511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.586311, 28.073265, 20.765333>,  <41.824711, 28.045946, 20.761026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.586311, 28.073265, 20.765333>,  <41.188976, 28.118795, 20.772511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586311, 28.073265, 20.765333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003886, 0.122550, -0.992455,
		0.115168, 0.985913, 0.121291,
		0.993338, -0.113828, -0.017945,
		41.884312, 28.039116, 20.759949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463669, 28.592119, 20.267120>,  <41.188976, 28.118795, 20.772511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463669, 28.592119, 20.267120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.775738, 28.344147, 20.300610>,  <41.962982, 28.195364, 20.320704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.775738, 28.344147, 20.300610>,  <41.463669, 28.592119, 20.267120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775738, 28.344147, 20.300610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083940, -0.028884, -0.996052,
		0.619901, 0.784125, 0.029503,
		0.780177, -0.619931, 0.083725,
		42.009792, 28.158167, 20.325727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062881, 28.809776, 19.821173>,  <41.463669, 28.592119, 20.267120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062881, 28.809776, 19.821173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.090847, 28.413927, 19.871380>,  <42.107624, 28.176416, 19.901505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.090847, 28.413927, 19.871380>,  <42.062881, 28.809776, 19.821173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090847, 28.413927, 19.871380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161405, -0.135390, -0.977557,
		0.984409, 0.048081, -0.169195,
		0.069909, -0.989625, 0.125518,
		42.111820, 28.117039, 19.909035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614464, 28.564865, 19.372818>,  <42.062881, 28.809776, 19.821173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614464, 28.564865, 19.372818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.395569, 28.240492, 19.455690>,  <42.264233, 28.045868, 19.505413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.395569, 28.240492, 19.455690>,  <42.614464, 28.564865, 19.372818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395569, 28.240492, 19.455690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076880, -0.197785, -0.977226,
		0.833440, -0.550701, 0.045891,
		-0.547236, -0.810931, 0.207180,
		42.231400, 27.997213, 19.517845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917755, 28.114399, 18.930815>,  <42.614464, 28.564865, 19.372818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917755, 28.114399, 18.930815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578873, 27.958847, 19.075594>,  <42.375542, 27.865515, 19.162462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.578873, 27.958847, 19.075594>,  <42.917755, 28.114399, 18.930815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.578873, 27.958847, 19.075594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200510, -0.396853, -0.895714,
		0.491967, -0.831432, 0.258243,
		-0.847210, -0.388881, 0.361949,
		42.324711, 27.842182, 19.184179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845379, 27.453836, 18.681578>,  <42.917755, 28.114399, 18.930815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845379, 27.453836, 18.681578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.477730, 27.588482, 18.763453>,  <42.257141, 27.669270, 18.812578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.477730, 27.588482, 18.763453>,  <42.845379, 27.453836, 18.681578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477730, 27.588482, 18.763453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309049, -0.293842, -0.904514,
		-0.244321, -0.894624, 0.374107,
		-0.919128, 0.336609, 0.204691,
		42.201992, 27.689466, 18.824860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378269, 26.958677, 18.317049>,  <42.845379, 27.453836, 18.681578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378269, 26.958677, 18.317049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.156799, 27.284842, 18.384638>,  <42.023918, 27.480539, 18.425192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.156799, 27.284842, 18.384638>,  <42.378269, 26.958677, 18.317049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156799, 27.284842, 18.384638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369747, -0.058911, -0.927263,
		-0.746145, -0.575879, 0.334113,
		-0.553674, 0.815410, 0.168974,
		41.990696, 27.529465, 18.435329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809692, 26.830822, 17.921844>,  <42.378269, 26.958677, 18.317049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809692, 26.830822, 17.921844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820652, 27.230602, 17.929338>,  <41.827229, 27.470470, 17.933836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.820652, 27.230602, 17.929338>,  <41.809692, 26.830822, 17.921844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820652, 27.230602, 17.929338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331649, 0.026770, -0.943023,
		-0.943005, 0.019622, 0.332200,
		0.027397, 0.999449, 0.018737,
		41.828873, 27.530437, 17.934959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204197, 27.097973, 17.746790>,  <41.809692, 26.830822, 17.921844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204197, 27.097973, 17.746790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479298, 27.369808, 17.644693>,  <41.644360, 27.532909, 17.583435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.479298, 27.369808, 17.644693>,  <41.204197, 27.097973, 17.746790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479298, 27.369808, 17.644693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262477, -0.095022, -0.960248,
		-0.676829, 0.727412, 0.113025,
		0.687756, 0.679590, -0.255242,
		41.685623, 27.573685, 17.568121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869251, 26.602179, 18.072840>,  <41.204197, 27.097973, 17.746790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869251, 26.602179, 18.072840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.481731, 26.510408, 18.110353>,  <40.249218, 26.455347, 18.132862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.481731, 26.510408, 18.110353>,  <40.869251, 26.602179, 18.072840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481731, 26.510408, 18.110353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067289, 0.607634, 0.791362,
		-0.238543, 0.760359, -0.604112,
		-0.968798, -0.229423, 0.093783,
		40.191093, 26.441582, 18.138489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514015, 27.236874, 18.313951>,  <40.869251, 26.602179, 18.072840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514015, 27.236874, 18.313951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.252186, 26.948238, 18.404152>,  <40.095089, 26.775057, 18.458273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.252186, 26.948238, 18.404152>,  <40.514015, 27.236874, 18.313951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252186, 26.948238, 18.404152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162880, 0.425882, 0.889997,
		-0.738247, 0.545835, -0.396302,
		-0.654569, -0.721587, 0.225501,
		40.055817, 26.731762, 18.471802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991810, 27.589258, 18.656286>,  <40.514015, 27.236874, 18.313951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991810, 27.589258, 18.656286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.917427, 27.204632, 18.737087>,  <39.872795, 26.973856, 18.785568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.917427, 27.204632, 18.737087>,  <39.991810, 27.589258, 18.656286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917427, 27.204632, 18.737087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359653, 0.257937, 0.896726,
		-0.914368, 0.094104, -0.393797,
		-0.185961, -0.961568, 0.202005,
		39.861637, 26.916161, 18.797689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262897, 27.592630, 18.836151>,  <39.991810, 27.589258, 18.656286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262897, 27.592630, 18.836151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462280, 27.282820, 18.991922>,  <39.581909, 27.096933, 19.085384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.462280, 27.282820, 18.991922>,  <39.262897, 27.592630, 18.836151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462280, 27.282820, 18.991922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370636, 0.215690, 0.903386,
		-0.783692, -0.594631, -0.179557,
		0.498453, -0.774527, 0.389426,
		39.611816, 27.050461, 19.108749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783749, 27.292767, 19.319290>,  <39.262897, 27.592630, 18.836151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783749, 27.292767, 19.319290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.134750, 27.146139, 19.442980>,  <39.345352, 27.058163, 19.517195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.134750, 27.146139, 19.442980>,  <38.783749, 27.292767, 19.319290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134750, 27.146139, 19.442980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269733, 0.155892, 0.950233,
		-0.396531, -0.917238, 0.037920,
		0.877501, -0.366568, 0.309225,
		39.397999, 27.036169, 19.535748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631786, 26.843372, 19.779652>,  <38.783749, 27.292767, 19.319290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631786, 26.843372, 19.779652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.016956, 26.912535, 19.862478>,  <39.248058, 26.954033, 19.912174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.016956, 26.912535, 19.862478>,  <38.631786, 26.843372, 19.779652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016956, 26.912535, 19.862478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249544, 0.279347, 0.927196,
		0.102475, -0.944494, 0.312139,
		0.962926, 0.172907, 0.207067,
		39.305836, 26.964407, 19.924599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766834, 26.613552, 20.483494>,  <38.631786, 26.843372, 19.779652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766834, 26.613552, 20.483494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.065865, 26.873838, 20.430288>,  <39.245285, 27.030010, 20.398365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.065865, 26.873838, 20.430288>,  <38.766834, 26.613552, 20.483494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065865, 26.873838, 20.430288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110949, 0.319806, 0.940965,
		0.654841, -0.688687, 0.311276,
		0.747578, 0.650718, -0.133013,
		39.290138, 27.069054, 20.390385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178963, 26.696716, 21.054235>,  <38.766834, 26.613552, 20.483494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178963, 26.696716, 21.054235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.273289, 27.033241, 20.859674>,  <39.329884, 27.235157, 20.742939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.273289, 27.033241, 20.859674>,  <39.178963, 26.696716, 21.054235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273289, 27.033241, 20.859674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107195, 0.519982, 0.847424,
		0.965868, -0.147694, 0.212804,
		0.235814, 0.841312, -0.486402,
		39.344032, 27.285635, 20.713755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736324, 26.979946, 21.437454>,  <39.178963, 26.696716, 21.054235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736324, 26.979946, 21.437454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.573486, 27.282944, 21.233307>,  <39.475784, 27.464743, 21.110819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.573486, 27.282944, 21.233307>,  <39.736324, 26.979946, 21.437454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573486, 27.282944, 21.233307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166861, 0.487684, 0.856925,
		0.898016, 0.434009, -0.072136,
		-0.407093, 0.757496, -0.510367,
		39.451359, 27.510193, 21.080196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985359, 27.559551, 21.653095>,  <39.736324, 26.979946, 21.437454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985359, 27.559551, 21.653095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659229, 27.720476, 21.486534>,  <39.463551, 27.817032, 21.386597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.659229, 27.720476, 21.486534>,  <39.985359, 27.559551, 21.653095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659229, 27.720476, 21.486534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204205, 0.473156, 0.856985,
		0.541800, 0.783752, -0.303620,
		-0.815324, 0.402314, -0.416402,
		39.414631, 27.841169, 21.361614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034584, 28.157782, 21.906778>,  <39.985359, 27.559551, 21.653095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034584, 28.157782, 21.906778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.661758, 28.153923, 21.761915>,  <39.438061, 28.151608, 21.674997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.661758, 28.153923, 21.761915>,  <40.034584, 28.157782, 21.906778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661758, 28.153923, 21.761915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306155, 0.555448, 0.773141,
		0.193704, 0.831495, -0.520667,
		-0.932067, -0.009645, -0.362159,
		39.382137, 28.151030, 21.653267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783924, 28.865635, 21.941914>,  <40.034584, 28.157782, 21.906778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783924, 28.865635, 21.941914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.464695, 28.625761, 21.918373>,  <39.273159, 28.481836, 21.904249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.464695, 28.625761, 21.918373>,  <39.783924, 28.865635, 21.941914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464695, 28.625761, 21.918373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419846, 0.483353, 0.768179,
		-0.432220, 0.637768, -0.637525,
		-0.798070, -0.599685, -0.058850,
		39.225273, 28.445856, 21.900719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185806, 29.337950, 21.779799>,  <39.783924, 28.865635, 21.941914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185806, 29.337950, 21.779799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112183, 28.999107, 21.979212>,  <39.068008, 28.795801, 22.098860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112183, 28.999107, 21.979212>,  <39.185806, 29.337950, 21.779799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112183, 28.999107, 21.979212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340150, 0.530753, 0.776273,
		-0.922182, -0.026695, -0.385833,
		-0.184059, -0.847106, 0.498531,
		39.056965, 28.744976, 22.128771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459824, 29.404011, 22.096664>,  <39.185806, 29.337950, 21.779799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459824, 29.404011, 22.096664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.580212, 29.076231, 22.291771>,  <38.652447, 28.879562, 22.408834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.580212, 29.076231, 22.291771>,  <38.459824, 29.404011, 22.096664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580212, 29.076231, 22.291771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323586, 0.393382, 0.860548,
		-0.897055, -0.416836, -0.146765,
		0.300972, -0.819450, 0.487768,
		38.670502, 28.830397, 22.438101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777565, 29.185547, 21.759871>,  <38.459824, 29.404011, 22.096664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777565, 29.185547, 21.759871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.516376, 29.460257, 21.632135>,  <37.359665, 29.625082, 21.555494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.516376, 29.460257, 21.632135>,  <37.777565, 29.185547, 21.759871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516376, 29.460257, 21.632135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313920, -0.138300, -0.939323,
		-0.689265, -0.713594, -0.125286,
		-0.652969, 0.686772, -0.319337,
		37.320484, 29.666288, 21.536335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478783, 28.880640, 21.259420>,  <37.777565, 29.185547, 21.759871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478783, 28.880640, 21.259420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394054, 29.266350, 21.195791>,  <37.343220, 29.497776, 21.157614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.394054, 29.266350, 21.195791>,  <37.478783, 28.880640, 21.259420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394054, 29.266350, 21.195791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131454, -0.133178, -0.982336,
		-0.968428, -0.228988, -0.098549,
		-0.211818, 0.964276, -0.159075,
		37.330509, 29.555634, 21.148069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956146, 28.861195, 20.789511>,  <37.478783, 28.880640, 21.259420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956146, 28.861195, 20.789511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095978, 29.235893, 20.796461>,  <37.179878, 29.460712, 20.800631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095978, 29.235893, 20.796461>,  <36.956146, 28.861195, 20.789511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095978, 29.235893, 20.796461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027119, 0.028654, -0.999222,
		-0.936514, 0.348837, 0.035420,
		0.349580, 0.936746, 0.017374,
		37.200851, 29.516916, 20.801674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472946, 29.244013, 20.368820>,  <36.956146, 28.861195, 20.789511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472946, 29.244013, 20.368820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839985, 29.401661, 20.389544>,  <37.060207, 29.496250, 20.401978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839985, 29.401661, 20.389544>,  <36.472946, 29.244013, 20.368820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839985, 29.401661, 20.389544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051756, 0.010770, -0.998602,
		-0.394126, 0.918996, -0.010515,
		0.917598, 0.394119, 0.051808,
		37.115265, 29.519897, 20.405087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392609, 29.753809, 19.839895>,  <36.472946, 29.244013, 20.368820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392609, 29.753809, 19.839895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.780819, 29.715343, 19.928295>,  <37.013744, 29.692265, 19.981335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.780819, 29.715343, 19.928295>,  <36.392609, 29.753809, 19.839895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780819, 29.715343, 19.928295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230176, 0.097907, -0.968211,
		0.071470, 0.990539, 0.117155,
		0.970521, -0.096164, 0.221001,
		37.071976, 29.686495, 19.994595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824940, 30.335758, 19.603960>,  <36.392609, 29.753809, 19.839895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824940, 30.335758, 19.603960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088825, 30.036442, 19.631792>,  <37.247154, 29.856852, 19.648491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088825, 30.036442, 19.631792>,  <36.824940, 30.335758, 19.603960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088825, 30.036442, 19.631792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163242, 0.052311, -0.985198,
		0.733577, 0.661302, 0.156663,
		0.659709, -0.748293, 0.069578,
		37.286739, 29.811954, 19.652666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359035, 30.535891, 19.099281>,  <36.824940, 30.335758, 19.603960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359035, 30.535891, 19.099281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361073, 30.141426, 19.165562>,  <37.362293, 29.904747, 19.205330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.361073, 30.141426, 19.165562>,  <37.359035, 30.535891, 19.099281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361073, 30.141426, 19.165562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108793, -0.164174, -0.980414,
		0.994051, 0.023018, 0.106452,
		0.005091, -0.986163, 0.165702,
		37.362598, 29.845577, 19.215273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896233, 31.103130, 19.147934>,  <37.359035, 30.535891, 19.099281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896233, 31.103130, 19.147934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757683, 31.420362, 18.947515>,  <37.674553, 31.610703, 18.827265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.757683, 31.420362, 18.947515>,  <37.896233, 31.103130, 19.147934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757683, 31.420362, 18.947515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704479, 0.132793, 0.697191,
		0.619465, 0.594464, 0.512714,
		-0.346370, 0.793082, -0.501048,
		37.653770, 31.658287, 18.797201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885338, 31.678976, 19.666445>,  <37.896233, 31.103130, 19.147934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885338, 31.678976, 19.666445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646320, 31.788157, 19.364864>,  <37.502911, 31.853664, 19.183916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646320, 31.788157, 19.364864>,  <37.885338, 31.678976, 19.666445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646320, 31.788157, 19.364864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585663, 0.493657, 0.642886,
		0.547669, 0.825712, -0.135124,
		-0.597544, 0.272951, -0.753949,
		37.467056, 31.870043, 19.138680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780472, 32.375896, 19.715246>,  <37.885338, 31.678976, 19.666445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780472, 32.375896, 19.715246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457268, 32.225533, 19.533779>,  <37.263348, 32.135315, 19.424900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.457268, 32.225533, 19.533779>,  <37.780472, 32.375896, 19.715246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457268, 32.225533, 19.533779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589109, 0.504183, 0.631467,
		-0.008647, 0.777488, -0.628838,
		-0.808008, -0.375914, -0.453665,
		37.214867, 32.112759, 19.397680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359188, 33.012375, 19.540392>,  <37.780472, 32.375896, 19.715246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359188, 33.012375, 19.540392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088703, 32.720078, 19.502958>,  <36.926414, 32.544701, 19.480499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088703, 32.720078, 19.502958>,  <37.359188, 33.012375, 19.540392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088703, 32.720078, 19.502958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592983, 0.464498, 0.657732,
		-0.437164, 0.500257, -0.747416,
		-0.676209, -0.730742, -0.093582,
		36.885841, 32.500854, 19.474884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739254, 33.347931, 19.720352>,  <37.359188, 33.012375, 19.540392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739254, 33.347931, 19.720352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.655151, 32.958527, 19.756289>,  <36.604691, 32.724884, 19.777851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.655151, 32.958527, 19.756289>,  <36.739254, 33.347931, 19.720352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655151, 32.958527, 19.756289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444642, 0.177062, 0.878033,
		-0.870682, 0.144661, -0.470092,
		-0.210253, -0.973510, 0.089843,
		36.592075, 32.666473, 19.783241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103996, 33.357624, 20.056440>,  <36.739254, 33.347931, 19.720352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103996, 33.357624, 20.056440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228565, 32.979935, 20.099258>,  <36.303307, 32.753323, 20.124949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.228565, 32.979935, 20.099258>,  <36.103996, 33.357624, 20.056440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228565, 32.979935, 20.099258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338954, -0.005137, 0.940789,
		-0.887765, -0.329266, -0.321648,
		0.311422, -0.944223, 0.107045,
		36.321991, 32.696667, 20.131372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626049, 33.181828, 20.387676>,  <36.103996, 33.357624, 20.056440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626049, 33.181828, 20.387676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896812, 32.897884, 20.465551>,  <36.059269, 32.727520, 20.512276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896812, 32.897884, 20.465551>,  <35.626049, 33.181828, 20.387676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896812, 32.897884, 20.465551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385840, -0.116945, 0.915123,
		-0.626839, -0.694570, -0.353052,
		0.676905, -0.709856, 0.194687,
		36.099884, 32.684929, 20.523958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.779545, 30.341818, 17.025572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.738251, 30.005510, 17.238155>,  <41.713474, 29.803726, 17.365705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.738251, 30.005510, 17.238155>,  <41.779545, 30.341818, 17.025572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738251, 30.005510, 17.238155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025048, 0.531947, 0.846407,
		-0.994342, 0.100691, -0.033856,
		-0.103235, -0.840770, 0.531459,
		41.707279, 29.753279, 17.397593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138298, 30.463419, 17.432335>,  <41.779545, 30.341818, 17.025572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138298, 30.463419, 17.432335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.416286, 30.225107, 17.593365>,  <41.583080, 30.082121, 17.689983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.416286, 30.225107, 17.593365>,  <41.138298, 30.463419, 17.432335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416286, 30.225107, 17.593365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029126, 0.582746, 0.812133,
		-0.718451, -0.552680, 0.422342,
		0.694967, -0.595779, 0.402577,
		41.624775, 30.046373, 17.714138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949650, 30.413847, 18.200081>,  <41.138298, 30.463419, 17.432335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949650, 30.413847, 18.200081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.332928, 30.299475, 18.195887>,  <41.562893, 30.230852, 18.193369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.332928, 30.299475, 18.195887>,  <40.949650, 30.413847, 18.200081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332928, 30.299475, 18.195887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161785, 0.511204, 0.844095,
		-0.235991, -0.810502, 0.536092,
		0.958193, -0.285930, -0.010488,
		41.620384, 30.213696, 18.192739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009438, 30.213615, 18.890774>,  <40.949650, 30.413847, 18.200081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009438, 30.213615, 18.890774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.392601, 30.217192, 18.776005>,  <41.622501, 30.219337, 18.707144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.392601, 30.217192, 18.776005>,  <41.009438, 30.213615, 18.890774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392601, 30.217192, 18.776005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281681, 0.163330, 0.945505,
		0.055313, -0.986531, 0.153938,
		0.957913, 0.008937, -0.286921,
		41.679974, 30.219873, 18.689928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346420, 29.780094, 19.358175>,  <41.009438, 30.213615, 18.890774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346420, 29.780094, 19.358175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.600548, 30.040295, 19.191698>,  <41.753025, 30.196415, 19.091812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.600548, 30.040295, 19.191698>,  <41.346420, 29.780094, 19.358175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600548, 30.040295, 19.191698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404060, 0.179268, 0.896994,
		0.658107, -0.738045, -0.148949,
		0.635320, 0.650502, -0.416192,
		41.791145, 30.235445, 19.066841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960651, 29.686428, 19.709620>,  <41.346420, 29.780094, 19.358175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960651, 29.686428, 19.709620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.019630, 30.046419, 19.545521>,  <42.055019, 30.262413, 19.447062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.019630, 30.046419, 19.545521>,  <41.960651, 29.686428, 19.709620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019630, 30.046419, 19.545521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506125, 0.287706, 0.813058,
		0.849763, -0.327519, -0.413079,
		0.147446, 0.899976, -0.410247,
		42.063866, 30.316412, 19.422447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763973, 29.925049, 19.681890>,  <41.960651, 29.686428, 19.709620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763973, 29.925049, 19.681890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.546879, 30.260897, 19.673107>,  <42.416622, 30.462406, 19.667837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.546879, 30.260897, 19.673107>,  <42.763973, 29.925049, 19.681890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546879, 30.260897, 19.673107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532226, 0.364023, 0.764345,
		0.649752, 0.403147, -0.644434,
		-0.542732, 0.839619, -0.021959,
		42.384060, 30.512783, 19.666519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198524, 30.357239, 20.017151>,  <42.763973, 29.925049, 19.681890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198524, 30.357239, 20.017151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.881943, 30.600313, 19.990877>,  <42.691994, 30.746159, 19.975113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.881943, 30.600313, 19.990877>,  <43.198524, 30.357239, 20.017151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881943, 30.600313, 19.990877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231144, 0.397048, 0.888215,
		0.565837, 0.687799, -0.454709,
		-0.791455, 0.607688, -0.065684,
		42.644505, 30.782619, 19.971172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454037, 31.169455, 20.084431>,  <43.198524, 30.357239, 20.017151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454037, 31.169455, 20.084431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.068764, 31.115011, 20.177177>,  <42.837601, 31.082346, 20.232826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.068764, 31.115011, 20.177177>,  <43.454037, 31.169455, 20.084431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068764, 31.115011, 20.177177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111224, 0.583439, 0.804505,
		-0.244781, 0.800670, -0.546818,
		-0.963178, -0.136108, 0.231869,
		42.779812, 31.074179, 20.246738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238194, 31.943804, 20.226332>,  <43.454037, 31.169455, 20.084431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238194, 31.943804, 20.226332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.968590, 31.685072, 20.369061>,  <42.806828, 31.529833, 20.454699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.968590, 31.685072, 20.369061>,  <43.238194, 31.943804, 20.226332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968590, 31.685072, 20.369061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074492, 0.540076, 0.838313,
		-0.734957, 0.538451, -0.412199,
		-0.674010, -0.646830, 0.356822,
		42.766388, 31.491022, 20.476107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565186, 32.358940, 20.297791>,  <43.238194, 31.943804, 20.226332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565186, 32.358940, 20.297791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.539742, 32.040207, 20.538130>,  <42.524475, 31.848969, 20.682333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.539742, 32.040207, 20.538130>,  <42.565186, 32.358940, 20.297791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539742, 32.040207, 20.538130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116865, 0.603871, 0.788468,
		-0.991109, -0.020066, -0.131531,
		-0.063606, -0.796829, 0.600847,
		42.520660, 31.801159, 20.718384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105095, 32.566288, 20.752295>,  <42.565186, 32.358940, 20.297791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105095, 32.566288, 20.752295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.284008, 32.267410, 20.948921>,  <42.391357, 32.088085, 21.066896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.284008, 32.267410, 20.948921>,  <42.105095, 32.566288, 20.752295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284008, 32.267410, 20.948921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197597, 0.453473, 0.869090,
		-0.872291, -0.485862, 0.055188,
		0.447284, -0.747195, 0.491565,
		42.418194, 32.043251, 21.096392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260796, 32.701973, 20.669214>,  <42.105095, 32.566288, 20.752295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260796, 32.701973, 20.669214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.343102, 33.063087, 20.518148>,  <41.392483, 33.279758, 20.427509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.343102, 33.063087, 20.518148>,  <41.260796, 32.701973, 20.669214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343102, 33.063087, 20.518148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170022, -0.413035, -0.894704,
		-0.963719, 0.119886, -0.238481,
		0.205763, 0.902790, -0.377666,
		41.404831, 33.333923, 20.404848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727127, 32.904781, 20.094318>,  <41.260796, 32.701973, 20.669214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727127, 32.904781, 20.094318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059658, 33.120716, 20.041447>,  <41.259174, 33.250278, 20.009724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059658, 33.120716, 20.041447>,  <40.727127, 32.904781, 20.094318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059658, 33.120716, 20.041447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066271, -0.139844, -0.987953,
		-0.551822, 0.830069, -0.080481,
		0.831325, 0.539841, -0.132178,
		41.309055, 33.282669, 20.001793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549786, 33.412903, 19.661888>,  <40.727127, 32.904781, 20.094318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549786, 33.412903, 19.661888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.946236, 33.373310, 19.626385>,  <41.184105, 33.349552, 19.605082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.946236, 33.373310, 19.626385>,  <40.549786, 33.412903, 19.661888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946236, 33.373310, 19.626385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101831, -0.135941, -0.985470,
		0.085480, 0.985760, -0.144814,
		0.991122, -0.098984, -0.088760,
		41.243572, 33.343616, 19.599756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684509, 33.765282, 19.110397>,  <40.549786, 33.412903, 19.661888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684509, 33.765282, 19.110397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.038582, 33.580750, 19.134472>,  <41.251026, 33.470032, 19.148916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.038582, 33.580750, 19.134472>,  <40.684509, 33.765282, 19.110397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038582, 33.580750, 19.134472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029327, -0.184443, -0.982406,
		0.464312, 0.867847, -0.176796,
		0.885186, -0.461328, 0.060187,
		41.304138, 33.442352, 19.152529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179531, 34.094685, 18.531933>,  <40.684509, 33.765282, 19.110397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179531, 34.094685, 18.531933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.374325, 33.760185, 18.632761>,  <41.491203, 33.559486, 18.693258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.374325, 33.760185, 18.632761>,  <41.179531, 34.094685, 18.531933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374325, 33.760185, 18.632761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146879, -0.206081, -0.967449,
		0.860969, 0.508160, 0.022468,
		0.486989, -0.836244, 0.252068,
		41.520420, 33.509312, 18.708382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906925, 34.104988, 18.167698>,  <41.179531, 34.094685, 18.531933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906925, 34.104988, 18.167698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.827530, 33.723621, 18.258556>,  <41.779892, 33.494801, 18.313072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.827530, 33.723621, 18.258556>,  <41.906925, 34.104988, 18.167698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827530, 33.723621, 18.258556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130945, -0.255478, -0.957906,
		0.971317, -0.160389, 0.175555,
		-0.198488, -0.953419, 0.227148,
		41.767982, 33.437595, 18.326700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399647, 33.753593, 17.779984>,  <41.906925, 34.104988, 18.167698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399647, 33.753593, 17.779984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.156818, 33.446934, 17.863609>,  <42.011120, 33.262936, 17.913784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.156818, 33.446934, 17.863609>,  <42.399647, 33.753593, 17.779984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156818, 33.446934, 17.863609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001764, -0.264391, -0.964414,
		0.794646, -0.585099, 0.161856,
		-0.607071, -0.766653, 0.209065,
		41.974697, 33.216938, 17.926329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632084, 33.068359, 17.464315>,  <42.399647, 33.753593, 17.779984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632084, 33.068359, 17.464315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.240910, 33.006947, 17.520988>,  <42.006207, 32.970100, 17.554993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.240910, 33.006947, 17.520988>,  <42.632084, 33.068359, 17.464315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240910, 33.006947, 17.520988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086996, -0.317319, -0.944320,
		0.189938, -0.935809, 0.296961,
		-0.977934, -0.153528, 0.141683,
		41.947529, 32.960888, 17.563494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554928, 32.545452, 17.062857>,  <42.632084, 33.068359, 17.464315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554928, 32.545452, 17.062857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.180164, 32.680088, 17.100613>,  <41.955307, 32.760868, 17.123266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.180164, 32.680088, 17.100613>,  <42.554928, 32.545452, 17.062857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180164, 32.680088, 17.100613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190836, -0.266237, -0.944828,
		-0.292901, -0.903226, 0.313674,
		-0.936905, 0.336602, 0.094387,
		41.899090, 32.781063, 17.128929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183777, 32.069695, 16.855288>,  <42.554928, 32.545452, 17.062857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183777, 32.069695, 16.855288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905762, 32.356533, 16.834478>,  <41.738953, 32.528637, 16.821993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.905762, 32.356533, 16.834478>,  <42.183777, 32.069695, 16.855288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905762, 32.356533, 16.834478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375639, -0.423872, -0.824153,
		-0.613045, -0.553272, 0.563973,
		-0.695033, 0.717093, -0.052022,
		41.697250, 32.571659, 16.818872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422565, 31.748821, 16.740223>,  <42.183777, 32.069695, 16.855288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422565, 31.748821, 16.740223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.434071, 32.129547, 16.618092>,  <41.440971, 32.357983, 16.544813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.434071, 32.129547, 16.618092>,  <41.422565, 31.748821, 16.740223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434071, 32.129547, 16.618092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343661, -0.277418, -0.897183,
		-0.938653, 0.130731, 0.319122,
		0.028759, 0.951813, -0.305326,
		41.442699, 32.415092, 16.526493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885525, 31.833151, 16.387177>,  <41.422565, 31.748821, 16.740223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885525, 31.833151, 16.387177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.083958, 32.138775, 16.222195>,  <41.203018, 32.322151, 16.123205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.083958, 32.138775, 16.222195>,  <40.885525, 31.833151, 16.387177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083958, 32.138775, 16.222195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353990, -0.255782, -0.899592,
		-0.792842, 0.592272, 0.143582,
		0.496078, 0.764061, -0.412453,
		41.232780, 32.367992, 16.098459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471767, 32.140850, 15.943764>,  <40.885525, 31.833151, 16.387177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471767, 32.140850, 15.943764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.823780, 32.284157, 15.819058>,  <41.034988, 32.370140, 15.744235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.823780, 32.284157, 15.819058>,  <40.471767, 32.140850, 15.943764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823780, 32.284157, 15.819058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323385, -0.028715, -0.945832,
		-0.347810, 0.933178, 0.090588,
		0.880028, 0.358265, -0.311763,
		41.087788, 32.391636, 15.725530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311050, 32.262192, 16.747320>,  <40.471767, 32.140850, 15.943764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311050, 32.262192, 16.747320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.978542, 32.178871, 16.541172>,  <39.779037, 32.128880, 16.417482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.978542, 32.178871, 16.541172>,  <40.311050, 32.262192, 16.747320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978542, 32.178871, 16.541172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555225, 0.355938, 0.751687,
		0.026863, 0.910999, -0.411533,
		-0.831266, -0.208301, -0.515371,
		39.729164, 32.116383, 16.386560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828358, 32.892403, 16.778780>,  <40.311050, 32.262192, 16.747320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828358, 32.892403, 16.778780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.600384, 32.575409, 16.691938>,  <39.463600, 32.385212, 16.639833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.600384, 32.575409, 16.691938>,  <39.828358, 32.892403, 16.778780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600384, 32.575409, 16.691938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674638, 0.300477, 0.674223,
		-0.469079, 0.530731, -0.705896,
		-0.569937, -0.792488, -0.217104,
		39.429401, 32.337662, 16.626806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027462, 33.119801, 16.802835>,  <39.828358, 32.892403, 16.778780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027462, 33.119801, 16.802835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027061, 32.719803, 16.801220>,  <39.026821, 32.479805, 16.800251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.027061, 32.719803, 16.801220>,  <39.027462, 33.119801, 16.802835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027061, 32.719803, 16.801220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647131, -0.002434, 0.762375,
		-0.762378, 0.003374, -0.647123,
		-0.000997, -0.999992, -0.004040,
		39.026764, 32.419804, 16.800009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337280, 32.802013, 16.742846>,  <39.027462, 33.119801, 16.802835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337280, 32.802013, 16.742846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.561531, 32.542297, 16.948418>,  <38.696083, 32.386467, 17.071760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.561531, 32.542297, 16.948418>,  <38.337280, 32.802013, 16.742846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561531, 32.542297, 16.948418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760960, -0.159207, 0.628962,
		-0.326555, -0.743693, -0.583338,
		0.560626, -0.649287, 0.513930,
		38.729717, 32.347511, 17.102596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855164, 32.488499, 17.124357>,  <38.337280, 32.802013, 16.742846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855164, 32.488499, 17.124357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.177830, 32.294884, 17.260002>,  <38.371429, 32.178715, 17.341389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.177830, 32.294884, 17.260002>,  <37.855164, 32.488499, 17.124357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177830, 32.294884, 17.260002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537057, -0.360849, 0.762468,
		-0.246694, -0.797181, -0.551040,
		0.806667, -0.484036, 0.339112,
		38.419830, 32.149673, 17.361734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703915, 31.746881, 17.161526>,  <37.855164, 32.488499, 17.124357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703915, 31.746881, 17.161526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.002937, 31.829967, 17.413877>,  <38.182350, 31.879818, 17.565289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.002937, 31.829967, 17.413877>,  <37.703915, 31.746881, 17.161526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002937, 31.829967, 17.413877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539547, -0.364028, 0.759192,
		0.387352, -0.907931, -0.160062,
		0.747561, 0.207713, 0.630879,
		38.227207, 31.892281, 17.603142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808365, 31.124393, 17.574492>,  <37.703915, 31.746881, 17.161526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808365, 31.124393, 17.574492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.935070, 31.448372, 17.771935>,  <38.011093, 31.642759, 17.890400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.935070, 31.448372, 17.771935>,  <37.808365, 31.124393, 17.574492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935070, 31.448372, 17.771935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634870, -0.205587, 0.744764,
		0.704698, -0.549291, 0.449088,
		0.316766, 0.809947, 0.493606,
		38.030098, 31.691357, 17.920015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842022, 30.878716, 18.311651>,  <37.808365, 31.124393, 17.574492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842022, 30.878716, 18.311651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.830082, 31.278530, 18.309357>,  <37.822918, 31.518419, 18.307980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.830082, 31.278530, 18.309357>,  <37.842022, 30.878716, 18.311651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830082, 31.278530, 18.309357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649630, -0.015039, 0.760102,
		0.759664, 0.026414, 0.649779,
		-0.029849, 0.999538, -0.005734,
		37.821129, 31.578392, 18.307636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906647, 30.248077, 18.700169>,  <37.842022, 30.878716, 18.311651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906647, 30.248077, 18.700169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.717594, 29.902483, 18.769615>,  <37.604160, 29.695126, 18.811283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.717594, 29.902483, 18.769615>,  <37.906647, 30.248077, 18.700169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717594, 29.902483, 18.769615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262407, -0.326049, -0.908204,
		0.841284, -0.383692, 0.380818,
		-0.472636, -0.863987, 0.173617,
		37.575802, 29.643288, 18.821701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400249, 29.737904, 18.574379>,  <37.906647, 30.248077, 18.700169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400249, 29.737904, 18.574379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.044857, 29.560293, 18.527996>,  <37.831623, 29.453728, 18.500166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.044857, 29.560293, 18.527996>,  <38.400249, 29.737904, 18.574379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044857, 29.560293, 18.527996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314224, -0.404457, -0.858881,
		0.334465, -0.799535, 0.498875,
		-0.888479, -0.444025, -0.115956,
		37.778313, 29.427086, 18.493210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625408, 29.121523, 18.419794>,  <38.400249, 29.737904, 18.574379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625408, 29.121523, 18.419794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.257038, 29.168516, 18.271152>,  <38.036015, 29.196712, 18.181969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.257038, 29.168516, 18.271152>,  <38.625408, 29.121523, 18.419794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257038, 29.168516, 18.271152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296378, -0.408059, -0.863509,
		-0.253082, -0.905365, 0.340974,
		-0.920929, 0.117481, -0.371603,
		37.980759, 29.203760, 18.159672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686142, 28.643764, 18.062981>,  <38.625408, 29.121523, 18.419794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686142, 28.643764, 18.062981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.347603, 28.814787, 17.935926>,  <38.144478, 28.917400, 17.859694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.347603, 28.814787, 17.935926>,  <38.686142, 28.643764, 18.062981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347603, 28.814787, 17.935926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112029, -0.440112, -0.890927,
		-0.520716, -0.789618, 0.324589,
		-0.846348, 0.427556, -0.317634,
		38.093697, 28.943054, 17.840637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126476, 28.175703, 17.968441>,  <38.686142, 28.643764, 18.062981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126476, 28.175703, 17.968441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027008, 28.479261, 17.727695>,  <37.967327, 28.661396, 17.583248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.027008, 28.479261, 17.727695>,  <38.126476, 28.175703, 17.968441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027008, 28.479261, 17.727695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121101, -0.640867, -0.758039,
		-0.960988, -0.115615, 0.251267,
		-0.248669, 0.758895, -0.601865,
		37.952408, 28.706930, 17.547136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526070, 27.938400, 17.653730>,  <38.126476, 28.175703, 17.968441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526070, 27.938400, 17.653730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685547, 28.221958, 17.421003>,  <37.781235, 28.392094, 17.281368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.685547, 28.221958, 17.421003>,  <37.526070, 27.938400, 17.653730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685547, 28.221958, 17.421003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041360, -0.619876, -0.783609,
		-0.916150, 0.336485, -0.217821,
		0.398695, 0.708895, -0.581817,
		37.805157, 28.434626, 17.246458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076900, 28.057394, 17.059258>,  <37.526070, 27.938400, 17.653730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076900, 28.057394, 17.059258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.429821, 28.193882, 16.929575>,  <37.641575, 28.275776, 16.851765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.429821, 28.193882, 16.929575>,  <37.076900, 28.057394, 17.059258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429821, 28.193882, 16.929575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007641, -0.678327, -0.734721,
		-0.470621, 0.650723, -0.595882,
		0.882303, 0.341222, -0.324207,
		37.694511, 28.296249, 16.832314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040504, 27.966513, 16.398260>,  <37.076900, 28.057394, 17.059258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040504, 27.966513, 16.398260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.435406, 28.018326, 16.435244>,  <37.672348, 28.049414, 16.457434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.435406, 28.018326, 16.435244>,  <37.040504, 27.966513, 16.398260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435406, 28.018326, 16.435244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158568, -0.751243, -0.640695,
		-0.013532, 0.647191, -0.762208,
		0.987255, 0.129532, 0.092458,
		37.731583, 28.057186, 16.462980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256344, 28.148468, 15.683914>,  <37.040504, 27.966513, 16.398260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256344, 28.148468, 15.683914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544094, 27.970118, 15.896968>,  <37.716743, 27.863108, 16.024799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.544094, 27.970118, 15.896968>,  <37.256344, 28.148468, 15.683914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544094, 27.970118, 15.896968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187834, -0.613362, -0.767141,
		0.668746, 0.651907, -0.357486,
		0.719373, -0.445874, 0.532634,
		37.759907, 27.836355, 16.056759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.096848, 34.866249, 30.913412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337677, 34.546906, 30.917822>,  <36.482174, 34.355297, 30.920467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337677, 34.546906, 30.917822>,  <36.096848, 34.866249, 30.913412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337677, 34.546906, 30.917822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326861, -0.259047, -0.908876,
		0.728468, 0.543610, -0.416920,
		0.602076, -0.798362, 0.011023,
		36.518299, 34.307396, 30.921129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305584, 34.907257, 30.248789>,  <36.096848, 34.866249, 30.913412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305584, 34.907257, 30.248789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402222, 34.531433, 30.345829>,  <36.460205, 34.305939, 30.404053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402222, 34.531433, 30.345829>,  <36.305584, 34.907257, 30.248789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402222, 34.531433, 30.345829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266843, -0.304692, -0.914307,
		0.932967, 0.156156, -0.324327,
		0.241594, -0.939563, 0.242599,
		36.474701, 34.249565, 30.418608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571758, 34.734303, 29.677332>,  <36.305584, 34.907257, 30.248789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571758, 34.734303, 29.677332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513805, 34.387512, 29.868059>,  <36.479034, 34.179436, 29.982494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513805, 34.387512, 29.868059>,  <36.571758, 34.734303, 29.677332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513805, 34.387512, 29.868059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110601, -0.464690, -0.878539,
		0.983247, -0.180025, -0.028561,
		-0.144886, -0.866980, 0.476816,
		36.470341, 34.127419, 30.011105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097507, 34.168343, 29.495142>,  <36.571758, 34.734303, 29.677332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097507, 34.168343, 29.495142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798405, 33.928749, 29.609741>,  <36.618942, 33.784992, 29.678501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798405, 33.928749, 29.609741>,  <37.097507, 34.168343, 29.495142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798405, 33.928749, 29.609741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116404, -0.543066, -0.831582,
		0.653691, -0.588470, 0.475805,
		-0.747755, -0.598984, 0.286497,
		36.574078, 33.749054, 29.695690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217541, 33.486172, 29.267910>,  <37.097507, 34.168343, 29.495142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217541, 33.486172, 29.267910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823784, 33.454979, 29.331013>,  <36.587528, 33.436264, 29.368874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823784, 33.454979, 29.331013>,  <37.217541, 33.486172, 29.267910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823784, 33.454979, 29.331013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093925, -0.525270, -0.845736,
		0.148818, -0.847355, 0.509748,
		-0.984394, -0.077983, 0.157757,
		36.528465, 33.431583, 29.378340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981213, 32.806168, 29.180281>,  <37.217541, 33.486172, 29.267910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981213, 32.806168, 29.180281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633148, 33.000195, 29.145559>,  <36.424309, 33.116611, 29.124727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633148, 33.000195, 29.145559>,  <36.981213, 32.806168, 29.180281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633148, 33.000195, 29.145559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206798, -0.519353, -0.829160,
		-0.447275, -0.703553, 0.552231,
		-0.870161, 0.485063, -0.086800,
		36.372101, 33.145714, 29.119518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613670, 32.286919, 28.923964>,  <36.981213, 32.806168, 29.180281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613670, 32.286919, 28.923964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411427, 32.619827, 28.833033>,  <36.290081, 32.819572, 28.778473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411427, 32.619827, 28.833033>,  <36.613670, 32.286919, 28.923964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411427, 32.619827, 28.833033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251743, -0.394340, -0.883811,
		-0.825219, -0.389633, 0.408901,
		-0.505608, 0.832275, -0.227329,
		36.259743, 32.869511, 28.764833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922546, 32.144165, 28.769314>,  <36.613670, 32.286919, 28.923964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922546, 32.144165, 28.769314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028301, 32.478527, 28.576914>,  <36.091755, 32.679146, 28.461473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028301, 32.478527, 28.576914>,  <35.922546, 32.144165, 28.769314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028301, 32.478527, 28.576914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317278, -0.395596, -0.861880,
		-0.910734, 0.380477, 0.160626,
		0.264383, 0.835907, -0.481000,
		36.107616, 32.729298, 28.432613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508591, 32.091084, 28.128010>,  <35.922546, 32.144165, 28.769314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508591, 32.091084, 28.128010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755127, 32.394035, 28.041748>,  <35.903049, 32.575806, 27.989990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755127, 32.394035, 28.041748>,  <35.508591, 32.091084, 28.128010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755127, 32.394035, 28.041748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211996, -0.104165, -0.971703,
		-0.758410, 0.644615, 0.096361,
		0.616337, 0.757378, -0.215656,
		35.940029, 32.621250, 27.977051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220680, 32.325005, 27.595470>,  <35.508591, 32.091084, 28.128010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220680, 32.325005, 27.595470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574379, 32.508163, 27.558725>,  <35.786598, 32.618061, 27.536678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574379, 32.508163, 27.558725>,  <35.220680, 32.325005, 27.595470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574379, 32.508163, 27.558725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058829, -0.085927, -0.994563,
		-0.463306, 0.884840, -0.049043,
		0.884244, 0.457902, -0.091865,
		35.839653, 32.645535, 27.531166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184063, 32.855240, 27.067783>,  <35.220680, 32.325005, 27.595470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184063, 32.855240, 27.067783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569275, 32.749138, 27.086636>,  <35.800400, 32.685478, 27.097946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569275, 32.749138, 27.086636>,  <35.184063, 32.855240, 27.067783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569275, 32.749138, 27.086636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047544, -0.339530, -0.939393,
		0.265178, 0.902419, -0.339588,
		0.963026, -0.265252, 0.047131,
		35.858181, 32.669563, 27.100775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449829, 33.114826, 26.495039>,  <35.184063, 32.855240, 27.067783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449829, 33.114826, 26.495039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715252, 32.837456, 26.607363>,  <35.874508, 32.671036, 26.674757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.715252, 32.837456, 26.607363>,  <35.449829, 33.114826, 26.495039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715252, 32.837456, 26.607363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058489, -0.422285, -0.904574,
		0.745833, 0.583815, -0.320769,
		0.663560, -0.693423, 0.280807,
		35.914322, 32.629429, 26.691605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670956, 33.881001, 26.388716>,  <35.449829, 33.114826, 26.495039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670956, 33.881001, 26.388716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407383, 34.137043, 26.230688>,  <35.249241, 34.290668, 26.135872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.407383, 34.137043, 26.230688>,  <35.670956, 33.881001, 26.388716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407383, 34.137043, 26.230688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012571, 0.534510, 0.845069,
		0.752099, 0.551875, -0.360251,
		-0.658930, 0.640105, -0.395067,
		35.209705, 34.329075, 26.112167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950623, 34.594074, 26.613977>,  <35.670956, 33.881001, 26.388716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950623, 34.594074, 26.613977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554344, 34.592804, 26.559565>,  <35.316578, 34.592041, 26.526917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554344, 34.592804, 26.559565>,  <35.950623, 34.594074, 26.613977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554344, 34.592804, 26.559565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106536, 0.640024, 0.760933,
		0.084645, 0.768348, -0.634411,
		-0.990699, -0.003178, -0.136032,
		35.257133, 34.591850, 26.518755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804184, 35.202354, 26.507839>,  <35.950623, 34.594074, 26.613977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804184, 35.202354, 26.507839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446339, 35.049961, 26.601234>,  <35.231632, 34.958527, 26.657272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446339, 35.049961, 26.601234>,  <35.804184, 35.202354, 26.507839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446339, 35.049961, 26.601234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138162, 0.732773, 0.666300,
		-0.424942, 0.563822, -0.708187,
		-0.894615, -0.380983, 0.233487,
		35.177956, 34.935665, 26.671280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343197, 35.678017, 26.438868>,  <35.804184, 35.202354, 26.507839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343197, 35.678017, 26.438868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188515, 35.440357, 26.720989>,  <35.095707, 35.297764, 26.890263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188515, 35.440357, 26.720989>,  <35.343197, 35.678017, 26.438868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188515, 35.440357, 26.720989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141545, 0.793978, 0.591239,
		-0.911276, 0.128803, -0.391134,
		-0.386705, -0.594145, 0.705302,
		35.072502, 35.262115, 26.932579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819672, 36.113155, 26.701809>,  <35.343197, 35.678017, 26.438868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819672, 36.113155, 26.701809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794365, 35.828007, 26.981184>,  <34.779179, 35.656918, 27.148809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.794365, 35.828007, 26.981184>,  <34.819672, 36.113155, 26.701809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794365, 35.828007, 26.981184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202960, 0.694405, 0.690368,
		-0.977141, -0.098075, -0.188619,
		-0.063270, -0.712869, 0.698437,
		34.775383, 35.614147, 27.190716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155857, 36.186008, 27.088770>,  <34.819672, 36.113155, 26.701809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155857, 36.186008, 27.088770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357376, 35.947372, 27.338657>,  <34.478287, 35.804192, 27.488590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357376, 35.947372, 27.338657>,  <34.155857, 36.186008, 27.088770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357376, 35.947372, 27.338657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351280, 0.519210, 0.779117,
		-0.789170, -0.611968, 0.052008,
		0.503798, -0.596587, 0.624718,
		34.508514, 35.768398, 27.526073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708103, 36.118027, 27.707384>,  <34.155857, 36.186008, 27.088770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708103, 36.118027, 27.707384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080788, 36.022274, 27.816645>,  <34.304398, 35.964821, 27.882202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080788, 36.022274, 27.816645>,  <33.708103, 36.118027, 27.707384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080788, 36.022274, 27.816645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108311, 0.534721, 0.838059,
		-0.346679, -0.810413, 0.472276,
		0.931709, -0.239385, 0.273153,
		34.360302, 35.950459, 27.898590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707638, 35.899990, 28.424963>,  <33.708103, 36.118027, 27.707384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707638, 35.899990, 28.424963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086208, 36.018890, 28.374493>,  <34.313351, 36.090229, 28.344210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.086208, 36.018890, 28.374493>,  <33.707638, 35.899990, 28.424963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086208, 36.018890, 28.374493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040537, 0.497006, 0.866800,
		0.320366, -0.815247, 0.482429,
		0.946426, 0.297249, -0.126176,
		34.370136, 36.108067, 28.336639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034103, 35.759315, 29.086981>,  <33.707638, 35.899990, 28.424963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034103, 35.759315, 29.086981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254974, 36.039219, 28.905680>,  <34.387497, 36.207161, 28.796900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254974, 36.039219, 28.905680>,  <34.034103, 35.759315, 29.086981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254974, 36.039219, 28.905680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059757, 0.509030, 0.858672,
		0.831580, -0.501228, 0.239261,
		0.552181, 0.699756, -0.453251,
		34.420628, 36.249146, 28.769705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510075, 35.892162, 29.618599>,  <34.034103, 35.759315, 29.086981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510075, 35.892162, 29.618599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540966, 36.201702, 29.367142>,  <34.559502, 36.387428, 29.216269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.540966, 36.201702, 29.367142>,  <34.510075, 35.892162, 29.618599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540966, 36.201702, 29.367142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298602, 0.583629, 0.755125,
		0.951248, -0.246030, -0.186002,
		0.077227, 0.773851, -0.628641,
		34.564133, 36.433857, 29.178549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225403, 36.146564, 29.653112>,  <34.510075, 35.892162, 29.618599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225403, 36.146564, 29.653112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040455, 36.469681, 29.506857>,  <34.929485, 36.663551, 29.419104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040455, 36.469681, 29.506857>,  <35.225403, 36.146564, 29.653112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040455, 36.469681, 29.506857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506036, 0.579008, 0.639278,
		0.728110, 0.110555, -0.676485,
		-0.462366, 0.807791, -0.365637,
		34.901745, 36.712017, 29.397165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727566, 36.689899, 29.569368>,  <35.225403, 36.146564, 29.653112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727566, 36.689899, 29.569368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395267, 36.912289, 29.580427>,  <35.195889, 37.045723, 29.587063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395267, 36.912289, 29.580427>,  <35.727566, 36.689899, 29.569368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395267, 36.912289, 29.580427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457828, 0.654158, 0.602055,
		0.316640, 0.512809, -0.797976,
		-0.830742, 0.555971, 0.027646,
		35.146046, 37.079079, 29.588720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915375, 37.457176, 29.450363>,  <35.727566, 36.689899, 29.569368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915375, 37.457176, 29.450363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560566, 37.481236, 29.633478>,  <35.347679, 37.495670, 29.743347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.560566, 37.481236, 29.633478>,  <35.915375, 37.457176, 29.450363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560566, 37.481236, 29.633478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347872, 0.738999, 0.576945,
		-0.303600, 0.671015, -0.676436,
		-0.887024, 0.060152, 0.457788,
		35.294460, 37.499283, 29.770815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545067, 37.746544, 29.613466>,  <35.915375, 37.457176, 29.450363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545067, 37.746544, 29.613466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.637650, 38.135578, 29.604401>,  <36.693199, 38.368999, 29.598961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.637650, 38.135578, 29.604401>,  <36.545067, 37.746544, 29.613466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637650, 38.135578, 29.604401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638357, -0.169413, -0.750867,
		-0.734119, 0.159323, -0.660065,
		0.231453, 0.972582, -0.022664,
		36.707085, 38.427353, 29.597601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569923, 37.933357, 28.902180>,  <36.545067, 37.746544, 29.613466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569923, 37.933357, 28.902180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791840, 38.186485, 29.118231>,  <36.924992, 38.338364, 29.247862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.791840, 38.186485, 29.118231>,  <36.569923, 37.933357, 28.902180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791840, 38.186485, 29.118231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739814, -0.078228, -0.668248,
		-0.380630, 0.770334, -0.511572,
		0.554794, 0.632823, 0.540128,
		36.958279, 38.376331, 29.280270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736084, 38.575500, 28.505808>,  <36.569923, 37.933357, 28.902180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736084, 38.575500, 28.505808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995934, 38.433487, 28.774714>,  <37.151844, 38.348278, 28.936058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995934, 38.433487, 28.774714>,  <36.736084, 38.575500, 28.505808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995934, 38.433487, 28.774714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680463, -0.122834, -0.722414,
		0.339058, 0.926749, 0.161792,
		0.649622, -0.355033, 0.672266,
		37.190819, 38.326977, 28.976393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328014, 39.039207, 28.438303>,  <36.736084, 38.575500, 28.505808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328014, 39.039207, 28.438303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403454, 38.666866, 28.563490>,  <37.448719, 38.443462, 28.638603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.403454, 38.666866, 28.563490>,  <37.328014, 39.039207, 28.438303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403454, 38.666866, 28.563490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569569, -0.155933, -0.807017,
		0.800013, 0.330462, 0.500774,
		0.188601, -0.930849, 0.312969,
		37.460033, 38.387611, 28.657381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015976, 38.972958, 28.431726>,  <37.328014, 39.039207, 28.438303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015976, 38.972958, 28.431726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.894024, 38.593876, 28.469460>,  <37.820854, 38.366425, 28.492100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.894024, 38.593876, 28.469460>,  <38.015976, 38.972958, 28.431726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894024, 38.593876, 28.469460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531835, -0.251580, -0.808616,
		0.790064, -0.196360, 0.580726,
		-0.304879, -0.947708, 0.094333,
		37.802559, 38.309563, 28.497759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523457, 38.442875, 28.583420>,  <38.015976, 38.972958, 28.431726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523457, 38.442875, 28.583420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222843, 38.286102, 28.371164>,  <38.042473, 38.192039, 28.243811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.222843, 38.286102, 28.371164>,  <38.523457, 38.442875, 28.583420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222843, 38.286102, 28.371164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645408, -0.270354, -0.714393,
		0.136534, -0.879373, 0.456138,
		-0.751537, -0.391934, -0.530641,
		37.997383, 38.168522, 28.211971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817799, 37.982010, 28.236782>,  <38.523457, 38.442875, 28.583420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817799, 37.982010, 28.236782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485802, 37.938156, 28.018024>,  <38.286602, 37.911842, 27.886770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485802, 37.938156, 28.018024>,  <38.817799, 37.982010, 28.236782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485802, 37.938156, 28.018024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555614, -0.248722, -0.793367,
		-0.049046, -0.962350, 0.267351,
		-0.829992, -0.109633, -0.546894,
		38.236805, 37.905266, 27.853956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831253, 37.330883, 27.997786>,  <38.817799, 37.982010, 28.236782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831253, 37.330883, 27.997786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575821, 37.522816, 27.757130>,  <38.422562, 37.637978, 27.612736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575821, 37.522816, 27.757130>,  <38.831253, 37.330883, 27.997786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575821, 37.522816, 27.757130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223413, -0.632535, -0.741610,
		-0.736409, -0.607993, 0.296724,
		-0.638583, 0.479836, -0.601639,
		38.384247, 37.666767, 27.576637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379307, 36.823021, 27.693073>,  <38.831253, 37.330883, 27.997786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379307, 36.823021, 27.693073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359417, 37.141609, 27.452023>,  <38.347481, 37.332764, 27.307392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.359417, 37.141609, 27.452023>,  <38.379307, 36.823021, 27.693073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359417, 37.141609, 27.452023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264561, -0.571316, -0.776921,
		-0.963086, -0.198066, -0.182305,
		-0.049727, 0.796472, -0.602627,
		38.344498, 37.380550, 27.271235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060200, 36.578823, 27.143286>,  <38.379307, 36.823021, 27.693073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060200, 36.578823, 27.143286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.241631, 36.908829, 27.008459>,  <38.350491, 37.106834, 26.927563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.241631, 36.908829, 27.008459>,  <38.060200, 36.578823, 27.143286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241631, 36.908829, 27.008459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313556, -0.501757, -0.806178,
		-0.834234, 0.259978, -0.486276,
		0.453581, 0.825016, -0.337065,
		38.377705, 37.156334, 26.907339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926071, 36.550526, 26.489422>,  <38.060200, 36.578823, 27.143286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926071, 36.550526, 26.489422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.236202, 36.801121, 26.521355>,  <38.422283, 36.951477, 26.540514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.236202, 36.801121, 26.521355>,  <37.926071, 36.550526, 26.489422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236202, 36.801121, 26.521355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301271, -0.255793, -0.918589,
		-0.555066, 0.736262, -0.387067,
		0.775331, 0.626489, 0.079832,
		38.468803, 36.989067, 26.545305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967319, 36.877796, 25.801702>,  <37.926071, 36.550526, 26.489422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967319, 36.877796, 25.801702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.325081, 36.950260, 25.965275>,  <38.539738, 36.993740, 26.063417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.325081, 36.950260, 25.965275>,  <37.967319, 36.877796, 25.801702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325081, 36.950260, 25.965275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432223, -0.115002, -0.894404,
		-0.115002, 0.976707, -0.181160,
		0.894404, 0.181160, 0.408929,
		38.593403, 37.004608, 26.087954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302700, 37.401070, 25.328899>,  <37.967319, 36.877796, 25.801702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302700, 37.401070, 25.328899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574215, 37.195480, 25.538691>,  <38.737125, 37.072128, 25.664566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.574215, 37.195480, 25.538691>,  <38.302700, 37.401070, 25.328899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574215, 37.195480, 25.538691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519535, -0.168632, -0.837643,
		0.518971, 0.841067, 0.152562,
		0.678787, -0.513974, 0.524479,
		38.777851, 37.041286, 25.696033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052933, 37.696651, 25.230854>,  <38.302700, 37.401070, 25.328899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052933, 37.696651, 25.230854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.087425, 37.320717, 25.363075>,  <39.108120, 37.095154, 25.442408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.087425, 37.320717, 25.363075>,  <39.052933, 37.696651, 25.230854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087425, 37.320717, 25.363075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487780, -0.249475, -0.836560,
		0.868697, 0.233378, 0.436921,
		0.086234, -0.939839, 0.330555,
		39.113297, 37.038765, 25.462242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763317, 37.484924, 25.111572>,  <39.052933, 37.696651, 25.230854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763317, 37.484924, 25.111572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.564659, 37.138557, 25.135368>,  <39.445465, 36.930737, 25.149645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.564659, 37.138557, 25.135368>,  <39.763317, 37.484924, 25.111572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564659, 37.138557, 25.135368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368600, -0.272467, -0.888761,
		0.785800, -0.419468, 0.454494,
		-0.496641, -0.865915, 0.059489,
		39.415668, 36.878784, 25.153215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226711, 36.998932, 24.907534>,  <39.763317, 37.484924, 25.111572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226711, 36.998932, 24.907534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.890255, 36.794090, 24.837984>,  <39.688381, 36.671185, 24.796255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.890255, 36.794090, 24.837984>,  <40.226711, 36.998932, 24.907534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890255, 36.794090, 24.837984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402401, -0.377834, -0.833855,
		0.361326, -0.771356, 0.523883,
		-0.841140, -0.512105, -0.173874,
		39.637913, 36.640457, 24.785822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517212, 36.276222, 24.784567>,  <40.226711, 36.998932, 24.907534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517212, 36.276222, 24.784567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138603, 36.273022, 24.655546>,  <39.911438, 36.271103, 24.578135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138603, 36.273022, 24.655546>,  <40.517212, 36.276222, 24.784567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138603, 36.273022, 24.655546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289517, -0.462325, -0.838114,
		-0.142417, -0.886674, 0.439916,
		-0.946518, -0.008001, -0.322550,
		39.854649, 36.270622, 24.558781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568024, 35.650658, 24.490932>,  <40.517212, 36.276222, 24.784567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568024, 35.650658, 24.490932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.226784, 35.801682, 24.346891>,  <40.022041, 35.892296, 24.260468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.226784, 35.801682, 24.346891>,  <40.568024, 35.650658, 24.490932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226784, 35.801682, 24.346891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210226, -0.382937, -0.899536,
		-0.477521, -0.843096, 0.247311,
		-0.853099, 0.377557, -0.360101,
		39.970856, 35.914948, 24.238861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051048, 35.033707, 24.219576>,  <40.568024, 35.650658, 24.490932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051048, 35.033707, 24.219576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.981590, 35.381306, 24.034237>,  <39.939915, 35.589867, 23.923035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.981590, 35.381306, 24.034237>,  <40.051048, 35.033707, 24.219576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981590, 35.381306, 24.034237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232021, -0.421150, -0.876812,
		-0.957086, -0.259759, -0.128496,
		-0.173644, 0.868998, -0.463346,
		39.929497, 35.642006, 23.895233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604107, 34.931782, 23.764748>,  <40.051048, 35.033707, 24.219576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604107, 34.931782, 23.764748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.739162, 35.273399, 23.606451>,  <39.820198, 35.478371, 23.511473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.739162, 35.273399, 23.606451>,  <39.604107, 34.931782, 23.764748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739162, 35.273399, 23.606451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060304, -0.399941, -0.914554,
		-0.939340, 0.332658, -0.083535,
		0.337644, 0.854040, -0.395742,
		39.840454, 35.529610, 23.487728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343433, 34.975540, 23.045225>,  <39.604107, 34.931782, 23.764748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343433, 34.975540, 23.045225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.657303, 35.222660, 23.024788>,  <39.845623, 35.370930, 23.012526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.657303, 35.222660, 23.024788>,  <39.343433, 34.975540, 23.045225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657303, 35.222660, 23.024788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114574, -0.225532, -0.967475,
		-0.609227, 0.753300, -0.247753,
		0.784675, 0.617798, -0.051092,
		39.892704, 35.408001, 23.009460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272732, 35.265350, 22.330532>,  <39.343433, 34.975540, 23.045225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272732, 35.265350, 22.330532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.654087, 35.301983, 22.445536>,  <39.882900, 35.323963, 22.514538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.654087, 35.301983, 22.445536>,  <39.272732, 35.265350, 22.330532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654087, 35.301983, 22.445536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301056, -0.224509, -0.926802,
		-0.020328, 0.970159, -0.241615,
		0.953390, 0.091580, 0.287509,
		39.940105, 35.329456, 22.531788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622753, 35.603405, 21.769049>,  <39.272732, 35.265350, 22.330532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622753, 35.603405, 21.769049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.924576, 35.452545, 21.983858>,  <40.105671, 35.362030, 22.112743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.924576, 35.452545, 21.983858>,  <39.622753, 35.603405, 21.769049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924576, 35.452545, 21.983858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321451, -0.501015, -0.803526,
		0.572109, 0.778935, -0.256810,
		0.754560, -0.377153, 0.537024,
		40.150944, 35.339401, 22.144966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183006, 35.724583, 21.344955>,  <39.622753, 35.603405, 21.769049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183006, 35.724583, 21.344955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.302094, 35.433224, 21.591791>,  <40.373547, 35.258408, 21.739893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.302094, 35.433224, 21.591791>,  <40.183006, 35.724583, 21.344955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302094, 35.433224, 21.591791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445243, -0.465847, -0.764686,
		0.844465, 0.502417, 0.185622,
		0.297720, -0.728398, 0.617089,
		40.391411, 35.214703, 21.776918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947029, 35.575359, 21.116114>,  <40.183006, 35.724583, 21.344955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947029, 35.575359, 21.116114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.838852, 35.260521, 21.337870>,  <40.773945, 35.071617, 21.470924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.838852, 35.260521, 21.337870>,  <40.947029, 35.575359, 21.116114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838852, 35.260521, 21.337870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411364, -0.615107, -0.672624,
		0.870426, 0.046153, 0.490130,
		-0.270439, -0.787092, 0.554391,
		40.757721, 35.024395, 21.504187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594929, 35.181355, 21.296337>,  <40.947029, 35.575359, 21.116114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594929, 35.181355, 21.296337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.292061, 34.924454, 21.344006>,  <41.110340, 34.770313, 21.372606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.292061, 34.924454, 21.344006>,  <41.594929, 35.181355, 21.296337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292061, 34.924454, 21.344006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446731, -0.642234, -0.622870,
		0.476577, -0.418381, 0.773196,
		-0.757169, -0.642256, 0.119170,
		41.064911, 34.731777, 21.379757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910141, 34.517956, 21.461447>,  <41.594929, 35.181355, 21.296337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.910141, 34.517956, 21.461447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.546394, 34.449009, 21.310001>,  <41.328148, 34.407639, 21.219133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.546394, 34.449009, 21.310001>,  <41.910141, 34.517956, 21.461447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546394, 34.449009, 21.310001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387237, -0.683302, -0.618987,
		-0.152013, -0.709497, 0.688118,
		-0.909362, -0.172371, -0.378615,
		41.273586, 34.397297, 21.196417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762268, 33.713577, 21.587200>,  <41.910141, 34.517956, 21.461447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762268, 33.713577, 21.587200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.555523, 33.859734, 21.277531>,  <41.431477, 33.947426, 21.091728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.555523, 33.859734, 21.277531>,  <41.762268, 33.713577, 21.587200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555523, 33.859734, 21.277531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435175, -0.666630, -0.605167,
		-0.737208, -0.649689, 0.185547,
		-0.516862, 0.365388, -0.774174,
		41.400463, 33.969349, 21.045279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526363, 33.121181, 21.216320>,  <41.762268, 33.713577, 21.587200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526363, 33.121181, 21.216320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.449261, 33.414360, 20.955357>,  <41.403000, 33.590267, 20.798779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.449261, 33.414360, 20.955357>,  <41.526363, 33.121181, 21.216320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449261, 33.414360, 20.955357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213390, -0.617654, -0.756947,
		-0.957763, -0.285125, -0.037345,
		-0.192758, 0.732945, -0.652408,
		41.391434, 33.634243, 20.759634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705330, 32.398479, 21.323517>,  <41.526363, 33.121181, 21.216320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705330, 32.398479, 21.323517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058617, 32.262367, 21.452597>,  <42.270588, 32.180702, 21.530045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058617, 32.262367, 21.452597>,  <41.705330, 32.398479, 21.323517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058617, 32.262367, 21.452597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124373, 0.493512, 0.860800,
		-0.452167, -0.800410, 0.393558,
		0.883219, -0.340277, 0.322700,
		42.323582, 32.160286, 21.549406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691509, 32.211651, 22.100025>,  <41.705330, 32.398479, 21.323517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691509, 32.211651, 22.100025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.086464, 32.249016, 22.048883>,  <42.323437, 32.271435, 22.018198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.086464, 32.249016, 22.048883>,  <41.691509, 32.211651, 22.100025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086464, 32.249016, 22.048883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063834, 0.504110, 0.861277,
		0.144908, -0.858573, 0.491787,
		0.987384, 0.093413, -0.127856,
		42.382679, 32.277039, 22.010527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958485, 32.208584, 22.750937>,  <41.691509, 32.211651, 22.100025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958485, 32.208584, 22.750937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.269054, 32.359749, 22.549208>,  <42.455399, 32.450447, 22.428169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.269054, 32.359749, 22.549208>,  <41.958485, 32.208584, 22.750937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269054, 32.359749, 22.549208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347638, 0.410648, 0.842921,
		0.525652, -0.829788, 0.187460,
		0.776426, 0.377915, -0.504324,
		42.501984, 32.473122, 22.397911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396244, 32.132256, 23.250019>,  <41.958485, 32.208584, 22.750937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396244, 32.132256, 23.250019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.562458, 32.402668, 23.006607>,  <42.662186, 32.564915, 22.860559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.562458, 32.402668, 23.006607>,  <42.396244, 32.132256, 23.250019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562458, 32.402668, 23.006607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286958, 0.537421, 0.792990,
		0.863125, -0.504138, 0.029324,
		0.415535, 0.676035, -0.608528,
		42.687119, 32.605480, 22.824049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084572, 32.233418, 23.495222>,  <42.396244, 32.132256, 23.250019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084572, 32.233418, 23.495222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.984283, 32.563919, 23.293453>,  <42.924110, 32.762218, 23.172392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.984283, 32.563919, 23.293453>,  <43.084572, 32.233418, 23.495222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984283, 32.563919, 23.293453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221536, 0.556211, 0.800968,
		0.942369, 0.089072, -0.322500,
		-0.250722, 0.826254, -0.504424,
		42.909065, 32.811794, 23.142126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
