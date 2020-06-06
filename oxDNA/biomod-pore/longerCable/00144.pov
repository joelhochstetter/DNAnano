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
	<24.281046, 35.241447, 34.939568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.411785, 35.166382, 35.310070>,  <24.490229, 35.121342, 35.532372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.411785, 35.166382, 35.310070>,  <24.281046, 35.241447, 34.939568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.411785, 35.166382, 35.310070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944466, 0.100118, -0.312988,
		-0.033999, 0.977118, 0.209964,
		0.326847, -0.187663, 0.926258,
		24.509840, 35.110085, 35.587948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998936, 35.467278, 34.825588>,  <24.281046, 35.241447, 34.939568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998936, 35.467278, 34.825588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993048, 35.295017, 35.186546>,  <24.989515, 35.191662, 35.403122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.993048, 35.295017, 35.186546>,  <24.998936, 35.467278, 34.825588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.993048, 35.295017, 35.186546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925741, -0.346934, -0.150466,
		0.377871, 0.833174, 0.403776,
		-0.014719, -0.430649, 0.902400,
		24.988632, 35.165821, 35.457268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487076, 35.800838, 35.318165>,  <24.998936, 35.467278, 34.825588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487076, 35.800838, 35.318165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465540, 35.406574, 35.382130>,  <25.452618, 35.170017, 35.420509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465540, 35.406574, 35.382130>,  <25.487076, 35.800838, 35.318165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465540, 35.406574, 35.382130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996383, -0.063574, -0.056387,
		0.065745, 0.156301, 0.985519,
		-0.053840, -0.985661, 0.159916,
		25.449389, 35.110874, 35.430103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514566, 35.753613, 36.032974>,  <25.487076, 35.800838, 35.318165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514566, 35.753613, 36.032974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745829, 35.476601, 36.205551>,  <25.884586, 35.310394, 36.309097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.745829, 35.476601, 36.205551>,  <25.514566, 35.753613, 36.032974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.745829, 35.476601, 36.205551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558424, -0.049681, -0.828066,
		0.594892, 0.719680, 0.358000,
		0.578158, -0.692526, 0.431442,
		25.919275, 35.268845, 36.334984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285097, 35.958961, 36.041603>,  <25.514566, 35.753613, 36.032974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285097, 35.958961, 36.041603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254175, 35.561092, 36.068871>,  <26.235622, 35.322369, 36.085232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.254175, 35.561092, 36.068871>,  <26.285097, 35.958961, 36.041603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254175, 35.561092, 36.068871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732755, -0.103047, -0.672645,
		0.676087, -0.002046, 0.736819,
		-0.077303, -0.994675, 0.068170,
		26.230984, 35.262691, 36.089321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994938, 35.745857, 36.178856>,  <26.285097, 35.958961, 36.041603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994938, 35.745857, 36.178856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769855, 35.478615, 35.984127>,  <26.634806, 35.318268, 35.867290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769855, 35.478615, 35.984127>,  <26.994938, 35.745857, 36.178856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769855, 35.478615, 35.984127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590739, 0.086964, -0.802162,
		0.578265, -0.738967, 0.345741,
		-0.562705, -0.668105, -0.486825,
		26.601044, 35.278183, 35.838081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340214, 35.092422, 35.961872>,  <26.994938, 35.745857, 36.178856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340214, 35.092422, 35.961872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046122, 35.222050, 35.723740>,  <26.869667, 35.299824, 35.580860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046122, 35.222050, 35.723740>,  <27.340214, 35.092422, 35.961872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046122, 35.222050, 35.723740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672937, 0.243752, -0.698384,
		-0.081207, -0.914093, -0.397288,
		-0.735229, 0.324064, -0.595333,
		26.825554, 35.319267, 35.545139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391407, 34.748287, 35.462856>,  <27.340214, 35.092422, 35.961872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391407, 34.748287, 35.462856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227350, 35.090736, 35.337105>,  <27.128916, 35.296207, 35.261654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227350, 35.090736, 35.337105>,  <27.391407, 34.748287, 35.462856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227350, 35.090736, 35.337105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769026, 0.139331, -0.623848,
		-0.490291, -0.497627, -0.715529,
		-0.410139, 0.856127, -0.314375,
		27.104309, 35.347576, 35.242794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425047, 34.732288, 34.774937>,  <27.391407, 34.748287, 35.462856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425047, 34.732288, 34.774937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380121, 35.124142, 34.841503>,  <27.353165, 35.359253, 34.881443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.380121, 35.124142, 34.841503>,  <27.425047, 34.732288, 34.774937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.380121, 35.124142, 34.841503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766000, 0.192039, -0.613486,
		-0.632953, 0.058570, -0.771971,
		-0.112316, 0.979638, 0.166416,
		27.346426, 35.418034, 34.891426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714415, 35.059940, 34.132259>,  <27.425047, 34.732288, 34.774937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714415, 35.059940, 34.132259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702383, 35.358768, 34.397884>,  <27.695164, 35.538063, 34.557259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.702383, 35.358768, 34.397884>,  <27.714415, 35.059940, 34.132259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702383, 35.358768, 34.397884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647877, 0.520484, -0.556195,
		-0.761151, 0.413505, -0.499662,
		-0.030077, 0.747068, 0.664067,
		27.693359, 35.582890, 34.597103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630342, 35.700855, 33.760975>,  <27.714415, 35.059940, 34.132259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630342, 35.700855, 33.760975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792627, 35.772175, 34.119553>,  <27.889997, 35.814964, 34.334698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792627, 35.772175, 34.119553>,  <27.630342, 35.700855, 33.760975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792627, 35.772175, 34.119553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771947, 0.458300, -0.440520,
		-0.489382, 0.870731, 0.048304,
		0.405712, 0.178295, 0.896442,
		27.914341, 35.825665, 34.388485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855824, 36.421822, 33.873917>,  <27.630342, 35.700855, 33.760975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855824, 36.421822, 33.873917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101574, 36.194744, 34.093102>,  <28.249025, 36.058498, 34.224613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.101574, 36.194744, 34.093102>,  <27.855824, 36.421822, 33.873917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101574, 36.194744, 34.093102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782956, 0.524531, -0.334435,
		-0.097565, 0.634498, 0.766742,
		0.614378, -0.567696, 0.547961,
		28.285887, 36.024437, 34.257488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490122, 36.401775, 33.548058>,  <27.855824, 36.421822, 33.873917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490122, 36.401775, 33.548058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756554, 36.566963, 33.796505>,  <28.916412, 36.666077, 33.945572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756554, 36.566963, 33.796505>,  <28.490122, 36.401775, 33.548058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756554, 36.566963, 33.796505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368526, -0.541778, 0.755424,
		0.648479, -0.732072, -0.208676,
		0.666081, 0.412974, 0.621119,
		28.956379, 36.690857, 33.982841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023046, 35.954098, 33.900906>,  <28.490122, 36.401775, 33.548058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023046, 35.954098, 33.900906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946289, 36.260452, 34.146374>,  <28.900234, 36.444267, 34.293655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946289, 36.260452, 34.146374>,  <29.023046, 35.954098, 33.900906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946289, 36.260452, 34.146374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386532, -0.633729, 0.670060,
		0.902092, -0.108623, 0.417649,
		-0.191892, 0.765890, 0.613669,
		28.888721, 36.490219, 34.330475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111822, 35.595512, 34.398952>,  <29.023046, 35.954098, 33.900906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111822, 35.595512, 34.398952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875105, 35.913441, 34.452667>,  <28.733074, 36.104198, 34.484898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875105, 35.913441, 34.452667>,  <29.111822, 35.595512, 34.398952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875105, 35.913441, 34.452667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599985, -0.545581, 0.585115,
		0.538328, 0.265698, 0.799755,
		-0.591795, 0.794825, 0.134287,
		28.697567, 36.151890, 34.492954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768866, 35.597660, 35.167946>,  <29.111822, 35.595512, 34.398952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768866, 35.597660, 35.167946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577625, 35.861061, 34.935467>,  <28.462881, 36.019104, 34.795979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577625, 35.861061, 34.935467>,  <28.768866, 35.597660, 35.167946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577625, 35.861061, 34.935467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877474, -0.329367, 0.348648,
		0.038161, 0.676673, 0.735294,
		-0.478103, 0.658507, -0.581194,
		28.434195, 36.058613, 34.761108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313000, 36.132538, 35.561699>,  <28.768866, 35.597660, 35.167946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313000, 36.132538, 35.561699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189203, 36.050243, 35.190346>,  <28.114925, 36.000866, 34.967533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189203, 36.050243, 35.190346>,  <28.313000, 36.132538, 35.561699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189203, 36.050243, 35.190346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894310, -0.268807, 0.357704,
		-0.323149, 0.940964, -0.100803,
		-0.309491, -0.205740, -0.928378,
		28.096355, 35.988522, 34.911831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693693, 36.553734, 35.469318>,  <28.313000, 36.132538, 35.561699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693693, 36.553734, 35.469318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681044, 36.264240, 35.193577>,  <27.673454, 36.090546, 35.028133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681044, 36.264240, 35.193577>,  <27.693693, 36.553734, 35.469318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681044, 36.264240, 35.193577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960070, -0.169812, 0.222327,
		-0.277967, 0.668859, -0.689466,
		-0.031625, -0.723735, -0.689353,
		27.671556, 36.047119, 34.986771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058178, 36.656185, 35.141754>,  <27.693693, 36.553734, 35.469318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058178, 36.656185, 35.141754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151720, 36.270260, 35.093685>,  <27.207846, 36.038704, 35.064842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151720, 36.270260, 35.093685>,  <27.058178, 36.656185, 35.141754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151720, 36.270260, 35.093685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961159, -0.248045, 0.121029,
		-0.146579, 0.087204, -0.985348,
		0.233856, -0.964816, -0.120175,
		27.221876, 35.980816, 35.057632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496233, 36.385117, 34.790668>,  <27.058178, 36.656185, 35.141754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496233, 36.385117, 34.790668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694691, 36.074455, 34.945923>,  <26.813765, 35.888058, 35.039078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.694691, 36.074455, 34.945923>,  <26.496233, 36.385117, 34.790668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694691, 36.074455, 34.945923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855475, -0.360909, 0.371359,
		-0.148334, -0.516292, -0.843469,
		0.496145, -0.776652, 0.388140,
		26.843534, 35.841461, 35.062366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029158, 35.768238, 34.601913>,  <26.496233, 36.385117, 34.790668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029158, 35.768238, 34.601913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275190, 35.719612, 34.913528>,  <26.422810, 35.690437, 35.100498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275190, 35.719612, 34.913528>,  <26.029158, 35.768238, 34.601913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275190, 35.719612, 34.913528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758905, -0.359270, 0.543128,
		0.213860, -0.925282, -0.313235,
		0.615083, -0.121563, 0.779035,
		26.459715, 35.683144, 35.147240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.944326, 35.103222, 34.877796>,  <26.029158, 35.768238, 34.601913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.944326, 35.103222, 34.877796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263468, 35.019924, 35.104095>,  <26.454952, 34.969948, 35.239876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263468, 35.019924, 35.104095>,  <25.944326, 35.103222, 34.877796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263468, 35.019924, 35.104095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593917, -0.110527, 0.796898,
		-0.103374, -0.971824, -0.211832,
		0.797857, -0.208189, 0.565757,
		26.502823, 34.957451, 35.273819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.945116, 34.420658, 35.187313>,  <25.944326, 35.103222, 34.877796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.945116, 34.420658, 35.187313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160765, 34.684769, 35.396458>,  <26.290154, 34.843235, 35.521946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160765, 34.684769, 35.396458>,  <25.945116, 34.420658, 35.187313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160765, 34.684769, 35.396458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711337, 0.024575, 0.702422,
		0.450944, -0.750619, 0.482928,
		0.539119, 0.660278, 0.522861,
		26.322500, 34.882851, 35.553318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128632, 34.136139, 35.787373>,  <25.945116, 34.420658, 35.187313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128632, 34.136139, 35.787373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102932, 34.533661, 35.823627>,  <26.087513, 34.772175, 35.845379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102932, 34.533661, 35.823627>,  <26.128632, 34.136139, 35.787373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102932, 34.533661, 35.823627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792997, -0.105979, 0.599937,
		0.605829, -0.033328, 0.794897,
		-0.064248, 0.993810, 0.090634,
		26.083658, 34.831802, 35.850819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967131, 34.238869, 36.436359>,  <26.128632, 34.136139, 35.787373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967131, 34.238869, 36.436359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837410, 34.548626, 36.219051>,  <25.759577, 34.734478, 36.088665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837410, 34.548626, 36.219051>,  <25.967131, 34.238869, 36.436359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837410, 34.548626, 36.219051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877462, -0.031708, 0.478598,
		0.353395, 0.631913, 0.689781,
		-0.324304, 0.774390, -0.543274,
		25.740118, 34.780945, 36.056068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422733, 34.146893, 37.034855>,  <25.967131, 34.238869, 36.436359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422733, 34.146893, 37.034855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625505, 34.488373, 37.082542>,  <26.747168, 34.693260, 37.111156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625505, 34.488373, 37.082542>,  <26.422733, 34.146893, 37.034855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625505, 34.488373, 37.082542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792283, -0.515944, 0.325713,
		0.339574, -0.070657, -0.937922,
		0.506929, 0.853703, 0.119221,
		26.777584, 34.744484, 37.118309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070452, 34.136353, 36.587921>,  <26.422733, 34.146893, 37.034855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070452, 34.136353, 36.587921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136806, 34.402622, 36.878948>,  <27.176620, 34.562386, 37.053566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136806, 34.402622, 36.878948>,  <27.070452, 34.136353, 36.587921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136806, 34.402622, 36.878948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880138, -0.432716, 0.195230,
		0.444791, 0.607976, -0.657667,
		0.165888, 0.665674, 0.727571,
		27.186573, 34.602325, 37.097218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720497, 34.535503, 36.530930>,  <27.070452, 34.136353, 36.587921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720497, 34.535503, 36.530930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621521, 34.536442, 36.918491>,  <27.562136, 34.537006, 37.151028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621521, 34.536442, 36.918491>,  <27.720497, 34.535503, 36.530930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621521, 34.536442, 36.918491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899303, -0.371608, 0.230568,
		0.360592, 0.928387, 0.089838,
		-0.247440, 0.002349, 0.968900,
		27.547289, 34.537148, 37.209160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212391, 34.802570, 36.879101>,  <27.720497, 34.535503, 36.530930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212391, 34.802570, 36.879101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052931, 34.570992, 37.163605>,  <27.957254, 34.432045, 37.334309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052931, 34.570992, 37.163605>,  <28.212391, 34.802570, 36.879101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052931, 34.570992, 37.163605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881183, -0.456729, 0.122126,
		0.254150, 0.675439, 0.692235,
		-0.398652, -0.578948, 0.711263,
		27.933334, 34.397308, 37.376984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691956, 34.356590, 37.282101>,  <28.212391, 34.802570, 36.879101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691956, 34.356590, 37.282101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409264, 34.168667, 37.493690>,  <28.239649, 34.055912, 37.620644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409264, 34.168667, 37.493690>,  <28.691956, 34.356590, 37.282101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409264, 34.168667, 37.493690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707481, -0.469410, 0.528322,
		0.000097, 0.747621, 0.664126,
		-0.706732, -0.469805, 0.528973,
		28.197245, 34.027725, 37.652382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195364, 34.614483, 37.772179>,  <28.691956, 34.356590, 37.282101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195364, 34.614483, 37.772179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556587, 34.777691, 37.718494>,  <29.773321, 34.875614, 37.686283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556587, 34.777691, 37.718494>,  <29.195364, 34.614483, 37.772179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556587, 34.777691, 37.718494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426447, -0.889020, 0.166692,
		-0.051299, -0.207764, -0.976833,
		0.903057, 0.408016, -0.134207,
		29.827505, 34.900097, 37.678234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536650, 34.213814, 37.260807>,  <29.195364, 34.614483, 37.772179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536650, 34.213814, 37.260807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804506, 34.386520, 37.502522>,  <29.965221, 34.490143, 37.647549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804506, 34.386520, 37.502522>,  <29.536650, 34.213814, 37.260807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804506, 34.386520, 37.502522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313740, -0.901941, 0.296766,
		0.673161, -0.009139, -0.739440,
		0.669643, 0.431763, 0.604284,
		30.005400, 34.516048, 37.683807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331474, 33.583557, 36.757668>,  <29.536650, 34.213814, 37.260807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331474, 33.583557, 36.757668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692324, 33.443245, 36.858166>,  <29.908833, 33.359058, 36.918465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692324, 33.443245, 36.858166>,  <29.331474, 33.583557, 36.757668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692324, 33.443245, 36.858166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011114, -0.600998, -0.799174,
		0.431336, 0.718161, -0.546073,
		0.902123, -0.350781, 0.251250,
		29.962961, 33.338009, 36.933540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993324, 33.748917, 36.302544>,  <29.331474, 33.583557, 36.757668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993324, 33.748917, 36.302544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985256, 33.384747, 36.467819>,  <29.980415, 33.166245, 36.566982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985256, 33.384747, 36.467819>,  <29.993324, 33.748917, 36.302544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985256, 33.384747, 36.467819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096409, -0.409573, -0.907169,
		0.995138, -0.058131, -0.079513,
		-0.020168, -0.910423, 0.413186,
		29.979206, 33.111618, 36.591774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547789, 33.365540, 35.963093>,  <29.993324, 33.748917, 36.302544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547789, 33.365540, 35.963093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244341, 33.149223, 36.108444>,  <30.062271, 33.019436, 36.195656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244341, 33.149223, 36.108444>,  <30.547789, 33.365540, 35.963093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244341, 33.149223, 36.108444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113046, -0.440019, -0.890844,
		0.641651, -0.716891, 0.272674,
		-0.758621, -0.540786, 0.363380,
		30.016754, 32.986988, 36.217457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710125, 32.903835, 35.440716>,  <30.547789, 33.365540, 35.963093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710125, 32.903835, 35.440716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335808, 32.883179, 35.580215>,  <30.111217, 32.870785, 35.663914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335808, 32.883179, 35.580215>,  <30.710125, 32.903835, 35.440716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335808, 32.883179, 35.580215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329519, -0.223578, -0.917295,
		0.125343, -0.973317, 0.192205,
		-0.935792, -0.051641, 0.348750,
		30.055071, 32.867687, 35.684841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383389, 32.492973, 34.854633>,  <30.710125, 32.903835, 35.440716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383389, 32.492973, 34.854633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528921, 32.226860, 35.115410>,  <30.616240, 32.067192, 35.271877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528921, 32.226860, 35.115410>,  <30.383389, 32.492973, 34.854633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528921, 32.226860, 35.115410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260765, 0.599175, 0.756962,
		-0.894220, -0.445409, 0.044515,
		0.363831, -0.665283, 0.651941,
		30.638071, 32.027275, 35.310993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835094, 32.356007, 35.407005>,  <30.383389, 32.492973, 34.854633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835094, 32.356007, 35.407005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180969, 32.256256, 35.581421>,  <30.388494, 32.196407, 35.686069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180969, 32.256256, 35.581421>,  <29.835094, 32.356007, 35.407005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180969, 32.256256, 35.581421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243052, 0.551971, 0.797655,
		-0.439595, -0.795702, 0.416671,
		0.864686, -0.249373, 0.436041,
		30.440374, 32.181446, 35.712234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804569, 32.228218, 36.215076>,  <29.835094, 32.356007, 35.407005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804569, 32.228218, 36.215076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179342, 32.334820, 36.124622>,  <30.404205, 32.398781, 36.070351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179342, 32.334820, 36.124622>,  <29.804569, 32.228218, 36.215076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179342, 32.334820, 36.124622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023845, 0.596744, 0.802077,
		0.348697, -0.756884, 0.552754,
		0.936932, 0.266501, -0.226131,
		30.460423, 32.414772, 36.056782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330519, 32.119377, 36.766331>,  <29.804569, 32.228218, 36.215076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330519, 32.119377, 36.766331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434216, 32.432022, 36.539398>,  <30.496433, 32.619610, 36.403236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.434216, 32.432022, 36.539398>,  <30.330519, 32.119377, 36.766331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434216, 32.432022, 36.539398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044138, 0.596392, 0.801479,
		0.964803, -0.182736, 0.189108,
		0.259242, 0.781616, -0.567335,
		30.511988, 32.666508, 36.369198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875629, 32.327652, 37.132679>,  <30.330519, 32.119377, 36.766331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875629, 32.327652, 37.132679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675159, 32.605804, 36.926659>,  <30.554878, 32.772694, 36.803047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675159, 32.605804, 36.926659>,  <30.875629, 32.327652, 37.132679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675159, 32.605804, 36.926659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359311, 0.374234, 0.854895,
		0.787222, 0.613515, 0.062300,
		-0.501176, 0.695377, -0.515048,
		30.524807, 32.814419, 36.772144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186756, 32.950935, 37.329723>,  <30.875629, 32.327652, 37.132679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186756, 32.950935, 37.329723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814724, 33.029274, 37.205406>,  <30.591505, 33.076279, 37.130817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814724, 33.029274, 37.205406>,  <31.186756, 32.950935, 37.329723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814724, 33.029274, 37.205406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170929, 0.518144, 0.838039,
		0.325162, 0.832568, -0.448441,
		-0.930082, 0.195847, -0.310791,
		30.535700, 33.088028, 37.112167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529030, 32.888824, 36.692944>,  <31.186756, 32.950935, 37.329723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529030, 32.888824, 36.692944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196722, 32.786827, 36.495033>,  <30.997337, 32.725628, 36.376289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196722, 32.786827, 36.495033>,  <31.529030, 32.888824, 36.692944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196722, 32.786827, 36.495033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555913, -0.424739, -0.714533,
		-0.027950, -0.868664, 0.494613,
		-0.830771, -0.254991, -0.494773,
		30.947491, 32.710331, 36.346603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733379, 32.476543, 36.018688>,  <31.529030, 32.888824, 36.692944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733379, 32.476543, 36.018688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341526, 32.417957, 36.073624>,  <31.106413, 32.382805, 36.106586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341526, 32.417957, 36.073624>,  <31.733379, 32.476543, 36.018688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341526, 32.417957, 36.073624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025673, -0.769784, -0.637788,
		0.199137, -0.621273, 0.757868,
		-0.979635, -0.146464, 0.137343,
		31.047636, 32.374020, 36.114826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563761, 31.730062, 36.139408>,  <31.733379, 32.476543, 36.018688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563761, 31.730062, 36.139408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199158, 31.861622, 36.040634>,  <30.980396, 31.940557, 35.981369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199158, 31.861622, 36.040634>,  <31.563761, 31.730062, 36.139408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199158, 31.861622, 36.040634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094206, -0.751411, -0.653075,
		-0.400345, -0.572020, 0.715902,
		-0.911509, 0.328898, -0.246936,
		30.925705, 31.960291, 35.966553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118189, 31.262638, 36.203312>,  <31.563761, 31.730062, 36.139408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118189, 31.262638, 36.203312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967524, 31.494837, 35.914551>,  <30.877125, 31.634157, 35.741295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967524, 31.494837, 35.914551>,  <31.118189, 31.262638, 36.203312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967524, 31.494837, 35.914551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083346, -0.754902, -0.650520,
		-0.922593, -0.305195, 0.235962,
		-0.376664, 0.580498, -0.721905,
		30.854525, 31.668985, 35.697979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546980, 30.828070, 35.856785>,  <31.118189, 31.262638, 36.203312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546980, 30.828070, 35.856785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702049, 31.120729, 35.632500>,  <30.795090, 31.296326, 35.497929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702049, 31.120729, 35.632500>,  <30.546980, 30.828070, 35.856785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702049, 31.120729, 35.632500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004658, -0.606722, -0.794901,
		-0.921786, 0.310772, -0.231801,
		0.387671, 0.731649, -0.560715,
		30.818350, 31.340223, 35.464287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091883, 31.044605, 35.192810>,  <30.546980, 30.828070, 35.856785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091883, 31.044605, 35.192810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490349, 31.072084, 35.171150>,  <30.729429, 31.088572, 35.158154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.490349, 31.072084, 35.171150>,  <30.091883, 31.044605, 35.192810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490349, 31.072084, 35.171150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013395, -0.731550, -0.681656,
		-0.086445, 0.678317, -0.729666,
		0.996167, 0.068700, -0.054153,
		30.789198, 31.092695, 35.154903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195656, 30.778685, 34.510868>,  <30.091883, 31.044605, 35.192810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195656, 30.778685, 34.510868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565649, 30.774874, 34.662823>,  <30.787645, 30.772587, 34.753994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565649, 30.774874, 34.662823>,  <30.195656, 30.778685, 34.510868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565649, 30.774874, 34.662823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271130, -0.683893, -0.677332,
		0.266254, 0.729520, -0.630008,
		0.924985, -0.009529, 0.379884,
		30.843145, 30.772015, 34.776787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642279, 30.898464, 33.935169>,  <30.195656, 30.778685, 34.510868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642279, 30.898464, 33.935169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884258, 30.759171, 34.221600>,  <31.029446, 30.675594, 34.393459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884258, 30.759171, 34.221600>,  <30.642279, 30.898464, 33.935169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884258, 30.759171, 34.221600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446963, -0.595745, -0.667317,
		0.658983, 0.723754, -0.204747,
		0.604950, -0.348237, 0.716077,
		31.065742, 30.654699, 34.436424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184399, 30.704821, 33.596504>,  <30.642279, 30.898464, 33.935169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184399, 30.704821, 33.596504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226593, 30.523417, 33.950500>,  <31.251909, 30.414574, 34.162899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226593, 30.523417, 33.950500>,  <31.184399, 30.704821, 33.596504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226593, 30.523417, 33.950500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389559, -0.799976, -0.456379,
		0.914941, 0.392896, 0.092283,
		0.105486, -0.453510, 0.884987,
		31.258238, 30.387363, 34.215996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846590, 30.549225, 33.608898>,  <31.184399, 30.704821, 33.596504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846590, 30.549225, 33.608898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682796, 30.313786, 33.887718>,  <31.584520, 30.172522, 34.055008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682796, 30.313786, 33.887718>,  <31.846590, 30.549225, 33.608898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682796, 30.313786, 33.887718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646014, -0.726568, -0.234020,
		0.644195, 0.354474, 0.677761,
		-0.409486, -0.588597, 0.697047,
		31.559950, 30.137207, 34.096832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431580, 30.258001, 33.958801>,  <31.846590, 30.549225, 33.608898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431580, 30.258001, 33.958801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123608, 30.013151, 34.030922>,  <31.938824, 29.866241, 34.074192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123608, 30.013151, 34.030922>,  <32.431580, 30.258001, 33.958801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123608, 30.013151, 34.030922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562040, -0.784299, -0.262651,
		0.302183, -0.100889, 0.947896,
		-0.769932, -0.612125, 0.180298,
		31.892628, 29.829514, 34.085011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762943, 29.745899, 34.243042>,  <32.431580, 30.258001, 33.958801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762943, 29.745899, 34.243042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403450, 29.618258, 34.122738>,  <32.187756, 29.541672, 34.050556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403450, 29.618258, 34.122738>,  <32.762943, 29.745899, 34.243042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403450, 29.618258, 34.122738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403181, -0.871030, -0.280629,
		-0.172418, -0.373469, 0.911478,
		-0.898731, -0.319105, -0.300757,
		32.133831, 29.522526, 34.032513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598064, 29.083923, 34.551056>,  <32.762943, 29.745899, 34.243042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598064, 29.083923, 34.551056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397469, 29.094584, 34.205154>,  <32.277111, 29.100981, 33.997616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397469, 29.094584, 34.205154>,  <32.598064, 29.083923, 34.551056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397469, 29.094584, 34.205154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198362, -0.969357, -0.144911,
		-0.842115, -0.244206, 0.480839,
		-0.501493, 0.026652, -0.864751,
		32.247021, 29.102579, 33.945728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999519, 28.442772, 34.625702>,  <32.598064, 29.083923, 34.551056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999519, 28.442772, 34.625702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915989, 28.731693, 34.889420>,  <32.865871, 28.905046, 35.047649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915989, 28.731693, 34.889420>,  <32.999519, 28.442772, 34.625702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915989, 28.731693, 34.889420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294246, -0.689324, 0.662006,
		0.932636, -0.055751, 0.356484,
		-0.208826, 0.722305, 0.659293,
		32.853340, 28.948385, 35.087208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227112, 28.165949, 33.884632>,  <32.999519, 28.442772, 34.625702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227112, 28.165949, 33.884632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900913, 28.008816, 33.714619>,  <32.705193, 27.914536, 33.612610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900913, 28.008816, 33.714619>,  <33.227112, 28.165949, 33.884632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900913, 28.008816, 33.714619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513605, 0.829718, 0.218581,
		0.266789, 0.396550, -0.878392,
		-0.815496, -0.392832, -0.425030,
		32.656265, 27.890966, 33.587109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028942, 28.639849, 33.358482>,  <33.227112, 28.165949, 33.884632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028942, 28.639849, 33.358482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740330, 28.421782, 33.529213>,  <32.567162, 28.290941, 33.631653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740330, 28.421782, 33.529213>,  <33.028942, 28.639849, 33.358482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740330, 28.421782, 33.529213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536747, 0.829836, 0.152562,
		-0.437366, -0.119018, -0.891373,
		-0.721535, -0.545167, 0.426825,
		32.523869, 28.258232, 33.657261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377365, 28.853786, 33.064091>,  <33.028942, 28.639849, 33.358482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377365, 28.853786, 33.064091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325329, 28.715319, 33.435734>,  <32.294106, 28.632238, 33.658718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325329, 28.715319, 33.435734>,  <32.377365, 28.853786, 33.064091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325329, 28.715319, 33.435734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428984, 0.864475, 0.262023,
		-0.893895, -0.364486, -0.260962,
		-0.130092, -0.346169, 0.929109,
		32.286301, 28.611467, 33.714466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667942, 29.099771, 33.250122>,  <32.377365, 28.853786, 33.064091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667942, 29.099771, 33.250122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816423, 28.993170, 33.605915>,  <31.905512, 28.929209, 33.819393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816423, 28.993170, 33.605915>,  <31.667942, 29.099771, 33.250122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816423, 28.993170, 33.605915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509461, 0.742417, 0.435049,
		-0.776310, -0.614650, 0.139815,
		0.371204, -0.266502, 0.889485,
		31.927784, 28.913219, 33.872761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021261, 28.918686, 33.663727>,  <31.667942, 29.099771, 33.250122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021261, 28.918686, 33.663727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328346, 29.025932, 33.896530>,  <31.512596, 29.090281, 34.036213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328346, 29.025932, 33.896530>,  <31.021261, 28.918686, 33.663727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328346, 29.025932, 33.896530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530082, 0.776047, 0.341708,
		-0.360047, -0.570845, 0.737904,
		0.767710, 0.268118, 0.582008,
		31.558659, 29.106367, 34.071133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791750, 29.133663, 34.319496>,  <31.021261, 28.918686, 33.663727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791750, 29.133663, 34.319496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140036, 29.324717, 34.272640>,  <31.349007, 29.439348, 34.244526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140036, 29.324717, 34.272640>,  <30.791750, 29.133663, 34.319496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140036, 29.324717, 34.272640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397483, 0.823757, 0.404268,
		0.289589, -0.305440, 0.907108,
		0.870715, 0.477631, -0.117144,
		31.401251, 29.468006, 34.237495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835062, 29.463537, 34.949730>,  <30.791750, 29.133663, 34.319496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835062, 29.463537, 34.949730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114029, 29.629259, 34.715820>,  <31.281408, 29.728693, 34.575474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114029, 29.629259, 34.715820>,  <30.835062, 29.463537, 34.949730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114029, 29.629259, 34.715820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024180, 0.829105, 0.558569,
		0.716258, -0.375415, 0.588249,
		0.697416, 0.414304, -0.584776,
		31.323254, 29.753550, 34.540386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295618, 29.638733, 35.286930>,  <30.835062, 29.463537, 34.949730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295618, 29.638733, 35.286930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301771, 29.878967, 34.967163>,  <31.305462, 30.023108, 34.775303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301771, 29.878967, 34.967163>,  <31.295618, 29.638733, 35.286930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301771, 29.878967, 34.967163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231818, 0.779865, 0.581438,
		0.972638, 0.176375, 0.151222,
		0.015382, 0.600585, -0.799414,
		31.306385, 30.059143, 34.727341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815937, 30.165964, 35.473869>,  <31.295618, 29.638733, 35.286930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815937, 30.165964, 35.473869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581051, 30.299196, 35.178780>,  <31.440119, 30.379135, 35.001724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.581051, 30.299196, 35.178780>,  <31.815937, 30.165964, 35.473869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581051, 30.299196, 35.178780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013649, 0.907206, 0.420465,
		0.809317, 0.256972, -0.528178,
		-0.587214, 0.333080, -0.737724,
		31.404886, 30.399120, 34.957462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132214, 30.793255, 35.211163>,  <31.815937, 30.165964, 35.473869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132214, 30.793255, 35.211163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741943, 30.779036, 35.124630>,  <31.507782, 30.770504, 35.072712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741943, 30.779036, 35.124630>,  <32.132214, 30.793255, 35.211163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741943, 30.779036, 35.124630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093545, 0.959934, 0.264151,
		0.198270, 0.277961, -0.939908,
		-0.975673, -0.035550, -0.216328,
		31.449242, 30.768370, 35.059731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017338, 31.389898, 34.679909>,  <32.132214, 30.793255, 35.211163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017338, 31.389898, 34.679909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703041, 31.278301, 34.900734>,  <31.514463, 31.211344, 35.033230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703041, 31.278301, 34.900734>,  <32.017338, 31.389898, 34.679909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703041, 31.278301, 34.900734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042846, 0.914909, 0.401379,
		-0.617072, 0.291726, -0.730834,
		-0.785740, -0.278993, 0.552065,
		31.467319, 31.194603, 35.066353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984539, 31.401249, 33.899841>,  <32.017338, 31.389898, 34.679909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984539, 31.401249, 33.899841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055450, 31.794670, 33.885986>,  <32.097996, 32.030724, 33.877674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055450, 31.794670, 33.885986>,  <31.984539, 31.401249, 33.899841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055450, 31.794670, 33.885986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051226, -0.025927, -0.998351,
		-0.982827, 0.178761, 0.045788,
		0.177278, 0.983551, -0.034639,
		32.108635, 32.089737, 33.875595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440350, 31.760952, 33.579548>,  <31.984539, 31.401249, 33.899841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440350, 31.760952, 33.579548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765951, 31.983881, 33.514080>,  <31.961311, 32.117638, 33.474800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765951, 31.983881, 33.514080>,  <31.440350, 31.760952, 33.579548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765951, 31.983881, 33.514080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100764, -0.142015, -0.984723,
		-0.572053, 0.818060, -0.059442,
		0.814004, 0.557324, -0.163671,
		32.010151, 32.151077, 33.464977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229437, 32.182144, 32.980217>,  <31.440350, 31.760952, 33.579548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229437, 32.182144, 32.980217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628105, 32.188309, 33.012234>,  <31.867306, 32.192009, 33.031445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628105, 32.188309, 33.012234>,  <31.229437, 32.182144, 32.980217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628105, 32.188309, 33.012234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079441, 0.036480, -0.996172,
		-0.018273, 0.999216, 0.035135,
		0.996672, 0.015412, 0.080045,
		31.927107, 32.192932, 33.036247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510359, 32.660332, 32.422745>,  <31.229437, 32.182144, 32.980217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510359, 32.660332, 32.422745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839605, 32.457558, 32.525112>,  <32.037155, 32.335892, 32.586533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839605, 32.457558, 32.525112>,  <31.510359, 32.660332, 32.422745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839605, 32.457558, 32.525112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189866, -0.179046, -0.965346,
		0.535192, 0.843182, -0.051126,
		0.823117, -0.506938, 0.255916,
		32.086540, 32.305477, 32.601887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062279, 32.908394, 31.984505>,  <31.510359, 32.660332, 32.422745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062279, 32.908394, 31.984505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183594, 32.552464, 32.120876>,  <32.256382, 32.338905, 32.202698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183594, 32.552464, 32.120876>,  <32.062279, 32.908394, 31.984505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183594, 32.552464, 32.120876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277415, -0.259832, -0.924948,
		0.911625, 0.375100, 0.168048,
		0.303284, -0.889824, 0.340928,
		32.274578, 32.285515, 32.223156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836800, 32.814152, 31.845490>,  <32.062279, 32.908394, 31.984505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836800, 32.814152, 31.845490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662182, 32.457497, 31.893511>,  <32.557411, 32.243504, 31.922323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662182, 32.457497, 31.893511>,  <32.836800, 32.814152, 31.845490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662182, 32.457497, 31.893511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271243, -0.257669, -0.927380,
		0.857820, -0.372280, 0.354334,
		-0.436546, -0.891636, 0.120055,
		32.531219, 32.190006, 31.929527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175266, 32.369694, 31.422323>,  <32.836800, 32.814152, 31.845490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175266, 32.369694, 31.422323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857273, 32.137627, 31.493200>,  <32.666477, 31.998386, 31.535727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857273, 32.137627, 31.493200>,  <33.175266, 32.369694, 31.422323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857273, 32.137627, 31.493200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131537, -0.450011, -0.883282,
		0.592194, -0.678890, 0.434067,
		-0.794987, -0.580171, 0.177195,
		32.618778, 31.963575, 31.546358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325951, 31.648352, 31.212635>,  <33.175266, 32.369694, 31.422323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325951, 31.648352, 31.212635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927113, 31.628290, 31.189716>,  <32.687809, 31.616253, 31.175964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927113, 31.628290, 31.189716>,  <33.325951, 31.648352, 31.212635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927113, 31.628290, 31.189716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071348, -0.352486, -0.933093,
		0.026601, -0.934472, 0.355041,
		-0.997097, -0.050153, -0.057296,
		32.627983, 31.613245, 31.172527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284824, 31.147236, 30.719799>,  <33.325951, 31.648352, 31.212635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284824, 31.147236, 30.719799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924564, 31.320501, 30.733675>,  <32.708408, 31.424461, 30.742001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924564, 31.320501, 30.733675>,  <33.284824, 31.147236, 30.719799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924564, 31.320501, 30.733675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084348, -0.095953, -0.991806,
		-0.426286, -0.896193, 0.122957,
		-0.900647, 0.433164, 0.034689,
		32.654369, 31.450451, 30.744081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934513, 30.673775, 30.441490>,  <33.284824, 31.147236, 30.719799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934513, 30.673775, 30.441490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739441, 31.020136, 30.396988>,  <32.622398, 31.227953, 30.370287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739441, 31.020136, 30.396988>,  <32.934513, 30.673775, 30.441490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739441, 31.020136, 30.396988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062066, -0.161504, -0.984918,
		-0.870814, -0.473419, 0.132505,
		-0.487680, 0.865904, -0.111257,
		32.593136, 31.279907, 30.363611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481224, 30.596960, 29.917650>,  <32.934513, 30.673775, 30.441490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481224, 30.596960, 29.917650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508011, 30.995544, 29.937967>,  <32.524082, 31.234695, 29.950157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508011, 30.995544, 29.937967>,  <32.481224, 30.596960, 29.917650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508011, 30.995544, 29.937967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067212, 0.046286, -0.996664,
		-0.995489, 0.070158, -0.063875,
		0.066967, 0.996461, 0.050792,
		32.528103, 31.294483, 29.953205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870073, 30.898623, 29.487566>,  <32.481224, 30.596960, 29.917650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870073, 30.898623, 29.487566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156567, 31.177298, 29.503746>,  <32.328461, 31.344503, 29.513454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156567, 31.177298, 29.503746>,  <31.870073, 30.898623, 29.487566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156567, 31.177298, 29.503746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076858, 0.136361, -0.987673,
		-0.693618, 0.704293, 0.151213,
		0.716231, 0.696690, 0.040452,
		32.371437, 31.386305, 29.515882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616093, 31.490242, 29.093149>,  <31.870073, 30.898623, 29.487566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616093, 31.490242, 29.093149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012920, 31.539145, 29.081463>,  <32.251019, 31.568487, 29.074451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012920, 31.539145, 29.081463>,  <31.616093, 31.490242, 29.093149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012920, 31.539145, 29.081463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057406, 0.233891, -0.970567,
		-0.111826, 0.964546, 0.239055,
		0.992068, 0.122257, -0.029215,
		32.310539, 31.575821, 29.072699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700672, 32.084328, 28.715031>,  <31.616093, 31.490242, 29.093149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700672, 32.084328, 28.715031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068333, 31.927818, 28.696867>,  <32.288929, 31.833912, 28.685968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068333, 31.927818, 28.696867>,  <31.700672, 32.084328, 28.715031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068333, 31.927818, 28.696867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092085, 0.325528, -0.941038,
		0.382989, 0.860775, 0.335241,
		0.919152, -0.391277, -0.045409,
		32.344078, 31.810434, 28.683245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098259, 32.545055, 28.387659>,  <31.700672, 32.084328, 28.715031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098259, 32.545055, 28.387659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298946, 32.201626, 28.345440>,  <32.419357, 31.995569, 28.320108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.298946, 32.201626, 28.345440>,  <32.098259, 32.545055, 28.387659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298946, 32.201626, 28.345440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086452, 0.171171, -0.981441,
		0.860702, 0.483279, 0.160104,
		0.501715, -0.858570, -0.105547,
		32.449459, 31.944056, 28.313776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427418, 32.794182, 27.783020>,  <32.098259, 32.545055, 28.387659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427418, 32.794182, 27.783020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491055, 32.399281, 27.780884>,  <32.529236, 32.162342, 27.779602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491055, 32.399281, 27.780884>,  <32.427418, 32.794182, 27.783020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491055, 32.399281, 27.780884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008145, 0.004096, -0.999959,
		0.987231, 0.159127, -0.007390,
		0.159090, -0.987250, -0.005340,
		32.538780, 32.103107, 27.779282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879311, 32.680717, 27.164762>,  <32.427418, 32.794182, 27.783020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879311, 32.680717, 27.164762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761654, 32.305630, 27.238684>,  <32.691059, 32.080574, 27.283035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761654, 32.305630, 27.238684>,  <32.879311, 32.680717, 27.164762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761654, 32.305630, 27.238684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099128, -0.222244, -0.969939,
		0.950606, -0.266985, 0.158327,
		-0.294146, -0.937724, 0.184801,
		32.673409, 32.024311, 27.294125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376499, 32.305027, 26.809223>,  <32.879311, 32.680717, 27.164762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376499, 32.305027, 26.809223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054581, 32.071213, 26.850445>,  <32.861427, 31.930925, 26.875177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054581, 32.071213, 26.850445>,  <33.376499, 32.305027, 26.809223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054581, 32.071213, 26.850445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039060, -0.225402, -0.973483,
		0.592261, -0.779432, 0.204236,
		-0.804799, -0.584533, 0.103052,
		32.813141, 31.895853, 26.881361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524273, 31.778030, 26.351534>,  <33.376499, 32.305027, 26.809223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524273, 31.778030, 26.351534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127522, 31.748415, 26.392885>,  <32.889469, 31.730646, 26.417696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127522, 31.748415, 26.392885>,  <33.524273, 31.778030, 26.351534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127522, 31.748415, 26.392885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085843, -0.209891, -0.973949,
		0.093808, -0.974918, 0.201832,
		-0.991883, -0.074038, 0.103380,
		32.829956, 31.726204, 26.423899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294952, 31.155569, 25.879177>,  <33.524273, 31.778030, 26.351534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294952, 31.155569, 25.879177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987698, 31.403166, 25.944672>,  <32.803345, 31.551723, 25.983969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987698, 31.403166, 25.944672>,  <33.294952, 31.155569, 25.879177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987698, 31.403166, 25.944672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319149, -0.148452, -0.936005,
		-0.555073, -0.771239, 0.311583,
		-0.768139, 0.618993, 0.163738,
		32.757256, 31.588863, 25.993793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722660, 30.834763, 25.630989>,  <33.294952, 31.155569, 25.879177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722660, 30.834763, 25.630989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604912, 31.216936, 25.622059>,  <32.534264, 31.446239, 25.616701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604912, 31.216936, 25.622059>,  <32.722660, 30.834763, 25.630989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604912, 31.216936, 25.622059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144636, -0.067628, -0.987171,
		-0.944685, -0.287361, 0.158097,
		-0.294367, 0.955432, -0.022324,
		32.516602, 31.503565, 25.615362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256962, 30.763805, 25.080635>,  <32.722660, 30.834763, 25.630989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256962, 30.763805, 25.080635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266731, 31.155579, 25.160751>,  <32.272594, 31.390642, 25.208820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266731, 31.155579, 25.160751>,  <32.256962, 30.763805, 25.080635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266731, 31.155579, 25.160751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211015, 0.200887, -0.956618,
		-0.977178, -0.018902, 0.211581,
		0.024422, 0.979432, 0.200290,
		32.274059, 31.449408, 25.220839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652481, 31.042339, 24.858376>,  <32.256962, 30.763805, 25.080635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652481, 31.042339, 24.858376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943979, 31.316252, 24.857937>,  <32.118877, 31.480600, 24.857674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943979, 31.316252, 24.857937>,  <31.652481, 31.042339, 24.858376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943979, 31.316252, 24.857937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146780, 0.154640, -0.977007,
		-0.668868, 0.712151, 0.213206,
		0.728747, 0.684782, -0.001095,
		32.162601, 31.521687, 24.857609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408430, 31.470917, 24.418436>,  <31.652481, 31.042339, 24.858376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408430, 31.470917, 24.418436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774771, 31.630541, 24.436180>,  <31.994576, 31.726316, 24.446827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774771, 31.630541, 24.436180>,  <31.408430, 31.470917, 24.418436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774771, 31.630541, 24.436180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075857, 0.280455, -0.956865,
		-0.394289, 0.872980, 0.287126,
		0.915850, 0.399062, 0.044359,
		32.049526, 31.750259, 24.449488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470045, 32.205032, 24.029287>,  <31.408430, 31.470917, 24.418436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470045, 32.205032, 24.029287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847469, 32.075104, 24.055155>,  <32.073925, 31.997147, 24.070675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847469, 32.075104, 24.055155>,  <31.470045, 32.205032, 24.029287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847469, 32.075104, 24.055155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154425, 0.258749, -0.953521,
		0.292988, 0.909693, 0.294306,
		0.943563, -0.324819, 0.064669,
		32.130539, 31.977657, 24.074556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783892, 32.640865, 23.602907>,  <31.470045, 32.205032, 24.029287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783892, 32.640865, 23.602907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068256, 32.359745, 23.613287>,  <32.238876, 32.191071, 23.619514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.068256, 32.359745, 23.613287>,  <31.783892, 32.640865, 23.602907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068256, 32.359745, 23.613287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266270, 0.234825, -0.934857,
		0.650929, 0.671508, 0.354075,
		0.710910, -0.702805, 0.025948,
		32.281528, 32.148903, 23.621071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422890, 32.932938, 23.498329>,  <31.783892, 32.640865, 23.602907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422890, 32.932938, 23.498329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458824, 32.560520, 23.356857>,  <32.480385, 32.337070, 23.271975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458824, 32.560520, 23.356857>,  <32.422890, 32.932938, 23.498329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458824, 32.560520, 23.356857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418346, 0.357546, -0.834953,
		0.903833, -0.072948, 0.421620,
		0.089840, -0.931042, -0.353680,
		32.485775, 32.281208, 23.250753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975750, 33.034599, 23.280781>,  <32.422890, 32.932938, 23.498329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975750, 33.034599, 23.280781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861881, 32.696098, 23.100637>,  <32.793560, 32.493000, 22.992552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861881, 32.696098, 23.100637>,  <32.975750, 33.034599, 23.280781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861881, 32.696098, 23.100637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564757, 0.231562, -0.792104,
		0.774603, -0.479835, 0.412006,
		-0.284674, -0.846249, -0.450359,
		32.776478, 32.442223, 22.965530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538548, 32.777950, 23.033550>,  <32.975750, 33.034599, 23.280781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538548, 32.777950, 23.033550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241398, 32.624775, 22.813915>,  <33.063107, 32.532871, 22.682135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241398, 32.624775, 22.813915>,  <33.538548, 32.777950, 23.033550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241398, 32.624775, 22.813915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466744, 0.291697, -0.834903,
		0.479883, -0.876511, -0.037960,
		-0.742874, -0.382937, -0.549087,
		33.018536, 32.509895, 22.649189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854145, 32.279781, 22.397289>,  <33.538548, 32.777950, 23.033550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854145, 32.279781, 22.397289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473289, 32.375252, 22.320902>,  <33.244778, 32.432533, 22.275070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473289, 32.375252, 22.320902>,  <33.854145, 32.279781, 22.397289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473289, 32.375252, 22.320902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277372, 0.412074, -0.867905,
		-0.128457, -0.879334, -0.458553,
		-0.952136, 0.238678, -0.190969,
		33.187649, 32.446854, 22.263611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899307, 32.225254, 21.688734>,  <33.854145, 32.279781, 22.397289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899307, 32.225254, 21.688734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559208, 32.428627, 21.743254>,  <33.355148, 32.550652, 21.775965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559208, 32.428627, 21.743254>,  <33.899307, 32.225254, 21.688734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559208, 32.428627, 21.743254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128489, 0.451561, -0.882940,
		-0.510463, -0.733204, -0.449266,
		-0.850246, 0.508434, 0.136297,
		33.304134, 32.581158, 21.784143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503044, 32.169575, 21.110800>,  <33.899307, 32.225254, 21.688734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503044, 32.169575, 21.110800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373642, 32.510441, 21.275318>,  <33.296001, 32.714958, 21.374029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373642, 32.510441, 21.275318>,  <33.503044, 32.169575, 21.110800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373642, 32.510441, 21.275318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119022, 0.467864, -0.875750,
		-0.938710, -0.234359, -0.252784,
		-0.323508, 0.852161, 0.411295,
		33.276588, 32.766090, 21.398706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993065, 32.342537, 20.660723>,  <33.503044, 32.169575, 21.110800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993065, 32.342537, 20.660723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115162, 32.669674, 20.855846>,  <33.188419, 32.865955, 20.972921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115162, 32.669674, 20.855846>,  <32.993065, 32.342537, 20.660723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115162, 32.669674, 20.855846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088004, 0.485838, -0.869607,
		-0.948200, 0.308368, 0.076323,
		0.305240, 0.817845, 0.487810,
		33.206734, 32.915028, 21.002190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636803, 32.892490, 20.416836>,  <32.993065, 32.342537, 20.660723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636803, 32.892490, 20.416836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937904, 33.079460, 20.602259>,  <33.118565, 33.191643, 20.713512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937904, 33.079460, 20.602259>,  <32.636803, 32.892490, 20.416836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937904, 33.079460, 20.602259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060896, 0.651704, -0.756025,
		-0.655482, 0.597327, 0.462107,
		0.752751, 0.467420, 0.463556,
		33.163731, 33.219685, 20.741325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444290, 33.585396, 20.343367>,  <32.636803, 32.892490, 20.416836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444290, 33.585396, 20.343367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837242, 33.583202, 20.418102>,  <33.073013, 33.581886, 20.462944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837242, 33.583202, 20.418102>,  <32.444290, 33.585396, 20.343367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837242, 33.583202, 20.418102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124662, 0.764012, -0.633044,
		-0.139277, 0.645178, 0.751230,
		0.982375, -0.005481, 0.186839,
		33.131954, 33.581558, 20.474154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541691, 34.285866, 20.513815>,  <32.444290, 33.585396, 20.343367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541691, 34.285866, 20.513815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862362, 34.087704, 20.380014>,  <33.054764, 33.968807, 20.299734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862362, 34.087704, 20.380014>,  <32.541691, 34.285866, 20.513815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862362, 34.087704, 20.380014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128683, 0.689500, -0.712763,
		0.583744, 0.528360, 0.616505,
		0.801676, -0.495404, -0.334501,
		33.102863, 33.939083, 20.279665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051342, 34.780640, 20.379862>,  <32.541691, 34.285866, 20.513815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051342, 34.780640, 20.379862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180828, 34.475784, 20.155590>,  <33.258518, 34.292870, 20.021027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180828, 34.475784, 20.155590>,  <33.051342, 34.780640, 20.379862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180828, 34.475784, 20.155590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076660, 0.611763, -0.787318,
		0.943045, 0.211882, 0.256460,
		0.323711, -0.762137, -0.560677,
		33.277943, 34.247143, 19.987387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567013, 35.078316, 20.035017>,  <33.051342, 34.780640, 20.379862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567013, 35.078316, 20.035017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450336, 34.757854, 19.825994>,  <33.380333, 34.565578, 19.700581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450336, 34.757854, 19.825994>,  <33.567013, 35.078316, 20.035017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450336, 34.757854, 19.825994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204483, 0.481456, -0.852283,
		0.934401, -0.355455, 0.023388,
		-0.291688, -0.801156, -0.522558,
		33.362831, 34.517506, 19.669228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966793, 35.123928, 19.455990>,  <33.567013, 35.078316, 20.035017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966793, 35.123928, 19.455990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704449, 34.840588, 19.351618>,  <33.547043, 34.670582, 19.288996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704449, 34.840588, 19.351618>,  <33.966793, 35.123928, 19.455990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704449, 34.840588, 19.351618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181942, 0.187131, -0.965339,
		0.732631, -0.680598, 0.006148,
		-0.655857, -0.708356, -0.260928,
		33.507690, 34.628082, 19.273340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316750, 34.716549, 18.863331>,  <33.966793, 35.123928, 19.455990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316750, 34.716549, 18.863331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923450, 34.653938, 18.825956>,  <33.687473, 34.616371, 18.803532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923450, 34.653938, 18.825956>,  <34.316750, 34.716549, 18.863331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923450, 34.653938, 18.825956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055386, 0.231823, -0.971180,
		0.173673, -0.960082, -0.219269,
		-0.983245, -0.156524, -0.093437,
		33.628479, 34.606979, 18.797926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252674, 34.332527, 18.252859>,  <34.316750, 34.716549, 18.863331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252674, 34.332527, 18.252859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905460, 34.516010, 18.328873>,  <33.697132, 34.626099, 18.374481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905460, 34.516010, 18.328873>,  <34.252674, 34.332527, 18.252859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905460, 34.516010, 18.328873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001810, 0.385657, -0.922640,
		-0.496508, -0.800536, -0.335592,
		-0.868030, 0.458705, 0.190033,
		33.645050, 34.653622, 18.385883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751762, 34.155369, 17.752131>,  <34.252674, 34.332527, 18.252859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751762, 34.155369, 17.752131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632843, 34.509247, 17.895760>,  <33.561493, 34.721573, 17.981937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632843, 34.509247, 17.895760>,  <33.751762, 34.155369, 17.752131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632843, 34.509247, 17.895760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237329, 0.295802, -0.925298,
		-0.924819, -0.360304, 0.122023,
		-0.297294, 0.884693, 0.359074,
		33.543655, 34.774654, 18.003481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219193, 34.303398, 17.302425>,  <33.751762, 34.155369, 17.752131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219193, 34.303398, 17.302425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307743, 34.653339, 17.474764>,  <33.360874, 34.863304, 17.578167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307743, 34.653339, 17.474764>,  <33.219193, 34.303398, 17.302425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307743, 34.653339, 17.474764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093970, 0.458890, -0.883510,
		-0.970650, 0.155105, 0.183799,
		0.221380, 0.874850, 0.430846,
		33.374157, 34.915794, 17.604017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737946, 34.932869, 17.059889>,  <33.219193, 34.303398, 17.302425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737946, 34.932869, 17.059889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097332, 35.050014, 17.190729>,  <33.312962, 35.120304, 17.269234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097332, 35.050014, 17.190729>,  <32.737946, 34.932869, 17.059889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097332, 35.050014, 17.190729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089009, 0.608052, -0.788892,
		-0.429936, 0.737904, 0.520243,
		0.898461, 0.292866, 0.327103,
		33.366871, 35.137875, 17.288860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727505, 35.714207, 17.154236>,  <32.737946, 34.932869, 17.059889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727505, 35.714207, 17.154236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100819, 35.584072, 17.093403>,  <33.324806, 35.505989, 17.056904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100819, 35.584072, 17.093403>,  <32.727505, 35.714207, 17.154236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100819, 35.584072, 17.093403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146673, 0.731848, -0.665496,
		0.327812, 0.598793, 0.730743,
		0.933288, -0.325338, -0.152082,
		33.380806, 35.486469, 17.047779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321018, 36.305889, 17.373011>,  <32.727505, 35.714207, 17.154236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321018, 36.305889, 17.373011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394646, 36.071018, 17.057711>,  <33.438824, 35.930096, 16.868530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394646, 36.071018, 17.057711>,  <33.321018, 36.305889, 17.373011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394646, 36.071018, 17.057711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106699, 0.809149, -0.577835,
		0.977105, 0.022257, 0.211592,
		0.184070, -0.587182, -0.788249,
		33.449867, 35.894863, 16.821236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987278, 36.295433, 17.125330>,  <33.321018, 36.305889, 17.373011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987278, 36.295433, 17.125330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773415, 36.217033, 16.796520>,  <33.645096, 36.169994, 16.599234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773415, 36.217033, 16.796520>,  <33.987278, 36.295433, 17.125330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773415, 36.217033, 16.796520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492546, 0.718147, -0.491594,
		0.686686, -0.667719, -0.287424,
		-0.534659, -0.196001, -0.822024,
		33.613018, 36.158234, 16.549913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416672, 35.604050, 17.214827>,  <33.987278, 36.295433, 17.125330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416672, 35.604050, 17.214827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696194, 35.595650, 16.928823>,  <34.863907, 35.590611, 16.757221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696194, 35.595650, 16.928823>,  <34.416672, 35.604050, 17.214827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696194, 35.595650, 16.928823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321924, 0.883390, -0.340570,
		0.638780, 0.468169, 0.610556,
		0.698802, -0.020997, -0.715006,
		34.905834, 35.589352, 16.714321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704243, 36.260494, 17.267857>,  <34.416672, 35.604050, 17.214827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704243, 36.260494, 17.267857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709633, 36.064640, 16.919128>,  <34.712868, 35.947128, 16.709892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709633, 36.064640, 16.919128>,  <34.704243, 36.260494, 17.267857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709633, 36.064640, 16.919128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574964, 0.709543, -0.407387,
		0.818068, 0.506755, -0.271964,
		0.013475, -0.489640, -0.871820,
		34.713676, 35.917747, 16.657581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199299, 36.850853, 17.514170>,  <34.704243, 36.260494, 17.267857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199299, 36.850853, 17.514170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021706, 36.953987, 17.170914>,  <34.915150, 37.015869, 16.964960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021706, 36.953987, 17.170914>,  <35.199299, 36.850853, 17.514170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021706, 36.953987, 17.170914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831343, 0.238766, 0.501856,
		0.334290, 0.936222, 0.108342,
		-0.443980, 0.257835, -0.858139,
		34.888512, 37.031338, 16.913471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828102, 37.543201, 17.608168>,  <35.199299, 36.850853, 17.514170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828102, 37.543201, 17.608168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673100, 37.273449, 17.356754>,  <34.580097, 37.111599, 17.205906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673100, 37.273449, 17.356754>,  <34.828102, 37.543201, 17.608168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673100, 37.273449, 17.356754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907946, 0.161147, 0.386866,
		-0.159608, 0.720587, -0.674744,
		-0.387503, -0.674378, -0.628534,
		34.556847, 37.071136, 17.168194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249783, 37.851570, 17.446072>,  <34.828102, 37.543201, 17.608168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249783, 37.851570, 17.446072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210789, 37.453480, 17.444546>,  <34.187393, 37.214626, 17.443630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210789, 37.453480, 17.444546>,  <34.249783, 37.851570, 17.446072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210789, 37.453480, 17.444546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770609, 0.073058, 0.633107,
		-0.629808, 0.064660, -0.774055,
		-0.097487, -0.995229, -0.003815,
		34.181541, 37.154911, 17.443401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600670, 37.797581, 17.847116>,  <34.249783, 37.851570, 17.446072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600670, 37.797581, 17.847116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772194, 37.478516, 18.016756>,  <33.875111, 37.287079, 18.118540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772194, 37.478516, 18.016756>,  <33.600670, 37.797581, 17.847116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772194, 37.478516, 18.016756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489380, -0.599710, -0.633131,
		0.759359, 0.063950, -0.647522,
		0.428814, -0.797658, 0.424099,
		33.900837, 37.239220, 18.143986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235092, 37.948788, 18.443613>,  <33.600670, 37.797581, 17.847116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235092, 37.948788, 18.443613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392494, 37.581219, 18.454517>,  <33.486935, 37.360680, 18.461060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392494, 37.581219, 18.454517>,  <33.235092, 37.948788, 18.443613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392494, 37.581219, 18.454517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085182, -0.006922, 0.996341,
		-0.915368, -0.394387, -0.080999,
		0.393505, -0.918918, 0.027259,
		33.510544, 37.305542, 18.462694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841576, 37.534309, 18.906517>,  <33.235092, 37.948788, 18.443613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841576, 37.534309, 18.906517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197811, 37.353096, 18.922594>,  <33.411552, 37.244370, 18.932240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197811, 37.353096, 18.922594>,  <32.841576, 37.534309, 18.906517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197811, 37.353096, 18.922594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118029, -0.144872, 0.982385,
		-0.439233, -0.879642, -0.182492,
		0.890586, -0.453036, 0.040191,
		33.464989, 37.217186, 18.934652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697620, 36.839119, 19.197607>,  <32.841576, 37.534309, 18.906517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697620, 36.839119, 19.197607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079781, 36.938358, 19.261675>,  <33.309078, 36.997902, 19.300116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079781, 36.938358, 19.261675>,  <32.697620, 36.839119, 19.197607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079781, 36.938358, 19.261675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150749, -0.056639, 0.986948,
		0.253933, -0.967077, -0.016712,
		0.955402, 0.248099, 0.160169,
		33.366402, 37.012787, 19.309725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914707, 36.471275, 19.768139>,  <32.697620, 36.839119, 19.197607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914707, 36.471275, 19.768139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194996, 36.756630, 19.764780>,  <33.363171, 36.927841, 19.762766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194996, 36.756630, 19.764780>,  <32.914707, 36.471275, 19.768139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194996, 36.756630, 19.764780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101007, -0.087553, 0.991026,
		0.706246, -0.695283, -0.133407,
		0.700724, 0.713384, -0.008395,
		33.405212, 36.970646, 19.762262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562485, 36.271160, 20.194870>,  <32.914707, 36.471275, 19.768139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562485, 36.271160, 20.194870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540539, 36.670521, 20.189516>,  <33.527370, 36.910137, 20.186304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540539, 36.670521, 20.189516>,  <33.562485, 36.271160, 20.194870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540539, 36.670521, 20.189516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039096, 0.015541, 0.999115,
		0.997728, 0.054293, -0.039886,
		-0.054865, 0.998404, -0.013383,
		33.524078, 36.970043, 20.185501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010078, 36.459202, 20.652534>,  <33.562485, 36.271160, 20.194870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010078, 36.459202, 20.652534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804379, 36.801071, 20.624031>,  <33.680958, 37.006195, 20.606928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804379, 36.801071, 20.624031>,  <34.010078, 36.459202, 20.652534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804379, 36.801071, 20.624031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001841, 0.081987, 0.996631,
		0.857641, 0.512645, -0.040588,
		-0.514246, 0.854677, -0.071259,
		33.650105, 37.057476, 20.602654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370750, 36.992176, 21.041231>,  <34.010078, 36.459202, 20.652534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370750, 36.992176, 21.041231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990177, 37.113403, 21.019613>,  <33.761833, 37.186138, 21.006643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990177, 37.113403, 21.019613>,  <34.370750, 36.992176, 21.041231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990177, 37.113403, 21.019613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039623, 0.053533, 0.997780,
		0.305287, 0.951465, -0.038925,
		-0.951436, 0.303067, -0.054043,
		33.704746, 37.204323, 21.003401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449726, 37.491165, 21.495911>,  <34.370750, 36.992176, 21.041231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449726, 37.491165, 21.495911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063095, 37.408360, 21.435411>,  <33.831116, 37.358677, 21.399111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063095, 37.408360, 21.435411>,  <34.449726, 37.491165, 21.495911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063095, 37.408360, 21.435411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185085, 0.155196, 0.970390,
		-0.177408, 0.965951, -0.188324,
		-0.966576, -0.207011, -0.151250,
		33.773121, 37.346256, 21.390036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136280, 37.940018, 21.856741>,  <34.449726, 37.491165, 21.495911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136280, 37.940018, 21.856741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835243, 37.679646, 21.816959>,  <33.654621, 37.523422, 21.793091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835243, 37.679646, 21.816959>,  <34.136280, 37.940018, 21.856741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835243, 37.679646, 21.816959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228281, 0.116247, 0.966630,
		-0.617647, 0.750185, -0.236082,
		-0.752596, -0.650929, -0.099454,
		33.609463, 37.484367, 21.787123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564236, 38.332809, 22.104851>,  <34.136280, 37.940018, 21.856741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564236, 38.332809, 22.104851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498703, 37.939411, 22.135555>,  <33.459385, 37.703373, 22.153978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498703, 37.939411, 22.135555>,  <33.564236, 38.332809, 22.104851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498703, 37.939411, 22.135555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209729, 0.110757, 0.971466,
		-0.963936, 0.143058, -0.224414,
		-0.163832, -0.983497, 0.076760,
		33.449554, 37.644363, 22.158583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056919, 38.379299, 22.617998>,  <33.564236, 38.332809, 22.104851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056919, 38.379299, 22.617998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224052, 38.016003, 22.608999>,  <33.324333, 37.798023, 22.603600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224052, 38.016003, 22.608999>,  <33.056919, 38.379299, 22.617998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224052, 38.016003, 22.608999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210483, -0.120862, 0.970098,
		-0.883804, -0.400607, -0.241670,
		0.417837, -0.908244, -0.022498,
		33.349403, 37.743530, 22.602249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512024, 38.014252, 23.015514>,  <33.056919, 38.379299, 22.617998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512024, 38.014252, 23.015514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845230, 37.793282, 23.003458>,  <33.045155, 37.660698, 22.996223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845230, 37.793282, 23.003458>,  <32.512024, 38.014252, 23.015514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845230, 37.793282, 23.003458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182059, -0.325163, 0.927967,
		-0.522433, -0.767526, -0.371441,
		0.833018, -0.552425, -0.030141,
		33.095135, 37.627556, 22.994415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329227, 37.362434, 23.166821>,  <32.512024, 38.014252, 23.015514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329227, 37.362434, 23.166821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720181, 37.367714, 23.251247>,  <32.954754, 37.370880, 23.301903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720181, 37.367714, 23.251247>,  <32.329227, 37.362434, 23.166821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720181, 37.367714, 23.251247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195936, -0.319018, 0.927274,
		0.079574, -0.947657, -0.309216,
		0.977383, 0.013200, 0.211066,
		33.013397, 37.371674, 23.314568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470963, 36.654572, 23.370354>,  <32.329227, 37.362434, 23.166821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470963, 36.654572, 23.370354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776577, 36.855896, 23.531811>,  <32.959946, 36.976688, 23.628685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776577, 36.855896, 23.531811>,  <32.470963, 36.654572, 23.370354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776577, 36.855896, 23.531811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041882, -0.585626, 0.809499,
		0.643811, -0.635393, -0.426361,
		0.764038, 0.503307, 0.403644,
		33.005787, 37.006889, 23.652905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862862, 36.125446, 23.686724>,  <32.470963, 36.654572, 23.370354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862862, 36.125446, 23.686724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940979, 36.467724, 23.878412>,  <32.987850, 36.673092, 23.993425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940979, 36.467724, 23.878412>,  <32.862862, 36.125446, 23.686724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940979, 36.467724, 23.878412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098108, -0.469132, 0.877662,
		0.975826, -0.218416, -0.007668,
		0.195293, 0.855693, 0.479219,
		32.999565, 36.724430, 24.022179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308300, 35.922901, 24.251772>,  <32.862862, 36.125446, 23.686724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308300, 35.922901, 24.251772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177418, 36.285156, 24.359667>,  <33.098888, 36.502510, 24.424404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177418, 36.285156, 24.359667>,  <33.308300, 35.922901, 24.251772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177418, 36.285156, 24.359667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029508, -0.275518, 0.960843,
		0.944493, 0.322352, 0.063428,
		-0.327205, 0.905637, 0.269737,
		33.079258, 36.556847, 24.440588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514736, 36.044331, 24.921614>,  <33.308300, 35.922901, 24.251772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514736, 36.044331, 24.921614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264507, 36.354290, 24.885410>,  <33.114368, 36.540264, 24.863689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264507, 36.354290, 24.885410>,  <33.514736, 36.044331, 24.921614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264507, 36.354290, 24.885410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037511, 0.086001, 0.995589,
		0.779264, 0.626207, -0.024733,
		-0.625572, 0.774899, -0.090507,
		33.076836, 36.586761, 24.858257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804672, 36.626984, 25.384766>,  <33.514736, 36.044331, 24.921614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804672, 36.626984, 25.384766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410053, 36.643158, 25.321413>,  <33.173283, 36.652863, 25.283401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410053, 36.643158, 25.321413>,  <33.804672, 36.626984, 25.384766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410053, 36.643158, 25.321413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158153, 0.008775, 0.987376,
		0.041311, 0.999144, -0.002262,
		-0.986550, 0.040432, -0.158380,
		33.114090, 36.655289, 25.273899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599361, 37.159813, 25.708426>,  <33.804672, 36.626984, 25.384766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599361, 37.159813, 25.708426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306999, 36.891655, 25.657288>,  <33.131580, 36.730759, 25.626604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306999, 36.891655, 25.657288>,  <33.599361, 37.159813, 25.708426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306999, 36.891655, 25.657288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234480, 0.070750, 0.969543,
		-0.640932, 0.738623, -0.208906,
		-0.730907, -0.670396, -0.127846,
		33.087727, 36.690536, 25.618935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073097, 37.497276, 26.026320>,  <33.599361, 37.159813, 25.708426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073097, 37.497276, 26.026320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939278, 37.121075, 26.002542>,  <32.858986, 36.895355, 25.988277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939278, 37.121075, 26.002542>,  <33.073097, 37.497276, 26.026320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939278, 37.121075, 26.002542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178956, 0.001477, 0.983856,
		-0.925230, 0.339788, -0.168803,
		-0.334552, -0.940501, -0.059441,
		32.838913, 36.838924, 25.984711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513580, 37.490326, 26.451355>,  <33.073097, 37.497276, 26.026320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513580, 37.490326, 26.451355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580856, 37.097557, 26.416639>,  <32.621223, 36.861897, 26.395809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580856, 37.097557, 26.416639>,  <32.513580, 37.490326, 26.451355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580856, 37.097557, 26.416639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264963, -0.129836, 0.955478,
		-0.949477, -0.137705, -0.282011,
		0.168189, -0.981927, -0.086790,
		32.631313, 36.802979, 26.390602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890768, 37.187767, 26.722589>,  <32.513580, 37.490326, 26.451355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890768, 37.187767, 26.722589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168148, 36.900322, 26.743462>,  <32.334576, 36.727856, 26.755985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168148, 36.900322, 26.743462>,  <31.890768, 37.187767, 26.722589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168148, 36.900322, 26.743462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271294, -0.193330, 0.942880,
		-0.667477, -0.667998, -0.329020,
		0.693451, -0.718612, 0.052181,
		32.376183, 36.684738, 26.759115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544168, 36.621883, 27.021744>,  <31.890768, 37.187767, 26.722589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544168, 36.621883, 27.021744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932678, 36.539333, 27.069130>,  <32.165783, 36.489803, 27.097561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932678, 36.539333, 27.069130>,  <31.544168, 36.621883, 27.021744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932678, 36.539333, 27.069130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167215, -0.237734, 0.956829,
		-0.169299, -0.949154, -0.265414,
		0.971276, -0.206371, 0.118465,
		32.224060, 36.477421, 27.104670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547707, 36.069481, 27.448414>,  <31.544168, 36.621883, 27.021744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547707, 36.069481, 27.448414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912088, 36.218159, 27.519981>,  <32.130718, 36.307365, 27.562922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912088, 36.218159, 27.519981>,  <31.547707, 36.069481, 27.448414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912088, 36.218159, 27.519981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167741, -0.062480, 0.983849,
		0.376867, -0.926252, 0.005431,
		0.910952, 0.371691, 0.178917,
		32.185375, 36.329666, 27.573656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900999, 35.583179, 27.809444>,  <31.547707, 36.069481, 27.448414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900999, 35.583179, 27.809444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084015, 35.925823, 27.904837>,  <32.193825, 36.131409, 27.962072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.084015, 35.925823, 27.904837>,  <31.900999, 35.583179, 27.809444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084015, 35.925823, 27.904837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128591, -0.201637, 0.970982,
		0.879843, -0.474928, 0.017896,
		0.457538, 0.856613, 0.238480,
		32.221275, 36.182808, 27.976381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334942, 35.422432, 28.306606>,  <31.900999, 35.583179, 27.809444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334942, 35.422432, 28.306606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349083, 35.819805, 28.350122>,  <32.357567, 36.058231, 28.376232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349083, 35.819805, 28.350122>,  <32.334942, 35.422432, 28.306606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349083, 35.819805, 28.350122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082826, -0.111398, 0.990318,
		0.995937, -0.026001, -0.086221,
		0.035354, 0.993436, 0.108792,
		32.359688, 36.117836, 28.382759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979668, 35.601482, 28.489521>,  <32.334942, 35.422432, 28.306606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979668, 35.601482, 28.489521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729366, 35.885517, 28.618645>,  <32.579185, 36.055939, 28.696119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729366, 35.885517, 28.618645>,  <32.979668, 35.601482, 28.489521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729366, 35.885517, 28.618645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335709, -0.128389, 0.933175,
		0.704080, 0.692311, -0.158042,
		-0.625756, 0.710086, 0.322811,
		32.541641, 36.098541, 28.715488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362217, 35.936993, 28.964167>,  <32.979668, 35.601482, 28.489521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362217, 35.936993, 28.964167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992401, 36.048798, 29.067781>,  <32.770512, 36.115879, 29.129951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992401, 36.048798, 29.067781>,  <33.362217, 35.936993, 28.964167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992401, 36.048798, 29.067781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231881, -0.126813, 0.964443,
		0.302424, 0.951730, 0.052429,
		-0.924538, 0.279514, 0.259039,
		32.715038, 36.132652, 29.145493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464397, 36.226788, 29.517021>,  <33.362217, 35.936993, 28.964167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464397, 36.226788, 29.517021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067013, 36.182858, 29.529449>,  <32.828583, 36.156502, 29.536907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067013, 36.182858, 29.529449>,  <33.464397, 36.226788, 29.517021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067013, 36.182858, 29.529449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067532, -0.346139, 0.935750,
		-0.092011, 0.931733, 0.351294,
		-0.993465, -0.109823, 0.031073,
		32.768974, 36.149910, 29.538771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197346, 36.560627, 30.078890>,  <33.464397, 36.226788, 29.517021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197346, 36.560627, 30.078890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890888, 36.315006, 30.003029>,  <32.707012, 36.167633, 29.957512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890888, 36.315006, 30.003029>,  <33.197346, 36.560627, 30.078890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890888, 36.315006, 30.003029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169798, -0.091207, 0.981249,
		-0.619832, 0.783981, -0.034387,
		-0.766144, -0.614048, -0.189651,
		32.661045, 36.130791, 29.946133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662064, 36.826046, 30.570848>,  <33.197346, 36.560627, 30.078890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662064, 36.826046, 30.570848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537544, 36.457962, 30.475935>,  <32.462833, 36.237110, 30.418987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537544, 36.457962, 30.475935>,  <32.662064, 36.826046, 30.570848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537544, 36.457962, 30.475935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215738, -0.174740, 0.960689,
		-0.925500, 0.350253, -0.144129,
		-0.311299, -0.920211, -0.237285,
		32.444153, 36.181900, 30.404749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966259, 36.644085, 30.896660>,  <32.662064, 36.826046, 30.570848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966259, 36.644085, 30.896660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085781, 36.273369, 30.805649>,  <32.157494, 36.050938, 30.751041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085781, 36.273369, 30.805649>,  <31.966259, 36.644085, 30.896660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085781, 36.273369, 30.805649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392840, -0.336736, 0.855737,
		-0.869709, -0.166315, -0.464700,
		0.298803, -0.926795, -0.227527,
		32.175423, 35.995331, 30.737391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423079, 36.170685, 31.239456>,  <31.966259, 36.644085, 30.896660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423079, 36.170685, 31.239456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743902, 35.944481, 31.162615>,  <31.936396, 35.808758, 31.116510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743902, 35.944481, 31.162615>,  <31.423079, 36.170685, 31.239456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743902, 35.944481, 31.162615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108013, -0.453691, 0.884589,
		-0.587398, -0.688742, -0.424969,
		0.802058, -0.565508, -0.192104,
		31.984520, 35.774830, 31.104984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271492, 35.444946, 31.533808>,  <31.423079, 36.170685, 31.239456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271492, 35.444946, 31.533808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669962, 35.477528, 31.521152>,  <31.909044, 35.497078, 31.513559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669962, 35.477528, 31.521152>,  <31.271492, 35.444946, 31.533808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669962, 35.477528, 31.521152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072432, -0.567174, 0.820407,
		0.048883, -0.819560, -0.570904,
		0.996175, 0.081456, -0.031637,
		31.968815, 35.501965, 31.511662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537582, 34.729965, 31.756424>,  <31.271492, 35.444946, 31.533808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537582, 34.729965, 31.756424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844130, 34.981705, 31.807955>,  <32.028057, 35.132748, 31.838873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844130, 34.981705, 31.807955>,  <31.537582, 34.729965, 31.756424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844130, 34.981705, 31.807955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225613, -0.451448, 0.863304,
		0.601479, -0.632545, -0.487965,
		0.766369, 0.629351, 0.128826,
		32.074039, 35.170509, 31.846603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944290, 34.331223, 32.146858>,  <31.537582, 34.729965, 31.756424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944290, 34.331223, 32.146858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102959, 34.694057, 32.203217>,  <32.198162, 34.911758, 32.237030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102959, 34.694057, 32.203217>,  <31.944290, 34.331223, 32.146858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102959, 34.694057, 32.203217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191910, -0.232038, 0.953587,
		0.897675, -0.351224, -0.266122,
		0.396673, 0.907083, 0.140891,
		32.221962, 34.966183, 32.245483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522396, 34.139244, 32.622040>,  <31.944290, 34.331223, 32.146858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522396, 34.139244, 32.622040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448925, 34.531487, 32.649395>,  <32.404842, 34.766830, 32.665810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448925, 34.531487, 32.649395>,  <32.522396, 34.139244, 32.622040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448925, 34.531487, 32.649395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060666, -0.058135, 0.996464,
		0.981112, 0.187180, -0.048811,
		-0.183680, 0.980604, 0.068392,
		32.393822, 34.825668, 32.669914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040096, 34.394665, 33.015385>,  <32.522396, 34.139244, 32.622040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040096, 34.394665, 33.015385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754932, 34.673450, 33.046383>,  <32.583836, 34.840721, 33.064980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.754932, 34.673450, 33.046383>,  <33.040096, 34.394665, 33.015385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754932, 34.673450, 33.046383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032061, -0.077993, 0.996438,
		0.700525, 0.712852, 0.033257,
		-0.712907, 0.696964, 0.077491,
		32.541061, 34.882538, 33.069630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329117, 34.907665, 33.398659>,  <33.040096, 34.394665, 33.015385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329117, 34.907665, 33.398659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932426, 34.943001, 33.435925>,  <32.694412, 34.964203, 33.458282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932426, 34.943001, 33.435925>,  <33.329117, 34.907665, 33.398659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932426, 34.943001, 33.435925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093189, -0.003854, 0.995641,
		0.088317, 0.996082, -0.004411,
		-0.991724, 0.088343, 0.093164,
		32.634911, 34.969505, 33.463875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030647, 34.778301, 33.647415>,  <33.329117, 34.907665, 33.398659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030647, 34.778301, 33.647415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383835, 34.591545, 33.666935>,  <34.595749, 34.479492, 33.678646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383835, 34.591545, 33.666935>,  <34.030647, 34.778301, 33.647415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383835, 34.591545, 33.666935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378228, 0.645985, -0.663059,
		0.278051, 0.603918, 0.746975,
		0.882967, -0.466891, 0.048801,
		34.648724, 34.451477, 33.681576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555283, 35.241577, 33.792747>,  <34.030647, 34.778301, 33.647415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555283, 35.241577, 33.792747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751637, 34.931591, 33.633522>,  <34.869450, 34.745598, 33.537987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751637, 34.931591, 33.633522>,  <34.555283, 35.241577, 33.792747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751637, 34.931591, 33.633522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559180, 0.630629, -0.538168,
		0.668093, 0.041591, 0.742915,
		0.490886, -0.774969, -0.398062,
		34.898903, 34.699100, 33.514103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237411, 35.540638, 33.656536>,  <34.555283, 35.241577, 33.792747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237411, 35.540638, 33.656536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214092, 35.213818, 33.427094>,  <35.200100, 35.017723, 33.289429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214092, 35.213818, 33.427094>,  <35.237411, 35.540638, 33.656536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214092, 35.213818, 33.427094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303909, 0.532787, -0.789796,
		0.950916, -0.220368, 0.217250,
		-0.058298, -0.817053, -0.573607,
		35.196602, 34.968700, 33.255013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855133, 35.493767, 33.278679>,  <35.237411, 35.540638, 33.656536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855133, 35.493767, 33.278679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578197, 35.302296, 33.062706>,  <35.412037, 35.187412, 32.933121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578197, 35.302296, 33.062706>,  <35.855133, 35.493767, 33.278679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578197, 35.302296, 33.062706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237734, 0.555175, -0.797034,
		0.681283, -0.680180, -0.270572,
		-0.692341, -0.478681, -0.539933,
		35.370495, 35.158691, 32.900726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206665, 35.568661, 32.662411>,  <35.855133, 35.493767, 33.278679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206665, 35.568661, 32.662411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825142, 35.473495, 32.589046>,  <35.596226, 35.416397, 32.545029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825142, 35.473495, 32.589046>,  <36.206665, 35.568661, 32.662411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825142, 35.473495, 32.589046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032490, 0.525255, -0.850325,
		0.298640, -0.817009, -0.493265,
		-0.953813, -0.237914, -0.183407,
		35.538998, 35.402122, 32.534023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257973, 35.350319, 32.019711>,  <36.206665, 35.568661, 32.662411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257973, 35.350319, 32.019711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871990, 35.431915, 32.085735>,  <35.640400, 35.480873, 32.125351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871990, 35.431915, 32.085735>,  <36.257973, 35.350319, 32.019711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871990, 35.431915, 32.085735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001595, 0.633571, -0.773683,
		-0.262404, -0.746307, -0.611694,
		-0.964957, 0.203993, 0.165061,
		35.582504, 35.493114, 32.135254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861679, 35.045223, 31.469141>,  <36.257973, 35.350319, 32.019711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861679, 35.045223, 31.469141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664955, 35.349590, 31.638433>,  <35.546921, 35.532211, 31.740009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664955, 35.349590, 31.638433>,  <35.861679, 35.045223, 31.469141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664955, 35.349590, 31.638433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031698, 0.501402, -0.864634,
		-0.870127, -0.411817, -0.270712,
		-0.491807, 0.760922, 0.423230,
		35.517414, 35.577866, 31.765402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259819, 35.039200, 31.073921>,  <35.861679, 35.045223, 31.469141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259819, 35.039200, 31.073921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342579, 35.395535, 31.235708>,  <35.392235, 35.609337, 31.332781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342579, 35.395535, 31.235708>,  <35.259819, 35.039200, 31.073921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342579, 35.395535, 31.235708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061839, 0.424495, -0.903316,
		-0.976406, 0.161883, 0.142917,
		0.206899, 0.890841, 0.404469,
		35.404648, 35.662788, 31.357050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861317, 35.375397, 30.662401>,  <35.259819, 35.039200, 31.073921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861317, 35.375397, 30.662401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090160, 35.637512, 30.859701>,  <35.227467, 35.794781, 30.978081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090160, 35.637512, 30.859701>,  <34.861317, 35.375397, 30.662401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090160, 35.637512, 30.859701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000798, 0.600947, -0.799288,
		-0.820180, 0.457670, 0.343282,
		0.572105, 0.655286, 0.493250,
		35.261791, 35.834099, 31.007677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546932, 36.013710, 30.576040>,  <34.861317, 35.375397, 30.662401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546932, 36.013710, 30.576040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930462, 36.082344, 30.666561>,  <35.160580, 36.123524, 30.720873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930462, 36.082344, 30.666561>,  <34.546932, 36.013710, 30.576040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930462, 36.082344, 30.666561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096627, 0.552204, -0.828090,
		-0.267053, 0.815861, 0.512888,
		0.958825, 0.171585, 0.226302,
		35.218109, 36.133820, 30.734451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559025, 36.640335, 30.481342>,  <34.546932, 36.013710, 30.576040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559025, 36.640335, 30.481342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939816, 36.521572, 30.451435>,  <35.168289, 36.450314, 30.433491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939816, 36.521572, 30.451435>,  <34.559025, 36.640335, 30.481342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939816, 36.521572, 30.451435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104848, 0.545565, -0.831484,
		0.287664, 0.783713, 0.550494,
		0.951975, -0.296906, -0.074769,
		35.225407, 36.432499, 30.429005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968571, 37.221313, 30.325480>,  <34.559025, 36.640335, 30.481342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968571, 37.221313, 30.325480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171787, 36.905235, 30.188377>,  <35.293716, 36.715588, 30.106115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171787, 36.905235, 30.188377>,  <34.968571, 37.221313, 30.325480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171787, 36.905235, 30.188377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165197, 0.479938, -0.861609,
		0.845344, 0.381109, 0.374366,
		0.508039, -0.790200, -0.342755,
		35.324200, 36.668175, 30.085550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536606, 37.494865, 30.039358>,  <34.968571, 37.221313, 30.325480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536606, 37.494865, 30.039358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554039, 37.129436, 29.877625>,  <35.564499, 36.910179, 29.780584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554039, 37.129436, 29.877625>,  <35.536606, 37.494865, 30.039358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554039, 37.129436, 29.877625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189624, 0.404924, -0.894471,
		0.980889, -0.037691, 0.190882,
		0.043579, -0.913573, -0.404333,
		35.567112, 36.855366, 29.756325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146152, 37.579506, 29.454165>,  <35.536606, 37.494865, 30.039358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146152, 37.579506, 29.454165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944920, 37.243000, 29.374989>,  <35.824181, 37.041096, 29.327482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944920, 37.243000, 29.374989>,  <36.146152, 37.579506, 29.454165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944920, 37.243000, 29.374989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021578, 0.241190, -0.970238,
		0.863968, -0.483840, -0.139491,
		-0.503084, -0.841264, -0.197940,
		35.793995, 36.990620, 29.315607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450199, 37.397671, 28.893381>,  <36.146152, 37.579506, 29.454165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450199, 37.397671, 28.893381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106777, 37.192722, 28.901003>,  <35.900726, 37.069752, 28.905577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106777, 37.192722, 28.901003>,  <36.450199, 37.397671, 28.893381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106777, 37.192722, 28.901003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106054, 0.141100, -0.984298,
		0.501638, -0.847093, -0.175481,
		-0.858552, -0.512371, 0.019056,
		35.849213, 37.039013, 28.906719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489231, 36.850552, 28.385941>,  <36.450199, 37.397671, 28.893381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489231, 36.850552, 28.385941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097080, 36.907524, 28.440443>,  <35.861790, 36.941708, 28.473145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097080, 36.907524, 28.440443>,  <36.489231, 36.850552, 28.385941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097080, 36.907524, 28.440443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141629, -0.028242, -0.989517,
		-0.137091, -0.989402, 0.047860,
		-0.980381, 0.142432, 0.136256,
		35.802967, 36.950253, 28.481319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157288, 36.469501, 27.832920>,  <36.489231, 36.850552, 28.385941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157288, 36.469501, 27.832920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856663, 36.706802, 27.948296>,  <35.676289, 36.849182, 28.017521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856663, 36.706802, 27.948296>,  <36.157288, 36.469501, 27.832920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856663, 36.706802, 27.948296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397023, -0.057611, -0.915999,
		-0.526804, -0.802950, 0.278834,
		-0.751566, 0.593255, 0.288440,
		35.631191, 36.884777, 28.034828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586147, 36.174042, 27.511156>,  <36.157288, 36.469501, 27.832920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586147, 36.174042, 27.511156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474747, 36.544289, 27.613665>,  <35.407906, 36.766438, 27.675169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474747, 36.544289, 27.613665>,  <35.586147, 36.174042, 27.511156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474747, 36.544289, 27.613665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431524, 0.117784, -0.894379,
		-0.858034, -0.359674, 0.366621,
		-0.278503, 0.925614, 0.256271,
		35.391197, 36.821972, 27.690546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861256, 36.178669, 27.258661>,  <35.586147, 36.174042, 27.511156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861256, 36.178669, 27.258661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986904, 36.553940, 27.316837>,  <35.062294, 36.779102, 27.351742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986904, 36.553940, 27.316837>,  <34.861256, 36.178669, 27.258661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986904, 36.553940, 27.316837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422382, 0.275301, -0.863599,
		-0.850247, 0.209847, 0.482747,
		0.314124, 0.938176, 0.145438,
		35.081142, 36.835392, 27.360468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362186, 36.628052, 26.930264>,  <34.861256, 36.178669, 27.258661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362186, 36.628052, 26.930264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712051, 36.821590, 26.941994>,  <34.921970, 36.937714, 26.949032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712051, 36.821590, 26.941994>,  <34.362186, 36.628052, 26.930264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712051, 36.821590, 26.941994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079728, 0.203272, -0.975871,
		-0.478130, 0.851220, 0.216370,
		0.874663, 0.483844, 0.029325,
		34.974449, 36.966743, 26.950790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291142, 37.281269, 26.514277>,  <34.362186, 36.628052, 26.930264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291142, 37.281269, 26.514277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688305, 37.235275, 26.526333>,  <34.926605, 37.207680, 26.533566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688305, 37.235275, 26.526333>,  <34.291142, 37.281269, 26.514277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688305, 37.235275, 26.526333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050614, 0.179548, -0.982446,
		0.107552, 0.977007, 0.184095,
		0.992910, -0.114982, 0.030139,
		34.986179, 37.200779, 26.535374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548969, 37.787346, 26.068903>,  <34.291142, 37.281269, 26.514277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548969, 37.787346, 26.068903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845020, 37.520500, 26.102791>,  <35.022652, 37.360394, 26.123123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845020, 37.520500, 26.102791>,  <34.548969, 37.787346, 26.068903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845020, 37.520500, 26.102791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113212, -0.000576, -0.993571,
		0.662872, 0.744957, 0.075099,
		0.740124, -0.667112, 0.084720,
		35.067059, 37.320366, 26.128206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119766, 37.983868, 25.534586>,  <34.548969, 37.787346, 26.068903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119766, 37.983868, 25.534586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178368, 37.601025, 25.634573>,  <35.213528, 37.371319, 25.694565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178368, 37.601025, 25.634573>,  <35.119766, 37.983868, 25.534586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178368, 37.601025, 25.634573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010364, -0.251197, -0.967881,
		0.989156, 0.144389, -0.026882,
		0.146504, -0.957106, 0.249969,
		35.222321, 37.313892, 25.709564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802788, 37.823490, 25.353136>,  <35.119766, 37.983868, 25.534586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802788, 37.823490, 25.353136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609356, 37.473457, 25.360950>,  <35.493298, 37.263439, 25.365639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609356, 37.473457, 25.360950>,  <35.802788, 37.823490, 25.353136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609356, 37.473457, 25.360950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132843, -0.095433, -0.986532,
		0.865161, -0.474471, 0.162398,
		-0.483579, -0.875083, 0.019535,
		35.464283, 37.210934, 25.366812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207165, 37.392582, 25.065193>,  <35.802788, 37.823490, 25.353136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207165, 37.392582, 25.065193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843430, 37.236927, 25.006311>,  <35.625187, 37.143532, 24.970982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843430, 37.236927, 25.006311>,  <36.207165, 37.392582, 25.065193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843430, 37.236927, 25.006311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221399, -0.153037, -0.963100,
		0.352253, -0.908378, 0.225318,
		-0.909341, -0.389140, -0.147207,
		35.570629, 37.120186, 24.962149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373177, 36.815765, 24.686169>,  <36.207165, 37.392582, 25.065193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373177, 36.815765, 24.686169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988163, 36.905392, 24.625076>,  <35.757156, 36.959167, 24.588421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988163, 36.905392, 24.625076>,  <36.373177, 36.815765, 24.686169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988163, 36.905392, 24.625076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119492, -0.155141, -0.980639,
		-0.243420, -0.962147, 0.122555,
		-0.962533, 0.224063, -0.152733,
		35.699402, 36.972610, 24.579256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072746, 36.272743, 24.335987>,  <36.373177, 36.815765, 24.686169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072746, 36.272743, 24.335987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834106, 36.581390, 24.247744>,  <35.690922, 36.766579, 24.194798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834106, 36.581390, 24.247744>,  <36.072746, 36.272743, 24.335987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834106, 36.581390, 24.247744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053965, -0.235697, -0.970327,
		-0.800722, -0.590802, 0.098977,
		-0.596600, 0.771622, -0.220610,
		35.655125, 36.812878, 24.181561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754520, 36.067120, 23.762152>,  <36.072746, 36.272743, 24.335987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754520, 36.067120, 23.762152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643291, 36.451336, 23.759716>,  <35.576553, 36.681866, 23.758255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643291, 36.451336, 23.759716>,  <35.754520, 36.067120, 23.762152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643291, 36.451336, 23.759716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057038, -0.022841, -0.998111,
		-0.958865, -0.277200, 0.061139,
		-0.278073, 0.960541, -0.006090,
		35.559868, 36.739498, 23.757889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222111, 36.177441, 23.375443>,  <35.754520, 36.067120, 23.762152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222111, 36.177441, 23.375443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358879, 36.553097, 23.362164>,  <35.440941, 36.778492, 23.354197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358879, 36.553097, 23.362164>,  <35.222111, 36.177441, 23.375443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358879, 36.553097, 23.362164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020482, -0.027873, -0.999402,
		-0.939505, 0.342397, 0.009705,
		0.341922, 0.939142, -0.033200,
		35.461456, 36.834839, 23.352203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867500, 36.577259, 22.875578>,  <35.222111, 36.177441, 23.375443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867500, 36.577259, 22.875578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186199, 36.817287, 22.904194>,  <35.377419, 36.961304, 22.921364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186199, 36.817287, 22.904194>,  <34.867500, 36.577259, 22.875578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186199, 36.817287, 22.904194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029694, 0.079361, -0.996404,
		-0.603588, 0.796002, 0.045411,
		0.796743, 0.600069, 0.071538,
		35.425220, 36.997307, 22.925655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822414, 37.188984, 22.394608>,  <34.867500, 36.577259, 22.875578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822414, 37.188984, 22.394608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214138, 37.192612, 22.475468>,  <35.449173, 37.194790, 22.523985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214138, 37.192612, 22.475468>,  <34.822414, 37.188984, 22.394608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214138, 37.192612, 22.475468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197241, 0.180391, -0.963616,
		-0.045209, 0.983553, 0.174870,
		0.979312, 0.009073, 0.202152,
		35.507931, 37.195335, 22.536114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133224, 37.721466, 22.066603>,  <34.822414, 37.188984, 22.394608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133224, 37.721466, 22.066603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453274, 37.488781, 22.125139>,  <35.645302, 37.349171, 22.160261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453274, 37.488781, 22.125139>,  <35.133224, 37.721466, 22.066603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453274, 37.488781, 22.125139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234143, 0.078276, -0.969046,
		0.552249, 0.809621, 0.198834,
		0.800124, -0.581710, 0.146340,
		35.693310, 37.314266, 22.169041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607166, 38.020924, 21.698204>,  <35.133224, 37.721466, 22.066603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607166, 38.020924, 21.698204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769466, 37.660019, 21.756575>,  <35.866848, 37.443478, 21.791597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769466, 37.660019, 21.756575>,  <35.607166, 38.020924, 21.698204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769466, 37.660019, 21.756575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177468, -0.078850, -0.980963,
		0.896589, 0.423923, 0.128128,
		0.405750, -0.902259, 0.145929,
		35.891190, 37.389339, 21.800354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210056, 38.067486, 21.428940>,  <35.607166, 38.020924, 21.698204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210056, 38.067486, 21.428940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137169, 37.674221, 21.434511>,  <36.093437, 37.438263, 21.437853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137169, 37.674221, 21.434511>,  <36.210056, 38.067486, 21.428940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137169, 37.674221, 21.434511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031407, -0.019976, -0.999307,
		0.982757, -0.181653, 0.034518,
		-0.182216, -0.983160, 0.013927,
		36.082504, 37.379272, 21.438688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699982, 37.813278, 20.947262>,  <36.210056, 38.067486, 21.428940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699982, 37.813278, 20.947262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428299, 37.522926, 20.990671>,  <36.265289, 37.348717, 21.016716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428299, 37.522926, 20.990671>,  <36.699982, 37.813278, 20.947262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428299, 37.522926, 20.990671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059574, -0.201899, -0.977593,
		0.731521, -0.657527, 0.180376,
		-0.679211, -0.725875, 0.108522,
		36.224537, 37.305164, 21.023228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986389, 37.186340, 20.640530>,  <36.699982, 37.813278, 20.947262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986389, 37.186340, 20.640530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586525, 37.196423, 20.638044>,  <36.346607, 37.202473, 20.636553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586525, 37.196423, 20.638044>,  <36.986389, 37.186340, 20.640530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586525, 37.196423, 20.638044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003400, -0.110197, -0.993904,
		-0.025738, -0.993590, 0.110075,
		-0.999663, 0.025206, -0.006215,
		36.286625, 37.203983, 20.636181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863129, 36.725479, 20.155739>,  <36.986389, 37.186340, 20.640530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863129, 36.725479, 20.155739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527020, 36.937893, 20.199459>,  <36.325356, 37.065342, 20.225691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527020, 36.937893, 20.199459>,  <36.863129, 36.725479, 20.155739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527020, 36.937893, 20.199459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080290, 0.077496, -0.993754,
		-0.536184, -0.843802, -0.022482,
		-0.840274, 0.531031, 0.109301,
		36.274937, 37.097202, 20.232250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623100, 36.608105, 19.497320>,  <36.863129, 36.725479, 20.155739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623100, 36.608105, 19.497320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781338, 36.298290, 19.299896>,  <36.876282, 36.112400, 19.181442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781338, 36.298290, 19.299896>,  <36.623100, 36.608105, 19.497320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781338, 36.298290, 19.299896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440287, -0.311686, 0.842021,
		-0.806012, -0.550404, 0.217718,
		0.395592, -0.774537, -0.493558,
		36.900017, 36.065929, 19.151829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336693, 36.001060, 19.760616>,  <36.623100, 36.608105, 19.497320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336693, 36.001060, 19.760616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703129, 35.934895, 19.614511>,  <36.922989, 35.895195, 19.526848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703129, 35.934895, 19.614511>,  <36.336693, 36.001060, 19.760616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703129, 35.934895, 19.614511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309726, -0.286616, 0.906598,
		-0.254654, -0.943658, -0.211334,
		0.916090, -0.165413, -0.365264,
		36.977955, 35.885269, 19.504932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572247, 35.419289, 20.203762>,  <36.336693, 36.001060, 19.760616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572247, 35.419289, 20.203762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902351, 35.544697, 20.015867>,  <37.100414, 35.619942, 19.903130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902351, 35.544697, 20.015867>,  <36.572247, 35.419289, 20.203762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902351, 35.544697, 20.015867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540892, -0.199558, 0.817075,
		0.162427, -0.928377, -0.334266,
		0.825259, 0.313517, -0.469738,
		37.149929, 35.638752, 19.874947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975574, 34.831425, 20.218637>,  <36.572247, 35.419289, 20.203762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975574, 34.831425, 20.218637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185837, 35.169945, 20.184086>,  <37.311993, 35.373058, 20.163355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185837, 35.169945, 20.184086>,  <36.975574, 34.831425, 20.218637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185837, 35.169945, 20.184086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430027, -0.176736, 0.885348,
		0.734005, -0.502533, -0.456835,
		0.525656, 0.846301, -0.086378,
		37.343533, 35.423836, 20.158173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705185, 34.676308, 20.353018>,  <36.975574, 34.831425, 20.218637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705185, 34.676308, 20.353018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688663, 35.071198, 20.414577>,  <37.678749, 35.308132, 20.451513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688663, 35.071198, 20.414577>,  <37.705185, 34.676308, 20.353018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688663, 35.071198, 20.414577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325804, -0.132303, 0.936134,
		0.944534, 0.088810, -0.316176,
		-0.041307, 0.987223, 0.153899,
		37.676270, 35.367363, 20.460747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181576, 34.777210, 20.907730>,  <37.705185, 34.676308, 20.353018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181576, 34.777210, 20.907730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962933, 35.112148, 20.910896>,  <37.831745, 35.313110, 20.912796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962933, 35.112148, 20.910896>,  <38.181576, 34.777210, 20.907730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962933, 35.112148, 20.910896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201459, 0.122322, 0.971829,
		0.812792, 0.532808, -0.235554,
		-0.546612, 0.837349, 0.007916,
		37.798950, 35.363354, 20.913271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617584, 35.278484, 21.193752>,  <38.181576, 34.777210, 20.907730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617584, 35.278484, 21.193752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237572, 35.390907, 21.248079>,  <38.009563, 35.458363, 21.280676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237572, 35.390907, 21.248079>,  <38.617584, 35.278484, 21.193752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237572, 35.390907, 21.248079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130392, -0.038017, 0.990733,
		0.283620, 0.958937, -0.000531,
		-0.950031, 0.281061, 0.135820,
		37.952564, 35.475227, 21.288826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696873, 35.726254, 21.739492>,  <38.617584, 35.278484, 21.193752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696873, 35.726254, 21.739492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311298, 35.622253, 21.716774>,  <38.079952, 35.559853, 21.703144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311298, 35.622253, 21.716774>,  <38.696873, 35.726254, 21.739492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311298, 35.622253, 21.716774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030782, -0.103050, 0.994200,
		-0.264349, 0.960093, 0.091330,
		-0.963936, -0.260004, -0.056794,
		38.022118, 35.544250, 21.699736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386127, 36.271656, 22.254032>,  <38.696873, 35.726254, 21.739492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386127, 36.271656, 22.254032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135616, 35.962650, 22.212090>,  <37.985310, 35.777245, 22.186924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.135616, 35.962650, 22.212090>,  <38.386127, 36.271656, 22.254032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135616, 35.962650, 22.212090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059202, -0.181238, 0.981656,
		-0.777350, 0.608581, 0.159240,
		-0.626277, -0.772517, -0.104856,
		37.947735, 35.730896, 22.180634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851933, 36.354137, 22.788088>,  <38.386127, 36.271656, 22.254032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851933, 36.354137, 22.788088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840839, 35.970387, 22.675777>,  <37.834183, 35.740135, 22.608391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840839, 35.970387, 22.675777>,  <37.851933, 36.354137, 22.788088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840839, 35.970387, 22.675777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005217, -0.280740, 0.959770,
		-0.999602, 0.028082, 0.002781,
		-0.027733, -0.959373, -0.280775,
		37.832520, 35.682575, 22.591545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329353, 36.017021, 23.203920>,  <37.851933, 36.354137, 22.788088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329353, 36.017021, 23.203920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562374, 35.717125, 23.078371>,  <37.702187, 35.537186, 23.003040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562374, 35.717125, 23.078371>,  <37.329353, 36.017021, 23.203920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562374, 35.717125, 23.078371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049878, -0.352465, 0.934495,
		-0.811262, -0.560047, -0.167933,
		0.582551, -0.749744, -0.313875,
		37.737141, 35.492203, 22.984209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002335, 35.398155, 23.354589>,  <37.329353, 36.017021, 23.203920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002335, 35.398155, 23.354589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386921, 35.294266, 23.318544>,  <37.617672, 35.231930, 23.296917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386921, 35.294266, 23.318544>,  <37.002335, 35.398155, 23.354589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386921, 35.294266, 23.318544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048611, -0.483229, 0.874144,
		-0.270582, -0.836081, -0.477235,
		0.961469, -0.259726, -0.090110,
		37.675362, 35.216347, 23.291512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981121, 34.679939, 23.404430>,  <37.002335, 35.398155, 23.354589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981121, 34.679939, 23.404430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349854, 34.815918, 23.478909>,  <37.571091, 34.897503, 23.523596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349854, 34.815918, 23.478909>,  <36.981121, 34.679939, 23.404430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349854, 34.815918, 23.478909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026360, -0.534261, 0.844909,
		0.386701, -0.773953, -0.501458,
		0.921829, 0.339945, 0.186198,
		37.626404, 34.917900, 23.534767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192226, 34.133396, 23.669579>,  <36.981121, 34.679939, 23.404430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192226, 34.133396, 23.669579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455070, 34.406620, 23.797100>,  <37.612778, 34.570557, 23.873613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455070, 34.406620, 23.797100>,  <37.192226, 34.133396, 23.669579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455070, 34.406620, 23.797100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045876, -0.385908, 0.921396,
		0.752401, -0.620080, -0.222246,
		0.657105, 0.683064, 0.318805,
		37.652203, 34.611538, 23.892742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549763, 33.825951, 24.183086>,  <37.192226, 34.133396, 23.669579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549763, 33.825951, 24.183086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639385, 34.212814, 24.231073>,  <37.693161, 34.444935, 24.259865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639385, 34.212814, 24.231073>,  <37.549763, 33.825951, 24.183086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639385, 34.212814, 24.231073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036536, -0.131347, 0.990663,
		0.973891, -0.217583, -0.064766,
		0.224058, 0.967164, 0.119968,
		37.706604, 34.502964, 24.267063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091736, 33.767868, 24.667797>,  <37.549763, 33.825951, 24.183086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091736, 33.767868, 24.667797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957127, 34.142838, 24.703535>,  <37.876362, 34.367821, 24.724977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957127, 34.142838, 24.703535>,  <38.091736, 33.767868, 24.667797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957127, 34.142838, 24.703535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027079, -0.085208, 0.995995,
		0.941286, 0.337595, 0.003290,
		-0.336523, 0.937427, 0.089347,
		37.856171, 34.424065, 24.730339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448006, 34.049854, 25.272083>,  <38.091736, 33.767868, 24.667797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448006, 34.049854, 25.272083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126705, 34.280807, 25.213556>,  <37.933926, 34.419380, 25.178440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126705, 34.280807, 25.213556>,  <38.448006, 34.049854, 25.272083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126705, 34.280807, 25.213556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207019, -0.040289, 0.977507,
		0.558505, 0.815476, 0.151892,
		-0.803253, 0.577387, -0.146318,
		37.885731, 34.454025, 25.169661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443039, 34.609596, 25.761557>,  <38.448006, 34.049854, 25.272083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443039, 34.609596, 25.761557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063126, 34.597904, 25.636946>,  <37.835178, 34.590889, 25.562180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063126, 34.597904, 25.636946>,  <38.443039, 34.609596, 25.761557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063126, 34.597904, 25.636946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309561, 0.232791, 0.921944,
		0.045569, 0.972087, -0.230152,
		-0.949787, -0.029234, -0.311529,
		37.778191, 34.589134, 25.543488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220413, 35.180523, 25.940046>,  <38.443039, 34.609596, 25.761557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220413, 35.180523, 25.940046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903088, 34.938408, 25.913891>,  <37.712692, 34.793140, 25.898197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903088, 34.938408, 25.913891>,  <38.220413, 35.180523, 25.940046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903088, 34.938408, 25.913891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221407, 0.186787, 0.957126,
		-0.567123, 0.773781, -0.282196,
		-0.793316, -0.605288, -0.065389,
		37.665092, 34.756821, 25.894274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877708, 35.453896, 26.434059>,  <38.220413, 35.180523, 25.940046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877708, 35.453896, 26.434059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674141, 35.111401, 26.398590>,  <37.551998, 34.905903, 26.377308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674141, 35.111401, 26.398590>,  <37.877708, 35.453896, 26.434059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674141, 35.111401, 26.398590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155997, -0.009570, 0.987711,
		-0.846560, 0.516501, -0.128700,
		-0.508922, -0.856233, -0.088674,
		37.521465, 34.854530, 26.371988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273575, 35.470749, 26.828642>,  <37.877708, 35.453896, 26.434059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273575, 35.470749, 26.828642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305470, 35.073299, 26.796755>,  <37.324604, 34.834831, 26.777622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305470, 35.073299, 26.796755>,  <37.273575, 35.470749, 26.828642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305470, 35.073299, 26.796755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106780, -0.088025, 0.990378,
		-0.991080, -0.070454, -0.113118,
		0.079733, -0.993624, -0.079717,
		37.329388, 34.775211, 26.772840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726391, 35.247044, 27.170862>,  <37.273575, 35.470749, 26.828642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726391, 35.247044, 27.170862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949524, 34.915169, 27.179302>,  <37.083405, 34.716045, 27.184366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949524, 34.915169, 27.179302>,  <36.726391, 35.247044, 27.170862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949524, 34.915169, 27.179302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181681, -0.097265, 0.978535,
		-0.809823, -0.549694, -0.204996,
		0.557834, -0.829684, 0.021101,
		37.116875, 34.666264, 27.185633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258137, 34.647419, 27.562666>,  <36.726391, 35.247044, 27.170862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258137, 34.647419, 27.562666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638229, 34.522808, 27.563526>,  <36.866287, 34.448040, 27.564041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638229, 34.522808, 27.563526>,  <36.258137, 34.647419, 27.562666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638229, 34.522808, 27.563526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106515, -0.318396, 0.941955,
		-0.292755, -0.895309, -0.335733,
		0.950236, -0.311523, 0.002152,
		36.923298, 34.429348, 27.564171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195396, 34.036724, 27.796926>,  <36.258137, 34.647419, 27.562666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195396, 34.036724, 27.796926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570496, 34.158108, 27.864500>,  <36.795555, 34.230938, 27.905045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570496, 34.158108, 27.864500>,  <36.195396, 34.036724, 27.796926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570496, 34.158108, 27.864500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112407, -0.195053, 0.974330,
		0.328618, -0.932667, -0.148800,
		0.937750, 0.303456, 0.168936,
		36.851822, 34.249146, 27.915180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392467, 33.635731, 28.386711>,  <36.195396, 34.036724, 27.796926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392467, 33.635731, 28.386711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657207, 33.935585, 28.386683>,  <36.816051, 34.115498, 28.386665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657207, 33.935585, 28.386683>,  <36.392467, 33.635731, 28.386711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657207, 33.935585, 28.386683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005339, 0.004806, 0.999974,
		0.749614, -0.661836, 0.007183,
		0.661854, 0.749633, -0.000069,
		36.855762, 34.160477, 28.386662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943077, 33.375259, 28.791061>,  <36.392467, 33.635731, 28.386711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943077, 33.375259, 28.791061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932209, 33.774479, 28.813543>,  <36.925690, 34.014011, 28.827032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932209, 33.774479, 28.813543>,  <36.943077, 33.375259, 28.791061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932209, 33.774479, 28.813543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088634, -0.053597, 0.994621,
		0.995694, 0.032004, -0.087005,
		-0.027168, 0.998050, 0.056203,
		36.924057, 34.073895, 28.830404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379868, 33.589703, 29.327879>,  <36.943077, 33.375259, 28.791061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379868, 33.589703, 29.327879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151913, 33.912510, 29.265968>,  <37.015141, 34.106194, 29.228823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.151913, 33.912510, 29.265968>,  <37.379868, 33.589703, 29.327879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151913, 33.912510, 29.265968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159641, 0.293500, 0.942535,
		0.806069, 0.512426, -0.296094,
		-0.569883, 0.807017, -0.154777,
		36.980949, 34.154613, 29.219536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805611, 34.098377, 29.464022>,  <37.379868, 33.589703, 29.327879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805611, 34.098377, 29.464022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439598, 34.254303, 29.505520>,  <37.219990, 34.347858, 29.530418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439598, 34.254303, 29.505520>,  <37.805611, 34.098377, 29.464022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439598, 34.254303, 29.505520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283360, 0.438108, 0.853093,
		0.287094, 0.810005, -0.511340,
		-0.915032, 0.389811, 0.103745,
		37.165089, 34.371246, 29.536644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923130, 34.767513, 29.606182>,  <37.805611, 34.098377, 29.464022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923130, 34.767513, 29.606182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556850, 34.678402, 29.739965>,  <37.337082, 34.624935, 29.820236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556850, 34.678402, 29.739965>,  <37.923130, 34.767513, 29.606182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556850, 34.678402, 29.739965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244124, 0.352724, 0.903321,
		-0.319209, 0.908822, -0.268605,
		-0.915702, -0.222775, 0.334458,
		37.282139, 34.611568, 29.840303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978928, 35.244308, 30.069326>,  <37.923130, 34.767513, 29.606182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978928, 35.244308, 30.069326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667114, 35.008854, 30.154957>,  <37.480026, 34.867580, 30.206335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667114, 35.008854, 30.154957>,  <37.978928, 35.244308, 30.069326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667114, 35.008854, 30.154957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019267, 0.319086, 0.947530,
		-0.626060, 0.742759, -0.237398,
		-0.779537, -0.588637, 0.214078,
		37.433254, 34.832264, 30.219181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589931, 35.618698, 30.570114>,  <37.978928, 35.244308, 30.069326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589931, 35.618698, 30.570114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501091, 35.235214, 30.641171>,  <37.447788, 35.005123, 30.683804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501091, 35.235214, 30.641171>,  <37.589931, 35.618698, 30.570114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501091, 35.235214, 30.641171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052389, 0.170192, 0.984017,
		-0.973615, 0.227856, 0.012426,
		-0.222100, -0.958705, 0.177639,
		37.434460, 34.947601, 30.694462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479790, 35.617180, 31.282495>,  <37.589931, 35.618698, 30.570114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479790, 35.617180, 31.282495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513065, 35.229309, 31.190582>,  <37.533031, 34.996586, 31.135435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513065, 35.229309, 31.190582>,  <37.479790, 35.617180, 31.282495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513065, 35.229309, 31.190582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190110, -0.210905, 0.958842,
		-0.978232, -0.123453, 0.166800,
		0.083193, -0.969680, -0.229783,
		37.538025, 34.938404, 31.121647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026817, 35.156879, 31.773621>,  <37.479790, 35.617180, 31.282495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026817, 35.156879, 31.773621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322571, 34.938133, 31.616522>,  <37.500023, 34.806885, 31.522263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322571, 34.938133, 31.616522>,  <37.026817, 35.156879, 31.773621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322571, 34.938133, 31.616522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288897, -0.269212, 0.918729,
		-0.608155, -0.792756, -0.041062,
		0.739382, -0.546867, -0.392747,
		37.544384, 34.774075, 31.498697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022820, 34.623070, 32.253326>,  <37.026817, 35.156879, 31.773621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022820, 34.623070, 32.253326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378326, 34.618671, 32.070038>,  <37.591633, 34.616032, 31.960066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378326, 34.618671, 32.070038>,  <37.022820, 34.623070, 32.253326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378326, 34.618671, 32.070038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450560, 0.204501, 0.869008,
		0.084151, -0.978804, 0.186709,
		0.888771, -0.010996, -0.458219,
		37.644958, 34.615372, 31.932571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478817, 34.102062, 32.688057>,  <37.022820, 34.623070, 32.253326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478817, 34.102062, 32.688057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705173, 34.339535, 32.459209>,  <37.840988, 34.482018, 32.321903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705173, 34.339535, 32.459209>,  <37.478817, 34.102062, 32.688057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705173, 34.339535, 32.459209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667272, 0.077797, 0.740740,
		0.484270, -0.800933, -0.352120,
		0.565889, 0.593678, -0.572115,
		37.874939, 34.517639, 32.287575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176353, 33.862877, 32.901299>,  <37.478817, 34.102062, 32.688057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176353, 33.862877, 32.901299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220390, 34.231121, 32.751442>,  <38.246811, 34.452068, 32.661530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220390, 34.231121, 32.751442>,  <38.176353, 33.862877, 32.901299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220390, 34.231121, 32.751442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796835, 0.143549, 0.586897,
		0.594083, -0.363138, -0.717771,
		0.110089, 0.920611, -0.374641,
		38.253418, 34.507305, 32.639050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887672, 33.956120, 32.901001>,  <38.176353, 33.862877, 32.901299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887672, 33.956120, 32.901001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766861, 34.331448, 32.833672>,  <38.694374, 34.556644, 32.793274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766861, 34.331448, 32.833672>,  <38.887672, 33.956120, 32.901001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766861, 34.331448, 32.833672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812507, 0.345727, 0.469367,
		0.498612, 0.004995, -0.866811,
		-0.302025, 0.938322, -0.168325,
		38.676254, 34.612946, 32.783173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470230, 34.276161, 32.656956>,  <38.887672, 33.956120, 32.901001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470230, 34.276161, 32.656956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237564, 34.567257, 32.802315>,  <39.097965, 34.741917, 32.889530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237564, 34.567257, 32.802315>,  <39.470230, 34.276161, 32.656956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237564, 34.567257, 32.802315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792829, 0.407322, 0.453333,
		0.181891, 0.551798, -0.813901,
		-0.581668, 0.727741, 0.363393,
		39.063065, 34.785580, 32.911331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732548, 34.879040, 32.511063>,  <39.470230, 34.276161, 32.656956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732548, 34.879040, 32.511063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499077, 34.975491, 32.821205>,  <39.358994, 35.033360, 33.007290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499077, 34.975491, 32.821205>,  <39.732548, 34.879040, 32.511063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499077, 34.975491, 32.821205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808879, 0.256098, 0.529271,
		-0.070948, 0.936095, -0.344519,
		-0.583679, 0.241123, 0.775357,
		39.323975, 35.047829, 33.053814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041603, 35.297718, 32.876530>,  <39.732548, 34.879040, 32.511063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041603, 35.297718, 32.876530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776901, 35.209911, 33.163273>,  <39.618080, 35.157227, 33.335320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776901, 35.209911, 33.163273>,  <40.041603, 35.297718, 32.876530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776901, 35.209911, 33.163273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669792, 0.256481, 0.696847,
		-0.336830, 0.941292, -0.022698,
		-0.661758, -0.219517, 0.716860,
		39.578373, 35.144058, 33.378330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016804, 35.921848, 33.336857>,  <40.041603, 35.297718, 32.876530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016804, 35.921848, 33.336857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920467, 35.570107, 33.501163>,  <39.862663, 35.359062, 33.599747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920467, 35.570107, 33.501163>,  <40.016804, 35.921848, 33.336857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920467, 35.570107, 33.501163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757134, 0.094570, 0.646379,
		-0.607242, 0.466682, 0.643012,
		-0.240844, -0.879354, 0.410768,
		39.848213, 35.306301, 33.624393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965511, 35.979748, 34.082115>,  <40.016804, 35.921848, 33.336857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965511, 35.979748, 34.082115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067295, 35.603577, 33.991924>,  <40.128365, 35.377872, 33.937809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.067295, 35.603577, 33.991924>,  <39.965511, 35.979748, 34.082115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067295, 35.603577, 33.991924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660321, -0.001384, 0.750982,
		-0.706559, -0.339982, 0.620634,
		0.254462, -0.940431, -0.225475,
		40.143635, 35.321449, 33.924282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098061, 35.611225, 34.783081>,  <39.965511, 35.979748, 34.082115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098061, 35.611225, 34.783081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271656, 35.374725, 34.511177>,  <40.375816, 35.232826, 34.348034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271656, 35.374725, 34.511177>,  <40.098061, 35.611225, 34.783081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271656, 35.374725, 34.511177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732325, -0.207953, 0.648426,
		-0.524738, -0.779219, 0.342734,
		0.433993, -0.591247, -0.679763,
		40.401855, 35.197350, 34.307247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280907, 34.899578, 35.181610>,  <40.098061, 35.611225, 34.783081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280907, 34.899578, 35.181610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526611, 34.940384, 34.868618>,  <40.674034, 34.964867, 34.680820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526611, 34.940384, 34.868618>,  <40.280907, 34.899578, 35.181610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526611, 34.940384, 34.868618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787379, -0.144804, 0.599221,
		-0.052176, -0.984187, -0.169273,
		0.614257, 0.102017, -0.782483,
		40.710888, 34.970989, 34.633873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651630, 34.316574, 35.173306>,  <40.280907, 34.899578, 35.181610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651630, 34.316574, 35.173306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864693, 34.598690, 34.986183>,  <40.992531, 34.767960, 34.873909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864693, 34.598690, 34.986183>,  <40.651630, 34.316574, 35.173306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864693, 34.598690, 34.986183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841320, -0.381211, 0.383222,
		0.091949, -0.597702, -0.796428,
		0.532659, 0.705288, -0.467807,
		41.024490, 34.810276, 34.845840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293526, 33.953667, 34.822323>,  <40.651630, 34.316574, 35.173306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293526, 33.953667, 34.822323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406654, 34.335541, 34.859386>,  <41.474533, 34.564667, 34.881626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406654, 34.335541, 34.859386>,  <41.293526, 33.953667, 34.822323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406654, 34.335541, 34.859386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862515, -0.295392, 0.410866,
		0.419619, -0.036283, -0.906975,
		0.282820, 0.954687, 0.092658,
		41.491501, 34.621948, 34.887184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964672, 33.886181, 34.943424>,  <41.293526, 33.953667, 34.822323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964672, 33.886181, 34.943424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913990, 34.266289, 35.057224>,  <41.883579, 34.494354, 35.125504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913990, 34.266289, 35.057224>,  <41.964672, 33.886181, 34.943424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913990, 34.266289, 35.057224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751431, -0.095278, 0.652896,
		0.647532, 0.296508, -0.701987,
		-0.126705, 0.950266, 0.284501,
		41.875980, 34.551369, 35.142574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520470, 34.185398, 34.744007>,  <41.964672, 33.886181, 34.943424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520470, 34.185398, 34.744007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356701, 34.384377, 35.049927>,  <42.258438, 34.503765, 35.233479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356701, 34.384377, 35.049927>,  <42.520470, 34.185398, 34.744007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356701, 34.384377, 35.049927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858485, -0.073708, 0.507514,
		0.308832, 0.864358, -0.396872,
		-0.409421, 0.497445, 0.764802,
		42.233875, 34.533611, 35.279369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074623, 34.557636, 35.077553>,  <42.520470, 34.185398, 34.744007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074623, 34.557636, 35.077553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777294, 34.562004, 35.345093>,  <42.598896, 34.564625, 35.505615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777294, 34.562004, 35.345093>,  <43.074623, 34.557636, 35.077553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777294, 34.562004, 35.345093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666265, -0.077216, 0.741707,
		0.059748, 0.996955, 0.050118,
		-0.743318, 0.010924, 0.668849,
		42.554298, 34.565281, 35.545746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226116, 34.965679, 35.693909>,  <43.074623, 34.557636, 35.077553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226116, 34.965679, 35.693909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959999, 34.684177, 35.793602>,  <42.800327, 34.515278, 35.853416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959999, 34.684177, 35.793602>,  <43.226116, 34.965679, 35.693909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959999, 34.684177, 35.793602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549548, -0.235657, 0.801538,
		-0.505350, 0.670225, 0.543526,
		-0.665296, -0.703750, 0.249231,
		42.760410, 34.473053, 35.868370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064442, 35.089146, 36.344818>,  <43.226116, 34.965679, 35.693909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064442, 35.089146, 36.344818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947121, 34.708210, 36.311291>,  <42.876728, 34.479649, 36.291176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947121, 34.708210, 36.311291>,  <43.064442, 35.089146, 36.344818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947121, 34.708210, 36.311291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507278, -0.229343, 0.830705,
		-0.810336, 0.201127, 0.550367,
		-0.293300, -0.952339, -0.083818,
		42.859131, 34.422508, 36.286144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925941, 34.827049, 37.051716>,  <43.064442, 35.089146, 36.344818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925941, 34.827049, 37.051716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994160, 34.518764, 36.806145>,  <43.035091, 34.333794, 36.658802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.994160, 34.518764, 36.806145>,  <42.925941, 34.827049, 37.051716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994160, 34.518764, 36.806145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610403, -0.406474, 0.679843,
		-0.773513, -0.490690, 0.401125,
		0.170545, -0.770716, -0.613931,
		43.045322, 34.287548, 36.621964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678352, 34.265640, 37.479744>,  <42.925941, 34.827049, 37.051716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678352, 34.265640, 37.479744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977692, 34.221996, 37.218037>,  <43.157295, 34.195808, 37.061012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977692, 34.221996, 37.218037>,  <42.678352, 34.265640, 37.479744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977692, 34.221996, 37.218037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596464, -0.320822, 0.735734,
		-0.290181, -0.940834, -0.175006,
		0.748349, -0.109111, -0.654270,
		43.202198, 34.189262, 37.021755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300110, 34.435825, 37.686623>,  <42.678352, 34.265640, 37.479744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300110, 34.435825, 37.686623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486492, 34.406044, 37.333954>,  <43.598320, 34.388176, 37.122353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486492, 34.406044, 37.333954>,  <43.300110, 34.435825, 37.686623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486492, 34.406044, 37.333954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852389, 0.305032, 0.424722,
		0.237314, -0.949427, 0.205599,
		0.465957, -0.074458, -0.881669,
		43.626278, 34.383705, 37.069454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937340, 34.090942, 37.766434>,  <43.300110, 34.435825, 37.686623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937340, 34.090942, 37.766434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947159, 34.334953, 37.449635>,  <43.953049, 34.481361, 37.259556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947159, 34.334953, 37.449635>,  <43.937340, 34.090942, 37.766434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947159, 34.334953, 37.449635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806090, 0.456502, 0.376597,
		0.591284, -0.647668, -0.480530,
		0.024547, 0.610026, -0.792001,
		43.954521, 34.517960, 37.212036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631390, 34.108753, 37.619335>,  <43.937340, 34.090942, 37.766434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631390, 34.108753, 37.619335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485935, 34.432095, 37.434151>,  <44.398663, 34.626099, 37.323040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485935, 34.432095, 37.434151>,  <44.631390, 34.108753, 37.619335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485935, 34.432095, 37.434151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733873, 0.554698, 0.392098,
		0.573756, -0.197172, -0.794938,
		-0.363640, 0.808353, -0.462960,
		44.376842, 34.674599, 37.295261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149944, 34.378090, 37.137417>,  <44.631390, 34.108753, 37.619335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149944, 34.378090, 37.137417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893566, 34.664268, 37.248646>,  <44.739738, 34.835976, 37.315384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893566, 34.664268, 37.248646>,  <45.149944, 34.378090, 37.137417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893566, 34.664268, 37.248646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762579, 0.552193, 0.336982,
		0.087546, 0.428036, -0.899511,
		-0.640944, 0.715450, 0.278069,
		44.701283, 34.878902, 37.332066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601643, 34.964432, 37.301022>,  <45.149944, 34.378090, 37.137417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601643, 34.964432, 37.301022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259399, 35.138538, 37.413071>,  <45.054054, 35.243004, 37.480301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.259399, 35.138538, 37.413071>,  <45.601643, 34.964432, 37.301022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.259399, 35.138538, 37.413071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517600, 0.714900, 0.470115,
		0.004368, 0.547227, -0.836973,
		-0.855611, 0.435271, 0.280122,
		45.002716, 35.269119, 37.497108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655087, 35.695496, 37.125267>,  <45.601643, 34.964432, 37.301022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655087, 35.695496, 37.125267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375256, 35.645760, 37.406727>,  <45.207355, 35.615917, 37.575603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375256, 35.645760, 37.406727>,  <45.655087, 35.695496, 37.125267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375256, 35.645760, 37.406727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465339, 0.668023, 0.580693,
		-0.542260, 0.733678, -0.409475,
		-0.699581, -0.124343, 0.703651,
		45.165382, 35.608456, 37.617821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.828125, 36.228546, 37.413376>,  <45.655087, 35.695496, 37.125267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.828125, 36.228546, 37.413376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548222, 36.056942, 37.641861>,  <45.380280, 35.953979, 37.778950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548222, 36.056942, 37.641861>,  <45.828125, 36.228546, 37.413376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548222, 36.056942, 37.641861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190928, 0.658191, 0.728238,
		-0.688389, 0.618654, -0.378666,
		-0.699762, -0.429013, 0.571210,
		45.338291, 35.928238, 37.813225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256477, 36.728241, 37.491100>,  <45.828125, 36.228546, 37.413376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256477, 36.728241, 37.491100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343758, 36.458961, 37.773716>,  <45.396126, 36.297394, 37.943283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343758, 36.458961, 37.773716>,  <45.256477, 36.728241, 37.491100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343758, 36.458961, 37.773716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108617, 0.736235, 0.667952,
		-0.969841, -0.069003, 0.233765,
		0.218197, -0.673199, 0.706536,
		45.409218, 36.257004, 37.985676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884197, 36.959061, 38.098198>,  <45.256477, 36.728241, 37.491100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884197, 36.959061, 38.098198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215855, 36.738350, 38.134129>,  <45.414848, 36.605923, 38.155685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.215855, 36.738350, 38.134129>,  <44.884197, 36.959061, 38.098198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.215855, 36.738350, 38.134129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412357, 0.712132, 0.568182,
		-0.377476, -0.434064, 0.817986,
		0.829141, -0.551777, 0.089823,
		45.464596, 36.572819, 38.161076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287228, 37.503761, 38.512733>,  <44.884197, 36.959061, 38.098198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287228, 37.503761, 38.512733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257919, 37.331940, 38.872761>,  <45.240334, 37.228848, 39.088776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257919, 37.331940, 38.872761>,  <45.287228, 37.503761, 38.512733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257919, 37.331940, 38.872761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340438, -0.859055, -0.382265,
		0.937408, 0.278408, 0.209179,
		-0.073271, -0.429551, 0.900065,
		45.235939, 37.203075, 39.142780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.932613, 37.183292, 38.867161>,  <45.287228, 37.503761, 38.512733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.932613, 37.183292, 38.867161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626644, 36.984135, 39.030621>,  <45.443062, 36.864639, 39.128696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.626644, 36.984135, 39.030621>,  <45.932613, 37.183292, 38.867161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626644, 36.984135, 39.030621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365653, -0.857947, -0.360868,
		0.530276, -0.126610, 0.838318,
		-0.764922, -0.497893, 0.408653,
		45.397167, 36.834766, 39.153217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133072, 36.462952, 39.190502>,  <45.932613, 37.183292, 38.867161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133072, 36.462952, 39.190502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753578, 36.466412, 39.064117>,  <45.525883, 36.468487, 38.988289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753578, 36.466412, 39.064117>,  <46.133072, 36.462952, 39.190502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753578, 36.466412, 39.064117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199849, -0.758032, -0.620844,
		-0.244879, -0.652160, 0.717441,
		-0.948733, 0.008652, -0.315960,
		45.468960, 36.469006, 38.969330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040947, 35.765331, 38.943504>,  <46.133072, 36.462952, 39.190502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040947, 35.765331, 38.943504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725029, 35.965309, 38.801361>,  <45.535477, 36.085297, 38.716076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725029, 35.965309, 38.801361>,  <46.040947, 35.765331, 38.943504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725029, 35.965309, 38.801361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044210, -0.624243, -0.779978,
		-0.611766, -0.600318, 0.515131,
		-0.789802, 0.499939, -0.355351,
		45.488091, 36.115292, 38.694756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438873, 35.298656, 38.866764>,  <46.040947, 35.765331, 38.943504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438873, 35.298656, 38.866764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325386, 35.609428, 38.641953>,  <45.257294, 35.795891, 38.507065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.325386, 35.609428, 38.641953>,  <45.438873, 35.298656, 38.866764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325386, 35.609428, 38.641953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372806, -0.629379, -0.681834,
		-0.883470, 0.016080, 0.468211,
		-0.283718, 0.776932, -0.562032,
		45.240273, 35.842506, 38.473343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704617, 35.208271, 38.677677>,  <45.438873, 35.298656, 38.866764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704617, 35.208271, 38.677677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893608, 35.435078, 38.407787>,  <45.007004, 35.571163, 38.245853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893608, 35.435078, 38.407787>,  <44.704617, 35.208271, 38.677677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893608, 35.435078, 38.407787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539621, -0.419172, -0.730140,
		-0.696827, 0.709073, 0.107924,
		0.472483, 0.567019, -0.674721,
		45.035355, 35.605183, 38.205372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143280, 35.607281, 38.364166>,  <44.704617, 35.208271, 38.677677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143280, 35.607281, 38.364166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479542, 35.590084, 38.148224>,  <44.681301, 35.579765, 38.018658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.479542, 35.590084, 38.148224>,  <44.143280, 35.607281, 38.364166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479542, 35.590084, 38.148224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510374, -0.396312, -0.763187,
		-0.181145, 0.917109, -0.355102,
		0.840657, -0.042987, -0.539859,
		44.731739, 35.577187, 37.986267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898445, 35.876240, 37.868160>,  <44.143280, 35.607281, 38.364166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898445, 35.876240, 37.868160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233383, 35.684948, 37.762218>,  <44.434345, 35.570171, 37.698654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.233383, 35.684948, 37.762218>,  <43.898445, 35.876240, 37.868160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.233383, 35.684948, 37.762218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500206, -0.474782, -0.724138,
		0.220558, 0.738836, -0.636770,
		0.837346, -0.478231, -0.264853,
		44.484589, 35.541477, 37.682762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005470, 36.050922, 37.171223>,  <43.898445, 35.876240, 37.868160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005470, 36.050922, 37.171223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162113, 35.692673, 37.255608>,  <44.256100, 35.477722, 37.306236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162113, 35.692673, 37.255608>,  <44.005470, 36.050922, 37.171223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162113, 35.692673, 37.255608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638258, -0.429552, -0.638836,
		0.662774, 0.115527, -0.739854,
		0.391608, -0.895622, 0.210960,
		44.279594, 35.423985, 37.318897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671780, 35.584949, 36.761585>,  <44.005470, 36.050922, 37.171223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671780, 35.584949, 36.761585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903259, 35.299942, 36.920288>,  <44.042149, 35.128937, 37.015511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903259, 35.299942, 36.920288>,  <43.671780, 35.584949, 36.761585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903259, 35.299942, 36.920288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533714, -0.698733, -0.476362,
		0.616646, 0.063917, -0.784642,
		0.578703, -0.712521, 0.396757,
		44.076870, 35.086185, 37.039314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073250, 35.254482, 36.146637>,  <43.671780, 35.584949, 36.761585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073250, 35.254482, 36.146637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019871, 35.050446, 36.486519>,  <43.987843, 34.928024, 36.690449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019871, 35.050446, 36.486519>,  <44.073250, 35.254482, 36.146637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019871, 35.050446, 36.486519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646421, -0.605085, -0.464772,
		0.751220, -0.611289, -0.248987,
		-0.133452, -0.510096, 0.849701,
		43.979836, 34.897415, 36.741428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916470, 34.584949, 35.931152>,  <44.073250, 35.254482, 36.146637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916470, 34.584949, 35.931152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798206, 34.574112, 36.313118>,  <43.727249, 34.567608, 36.542297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798206, 34.574112, 36.313118>,  <43.916470, 34.584949, 35.931152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798206, 34.574112, 36.313118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669078, -0.707600, -0.227237,
		0.681853, -0.706093, 0.191074,
		-0.295655, -0.027099, 0.954910,
		43.709511, 34.565983, 36.599590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613884, 33.910011, 35.940868>,  <43.916470, 34.584949, 35.931152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613884, 33.910011, 35.940868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510639, 34.102261, 36.276100>,  <43.448692, 34.217609, 36.477238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510639, 34.102261, 36.276100>,  <43.613884, 33.910011, 35.940868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510639, 34.102261, 36.276100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654672, -0.724953, 0.214120,
		0.710479, -0.493400, 0.501773,
		-0.258115, 0.480625, 0.838079,
		43.433205, 34.246449, 36.527523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324806, 33.218910, 36.134399>,  <43.613884, 33.910011, 35.940868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324806, 33.218910, 36.134399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148415, 33.520695, 36.328850>,  <43.042580, 33.701767, 36.445522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148415, 33.520695, 36.328850>,  <43.324806, 33.218910, 36.134399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148415, 33.520695, 36.328850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382977, 0.331673, -0.862161,
		-0.811704, -0.566373, 0.142681,
		-0.440982, 0.754463, 0.486129,
		43.016121, 33.747032, 36.474689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664581, 33.167759, 36.042633>,  <43.324806, 33.218910, 36.134399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664581, 33.167759, 36.042633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707729, 33.556431, 36.126736>,  <42.733616, 33.789635, 36.177197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707729, 33.556431, 36.126736>,  <42.664581, 33.167759, 36.042633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707729, 33.556431, 36.126736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622165, 0.230935, -0.748051,
		-0.775420, -0.050125, 0.629454,
		0.107867, 0.971677, 0.210258,
		42.740089, 33.847935, 36.189812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998524, 33.462376, 36.074623>,  <42.664581, 33.167759, 36.042633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998524, 33.462376, 36.074623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254765, 33.760391, 36.000282>,  <42.408508, 33.939201, 35.955677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254765, 33.760391, 36.000282>,  <41.998524, 33.462376, 36.074623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254765, 33.760391, 36.000282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564765, 0.293169, -0.771422,
		-0.520258, 0.599135, 0.608579,
		0.640603, 0.745043, -0.185847,
		42.446945, 33.983906, 35.944527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909260, 34.085575, 36.516792>,  <41.998524, 33.462376, 36.074623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909260, 34.085575, 36.516792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186897, 34.320084, 36.349693>,  <42.353481, 34.460789, 36.249432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186897, 34.320084, 36.349693>,  <41.909260, 34.085575, 36.516792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186897, 34.320084, 36.349693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704509, 0.433905, -0.561600,
		-0.147988, 0.684112, 0.714206,
		0.694095, 0.586274, -0.417750,
		42.395126, 34.495964, 36.224369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730190, 34.813660, 36.516102>,  <41.909260, 34.085575, 36.516792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730190, 34.813660, 36.516102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984261, 34.759224, 36.211990>,  <42.136703, 34.726562, 36.029522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.984261, 34.759224, 36.211990>,  <41.730190, 34.813660, 36.516102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984261, 34.759224, 36.211990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652427, 0.432307, -0.622455,
		0.413384, 0.891398, 0.185804,
		0.635179, -0.136090, -0.760281,
		42.174812, 34.718395, 35.983906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807274, 35.423851, 36.163044>,  <41.730190, 34.813660, 36.516102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807274, 35.423851, 36.163044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897018, 35.140617, 35.895226>,  <41.950863, 34.970676, 35.734535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897018, 35.140617, 35.895226>,  <41.807274, 35.423851, 36.163044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897018, 35.140617, 35.895226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600595, 0.440592, -0.667207,
		0.767430, 0.551817, -0.326418,
		0.224359, -0.708080, -0.669542,
		41.964325, 34.928192, 35.694363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647274, 35.658699, 35.616272>,  <41.807274, 35.423851, 36.163044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647274, 35.658699, 35.616272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674515, 35.287933, 35.468658>,  <41.690861, 35.065472, 35.380093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674515, 35.287933, 35.468658>,  <41.647274, 35.658699, 35.616272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674515, 35.287933, 35.468658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603249, 0.256353, -0.755231,
		0.794640, 0.274053, -0.541704,
		0.068106, -0.926919, -0.369030,
		41.694946, 35.009857, 35.357948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860844, 35.850410, 34.833733>,  <41.647274, 35.658699, 35.616272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860844, 35.850410, 34.833733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755894, 35.464481, 34.840252>,  <41.692924, 35.232922, 34.844166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755894, 35.464481, 34.840252>,  <41.860844, 35.850410, 34.833733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755894, 35.464481, 34.840252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603218, 0.150809, -0.783189,
		0.753184, -0.215325, -0.621570,
		-0.262379, -0.964828, 0.016301,
		41.677181, 35.175034, 34.845142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832195, 35.592541, 34.162666>,  <41.860844, 35.850410, 34.833733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832195, 35.592541, 34.162666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611717, 35.309467, 34.339466>,  <41.479431, 35.139622, 34.445545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611717, 35.309467, 34.339466>,  <41.832195, 35.592541, 34.162666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611717, 35.309467, 34.339466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610251, -0.019328, -0.791972,
		0.569010, -0.706263, -0.421212,
		-0.551199, -0.707686, 0.441996,
		41.446358, 35.097160, 34.472065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482342, 35.238430, 33.639530>,  <41.832195, 35.592541, 34.162666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482342, 35.238430, 33.639530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242882, 35.133621, 33.942307>,  <41.099205, 35.070736, 34.123974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242882, 35.133621, 33.942307>,  <41.482342, 35.238430, 33.639530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242882, 35.133621, 33.942307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747483, -0.156897, -0.645486,
		0.287894, -0.952222, -0.101932,
		-0.598653, -0.262024, 0.756940,
		41.063286, 35.055016, 34.169388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184010, 34.667519, 33.398750>,  <41.482342, 35.238430, 33.639530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184010, 34.667519, 33.398750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935963, 34.819023, 33.673557>,  <40.787136, 34.909927, 33.838444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935963, 34.819023, 33.673557>,  <41.184010, 34.667519, 33.398750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935963, 34.819023, 33.673557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761355, -0.079353, -0.643461,
		-0.189205, -0.922084, 0.337583,
		-0.620113, 0.378766, 0.687019,
		40.749928, 34.932652, 33.879665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637894, 34.120144, 33.634651>,  <41.184010, 34.667519, 33.398750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637894, 34.120144, 33.634651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476139, 34.476921, 33.715553>,  <40.379086, 34.690987, 33.764095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476139, 34.476921, 33.715553>,  <40.637894, 34.120144, 33.634651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476139, 34.476921, 33.715553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789230, -0.228568, -0.569975,
		-0.462156, -0.390118, 0.796379,
		-0.404384, 0.891944, 0.202259,
		40.354824, 34.744503, 33.776230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172127, 33.665718, 33.320129>,  <40.637894, 34.120144, 33.634651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172127, 33.665718, 33.320129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344440, 33.374794, 33.533836>,  <41.447830, 33.200237, 33.662060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344440, 33.374794, 33.533836>,  <41.172127, 33.665718, 33.320129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344440, 33.374794, 33.533836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886713, 0.231041, -0.400451,
		0.167817, 0.646247, 0.744448,
		0.430788, -0.727314, 0.534263,
		41.473679, 33.156601, 33.694115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954147, 33.847889, 33.636059>,  <41.172127, 33.665718, 33.320129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954147, 33.847889, 33.636059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974113, 33.449009, 33.613766>,  <41.986092, 33.209682, 33.600388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974113, 33.449009, 33.613766>,  <41.954147, 33.847889, 33.636059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974113, 33.449009, 33.613766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899734, 0.069120, -0.430931,
		0.433576, -0.028638, 0.900662,
		0.049913, -0.997197, -0.055736,
		41.989086, 33.149849, 33.597046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681019, 33.762459, 33.860687>,  <41.954147, 33.847889, 33.636059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681019, 33.762459, 33.860687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505398, 33.474815, 33.645241>,  <42.400024, 33.302227, 33.515972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505398, 33.474815, 33.645241>,  <42.681019, 33.762459, 33.860687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505398, 33.474815, 33.645241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787509, -0.019428, -0.615998,
		0.432507, -0.694622, 0.574838,
		-0.439054, -0.719113, -0.538618,
		42.373680, 33.259083, 33.483654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179596, 33.152592, 33.720432>,  <42.681019, 33.762459, 33.860687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179596, 33.152592, 33.720432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919754, 33.201927, 33.420353>,  <42.763847, 33.231529, 33.240303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919754, 33.201927, 33.420353>,  <43.179596, 33.152592, 33.720432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919754, 33.201927, 33.420353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759681, 0.066398, -0.646897,
		-0.029979, -0.990140, -0.136834,
		-0.649605, 0.123343, -0.750200,
		42.724873, 33.238930, 33.195293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507759, 32.842075, 33.143414>,  <43.179596, 33.152592, 33.720432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507759, 32.842075, 33.143414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180077, 32.969425, 32.952610>,  <42.983467, 33.045834, 32.838127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180077, 32.969425, 32.952610>,  <43.507759, 32.842075, 33.143414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180077, 32.969425, 32.952610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460328, -0.131036, -0.878025,
		-0.342045, -0.938865, -0.039211,
		-0.819209, 0.318374, -0.477006,
		42.934315, 33.064938, 32.809509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369125, 32.218155, 32.870911>,  <43.507759, 32.842075, 33.143414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369125, 32.218155, 32.870911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241947, 32.541161, 32.672184>,  <43.165638, 32.734962, 32.552948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.241947, 32.541161, 32.672184>,  <43.369125, 32.218155, 32.870911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241947, 32.541161, 32.672184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346972, -0.388556, -0.853601,
		-0.882337, -0.443783, -0.156645,
		-0.317949, 0.807515, -0.496818,
		43.146561, 32.783417, 32.523140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208530, 31.685692, 32.369728>,  <43.369125, 32.218155, 32.870911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208530, 31.685692, 32.369728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341423, 32.059269, 32.317009>,  <43.421158, 32.283417, 32.285378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341423, 32.059269, 32.317009>,  <43.208530, 31.685692, 32.369728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341423, 32.059269, 32.317009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149159, -0.190002, -0.970387,
		-0.931328, 0.302738, -0.202431,
		0.332235, 0.933943, -0.131798,
		43.441093, 32.339451, 32.277470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908695, 31.526270, 31.992798>,  <43.208530, 31.685692, 32.369728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908695, 31.526270, 31.992798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909939, 31.905846, 31.866623>,  <43.910683, 32.133591, 31.790918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909939, 31.905846, 31.866623>,  <43.908695, 31.526270, 31.992798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909939, 31.905846, 31.866623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641141, 0.240186, 0.728869,
		0.767417, -0.204504, -0.607659,
		0.003105, 0.948941, -0.315439,
		43.910870, 32.190529, 31.771992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524345, 31.817070, 32.172092>,  <43.908695, 31.526270, 31.992798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524345, 31.817070, 32.172092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330326, 32.151825, 32.070621>,  <44.213917, 32.352676, 32.009739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330326, 32.151825, 32.070621>,  <44.524345, 31.817070, 32.172092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330326, 32.151825, 32.070621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554154, 0.518558, 0.651161,
		0.676495, 0.175266, -0.715288,
		-0.485044, 0.836887, -0.253677,
		44.184814, 32.402889, 31.994518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116379, 32.305473, 32.280453>,  <44.524345, 31.817070, 32.172092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116379, 32.305473, 32.280453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783642, 32.526493, 32.301311>,  <44.584000, 32.659103, 32.313828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783642, 32.526493, 32.301311>,  <45.116379, 32.305473, 32.280453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783642, 32.526493, 32.301311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383806, 0.504832, 0.773200,
		0.400903, 0.663200, -0.632015,
		-0.831847, 0.552549, 0.052151,
		44.534088, 32.692257, 32.316956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.295517, 33.066502, 32.306007>,  <45.116379, 32.305473, 32.280453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.295517, 33.066502, 32.306007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971661, 32.917053, 32.487068>,  <44.777348, 32.827385, 32.595703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971661, 32.917053, 32.487068>,  <45.295517, 33.066502, 32.306007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971661, 32.917053, 32.487068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222832, 0.517802, 0.825971,
		-0.542987, 0.769601, -0.335975,
		-0.809637, -0.373625, 0.452651,
		44.728771, 32.804966, 32.622864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780243, 33.133255, 32.898781>,  <45.295517, 33.066502, 32.306007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780243, 33.133255, 32.898781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110390, 33.036125, 32.694897>,  <46.308479, 32.977848, 32.572567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.110390, 33.036125, 32.694897>,  <45.780243, 33.133255, 32.898781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.110390, 33.036125, 32.694897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539134, 0.607029, 0.583823,
		0.167640, -0.756670, 0.631939,
		0.825367, -0.242828, -0.509709,
		46.358002, 32.963276, 32.541985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357941, 32.887184, 33.211277>,  <45.780243, 33.133255, 32.898781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357941, 32.887184, 33.211277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501621, 33.103699, 32.907177>,  <46.587830, 33.233608, 32.724716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501621, 33.103699, 32.907177>,  <46.357941, 32.887184, 33.211277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501621, 33.103699, 32.907177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418051, 0.634999, 0.649623,
		0.834391, -0.551170, 0.001807,
		0.359199, 0.541284, -0.760255,
		46.609383, 33.266083, 32.679100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.036858, 33.040646, 33.309750>,  <46.357941, 32.887184, 33.211277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.036858, 33.040646, 33.309750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926018, 33.323467, 33.049507>,  <46.859516, 33.493160, 32.893360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926018, 33.323467, 33.049507>,  <47.036858, 33.040646, 33.309750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.926018, 33.323467, 33.049507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518030, 0.680219, 0.518601,
		0.809236, -0.193333, -0.554761,
		-0.277096, 0.707053, -0.650610,
		46.842888, 33.535583, 32.854324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.719719, 33.333656, 33.241859>,  <47.036858, 33.040646, 33.309750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.719719, 33.333656, 33.241859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419086, 33.579357, 33.145679>,  <47.238705, 33.726776, 33.087971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419086, 33.579357, 33.145679>,  <47.719719, 33.333656, 33.241859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.419086, 33.579357, 33.145679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447302, 0.742492, 0.498624,
		0.484812, 0.267205, -0.832802,
		-0.751584, 0.614253, -0.240448,
		47.193611, 33.763634, 33.073544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.013382, 33.903030, 33.043354>,  <47.719719, 33.333656, 33.241859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.013382, 33.903030, 33.043354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652397, 33.988674, 33.192875>,  <47.435806, 34.040062, 33.282589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.652397, 33.988674, 33.192875>,  <48.013382, 33.903030, 33.043354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.652397, 33.988674, 33.192875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418301, 0.642886, 0.641655,
		-0.102927, 0.735428, -0.669740,
		-0.902458, 0.214109, 0.373801,
		47.381660, 34.052906, 33.305016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.048805, 34.627266, 33.039970>,  <48.013382, 33.903030, 33.043354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.048805, 34.627266, 33.039970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798920, 34.473766, 33.311993>,  <47.648987, 34.381668, 33.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798920, 34.473766, 33.311993>,  <48.048805, 34.627266, 33.039970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.798920, 34.473766, 33.311993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501504, 0.470365, 0.726120,
		-0.598520, 0.794666, -0.101392,
		-0.624713, -0.383749, 0.680051,
		47.611507, 34.358643, 33.516006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.721058, 35.215546, 33.439350>,  <48.048805, 34.627266, 33.039970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.721058, 35.215546, 33.439350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691532, 34.870708, 33.639885>,  <47.673817, 34.663807, 33.760204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.691532, 34.870708, 33.639885>,  <47.721058, 35.215546, 33.439350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.691532, 34.870708, 33.639885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292944, 0.461788, 0.837219,
		-0.953276, 0.208664, 0.218460,
		-0.073815, -0.862097, 0.501338,
		47.669388, 34.612080, 33.790287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.295803, 35.313015, 34.023144>,  <47.721058, 35.215546, 33.439350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.295803, 35.313015, 34.023144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554058, 35.016186, 34.095226>,  <47.709011, 34.838089, 34.138474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554058, 35.016186, 34.095226>,  <47.295803, 35.313015, 34.023144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.554058, 35.016186, 34.095226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289422, 0.456162, 0.841517,
		-0.706670, -0.491164, 0.509289,
		0.645641, -0.742075, 0.180203,
		47.747749, 34.793564, 34.149288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203819, 35.103741, 34.723995>,  <47.295803, 35.313015, 34.023144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203819, 35.103741, 34.723995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573933, 35.014984, 34.600956>,  <47.796001, 34.961731, 34.527130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573933, 35.014984, 34.600956>,  <47.203819, 35.103741, 34.723995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.573933, 35.014984, 34.600956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378333, 0.597244, 0.707223,
		0.026789, -0.770756, 0.636567,
		0.925282, -0.221889, -0.307602,
		47.851517, 34.948418, 34.508675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.524395, 34.989769, 35.330486>,  <47.203819, 35.103741, 34.723995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.524395, 34.989769, 35.330486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799301, 35.068207, 35.050713>,  <47.964245, 35.115269, 34.882847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.799301, 35.068207, 35.050713>,  <47.524395, 34.989769, 35.330486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.799301, 35.068207, 35.050713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409812, 0.690338, 0.596228,
		0.599765, -0.696405, 0.394084,
		0.687267, 0.196096, -0.699436,
		48.005482, 35.127037, 34.840881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.448448, 31.366768, 24.953056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060268, 31.289827, 24.894785>,  <35.827358, 31.243664, 24.859821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060268, 31.289827, 24.894785>,  <36.448448, 31.366768, 24.953056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060268, 31.289827, 24.894785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164366, 0.084981, 0.982732,
		-0.176650, 0.977639, -0.114087,
		-0.970453, -0.192352, -0.145678,
		35.769131, 31.232122, 24.851082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170837, 31.900867, 25.396505>,  <36.448448, 31.366768, 24.953056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170837, 31.900867, 25.396505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889751, 31.627754, 25.316507>,  <35.721100, 31.463886, 25.268509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889751, 31.627754, 25.316507>,  <36.170837, 31.900867, 25.396505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889751, 31.627754, 25.316507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395867, 0.141657, 0.907316,
		-0.591170, 0.716756, -0.369836,
		-0.702714, -0.682784, -0.199997,
		35.678936, 31.422918, 25.256508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561886, 32.233334, 25.735611>,  <36.170837, 31.900867, 25.396505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561886, 32.233334, 25.735611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491352, 31.842327, 25.689365>,  <35.449032, 31.607723, 25.661619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.491352, 31.842327, 25.689365>,  <35.561886, 32.233334, 25.735611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491352, 31.842327, 25.689365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275093, -0.063832, 0.959296,
		-0.945108, 0.200963, -0.257653,
		-0.176336, -0.977517, -0.115612,
		35.438450, 31.549072, 25.654682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862751, 32.074177, 25.917299>,  <35.561886, 32.233334, 25.735611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862751, 32.074177, 25.917299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037567, 31.716194, 25.953180>,  <35.142456, 31.501404, 25.974709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037567, 31.716194, 25.953180>,  <34.862751, 32.074177, 25.917299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037567, 31.716194, 25.953180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304457, -0.053355, 0.951030,
		-0.846347, -0.442948, -0.295795,
		0.437039, -0.894958, 0.089702,
		35.168678, 31.447706, 25.980091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365051, 31.664932, 26.218060>,  <34.862751, 32.074177, 25.917299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365051, 31.664932, 26.218060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706757, 31.470076, 26.290648>,  <34.911777, 31.353161, 26.334200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706757, 31.470076, 26.290648>,  <34.365051, 31.664932, 26.218060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706757, 31.470076, 26.290648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337864, -0.254986, 0.905997,
		-0.395080, -0.835267, -0.382413,
		0.854260, -0.487145, 0.181467,
		34.963036, 31.323933, 26.345087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242615, 31.062090, 26.584332>,  <34.365051, 31.664932, 26.218060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242615, 31.062090, 26.584332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.617966, 31.149479, 26.691456>,  <34.843174, 31.201912, 26.755730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.617966, 31.149479, 26.691456>,  <34.242615, 31.062090, 26.584332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617966, 31.149479, 26.691456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175586, -0.366072, 0.913871,
		0.297693, -0.904578, -0.305152,
		0.938375, 0.218473, 0.267808,
		34.899479, 31.215021, 26.771799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393208, 30.511530, 26.975681>,  <34.242615, 31.062090, 26.584332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393208, 30.511530, 26.975681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.701794, 30.751492, 27.060493>,  <34.886944, 30.895468, 27.111382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.701794, 30.751492, 27.060493>,  <34.393208, 30.511530, 26.975681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701794, 30.751492, 27.060493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003872, -0.337660, 0.941260,
		0.636261, -0.725328, -0.262815,
		0.771464, 0.599905, 0.212031,
		34.933231, 30.931463, 27.124104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845253, 30.072235, 27.366301>,  <34.393208, 30.511530, 26.975681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845253, 30.072235, 27.366301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.902424, 30.460899, 27.441610>,  <34.936726, 30.694098, 27.486795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.902424, 30.460899, 27.441610>,  <34.845253, 30.072235, 27.366301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902424, 30.460899, 27.441610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000348, -0.190277, 0.981730,
		0.989733, -0.140250, -0.027534,
		0.142927, 0.971661, 0.188275,
		34.945301, 30.752398, 27.498093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527687, 30.095592, 27.799229>,  <34.845253, 30.072235, 27.366301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527687, 30.095592, 27.799229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299301, 30.419212, 27.854998>,  <35.162270, 30.613384, 27.888460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299301, 30.419212, 27.854998>,  <35.527687, 30.095592, 27.799229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299301, 30.419212, 27.854998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034448, -0.146068, 0.988674,
		0.820252, 0.569301, 0.055529,
		-0.570965, 0.809049, 0.139424,
		35.128014, 30.661926, 27.896824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896046, 30.587133, 28.274605>,  <35.527687, 30.095592, 27.799229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896046, 30.587133, 28.274605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501209, 30.651003, 28.279537>,  <35.264305, 30.689325, 28.282495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501209, 30.651003, 28.279537>,  <35.896046, 30.587133, 28.274605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501209, 30.651003, 28.279537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005364, -0.043987, 0.999018,
		0.160060, 0.986189, 0.042563,
		-0.987093, 0.159675, 0.012330,
		35.205082, 30.698906, 28.283236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813675, 30.773546, 28.913910>,  <35.896046, 30.587133, 28.274605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813675, 30.773546, 28.913910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426048, 30.749290, 28.818209>,  <35.193474, 30.734737, 28.760788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426048, 30.749290, 28.818209>,  <35.813675, 30.773546, 28.913910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426048, 30.749290, 28.818209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242031, 0.043499, 0.969293,
		-0.048371, 0.997211, -0.056830,
		-0.969062, -0.060640, -0.239252,
		35.135330, 30.731098, 28.746433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483078, 31.293520, 29.288492>,  <35.813675, 30.773546, 28.913910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483078, 31.293520, 29.288492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189514, 31.040432, 29.189665>,  <35.013378, 30.888578, 29.130369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.189514, 31.040432, 29.189665>,  <35.483078, 31.293520, 29.288492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189514, 31.040432, 29.189665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428060, 0.148404, 0.891483,
		-0.527395, 0.760026, -0.379757,
		-0.733907, -0.632722, -0.247069,
		34.969341, 30.850615, 29.115543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907238, 31.699625, 29.354982>,  <35.483078, 31.293520, 29.288492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907238, 31.699625, 29.354982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815884, 31.313707, 29.407158>,  <34.761070, 31.082157, 29.438463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815884, 31.313707, 29.407158>,  <34.907238, 31.699625, 29.354982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815884, 31.313707, 29.407158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255205, 0.188624, 0.948310,
		-0.939526, 0.183292, -0.289299,
		-0.228386, -0.964793, 0.130440,
		34.747368, 31.024269, 29.446289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231590, 31.724377, 29.761280>,  <34.907238, 31.699625, 29.354982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231590, 31.724377, 29.761280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443962, 31.386412, 29.787319>,  <34.571384, 31.183634, 29.802942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443962, 31.386412, 29.787319>,  <34.231590, 31.724377, 29.761280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443962, 31.386412, 29.787319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062281, 0.037707, 0.997346,
		-0.845123, -0.533577, -0.032602,
		0.530932, -0.844911, 0.065099,
		34.603241, 31.132938, 29.806849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048355, 31.448656, 30.434244>,  <34.231590, 31.724377, 29.761280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048355, 31.448656, 30.434244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.371387, 31.221933, 30.369085>,  <34.565208, 31.085899, 30.329990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.371387, 31.221933, 30.369085>,  <34.048355, 31.448656, 30.434244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371387, 31.221933, 30.369085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206554, 0.013124, 0.978347,
		-0.552396, -0.823746, 0.127675,
		0.807585, -0.566807, -0.162898,
		34.613663, 31.051891, 30.320215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036880, 30.956654, 30.948290>,  <34.048355, 31.448656, 30.434244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036880, 30.956654, 30.948290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420044, 30.946169, 30.833937>,  <34.649940, 30.939878, 30.765324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420044, 30.946169, 30.833937>,  <34.036880, 30.956654, 30.948290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420044, 30.946169, 30.833937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278549, -0.156137, 0.947645,
		-0.069477, -0.987387, -0.142263,
		0.957906, -0.026212, -0.285884,
		34.707417, 30.938305, 30.748171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386017, 30.375353, 31.326035>,  <34.036880, 30.956654, 30.948290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386017, 30.375353, 31.326035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.676552, 30.621700, 31.203959>,  <34.850872, 30.769508, 31.130713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.676552, 30.621700, 31.203959>,  <34.386017, 30.375353, 31.326035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676552, 30.621700, 31.203959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440824, -0.076723, 0.894308,
		0.527360, -0.784105, -0.327217,
		0.726336, 0.615868, -0.305192,
		34.894451, 30.806461, 31.112400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058914, 30.065451, 31.592453>,  <34.386017, 30.375353, 31.326035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058914, 30.065451, 31.592453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143570, 30.441126, 31.484282>,  <35.194363, 30.666531, 31.419378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.143570, 30.441126, 31.484282>,  <35.058914, 30.065451, 31.592453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143570, 30.441126, 31.484282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565814, 0.107875, 0.817446,
		0.796909, -0.326014, -0.508577,
		0.211636, 0.939190, -0.270429,
		35.207062, 30.722883, 31.403152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636303, 30.154091, 31.967026>,  <35.058914, 30.065451, 31.592453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636303, 30.154091, 31.967026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547081, 30.529129, 31.860321>,  <35.493549, 30.754152, 31.796299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547081, 30.529129, 31.860321>,  <35.636303, 30.154091, 31.967026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547081, 30.529129, 31.860321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367338, 0.334326, 0.867922,
		0.902945, 0.095602, -0.418987,
		-0.223053, 0.937596, -0.266760,
		35.480164, 30.810408, 31.780293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268555, 30.476934, 32.078789>,  <35.636303, 30.154091, 31.967026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268555, 30.476934, 32.078789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952816, 30.721603, 32.099922>,  <35.763374, 30.868404, 32.112602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.952816, 30.721603, 32.099922>,  <36.268555, 30.476934, 32.078789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952816, 30.721603, 32.099922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278151, 0.279575, 0.918950,
		0.547325, 0.740065, -0.390819,
		-0.789346, 0.611671, 0.052831,
		35.716011, 30.905106, 32.115772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530273, 31.091713, 32.387905>,  <36.268555, 30.476934, 32.078789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530273, 31.091713, 32.387905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138424, 31.103722, 32.467342>,  <35.903316, 31.110928, 32.515007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138424, 31.103722, 32.467342>,  <36.530273, 31.091713, 32.387905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138424, 31.103722, 32.467342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199995, 0.237127, 0.950670,
		-0.018551, 0.971015, -0.238299,
		-0.979621, 0.030022, 0.198597,
		35.844536, 31.112728, 32.526920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315231, 31.701609, 32.591248>,  <36.530273, 31.091713, 32.387905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315231, 31.701609, 32.591248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025455, 31.476116, 32.749943>,  <35.851589, 31.340820, 32.845158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025455, 31.476116, 32.749943>,  <36.315231, 31.701609, 32.591248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025455, 31.476116, 32.749943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169742, 0.411928, 0.895267,
		-0.668115, 0.715907, -0.202728,
		-0.724437, -0.563730, 0.396735,
		35.808125, 31.306997, 32.868961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385715, 32.118679, 33.286854>,  <36.315231, 31.701609, 32.591248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385715, 32.118679, 33.286854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734272, 32.302158, 33.356441>,  <36.943405, 32.412247, 33.398193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.734272, 32.302158, 33.356441>,  <36.385715, 32.118679, 33.286854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734272, 32.302158, 33.356441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130564, 0.124994, -0.983529,
		-0.472890, 0.879756, 0.049029,
		0.871395, 0.458699, 0.173973,
		36.995689, 32.439770, 33.408634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377747, 32.745918, 32.862701>,  <36.385715, 32.118679, 33.286854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377747, 32.745918, 32.862701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765194, 32.672050, 32.929249>,  <36.997662, 32.627731, 32.969177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765194, 32.672050, 32.929249>,  <36.377747, 32.745918, 32.862701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765194, 32.672050, 32.929249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210638, 0.254482, -0.943859,
		0.131961, 0.949282, 0.285393,
		0.968616, -0.184667, 0.166373,
		37.055779, 32.616650, 32.979160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702976, 33.253513, 32.534084>,  <36.377747, 32.745918, 32.862701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702976, 33.253513, 32.534084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978504, 32.965282, 32.565811>,  <37.143822, 32.792343, 32.584846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978504, 32.965282, 32.565811>,  <36.702976, 33.253513, 32.534084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978504, 32.965282, 32.565811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261358, 0.144798, -0.954319,
		0.676175, 0.678088, 0.288069,
		0.688824, -0.720576, 0.079315,
		37.185150, 32.749111, 32.589607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249928, 33.459846, 32.045162>,  <36.702976, 33.253513, 32.534084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249928, 33.459846, 32.045162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327797, 33.072750, 32.109127>,  <37.374519, 32.840492, 32.147507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.327797, 33.072750, 32.109127>,  <37.249928, 33.459846, 32.045162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327797, 33.072750, 32.109127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091450, -0.144409, -0.985283,
		0.976596, 0.206432, 0.060388,
		0.194674, -0.967746, 0.159908,
		37.386200, 32.782425, 32.157101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021175, 33.302673, 31.776478>,  <37.249928, 33.459846, 32.045162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021175, 33.302673, 31.776478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802177, 32.969269, 31.806185>,  <37.670780, 32.769226, 31.824009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.802177, 32.969269, 31.806185>,  <38.021175, 33.302673, 31.776478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802177, 32.969269, 31.806185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108892, -0.158955, -0.981262,
		0.829697, -0.529145, 0.177789,
		-0.547491, -0.833510, 0.074265,
		37.637932, 32.719215, 31.828465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377533, 32.813889, 31.393665>,  <38.021175, 33.302673, 31.776478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377533, 32.813889, 31.393665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003021, 32.673870, 31.405329>,  <37.778316, 32.589859, 31.412327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.003021, 32.673870, 31.405329>,  <38.377533, 32.813889, 31.393665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003021, 32.673870, 31.405329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087081, -0.311725, -0.946174,
		0.340297, -0.883342, 0.322343,
		-0.936277, -0.350050, 0.029157,
		37.722137, 32.568855, 31.414076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354176, 32.134296, 31.154556>,  <38.377533, 32.813889, 31.393665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354176, 32.134296, 31.154556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974243, 32.242798, 31.092285>,  <37.746284, 32.307899, 31.054922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974243, 32.242798, 31.092285>,  <38.354176, 32.134296, 31.154556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974243, 32.242798, 31.092285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102331, -0.200818, -0.974269,
		-0.295542, -0.941324, 0.162985,
		-0.949834, 0.271259, -0.155676,
		37.689293, 32.324173, 31.045582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996696, 31.570992, 30.853498>,  <38.354176, 32.134296, 31.154556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996696, 31.570992, 30.853498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732925, 31.856840, 30.760145>,  <37.574661, 32.028347, 30.704132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732925, 31.856840, 30.760145>,  <37.996696, 31.570992, 30.853498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732925, 31.856840, 30.760145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018604, -0.294841, -0.955365,
		-0.751534, -0.634340, 0.181133,
		-0.659432, 0.714619, -0.233385,
		37.535095, 32.071224, 30.690130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618515, 31.224060, 30.373520>,  <37.996696, 31.570992, 30.853498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618515, 31.224060, 30.373520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549175, 31.612499, 30.307888>,  <37.507572, 31.845562, 30.268509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.549175, 31.612499, 30.307888>,  <37.618515, 31.224060, 30.373520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549175, 31.612499, 30.307888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119422, -0.186098, -0.975247,
		-0.977593, -0.149463, 0.148230,
		-0.173348, 0.971096, -0.164080,
		37.497169, 31.903828, 30.258665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029247, 31.283552, 29.855822>,  <37.618515, 31.224060, 30.373520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029247, 31.283552, 29.855822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248016, 31.617605, 29.832386>,  <37.379276, 31.818037, 29.818325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248016, 31.617605, 29.832386>,  <37.029247, 31.283552, 29.855822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248016, 31.617605, 29.832386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052559, -0.104096, -0.993178,
		-0.835533, 0.540111, -0.100826,
		0.546921, 0.835132, -0.058588,
		37.412094, 31.868145, 29.814810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777111, 31.649727, 29.308672>,  <37.029247, 31.283552, 29.855822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777111, 31.649727, 29.308672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144161, 31.803070, 29.350637>,  <37.364391, 31.895077, 29.375816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144161, 31.803070, 29.350637>,  <36.777111, 31.649727, 29.308672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144161, 31.803070, 29.350637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189403, -0.189708, -0.963399,
		-0.349425, 0.903906, -0.246690,
		0.917621, 0.383360, 0.104913,
		37.419449, 31.918077, 29.382111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859901, 32.065372, 28.765450>,  <36.777111, 31.649727, 29.308672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859901, 32.065372, 28.765450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.241730, 32.008068, 28.869968>,  <37.470825, 31.973686, 28.932680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.241730, 32.008068, 28.869968>,  <36.859901, 32.065372, 28.765450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241730, 32.008068, 28.869968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252750, -0.075246, -0.964601,
		0.157847, 0.986821, -0.035619,
		0.954569, -0.143257, 0.261297,
		37.528099, 31.965092, 28.948357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348927, 32.474304, 28.320976>,  <36.859901, 32.065372, 28.765450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348927, 32.474304, 28.320976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574596, 32.175930, 28.462559>,  <37.709999, 31.996906, 28.547508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.574596, 32.175930, 28.462559>,  <37.348927, 32.474304, 28.320976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574596, 32.175930, 28.462559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275471, -0.234075, -0.932376,
		0.778343, 0.623531, 0.073423,
		0.564179, -0.745934, 0.353955,
		37.743851, 31.952150, 28.568745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031509, 32.631142, 28.006470>,  <37.348927, 32.474304, 28.320976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031509, 32.631142, 28.006470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992077, 32.247875, 28.113949>,  <37.968418, 32.017914, 28.178436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.992077, 32.247875, 28.113949>,  <38.031509, 32.631142, 28.006470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992077, 32.247875, 28.113949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357176, -0.286089, -0.889145,
		0.928820, 0.008319, 0.370438,
		-0.098581, -0.958167, 0.268696,
		37.962502, 31.960424, 28.194557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580902, 32.352806, 27.808813>,  <38.031509, 32.631142, 28.006470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580902, 32.352806, 27.808813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318489, 32.050919, 27.807146>,  <38.161041, 31.869785, 27.806147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.318489, 32.050919, 27.807146>,  <38.580902, 32.352806, 27.808813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318489, 32.050919, 27.807146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268367, -0.228107, -0.935920,
		0.705409, -0.615111, 0.352188,
		-0.656031, -0.754722, -0.004167,
		38.121681, 31.824501, 27.805897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947319, 31.850430, 27.540380>,  <38.580902, 32.352806, 27.808813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947319, 31.850430, 27.540380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564381, 31.740410, 27.504974>,  <38.334618, 31.674398, 27.483730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.564381, 31.740410, 27.504974>,  <38.947319, 31.850430, 27.540380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564381, 31.740410, 27.504974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199805, -0.408893, -0.890440,
		0.208723, -0.870146, 0.446409,
		-0.957346, -0.275050, -0.088514,
		38.277176, 31.657894, 27.478420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961998, 31.147533, 27.296095>,  <38.947319, 31.850430, 27.540380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961998, 31.147533, 27.296095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612877, 31.322229, 27.208935>,  <38.403404, 31.427048, 27.156639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612877, 31.322229, 27.208935>,  <38.961998, 31.147533, 27.296095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612877, 31.322229, 27.208935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123471, -0.234352, -0.964279,
		-0.472206, -0.868525, 0.150617,
		-0.872798, 0.436742, -0.217900,
		38.351036, 31.453251, 27.143564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776257, 30.696140, 26.722240>,  <38.961998, 31.147533, 27.296095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776257, 30.696140, 26.722240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529549, 31.009501, 26.691574>,  <38.381523, 31.197515, 26.673174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529549, 31.009501, 26.691574>,  <38.776257, 30.696140, 26.722240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529549, 31.009501, 26.691574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105698, -0.178943, -0.978165,
		-0.780013, -0.595202, 0.193171,
		-0.616772, 0.783399, -0.076666,
		38.344517, 31.244520, 26.668573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.005207, 30.440166, 26.357611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027500, 30.838152, 26.324284>,  <38.040874, 31.076942, 26.304287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027500, 30.838152, 26.324284>,  <38.005207, 30.440166, 26.357611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027500, 30.838152, 26.324284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386149, -0.055478, -0.920766,
		-0.920751, 0.083487, 0.381113,
		0.055728, 0.994963, -0.083319,
		38.044220, 31.136641, 26.299288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440643, 30.584606, 25.935068>,  <38.005207, 30.440166, 26.357611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440643, 30.584606, 25.935068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663326, 30.916756, 25.925653>,  <37.796936, 31.116045, 25.920004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663326, 30.916756, 25.925653>,  <37.440643, 30.584606, 25.935068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663326, 30.916756, 25.925653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350641, 0.209205, -0.912844,
		-0.753078, 0.516442, 0.407629,
		0.556709, 0.830374, -0.023538,
		37.830338, 31.165869, 25.918592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031124, 30.996332, 25.521063>,  <37.440643, 30.584606, 25.935068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031124, 30.996332, 25.521063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396351, 31.159405, 25.525068>,  <37.615486, 31.257248, 25.527472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.396351, 31.159405, 25.525068>,  <37.031124, 30.996332, 25.521063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396351, 31.159405, 25.525068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106065, 0.261122, -0.959461,
		-0.393770, 0.874992, 0.281664,
		0.913069, 0.407682, 0.010016,
		37.670273, 31.281710, 25.528072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029991, 31.774935, 25.420145>,  <37.031124, 30.996332, 25.521063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029991, 31.774935, 25.420145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394329, 31.651527, 25.310465>,  <37.612930, 31.577482, 25.244658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.394329, 31.651527, 25.310465>,  <37.029991, 31.774935, 25.420145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394329, 31.651527, 25.310465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173385, 0.316876, -0.932484,
		0.374576, 0.896887, 0.235131,
		0.910840, -0.308518, -0.274201,
		37.667580, 31.558971, 25.228205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151901, 32.222797, 24.867876>,  <37.029991, 31.774935, 25.420145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151901, 32.222797, 24.867876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.440750, 31.950041, 24.821285>,  <37.614059, 31.786386, 24.793331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.440750, 31.950041, 24.821285>,  <37.151901, 32.222797, 24.867876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440750, 31.950041, 24.821285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036826, 0.130242, -0.990798,
		0.690787, 0.719764, 0.068939,
		0.722119, -0.681892, -0.116476,
		37.657387, 31.745474, 24.786343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693321, 32.551079, 24.441916>,  <37.151901, 32.222797, 24.867876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693321, 32.551079, 24.441916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728626, 32.152760, 24.432104>,  <37.749809, 31.913769, 24.426218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728626, 32.152760, 24.432104>,  <37.693321, 32.551079, 24.441916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728626, 32.152760, 24.432104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300161, 0.050066, -0.952574,
		0.949796, 0.076714, 0.303318,
		0.088262, -0.995795, -0.024526,
		37.755104, 31.854021, 24.424746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340408, 32.404224, 24.128132>,  <37.693321, 32.551079, 24.441916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340408, 32.404224, 24.128132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113533, 32.078255, 24.080481>,  <37.977406, 31.882673, 24.051889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.113533, 32.078255, 24.080481>,  <38.340408, 32.404224, 24.128132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113533, 32.078255, 24.080481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343390, -0.102526, -0.933580,
		0.748583, -0.570427, 0.337988,
		-0.567192, -0.814924, -0.119129,
		37.943375, 31.833776, 24.044743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784435, 32.045685, 23.824390>,  <38.340408, 32.404224, 24.128132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784435, 32.045685, 23.824390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.416733, 31.907732, 23.748480>,  <38.196110, 31.824959, 23.702934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.416733, 31.907732, 23.748480>,  <38.784435, 32.045685, 23.824390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416733, 31.907732, 23.748480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203574, -0.003877, -0.979052,
		0.336925, -0.938637, 0.073773,
		-0.919260, -0.344885, -0.189776,
		38.140953, 31.804266, 23.691547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821247, 31.474152, 23.403517>,  <38.784435, 32.045685, 23.824390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821247, 31.474152, 23.403517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448814, 31.597168, 23.325020>,  <38.225357, 31.670977, 23.277922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448814, 31.597168, 23.325020>,  <38.821247, 31.474152, 23.403517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448814, 31.597168, 23.325020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206929, 0.002189, -0.978354,
		-0.300454, -0.951533, -0.065677,
		-0.931079, 0.307541, -0.196242,
		38.169491, 31.689430, 23.266148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668339, 31.216631, 22.785610>,  <38.821247, 31.474152, 23.403517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668339, 31.216631, 22.785610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332233, 31.433277, 22.795538>,  <38.130569, 31.563265, 22.801495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332233, 31.433277, 22.795538>,  <38.668339, 31.216631, 22.785610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332233, 31.433277, 22.795538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048717, -0.029829, -0.998367,
		-0.539993, -0.840095, 0.051450,
		-0.840258, 0.541618, 0.024820,
		38.080154, 31.595762, 22.802984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106606, 30.883589, 22.415121>,  <38.668339, 31.216631, 22.785610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106606, 30.883589, 22.415121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064014, 31.281103, 22.402119>,  <38.038460, 31.519611, 22.394318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.064014, 31.281103, 22.402119>,  <38.106606, 30.883589, 22.415121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064014, 31.281103, 22.402119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050389, -0.027256, -0.998358,
		-0.993038, -0.107937, -0.047174,
		-0.106474, 0.993784, -0.032505,
		38.032074, 31.579239, 22.392366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685287, 30.940710, 21.887800>,  <38.106606, 30.883589, 22.415121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685287, 30.940710, 21.887800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.813919, 31.315405, 21.943102>,  <37.891098, 31.540222, 21.976284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.813919, 31.315405, 21.943102>,  <37.685287, 30.940710, 21.887800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813919, 31.315405, 21.943102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090448, 0.114955, -0.989244,
		-0.942554, 0.330621, -0.047759,
		0.321574, 0.936736, 0.138255,
		37.910393, 31.596426, 21.984579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258186, 31.266899, 21.429750>,  <37.685287, 30.940710, 21.887800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258186, 31.266899, 21.429750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578365, 31.501703, 21.478245>,  <37.770473, 31.642586, 21.507341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578365, 31.501703, 21.478245>,  <37.258186, 31.266899, 21.429750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578365, 31.501703, 21.478245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037915, 0.152267, -0.987612,
		-0.598200, 0.795129, 0.099625,
		0.800449, 0.587012, 0.121234,
		37.818501, 31.677807, 21.514614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126461, 31.832411, 20.984816>,  <37.258186, 31.266899, 21.429750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126461, 31.832411, 20.984816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.519138, 31.868250, 21.052053>,  <37.754745, 31.889753, 21.092396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.519138, 31.868250, 21.052053>,  <37.126461, 31.832411, 20.984816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519138, 31.868250, 21.052053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150220, 0.178450, -0.972414,
		-0.117123, 0.979861, 0.161723,
		0.981691, 0.089598, 0.168095,
		37.813644, 31.895130, 21.102482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324730, 32.409698, 20.785091>,  <37.126461, 31.832411, 20.984816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324730, 32.409698, 20.785091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686649, 32.239365, 20.785519>,  <37.903801, 32.137165, 20.785774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686649, 32.239365, 20.785519>,  <37.324730, 32.409698, 20.785091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686649, 32.239365, 20.785519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182211, 0.384886, -0.904800,
		0.384886, 0.818857, 0.425836,
		0.904800, -0.425836, 0.001067,
		37.958088, 32.111614, 20.785839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729820, 32.907070, 20.509235>,  <37.324730, 32.409698, 20.785091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729820, 32.907070, 20.509235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944393, 32.572628, 20.463337>,  <38.073135, 32.371964, 20.435799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944393, 32.572628, 20.463337>,  <37.729820, 32.907070, 20.509235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944393, 32.572628, 20.463337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356831, 0.347913, -0.866965,
		0.764798, 0.424121, 0.484980,
		0.536429, -0.836109, -0.114744,
		38.105320, 32.321796, 20.428913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331882, 33.163784, 20.372458>,  <37.729820, 32.907070, 20.509235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331882, 33.163784, 20.372458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.328686, 32.788101, 20.235151>,  <38.326767, 32.562691, 20.152767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.328686, 32.788101, 20.235151>,  <38.331882, 33.163784, 20.372458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328686, 32.788101, 20.235151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111374, 0.340303, -0.933697,
		0.993747, -0.045694, 0.101883,
		-0.007994, -0.939205, -0.343264,
		38.326286, 32.506340, 20.132172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939995, 33.125965, 19.895794>,  <38.331882, 33.163784, 20.372458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939995, 33.125965, 19.895794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708431, 32.818619, 19.786633>,  <38.569492, 32.634212, 19.721136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708431, 32.818619, 19.786633>,  <38.939995, 33.125965, 19.895794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708431, 32.818619, 19.786633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110547, 0.257641, -0.959896,
		0.807861, -0.585865, -0.064211,
		-0.578913, -0.768365, -0.272903,
		38.534756, 32.588108, 19.704762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321171, 32.830494, 19.323771>,  <38.939995, 33.125965, 19.895794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321171, 32.830494, 19.323771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946373, 32.703979, 19.264441>,  <38.721493, 32.628071, 19.228844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946373, 32.703979, 19.264441>,  <39.321171, 32.830494, 19.323771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946373, 32.703979, 19.264441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130439, 0.077111, -0.988453,
		0.324068, -0.945526, -0.030997,
		-0.936998, -0.316282, -0.148323,
		38.665272, 32.609097, 19.219944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231258, 32.299767, 18.747248>,  <39.321171, 32.830494, 19.323771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231258, 32.299767, 18.747248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854630, 32.428978, 18.785389>,  <38.628651, 32.506504, 18.808273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854630, 32.428978, 18.785389>,  <39.231258, 32.299767, 18.747248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854630, 32.428978, 18.785389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076905, 0.069435, -0.994618,
		-0.327910, -0.943839, -0.040535,
		-0.941573, 0.323027, 0.095355,
		38.572159, 32.525887, 18.813995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982670, 31.998949, 18.290606>,  <39.231258, 32.299767, 18.747248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982670, 31.998949, 18.290606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732292, 32.304146, 18.355152>,  <38.582066, 32.487263, 18.393879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.732292, 32.304146, 18.355152>,  <38.982670, 31.998949, 18.290606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732292, 32.304146, 18.355152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031965, 0.231839, -0.972229,
		-0.779215, -0.603400, -0.169507,
		-0.625941, 0.762993, 0.161365,
		38.544510, 32.533043, 18.403561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409893, 31.829708, 17.810106>,  <38.982670, 31.998949, 18.290606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409893, 31.829708, 17.810106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.392967, 32.216778, 17.909559>,  <38.382812, 32.449020, 17.969231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.392967, 32.216778, 17.909559>,  <38.409893, 31.829708, 17.810106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392967, 32.216778, 17.909559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108823, 0.242912, -0.963925,
		-0.993160, -0.067846, 0.095026,
		-0.042315, 0.967673, 0.248634,
		38.380272, 32.507080, 17.984150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803055, 32.211094, 17.410673>,  <38.409893, 31.829708, 17.810106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803055, 32.211094, 17.410673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063820, 32.492363, 17.524200>,  <38.220280, 32.661125, 17.592316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.063820, 32.492363, 17.524200>,  <37.803055, 32.211094, 17.410673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063820, 32.492363, 17.524200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157144, 0.240879, -0.957749,
		-0.741833, 0.668969, 0.046532,
		0.651913, 0.703177, 0.283816,
		38.259392, 32.703316, 17.609344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193207, 32.553127, 17.476053>,  <37.803055, 32.211094, 17.410673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193207, 32.553127, 17.476053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.949192, 32.758957, 17.235033>,  <36.802784, 32.882454, 17.090422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.949192, 32.758957, 17.235033>,  <37.193207, 32.553127, 17.476053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949192, 32.758957, 17.235033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653496, 0.103313, 0.749846,
		0.448105, 0.851197, 0.273251,
		-0.610036, 0.514578, -0.602549,
		36.766182, 32.913330, 17.054268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006100, 33.083485, 17.938196>,  <37.193207, 32.553127, 17.476053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006100, 33.083485, 17.938196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727673, 33.023438, 17.657354>,  <36.560616, 32.987408, 17.488850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727673, 33.023438, 17.657354>,  <37.006100, 33.083485, 17.938196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727673, 33.023438, 17.657354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700840, -0.070295, 0.709846,
		-0.155915, 0.986166, -0.056278,
		-0.696070, -0.150117, -0.702105,
		36.518852, 32.978401, 17.446722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453270, 33.610798, 18.105207>,  <37.006100, 33.083485, 17.938196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453270, 33.610798, 18.105207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281452, 33.330864, 17.876919>,  <36.178364, 33.162903, 17.739944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.281452, 33.330864, 17.876919>,  <36.453270, 33.610798, 18.105207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281452, 33.330864, 17.876919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664105, -0.183456, 0.724782,
		-0.611930, 0.690345, -0.385961,
		-0.429543, -0.699834, -0.570724,
		36.152588, 33.120914, 17.705702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693363, 33.726536, 18.127134>,  <36.453270, 33.610798, 18.105207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693363, 33.726536, 18.127134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758209, 33.347225, 18.017962>,  <35.797115, 33.119640, 17.952457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758209, 33.347225, 18.017962>,  <35.693363, 33.726536, 18.127134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758209, 33.347225, 18.017962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481923, -0.317446, 0.816688,
		-0.861087, -0.000863, -0.508458,
		0.162112, -0.948276, -0.272932,
		35.806843, 33.062744, 17.936081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038898, 33.501877, 18.072903>,  <35.693363, 33.726536, 18.127134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038898, 33.501877, 18.072903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255199, 33.173908, 18.148064>,  <35.384979, 32.977127, 18.193161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.255199, 33.173908, 18.148064>,  <35.038898, 33.501877, 18.072903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255199, 33.173908, 18.148064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476821, -0.114754, 0.871477,
		-0.692984, -0.560850, -0.453012,
		0.540753, -0.819926, 0.187902,
		35.417427, 32.927929, 18.204433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616188, 33.020477, 18.499054>,  <35.038898, 33.501877, 18.072903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616188, 33.020477, 18.499054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974731, 32.849255, 18.545219>,  <35.189857, 32.746521, 18.572918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974731, 32.849255, 18.545219>,  <34.616188, 33.020477, 18.499054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974731, 32.849255, 18.545219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308895, -0.416263, 0.855166,
		-0.318013, -0.802182, -0.505343,
		0.896354, -0.428052, 0.115413,
		35.243637, 32.720840, 18.579844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476528, 32.350368, 18.759163>,  <34.616188, 33.020477, 18.499054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476528, 32.350368, 18.759163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851231, 32.458405, 18.848192>,  <35.076054, 32.523228, 18.901609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.851231, 32.458405, 18.848192>,  <34.476528, 32.350368, 18.759163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851231, 32.458405, 18.848192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123049, -0.341184, 0.931908,
		0.327638, -0.900358, -0.286372,
		0.936756, 0.270091, 0.222573,
		35.132259, 32.539433, 18.914965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735413, 31.828848, 19.161999>,  <34.476528, 32.350368, 18.759163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735413, 31.828848, 19.161999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006355, 32.114681, 19.231916>,  <35.168922, 32.286182, 19.273867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.006355, 32.114681, 19.231916>,  <34.735413, 31.828848, 19.161999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006355, 32.114681, 19.231916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211386, -0.416648, 0.884150,
		0.704627, -0.561939, -0.433273,
		0.677360, 0.714583, 0.174795,
		35.209564, 32.329056, 19.284355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424000, 31.489777, 19.405010>,  <34.735413, 31.828848, 19.161999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424000, 31.489777, 19.405010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404827, 31.864855, 19.542664>,  <35.393326, 32.089901, 19.625256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.404827, 31.864855, 19.542664>,  <35.424000, 31.489777, 19.405010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404827, 31.864855, 19.542664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348977, -0.307097, 0.885385,
		0.935905, 0.162530, -0.312516,
		-0.047929, 0.937697, 0.344132,
		35.390450, 32.146164, 19.645903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972923, 31.512922, 19.715498>,  <35.424000, 31.489777, 19.405010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972923, 31.512922, 19.715498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750851, 31.808369, 19.868448>,  <35.617607, 31.985638, 19.960218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750851, 31.808369, 19.868448>,  <35.972923, 31.512922, 19.715498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750851, 31.808369, 19.868448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250119, -0.290192, 0.923704,
		0.793227, 0.608468, -0.023632,
		-0.555186, 0.738617, 0.382378,
		35.584293, 32.029953, 19.983162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298553, 31.693502, 20.294163>,  <35.972923, 31.512922, 19.715498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298553, 31.693502, 20.294163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.959126, 31.885000, 20.384254>,  <35.755470, 31.999899, 20.438309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.959126, 31.885000, 20.384254>,  <36.298553, 31.693502, 20.294163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959126, 31.885000, 20.384254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074993, -0.312566, 0.946931,
		0.523739, 0.820429, 0.229332,
		-0.848571, 0.478747, 0.225229,
		35.704556, 32.028625, 20.451824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407745, 32.242893, 20.841301>,  <36.298553, 31.693502, 20.294163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407745, 32.242893, 20.841301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.012314, 32.182827, 20.846415>,  <35.775055, 32.146790, 20.849483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.012314, 32.182827, 20.846415>,  <36.407745, 32.242893, 20.841301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012314, 32.182827, 20.846415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016839, -0.025753, 0.999527,
		-0.149763, 0.988326, 0.027988,
		-0.988579, -0.150163, 0.012786,
		35.715740, 32.137779, 20.850250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143482, 32.673393, 21.413790>,  <36.407745, 32.242893, 20.841301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143482, 32.673393, 21.413790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845432, 32.411217, 21.364485>,  <35.666603, 32.253910, 21.334902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845432, 32.411217, 21.364485>,  <36.143482, 32.673393, 21.413790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845432, 32.411217, 21.364485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064163, -0.113511, 0.991463,
		-0.663836, 0.746668, 0.042525,
		-0.745121, -0.655440, -0.123261,
		35.621895, 32.214584, 21.327507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578671, 32.808517, 21.907991>,  <36.143482, 32.673393, 21.413790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578671, 32.808517, 21.907991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513519, 32.422771, 21.824589>,  <35.474430, 32.191322, 21.774548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513519, 32.422771, 21.824589>,  <35.578671, 32.808517, 21.907991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513519, 32.422771, 21.824589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054599, -0.219813, 0.974013,
		-0.985135, 0.147258, 0.088456,
		-0.162875, -0.964364, -0.208505,
		35.464657, 32.133461, 21.762037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009960, 32.556015, 22.414268>,  <35.578671, 32.808517, 21.907991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009960, 32.556015, 22.414268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209232, 32.238049, 22.275743>,  <35.328796, 32.047268, 22.192629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.209232, 32.238049, 22.275743>,  <35.009960, 32.556015, 22.414268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209232, 32.238049, 22.275743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077836, -0.356790, 0.930936,
		-0.863574, -0.490728, -0.115872,
		0.498179, -0.794913, -0.346311,
		35.358685, 31.999575, 22.171850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596626, 32.042233, 22.604879>,  <35.009960, 32.556015, 22.414268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596626, 32.042233, 22.604879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937599, 31.839386, 22.553976>,  <35.142181, 31.717680, 22.523434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937599, 31.839386, 22.553976>,  <34.596626, 32.042233, 22.604879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937599, 31.839386, 22.553976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050501, -0.322124, 0.945350,
		-0.520393, -0.799420, -0.300198,
		0.852432, -0.507113, -0.127259,
		35.193329, 31.687252, 22.515799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490082, 31.296392, 22.786701>,  <34.596626, 32.042233, 22.604879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490082, 31.296392, 22.786701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.875576, 31.395603, 22.826073>,  <35.106873, 31.455130, 22.849695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.875576, 31.395603, 22.826073>,  <34.490082, 31.296392, 22.786701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875576, 31.395603, 22.826073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025969, -0.279940, 0.959666,
		0.265577, -0.927424, -0.263348,
		0.963740, 0.248027, 0.098430,
		35.164700, 31.470011, 22.855602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821327, 30.707354, 23.000004>,  <34.490082, 31.296392, 22.786701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821327, 30.707354, 23.000004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067238, 31.003979, 23.107433>,  <35.214783, 31.181953, 23.171892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067238, 31.003979, 23.107433>,  <34.821327, 30.707354, 23.000004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067238, 31.003979, 23.107433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042436, -0.371136, 0.927608,
		0.787559, -0.558874, -0.259634,
		0.614776, 0.741565, 0.268575,
		35.251671, 31.226448, 23.188005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199455, 30.352444, 23.559593>,  <34.821327, 30.707354, 23.000004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199455, 30.352444, 23.559593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338997, 30.724730, 23.603535>,  <35.422722, 30.948101, 23.629900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338997, 30.724730, 23.603535>,  <35.199455, 30.352444, 23.559593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338997, 30.724730, 23.603535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018751, -0.124129, 0.992089,
		0.936988, -0.344038, -0.060755,
		0.348858, 0.930715, 0.109856,
		35.443653, 31.003944, 23.636492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777073, 30.256666, 23.980433>,  <35.199455, 30.352444, 23.559593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777073, 30.256666, 23.980433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699703, 30.646931, 24.021749>,  <35.653282, 30.881090, 24.046539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699703, 30.646931, 24.021749>,  <35.777073, 30.256666, 23.980433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699703, 30.646931, 24.021749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006215, -0.104060, 0.994552,
		0.981096, 0.193010, 0.014064,
		-0.193422, 0.975663, 0.103292,
		35.641678, 30.939631, 24.052736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330868, 30.609972, 24.348570>,  <35.777073, 30.256666, 23.980433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330868, 30.609972, 24.348570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992149, 30.819185, 24.387295>,  <35.788918, 30.944714, 24.410530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.992149, 30.819185, 24.387295>,  <36.330868, 30.609972, 24.348570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992149, 30.819185, 24.387295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033985, -0.128434, 0.991135,
		0.530831, 0.842580, 0.090982,
		-0.846796, 0.523034, 0.096812,
		35.738110, 30.976095, 24.416338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.788624, 31.891493, 29.397314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422348, 31.953688, 29.249081>,  <38.202583, 31.991005, 29.160141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.422348, 31.953688, 29.249081>,  <38.788624, 31.891493, 29.397314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422348, 31.953688, 29.249081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339007, 0.196364, 0.920063,
		0.215827, 0.968124, -0.127098,
		-0.915693, 0.155487, -0.370581,
		38.147640, 32.000336, 29.137907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562473, 32.438389, 29.723181>,  <38.788624, 31.891493, 29.397314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562473, 32.438389, 29.723181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.211479, 32.290577, 29.600889>,  <38.000881, 32.201889, 29.527515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.211479, 32.290577, 29.600889>,  <38.562473, 32.438389, 29.723181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211479, 32.290577, 29.600889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447656, 0.402296, 0.798600,
		-0.172110, 0.837621, -0.518429,
		-0.877486, -0.369525, -0.305727,
		37.948235, 32.179718, 29.509171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998100, 33.025982, 29.665592>,  <38.562473, 32.438389, 29.723181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998100, 33.025982, 29.665592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.809711, 32.676781, 29.716276>,  <37.696678, 32.467262, 29.746687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.809711, 32.676781, 29.716276>,  <37.998100, 33.025982, 29.665592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809711, 32.676781, 29.716276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253998, 0.271757, 0.928242,
		-0.844790, 0.404992, -0.349730,
		-0.470973, -0.873000, 0.126711,
		37.668419, 32.414879, 29.754290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348263, 33.168903, 30.041784>,  <37.998100, 33.025982, 29.665592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348263, 33.168903, 30.041784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409382, 32.778522, 30.103964>,  <37.446053, 32.544292, 30.141272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.409382, 32.778522, 30.103964>,  <37.348263, 33.168903, 30.041784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409382, 32.778522, 30.103964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362902, 0.090894, 0.927383,
		-0.919213, -0.198119, -0.340287,
		0.152802, -0.975954, 0.155449,
		37.455223, 32.485737, 30.150599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740936, 32.997143, 30.363356>,  <37.348263, 33.168903, 30.041784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740936, 32.997143, 30.363356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.001270, 32.708523, 30.457832>,  <37.157471, 32.535351, 30.514519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.001270, 32.708523, 30.457832>,  <36.740936, 32.997143, 30.363356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001270, 32.708523, 30.457832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309201, 0.032226, 0.950450,
		-0.693405, -0.691616, -0.202129,
		0.650833, -0.721546, 0.236194,
		37.196522, 32.492058, 30.528690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444130, 32.605209, 30.884634>,  <36.740936, 32.997143, 30.363356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444130, 32.605209, 30.884634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826359, 32.502411, 30.942377>,  <37.055695, 32.440731, 30.977024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826359, 32.502411, 30.942377>,  <36.444130, 32.605209, 30.884634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826359, 32.502411, 30.942377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126667, 0.084205, 0.988365,
		-0.266167, -0.962736, 0.047910,
		0.955569, -0.257001, 0.144359,
		37.113029, 32.425312, 30.985685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454563, 32.066994, 31.346907>,  <36.444130, 32.605209, 30.884634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454563, 32.066994, 31.346907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.816704, 32.235188, 31.370684>,  <37.033989, 32.336105, 31.384949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.816704, 32.235188, 31.370684>,  <36.454563, 32.066994, 31.346907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816704, 32.235188, 31.370684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062803, -0.005859, 0.998009,
		0.420001, -0.907278, 0.021103,
		0.905348, 0.420490, 0.059440,
		37.088306, 32.361336, 31.388515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793297, 31.696016, 31.907520>,  <36.454563, 32.066994, 31.346907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793297, 31.696016, 31.907520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.033958, 32.012051, 31.860561>,  <37.178356, 32.201672, 31.832386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.033958, 32.012051, 31.860561>,  <36.793297, 31.696016, 31.907520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033958, 32.012051, 31.860561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175658, 0.012501, 0.984372,
		0.779204, -0.612872, -0.131263,
		0.601653, 0.790084, -0.117397,
		37.214455, 32.249077, 31.825342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518276, 31.496319, 32.193230>,  <36.793297, 31.696016, 31.907520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518276, 31.496319, 32.193230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.473042, 31.892256, 32.227699>,  <37.445900, 32.129818, 32.248383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.473042, 31.892256, 32.227699>,  <37.518276, 31.496319, 32.193230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473042, 31.892256, 32.227699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026619, -0.083683, 0.996137,
		0.993229, 0.114941, -0.016886,
		-0.113084, 0.989841, 0.086176,
		37.439117, 32.189209, 32.253551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057758, 31.772732, 32.748161>,  <37.518276, 31.496319, 32.193230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057758, 31.772732, 32.748161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.799007, 32.074364, 32.702717>,  <37.643757, 32.255344, 32.675449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.799007, 32.074364, 32.702717>,  <38.057758, 31.772732, 32.748161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799007, 32.074364, 32.702717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022513, 0.130028, 0.991255,
		0.762258, 0.643782, -0.067136,
		-0.646882, 0.754080, -0.113608,
		37.604942, 32.300587, 32.668633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355072, 32.283028, 33.134521>,  <38.057758, 31.772732, 32.748161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355072, 32.283028, 33.134521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967163, 32.376873, 33.107674>,  <37.734417, 32.433182, 33.091564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.967163, 32.376873, 33.107674>,  <38.355072, 32.283028, 33.134521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967163, 32.376873, 33.107674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037803, 0.127276, 0.991147,
		0.241078, 0.963721, -0.114559,
		-0.969769, 0.234613, -0.067115,
		37.676231, 32.447258, 33.087540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224579, 32.918793, 33.610538>,  <38.355072, 32.283028, 33.134521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224579, 32.918793, 33.610538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.876240, 32.731213, 33.551613>,  <37.667236, 32.618664, 33.516258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.876240, 32.731213, 33.551613>,  <38.224579, 32.918793, 33.610538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876240, 32.731213, 33.551613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201624, 0.067461, 0.977137,
		-0.448292, 0.880643, -0.153300,
		-0.870851, -0.468952, -0.147317,
		37.614983, 32.590527, 33.507420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394928, 33.385956, 34.233402>,  <38.224579, 32.918793, 33.610538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394928, 33.385956, 34.233402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.179317, 33.625053, 34.470776>,  <38.049950, 33.768513, 34.613197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.179317, 33.625053, 34.470776>,  <38.394928, 33.385956, 34.233402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179317, 33.625053, 34.470776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842204, 0.372472, 0.389816,
		0.011973, 0.709909, -0.704191,
		-0.539025, 0.597740, 0.593429,
		38.017609, 33.804375, 34.648804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778156, 33.886997, 34.318066>,  <38.394928, 33.385956, 34.233402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778156, 33.886997, 34.318066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514938, 33.905987, 34.618660>,  <38.357010, 33.917381, 34.799015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514938, 33.905987, 34.618660>,  <38.778156, 33.886997, 34.318066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514938, 33.905987, 34.618660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743863, 0.195830, 0.638998,
		-0.116830, 0.979488, -0.164176,
		-0.658041, 0.047470, 0.751484,
		38.317528, 33.920227, 34.844105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314930, 34.275097, 34.427372>,  <38.778156, 33.886997, 34.318066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314930, 34.275097, 34.427372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.480579, 34.551151, 34.189980>,  <39.579967, 34.716785, 34.047546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.480579, 34.551151, 34.189980>,  <39.314930, 34.275097, 34.427372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480579, 34.551151, 34.189980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904981, 0.242303, -0.349714,
		-0.097549, 0.681908, 0.724904,
		0.414119, 0.690139, -0.593477,
		39.604816, 34.758194, 34.011936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881531, 34.823196, 34.343853>,  <39.314930, 34.275097, 34.427372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881531, 34.823196, 34.343853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104549, 34.922012, 34.026840>,  <39.238361, 34.981300, 33.836632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104549, 34.922012, 34.026840>,  <38.881531, 34.823196, 34.343853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104549, 34.922012, 34.026840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827989, 0.096723, -0.552339,
		-0.059793, 0.964166, 0.258475,
		0.557547, 0.247041, -0.792536,
		39.271812, 34.996124, 33.789078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473286, 35.367302, 34.008827>,  <38.881531, 34.823196, 34.343853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473286, 35.367302, 34.008827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731255, 35.258442, 33.723167>,  <38.886036, 35.193127, 33.551773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.731255, 35.258442, 33.723167>,  <38.473286, 35.367302, 34.008827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731255, 35.258442, 33.723167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728838, 0.062119, -0.681862,
		0.229930, 0.960248, -0.158291,
		0.644924, -0.272149, -0.714149,
		38.924732, 35.176796, 33.508923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175091, 35.591343, 33.402126>,  <38.473286, 35.367302, 34.008827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175091, 35.591343, 33.402126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.456299, 35.361942, 33.233910>,  <38.625023, 35.224300, 33.132980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.456299, 35.361942, 33.233910>,  <38.175091, 35.591343, 33.402126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456299, 35.361942, 33.233910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647847, -0.272526, -0.711354,
		0.293356, 0.772543, -0.563134,
		0.703020, -0.573504, -0.420542,
		38.667206, 35.189892, 33.107746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198536, 35.777374, 32.683704>,  <38.175091, 35.591343, 33.402126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198536, 35.777374, 32.683704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.359509, 35.411312, 32.692924>,  <38.456093, 35.191673, 32.698456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.359509, 35.411312, 32.692924>,  <38.198536, 35.777374, 32.683704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359509, 35.411312, 32.692924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574266, -0.271981, -0.772169,
		0.712927, 0.297508, -0.634999,
		0.402434, -0.915159, 0.023054,
		38.480240, 35.136765, 32.699841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371647, 35.704407, 32.012890>,  <38.198536, 35.777374, 32.683704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371647, 35.704407, 32.012890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332577, 35.350109, 32.194405>,  <38.309135, 35.137531, 32.303314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332577, 35.350109, 32.194405>,  <38.371647, 35.704407, 32.012890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332577, 35.350109, 32.194405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481331, -0.357051, -0.800522,
		0.871080, -0.296610, -0.391461,
		-0.097672, -0.885741, 0.453788,
		38.303276, 35.084389, 32.330540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754597, 35.209877, 31.640989>,  <38.371647, 35.704407, 32.012890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754597, 35.209877, 31.640989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.491348, 34.977959, 31.833122>,  <38.333401, 34.838806, 31.948402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.491348, 34.977959, 31.833122>,  <38.754597, 35.209877, 31.640989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491348, 34.977959, 31.833122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427036, -0.237979, -0.872357,
		0.620097, -0.779232, -0.090975,
		-0.658118, -0.579796, 0.480330,
		38.293911, 34.804020, 31.977221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748096, 34.540115, 31.259338>,  <38.754597, 35.209877, 31.640989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748096, 34.540115, 31.259338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410088, 34.568836, 31.471292>,  <38.207283, 34.586071, 31.598465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.410088, 34.568836, 31.471292>,  <38.748096, 34.540115, 31.259338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410088, 34.568836, 31.471292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530991, -0.229630, -0.815671,
		0.063108, -0.970626, 0.232170,
		-0.845024, 0.071805, 0.529885,
		38.156582, 34.590378, 31.630259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394886, 33.899494, 31.096087>,  <38.748096, 34.540115, 31.259338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394886, 33.899494, 31.096087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142860, 34.188110, 31.210911>,  <37.991646, 34.361279, 31.279804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142860, 34.188110, 31.210911>,  <38.394886, 33.899494, 31.096087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142860, 34.188110, 31.210911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574601, -0.184528, -0.797360,
		-0.522358, -0.667328, 0.530862,
		-0.630060, 0.721541, 0.287058,
		37.953842, 34.404572, 31.297028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794952, 33.646618, 30.955135>,  <38.394886, 33.899494, 31.096087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794952, 33.646618, 30.955135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.716408, 34.038040, 30.979996>,  <37.669281, 34.272896, 30.994911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.716408, 34.038040, 30.979996>,  <37.794952, 33.646618, 30.955135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716408, 34.038040, 30.979996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716219, -0.099854, -0.690695,
		-0.669681, -0.180139, 0.720471,
		-0.196363, 0.978560, 0.062149,
		37.657497, 34.331608, 30.998640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050724, 33.738369, 30.896633>,  <37.794952, 33.646618, 30.955135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050724, 33.738369, 30.896633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.180187, 34.111389, 30.832640>,  <37.257866, 34.335201, 30.794245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.180187, 34.111389, 30.832640>,  <37.050724, 33.738369, 30.896633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180187, 34.111389, 30.832640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557020, 0.051117, -0.828925,
		-0.764837, 0.357400, 0.535994,
		0.323656, 0.932552, -0.159983,
		37.277283, 34.391155, 30.784645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410210, 34.135479, 30.738232>,  <37.050724, 33.738369, 30.896633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410210, 34.135479, 30.738232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.712639, 34.334900, 30.568623>,  <36.894096, 34.454552, 30.466858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.712639, 34.334900, 30.568623>,  <36.410210, 34.135479, 30.738232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712639, 34.334900, 30.568623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486411, -0.005433, -0.873713,
		-0.437895, 0.866843, 0.238393,
		0.756077, 0.498552, -0.424021,
		36.939461, 34.484467, 30.441416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071228, 34.489140, 30.224535>,  <36.410210, 34.135479, 30.738232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071228, 34.489140, 30.224535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454819, 34.513527, 30.113796>,  <36.684975, 34.528160, 30.047354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.454819, 34.513527, 30.113796>,  <36.071228, 34.489140, 30.224535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454819, 34.513527, 30.113796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262128, -0.181123, -0.947883,
		-0.107931, 0.981569, -0.157713,
		0.958978, 0.060965, -0.276846,
		36.742512, 34.531815, 30.030743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935177, 34.831703, 29.714455>,  <36.071228, 34.489140, 30.224535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935177, 34.831703, 29.714455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.301651, 34.683628, 29.653061>,  <36.521538, 34.594784, 29.616224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.301651, 34.683628, 29.653061>,  <35.935177, 34.831703, 29.714455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301651, 34.683628, 29.653061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187336, -0.057055, -0.980638,
		0.354265, 0.927202, -0.121623,
		0.916189, -0.370190, -0.153486,
		36.576508, 34.572571, 29.607016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087681, 35.639172, 29.829002>,  <35.935177, 34.831703, 29.714455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087681, 35.639172, 29.829002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.873817, 35.968342, 29.905886>,  <35.745499, 36.165844, 29.952015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.873817, 35.968342, 29.905886>,  <36.087681, 35.639172, 29.829002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873817, 35.968342, 29.905886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098389, -0.165281, 0.981327,
		0.839322, 0.543584, 0.007402,
		-0.534656, 0.822921, 0.192207,
		35.713421, 36.215218, 29.963547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462204, 36.109852, 30.272043>,  <36.087681, 35.639172, 29.829002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462204, 36.109852, 30.272043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.072914, 36.192787, 30.311712>,  <35.839340, 36.242550, 30.335514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.072914, 36.192787, 30.311712>,  <36.462204, 36.109852, 30.272043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072914, 36.192787, 30.311712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057606, -0.197675, 0.978574,
		0.222503, 0.958089, 0.180439,
		-0.973229, 0.207342, 0.099175,
		35.780945, 36.254990, 30.341465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425003, 36.458485, 30.907431>,  <36.462204, 36.109852, 30.272043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425003, 36.458485, 30.907431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.035400, 36.378574, 30.864717>,  <35.801640, 36.330627, 30.839088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.035400, 36.378574, 30.864717>,  <36.425003, 36.458485, 30.907431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035400, 36.378574, 30.864717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048658, -0.275888, 0.959957,
		-0.221234, 0.940200, 0.258996,
		-0.974006, -0.199773, -0.106784,
		35.743198, 36.318642, 30.832682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046837, 36.718510, 31.554497>,  <36.425003, 36.458485, 30.907431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046837, 36.718510, 31.554497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.789211, 36.464581, 31.383762>,  <35.634636, 36.312225, 31.281322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.789211, 36.464581, 31.383762>,  <36.046837, 36.718510, 31.554497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789211, 36.464581, 31.383762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161289, -0.432739, 0.886974,
		-0.747775, 0.640111, 0.176322,
		-0.644064, -0.634819, -0.426834,
		35.595993, 36.274136, 31.255713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529385, 36.687981, 32.102119>,  <36.046837, 36.718510, 31.554497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529385, 36.687981, 32.102119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.477043, 36.378670, 31.853952>,  <35.445637, 36.193081, 31.705053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.477043, 36.378670, 31.853952>,  <35.529385, 36.687981, 32.102119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477043, 36.378670, 31.853952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370045, -0.542470, 0.754183,
		-0.919751, 0.328272, -0.215162,
		-0.130858, -0.773281, -0.620413,
		35.437786, 36.146687, 31.667828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786854, 36.477684, 32.189156>,  <35.529385, 36.687981, 32.102119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786854, 36.477684, 32.189156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009281, 36.178547, 32.044098>,  <35.142738, 35.999065, 31.957064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.009281, 36.178547, 32.044098>,  <34.786854, 36.477684, 32.189156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009281, 36.178547, 32.044098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265656, -0.573358, 0.775040,
		-0.787534, -0.334640, -0.517499,
		0.556072, -0.747848, -0.362640,
		35.176102, 35.954193, 31.935307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427860, 35.922779, 32.413948>,  <34.786854, 36.477684, 32.189156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427860, 35.922779, 32.413948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.808628, 35.817883, 32.350605>,  <35.037090, 35.754944, 32.312599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.808628, 35.817883, 32.350605>,  <34.427860, 35.922779, 32.413948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808628, 35.817883, 32.350605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079973, -0.711741, 0.697874,
		-0.295721, -0.651657, -0.698493,
		0.951921, -0.262237, -0.158362,
		35.094204, 35.739212, 32.303097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300663, 35.138889, 32.307064>,  <34.427860, 35.922779, 32.413948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300663, 35.138889, 32.307064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.690865, 35.205990, 32.363998>,  <34.924984, 35.246250, 32.398159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.690865, 35.205990, 32.363998>,  <34.300663, 35.138889, 32.307064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690865, 35.205990, 32.363998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033899, -0.753866, 0.656153,
		0.217370, -0.635253, -0.741083,
		0.975501, 0.167750, 0.142334,
		34.983513, 35.256313, 32.406700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558189, 34.488621, 32.177593>,  <34.300663, 35.138889, 32.307064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558189, 34.488621, 32.177593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.816689, 34.690052, 32.406948>,  <34.971786, 34.810913, 32.544559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.816689, 34.690052, 32.406948>,  <34.558189, 34.488621, 32.177593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816689, 34.690052, 32.406948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052626, -0.720163, 0.691806,
		0.761312, -0.477253, -0.438901,
		0.646247, 0.503582, 0.573385,
		35.010563, 34.841125, 32.578964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110836, 34.023628, 32.368900>,  <34.558189, 34.488621, 32.177593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110836, 34.023628, 32.368900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.148525, 34.299850, 32.655746>,  <35.171139, 34.465584, 32.827854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.148525, 34.299850, 32.655746>,  <35.110836, 34.023628, 32.368900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148525, 34.299850, 32.655746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066831, -0.714312, 0.696629,
		0.993306, -0.113563, -0.021152,
		0.094220, 0.690552, 0.717120,
		35.176792, 34.507015, 32.870884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476582, 33.727531, 32.888134>,  <35.110836, 34.023628, 32.368900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476582, 33.727531, 32.888134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.315971, 34.029778, 33.095139>,  <35.219604, 34.211124, 33.219341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.315971, 34.029778, 33.095139>,  <35.476582, 33.727531, 32.888134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315971, 34.029778, 33.095139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040283, -0.579091, 0.814267,
		0.914962, 0.306102, 0.262958,
		-0.401525, 0.755616, 0.517515,
		35.195515, 34.256462, 33.250393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743790, 33.660931, 33.600437>,  <35.476582, 33.727531, 32.888134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743790, 33.660931, 33.600437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413532, 33.886509, 33.593750>,  <35.215378, 34.021854, 33.589737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.413532, 33.886509, 33.593750>,  <35.743790, 33.660931, 33.600437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413532, 33.886509, 33.593750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343332, -0.478705, 0.808062,
		0.447702, 0.672909, 0.588860,
		-0.825643, 0.563946, -0.016714,
		35.165840, 34.055695, 33.588737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.274693, 36.997288, 26.586430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879662, 37.057816, 26.569448>,  <35.642643, 37.094131, 26.559259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879662, 37.057816, 26.569448>,  <36.274693, 36.997288, 26.586430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879662, 37.057816, 26.569448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016607, 0.168126, 0.985626,
		0.156279, 0.974082, -0.163523,
		-0.987573, 0.151317, -0.042451,
		35.583389, 37.103210, 26.556713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109596, 37.668217, 26.908697>,  <36.274693, 36.997288, 26.586430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109596, 37.668217, 26.908697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784946, 37.436092, 26.935534>,  <35.590157, 37.296818, 26.951635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784946, 37.436092, 26.935534>,  <36.109596, 37.668217, 26.908697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784946, 37.436092, 26.935534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034495, 0.162256, 0.986146,
		-0.583154, 0.798070, -0.151710,
		-0.811629, -0.580308, 0.067091,
		35.541458, 37.262001, 26.955662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651691, 38.018745, 27.358334>,  <36.109596, 37.668217, 26.908697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651691, 38.018745, 27.358334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490311, 37.653393, 27.380121>,  <35.393482, 37.434181, 27.393194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490311, 37.653393, 27.380121>,  <35.651691, 38.018745, 27.358334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490311, 37.653393, 27.380121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010601, 0.054860, 0.998438,
		-0.914939, 0.403401, -0.012451,
		-0.403454, -0.913377, 0.054470,
		35.369274, 37.379379, 27.396461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985882, 38.032345, 27.870674>,  <35.651691, 38.018745, 27.358334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985882, 38.032345, 27.870674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119610, 37.658180, 27.824642>,  <35.199848, 37.433681, 27.797024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119610, 37.658180, 27.824642>,  <34.985882, 38.032345, 27.870674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119610, 37.658180, 27.824642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003973, -0.123502, 0.992336,
		-0.942451, -0.331302, -0.045005,
		0.334322, -0.935407, -0.115078,
		35.219906, 37.377560, 27.790119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697750, 37.717636, 28.426886>,  <34.985882, 38.032345, 27.870674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697750, 37.717636, 28.426886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974869, 37.450241, 28.318697>,  <35.141140, 37.289806, 28.253784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974869, 37.450241, 28.318697>,  <34.697750, 37.717636, 28.426886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974869, 37.450241, 28.318697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142829, -0.240437, 0.960099,
		-0.706844, -0.703788, -0.071096,
		0.692800, -0.668485, -0.270473,
		35.182709, 37.249695, 28.237555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549919, 37.146549, 28.749224>,  <34.697750, 37.717636, 28.426886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549919, 37.146549, 28.749224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932964, 37.083118, 28.653034>,  <35.162792, 37.045059, 28.595320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932964, 37.083118, 28.653034>,  <34.549919, 37.146549, 28.749224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932964, 37.083118, 28.653034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175343, -0.341438, 0.923404,
		-0.228541, -0.926430, -0.299160,
		0.957614, -0.158580, -0.240475,
		35.220249, 37.035545, 28.580891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670189, 36.406811, 28.754763>,  <34.549919, 37.146549, 28.749224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670189, 36.406811, 28.754763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019073, 36.592392, 28.816729>,  <35.228405, 36.703743, 28.853909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019073, 36.592392, 28.816729>,  <34.670189, 36.406811, 28.754763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019073, 36.592392, 28.816729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109882, -0.494465, 0.862224,
		0.476632, -0.735017, -0.482257,
		0.872208, 0.463955, 0.154913,
		35.280735, 36.731579, 28.863203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084042, 35.960560, 28.996201>,  <34.670189, 36.406811, 28.754763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084042, 35.960560, 28.996201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319389, 36.269066, 29.093332>,  <35.460598, 36.454170, 29.151611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319389, 36.269066, 29.093332>,  <35.084042, 35.960560, 28.996201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319389, 36.269066, 29.093332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117535, -0.378699, 0.918026,
		0.800001, -0.511602, -0.313467,
		0.588374, 0.771265, 0.242829,
		35.495903, 36.500446, 29.166182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657749, 35.671955, 29.214920>,  <35.084042, 35.960560, 28.996201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657749, 35.671955, 29.214920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644478, 36.031090, 29.390551>,  <35.636517, 36.246571, 29.495928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644478, 36.031090, 29.390551>,  <35.657749, 35.671955, 29.214920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644478, 36.031090, 29.390551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204035, -0.423981, 0.882389,
		0.978401, 0.118862, -0.169124,
		-0.033177, 0.897837, 0.439076,
		35.634525, 36.300442, 29.522274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192837, 35.146603, 29.032022>,  <35.657749, 35.671955, 29.214920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192837, 35.146603, 29.032022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426353, 34.829464, 29.101965>,  <36.566463, 34.639179, 29.143930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426353, 34.829464, 29.101965>,  <36.192837, 35.146603, 29.032022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426353, 34.829464, 29.101965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253403, -0.026674, -0.966993,
		0.771344, 0.608833, 0.185339,
		0.583793, -0.792850, 0.174855,
		36.601490, 34.591610, 29.154421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948612, 35.377705, 28.899181>,  <36.192837, 35.146603, 29.032022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948612, 35.377705, 28.899181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986454, 34.980629, 28.869209>,  <37.009159, 34.742382, 28.851227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986454, 34.980629, 28.869209>,  <36.948612, 35.377705, 28.899181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986454, 34.980629, 28.869209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270470, 0.098068, -0.957721,
		0.958069, 0.070343, 0.277771,
		0.094609, -0.992691, -0.074930,
		37.014835, 34.682823, 28.846729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656067, 35.166145, 28.591999>,  <36.948612, 35.377705, 28.899181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656067, 35.166145, 28.591999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416435, 34.855461, 28.514212>,  <37.272655, 34.669052, 28.467539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416435, 34.855461, 28.514212>,  <37.656067, 35.166145, 28.591999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416435, 34.855461, 28.514212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238975, 0.058355, -0.969271,
		0.764192, -0.627147, 0.150655,
		-0.599084, -0.776712, -0.194467,
		37.236710, 34.622448, 28.455872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022816, 34.647526, 28.161001>,  <37.656067, 35.166145, 28.591999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022816, 34.647526, 28.161001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640816, 34.541626, 28.107521>,  <37.411613, 34.478085, 28.075434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640816, 34.541626, 28.107521>,  <38.022816, 34.647526, 28.161001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640816, 34.541626, 28.107521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192906, -0.212041, -0.958032,
		0.225293, -0.940715, 0.253572,
		-0.955003, -0.264754, -0.133698,
		37.354317, 34.462200, 28.067411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145107, 34.089703, 27.751301>,  <38.022816, 34.647526, 28.161001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145107, 34.089703, 27.751301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758022, 34.164177, 27.683350>,  <37.525772, 34.208862, 27.642578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758022, 34.164177, 27.683350>,  <38.145107, 34.089703, 27.751301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758022, 34.164177, 27.683350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128117, -0.217051, -0.967716,
		-0.217051, -0.958239, 0.186190,
		0.967716, -0.186190, 0.169878,
		37.467709, 34.220036, 27.632385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902809, 33.701496, 27.089222>,  <38.145107, 34.089703, 27.751301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902809, 33.701496, 27.089222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628403, 33.989471, 27.131313>,  <37.463760, 34.162254, 27.156569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628403, 33.989471, 27.131313>,  <37.902809, 33.701496, 27.089222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628403, 33.989471, 27.131313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002773, 0.142039, -0.989857,
		-0.727580, -0.679350, -0.095445,
		-0.686017, 0.719936, 0.105229,
		37.422596, 34.205452, 27.162882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357689, 33.481499, 26.694429>,  <37.902809, 33.701496, 27.089222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357689, 33.481499, 26.694429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356369, 33.881489, 26.691919>,  <37.355576, 34.121483, 26.690413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356369, 33.881489, 26.691919>,  <37.357689, 33.481499, 26.694429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356369, 33.881489, 26.691919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102209, -0.006580, -0.994741,
		-0.994758, -0.002640, 0.102228,
		-0.003299, 0.999975, -0.006276,
		37.355381, 34.181480, 26.690037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943016, 33.729572, 26.153734>,  <37.357689, 33.481499, 26.694429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943016, 33.729572, 26.153734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144577, 34.063618, 26.241978>,  <37.265514, 34.264046, 26.294924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144577, 34.063618, 26.241978>,  <36.943016, 33.729572, 26.153734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144577, 34.063618, 26.241978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148890, 0.335563, -0.930177,
		-0.850829, 0.435876, 0.293432,
		0.503907, 0.835110, 0.220609,
		37.295750, 34.314152, 26.308161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566803, 34.148937, 25.581615>,  <36.943016, 33.729572, 26.153734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566803, 34.148937, 25.581615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893364, 34.338360, 25.713818>,  <37.089298, 34.452015, 25.793139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893364, 34.338360, 25.713818>,  <36.566803, 34.148937, 25.581615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893364, 34.338360, 25.713818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161647, 0.362044, -0.918038,
		-0.554403, 0.802911, 0.219023,
		0.816399, 0.473559, 0.330507,
		37.138283, 34.480427, 25.812969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486649, 34.775204, 25.306786>,  <36.566803, 34.148937, 25.581615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486649, 34.775204, 25.306786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870945, 34.682362, 25.367575>,  <37.101524, 34.626656, 25.404047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870945, 34.682362, 25.367575>,  <36.486649, 34.775204, 25.306786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870945, 34.682362, 25.367575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210307, 0.252040, -0.944588,
		0.180945, 0.939468, 0.290961,
		0.960745, -0.232109, 0.151971,
		37.159168, 34.612728, 25.413166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844814, 35.220139, 24.950308>,  <36.486649, 34.775204, 25.306786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844814, 35.220139, 24.950308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150314, 34.968410, 25.007769>,  <37.333614, 34.817375, 25.042246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150314, 34.968410, 25.007769>,  <36.844814, 35.220139, 24.950308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150314, 34.968410, 25.007769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368356, 0.242152, -0.897595,
		0.530088, 0.738457, 0.416758,
		0.763754, -0.629320, 0.143654,
		37.379440, 34.779613, 25.050865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409092, 35.633938, 24.857233>,  <36.844814, 35.220139, 24.950308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409092, 35.633938, 24.857233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550892, 35.263206, 24.807722>,  <37.635971, 35.040768, 24.778015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550892, 35.263206, 24.807722>,  <37.409092, 35.633938, 24.857233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550892, 35.263206, 24.807722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398187, 0.269404, -0.876851,
		0.846038, 0.261552, 0.464554,
		0.354495, -0.926829, -0.123779,
		37.657242, 34.985157, 24.770588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023350, 35.742474, 24.514460>,  <37.409092, 35.633938, 24.857233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023350, 35.742474, 24.514460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932209, 35.357704, 24.454086>,  <37.877525, 35.126842, 24.417862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932209, 35.357704, 24.454086>,  <38.023350, 35.742474, 24.514460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932209, 35.357704, 24.454086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515630, 0.012288, -0.856723,
		0.825960, -0.273029, 0.493199,
		-0.227850, -0.961927, -0.150931,
		37.863853, 35.069126, 24.408808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567692, 35.388866, 24.328117>,  <38.023350, 35.742474, 24.514460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567692, 35.388866, 24.328117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277210, 35.154243, 24.184690>,  <38.102921, 35.013470, 24.098635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277210, 35.154243, 24.184690>,  <38.567692, 35.388866, 24.328117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277210, 35.154243, 24.184690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221975, 0.293577, -0.929806,
		0.650654, -0.754825, -0.082996,
		-0.726207, -0.586559, -0.358569,
		38.059349, 34.978275, 24.077120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.258202, 31.343994, 22.387123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.429665, 31.665855, 22.551458>,  <32.532543, 31.858973, 22.650059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.429665, 31.665855, 22.551458>,  <32.258202, 31.343994, 22.387123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429665, 31.665855, 22.551458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303329, -0.300163, 0.904375,
		0.851024, -0.512288, 0.115406,
		0.428660, 0.804651, 0.410838,
		32.558262, 31.907251, 22.674709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653133, 31.071377, 22.841356>,  <32.258202, 31.343994, 22.387123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653133, 31.071377, 22.841356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596996, 31.446310, 22.968927>,  <32.563313, 31.671270, 23.045469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.596996, 31.446310, 22.968927>,  <32.653133, 31.071377, 22.841356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596996, 31.446310, 22.968927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001567, -0.321903, 0.946771,
		0.990101, 0.133374, 0.043709,
		-0.140344, 0.937331, 0.318926,
		32.554893, 31.727509, 23.064606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905647, 31.030972, 23.558640>,  <32.653133, 31.071377, 22.841356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905647, 31.030972, 23.558640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.770718, 31.404673, 23.604912>,  <32.689758, 31.628893, 23.632675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.770718, 31.404673, 23.604912>,  <32.905647, 31.030972, 23.558640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770718, 31.404673, 23.604912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072189, -0.148192, 0.986321,
		0.938616, 0.324360, 0.117432,
		-0.337325, 0.934254, 0.115680,
		32.669521, 31.684948, 23.639616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315681, 31.462416, 24.047836>,  <32.905647, 31.030972, 23.558640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315681, 31.462416, 24.047836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.955345, 31.636076, 24.048771>,  <32.739143, 31.740273, 24.049332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.955345, 31.636076, 24.048771>,  <33.315681, 31.462416, 24.047836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955345, 31.636076, 24.048771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009230, 0.013772, 0.999863,
		0.434060, 0.900734, -0.016414,
		-0.900837, 0.434152, 0.002336,
		32.685093, 31.766321, 24.049471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327911, 31.934603, 24.525440>,  <33.315681, 31.462416, 24.047836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327911, 31.934603, 24.525440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.931519, 31.888544, 24.498005>,  <32.693684, 31.860909, 24.481543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.931519, 31.888544, 24.498005>,  <33.327911, 31.934603, 24.525440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931519, 31.888544, 24.498005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059938, -0.076992, 0.995229,
		-0.119880, 0.990360, 0.069395,
		-0.990977, -0.115149, -0.068590,
		32.634224, 31.854000, 24.477428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127754, 32.438320, 24.883942>,  <33.327911, 31.934603, 24.525440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127754, 32.438320, 24.883942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.827103, 32.175282, 24.863459>,  <32.646713, 32.017456, 24.851170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.827103, 32.175282, 24.863459>,  <33.127754, 32.438320, 24.883942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827103, 32.175282, 24.863459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088341, 0.023429, 0.995815,
		-0.653647, 0.753004, -0.075703,
		-0.751626, -0.657599, -0.051207,
		32.601616, 31.978003, 24.848097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608784, 32.733364, 25.311831>,  <33.127754, 32.438320, 24.883942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608784, 32.733364, 25.311831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.483074, 32.353718, 25.303690>,  <32.407646, 32.125931, 25.298805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.483074, 32.353718, 25.303690>,  <32.608784, 32.733364, 25.311831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483074, 32.353718, 25.303690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209556, 0.048449, 0.976596,
		-0.925914, 0.311186, -0.214118,
		-0.314276, -0.949113, -0.020351,
		32.388790, 32.068985, 25.297585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963457, 32.656250, 25.684654>,  <32.608784, 32.733364, 25.311831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963457, 32.656250, 25.684654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.112156, 32.285038, 25.675213>,  <32.201374, 32.062309, 25.669548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.112156, 32.285038, 25.675213>,  <31.963457, 32.656250, 25.684654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112156, 32.285038, 25.675213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242686, -0.121690, 0.962442,
		-0.896052, -0.352056, -0.270458,
		0.371746, -0.928035, -0.023602,
		32.223679, 32.006626, 25.668133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596306, 32.273998, 26.131668>,  <31.963457, 32.656250, 25.684654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596306, 32.273998, 26.131668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.937807, 32.067646, 26.103472>,  <32.142708, 31.943834, 26.086554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.937807, 32.067646, 26.103472>,  <31.596306, 32.273998, 26.131668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937807, 32.067646, 26.103472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029509, -0.087222, 0.995752,
		-0.519839, -0.852207, -0.059243,
		0.853754, -0.515883, -0.070490,
		32.193932, 31.912882, 26.082325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545330, 31.742077, 26.516935>,  <31.596306, 32.273998, 26.131668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545330, 31.742077, 26.516935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.944324, 31.735361, 26.489408>,  <32.183723, 31.731331, 26.472893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.944324, 31.735361, 26.489408>,  <31.545330, 31.742077, 26.516935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944324, 31.735361, 26.489408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067534, -0.067831, 0.995409,
		-0.021377, -0.997556, -0.066527,
		0.997488, -0.016786, -0.068819,
		32.243572, 31.730324, 26.468763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740175, 31.213554, 27.031511>,  <31.545330, 31.742077, 26.516935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740175, 31.213554, 27.031511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.080387, 31.415838, 26.973742>,  <32.284515, 31.537209, 26.939079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.080387, 31.415838, 26.973742>,  <31.740175, 31.213554, 27.031511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080387, 31.415838, 26.973742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178286, -0.018892, 0.983797,
		0.494790, -0.862496, -0.106230,
		0.850528, 0.505712, -0.144423,
		32.335545, 31.567553, 26.930414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133678, 30.837297, 27.496450>,  <31.740175, 31.213554, 27.031511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133678, 30.837297, 27.496450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.311752, 31.188538, 27.426304>,  <32.418598, 31.399281, 27.384216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.311752, 31.188538, 27.426304>,  <32.133678, 30.837297, 27.496450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311752, 31.188538, 27.426304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195620, 0.095743, 0.975995,
		0.873810, -0.468802, -0.129151,
		0.445183, 0.878099, -0.175369,
		32.445309, 31.451967, 27.373693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582203, 30.808096, 27.977364>,  <32.133678, 30.837297, 27.496450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582203, 30.808096, 27.977364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.570469, 31.201109, 27.903860>,  <32.563431, 31.436916, 27.859758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.570469, 31.201109, 27.903860>,  <32.582203, 30.808096, 27.977364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570469, 31.201109, 27.903860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255067, 0.185109, 0.949039,
		0.966478, -0.019035, -0.256042,
		-0.029331, 0.982534, -0.183759,
		32.561668, 31.495869, 27.848732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248417, 31.063511, 27.941269>,  <32.582203, 30.808096, 27.977364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248417, 31.063511, 27.941269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.970280, 31.319036, 28.072979>,  <32.803398, 31.472351, 28.152004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.970280, 31.319036, 28.072979>,  <33.248417, 31.063511, 27.941269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970280, 31.319036, 28.072979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422715, -0.006995, 0.906236,
		0.581218, 0.769331, -0.265171,
		-0.695340, 0.638812, 0.329273,
		32.761677, 31.510679, 28.171761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003395, 31.200638, 28.227461>,  <33.248417, 31.063511, 27.941269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003395, 31.200638, 28.227461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.361031, 31.022089, 28.242235>,  <34.575611, 30.914959, 28.251101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.361031, 31.022089, 28.242235>,  <34.003395, 31.200638, 28.227461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361031, 31.022089, 28.242235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192041, 0.307540, -0.931955,
		0.404638, 0.840340, 0.360688,
		0.894085, -0.446372, 0.036938,
		34.629257, 30.888178, 28.253317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474770, 31.775124, 28.028906>,  <34.003395, 31.200638, 28.227461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474770, 31.775124, 28.028906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.654411, 31.418381, 28.007372>,  <34.762196, 31.204336, 27.994452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.654411, 31.418381, 28.007372>,  <34.474770, 31.775124, 28.028906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654411, 31.418381, 28.007372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347669, 0.229943, -0.908984,
		0.823062, 0.389512, 0.413339,
		0.449105, -0.891856, -0.053836,
		34.789143, 31.150824, 27.991220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212414, 31.979382, 27.813358>,  <34.474770, 31.775124, 28.028906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212414, 31.979382, 27.813358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.133228, 31.598150, 27.721750>,  <35.085716, 31.369411, 27.666784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.133228, 31.598150, 27.721750>,  <35.212414, 31.979382, 27.813358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133228, 31.598150, 27.721750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322135, 0.157409, -0.933515,
		0.925764, -0.258579, 0.275859,
		-0.197965, -0.953079, -0.229021,
		35.073837, 31.312227, 27.653044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864994, 31.755072, 27.485952>,  <35.212414, 31.979382, 27.813358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864994, 31.755072, 27.485952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.563477, 31.518957, 27.370472>,  <35.382565, 31.377289, 27.301184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.563477, 31.518957, 27.370472>,  <35.864994, 31.755072, 27.485952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563477, 31.518957, 27.370472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380067, -0.033254, -0.924361,
		0.536039, -0.806507, 0.249416,
		-0.753798, -0.590289, -0.288701,
		35.337337, 31.341871, 27.283861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115662, 31.124857, 27.066219>,  <35.864994, 31.755072, 27.485952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115662, 31.124857, 27.066219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.729073, 31.173231, 26.975624>,  <35.497120, 31.202255, 26.921267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.729073, 31.173231, 26.975624>,  <36.115662, 31.124857, 27.066219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729073, 31.173231, 26.975624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226955, -0.010085, -0.973853,
		-0.120062, -0.992609, -0.017701,
		-0.966476, 0.120940, -0.226488,
		35.439129, 31.209513, 26.907679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063702, 30.681736, 26.605417>,  <36.115662, 31.124857, 27.066219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063702, 30.681736, 26.605417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735836, 30.896166, 26.524639>,  <35.539116, 31.024824, 26.476171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.735836, 30.896166, 26.524639>,  <36.063702, 30.681736, 26.605417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735836, 30.896166, 26.524639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092422, -0.224155, -0.970161,
		-0.565347, -0.813866, 0.134185,
		-0.819659, 0.536076, -0.201945,
		35.489937, 31.056988, 26.464056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796196, 30.332226, 26.049047>,  <36.063702, 30.681736, 26.605417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796196, 30.332226, 26.049047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.608627, 30.685200, 26.033972>,  <35.496086, 30.896984, 26.024927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.608627, 30.685200, 26.033972>,  <35.796196, 30.332226, 26.049047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608627, 30.685200, 26.033972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046026, -0.067025, -0.996689,
		-0.882038, -0.465638, 0.072044,
		-0.468925, 0.882434, -0.037688,
		35.467949, 30.949930, 26.022665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164696, 30.277813, 25.635340>,  <35.796196, 30.332226, 26.049047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164696, 30.277813, 25.635340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269436, 30.663593, 25.621092>,  <35.332279, 30.895061, 25.612543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.269436, 30.663593, 25.621092>,  <35.164696, 30.277813, 25.635340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269436, 30.663593, 25.621092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134914, 0.000033, -0.990857,
		-0.955632, 0.264262, 0.130127,
		0.261850, 0.964451, -0.035621,
		35.347992, 30.952929, 25.610405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790886, 30.496410, 25.019236>,  <35.164696, 30.277813, 25.635340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790886, 30.496410, 25.019236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.056351, 30.782303, 25.107523>,  <35.215630, 30.953838, 25.160496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.056351, 30.782303, 25.107523>,  <34.790886, 30.496410, 25.019236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056351, 30.782303, 25.107523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077842, 0.227473, -0.970668,
		-0.743975, 0.661373, 0.095328,
		0.663658, 0.714732, 0.220717,
		35.255447, 30.996723, 25.173738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500217, 31.122057, 24.680811>,  <34.790886, 30.496410, 25.019236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500217, 31.122057, 24.680811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.893265, 31.163677, 24.742306>,  <35.129093, 31.188650, 24.779202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.893265, 31.163677, 24.742306>,  <34.500217, 31.122057, 24.680811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893265, 31.163677, 24.742306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120323, 0.273653, -0.954273,
		-0.141364, 0.956184, 0.256377,
		0.982618, 0.104052, 0.153735,
		35.188049, 31.194893, 24.788425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701981, 31.768892, 24.422012>,  <34.500217, 31.122057, 24.680811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701981, 31.768892, 24.422012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012211, 31.516438, 24.417208>,  <35.198349, 31.364965, 24.414326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.012211, 31.516438, 24.417208>,  <34.701981, 31.768892, 24.422012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012211, 31.516438, 24.417208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202828, 0.267174, -0.942061,
		0.597778, 0.728206, 0.335227,
		0.775578, -0.631137, -0.012010,
		35.244884, 31.327097, 24.413605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388031, 32.132812, 24.280672>,  <34.701981, 31.768892, 24.422012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388031, 32.132812, 24.280672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.415966, 31.749334, 24.170380>,  <35.432728, 31.519247, 24.104204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.415966, 31.749334, 24.170380>,  <35.388031, 32.132812, 24.280672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415966, 31.749334, 24.170380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150358, 0.283364, -0.947152,
		0.986162, 0.024684, 0.163936,
		0.069833, -0.958695, -0.275731,
		35.436916, 31.461725, 24.087660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750336, 32.215698, 23.725048>,  <35.388031, 32.132812, 24.280672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750336, 32.215698, 23.725048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648739, 31.829422, 23.703398>,  <35.587780, 31.597656, 23.690407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648739, 31.829422, 23.703398>,  <35.750336, 32.215698, 23.725048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648739, 31.829422, 23.703398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288209, -0.022146, -0.957311,
		0.923268, -0.258749, 0.283945,
		-0.253991, -0.965691, -0.054127,
		35.572540, 31.539715, 23.687160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308697, 31.904440, 23.487957>,  <35.750336, 32.215698, 23.725048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308697, 31.904440, 23.487957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976624, 31.700838, 23.397001>,  <35.777378, 31.578676, 23.342428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976624, 31.700838, 23.397001>,  <36.308697, 31.904440, 23.487957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976624, 31.700838, 23.397001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196470, 0.114579, -0.973792,
		0.521720, -0.853103, 0.004883,
		-0.830185, -0.509006, -0.227388,
		35.727570, 31.548136, 23.328785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922035, 31.380428, 23.395735>,  <36.308697, 31.904440, 23.487957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922035, 31.380428, 23.395735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298157, 31.481556, 23.486877>,  <37.523830, 31.542233, 23.541563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298157, 31.481556, 23.486877>,  <36.922035, 31.380428, 23.395735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298157, 31.481556, 23.486877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132153, -0.345746, 0.928975,
		0.313645, -0.903627, -0.291693,
		0.940299, 0.252821, 0.227858,
		37.580246, 31.557402, 23.555235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241997, 30.791656, 23.723341>,  <36.922035, 31.380428, 23.395735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241997, 30.791656, 23.723341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.429520, 31.126284, 23.836742>,  <37.542034, 31.327061, 23.904783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.429520, 31.126284, 23.836742>,  <37.241997, 30.791656, 23.723341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429520, 31.126284, 23.836742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131355, -0.251361, 0.958939,
		0.873480, -0.486794, -0.007951,
		0.468805, 0.836570, 0.283502,
		37.570160, 31.377254, 23.921793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770874, 30.558496, 24.286913>,  <37.241997, 30.791656, 23.723341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770874, 30.558496, 24.286913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738121, 30.955214, 24.326181>,  <37.718468, 31.193245, 24.349743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738121, 30.955214, 24.326181>,  <37.770874, 30.558496, 24.286913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738121, 30.955214, 24.326181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424383, -0.054429, 0.903846,
		0.901773, 0.115674, -0.416443,
		-0.081885, 0.991795, 0.098173,
		37.713554, 31.252752, 24.355633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420952, 30.736052, 24.496098>,  <37.770874, 30.558496, 24.286913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420952, 30.736052, 24.496098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.181141, 31.042400, 24.589054>,  <38.037254, 31.226210, 24.644829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.181141, 31.042400, 24.589054>,  <38.420952, 30.736052, 24.496098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181141, 31.042400, 24.589054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484826, 0.116499, 0.866817,
		0.636798, 0.632350, -0.441160,
		-0.599527, 0.765873, 0.232393,
		38.001282, 31.272161, 24.658772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794655, 31.255926, 24.837719>,  <38.420952, 30.736052, 24.496098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794655, 31.255926, 24.837719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425869, 31.319328, 24.979055>,  <38.204597, 31.357370, 25.063856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425869, 31.319328, 24.979055>,  <38.794655, 31.255926, 24.837719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425869, 31.319328, 24.979055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376920, 0.157821, 0.912701,
		0.088905, 0.974663, -0.205250,
		-0.921969, 0.158506, 0.353339,
		38.149277, 31.366880, 25.085056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911114, 31.744978, 25.479261>,  <38.794655, 31.255926, 24.837719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911114, 31.744978, 25.479261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.525547, 31.639980, 25.497007>,  <38.294209, 31.576982, 25.507654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.525547, 31.639980, 25.497007>,  <38.911114, 31.744978, 25.479261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525547, 31.639980, 25.497007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008613, 0.197310, 0.980303,
		-0.266077, 0.944545, -0.192450,
		-0.963913, -0.262494, 0.044364,
		38.236374, 31.561232, 25.510317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549183, 32.212727, 25.777525>,  <38.911114, 31.744978, 25.479261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549183, 32.212727, 25.777525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315311, 31.892786, 25.831755>,  <38.174988, 31.700821, 25.864292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.315311, 31.892786, 25.831755>,  <38.549183, 32.212727, 25.777525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315311, 31.892786, 25.831755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113282, 0.245974, 0.962634,
		-0.803314, 0.547477, -0.234426,
		-0.584682, -0.799854, 0.135575,
		38.139908, 31.652830, 25.872427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121849, 32.476246, 26.250986>,  <38.549183, 32.212727, 25.777525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121849, 32.476246, 26.250986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077362, 32.078743, 26.254515>,  <38.050671, 31.840240, 26.256632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077362, 32.078743, 26.254515>,  <38.121849, 32.476246, 26.250986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077362, 32.078743, 26.254515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395071, 0.052354, 0.917158,
		-0.911894, 0.098518, -0.398428,
		-0.111216, -0.993757, 0.008820,
		38.043999, 31.780617, 26.257160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564758, 32.263268, 26.572853>,  <38.121849, 32.476246, 26.250986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564758, 32.263268, 26.572853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798286, 31.940556, 26.609207>,  <37.938404, 31.746929, 26.631020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.798286, 31.940556, 26.609207>,  <37.564758, 32.263268, 26.572853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798286, 31.940556, 26.609207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171731, -0.013304, 0.985054,
		-0.793513, -0.590701, -0.146317,
		0.583819, -0.806781, 0.090885,
		37.973431, 31.698521, 26.636473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163994, 31.829994, 26.893780>,  <37.564758, 32.263268, 26.572853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163994, 31.829994, 26.893780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.549053, 31.742281, 26.957310>,  <37.780090, 31.689653, 26.995428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.549053, 31.742281, 26.957310>,  <37.163994, 31.829994, 26.893780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549053, 31.742281, 26.957310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165239, -0.011101, 0.986191,
		-0.214493, -0.975598, -0.046920,
		0.962647, -0.219284, 0.158825,
		37.837849, 31.676497, 27.004957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977589, 31.325504, 27.419134>,  <37.163994, 31.829994, 26.893780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977589, 31.325504, 27.419134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364326, 31.427248, 27.428219>,  <37.596371, 31.488295, 27.433670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.364326, 31.427248, 27.428219>,  <36.977589, 31.325504, 27.419134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364326, 31.427248, 27.428219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040264, 0.064018, 0.997136,
		0.252177, -0.964989, 0.072137,
		0.966843, 0.254360, 0.022710,
		37.654381, 31.503555, 27.435032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298462, 30.865097, 27.892406>,  <36.977589, 31.325504, 27.419134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298462, 30.865097, 27.892406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551140, 31.173862, 27.863813>,  <37.702747, 31.359121, 27.846657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551140, 31.173862, 27.863813>,  <37.298462, 30.865097, 27.892406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551140, 31.173862, 27.863813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073665, 0.032021, 0.996769,
		0.771708, -0.634921, -0.036636,
		0.631696, 0.771913, -0.071482,
		37.740650, 31.405436, 27.842369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849716, 30.682899, 28.403721>,  <37.298462, 30.865097, 27.892406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849716, 30.682899, 28.403721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890022, 31.075993, 28.341646>,  <37.914204, 31.311848, 28.304401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.890022, 31.075993, 28.341646>,  <37.849716, 30.682899, 28.403721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890022, 31.075993, 28.341646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021097, 0.153837, 0.987871,
		0.994687, -0.102814, -0.005232,
		0.100762, 0.982733, -0.155188,
		37.920250, 31.370811, 28.295090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415642, 30.870163, 28.870018>,  <37.849716, 30.682899, 28.403721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415642, 30.870163, 28.870018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.202339, 31.198122, 28.786680>,  <38.074360, 31.394897, 28.736677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.202339, 31.198122, 28.786680>,  <38.415642, 30.870163, 28.870018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202339, 31.198122, 28.786680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020463, 0.258712, 0.965738,
		0.845708, 0.510719, -0.154736,
		-0.533253, 0.819899, -0.208344,
		38.042362, 31.444092, 28.724176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.938107, 35.264412, 23.733913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552299, 35.171471, 23.683775>,  <38.320816, 35.115707, 23.653692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552299, 35.171471, 23.683775>,  <38.938107, 35.264412, 23.733913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552299, 35.171471, 23.683775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023261, 0.398137, -0.917031,
		0.262980, -0.887411, -0.378607,
		-0.964521, -0.232354, -0.125344,
		38.262943, 35.101765, 23.646172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894302, 34.934078, 23.073286>,  <38.938107, 35.264412, 23.733913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894302, 34.934078, 23.073286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.509605, 35.008076, 23.154106>,  <38.278786, 35.052475, 23.202599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.509605, 35.008076, 23.154106>,  <38.894302, 34.934078, 23.073286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509605, 35.008076, 23.154106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120516, 0.376635, -0.918489,
		-0.246012, -0.907703, -0.339933,
		-0.961745, 0.184991, 0.202049,
		38.221081, 35.063572, 23.214722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460789, 34.542763, 22.609610>,  <38.894302, 34.934078, 23.073286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460789, 34.542763, 22.609610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221600, 34.839962, 22.729864>,  <38.078087, 35.018280, 22.802017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.221600, 34.839962, 22.729864>,  <38.460789, 34.542763, 22.609610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221600, 34.839962, 22.729864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186723, 0.235631, -0.953736,
		-0.779463, -0.626445, -0.002166,
		-0.597974, 0.742997, 0.300637,
		38.042206, 35.062862, 22.820055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771271, 34.439598, 22.266008>,  <38.460789, 34.542763, 22.609610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771271, 34.439598, 22.266008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806122, 34.825779, 22.364244>,  <37.827030, 35.057487, 22.423185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806122, 34.825779, 22.364244>,  <37.771271, 34.439598, 22.266008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806122, 34.825779, 22.364244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339241, 0.260545, -0.903898,
		-0.936656, -0.004561, 0.350220,
		0.087125, 0.965451, 0.245588,
		37.832260, 35.115414, 22.437922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169392, 34.676937, 22.033875>,  <37.771271, 34.439598, 22.266008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169392, 34.676937, 22.033875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.412178, 34.993053, 22.067410>,  <37.557850, 35.182724, 22.087530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.412178, 34.993053, 22.067410>,  <37.169392, 34.676937, 22.033875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412178, 34.993053, 22.067410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361907, 0.368781, -0.856168,
		-0.707539, 0.489327, 0.509850,
		0.606970, 0.790290, 0.083836,
		37.594269, 35.230141, 22.092560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780083, 35.235756, 21.759125>,  <37.169392, 34.676937, 22.033875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780083, 35.235756, 21.759125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161285, 35.355579, 21.741087>,  <37.390007, 35.427475, 21.730265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161285, 35.355579, 21.741087>,  <36.780083, 35.235756, 21.759125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161285, 35.355579, 21.741087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145086, 0.320670, -0.936013,
		-0.265932, 0.898573, 0.349064,
		0.953011, 0.299561, -0.045094,
		37.447189, 35.445446, 21.727558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795841, 35.969276, 21.515465>,  <36.780083, 35.235756, 21.759125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795841, 35.969276, 21.515465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160137, 35.820400, 21.443882>,  <37.378716, 35.731075, 21.400932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.160137, 35.820400, 21.443882>,  <36.795841, 35.969276, 21.515465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160137, 35.820400, 21.443882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067059, 0.294303, -0.953357,
		0.407500, 0.880260, 0.243075,
		0.910740, -0.372193, -0.178958,
		37.433357, 35.708744, 21.390194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053165, 36.371113, 21.046503>,  <36.795841, 35.969276, 21.515465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053165, 36.371113, 21.046503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299385, 36.059643, 20.997902>,  <37.447117, 35.872761, 20.968740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299385, 36.059643, 20.997902>,  <37.053165, 36.371113, 21.046503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299385, 36.059643, 20.997902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076966, 0.212834, -0.974052,
		0.784332, 0.590225, 0.190941,
		0.615548, -0.778676, -0.121505,
		37.484051, 35.826038, 20.961451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541351, 36.657410, 20.625362>,  <37.053165, 36.371113, 21.046503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541351, 36.657410, 20.625362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580761, 36.261623, 20.582918>,  <37.604408, 36.024151, 20.557451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580761, 36.261623, 20.582918>,  <37.541351, 36.657410, 20.625362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580761, 36.261623, 20.582918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077021, 0.098729, -0.992129,
		0.992150, 0.105920, -0.066482,
		0.098523, -0.989461, -0.106112,
		37.610317, 35.964787, 20.551085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109882, 36.589378, 20.063381>,  <37.541351, 36.657410, 20.625362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109882, 36.589378, 20.063381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892830, 36.255222, 20.098425>,  <37.762600, 36.054729, 20.119452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.892830, 36.255222, 20.098425>,  <38.109882, 36.589378, 20.063381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892830, 36.255222, 20.098425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210920, 0.034558, -0.976892,
		0.813059, -0.548570, -0.194952,
		-0.542631, -0.835390, 0.087607,
		37.730042, 36.004604, 20.124706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267159, 36.195827, 19.482944>,  <38.109882, 36.589378, 20.063381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267159, 36.195827, 19.482944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921757, 36.025906, 19.591679>,  <37.714516, 35.923950, 19.656919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.921757, 36.025906, 19.591679>,  <38.267159, 36.195827, 19.482944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921757, 36.025906, 19.591679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314135, 0.031365, -0.948860,
		0.394557, -0.904740, -0.160531,
		-0.863507, -0.424808, 0.271836,
		37.662704, 35.898464, 19.673229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148533, 35.644268, 19.064606>,  <38.267159, 36.195827, 19.482944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148533, 35.644268, 19.064606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.775429, 35.702473, 19.196541>,  <37.551567, 35.737396, 19.275702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.775429, 35.702473, 19.196541>,  <38.148533, 35.644268, 19.064606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775429, 35.702473, 19.196541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345091, -0.095697, -0.933678,
		-0.104343, -0.984710, 0.139493,
		-0.932751, 0.145561, 0.329830,
		37.495602, 35.746128, 19.295492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731537, 35.189552, 18.645781>,  <38.148533, 35.644268, 19.064606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731537, 35.189552, 18.645781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466347, 35.461922, 18.770241>,  <37.307232, 35.625343, 18.844917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.466347, 35.461922, 18.770241>,  <37.731537, 35.189552, 18.645781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466347, 35.461922, 18.770241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550639, -0.161927, -0.818888,
		-0.507213, -0.714232, 0.482294,
		-0.662972, 0.680920, 0.311152,
		37.267456, 35.666199, 18.863586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105309, 34.600670, 18.505606>,  <37.731537, 35.189552, 18.645781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105309, 34.600670, 18.505606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097717, 34.375580, 18.836176>,  <38.093163, 34.240528, 19.034519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097717, 34.375580, 18.836176>,  <38.105309, 34.600670, 18.505606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097717, 34.375580, 18.836176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149676, 0.818860, 0.554134,
		-0.988553, -0.113182, -0.099763,
		-0.018974, -0.562723, 0.826428,
		38.092026, 34.206764, 19.084105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225372, 33.820042, 18.218092>,  <38.105309, 34.600670, 18.505606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225372, 33.820042, 18.218092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258106, 33.431850, 18.127344>,  <38.277748, 33.198936, 18.072895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258106, 33.431850, 18.127344>,  <38.225372, 33.820042, 18.218092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258106, 33.431850, 18.127344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444386, -0.239286, 0.863286,
		-0.892089, 0.030168, -0.450851,
		0.081839, -0.970480, -0.226870,
		38.282658, 33.140705, 18.059282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576702, 33.406506, 18.550438>,  <38.225372, 33.820042, 18.218092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576702, 33.406506, 18.550438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882561, 33.152775, 18.504930>,  <38.066078, 33.000538, 18.477627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882561, 33.152775, 18.504930>,  <37.576702, 33.406506, 18.550438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882561, 33.152775, 18.504930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197842, -0.399071, 0.895322,
		-0.613326, -0.662099, -0.430645,
		0.764650, -0.634324, -0.113769,
		38.111958, 32.962479, 18.470800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330185, 32.806133, 18.887741>,  <37.576702, 33.406506, 18.550438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330185, 32.806133, 18.887741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723320, 32.732372, 18.889767>,  <37.959202, 32.688114, 18.890982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.723320, 32.732372, 18.889767>,  <37.330185, 32.806133, 18.887741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723320, 32.732372, 18.889767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082642, -0.415590, 0.905790,
		-0.164924, -0.890663, -0.423697,
		0.982838, -0.184402, 0.005066,
		38.018173, 32.677052, 18.891287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416111, 32.247036, 19.111458>,  <37.330185, 32.806133, 18.887741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416111, 32.247036, 19.111458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805019, 32.323402, 19.165483>,  <38.038364, 32.369225, 19.197899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805019, 32.323402, 19.165483>,  <37.416111, 32.247036, 19.111458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805019, 32.323402, 19.165483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005973, -0.557081, 0.830437,
		0.233789, -0.808215, -0.540492,
		0.972269, 0.190918, 0.135067,
		38.096699, 32.380676, 19.206003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736153, 31.654379, 19.285854>,  <37.416111, 32.247036, 19.111458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736153, 31.654379, 19.285854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999619, 31.915670, 19.435230>,  <38.157700, 32.072445, 19.524855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.999619, 31.915670, 19.435230>,  <37.736153, 31.654379, 19.285854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999619, 31.915670, 19.435230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054581, -0.453518, 0.889574,
		0.750454, -0.606314, -0.263062,
		0.658665, 0.653227, 0.373438,
		38.197220, 32.111637, 19.547262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318436, 31.292355, 19.639048>,  <37.736153, 31.654379, 19.285854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318436, 31.292355, 19.639048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.315987, 31.659599, 19.797556>,  <38.314518, 31.879946, 19.892660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.315987, 31.659599, 19.797556>,  <38.318436, 31.292355, 19.639048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315987, 31.659599, 19.797556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002269, -0.396264, 0.918134,
		0.999979, 0.006521, 0.000343,
		-0.006123, 0.918114, 0.396270,
		38.314148, 31.935034, 19.916437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722931, 31.236391, 20.238844>,  <38.318436, 31.292355, 19.639048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722931, 31.236391, 20.238844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.534081, 31.581068, 20.313229>,  <38.420769, 31.787874, 20.357861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.534081, 31.581068, 20.313229>,  <38.722931, 31.236391, 20.238844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534081, 31.581068, 20.313229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117364, -0.270519, 0.955534,
		0.873683, 0.429307, 0.228851,
		-0.472126, 0.861693, 0.185963,
		38.392441, 31.839577, 20.369017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037647, 31.476576, 20.897900>,  <38.722931, 31.236391, 20.238844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037647, 31.476576, 20.897900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.695019, 31.677767, 20.851763>,  <38.489441, 31.798481, 20.824080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.695019, 31.677767, 20.851763>,  <39.037647, 31.476576, 20.897900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695019, 31.677767, 20.851763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211339, -0.138013, 0.967620,
		0.470773, 0.853209, 0.224516,
		-0.856568, 0.502979, -0.115344,
		38.438049, 31.828661, 20.817160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097439, 32.046326, 21.306347>,  <39.037647, 31.476576, 20.897900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097439, 32.046326, 21.306347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703175, 32.008545, 21.250404>,  <38.466618, 31.985878, 21.216839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703175, 32.008545, 21.250404>,  <39.097439, 32.046326, 21.306347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703175, 32.008545, 21.250404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150746, 0.120192, 0.981239,
		-0.075867, 0.988248, -0.132706,
		-0.985657, -0.094449, -0.139855,
		38.407478, 31.980211, 21.208448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853012, 32.513454, 21.728800>,  <39.097439, 32.046326, 21.306347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853012, 32.513454, 21.728800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556591, 32.249638, 21.678452>,  <38.378738, 32.091347, 21.648243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.556591, 32.249638, 21.678452>,  <38.853012, 32.513454, 21.728800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556591, 32.249638, 21.678452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185953, 0.021464, 0.982324,
		-0.645179, 0.751364, -0.138549,
		-0.741057, -0.659539, -0.125870,
		38.334274, 32.051777, 21.640690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329647, 32.795837, 22.129463>,  <38.853012, 32.513454, 21.728800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329647, 32.795837, 22.129463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.182030, 32.430305, 22.061670>,  <38.093460, 32.210987, 22.020994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.182030, 32.430305, 22.061670>,  <38.329647, 32.795837, 22.129463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182030, 32.430305, 22.061670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428832, 0.005637, 0.903367,
		-0.824568, 0.406057, -0.393960,
		-0.369040, -0.913830, -0.169482,
		38.071320, 32.156155, 22.010826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658035, 32.822495, 22.345179>,  <38.329647, 32.795837, 22.129463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658035, 32.822495, 22.345179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.761158, 32.436508, 22.364653>,  <37.823032, 32.204914, 22.376337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.761158, 32.436508, 22.364653>,  <37.658035, 32.822495, 22.345179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761158, 32.436508, 22.364653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208692, -0.006414, 0.977960,
		-0.943389, -0.262288, -0.203035,
		0.257810, -0.964969, 0.048686,
		37.838501, 32.147018, 22.379259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286781, 32.632862, 22.899282>,  <37.658035, 32.822495, 22.345179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286781, 32.632862, 22.899282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.511028, 32.305988, 22.845745>,  <37.645576, 32.109863, 22.813622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.511028, 32.305988, 22.845745>,  <37.286781, 32.632862, 22.899282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511028, 32.305988, 22.845745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271691, -0.334208, 0.902490,
		-0.782233, -0.469590, -0.409386,
		0.560620, -0.817185, -0.133845,
		37.679214, 32.060833, 22.805592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924267, 32.030464, 23.102848>,  <37.286781, 32.632862, 22.899282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924267, 32.030464, 23.102848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297497, 31.894310, 23.149336>,  <37.521435, 31.812618, 23.177229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.297497, 31.894310, 23.149336>,  <36.924267, 32.030464, 23.102848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297497, 31.894310, 23.149336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252359, -0.389313, 0.885861,
		-0.256284, -0.855906, -0.449158,
		0.933077, -0.340381, 0.116221,
		37.577419, 31.792196, 23.184202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451431, 31.560068, 22.728022>,  <36.924267, 32.030464, 23.102848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451431, 31.560068, 22.728022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058578, 31.508631, 22.782991>,  <35.822868, 31.477768, 22.815973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058578, 31.508631, 22.782991>,  <36.451431, 31.560068, 22.728022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058578, 31.508631, 22.782991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156357, 0.151073, -0.976079,
		0.104751, -0.980123, -0.168479,
		-0.982130, -0.128588, 0.137424,
		35.763939, 31.470053, 22.824219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307030, 31.038244, 22.296009>,  <36.451431, 31.560068, 22.728022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307030, 31.038244, 22.296009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969322, 31.241125, 22.365234>,  <35.766697, 31.362854, 22.406771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969322, 31.241125, 22.365234>,  <36.307030, 31.038244, 22.296009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969322, 31.241125, 22.365234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072301, 0.212182, -0.974552,
		-0.531017, -0.835299, -0.142468,
		-0.844271, 0.507203, 0.173065,
		35.716042, 31.393286, 22.417154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793697, 30.856073, 21.750366>,  <36.307030, 31.038244, 22.296009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793697, 30.856073, 21.750366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.669804, 31.213474, 21.880424>,  <35.595467, 31.427914, 21.958460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.669804, 31.213474, 21.880424>,  <35.793697, 30.856073, 21.750366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669804, 31.213474, 21.880424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330288, 0.219561, -0.917989,
		-0.891613, -0.391726, 0.227107,
		-0.309736, 0.893501, 0.325146,
		35.576881, 31.481525, 21.977968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073891, 30.937860, 21.503613>,  <35.793697, 30.856073, 21.750366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073891, 30.937860, 21.503613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206924, 31.307631, 21.578259>,  <35.286743, 31.529493, 21.623047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206924, 31.307631, 21.578259>,  <35.073891, 30.937860, 21.503613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206924, 31.307631, 21.578259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220748, 0.268692, -0.937590,
		-0.916875, 0.270631, 0.293428,
		0.332583, 0.924426, 0.186615,
		35.306698, 31.584959, 21.634243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512516, 31.467569, 21.207916>,  <35.073891, 30.937860, 21.503613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512516, 31.467569, 21.207916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.861034, 31.661013, 21.241299>,  <35.070145, 31.777079, 21.261328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.861034, 31.661013, 21.241299>,  <34.512516, 31.467569, 21.207916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861034, 31.661013, 21.241299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064247, 0.280999, -0.957555,
		-0.486534, 0.828952, 0.275904,
		0.871296, 0.483609, 0.083457,
		35.122425, 31.806095, 21.266336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418350, 31.946016, 20.741360>,  <34.512516, 31.467569, 21.207916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418350, 31.946016, 20.741360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.804638, 32.027004, 20.806337>,  <35.036411, 32.075596, 20.845324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.804638, 32.027004, 20.806337>,  <34.418350, 31.946016, 20.741360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804638, 32.027004, 20.806337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049272, 0.471436, -0.880523,
		-0.254861, 0.858344, 0.445300,
		0.965722, 0.202470, 0.162443,
		35.094353, 32.087746, 20.855070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540016, 32.709259, 20.715498>,  <34.418350, 31.946016, 20.741360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540016, 32.709259, 20.715498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881351, 32.518303, 20.631676>,  <35.086151, 32.403728, 20.581383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881351, 32.518303, 20.631676>,  <34.540016, 32.709259, 20.715498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881351, 32.518303, 20.631676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004971, 0.394469, -0.918896,
		0.521335, 0.785170, 0.334242,
		0.853338, -0.477391, -0.209554,
		35.137352, 32.375084, 20.568810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391598, 33.386856, 20.835915>,  <34.540016, 32.709259, 20.715498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391598, 33.386856, 20.835915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.019035, 33.479584, 20.723665>,  <33.795498, 33.535221, 20.656315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.019035, 33.479584, 20.723665>,  <34.391598, 33.386856, 20.835915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019035, 33.479584, 20.723665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337177, -0.259062, 0.905096,
		0.137117, 0.937629, 0.319455,
		-0.931402, 0.231817, -0.280625,
		33.739616, 33.549129, 20.639479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145210, 33.886562, 21.327856>,  <34.391598, 33.386856, 20.835915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145210, 33.886562, 21.327856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851940, 33.681034, 21.149672>,  <33.675976, 33.557716, 21.042761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851940, 33.681034, 21.149672>,  <34.145210, 33.886562, 21.327856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851940, 33.681034, 21.149672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226618, -0.433003, 0.872440,
		-0.641164, 0.740605, 0.201028,
		-0.733180, -0.513821, -0.445461,
		33.631985, 33.526886, 21.016033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553078, 33.914192, 21.753168>,  <34.145210, 33.886562, 21.327856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553078, 33.914192, 21.753168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.427319, 33.616261, 21.517752>,  <33.351864, 33.437500, 21.376501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.427319, 33.616261, 21.517752>,  <33.553078, 33.914192, 21.753168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427319, 33.616261, 21.517752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479024, -0.410780, 0.775755,
		-0.819568, 0.525819, -0.227645,
		-0.314394, -0.744831, -0.588543,
		33.333000, 33.392811, 21.341188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812775, 33.879887, 21.892996>,  <33.553078, 33.914192, 21.753168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812775, 33.879887, 21.892996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943974, 33.538174, 21.731686>,  <33.022694, 33.333145, 21.634899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.943974, 33.538174, 21.731686>,  <32.812775, 33.879887, 21.892996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943974, 33.538174, 21.731686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248430, -0.489864, 0.835653,
		-0.911429, -0.173903, -0.372900,
		0.327993, -0.854278, -0.403273,
		33.042370, 33.281891, 21.610704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271217, 33.343822, 21.863764>,  <32.812775, 33.879887, 21.892996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271217, 33.343822, 21.863764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579048, 33.088619, 21.853275>,  <32.763748, 32.935497, 21.846981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579048, 33.088619, 21.853275>,  <32.271217, 33.343822, 21.863764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579048, 33.088619, 21.853275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416187, -0.532312, 0.737179,
		-0.484287, -0.556405, -0.675189,
		0.769581, -0.638011, -0.026223,
		32.809921, 32.897217, 21.845407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931995, 32.651741, 21.917419>,  <32.271217, 33.343822, 21.863764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931995, 32.651741, 21.917419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312199, 32.597691, 22.029331>,  <32.540321, 32.565258, 22.096478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312199, 32.597691, 22.029331>,  <31.931995, 32.651741, 21.917419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312199, 32.597691, 22.029331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297296, -0.657207, 0.692599,
		0.090282, -0.741498, -0.664854,
		0.950507, -0.135129, 0.279779,
		32.597351, 32.557152, 22.113264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010426, 31.961542, 22.096035>,  <31.931995, 32.651741, 21.917419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010426, 31.961542, 22.096035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337467, 32.122005, 22.261251>,  <32.533691, 32.218285, 22.360380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.337467, 32.122005, 22.261251>,  <32.010426, 31.961542, 22.096035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337467, 32.122005, 22.261251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142032, -0.554666, 0.819861,
		0.557994, -0.728983, -0.396518,
		0.817600, 0.401159, 0.413040,
		32.582748, 32.242352, 22.385164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.623970, 38.040154, 20.035215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.703869, 37.652401, 19.978081>,  <35.751808, 37.419750, 19.943800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.703869, 37.652401, 19.978081>,  <35.623970, 38.040154, 20.035215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703869, 37.652401, 19.978081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132537, -0.171166, 0.976287,
		-0.970842, -0.176083, -0.162670,
		0.199751, -0.969379, -0.142837,
		35.763794, 37.361588, 19.935230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178921, 37.652138, 20.461199>,  <35.623970, 38.040154, 20.035215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178921, 37.652138, 20.461199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.492237, 37.418713, 20.375494>,  <35.680225, 37.278656, 20.324072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.492237, 37.418713, 20.375494>,  <35.178921, 37.652138, 20.461199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492237, 37.418713, 20.375494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157005, -0.147783, 0.976478,
		-0.601503, -0.798506, -0.024134,
		0.783290, -0.583566, -0.214261,
		35.727222, 37.243645, 20.311216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039986, 36.917217, 20.798479>,  <35.178921, 37.652138, 20.461199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039986, 36.917217, 20.798479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.421207, 37.004696, 20.714705>,  <35.649940, 37.057182, 20.664440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.421207, 37.004696, 20.714705>,  <35.039986, 36.917217, 20.798479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421207, 37.004696, 20.714705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261160, -0.243598, 0.934053,
		0.153253, -0.944898, -0.289276,
		0.953053, 0.218694, -0.209438,
		35.707123, 37.070305, 20.651873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353168, 36.356327, 21.049603>,  <35.039986, 36.917217, 20.798479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353168, 36.356327, 21.049603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.617619, 36.656429, 21.047375>,  <35.776291, 36.836491, 21.046038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.617619, 36.656429, 21.047375>,  <35.353168, 36.356327, 21.049603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617619, 36.656429, 21.047375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179428, -0.150897, 0.972129,
		0.728503, -0.643701, -0.234379,
		0.661127, 0.750253, -0.005569,
		35.815956, 36.881504, 21.045704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986820, 36.111309, 21.444853>,  <35.353168, 36.356327, 21.049603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986820, 36.111309, 21.444853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.011288, 36.510559, 21.446108>,  <36.025967, 36.750107, 21.446861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.011288, 36.510559, 21.446108>,  <35.986820, 36.111309, 21.444853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011288, 36.510559, 21.446108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053677, -0.006428, 0.998538,
		0.996683, -0.060912, -0.053970,
		0.061170, 0.998123, 0.003138,
		36.029640, 36.809998, 21.447048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228111, 36.149281, 22.033653>,  <35.986820, 36.111309, 21.444853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228111, 36.149281, 22.033653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.134045, 36.530151, 21.955629>,  <36.077602, 36.758675, 21.908815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.134045, 36.530151, 21.955629>,  <36.228111, 36.149281, 22.033653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134045, 36.530151, 21.955629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083559, 0.180140, 0.980085,
		0.968356, 0.246786, 0.037200,
		-0.235170, 0.952180, -0.195061,
		36.063492, 36.815804, 21.897112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790440, 36.669548, 22.328186>,  <36.228111, 36.149281, 22.033653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790440, 36.669548, 22.328186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.429993, 36.837650, 22.285536>,  <36.213722, 36.938511, 22.259945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.429993, 36.837650, 22.285536>,  <36.790440, 36.669548, 22.328186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429993, 36.837650, 22.285536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017074, 0.211343, 0.977263,
		0.433233, 0.882452, -0.183270,
		-0.901120, 0.420254, -0.106627,
		36.159657, 36.963726, 22.253548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784077, 37.077641, 22.875690>,  <36.790440, 36.669548, 22.328186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784077, 37.077641, 22.875690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.401890, 37.124458, 22.767332>,  <36.172577, 37.152550, 22.702318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.401890, 37.124458, 22.767332>,  <36.784077, 37.077641, 22.875690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401890, 37.124458, 22.767332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209987, 0.375310, 0.902800,
		0.207339, 0.919480, -0.334018,
		-0.955467, 0.117046, -0.270895,
		36.115250, 37.159573, 22.686064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485680, 37.709671, 23.145773>,  <36.784077, 37.077641, 22.875690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485680, 37.709671, 23.145773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.165848, 37.479927, 23.075594>,  <35.973949, 37.342079, 23.033487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.165848, 37.479927, 23.075594>,  <36.485680, 37.709671, 23.145773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165848, 37.479927, 23.075594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335870, 0.185488, 0.923464,
		-0.497859, 0.797310, -0.341223,
		-0.799580, -0.574361, -0.175446,
		35.925972, 37.307617, 23.022961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993374, 38.019611, 23.482883>,  <36.485680, 37.709671, 23.145773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993374, 38.019611, 23.482883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.850914, 37.648964, 23.434643>,  <35.765438, 37.426575, 23.405699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.850914, 37.648964, 23.434643>,  <35.993374, 38.019611, 23.482883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850914, 37.648964, 23.434643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230572, -0.037929, 0.972316,
		-0.905536, 0.374096, -0.200142,
		-0.356148, -0.926614, -0.120602,
		35.744068, 37.370979, 23.398462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236233, 38.046822, 23.599632>,  <35.993374, 38.019611, 23.482883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236233, 38.046822, 23.599632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.375164, 37.677395, 23.664610>,  <35.458523, 37.455738, 23.703596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.375164, 37.677395, 23.664610>,  <35.236233, 38.046822, 23.599632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375164, 37.677395, 23.664610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278057, 0.064004, 0.958430,
		-0.895570, -0.378060, -0.234573,
		0.347331, -0.923566, 0.162443,
		35.479362, 37.400326, 23.713343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643883, 37.772266, 23.951801>,  <35.236233, 38.046822, 23.599632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643883, 37.772266, 23.951801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.931206, 37.500668, 24.012463>,  <35.103600, 37.337708, 24.048859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.931206, 37.500668, 24.012463>,  <34.643883, 37.772266, 23.951801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931206, 37.500668, 24.012463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349165, -0.163290, 0.922724,
		-0.601767, -0.715747, -0.354375,
		0.718303, -0.679001, 0.151652,
		35.146698, 37.296967, 24.057959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294094, 37.254486, 23.543728>,  <34.643883, 37.772266, 23.951801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294094, 37.254486, 23.543728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.899075, 37.273357, 23.483698>,  <33.662064, 37.284679, 23.447680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.899075, 37.273357, 23.483698>,  <34.294094, 37.254486, 23.543728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899075, 37.273357, 23.483698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154239, 0.102621, -0.982690,
		-0.030959, -0.993601, -0.108619,
		-0.987548, 0.047176, -0.150075,
		33.602810, 37.287510, 23.438675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143875, 36.750530, 22.987474>,  <34.294094, 37.254486, 23.543728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143875, 36.750530, 22.987474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.843010, 37.013721, 23.001945>,  <33.662491, 37.171638, 23.010628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.843010, 37.013721, 23.001945>,  <34.143875, 36.750530, 22.987474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843010, 37.013721, 23.001945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136414, -0.101761, -0.985412,
		-0.644702, -0.746126, 0.166299,
		-0.752164, 0.657982, 0.036177,
		33.617359, 37.211117, 23.012798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648796, 36.530037, 22.503090>,  <34.143875, 36.750530, 22.987474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648796, 36.530037, 22.503090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.624081, 36.926430, 22.550640>,  <33.609249, 37.164265, 22.579170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.624081, 36.926430, 22.550640>,  <33.648796, 36.530037, 22.503090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624081, 36.926430, 22.550640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203168, 0.104120, -0.973592,
		-0.977192, -0.084312, 0.194903,
		-0.061792, 0.990985, 0.118874,
		33.605541, 37.223724, 22.586302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012070, 36.396233, 22.230923>,  <33.648796, 36.530037, 22.503090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012070, 36.396233, 22.230923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.131058, 36.777836, 22.216059>,  <33.202450, 37.006798, 22.207140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.131058, 36.777836, 22.216059>,  <33.012070, 36.396233, 22.230923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131058, 36.777836, 22.216059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091118, -0.067114, -0.993576,
		-0.950373, 0.292174, -0.106891,
		0.297471, 0.954007, -0.037161,
		33.220299, 37.064037, 22.204910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640728, 36.644726, 21.625231>,  <33.012070, 36.396233, 22.230923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640728, 36.644726, 21.625231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.922241, 36.922291, 21.686125>,  <33.091148, 37.088829, 21.722660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.922241, 36.922291, 21.686125>,  <32.640728, 36.644726, 21.625231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922241, 36.922291, 21.686125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056903, 0.158538, -0.985712,
		-0.708129, 0.702393, 0.072091,
		0.703786, 0.693909, 0.152233,
		33.133377, 37.130463, 21.731794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480736, 37.210800, 21.262405>,  <32.640728, 36.644726, 21.625231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480736, 37.210800, 21.262405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.877281, 37.233257, 21.309801>,  <33.115208, 37.246731, 21.338238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.877281, 37.233257, 21.309801>,  <32.480736, 37.210800, 21.262405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877281, 37.233257, 21.309801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108651, 0.154063, -0.982069,
		-0.073390, 0.986465, 0.146633,
		0.991367, 0.056143, 0.118487,
		33.174690, 37.250099, 21.345346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568180, 37.804085, 20.975304>,  <32.480736, 37.210800, 21.262405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568180, 37.804085, 20.975304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.934059, 37.642502, 20.980198>,  <33.153587, 37.545551, 20.983133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.934059, 37.642502, 20.980198>,  <32.568180, 37.804085, 20.975304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934059, 37.642502, 20.980198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119650, 0.241765, -0.962930,
		0.386026, 0.882251, 0.269475,
		0.914696, -0.403959, 0.012233,
		33.208469, 37.521313, 20.983868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900879, 38.084675, 20.351965>,  <32.568180, 37.804085, 20.975304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900879, 38.084675, 20.351965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.118881, 37.765396, 20.454611>,  <33.249683, 37.573830, 20.516199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.118881, 37.765396, 20.454611>,  <32.900879, 38.084675, 20.351965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118881, 37.765396, 20.454611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260271, -0.129879, -0.956761,
		0.797009, 0.588233, 0.136962,
		0.545010, -0.798194, 0.256614,
		33.282383, 37.525936, 20.531595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586109, 38.253189, 20.108715>,  <32.900879, 38.084675, 20.351965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586109, 38.253189, 20.108715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.566708, 37.855492, 20.146936>,  <33.555069, 37.616875, 20.169868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.566708, 37.855492, 20.146936>,  <33.586109, 38.253189, 20.108715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566708, 37.855492, 20.146936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245934, -0.104607, -0.963625,
		0.968072, -0.023235, 0.249592,
		-0.048499, -0.994242, 0.095553,
		33.552158, 37.557220, 20.175602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253620, 37.959862, 19.679817>,  <33.586109, 38.253189, 20.108715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253620, 37.959862, 19.679817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.985054, 37.666176, 19.720087>,  <33.823914, 37.489964, 19.744249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.985054, 37.666176, 19.720087>,  <34.253620, 37.959862, 19.679817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985054, 37.666176, 19.720087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199805, -0.310161, -0.929451,
		0.713642, -0.603928, 0.354946,
		-0.671412, -0.734215, 0.100675,
		33.783630, 37.445911, 19.750290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641109, 37.297256, 19.512743>,  <34.253620, 37.959862, 19.679817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641109, 37.297256, 19.512743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255802, 37.220242, 19.437853>,  <34.024620, 37.174034, 19.392920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.255802, 37.220242, 19.437853>,  <34.641109, 37.297256, 19.512743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255802, 37.220242, 19.437853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241351, -0.314888, -0.917930,
		0.117779, -0.929395, 0.349789,
		-0.963264, -0.192535, -0.187223,
		33.966824, 37.162479, 19.381685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621441, 36.685802, 19.119148>,  <34.641109, 37.297256, 19.512743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621441, 36.685802, 19.119148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.275204, 36.874241, 19.051235>,  <34.067463, 36.987305, 19.010487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.275204, 36.874241, 19.051235>,  <34.621441, 36.685802, 19.119148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275204, 36.874241, 19.051235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080659, -0.203465, -0.975754,
		-0.494215, -0.858297, 0.138120,
		-0.865590, 0.471091, -0.169785,
		34.015526, 37.015568, 19.000299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114140, 36.150688, 18.750299>,  <34.621441, 36.685802, 19.119148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114140, 36.150688, 18.750299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.025272, 36.529736, 18.658512>,  <33.971951, 36.757164, 18.603439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.025272, 36.529736, 18.658512>,  <34.114140, 36.150688, 18.750299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025272, 36.529736, 18.658512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106211, -0.210429, -0.971822,
		-0.969205, -0.240283, -0.053896,
		-0.222171, 0.947620, -0.229470,
		33.958622, 36.814022, 18.589672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621445, 36.071289, 18.233353>,  <34.114140, 36.150688, 18.750299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621445, 36.071289, 18.233353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.531116, 35.728336, 18.048355>,  <33.476917, 35.522564, 17.937357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.531116, 35.728336, 18.048355>,  <33.621445, 36.071289, 18.233353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531116, 35.728336, 18.048355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162485, -0.434956, 0.885670,
		-0.960522, 0.275153, -0.041089,
		-0.225823, -0.857382, -0.462493,
		33.463371, 35.471123, 17.909607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050808, 35.841373, 18.596575>,  <33.621445, 36.071289, 18.233353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050808, 35.841373, 18.596575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.196564, 35.515892, 18.415419>,  <33.284019, 35.320602, 18.306725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.196564, 35.515892, 18.415419>,  <33.050808, 35.841373, 18.596575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196564, 35.515892, 18.415419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131490, -0.526414, 0.839999,
		-0.921916, -0.246539, -0.298814,
		0.364392, -0.813700, -0.452892,
		33.305882, 35.271782, 18.279551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584946, 35.333088, 18.644960>,  <33.050808, 35.841373, 18.596575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584946, 35.333088, 18.644960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.927208, 35.135136, 18.584364>,  <33.132565, 35.016365, 18.548006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.927208, 35.135136, 18.584364>,  <32.584946, 35.333088, 18.644960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927208, 35.135136, 18.584364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170579, -0.546016, 0.820225,
		-0.488627, -0.675990, -0.551618,
		0.855656, -0.494879, -0.151488,
		33.183903, 34.986671, 18.538918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329082, 34.604809, 18.727739>,  <32.584946, 35.333088, 18.644960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329082, 34.604809, 18.727739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.725445, 34.635525, 18.771942>,  <32.963261, 34.653954, 18.798464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.725445, 34.635525, 18.771942>,  <32.329082, 34.604809, 18.727739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725445, 34.635525, 18.771942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037174, -0.633054, 0.773215,
		0.129332, -0.770290, -0.624441,
		0.990904, 0.076788, 0.110509,
		33.022717, 34.658562, 18.805096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508492, 33.920567, 18.926535>,  <32.329082, 34.604809, 18.727739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508492, 33.920567, 18.926535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.820354, 34.150257, 19.026457>,  <33.007473, 34.288071, 19.086411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.820354, 34.150257, 19.026457>,  <32.508492, 33.920567, 18.926535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820354, 34.150257, 19.026457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124476, -0.533064, 0.836868,
		0.613715, -0.621372, -0.487083,
		0.779653, 0.574229, 0.249804,
		33.054249, 34.322525, 19.101398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103901, 33.436035, 18.987667>,  <32.508492, 33.920567, 18.926535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103901, 33.436035, 18.987667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.197433, 33.769249, 19.188215>,  <33.253551, 33.969177, 19.308544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.197433, 33.769249, 19.188215>,  <33.103901, 33.436035, 18.987667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197433, 33.769249, 19.188215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401496, -0.552377, 0.730535,
		0.885508, 0.030477, -0.463623,
		0.233830, 0.833037, 0.501370,
		33.267582, 34.019161, 19.338627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663525, 33.216534, 19.368912>,  <33.103901, 33.436035, 18.987667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663525, 33.216534, 19.368912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.554634, 33.556499, 19.549374>,  <33.489300, 33.760479, 19.657652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.554634, 33.556499, 19.549374>,  <33.663525, 33.216534, 19.368912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554634, 33.556499, 19.549374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278097, -0.379363, 0.882466,
		0.921169, 0.365700, -0.133083,
		-0.272231, 0.849910, 0.451157,
		33.472965, 33.811474, 19.684721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294693, 33.455025, 19.826303>,  <33.663525, 33.216534, 19.368912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294693, 33.455025, 19.826303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.953728, 33.607800, 19.969137>,  <33.749149, 33.699463, 20.054838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.953728, 33.607800, 19.969137>,  <34.294693, 33.455025, 19.826303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953728, 33.607800, 19.969137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178341, -0.429605, 0.885231,
		0.491508, 0.818269, 0.298087,
		-0.852417, 0.381937, 0.357085,
		33.698002, 33.722382, 20.076263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907745, 33.144558, 20.282021>,  <34.294693, 33.455025, 19.826303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907745, 33.144558, 20.282021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094105, 32.798641, 20.207102>,  <35.205921, 32.591091, 20.162149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.094105, 32.798641, 20.207102>,  <34.907745, 33.144558, 20.282021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094105, 32.798641, 20.207102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226089, 0.320995, -0.919699,
		0.855466, 0.386141, 0.345070,
		0.465899, -0.864788, -0.187298,
		35.233875, 32.539204, 20.150913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461639, 33.399155, 19.967091>,  <34.907745, 33.144558, 20.282021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461639, 33.399155, 19.967091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.447887, 33.008297, 19.883186>,  <35.439636, 32.773781, 19.832844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.447887, 33.008297, 19.883186>,  <35.461639, 33.399155, 19.967091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447887, 33.008297, 19.883186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182933, 0.200187, -0.962528,
		0.982524, -0.071462, 0.171871,
		-0.034378, -0.977148, -0.209762,
		35.437572, 32.715153, 19.820257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056499, 33.332394, 19.548470>,  <35.461639, 33.399155, 19.967091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056499, 33.332394, 19.548470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.807095, 33.028297, 19.475513>,  <35.657452, 32.845840, 19.431740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.807095, 33.028297, 19.475513>,  <36.056499, 33.332394, 19.548470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807095, 33.028297, 19.475513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100846, 0.153136, -0.983046,
		0.775283, -0.631334, -0.018815,
		-0.623512, -0.760242, -0.182391,
		35.620041, 32.800224, 19.420795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359844, 32.775326, 19.167353>,  <36.056499, 33.332394, 19.548470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359844, 32.775326, 19.167353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.984825, 32.665089, 19.082458>,  <35.759811, 32.598946, 19.031521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.984825, 32.665089, 19.082458>,  <36.359844, 32.775326, 19.167353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984825, 32.665089, 19.082458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242077, -0.078797, -0.967052,
		0.249793, -0.958038, 0.140592,
		-0.937551, -0.275596, -0.212236,
		35.703560, 32.582409, 19.018787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448711, 32.287521, 18.651398>,  <36.359844, 32.775326, 19.167353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448711, 32.287521, 18.651398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059879, 32.376305, 18.620958>,  <35.826580, 32.429577, 18.602695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059879, 32.376305, 18.620958>,  <36.448711, 32.287521, 18.651398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059879, 32.376305, 18.620958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060220, -0.077447, -0.995176,
		-0.226784, -0.971975, 0.061918,
		-0.972081, 0.221962, -0.076096,
		35.768253, 32.442894, 18.598129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123116, 31.836693, 18.282021>,  <36.448711, 32.287521, 18.651398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123116, 31.836693, 18.282021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.903023, 32.169369, 18.252266>,  <35.770966, 32.368973, 18.234413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.903023, 32.169369, 18.252266>,  <36.123116, 31.836693, 18.282021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903023, 32.169369, 18.252266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234657, 0.068520, -0.969660,
		-0.801359, -0.550998, -0.232864,
		-0.550236, 0.831689, -0.074386,
		35.737953, 32.418877, 18.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771210, 31.782623, 17.635660>,  <36.123116, 31.836693, 18.282021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771210, 31.782623, 17.635660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.795712, 32.171909, 17.724295>,  <35.810413, 32.405479, 17.777475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.795712, 32.171909, 17.724295>,  <35.771210, 31.782623, 17.635660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795712, 32.171909, 17.724295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401826, 0.179174, -0.898016,
		-0.913665, 0.144051, -0.380087,
		0.061259, 0.973214, 0.221589,
		35.814091, 32.463875, 17.790771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613182, 32.107285, 17.051777>,  <35.771210, 31.782623, 17.635660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613182, 32.107285, 17.051777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758564, 32.416973, 17.259039>,  <35.845795, 32.602787, 17.383396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758564, 32.416973, 17.259039>,  <35.613182, 32.107285, 17.051777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758564, 32.416973, 17.259039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260532, 0.449528, -0.854428,
		-0.894440, 0.445542, -0.038326,
		0.363455, 0.774220, 0.518154,
		35.867599, 32.649239, 17.414486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509140, 32.717480, 16.726662>,  <35.613182, 32.107285, 17.051777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509140, 32.717480, 16.726662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839970, 32.750443, 16.949070>,  <36.038467, 32.770222, 17.082516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839970, 32.750443, 16.949070>,  <35.509140, 32.717480, 16.726662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839970, 32.750443, 16.949070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436973, 0.527943, -0.728238,
		-0.353562, 0.845272, 0.400636,
		0.827073, 0.082410, 0.556021,
		36.088093, 32.775166, 17.115877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.729969, 30.769501, 33.188126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090504, 30.928246, 33.118748>,  <35.306824, 31.023493, 33.077122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.090504, 30.928246, 33.118748>,  <34.729969, 30.769501, 33.188126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090504, 30.928246, 33.118748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142969, -0.105391, -0.984100,
		-0.408833, 0.911807, -0.038254,
		0.901341, 0.396863, -0.173447,
		35.360905, 31.047304, 33.066715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556095, 31.282450, 32.615871>,  <34.729969, 30.769501, 33.188126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556095, 31.282450, 32.615871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948009, 31.207726, 32.587254>,  <35.183159, 31.162891, 32.570084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948009, 31.207726, 32.587254>,  <34.556095, 31.282450, 32.615871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948009, 31.207726, 32.587254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093499, -0.111507, -0.989355,
		0.176846, 0.976047, -0.126720,
		0.979788, -0.186811, -0.071540,
		35.241947, 31.151682, 32.565792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810711, 31.794167, 32.222160>,  <34.556095, 31.282450, 32.615871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810711, 31.794167, 32.222160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051994, 31.477503, 32.183357>,  <35.196766, 31.287504, 32.160076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051994, 31.477503, 32.183357>,  <34.810711, 31.794167, 32.222160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051994, 31.477503, 32.183357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093005, 0.050974, -0.994360,
		0.792141, 0.608830, -0.042880,
		0.603211, -0.791661, -0.097003,
		35.232956, 31.240004, 32.154255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306694, 32.023804, 31.644253>,  <34.810711, 31.794167, 32.222160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306694, 32.023804, 31.644253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320862, 31.625671, 31.680161>,  <35.329361, 31.386791, 31.701706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.320862, 31.625671, 31.680161>,  <35.306694, 32.023804, 31.644253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320862, 31.625671, 31.680161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092198, -0.092698, -0.991417,
		0.995111, 0.026835, -0.095051,
		0.035415, -0.995333, 0.089771,
		35.331486, 31.327072, 31.707092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497471, 31.913521, 31.012354>,  <35.306694, 32.023804, 31.644253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497471, 31.913521, 31.012354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429295, 31.551146, 31.167389>,  <35.388390, 31.333719, 31.260410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429295, 31.551146, 31.167389>,  <35.497471, 31.913521, 31.012354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429295, 31.551146, 31.167389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112889, -0.372799, -0.921019,
		0.978880, -0.200731, -0.038731,
		-0.170438, -0.905940, 0.387586,
		35.378162, 31.279364, 31.283665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968956, 31.439995, 30.673695>,  <35.497471, 31.913521, 31.012354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968956, 31.439995, 30.673695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630257, 31.268089, 30.799118>,  <35.427036, 31.164946, 30.874372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630257, 31.268089, 30.799118>,  <35.968956, 31.439995, 30.673695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630257, 31.268089, 30.799118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131404, -0.402184, -0.906080,
		0.515509, -0.808425, 0.284076,
		-0.846749, -0.429764, 0.313560,
		35.376232, 31.139160, 30.893187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973068, 30.730911, 30.464043>,  <35.968956, 31.439995, 30.673695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973068, 30.730911, 30.464043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586334, 30.814138, 30.523281>,  <35.354294, 30.864075, 30.558825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.586334, 30.814138, 30.523281>,  <35.973068, 30.730911, 30.464043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586334, 30.814138, 30.523281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207866, -0.304218, -0.929647,
		-0.148372, -0.929602, 0.337380,
		-0.966839, 0.208064, 0.148095,
		35.296284, 30.876558, 30.567709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696712, 30.360992, 29.960567>,  <35.973068, 30.730911, 30.464043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696712, 30.360992, 29.960567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363010, 30.549664, 30.074791>,  <35.162788, 30.662867, 30.143326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363010, 30.549664, 30.074791>,  <35.696712, 30.360992, 29.960567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363010, 30.549664, 30.074791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462506, -0.316665, -0.828137,
		-0.300168, -0.822959, 0.482326,
		-0.834259, 0.471659, 0.285571,
		35.112736, 30.691168, 30.160460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187370, 29.949678, 29.774307>,  <35.696712, 30.360992, 29.960567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187370, 29.949678, 29.774307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.006783, 30.306049, 29.794004>,  <34.898430, 30.519873, 29.805822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.006783, 30.306049, 29.794004>,  <35.187370, 29.949678, 29.774307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006783, 30.306049, 29.794004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329765, -0.115319, -0.936993,
		-0.829114, -0.439262, 0.345860,
		-0.451469, 0.890927, 0.049241,
		34.871342, 30.573328, 29.808777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490807, 29.737343, 29.486288>,  <35.187370, 29.949678, 29.774307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490807, 29.737343, 29.486288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557529, 30.131699, 29.480717>,  <34.597565, 30.368313, 29.477375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557529, 30.131699, 29.480717>,  <34.490807, 29.737343, 29.486288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557529, 30.131699, 29.480717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113028, -0.033152, -0.993039,
		-0.979489, 0.164076, -0.116963,
		0.166812, 0.985891, -0.013927,
		34.607574, 30.427465, 29.476540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176941, 29.899366, 28.862152>,  <34.490807, 29.737343, 29.486288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176941, 29.899366, 28.862152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425194, 30.202293, 28.943430>,  <34.574146, 30.384050, 28.992197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425194, 30.202293, 28.943430>,  <34.176941, 29.899366, 28.862152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425194, 30.202293, 28.943430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201553, 0.096351, -0.974727,
		-0.757757, 0.645899, -0.092841,
		0.620630, 0.757318, 0.203193,
		34.611382, 30.429489, 29.004389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892941, 30.511536, 28.478926>,  <34.176941, 29.899366, 28.862152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892941, 30.511536, 28.478926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275681, 30.589598, 28.565050>,  <34.505325, 30.636435, 28.616724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.275681, 30.589598, 28.565050>,  <33.892941, 30.511536, 28.478926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275681, 30.589598, 28.565050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132597, 0.366092, -0.921083,
		-0.258577, 0.909885, 0.324417,
		0.956847, 0.195154, 0.215311,
		34.562737, 30.648144, 28.629644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496918, 31.172817, 28.746912>,  <33.892941, 30.511536, 28.478926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496918, 31.172817, 28.746912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156593, 31.379887, 28.710815>,  <32.952400, 31.504128, 28.689157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.156593, 31.379887, 28.710815>,  <33.496918, 31.172817, 28.746912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156593, 31.379887, 28.710815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033878, 0.225416, 0.973673,
		0.524385, 0.825351, -0.209323,
		-0.850807, 0.517672, -0.090244,
		32.901352, 31.535189, 28.683743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600853, 31.847830, 29.069115>,  <33.496918, 31.172817, 28.746912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600853, 31.847830, 29.069115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215981, 31.744032, 29.102274>,  <32.985058, 31.681753, 29.122169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215981, 31.744032, 29.102274>,  <33.600853, 31.847830, 29.069115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215981, 31.744032, 29.102274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038809, 0.170621, 0.984572,
		-0.269635, 0.950553, -0.154098,
		-0.962180, -0.259495, 0.082896,
		32.927326, 31.666183, 29.127142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233505, 32.335445, 29.498371>,  <33.600853, 31.847830, 29.069115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233505, 32.335445, 29.498371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.966160, 32.037910, 29.498074>,  <32.805752, 31.859388, 29.497894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.966160, 32.037910, 29.498074>,  <33.233505, 32.335445, 29.498371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966160, 32.037910, 29.498074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184821, 0.165098, 0.968805,
		-0.720512, 0.647647, -0.247821,
		-0.668359, -0.743838, -0.000743,
		32.765652, 31.814758, 29.497850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754551, 32.542664, 30.073156>,  <33.233505, 32.335445, 29.498371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754551, 32.542664, 30.073156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664455, 32.155148, 30.031742>,  <32.610397, 31.922638, 30.006893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.664455, 32.155148, 30.031742>,  <32.754551, 32.542664, 30.073156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664455, 32.155148, 30.031742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343716, -0.020423, 0.938852,
		-0.911661, 0.247053, -0.328387,
		-0.225240, -0.968787, -0.103535,
		32.596882, 31.864511, 30.000681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097878, 32.470211, 30.261728>,  <32.754551, 32.542664, 30.073156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097878, 32.470211, 30.261728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263302, 32.107872, 30.298397>,  <32.362556, 31.890469, 30.320398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.263302, 32.107872, 30.298397>,  <32.097878, 32.470211, 30.261728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263302, 32.107872, 30.298397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306717, -0.043812, 0.950792,
		-0.857258, -0.421327, -0.295959,
		0.413561, -0.905850, 0.091670,
		32.387371, 31.836117, 30.325897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596046, 32.178963, 30.622223>,  <32.097878, 32.470211, 30.261728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596046, 32.178963, 30.622223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.911795, 31.939747, 30.677713>,  <32.101246, 31.796219, 30.711008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.911795, 31.939747, 30.677713>,  <31.596046, 32.178963, 30.622223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911795, 31.939747, 30.677713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207152, -0.046747, 0.977191,
		-0.577909, -0.800105, -0.160785,
		0.789372, -0.598035, 0.138728,
		32.148605, 31.760336, 30.719332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336639, 31.607214, 31.070658>,  <31.596046, 32.178963, 30.622223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336639, 31.607214, 31.070658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733406, 31.605732, 31.121393>,  <31.971466, 31.604843, 31.151834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733406, 31.605732, 31.121393>,  <31.336639, 31.607214, 31.070658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733406, 31.605732, 31.121393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124154, 0.178195, 0.976131,
		-0.026220, -0.983988, 0.176295,
		0.991916, -0.003707, 0.126839,
		32.030979, 31.604620, 31.159445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578295, 31.201254, 31.665771>,  <31.336639, 31.607214, 31.070658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578295, 31.201254, 31.665771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898207, 31.438698, 31.630043>,  <32.090153, 31.581165, 31.608606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898207, 31.438698, 31.630043>,  <31.578295, 31.201254, 31.665771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898207, 31.438698, 31.630043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002022, 0.146129, 0.989264,
		0.600291, -0.791373, 0.115670,
		0.799779, 0.593612, -0.089320,
		32.138142, 31.616781, 31.603247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991522, 31.050365, 32.205097>,  <31.578295, 31.201254, 31.665771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991522, 31.050365, 32.205097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158394, 31.401682, 32.111660>,  <32.258518, 31.612471, 32.055595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158394, 31.401682, 32.111660>,  <31.991522, 31.050365, 32.205097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158394, 31.401682, 32.111660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081144, 0.220009, 0.972117,
		0.905193, -0.424505, 0.020516,
		0.417182, 0.878289, -0.233596,
		32.283550, 31.665169, 32.041580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588127, 31.130527, 32.654686>,  <31.991522, 31.050365, 32.205097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588127, 31.130527, 32.654686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488659, 31.496607, 32.527832>,  <32.428978, 31.716255, 32.451717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488659, 31.496607, 32.527832>,  <32.588127, 31.130527, 32.654686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488659, 31.496607, 32.527832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013837, 0.324033, 0.945945,
		0.968489, 0.239617, -0.067914,
		-0.248671, 0.915197, -0.317138,
		32.414059, 31.771166, 32.432690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160011, 31.596258, 32.886951>,  <32.588127, 31.130527, 32.654686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160011, 31.596258, 32.886951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824722, 31.800423, 32.810158>,  <32.623547, 31.922922, 32.764080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.824722, 31.800423, 32.810158>,  <33.160011, 31.596258, 32.886951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824722, 31.800423, 32.810158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078278, 0.235790, 0.968646,
		0.539676, 0.826972, -0.157692,
		-0.838226, 0.510412, -0.191984,
		32.573254, 31.953547, 32.752563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281338, 32.199318, 33.194427>,  <33.160011, 31.596258, 32.886951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281338, 32.199318, 33.194427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884682, 32.201359, 33.142853>,  <32.646687, 32.202583, 33.111908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884682, 32.201359, 33.142853>,  <33.281338, 32.199318, 33.194427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884682, 32.201359, 33.142853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121084, 0.308706, 0.943419,
		0.044615, 0.951144, -0.305507,
		-0.991639, 0.005099, -0.128941,
		32.587189, 32.202888, 33.104172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990189, 32.950733, 33.326206>,  <33.281338, 32.199318, 33.194427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990189, 32.950733, 33.326206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708717, 32.672390, 33.383652>,  <32.539837, 32.505386, 33.418118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.708717, 32.672390, 33.383652>,  <32.990189, 32.950733, 33.326206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708717, 32.672390, 33.383652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199737, 0.387705, 0.899883,
		-0.681869, 0.604541, -0.411807,
		-0.703676, -0.695855, 0.143615,
		32.497616, 32.463634, 33.426735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530323, 33.307560, 33.742939>,  <32.990189, 32.950733, 33.326206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530323, 33.307560, 33.742939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432789, 32.921432, 33.780254>,  <32.374268, 32.689754, 33.802643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432789, 32.921432, 33.780254>,  <32.530323, 33.307560, 33.742939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432789, 32.921432, 33.780254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195113, 0.143057, 0.970291,
		-0.949988, 0.218385, -0.223228,
		-0.243832, -0.965320, 0.093293,
		32.359638, 32.631836, 33.808243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315479, 33.833305, 33.325615>,  <32.530323, 33.307560, 33.742939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315479, 33.833305, 33.325615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.153324, 34.048328, 33.621368>,  <32.056030, 34.177341, 33.798820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.153324, 34.048328, 33.621368>,  <32.315479, 33.833305, 33.325615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153324, 34.048328, 33.621368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080549, 0.826687, -0.556867,
		-0.910589, -0.166190, -0.378429,
		-0.405388, 0.537559, 0.739386,
		32.031708, 34.209595, 33.843185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686939, 34.331635, 33.279457>,  <32.315479, 33.833305, 33.325615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686939, 34.331635, 33.279457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851763, 34.579556, 33.546608>,  <31.950657, 34.728310, 33.706898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.851763, 34.579556, 33.546608>,  <31.686939, 34.331635, 33.279457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851763, 34.579556, 33.546608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176293, 0.664911, -0.725819,
		-0.893941, 0.416820, 0.164715,
		0.412057, 0.619801, 0.667874,
		31.975380, 34.765495, 33.746971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343761, 35.023037, 33.464874>,  <31.686939, 34.331635, 33.279457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343761, 35.023037, 33.464874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742395, 35.041565, 33.492210>,  <31.981577, 35.052681, 33.508614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.742395, 35.041565, 33.492210>,  <31.343761, 35.023037, 33.464874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742395, 35.041565, 33.492210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041376, 0.436055, -0.898968,
		-0.071443, 0.898727, 0.432650,
		0.996586, 0.046324, 0.068339,
		32.041370, 35.055462, 33.512711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625097, 35.765614, 33.318268>,  <31.343761, 35.023037, 33.464874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625097, 35.765614, 33.318268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897034, 35.490372, 33.216816>,  <32.060196, 35.325226, 33.155945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897034, 35.490372, 33.216816>,  <31.625097, 35.765614, 33.318268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897034, 35.490372, 33.216816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119212, 0.444943, -0.887589,
		0.723606, 0.573183, 0.384520,
		0.679840, -0.688104, -0.253633,
		32.100986, 35.283939, 33.140724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045860, 36.077065, 32.831367>,  <31.625097, 35.765614, 33.318268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045860, 36.077065, 32.831367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174648, 35.700718, 32.789215>,  <32.251923, 35.474911, 32.763924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174648, 35.700718, 32.789215>,  <32.045860, 36.077065, 32.831367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174648, 35.700718, 32.789215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190998, 0.173569, -0.966123,
		0.927282, 0.290939, 0.235589,
		0.321974, -0.940866, -0.105379,
		32.271240, 35.418457, 32.757603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697727, 36.159679, 32.504360>,  <32.045860, 36.077065, 32.831367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697727, 36.159679, 32.504360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560440, 35.791279, 32.430649>,  <32.478065, 35.570240, 32.386421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560440, 35.791279, 32.430649>,  <32.697727, 36.159679, 32.504360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560440, 35.791279, 32.430649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119709, 0.151705, -0.981150,
		0.931595, -0.358810, 0.058184,
		-0.343220, -0.921000, -0.184280,
		32.457474, 35.514980, 32.375366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992260, 36.076839, 31.922304>,  <32.697727, 36.159679, 32.504360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992260, 36.076839, 31.922304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715385, 35.788349, 31.911591>,  <32.549263, 35.615253, 31.905163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.715385, 35.788349, 31.911591>,  <32.992260, 36.076839, 31.922304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715385, 35.788349, 31.911591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007540, 0.044339, -0.998988,
		0.721682, -0.691281, -0.036129,
		-0.692183, -0.721225, -0.026786,
		32.507729, 35.571983, 31.903555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270966, 35.617813, 31.454975>,  <32.992260, 36.076839, 31.922304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270966, 35.617813, 31.454975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873722, 35.581615, 31.484745>,  <32.635376, 35.559898, 31.502607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873722, 35.581615, 31.484745>,  <33.270966, 35.617813, 31.454975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873722, 35.581615, 31.484745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070012, -0.050995, -0.996242,
		0.093952, -0.994590, 0.044308,
		-0.993112, -0.090496, 0.074425,
		32.575787, 35.554466, 31.507072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115967, 35.092651, 30.904709>,  <33.270966, 35.617813, 31.454975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115967, 35.092651, 30.904709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789555, 35.309387, 30.985214>,  <32.593708, 35.439430, 31.033518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789555, 35.309387, 30.985214>,  <33.115967, 35.092651, 30.904709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789555, 35.309387, 30.985214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206518, 0.051900, -0.977065,
		-0.539857, -0.838879, 0.069547,
		-0.816030, 0.541839, 0.201262,
		32.544746, 35.471939, 31.045593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642044, 34.777981, 30.521410>,  <33.115967, 35.092651, 30.904709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642044, 34.777981, 30.521410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530350, 35.154755, 30.596010>,  <32.463333, 35.380821, 30.640770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.530350, 35.154755, 30.596010>,  <32.642044, 34.777981, 30.521410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530350, 35.154755, 30.596010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101317, 0.222043, -0.969758,
		-0.954864, -0.251891, -0.157436,
		-0.279231, 0.941938, 0.186500,
		32.446579, 35.437336, 30.651960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092625, 34.947983, 30.043829>,  <32.642044, 34.777981, 30.521410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092625, 34.947983, 30.043829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236301, 35.302582, 30.160515>,  <32.322506, 35.515343, 30.230526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.236301, 35.302582, 30.160515>,  <32.092625, 34.947983, 30.043829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236301, 35.302582, 30.160515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019791, 0.305270, -0.952060,
		-0.933055, 0.347743, 0.092105,
		0.359190, 0.886501, 0.291716,
		32.344059, 35.568531, 30.248030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641193, 35.385181, 29.709480>,  <32.092625, 34.947983, 30.043829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641193, 35.385181, 29.709480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957014, 35.616280, 29.792259>,  <32.146507, 35.754936, 29.841927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957014, 35.616280, 29.792259>,  <31.641193, 35.385181, 29.709480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957014, 35.616280, 29.792259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029900, 0.373035, -0.927335,
		-0.612958, 0.725989, 0.311804,
		0.789549, 0.577741, 0.206948,
		32.193878, 35.789600, 29.854343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450108, 36.063324, 29.607944>,  <31.641193, 35.385181, 29.709480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450108, 36.063324, 29.607944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.848757, 36.090405, 29.589361>,  <32.087948, 36.106651, 29.578211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.848757, 36.090405, 29.589361>,  <31.450108, 36.063324, 29.607944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848757, 36.090405, 29.589361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074707, 0.512918, -0.855181,
		-0.034066, 0.855764, 0.516244,
		0.996624, 0.067699, -0.046458,
		32.147743, 36.110714, 29.575424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493711, 36.613113, 29.236586>,  <31.450108, 36.063324, 29.607944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493711, 36.613113, 29.236586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869663, 36.476521, 29.235283>,  <32.095234, 36.394566, 29.234501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869663, 36.476521, 29.235283>,  <31.493711, 36.613113, 29.236586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869663, 36.476521, 29.235283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155098, 0.435337, -0.886807,
		0.304249, 0.832988, 0.462129,
		0.939882, -0.341485, -0.003256,
		32.151627, 36.374077, 29.234306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861361, 37.166695, 28.967150>,  <31.493711, 36.613113, 29.236586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861361, 37.166695, 28.967150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075459, 36.833721, 28.909779>,  <32.203918, 36.633938, 28.875357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075459, 36.833721, 28.909779>,  <31.861361, 37.166695, 28.967150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075459, 36.833721, 28.909779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099338, 0.230649, -0.967953,
		0.838835, 0.503845, 0.206146,
		0.535246, -0.832431, -0.143426,
		32.236031, 36.583992, 28.866751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364655, 37.437656, 28.489880>,  <31.861361, 37.166695, 28.967150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364655, 37.437656, 28.489880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361954, 37.038071, 28.471922>,  <32.360332, 36.798317, 28.461147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361954, 37.038071, 28.471922>,  <32.364655, 37.437656, 28.489880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361954, 37.038071, 28.471922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259381, 0.041607, -0.964879,
		0.965752, -0.018162, 0.258832,
		-0.006755, -0.998969, -0.044893,
		32.359928, 36.738380, 28.458454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987232, 37.226856, 28.233667>,  <32.364655, 37.437656, 28.489880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987232, 37.226856, 28.233667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749378, 36.916553, 28.149191>,  <32.606667, 36.730370, 28.098505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749378, 36.916553, 28.149191>,  <32.987232, 37.226856, 28.233667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749378, 36.916553, 28.149191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316431, 0.015664, -0.948486,
		0.739106, -0.630834, 0.236160,
		-0.594638, -0.775760, -0.211193,
		32.570988, 36.683826, 28.085833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331833, 36.903500, 27.858913>,  <32.987232, 37.226856, 28.233667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331833, 36.903500, 27.858913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985039, 36.731018, 27.759001>,  <32.776962, 36.627529, 27.699053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.985039, 36.731018, 27.759001>,  <33.331833, 36.903500, 27.858913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985039, 36.731018, 27.759001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336690, -0.137343, -0.931545,
		0.367383, -0.891738, 0.264258,
		-0.866988, -0.431207, -0.249782,
		32.724941, 36.601654, 27.684067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492790, 36.378502, 27.384094>,  <33.331833, 36.903500, 27.858913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492790, 36.378502, 27.384094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104202, 36.431614, 27.305489>,  <32.871048, 36.463482, 27.258326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.104202, 36.431614, 27.305489>,  <33.492790, 36.378502, 27.384094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104202, 36.431614, 27.305489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156402, -0.264200, -0.951702,
		-0.178286, -0.955284, 0.235895,
		-0.971470, 0.132781, -0.196512,
		32.812763, 36.471451, 27.246534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326973, 35.778404, 26.912357>,  <33.492790, 36.378502, 27.384094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326973, 35.778404, 26.912357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046879, 36.059757, 26.863476>,  <32.878822, 36.228569, 26.834146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046879, 36.059757, 26.863476>,  <33.326973, 35.778404, 26.912357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046879, 36.059757, 26.863476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102486, -0.070366, -0.992242,
		-0.706522, -0.707323, -0.022814,
		-0.700231, 0.703379, -0.122206,
		32.836811, 36.270771, 26.826815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873100, 35.513821, 26.439371>,  <33.326973, 35.778404, 26.912357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873100, 35.513821, 26.439371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834316, 35.911674, 26.424988>,  <32.811047, 36.150387, 26.416359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834316, 35.911674, 26.424988>,  <32.873100, 35.513821, 26.439371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834316, 35.911674, 26.424988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094641, -0.026749, -0.995152,
		-0.990779, -0.099889, -0.091540,
		-0.096956, 0.994639, -0.035956,
		32.805229, 36.210068, 26.414202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359867, 35.622879, 25.909819>,  <32.873100, 35.513821, 26.439371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359867, 35.622879, 25.909819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.556885, 35.969063, 25.946432>,  <32.675095, 36.176773, 25.968401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.556885, 35.969063, 25.946432>,  <32.359867, 35.622879, 25.909819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556885, 35.969063, 25.946432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153188, 0.017316, -0.988045,
		-0.856697, 0.500681, -0.124049,
		0.492548, 0.865458, 0.091533,
		32.704651, 36.228699, 25.973892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019405, 35.934048, 25.398457>,  <32.359867, 35.622879, 25.909819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019405, 35.934048, 25.398457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.360149, 36.126354, 25.481596>,  <32.564594, 36.241737, 25.531479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.360149, 36.126354, 25.481596>,  <32.019405, 35.934048, 25.398457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360149, 36.126354, 25.481596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153797, 0.149741, -0.976690,
		-0.500686, 0.863967, 0.053617,
		0.851857, 0.480769, 0.207849,
		32.615707, 36.270584, 25.543951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837671, 36.752609, 25.053211>,  <32.019405, 35.934048, 25.398457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837671, 36.752609, 25.053211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228519, 36.707741, 25.125490>,  <32.463028, 36.680820, 25.168858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228519, 36.707741, 25.125490>,  <31.837671, 36.752609, 25.053211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228519, 36.707741, 25.125490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212287, 0.462502, -0.860829,
		0.012988, 0.879494, 0.475733,
		0.977121, -0.112173, 0.180697,
		32.521656, 36.674088, 25.179699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129990, 37.428345, 24.979597>,  <31.837671, 36.752609, 25.053211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129990, 37.428345, 24.979597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426239, 37.166084, 24.920811>,  <32.603989, 37.008728, 24.885538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.426239, 37.166084, 24.920811>,  <32.129990, 37.428345, 24.979597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426239, 37.166084, 24.920811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272463, 0.492987, -0.826273,
		0.614199, 0.571915, 0.543759,
		0.740624, -0.655650, -0.146966,
		32.648426, 36.969391, 24.876720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711666, 37.834846, 24.817564>,  <32.129990, 37.428345, 24.979597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711666, 37.834846, 24.817564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800636, 37.465794, 24.691534>,  <32.854019, 37.244362, 24.615917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800636, 37.465794, 24.691534>,  <32.711666, 37.834846, 24.817564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800636, 37.465794, 24.691534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512630, 0.385566, -0.767170,
		0.829299, 0.009123, 0.558731,
		0.222426, -0.922635, -0.315073,
		32.867363, 37.189003, 24.597012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297050, 37.930347, 24.546583>,  <32.711666, 37.834846, 24.817564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297050, 37.930347, 24.546583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206001, 37.570133, 24.398407>,  <33.151371, 37.354004, 24.309502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206001, 37.570133, 24.398407>,  <33.297050, 37.930347, 24.546583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206001, 37.570133, 24.398407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505279, 0.215967, -0.835495,
		0.832394, -0.377355, 0.405861,
		-0.227626, -0.900534, -0.370439,
		33.137714, 37.299973, 24.287275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913319, 37.811298, 24.129358>,  <33.297050, 37.930347, 24.546583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913319, 37.811298, 24.129358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624973, 37.570801, 23.991455>,  <33.451965, 37.426502, 23.908712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624973, 37.570801, 23.991455>,  <33.913319, 37.811298, 24.129358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624973, 37.570801, 23.991455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348233, 0.115881, -0.930218,
		0.599243, -0.790615, 0.125841,
		-0.720862, -0.601249, -0.344759,
		33.408714, 37.390427, 23.888027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359299, 37.258953, 24.448957>,  <33.913319, 37.811298, 24.129358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359299, 37.258953, 24.448957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747189, 37.162853, 24.466433>,  <34.979923, 37.105194, 24.476917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.747189, 37.162853, 24.466433>,  <34.359299, 37.258953, 24.448957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747189, 37.162853, 24.466433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094644, -0.204854, 0.974206,
		-0.225122, -0.948845, -0.221392,
		0.969723, -0.240269, 0.043685,
		35.038105, 37.090778, 24.479540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433933, 36.572010, 24.964546>,  <34.359299, 37.258953, 24.448957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433933, 36.572010, 24.964546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796318, 36.740505, 24.947638>,  <35.013748, 36.841602, 24.937492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796318, 36.740505, 24.947638>,  <34.433933, 36.572010, 24.964546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796318, 36.740505, 24.947638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139331, -0.202389, 0.969343,
		0.399769, -0.884080, -0.242049,
		0.905965, 0.421238, -0.042271,
		35.068108, 36.866879, 24.934956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808353, 36.077641, 25.441788>,  <34.433933, 36.572010, 24.964546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808353, 36.077641, 25.441788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.010662, 36.419029, 25.391548>,  <35.132050, 36.623863, 25.361404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.010662, 36.419029, 25.391548>,  <34.808353, 36.077641, 25.441788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010662, 36.419029, 25.391548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053265, 0.114420, 0.992003,
		0.861019, -0.508421, 0.012411,
		0.505775, 0.853473, -0.125599,
		35.162395, 36.675072, 25.353868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383148, 36.001129, 25.954514>,  <34.808353, 36.077641, 25.441788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383148, 36.001129, 25.954514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300274, 36.384693, 25.876989>,  <35.250549, 36.614830, 25.830475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300274, 36.384693, 25.876989>,  <35.383148, 36.001129, 25.954514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300274, 36.384693, 25.876989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108728, 0.219454, 0.969545,
		0.972240, 0.179807, -0.149730,
		-0.207190, 0.958910, -0.193812,
		35.238117, 36.672367, 25.818846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961288, 36.403259, 26.158037>,  <35.383148, 36.001129, 25.954514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961288, 36.403259, 26.158037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661057, 36.667553, 26.154879>,  <35.480915, 36.826130, 26.152985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.661057, 36.667553, 26.154879>,  <35.961288, 36.403259, 26.158037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661057, 36.667553, 26.154879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291217, 0.341497, 0.893629,
		0.593144, 0.668442, -0.448738,
		-0.750582, 0.660730, -0.007895,
		35.435883, 36.865772, 26.152510>
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
