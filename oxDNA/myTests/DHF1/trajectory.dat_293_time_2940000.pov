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
	<3.597017, 1.483737, 0.638913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.508080, 1.665802, 0.294033>,  <3.454717, 1.775041, 0.087105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.508080, 1.665802, 0.294033>,  <3.597017, 1.483737, 0.638913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.508080, 1.665802, 0.294033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826775, 0.556715, 0.080687,
		0.516726, -0.694906, -0.500100,
		-0.222344, 0.455164, -0.862200,
		3.441376, 1.802351, 0.035373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.586753, 2.114439, 0.376611>,  <3.597017, 1.483737, 0.638913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.586753, 2.114439, 0.376611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.242897, 2.295334, 0.471691>,  <3.036583, 2.403871, 0.528739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.242897, 2.295334, 0.471691>,  <3.586753, 2.114439, 0.376611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.242897, 2.295334, 0.471691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351901, 0.186824, 0.917203,
		0.370385, 0.872112, -0.319744,
		-0.859640, 0.452237, 0.237700,
		2.985005, 2.431005, 0.543001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.645256, 2.801912, 0.657360>,  <3.586753, 2.114439, 0.376611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.645256, 2.801912, 0.657360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.340153, 2.600906, 0.820175>,  <3.157091, 2.480303, 0.917865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.340153, 2.600906, 0.820175>,  <3.645256, 2.801912, 0.657360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.340153, 2.600906, 0.820175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348946, 0.210106, 0.913286,
		-0.544460, 0.838651, 0.015090,
		-0.762758, -0.502514, 0.407039,
		3.111326, 2.450152, 0.942287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.416206, 3.117668, 1.243758>,  <3.645256, 2.801912, 0.657360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.416206, 3.117668, 1.243758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.300720, 2.746658, 1.338703>,  <3.231429, 2.524052, 1.395670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.300720, 2.746658, 1.338703>,  <3.416206, 3.117668, 1.243758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.300720, 2.746658, 1.338703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349382, 0.128754, 0.928092,
		-0.891390, 0.350884, 0.286887,
		-0.288715, -0.927525, 0.237362,
		3.214106, 2.468401, 1.409912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.210002, 3.202488, 1.880307>,  <3.416206, 3.117668, 1.243758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.210002, 3.202488, 1.880307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.322403, 2.818726, 1.870708>,  <3.389843, 2.588468, 1.864949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.322403, 2.818726, 1.870708>,  <3.210002, 3.202488, 1.880307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.322403, 2.818726, 1.870708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306619, 0.066056, 0.949537,
		-0.909408, -0.274180, 0.312734,
		0.281002, -0.959407, -0.023997,
		3.406703, 2.530903, 1.863509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.129360, 2.961966, 2.499418>,  <3.210002, 3.202488, 1.880307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.129360, 2.961966, 2.499418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396519, 2.697876, 2.362003>,  <3.556814, 2.539422, 2.279555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396519, 2.697876, 2.362003>,  <3.129360, 2.961966, 2.499418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396519, 2.697876, 2.362003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222352, -0.263493, 0.938686,
		-0.710263, -0.703331, -0.029184,
		0.667897, -0.660225, -0.343537,
		3.596888, 2.499809, 2.258942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.015701, 2.470778, 2.908608>,  <3.129360, 2.961966, 2.499418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.015701, 2.470778, 2.908608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.383327, 2.403381, 2.766102>,  <3.603904, 2.362943, 2.680598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.383327, 2.403381, 2.766102>,  <3.015701, 2.470778, 2.908608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.383327, 2.403381, 2.766102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353149, -0.049160, 0.934275,
		-0.174933, -0.984476, 0.014322,
		0.919067, -0.168493, -0.356266,
		3.659048, 2.352834, 2.659222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.230985, 1.830423, 3.217519>,  <3.015701, 2.470778, 2.908608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.230985, 1.830423, 3.217519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.517357, 2.087143, 3.107582>,  <3.689180, 2.241175, 3.041620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.517357, 2.087143, 3.107582>,  <3.230985, 1.830423, 3.217519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.517357, 2.087143, 3.107582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309829, 0.060718, 0.948852,
		0.625661, -0.764464, -0.155378,
		0.715929, 0.641800, -0.274842,
		3.732136, 2.279683, 3.025130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.370772, 2.136653, 4.417869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.556016, 2.478104, 4.322495>,  <4.667162, 2.682974, 4.265270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.556016, 2.478104, 4.322495>,  <4.370772, 2.136653, 4.417869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.556016, 2.478104, 4.322495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471670, 0.009607, -0.881723,
		-0.750371, 0.520797, 0.407079,
		0.463109, 0.853626, -0.238435,
		4.694949, 2.734192, 4.250964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.829381, 2.700685, 4.165854>,  <4.370772, 2.136653, 4.417869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.829381, 2.700685, 4.165854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.198262, 2.716080, 4.011940>,  <4.419591, 2.725317, 3.919592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.198262, 2.716080, 4.011940>,  <3.829381, 2.700685, 4.165854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.198262, 2.716080, 4.011940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369885, -0.202461, -0.906749,
		-0.112802, 0.978534, -0.172474,
		0.922204, 0.038487, -0.384783,
		4.474924, 2.727626, 3.896505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.996883, 3.205801, 3.594192>,  <3.829381, 2.700685, 4.165854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.996883, 3.205801, 3.594192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.237611, 2.889236, 3.551331>,  <4.382048, 2.699298, 3.525614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.237611, 2.889236, 3.551331>,  <3.996883, 3.205801, 3.594192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.237611, 2.889236, 3.551331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364457, -0.152772, -0.918603,
		0.710622, 0.591886, -0.380376,
		0.601820, -0.791411, -0.107154,
		4.418157, 2.651813, 3.519185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.371914, 3.298506, 2.967981>,  <3.996883, 3.205801, 3.594192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.371914, 3.298506, 2.967981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.374120, 2.909363, 3.060516>,  <4.375443, 2.675877, 3.116037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.374120, 2.909363, 3.060516>,  <4.371914, 3.298506, 2.967981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.374120, 2.909363, 3.060516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380651, -0.215967, -0.899146,
		0.924702, -0.083100, -0.371510,
		0.005515, -0.972858, 0.231337,
		4.375774, 2.617505, 3.129918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.841405, 2.824530, 2.459120>,  <4.371914, 3.298506, 2.967981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.841405, 2.824530, 2.459120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.538325, 2.634781, 2.638390>,  <4.356477, 2.520931, 2.745952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.538325, 2.634781, 2.638390>,  <4.841405, 2.824530, 2.459120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.538325, 2.634781, 2.638390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390666, -0.220400, -0.893758,
		0.522753, -0.852287, -0.018325,
		-0.757700, -0.474374, 0.448175,
		4.311015, 2.492469, 2.772842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.846540, 2.108812, 2.252565>,  <4.841405, 2.824530, 2.459120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.846540, 2.108812, 2.252565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.479846, 2.211548, 2.374962>,  <4.259830, 2.273190, 2.448400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.479846, 2.211548, 2.374962>,  <4.846540, 2.108812, 2.252565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.479846, 2.211548, 2.374962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350449, -0.149308, -0.924604,
		-0.191788, -0.954851, 0.226885,
		-0.916735, 0.256840, 0.305992,
		4.204825, 2.288600, 2.466759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.467403, 1.536300, 1.945457>,  <4.846540, 2.108812, 2.252565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.467403, 1.536300, 1.945457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.267653, 1.870438, 2.037392>,  <4.147803, 2.070920, 2.092553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.267653, 1.870438, 2.037392>,  <4.467403, 1.536300, 1.945457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.267653, 1.870438, 2.037392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430150, -0.008772, -0.902715,
		-0.752061, -0.549658, 0.363704,
		-0.499375, 0.835343, 0.229838,
		4.117841, 2.121041, 2.106343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.969890, 1.524043, 1.524696>,  <4.467403, 1.536300, 1.945457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.969890, 1.524043, 1.524696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.917462, 1.895615, 1.663208>,  <3.886006, 2.118558, 1.746315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.917462, 1.895615, 1.663208>,  <3.969890, 1.524043, 1.524696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.917462, 1.895615, 1.663208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517888, 0.233687, -0.822911,
		-0.845348, -0.287192, 0.450452,
		-0.131068, 0.928930, 0.346280,
		3.878142, 2.174294, 1.767092>
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
