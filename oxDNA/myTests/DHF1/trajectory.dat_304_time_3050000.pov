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
	<2.300323, -0.391601, 2.096697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.047569, -0.156921, 1.894112>,  <1.895917, -0.016114, 1.772560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.047569, -0.156921, 1.894112>,  <2.300323, -0.391601, 2.096697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.047569, -0.156921, 1.894112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481409, 0.809211, 0.336783,
		0.607426, -0.031008, -0.793771,
		-0.631886, 0.586699, -0.506464,
		1.858004, 0.019088, 1.742172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.652432, 0.170377, 1.843487>,  <2.300323, -0.391601, 2.096697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.652432, 0.170377, 1.843487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.278717, 0.282349, 1.931801>,  <2.054488, 0.349531, 1.984789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.278717, 0.282349, 1.931801>,  <2.652432, 0.170377, 1.843487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.278717, 0.282349, 1.931801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349722, 0.599251, 0.720134,
		0.069280, 0.750026, -0.657770,
		-0.934288, 0.279928, 0.220784,
		1.998430, 0.366327, 1.998036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.672014, 0.958890, 1.871145>,  <2.652432, 0.170377, 1.843487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.672014, 0.958890, 1.871145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.375278, 0.832108, 2.107521>,  <2.197237, 0.756038, 2.249347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.375278, 0.832108, 2.107521>,  <2.672014, 0.958890, 1.871145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.375278, 0.832108, 2.107521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181662, 0.753301, 0.632089,
		-0.645502, 0.576261, -0.501250,
		-0.741840, -0.316956, 0.590942,
		2.152726, 0.737021, 2.284803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.214682, 1.526655, 2.087080>,  <2.672014, 0.958890, 1.871145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.214682, 1.526655, 2.087080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.223415, 1.245850, 2.371811>,  <2.228655, 1.077366, 2.542650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.223415, 1.245850, 2.371811>,  <2.214682, 1.526655, 2.087080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.223415, 1.245850, 2.371811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303279, 0.683098, 0.664379,
		-0.952651, 0.201377, 0.227821,
		0.021833, -0.702014, 0.711828,
		2.229965, 1.035245, 2.585359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.854641, 1.720555, 2.633221>,  <2.214682, 1.526655, 2.087080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.854641, 1.720555, 2.633221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.119888, 1.454208, 2.769981>,  <2.279037, 1.294400, 2.852038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.119888, 1.454208, 2.769981>,  <1.854641, 1.720555, 2.633221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.119888, 1.454208, 2.769981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420845, 0.709404, 0.565364,
		-0.619003, -0.231015, 0.750644,
		0.663117, -0.665867, 0.341902,
		2.318824, 1.254448, 2.872552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.774784, 1.640479, 3.309630>,  <1.854641, 1.720555, 2.633221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.774784, 1.640479, 3.309630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.156590, 1.571426, 3.212387>,  <2.385673, 1.529995, 3.154041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.156590, 1.571426, 3.212387>,  <1.774784, 1.640479, 3.309630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.156590, 1.571426, 3.212387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292654, 0.698495, 0.653038,
		0.057074, -0.694480, 0.717245,
		0.954514, -0.172633, -0.243108,
		2.442944, 1.519637, 3.139455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.093232, 1.736930, 3.945459>,  <1.774784, 1.640479, 3.309630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.093232, 1.736930, 3.945459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.380257, 1.746208, 3.667015>,  <2.552471, 1.751775, 3.499949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.380257, 1.746208, 3.667015>,  <2.093232, 1.736930, 3.945459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.380257, 1.746208, 3.667015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351240, 0.851002, 0.390418,
		0.601446, -0.524650, 0.602499,
		0.717561, 0.023194, -0.696110,
		2.595525, 1.753166, 3.458182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.773098, 1.865162, 4.387863>,  <2.093232, 1.736930, 3.945459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.773098, 1.865162, 4.387863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.804199, 1.966248, 4.002098>,  <2.822860, 2.026899, 3.770639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.804199, 1.966248, 4.002098>,  <2.773098, 1.865162, 4.387863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.804199, 1.966248, 4.002098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587459, 0.769955, 0.249119,
		0.805510, -0.585922, -0.088593,
		0.077752, 0.252713, -0.964412,
		2.827525, 2.042061, 3.712774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.352454, 3.258142, 4.443810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.397326, 3.384842, 4.067070>,  <3.424250, 3.460862, 3.841026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.397326, 3.384842, 4.067070>,  <3.352454, 3.258142, 4.443810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.397326, 3.384842, 4.067070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407485, -0.849811, -0.334331,
		-0.906295, 0.421296, 0.033739,
		0.112180, 0.316751, -0.941851,
		3.430981, 3.479867, 3.784514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.673944, 3.057846, 4.041127>,  <3.352454, 3.258142, 4.443810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.673944, 3.057846, 4.041127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.980155, 3.071609, 3.784134>,  <3.163882, 3.079867, 3.629938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.980155, 3.071609, 3.784134>,  <2.673944, 3.057846, 4.041127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.980155, 3.071609, 3.784134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289015, -0.873764, -0.391161,
		-0.574837, 0.485132, -0.658946,
		0.765528, 0.034408, -0.642482,
		3.209813, 3.081932, 3.591389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.444043, 2.766560, 3.410658>,  <2.673944, 3.057846, 4.041127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.444043, 2.766560, 3.410658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.843379, 2.747940, 3.397095>,  <3.082981, 2.736768, 3.388957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.843379, 2.747940, 3.397095>,  <2.444043, 2.766560, 3.410658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.843379, 2.747940, 3.397095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055958, -0.923259, -0.380080,
		-0.013613, 0.381347, -0.924332,
		0.998340, -0.046550, -0.033908,
		3.142881, 2.733975, 3.386922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.677882, 2.658499, 2.696194>,  <2.444043, 2.766560, 3.410658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.677882, 2.658499, 2.696194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.902604, 2.515686, 2.994698>,  <3.037437, 2.429998, 3.173800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.902604, 2.515686, 2.994698>,  <2.677882, 2.658499, 2.696194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.902604, 2.515686, 2.994698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063879, -0.918104, -0.391159,
		0.824800, 0.172085, -0.538601,
		0.561804, -0.357033, 0.746260,
		3.071145, 2.408576, 3.218575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.291262, 2.217124, 2.449518>,  <2.677882, 2.658499, 2.696194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.291262, 2.217124, 2.449518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.211082, 2.110336, 2.826569>,  <3.162973, 2.046264, 3.052799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.211082, 2.110336, 2.826569>,  <3.291262, 2.217124, 2.449518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.211082, 2.110336, 2.826569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142485, -0.943981, -0.297653,
		0.969287, -0.193975, 0.151183,
		-0.200451, -0.266969, 0.942627,
		3.150946, 2.030246, 3.109357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.578382, 1.591950, 2.597537>,  <3.291262, 2.217124, 2.449518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.578382, 1.591950, 2.597537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.315301, 1.628448, 2.896629>,  <3.157452, 1.650348, 3.076085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.315301, 1.628448, 2.896629>,  <3.578382, 1.591950, 2.597537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.315301, 1.628448, 2.896629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330463, -0.926967, -0.177556,
		0.676920, -0.363876, 0.639823,
		-0.657703, 0.091247, 0.747730,
		3.117990, 1.655823, 3.120948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.588893, 1.007366, 3.003965>,  <3.578382, 1.591950, 2.597537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.588893, 1.007366, 3.003965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.227548, 1.170242, 3.057823>,  <3.010740, 1.267968, 3.090138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.227548, 1.170242, 3.057823>,  <3.588893, 1.007366, 3.003965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.227548, 1.170242, 3.057823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428768, -0.850478, -0.304707,
		-0.009561, -0.332992, 0.942881,
		-0.903364, 0.407190, 0.134645,
		2.956538, 1.292399, 3.098217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.218967, 0.420355, 3.257409>,  <3.588893, 1.007366, 3.003965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.218967, 0.420355, 3.257409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.965741, 0.691193, 3.107330>,  <2.813805, 0.853695, 3.017283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.965741, 0.691193, 3.107330>,  <3.218967, 0.420355, 3.257409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.965741, 0.691193, 3.107330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561334, -0.735292, -0.379803,
		-0.533041, -0.029831, 0.845564,
		-0.633066, 0.677094, -0.375195,
		2.775821, 0.894321, 2.994772>
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
