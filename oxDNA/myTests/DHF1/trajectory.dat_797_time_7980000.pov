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
	<3.058375, -0.151918, 2.409646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.107979, 0.156826, 2.659079>,  <3.137741, 0.342072, 2.808738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.107979, 0.156826, 2.659079>,  <3.058375, -0.151918, 2.409646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.107979, 0.156826, 2.659079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603237, -0.440327, 0.664994,
		0.787862, -0.458634, 0.411009,
		0.124010, 0.771860, 0.623582,
		3.145182, 0.388384, 2.846153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.134109, -0.415772, 3.050099>,  <3.058375, -0.151918, 2.409646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.134109, -0.415772, 3.050099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.997257, -0.046169, 3.118402>,  <2.915146, 0.175592, 3.159384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.997257, -0.046169, 3.118402>,  <3.134109, -0.415772, 3.050099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.997257, -0.046169, 3.118402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632237, -0.360803, 0.685636,
		0.695143, 0.126616, 0.707633,
		-0.342129, 0.924007, 0.170758,
		2.894619, 0.231033, 3.169630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.072890, -0.297944, 3.703214>,  <3.134109, -0.415772, 3.050099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.072890, -0.297944, 3.703214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.783455, -0.069130, 3.548710>,  <2.609794, 0.068158, 3.456007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.783455, -0.069130, 3.548710>,  <3.072890, -0.297944, 3.703214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.783455, -0.069130, 3.548710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643850, -0.357708, 0.676388,
		0.248749, 0.738120, 0.627138,
		-0.723589, 0.572034, -0.386259,
		2.566378, 0.102480, 3.432832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.629383, 0.151431, 4.224051>,  <3.072890, -0.297944, 3.703214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.629383, 0.151431, 4.224051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.387354, 0.086300, 3.912313>,  <2.242137, 0.047221, 3.725271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.387354, 0.086300, 3.912313>,  <2.629383, 0.151431, 4.224051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.387354, 0.086300, 3.912313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748269, -0.218109, 0.626515,
		-0.271995, 0.962245, 0.010133,
		-0.605072, -0.162827, -0.779343,
		2.205832, 0.037452, 3.678510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.958592, 0.456435, 4.399711>,  <2.629383, 0.151431, 4.224051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.958592, 0.456435, 4.399711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.896933, 0.195045, 4.103275>,  <1.859937, 0.038212, 3.925414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.896933, 0.195045, 4.103275>,  <1.958592, 0.456435, 4.399711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.896933, 0.195045, 4.103275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787027, -0.372255, 0.491950,
		-0.597350, 0.659090, -0.456918,
		-0.154149, -0.653473, -0.741088,
		1.850688, -0.000996, 3.880949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.305708, 0.621514, 4.241639>,  <1.958592, 0.456435, 4.399711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.305708, 0.621514, 4.241639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.372128, 0.249878, 4.109446>,  <1.411979, 0.026896, 4.030129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.372128, 0.249878, 4.109446>,  <1.305708, 0.621514, 4.241639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.372128, 0.249878, 4.109446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875662, -0.293040, 0.383855,
		-0.453481, 0.225653, -0.862227,
		0.166049, -0.929090, -0.330483,
		1.421942, -0.028849, 4.010301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.664358, 0.444618, 4.120979>,  <1.305708, 0.621514, 4.241639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.664358, 0.444618, 4.120979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.856617, 0.093872, 4.124670>,  <0.971972, -0.116576, 4.126884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.856617, 0.093872, 4.124670>,  <0.664358, 0.444618, 4.120979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.856617, 0.093872, 4.124670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757592, -0.409924, 0.507954,
		-0.441626, -0.251134, -0.861335,
		0.480646, -0.876866, 0.009224,
		1.000811, -0.169188, 4.127438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.162049, 0.010299, 3.774900>,  <0.664358, 0.444618, 4.120979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.162049, 0.010299, 3.774900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.413694, -0.179443, 4.021217>,  <0.564682, -0.293289, 4.169008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.413694, -0.179443, 4.021217>,  <0.162049, 0.010299, 3.774900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.413694, -0.179443, 4.021217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775017, -0.443629, 0.450046,
		0.059702, -0.760381, -0.646728,
		0.629114, -0.474357, 0.615794,
		0.602429, -0.321750, 4.205956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.306246, 4.707349, 5.046816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.104893, 4.389297, 5.182095>,  <0.015919, 4.198467, 5.263261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.104893, 4.389297, 5.182095>,  <-0.306246, 4.707349, 5.046816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.104893, 4.389297, 5.182095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765371, 0.228665, -0.601597,
		0.401013, 0.561679, 0.723675,
		0.503383, -0.795128, 0.338195,
		0.046122, 4.150759, 5.283553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.403420, 4.869764, 5.215909>,  <-0.306246, 4.707349, 5.046816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.403420, 4.869764, 5.215909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379299, 4.486481, 5.104053>,  <0.364827, 4.256510, 5.036940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379299, 4.486481, 5.104053>,  <0.403420, 4.869764, 5.215909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.379299, 4.486481, 5.104053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618317, 0.184071, -0.764069,
		0.783612, -0.218981, 0.581377,
		-0.060302, -0.958210, -0.279640,
		0.361209, 4.199018, 5.020162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.030308, 4.493945, 5.345973>,  <0.403420, 4.869764, 5.215909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.030308, 4.493945, 5.345973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.872681, 4.335251, 5.014356>,  <0.778104, 4.240034, 4.815385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.872681, 4.335251, 5.014356>,  <1.030308, 4.493945, 5.345973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.872681, 4.335251, 5.014356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815591, 0.264890, -0.514437,
		0.423701, -0.878882, 0.219190,
		-0.394068, -0.396736, -0.829042,
		0.754460, 4.216230, 4.765643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.516815, 4.001469, 4.972185>,  <1.030308, 4.493945, 5.345973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.516815, 4.001469, 4.972185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.245922, 4.156113, 4.721781>,  <1.083386, 4.248899, 4.571538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.245922, 4.156113, 4.721781>,  <1.516815, 4.001469, 4.972185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.245922, 4.156113, 4.721781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730267, 0.249346, -0.636031,
		-0.089803, -0.887896, -0.451195,
		-0.677233, 0.386610, -0.626009,
		1.042752, 4.272096, 4.533978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.589717, 3.685404, 4.281834>,  <1.516815, 4.001469, 4.972185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.589717, 3.685404, 4.281834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.410336, 4.035805, 4.210829>,  <1.302706, 4.246045, 4.168226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.410336, 4.035805, 4.210829>,  <1.589717, 3.685404, 4.281834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.410336, 4.035805, 4.210829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675022, 0.201757, -0.709676,
		-0.585862, -0.438082, -0.681799,
		-0.448454, 0.876001, -0.177513,
		1.275799, 4.298605, 4.157575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.596773, 3.731040, 3.574717>,  <1.589717, 3.685404, 4.281834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.596773, 3.731040, 3.574717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.530617, 4.104774, 3.700994>,  <1.490923, 4.329015, 3.776760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.530617, 4.104774, 3.700994>,  <1.596773, 3.731040, 3.574717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.530617, 4.104774, 3.700994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627096, 0.346688, -0.697537,
		-0.761181, 0.082603, -0.643257,
		-0.165391, 0.934336, 0.315693,
		1.480999, 4.385076, 3.795701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.670164, 4.128086, 2.971831>,  <1.596773, 3.731040, 3.574717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.670164, 4.128086, 2.971831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.689808, 4.401535, 3.263103>,  <1.701594, 4.565604, 3.437867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.689808, 4.401535, 3.263103>,  <1.670164, 4.128086, 2.971831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.689808, 4.401535, 3.263103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554741, 0.587600, -0.589057,
		-0.830572, 0.432881, -0.350376,
		0.049111, 0.683623, 0.728182,
		1.704541, 4.606622, 3.481558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.353434, 4.850472, 2.768768>,  <1.670164, 4.128086, 2.971831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.353434, 4.850472, 2.768768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.639439, 4.889107, 3.045732>,  <1.811041, 4.912288, 3.211910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.639439, 4.889107, 3.045732>,  <1.353434, 4.850472, 2.768768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.639439, 4.889107, 3.045732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431211, 0.718643, -0.545535,
		-0.550286, 0.688638, 0.472189,
		0.715012, 0.096587, 0.692408,
		1.853942, 4.918083, 3.253454>
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
