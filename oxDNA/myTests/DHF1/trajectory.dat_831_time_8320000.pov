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
	<-0.330612, 2.930254, 1.892390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.013577, 2.911362, 1.649220>,  <0.176645, 2.900026, 1.503318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.013577, 2.911362, 1.649220>,  <-0.330612, 2.930254, 1.892390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.013577, 2.911362, 1.649220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594560, 0.281061, 0.753328,
		0.135283, -0.958527, 0.250848,
		0.792589, -0.047232, -0.607924,
		0.224200, 2.897192, 1.466843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.159362, 2.455686, 2.217996>,  <-0.330612, 2.930254, 1.892390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.159362, 2.455686, 2.217996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.325657, 2.725365, 1.973825>,  <0.425434, 2.887172, 1.827322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.325657, 2.725365, 1.973825>,  <0.159362, 2.455686, 2.217996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.325657, 2.725365, 1.973825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598459, 0.302609, 0.741805,
		0.684844, -0.673711, -0.277674,
		0.415736, 0.674197, -0.610428,
		0.450378, 2.927624, 1.790696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.863319, 2.424371, 2.022784>,  <0.159362, 2.455686, 2.217996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.863319, 2.424371, 2.022784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.783302, 2.816147, 2.012326>,  <0.735292, 3.051212, 2.006051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.783302, 2.816147, 2.012326>,  <0.863319, 2.424371, 2.022784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.783302, 2.816147, 2.012326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700111, 0.161558, 0.695517,
		0.685440, 0.120827, -0.718034,
		-0.200041, 0.979439, -0.026146,
		0.723290, 3.109978, 2.004482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.413548, 2.953224, 1.870914>,  <0.863319, 2.424371, 2.022784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.413548, 2.953224, 1.870914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.180439, 3.139923, 2.137004>,  <1.040574, 3.251942, 2.296658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.180439, 3.139923, 2.137004>,  <1.413548, 2.953224, 1.870914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.180439, 3.139923, 2.137004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789707, 0.132195, 0.599072,
		0.191675, 0.874455, -0.445633,
		-0.582772, 0.466746, 0.665226,
		1.005607, 3.279947, 2.336571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.756814, 3.581589, 2.057526>,  <1.413548, 2.953224, 1.870914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.756814, 3.581589, 2.057526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.497463, 3.501663, 2.351378>,  <1.341853, 3.453708, 2.527689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.497463, 3.501663, 2.351378>,  <1.756814, 3.581589, 2.057526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.497463, 3.501663, 2.351378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676018, 0.292702, 0.676259,
		-0.350154, 0.935094, -0.054703,
		-0.648377, -0.199814, 0.734630,
		1.302950, 3.441719, 2.571767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.837705, 4.162790, 2.479887>,  <1.756814, 3.581589, 2.057526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.837705, 4.162790, 2.479887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.666431, 3.896454, 2.724285>,  <1.563667, 3.736652, 2.870924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.666431, 3.896454, 2.724285>,  <1.837705, 4.162790, 2.479887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.666431, 3.896454, 2.724285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706934, 0.174376, 0.685447,
		-0.562940, 0.725431, 0.396040,
		-0.428185, -0.665840, 0.610995,
		1.537976, 3.696702, 2.907583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.814950, 4.514034, 3.097492>,  <1.837705, 4.162790, 2.479887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.814950, 4.514034, 3.097492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.791054, 4.125832, 3.190916>,  <1.776716, 3.892910, 3.246970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.791054, 4.125832, 3.190916>,  <1.814950, 4.514034, 3.097492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.791054, 4.125832, 3.190916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581967, 0.156236, 0.798063,
		-0.811015, 0.183600, 0.555469,
		-0.059740, -0.970506, 0.233559,
		1.773132, 3.834680, 3.260983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.811285, 4.534750, 3.753649>,  <1.814950, 4.514034, 3.097492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.811285, 4.534750, 3.753649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.925522, 4.160423, 3.671005>,  <1.994064, 3.935828, 3.621418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.925522, 4.160423, 3.671005>,  <1.811285, 4.534750, 3.753649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.925522, 4.160423, 3.671005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707392, 0.060400, 0.704236,
		-0.646555, -0.347278, 0.679238,
		0.285592, -0.935815, -0.206609,
		2.011199, 3.879679, 3.609022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.124633, 4.378905, 3.893072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.149078, 3.999290, 4.016745>,  <3.163745, 3.771522, 4.090949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.149078, 3.999290, 4.016745>,  <3.124633, 4.378905, 3.893072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.149078, 3.999290, 4.016745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812779, -0.227115, -0.536478,
		0.579358, -0.218511, -0.785237,
		0.061113, -0.949037, 0.309182,
		3.167412, 3.714579, 4.109499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.074237, 3.801868, 3.258362>,  <3.124633, 4.378905, 3.893072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.074237, 3.801868, 3.258362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.951752, 3.655403, 3.609852>,  <2.878261, 3.567524, 3.820746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.951752, 3.655403, 3.609852>,  <3.074237, 3.801868, 3.258362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.951752, 3.655403, 3.609852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888432, -0.221639, -0.401952,
		0.341940, -0.903770, -0.257443,
		-0.306212, -0.366164, 0.878725,
		2.859888, 3.545554, 3.873469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.792584, 3.221741, 3.075198>,  <3.074237, 3.801868, 3.258362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.792584, 3.221741, 3.075198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.626160, 3.320175, 3.425361>,  <2.526305, 3.379236, 3.635458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.626160, 3.320175, 3.425361>,  <2.792584, 3.221741, 3.075198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.626160, 3.320175, 3.425361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877091, -0.362693, -0.314906,
		0.240009, -0.898830, 0.366742,
		-0.416061, 0.246086, 0.875406,
		2.501341, 3.394001, 3.687982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.360290, 2.646240, 3.312575>,  <2.792584, 3.221741, 3.075198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.360290, 2.646240, 3.312575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.256508, 3.020493, 3.408306>,  <2.194239, 3.245044, 3.465745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.256508, 3.020493, 3.408306>,  <2.360290, 2.646240, 3.312575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.256508, 3.020493, 3.408306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870070, -0.118910, -0.478372,
		-0.419121, -0.332347, 0.844916,
		-0.259454, 0.935632, 0.239327,
		2.178672, 3.301182, 3.480104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.685901, 2.588673, 3.675730>,  <2.360290, 2.646240, 3.312575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.685901, 2.588673, 3.675730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.717514, 2.961548, 3.534432>,  <1.736482, 3.185273, 3.449654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.717514, 2.961548, 3.534432>,  <1.685901, 2.588673, 3.675730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.717514, 2.961548, 3.534432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848673, -0.122982, -0.514422,
		-0.522980, 0.340445, 0.781402,
		0.079034, 0.932187, -0.353244,
		1.741224, 3.241204, 3.428459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.098512, 2.837127, 3.793672>,  <1.685901, 2.588673, 3.675730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.098512, 2.837127, 3.793672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.228767, 3.079384, 3.503250>,  <1.306921, 3.224738, 3.328997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.228767, 3.079384, 3.503250>,  <1.098512, 2.837127, 3.793672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.228767, 3.079384, 3.503250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934289, 0.088247, -0.345422,
		-0.145130, 0.790828, 0.594582,
		0.325640, 0.605643, -0.726055,
		1.326459, 3.261077, 3.285434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.536533, 3.327419, 3.668193>,  <1.098512, 2.837127, 3.793672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.536533, 3.327419, 3.668193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.761208, 3.340370, 3.337506>,  <0.896012, 3.348141, 3.139094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.761208, 3.340370, 3.337506>,  <0.536533, 3.327419, 3.668193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.761208, 3.340370, 3.337506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818815, 0.164914, -0.549860,
		0.118534, 0.985777, 0.119141,
		0.561687, 0.032377, -0.826716,
		0.929714, 3.350083, 3.089491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.000875, 3.585981, 3.190188>,  <0.536533, 3.327419, 3.668193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.000875, 3.585981, 3.190188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.316490, 3.557144, 2.946148>,  <0.505859, 3.539842, 2.799724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.316490, 3.557144, 2.946148>,  <0.000875, 3.585981, 3.190188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.316490, 3.557144, 2.946148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587194, 0.203475, -0.783454,
		0.180621, 0.976422, 0.118217,
		0.789037, -0.072091, -0.610101,
		0.553201, 3.535517, 2.763118>
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
