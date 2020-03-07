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
	<3.204565, 2.939378, 3.956553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.300772, 2.958450, 3.568764>,  <3.358496, 2.969894, 3.336090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.300772, 2.958450, 3.568764>,  <3.204565, 2.939378, 3.956553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.300772, 2.958450, 3.568764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970178, 0.019169, 0.241634,
		0.030105, -0.998679, -0.041651,
		0.240517, 0.047684, -0.969473,
		3.372927, 2.972755, 3.277922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.699247, 2.506917, 3.879292>,  <3.204565, 2.939378, 3.956553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.699247, 2.506917, 3.879292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.738091, 2.735722, 3.553501>,  <3.761397, 2.873005, 3.358027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.738091, 2.735722, 3.553501>,  <3.699247, 2.506917, 3.879292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.738091, 2.735722, 3.553501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994410, -0.089855, 0.055456,
		-0.041463, -0.815308, -0.577540,
		0.097109, 0.572012, -0.814476,
		3.767224, 2.907325, 3.309158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.172529, 2.184735, 3.396506>,  <3.699247, 2.506917, 3.879292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.172529, 2.184735, 3.396506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.180182, 2.582512, 3.355091>,  <4.184774, 2.821178, 3.330242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.180182, 2.582512, 3.355091>,  <4.172529, 2.184735, 3.396506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.180182, 2.582512, 3.355091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991780, -0.005773, 0.127826,
		0.126518, -0.105131, -0.986378,
		0.019133, 0.994442, -0.103536,
		4.185922, 2.880844, 3.324030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.525296, 2.502388, 2.727473>,  <4.172529, 2.184735, 3.396506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.525296, 2.502388, 2.727473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554766, 2.735676, 3.051060>,  <4.572449, 2.875649, 3.245212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554766, 2.735676, 3.051060>,  <4.525296, 2.502388, 2.727473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.554766, 2.735676, 3.051060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997281, -0.044179, -0.058977,
		0.001343, 0.811112, -0.584890,
		0.073676, 0.583220, 0.808966,
		4.576869, 2.910642, 3.293750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.093023, 3.010735, 2.606422>,  <4.525296, 2.502388, 2.727473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.093023, 3.010735, 2.606422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.063946, 3.010677, 3.005363>,  <5.046500, 3.010643, 3.244729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.063946, 3.010677, 3.005363>,  <5.093023, 3.010735, 2.606422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.063946, 3.010677, 3.005363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993165, 0.091548, 0.072401,
		-0.091317, 0.995801, -0.006511,
		-0.072693, -0.000145, 0.997354,
		5.042138, 3.010634, 3.304570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.495305, 3.602756, 2.817098>,  <5.093023, 3.010735, 2.606422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.495305, 3.602756, 2.817098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.485926, 3.350422, 3.127323>,  <5.480299, 3.199021, 3.313458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.485926, 3.350422, 3.127323>,  <5.495305, 3.602756, 2.817098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.485926, 3.350422, 3.127323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967784, 0.180208, 0.175837,
		-0.250687, 0.754700, 0.606287,
		-0.023447, -0.630835, 0.775562,
		5.478892, 3.161171, 3.359992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.984449, 3.819620, 3.190632>,  <5.495305, 3.602756, 2.817098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.984449, 3.819620, 3.190632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.930196, 3.453091, 3.341339>,  <5.897644, 3.233173, 3.431764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.930196, 3.453091, 3.341339>,  <5.984449, 3.819620, 3.190632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.930196, 3.453091, 3.341339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986141, -0.088185, 0.140534,
		-0.095549, 0.390608, 0.915585,
		-0.135634, -0.916323, 0.376769,
		5.889505, 3.178194, 3.454370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.493794, 3.755752, 3.752809>,  <5.984449, 3.819620, 3.190632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.493794, 3.755752, 3.752809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.396755, 3.373684, 3.684933>,  <6.338531, 3.144443, 3.644207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.396755, 3.373684, 3.684933>,  <6.493794, 3.755752, 3.752809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.396755, 3.373684, 3.684933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964905, -0.255698, 0.059810,
		-0.100518, -0.149226, 0.983681,
		-0.242600, -0.955170, -0.169691,
		6.323975, 3.087133, 3.634025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.330595, 3.361643, 2.869620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.361530, 2.992180, 3.019753>,  <2.380091, 2.770502, 3.109832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.361530, 2.992180, 3.019753>,  <2.330595, 3.361643, 2.869620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.361530, 2.992180, 3.019753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863208, 0.126343, 0.488784,
		-0.498890, -0.361791, -0.787538,
		0.077338, -0.923658, 0.375332,
		2.384732, 2.715082, 3.132352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.660124, 2.990762, 2.785867>,  <2.330595, 3.361643, 2.869620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.660124, 2.990762, 2.785867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.852757, 2.800552, 3.080338>,  <1.968336, 2.686427, 3.257020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.852757, 2.800552, 3.080338>,  <1.660124, 2.990762, 2.785867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.852757, 2.800552, 3.080338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842005, -0.018023, 0.539169,
		-0.243119, -0.879518, -0.409073,
		0.481582, -0.475523, 0.736177,
		1.997231, 2.657896, 3.301191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.462763, 2.262123, 2.883070>,  <1.660124, 2.990762, 2.785867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.462763, 2.262123, 2.883070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.553013, 2.449867, 3.224548>,  <1.607162, 2.562514, 3.429435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.553013, 2.449867, 3.224548>,  <1.462763, 2.262123, 2.883070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.553013, 2.449867, 3.224548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968436, 0.012753, 0.248937,
		0.105954, -0.882914, 0.457424,
		0.225623, 0.469361, 0.853694,
		1.620700, 2.590676, 3.480657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.127848, 1.867685, 3.344911>,  <1.462763, 2.262123, 2.883070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.127848, 1.867685, 3.344911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.185204, 2.243938, 3.467972>,  <1.219617, 2.469690, 3.541808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.185204, 2.243938, 3.467972>,  <1.127848, 1.867685, 3.344911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.185204, 2.243938, 3.467972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982288, 0.097380, 0.160084,
		0.120622, -0.325154, 0.937937,
		0.143388, 0.940634, 0.307649,
		1.228220, 2.526128, 3.560268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.734484, 2.006051, 4.000909>,  <1.127848, 1.867685, 3.344911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.734484, 2.006051, 4.000909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.792999, 2.359165, 3.822342>,  <0.828108, 2.571034, 3.715201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.792999, 2.359165, 3.822342>,  <0.734484, 2.006051, 4.000909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.792999, 2.359165, 3.822342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936245, 0.269277, 0.225691,
		0.319447, 0.384943, 0.865894,
		0.146287, 0.882785, -0.446421,
		0.836886, 2.624001, 3.688416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.506071, 2.472390, 4.451333>,  <0.734484, 2.006051, 4.000909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.506071, 2.472390, 4.451333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.479511, 2.667038, 4.102898>,  <0.463576, 2.783827, 3.893837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.479511, 2.667038, 4.102898>,  <0.506071, 2.472390, 4.451333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.479511, 2.667038, 4.102898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925338, 0.296570, 0.236208,
		0.373282, 0.821734, 0.430596,
		-0.066399, 0.486620, -0.871087,
		0.459592, 2.813024, 3.841572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.131534, 3.102092, 4.605278>,  <0.506071, 2.472390, 4.451333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.131534, 3.102092, 4.605278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.100407, 3.056099, 4.209152>,  <0.081730, 3.028503, 3.971477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.100407, 3.056099, 4.209152>,  <0.131534, 3.102092, 4.605278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.100407, 3.056099, 4.209152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937712, 0.345790, 0.033537,
		0.338585, 0.931240, -0.134730,
		-0.077819, -0.114983, -0.990315,
		0.077061, 3.021604, 3.912058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.352484, 3.661040, 4.344978>,  <0.131534, 3.102092, 4.605278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.352484, 3.661040, 4.344978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.362568, 3.410927, 4.032982>,  <-0.368618, 3.260859, 3.845784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.362568, 3.410927, 4.032982>,  <-0.352484, 3.661040, 4.344978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.362568, 3.410927, 4.032982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934259, 0.292357, -0.204172,
		0.355701, 0.723567, -0.591546,
		-0.025211, -0.625282, -0.779992,
		-0.370131, 3.223342, 3.798985>
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
