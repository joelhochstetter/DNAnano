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
	<24.590746, 35.417633, 34.927658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353846, 35.109943, 35.023602>,  <24.211706, 34.925327, 35.081165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353846, 35.109943, 35.023602>,  <24.590746, 35.417633, 34.927658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353846, 35.109943, 35.023602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284977, -0.478409, -0.830610,
		0.753676, -0.423575, 0.502550,
		-0.592250, -0.769226, 0.239857,
		24.176170, 34.879177, 35.095558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005915, 34.821671, 34.687153>,  <24.590746, 35.417633, 34.927658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005915, 34.821671, 34.687153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623611, 34.707512, 34.715633>,  <24.394230, 34.639015, 34.732723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623611, 34.707512, 34.715633>,  <25.005915, 34.821671, 34.687153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.623611, 34.707512, 34.715633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131551, -0.631240, -0.764350,
		0.263093, -0.721167, 0.640858,
		-0.955759, -0.285401, 0.071205,
		24.336884, 34.621891, 34.736996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576672, 35.331406, 34.691471>,  <25.005915, 34.821671, 34.687153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576672, 35.331406, 34.691471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815443, 35.050621, 34.846867>,  <25.958706, 34.882149, 34.940102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815443, 35.050621, 34.846867>,  <25.576672, 35.331406, 34.691471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815443, 35.050621, 34.846867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464556, -0.092366, -0.880713,
		0.654113, 0.706197, 0.270966,
		0.596929, -0.701965, 0.388486,
		25.994522, 34.840031, 34.963413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280815, 35.574310, 34.640762>,  <25.576672, 35.331406, 34.691471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280815, 35.574310, 34.640762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230322, 35.177555, 34.634884>,  <26.200026, 34.939503, 34.631355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230322, 35.177555, 34.634884>,  <26.280815, 35.574310, 34.640762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230322, 35.177555, 34.634884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529942, -0.054904, -0.846255,
		0.838586, -0.114616, 0.532576,
		-0.126235, -0.991891, -0.014698,
		26.192451, 34.879986, 34.630474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853361, 35.307041, 34.232391>,  <26.280815, 35.574310, 34.640762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853361, 35.307041, 34.232391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596519, 35.000408, 34.235401>,  <26.442413, 34.816429, 34.237209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596519, 35.000408, 34.235401>,  <26.853361, 35.307041, 34.232391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596519, 35.000408, 34.235401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389643, -0.334798, -0.857956,
		0.660211, -0.547966, 0.513669,
		-0.642106, -0.766580, 0.007526,
		26.403889, 34.770435, 34.237659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565456, 35.396439, 34.374741>,  <26.853361, 35.307041, 34.232391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565456, 35.396439, 34.374741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617268, 35.001579, 34.337315>,  <27.648355, 34.764664, 34.314861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617268, 35.001579, 34.337315>,  <27.565456, 35.396439, 34.374741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617268, 35.001579, 34.337315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693805, 0.157639, -0.702698,
		0.708418, 0.026108, 0.705310,
		0.129530, -0.987152, -0.093561,
		27.656126, 34.705433, 34.309246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771112, 36.101254, 34.270199>,  <27.565456, 35.396439, 34.374741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771112, 36.101254, 34.270199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025620, 36.406498, 34.224888>,  <28.178324, 36.589645, 34.197701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025620, 36.406498, 34.224888>,  <27.771112, 36.101254, 34.270199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025620, 36.406498, 34.224888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016616, -0.160354, -0.986920,
		-0.771289, 0.626063, -0.114708,
		0.636268, 0.763107, -0.113276,
		28.216499, 36.635429, 34.190907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469393, 36.749496, 33.873604>,  <27.771112, 36.101254, 34.270199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469393, 36.749496, 33.873604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852879, 36.639519, 33.844551>,  <28.082970, 36.573532, 33.827118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852879, 36.639519, 33.844551>,  <27.469393, 36.749496, 33.873604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852879, 36.639519, 33.844551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091178, -0.055263, -0.994300,
		0.269365, 0.959870, -0.078051,
		0.958712, -0.274946, -0.072633,
		28.140491, 36.557034, 33.822762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774902, 37.239716, 33.540043>,  <27.469393, 36.749496, 33.873604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774902, 37.239716, 33.540043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997236, 36.909363, 33.502182>,  <28.130636, 36.711151, 33.479465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997236, 36.909363, 33.502182>,  <27.774902, 37.239716, 33.540043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997236, 36.909363, 33.502182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040341, 0.086931, -0.995397,
		0.830312, 0.557097, 0.015003,
		0.555837, -0.825885, -0.094654,
		28.163988, 36.661598, 33.473785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118551, 37.373936, 32.872284>,  <27.774902, 37.239716, 33.540043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118551, 37.373936, 32.872284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179831, 36.982300, 32.925823>,  <28.216599, 36.747318, 32.957947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179831, 36.982300, 32.925823>,  <28.118551, 37.373936, 32.872284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179831, 36.982300, 32.925823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010735, -0.137092, -0.990500,
		0.988137, 0.150306, -0.031513,
		0.153198, -0.979088, 0.133852,
		28.225790, 36.688572, 32.965981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709738, 37.268421, 32.500908>,  <28.118551, 37.373936, 32.872284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709738, 37.268421, 32.500908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497746, 36.933372, 32.553848>,  <28.370550, 36.732346, 32.585613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497746, 36.933372, 32.553848>,  <28.709738, 37.268421, 32.500908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497746, 36.933372, 32.553848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059136, -0.119184, -0.991110,
		0.845945, -0.533097, 0.013632,
		-0.529982, -0.837618, 0.132348,
		28.338751, 36.682087, 32.593552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888504, 36.759029, 32.011982>,  <28.709738, 37.268421, 32.500908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888504, 36.759029, 32.011982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519604, 36.648327, 32.119957>,  <28.298264, 36.581905, 32.184742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519604, 36.648327, 32.119957>,  <28.888504, 36.759029, 32.011982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519604, 36.648327, 32.119957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249936, -0.105867, -0.962457,
		0.294939, -0.955092, 0.028465,
		-0.922249, -0.276752, 0.269936,
		28.242929, 36.565300, 32.200939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696764, 36.120895, 31.679541>,  <28.888504, 36.759029, 32.011982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696764, 36.120895, 31.679541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335896, 36.275993, 31.755163>,  <28.119375, 36.369053, 31.800537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335896, 36.275993, 31.755163>,  <28.696764, 36.120895, 31.679541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335896, 36.275993, 31.755163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275151, -0.179697, -0.944458,
		-0.332241, -0.904079, 0.268807,
		-0.902168, 0.387750, 0.189056,
		28.065245, 36.392319, 31.811880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282288, 35.782379, 31.269361>,  <28.696764, 36.120895, 31.679541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282288, 35.782379, 31.269361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004162, 36.048908, 31.377096>,  <27.837286, 36.208828, 31.441738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004162, 36.048908, 31.377096>,  <28.282288, 35.782379, 31.269361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004162, 36.048908, 31.377096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397968, -0.044902, -0.916300,
		-0.598462, -0.744306, 0.296398,
		-0.695316, 0.666328, 0.269337,
		27.795567, 36.248806, 31.457897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547260, 35.464874, 31.419991>,  <28.282288, 35.782379, 31.269361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547260, 35.464874, 31.419991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517952, 35.849380, 31.313709>,  <27.500366, 36.080086, 31.249941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517952, 35.849380, 31.313709>,  <27.547260, 35.464874, 31.419991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517952, 35.849380, 31.313709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570299, -0.258947, -0.779555,
		-0.818163, 0.094412, 0.567182,
		-0.073271, 0.961266, -0.265704,
		27.495970, 36.137760, 31.233997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012955, 35.471745, 30.872852>,  <27.547260, 35.464874, 31.419991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012955, 35.471745, 30.872852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133612, 35.852486, 30.850988>,  <27.206007, 36.080929, 30.837870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133612, 35.852486, 30.850988>,  <27.012955, 35.471745, 30.872852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133612, 35.852486, 30.850988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411751, 0.078346, -0.907922,
		-0.859925, 0.296377, 0.415559,
		0.301644, 0.951852, -0.054661,
		27.224106, 36.138042, 30.834591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.489857, 35.903934, 30.656948>,  <27.012955, 35.471745, 30.872852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.489857, 35.903934, 30.656948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815203, 36.109619, 30.548122>,  <27.010410, 36.233032, 30.482826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815203, 36.109619, 30.548122>,  <26.489857, 35.903934, 30.656948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815203, 36.109619, 30.548122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330978, 0.024430, -0.943322,
		-0.478425, 0.857313, 0.190065,
		0.813366, 0.514216, -0.272064,
		27.059212, 36.263885, 30.466503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221958, 36.387188, 30.157970>,  <26.489857, 35.903934, 30.656948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221958, 36.387188, 30.157970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611929, 36.357197, 30.074167>,  <26.845911, 36.339203, 30.023886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611929, 36.357197, 30.074167>,  <26.221958, 36.387188, 30.157970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611929, 36.357197, 30.074167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200070, 0.116754, -0.972800,
		0.097402, 0.990326, 0.098825,
		0.974928, -0.074981, -0.209507,
		26.904408, 36.334702, 30.011314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375540, 36.797882, 29.631657>,  <26.221958, 36.387188, 30.157970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375540, 36.797882, 29.631657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717672, 36.592831, 29.601669>,  <26.922953, 36.469799, 29.583677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717672, 36.592831, 29.601669>,  <26.375540, 36.797882, 29.631657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717672, 36.592831, 29.601669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054495, 0.054882, -0.997005,
		0.515207, 0.856855, 0.019007,
		0.855332, -0.512628, -0.074970,
		26.974272, 36.439041, 29.579178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694296, 37.141796, 29.107960>,  <26.375540, 36.797882, 29.631657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694296, 37.141796, 29.107960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883835, 36.792633, 29.154438>,  <26.997559, 36.583134, 29.182325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.883835, 36.792633, 29.154438>,  <26.694296, 37.141796, 29.107960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883835, 36.792633, 29.154438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201990, -0.020694, -0.979169,
		0.857129, 0.487445, 0.166513,
		0.473845, -0.872908, 0.116197,
		27.025988, 36.530762, 29.189297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381079, 37.205681, 28.808359>,  <26.694296, 37.141796, 29.107960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381079, 37.205681, 28.808359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243818, 36.830082, 28.799168>,  <27.161463, 36.604721, 28.793652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243818, 36.830082, 28.799168>,  <27.381079, 37.205681, 28.808359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243818, 36.830082, 28.799168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031666, 0.036018, -0.998849,
		0.938747, -0.342027, -0.042094,
		-0.343149, -0.939000, -0.022981,
		27.140873, 36.548382, 28.792273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674557, 36.901905, 28.266787>,  <27.381079, 37.205681, 28.808359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674557, 36.901905, 28.266787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378674, 36.637646, 28.317966>,  <27.201143, 36.479088, 28.348675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.378674, 36.637646, 28.317966>,  <27.674557, 36.901905, 28.266787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.378674, 36.637646, 28.317966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037421, -0.230233, -0.972416,
		0.671886, -0.714516, 0.195027,
		-0.739709, -0.660651, 0.127952,
		27.156761, 36.439449, 28.356352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967852, 36.440651, 27.828770>,  <27.674557, 36.901905, 28.266787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967852, 36.440651, 27.828770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586231, 36.334297, 27.884033>,  <27.357258, 36.270485, 27.917191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586231, 36.334297, 27.884033>,  <27.967852, 36.440651, 27.828770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586231, 36.334297, 27.884033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106267, -0.130866, -0.985688,
		0.280163, -0.955080, 0.096598,
		-0.954052, -0.265888, 0.138157,
		27.300014, 36.254532, 27.925480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942513, 35.796387, 27.609819>,  <27.967852, 36.440651, 27.828770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942513, 35.796387, 27.609819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564922, 35.928307, 27.605064>,  <27.338367, 36.007458, 27.602211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.564922, 35.928307, 27.605064>,  <27.942513, 35.796387, 27.609819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.564922, 35.928307, 27.605064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054100, -0.190179, -0.980258,
		-0.325547, -0.924698, 0.197367,
		-0.943977, 0.329797, -0.011886,
		27.281729, 36.027245, 27.601500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520449, 35.214958, 27.403976>,  <27.942513, 35.796387, 27.609819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520449, 35.214958, 27.403976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333576, 35.561371, 27.332729>,  <27.221453, 35.769218, 27.289980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333576, 35.561371, 27.332729>,  <27.520449, 35.214958, 27.403976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333576, 35.561371, 27.332729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108898, -0.256283, -0.960448,
		-0.877430, -0.429306, 0.214040,
		-0.467181, 0.866034, -0.178120,
		27.193422, 35.821182, 27.279293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984547, 35.064907, 26.856611>,  <27.520449, 35.214958, 27.403976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984547, 35.064907, 26.856611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094183, 35.449451, 26.846306>,  <27.159966, 35.680176, 26.840122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094183, 35.449451, 26.846306>,  <26.984547, 35.064907, 26.856611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094183, 35.449451, 26.846306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119895, -0.060738, -0.990927,
		-0.954201, 0.268515, -0.131910,
		0.274091, 0.961359, -0.025763,
		27.176411, 35.737858, 26.838577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745115, 35.322754, 26.334486>,  <26.984547, 35.064907, 26.856611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745115, 35.322754, 26.334486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067968, 35.550896, 26.395447>,  <27.261681, 35.687782, 26.432022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067968, 35.550896, 26.395447>,  <26.745115, 35.322754, 26.334486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067968, 35.550896, 26.395447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169777, 0.022994, -0.985214,
		-0.565430, 0.821074, -0.078275,
		0.807134, 0.570359, 0.152401,
		27.310108, 35.722004, 26.441168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739901, 35.834949, 25.891127>,  <26.745115, 35.322754, 26.334486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739901, 35.834949, 25.891127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130398, 35.802422, 25.971458>,  <27.364697, 35.782906, 26.019657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130398, 35.802422, 25.971458>,  <26.739901, 35.834949, 25.891127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130398, 35.802422, 25.971458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203147, 0.021209, -0.978919,
		0.075347, 0.996462, 0.037225,
		0.976245, -0.081321, 0.200830,
		27.423271, 35.778027, 26.031708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070023, 36.423538, 25.570539>,  <26.739901, 35.834949, 25.891127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070023, 36.423538, 25.570539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325069, 36.117859, 25.609409>,  <27.478098, 35.934452, 25.632730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325069, 36.117859, 25.609409>,  <27.070023, 36.423538, 25.570539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325069, 36.117859, 25.609409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169798, 0.016379, -0.985343,
		0.751406, 0.644773, 0.140203,
		0.637619, -0.764198, 0.097174,
		27.516356, 35.888599, 25.638561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620050, 36.521267, 25.162674>,  <27.070023, 36.423538, 25.570539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620050, 36.521267, 25.162674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633547, 36.122948, 25.196745>,  <27.641645, 35.883957, 25.217188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633547, 36.122948, 25.196745>,  <27.620050, 36.521267, 25.162674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633547, 36.122948, 25.196745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114292, -0.080822, -0.990154,
		0.992874, 0.043144, 0.111084,
		0.033741, -0.995794, 0.085177,
		27.643669, 35.824211, 25.222298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626900, 37.150764, 25.527044>,  <27.620050, 36.521267, 25.162674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626900, 37.150764, 25.527044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964966, 36.975101, 25.405170>,  <28.167805, 36.869701, 25.332047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964966, 36.975101, 25.405170>,  <27.626900, 37.150764, 25.527044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964966, 36.975101, 25.405170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330246, 0.019170, -0.943700,
		0.420278, 0.898203, -0.128830,
		0.845165, -0.439162, -0.304685,
		28.218515, 36.843353, 25.313765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844221, 37.737682, 25.968739>,  <27.626900, 37.150764, 25.527044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844221, 37.737682, 25.968739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509073, 37.896660, 25.819065>,  <27.307985, 37.992046, 25.729261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509073, 37.896660, 25.819065>,  <27.844221, 37.737682, 25.968739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509073, 37.896660, 25.819065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513996, 0.805234, -0.295647,
		0.183803, -0.440043, -0.878965,
		-0.837869, 0.397443, -0.374184,
		27.257713, 38.015892, 25.706810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425541, 38.262772, 25.817141>,  <27.844221, 37.737682, 25.968739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425541, 38.262772, 25.817141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368078, 37.931320, 25.600718>,  <28.333601, 37.732449, 25.470863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368078, 37.931320, 25.600718>,  <28.425541, 38.262772, 25.817141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368078, 37.931320, 25.600718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811820, 0.411343, -0.414423,
		0.565961, 0.379708, -0.731785,
		-0.143655, -0.828625, -0.541058,
		28.324982, 37.682732, 25.438400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542398, 38.448544, 25.101519>,  <28.425541, 38.262772, 25.817141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542398, 38.448544, 25.101519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312553, 38.123154, 25.065569>,  <28.174646, 37.927921, 25.043999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312553, 38.123154, 25.065569>,  <28.542398, 38.448544, 25.101519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312553, 38.123154, 25.065569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491380, 0.430730, -0.756979,
		0.654496, -0.390806, -0.647229,
		-0.574612, -0.813475, -0.089876,
		28.140169, 37.879112, 25.038607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811926, 38.150982, 24.391363>,  <28.542398, 38.448544, 25.101519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811926, 38.150982, 24.391363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647951, 38.498783, 24.501579>,  <28.549566, 38.707462, 24.567709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647951, 38.498783, 24.501579>,  <28.811926, 38.150982, 24.391363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647951, 38.498783, 24.501579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837408, 0.239040, 0.491536,
		0.361526, 0.432237, -0.826118,
		-0.409935, 0.869501, 0.275540,
		28.524971, 38.759632, 24.584242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213152, 38.112770, 25.113052>,  <28.811926, 38.150982, 24.391363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213152, 38.112770, 25.113052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607697, 38.174503, 25.135931>,  <29.844423, 38.211544, 25.149658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607697, 38.174503, 25.135931>,  <29.213152, 38.112770, 25.113052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607697, 38.174503, 25.135931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027584, -0.497610, 0.866962,
		0.162261, -0.853561, -0.495081,
		0.986362, 0.154331, 0.057198,
		29.903605, 38.220802, 25.153090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508804, 37.468140, 25.355940>,  <29.213152, 38.112770, 25.113052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508804, 37.468140, 25.355940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760406, 37.768139, 25.437777>,  <29.911367, 37.948139, 25.486877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760406, 37.768139, 25.437777>,  <29.508804, 37.468140, 25.355940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760406, 37.768139, 25.437777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140796, -0.368725, 0.918814,
		0.764545, -0.549133, -0.337526,
		0.629005, 0.749997, 0.204591,
		29.949108, 37.993137, 25.499153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970745, 37.202648, 25.719589>,  <29.508804, 37.468140, 25.355940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970745, 37.202648, 25.719589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049543, 37.584633, 25.808346>,  <30.096823, 37.813824, 25.861599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049543, 37.584633, 25.808346>,  <29.970745, 37.202648, 25.719589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049543, 37.584633, 25.808346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269729, -0.270382, 0.924197,
		0.942570, -0.122215, -0.310846,
		0.196998, 0.954964, 0.221889,
		30.108643, 37.871120, 25.874912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673714, 37.382080, 25.895269>,  <29.970745, 37.202648, 25.719589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673714, 37.382080, 25.895269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459332, 37.665401, 26.079035>,  <30.330702, 37.835396, 26.189293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459332, 37.665401, 26.079035>,  <30.673714, 37.382080, 25.895269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459332, 37.665401, 26.079035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343622, -0.314039, 0.885045,
		0.771153, 0.632207, -0.075078,
		-0.535954, 0.708303, 0.459412,
		30.298546, 37.877892, 26.216858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122841, 37.819927, 26.371998>,  <30.673714, 37.382080, 25.895269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122841, 37.819927, 26.371998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744316, 37.845108, 26.498825>,  <30.517200, 37.860214, 26.574921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744316, 37.845108, 26.498825>,  <31.122841, 37.819927, 26.371998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744316, 37.845108, 26.498825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291683, -0.256512, 0.921479,
		0.139338, 0.964489, 0.224379,
		-0.946312, 0.062950, 0.317067,
		30.460423, 37.863995, 26.593945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258101, 38.222523, 27.003054>,  <31.122841, 37.819927, 26.371998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258101, 38.222523, 27.003054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896986, 38.053352, 27.034334>,  <30.680317, 37.951851, 27.053102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896986, 38.053352, 27.034334>,  <31.258101, 38.222523, 27.003054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896986, 38.053352, 27.034334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160177, -0.161872, 0.973725,
		-0.399153, 0.891590, 0.213878,
		-0.902785, -0.422924, 0.078200,
		30.626150, 37.926476, 27.057795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956903, 38.478909, 27.631927>,  <31.258101, 38.222523, 27.003054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956903, 38.478909, 27.631927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722799, 38.164021, 27.554199>,  <30.582336, 37.975090, 27.507563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722799, 38.164021, 27.554199>,  <30.956903, 38.478909, 27.631927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722799, 38.164021, 27.554199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007730, -0.234222, 0.972152,
		-0.810807, 0.570466, 0.130997,
		-0.585262, -0.787216, -0.194319,
		30.547220, 37.927856, 27.495903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369747, 38.576183, 28.056177>,  <30.956903, 38.478909, 27.631927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369747, 38.576183, 28.056177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397242, 38.184315, 27.980795>,  <30.413738, 37.949192, 27.935566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397242, 38.184315, 27.980795>,  <30.369747, 38.576183, 28.056177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397242, 38.184315, 27.980795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006264, -0.189321, 0.981895,
		-0.997615, -0.066310, -0.019150,
		0.068735, -0.979674, -0.188454,
		30.417862, 37.890411, 27.924259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885199, 38.194363, 28.561337>,  <30.369747, 38.576183, 28.056177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885199, 38.194363, 28.561337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120380, 37.896889, 28.434063>,  <30.261490, 37.718403, 28.357698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120380, 37.896889, 28.434063>,  <29.885199, 38.194363, 28.561337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120380, 37.896889, 28.434063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150542, -0.285884, 0.946365,
		-0.794761, -0.604321, -0.056131,
		0.587955, -0.743685, -0.318186,
		30.296766, 37.673782, 28.338608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642397, 37.669518, 28.889929>,  <29.885199, 38.194363, 28.561337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642397, 37.669518, 28.889929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996069, 37.529121, 28.766621>,  <30.208273, 37.444885, 28.692635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996069, 37.529121, 28.766621>,  <29.642397, 37.669518, 28.889929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996069, 37.529121, 28.766621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090960, -0.517921, 0.850579,
		-0.458203, -0.780106, -0.426010,
		0.884181, -0.350988, -0.308271,
		30.261324, 37.423824, 28.674139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634073, 36.990486, 28.967459>,  <29.642397, 37.669518, 28.889929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634073, 36.990486, 28.967459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025385, 37.071907, 28.983141>,  <30.260172, 37.120762, 28.992550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025385, 37.071907, 28.983141>,  <29.634073, 36.990486, 28.967459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025385, 37.071907, 28.983141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038049, -0.362239, 0.931308,
		0.203776, -0.909586, -0.362115,
		0.978278, 0.203557, 0.039206,
		30.318869, 37.132973, 28.994904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870218, 36.384445, 29.117218>,  <29.634073, 36.990486, 28.967459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870218, 36.384445, 29.117218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167355, 36.639431, 29.199024>,  <30.345636, 36.792423, 29.248108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167355, 36.639431, 29.199024>,  <29.870218, 36.384445, 29.117218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167355, 36.639431, 29.199024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183513, -0.487679, 0.853518,
		0.643823, -0.596498, -0.479251,
		0.742842, 0.637463, 0.204514,
		30.390207, 36.830669, 29.260378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341763, 35.912731, 29.357134>,  <29.870218, 36.384445, 29.117218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341763, 35.912731, 29.357134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444124, 36.268688, 29.508183>,  <30.505541, 36.482262, 29.598812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444124, 36.268688, 29.508183>,  <30.341763, 35.912731, 29.357134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444124, 36.268688, 29.508183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171784, -0.426273, 0.888134,
		0.951316, -0.162408, -0.261955,
		0.255905, 0.889896, 0.377621,
		30.520895, 36.535656, 29.621469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901606, 35.780693, 29.795233>,  <30.341763, 35.912731, 29.357134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901606, 35.780693, 29.795233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772293, 36.139599, 29.915499>,  <30.694706, 36.354942, 29.987658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772293, 36.139599, 29.915499>,  <30.901606, 35.780693, 29.795233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772293, 36.139599, 29.915499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188828, -0.250170, 0.949610,
		0.927272, 0.363765, -0.088554,
		-0.323281, 0.897268, 0.300664,
		30.675308, 36.408779, 30.005697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297094, 36.038021, 30.267731>,  <30.901606, 35.780693, 29.795233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297094, 36.038021, 30.267731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959074, 36.230350, 30.361284>,  <30.756262, 36.345749, 30.417416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959074, 36.230350, 30.361284>,  <31.297094, 36.038021, 30.267731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959074, 36.230350, 30.361284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121396, -0.253463, 0.959697,
		0.520721, 0.839386, 0.155820,
		-0.845052, 0.480819, 0.233882,
		30.705559, 36.374596, 30.431450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475990, 36.431702, 30.877861>,  <31.297094, 36.038021, 30.267731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475990, 36.431702, 30.877861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077623, 36.396828, 30.868517>,  <30.838602, 36.375904, 30.862909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077623, 36.396828, 30.868517>,  <31.475990, 36.431702, 30.877861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077623, 36.396828, 30.868517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005885, -0.320995, 0.947063,
		-0.090068, 0.943059, 0.320198,
		-0.995918, -0.087185, -0.023362,
		30.778849, 36.370674, 30.861509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351120, 36.847366, 31.493382>,  <31.475990, 36.431702, 30.877861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351120, 36.847366, 31.493382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052771, 36.604748, 31.383270>,  <30.873760, 36.459179, 31.317204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052771, 36.604748, 31.383270>,  <31.351120, 36.847366, 31.493382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052771, 36.604748, 31.383270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260325, -0.114961, 0.958653,
		-0.613109, 0.786696, -0.072152,
		-0.745874, -0.606542, -0.275280,
		30.829008, 36.422787, 31.300686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761406, 37.040108, 31.973454>,  <31.351120, 36.847366, 31.493382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761406, 37.040108, 31.973454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673386, 36.665745, 31.863436>,  <30.620573, 36.441128, 31.797426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673386, 36.665745, 31.863436>,  <30.761406, 37.040108, 31.973454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673386, 36.665745, 31.863436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002343, -0.281445, 0.959574,
		-0.975485, 0.211800, 0.059739,
		-0.220051, -0.935911, -0.275042,
		30.607370, 36.384972, 31.780924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308645, 36.769390, 32.540031>,  <30.761406, 37.040108, 31.973454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308645, 36.769390, 32.540031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474121, 36.460518, 32.347115>,  <30.573406, 36.275196, 32.231365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474121, 36.460518, 32.347115>,  <30.308645, 36.769390, 32.540031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474121, 36.460518, 32.347115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076090, -0.557215, 0.826875,
		-0.907234, -0.305370, -0.289267,
		0.413687, -0.772179, -0.482289,
		30.598227, 36.228863, 32.202427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763567, 36.157181, 32.480160>,  <30.308645, 36.769390, 32.540031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763567, 36.157181, 32.480160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129192, 35.997028, 32.454285>,  <30.348568, 35.900936, 32.438759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129192, 35.997028, 32.454285>,  <29.763567, 36.157181, 32.480160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129192, 35.997028, 32.454285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081864, -0.338345, 0.937454,
		-0.397226, -0.851596, -0.342045,
		0.914062, -0.400382, -0.064685,
		30.403412, 35.876915, 32.434879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707567, 35.565044, 32.826385>,  <29.763567, 36.157181, 32.480160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707567, 35.565044, 32.826385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102074, 35.631050, 32.823704>,  <30.338778, 35.670654, 32.822094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102074, 35.631050, 32.823704>,  <29.707567, 35.565044, 32.826385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102074, 35.631050, 32.823704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035769, -0.173827, 0.984126,
		0.161232, -0.970852, -0.177342,
		0.986268, 0.165016, -0.006701,
		30.397955, 35.680553, 32.821693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980772, 35.022884, 33.199539>,  <29.707567, 35.565044, 32.826385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980772, 35.022884, 33.199539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263853, 35.305485, 33.200817>,  <30.433702, 35.475044, 33.201584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263853, 35.305485, 33.200817>,  <29.980772, 35.022884, 33.199539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263853, 35.305485, 33.200817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101427, -0.106067, 0.989173,
		0.699192, -0.699717, -0.146722,
		0.707703, 0.706503, 0.003191,
		30.476164, 35.517437, 33.201775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548578, 34.644863, 33.448383>,  <29.980772, 35.022884, 33.199539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548578, 34.644863, 33.448383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574432, 35.038452, 33.514854>,  <30.589945, 35.274605, 33.554737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574432, 35.038452, 33.514854>,  <30.548578, 34.644863, 33.448383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574432, 35.038452, 33.514854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048991, -0.163194, 0.985377,
		0.996706, -0.071830, 0.037658,
		0.064634, 0.983976, 0.166176,
		30.593822, 35.333645, 33.564709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108011, 35.008991, 33.849617>,  <30.548578, 34.644863, 33.448383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108011, 35.008991, 33.849617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769096, 35.208694, 33.922115>,  <30.565748, 35.328518, 33.965614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.769096, 35.208694, 33.922115>,  <31.108011, 35.008991, 33.849617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769096, 35.208694, 33.922115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167944, -0.071902, 0.983171,
		0.503888, 0.863465, -0.022925,
		-0.847285, 0.499258, 0.181244,
		30.514912, 35.358471, 33.976490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250048, 35.618660, 34.284679>,  <31.108011, 35.008991, 33.849617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250048, 35.618660, 34.284679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899141, 35.439980, 34.354958>,  <30.688599, 35.332771, 34.397125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899141, 35.439980, 34.354958>,  <31.250048, 35.618660, 34.284679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899141, 35.439980, 34.354958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286164, -0.192843, 0.938574,
		-0.385379, 0.873655, 0.297003,
		-0.877265, -0.446698, 0.175691,
		30.635962, 35.305969, 34.407665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093622, 35.757904, 34.970001>,  <31.250048, 35.618660, 34.284679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093622, 35.757904, 34.970001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884953, 35.430264, 34.874561>,  <30.759750, 35.233681, 34.817299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.884953, 35.430264, 34.874561>,  <31.093622, 35.757904, 34.970001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884953, 35.430264, 34.874561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107849, -0.340740, 0.933951,
		-0.846299, 0.461488, 0.266095,
		-0.521677, -0.819100, -0.238597,
		30.728449, 35.184532, 34.802982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656025, 35.617340, 35.559303>,  <31.093622, 35.757904, 34.970001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656025, 35.617340, 35.559303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700363, 35.270107, 35.365746>,  <30.726967, 35.061768, 35.249611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700363, 35.270107, 35.365746>,  <30.656025, 35.617340, 35.559303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700363, 35.270107, 35.365746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077335, -0.477881, 0.875014,
		-0.990824, -0.134414, 0.014161,
		0.110847, -0.868080, -0.483891,
		30.733618, 35.009682, 35.220577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105618, 35.079636, 35.684139>,  <30.656025, 35.617340, 35.559303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105618, 35.079636, 35.684139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455873, 34.902721, 35.606541>,  <30.666027, 34.796574, 35.559982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455873, 34.902721, 35.606541>,  <30.105618, 35.079636, 35.684139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455873, 34.902721, 35.606541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103100, -0.563604, 0.819586,
		-0.471831, -0.697662, -0.539114,
		0.875640, -0.442288, -0.193997,
		30.718565, 34.770035, 35.548340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032583, 34.374264, 36.042778>,  <30.105618, 35.079636, 35.684139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032583, 34.374264, 36.042778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413153, 34.447029, 35.943417>,  <30.641495, 34.490688, 35.883801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413153, 34.447029, 35.943417>,  <30.032583, 34.374264, 36.042778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413153, 34.447029, 35.943417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304453, -0.676066, 0.671002,
		-0.045875, -0.714033, -0.698608,
		0.951422, 0.181911, -0.248404,
		30.698580, 34.501602, 35.868896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413351, 33.847359, 36.312515>,  <30.032583, 34.374264, 36.042778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413351, 33.847359, 36.312515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720118, 34.086155, 36.218334>,  <30.904177, 34.229435, 36.161823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.720118, 34.086155, 36.218334>,  <30.413351, 33.847359, 36.312515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720118, 34.086155, 36.218334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579489, -0.486575, 0.653787,
		0.275740, -0.637843, -0.719113,
		0.766916, 0.596993, -0.235455,
		30.950191, 34.265251, 36.147697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944551, 34.408619, 36.656013>,  <30.413351, 33.847359, 36.312515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944551, 34.408619, 36.656013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311138, 34.342854, 36.510105>,  <31.531090, 34.303394, 36.422562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311138, 34.342854, 36.510105>,  <30.944551, 34.408619, 36.656013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311138, 34.342854, 36.510105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318047, -0.253799, 0.913473,
		-0.242757, -0.953183, -0.180310,
		0.916469, -0.164405, -0.364768,
		31.586079, 34.293530, 36.400673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216557, 33.731621, 36.885754>,  <30.944551, 34.408619, 36.656013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216557, 33.731621, 36.885754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518520, 33.983559, 36.812637>,  <31.699697, 34.134720, 36.768768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518520, 33.983559, 36.812637>,  <31.216557, 33.731621, 36.885754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518520, 33.983559, 36.812637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216473, 0.023795, 0.975999,
		0.619075, -0.776358, -0.118381,
		0.754908, 0.629842, -0.182791,
		31.744993, 34.172512, 36.757801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706181, 33.431801, 37.228909>,  <31.216557, 33.731621, 36.885754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706181, 33.431801, 37.228909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817190, 33.812523, 37.176670>,  <31.883795, 34.040955, 37.145329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817190, 33.812523, 37.176670>,  <31.706181, 33.431801, 37.228909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817190, 33.812523, 37.176670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103010, 0.105668, 0.989052,
		0.955181, -0.287936, -0.068720,
		0.277522, 0.951802, -0.130592,
		31.900446, 34.098064, 37.137493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316280, 33.378498, 37.609253>,  <31.706181, 33.431801, 37.228909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316280, 33.378498, 37.609253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265373, 33.774696, 37.588383>,  <32.234829, 34.012417, 37.575863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265373, 33.774696, 37.588383>,  <32.316280, 33.378498, 37.609253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265373, 33.774696, 37.588383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263499, 0.084474, 0.960954,
		0.956228, 0.108548, -0.271745,
		-0.127265, 0.990496, -0.052174,
		32.227196, 34.071846, 37.572731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942474, 33.662960, 37.941139>,  <32.316280, 33.378498, 37.609253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942474, 33.662960, 37.941139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702175, 33.982548, 37.930122>,  <32.557995, 34.174301, 37.923512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702175, 33.982548, 37.930122>,  <32.942474, 33.662960, 37.941139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702175, 33.982548, 37.930122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124020, 0.127173, 0.984096,
		0.789762, 0.587776, -0.175487,
		-0.600746, 0.798965, -0.027541,
		32.521950, 34.222237, 37.921860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291092, 34.296772, 38.199062>,  <32.942474, 33.662960, 37.941139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291092, 34.296772, 38.199062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897659, 34.329636, 38.263325>,  <32.661598, 34.349354, 38.301884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897659, 34.329636, 38.263325>,  <33.291092, 34.296772, 38.199062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897659, 34.329636, 38.263325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171818, 0.154408, 0.972953,
		0.055129, 0.984585, -0.165989,
		-0.983585, 0.082158, 0.160657,
		32.602585, 34.354282, 38.311523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208523, 34.810596, 38.720448>,  <33.291092, 34.296772, 38.199062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208523, 34.810596, 38.720448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866104, 34.604218, 38.733028>,  <32.660652, 34.480389, 38.740578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866104, 34.604218, 38.733028>,  <33.208523, 34.810596, 38.720448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866104, 34.604218, 38.733028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037723, -0.001677, 0.999287,
		-0.515525, 0.856620, 0.020898,
		-0.856044, -0.515946, 0.031450,
		32.609291, 34.449432, 38.742462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832970, 35.163902, 39.162067>,  <33.208523, 34.810596, 38.720448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832970, 35.163902, 39.162067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659641, 34.803841, 39.179749>,  <32.555645, 34.587803, 39.190357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659641, 34.803841, 39.179749>,  <32.832970, 35.163902, 39.162067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659641, 34.803841, 39.179749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198556, -0.047507, 0.978938,
		-0.879094, 0.432974, 0.199316,
		-0.433323, -0.900154, 0.044207,
		32.529644, 34.533794, 39.193012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345097, 35.048248, 39.859291>,  <32.832970, 35.163902, 39.162067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345097, 35.048248, 39.859291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454426, 34.688976, 39.721550>,  <32.520023, 34.473415, 39.638905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454426, 34.688976, 39.721550>,  <32.345097, 35.048248, 39.859291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454426, 34.688976, 39.721550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035516, -0.367160, 0.929480,
		-0.961268, -0.241815, -0.132252,
		0.273319, -0.898176, -0.344350,
		32.536423, 34.419525, 39.618244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865757, 34.627148, 40.114635>,  <32.345097, 35.048248, 39.859291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865757, 34.627148, 40.114635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155434, 34.362495, 40.036877>,  <32.329239, 34.203705, 39.990223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155434, 34.362495, 40.036877>,  <31.865757, 34.627148, 40.114635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155434, 34.362495, 40.036877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012967, -0.294913, 0.955436,
		-0.689477, -0.689398, -0.222153,
		0.724192, -0.661632, -0.194396,
		32.372692, 34.164005, 39.978558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632837, 34.004787, 40.364304>,  <31.865757, 34.627148, 40.114635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632837, 34.004787, 40.364304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031193, 33.980564, 40.337364>,  <32.270206, 33.966030, 40.321201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031193, 33.980564, 40.337364>,  <31.632837, 34.004787, 40.364304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031193, 33.980564, 40.337364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050681, -0.243658, 0.968536,
		-0.075057, -0.967969, -0.239588,
		0.995891, -0.060553, -0.067346,
		32.329960, 33.962399, 40.317162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860073, 33.359970, 40.616116>,  <31.632837, 34.004787, 40.364304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860073, 33.359970, 40.616116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180664, 33.597557, 40.643940>,  <32.373020, 33.740108, 40.660633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180664, 33.597557, 40.643940>,  <31.860073, 33.359970, 40.616116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180664, 33.597557, 40.643940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108390, -0.258670, 0.959865,
		0.588120, -0.761771, -0.271699,
		0.801478, 0.593965, 0.069561,
		32.421108, 33.775745, 40.664806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214962, 33.007252, 41.036797>,  <31.860073, 33.359970, 40.616116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214962, 33.007252, 41.036797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404659, 33.359253, 41.047325>,  <32.518478, 33.570454, 41.053642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404659, 33.359253, 41.047325>,  <32.214962, 33.007252, 41.036797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404659, 33.359253, 41.047325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043041, -0.053032, 0.997665,
		0.879341, -0.472004, -0.063026,
		0.474244, 0.880000, 0.026318,
		32.546932, 33.623253, 41.055222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885303, 32.922894, 41.437233>,  <32.214962, 33.007252, 41.036797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885303, 32.922894, 41.437233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781849, 33.308071, 41.467815>,  <32.719776, 33.539177, 41.486164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781849, 33.308071, 41.467815>,  <32.885303, 32.922894, 41.437233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781849, 33.308071, 41.467815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071732, -0.059787, 0.995630,
		0.963309, 0.262987, -0.053611,
		-0.258633, 0.962945, 0.076458,
		32.704258, 33.596954, 41.490753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351711, 33.184769, 41.887943>,  <32.885303, 32.922894, 41.437233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351711, 33.184769, 41.887943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034622, 33.427582, 41.910225>,  <32.844368, 33.573269, 41.923595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034622, 33.427582, 41.910225>,  <33.351711, 33.184769, 41.887943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034622, 33.427582, 41.910225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097994, 0.036704, 0.994510,
		0.601654, 0.793830, -0.088582,
		-0.792723, 0.607032, 0.055707,
		32.796806, 33.609692, 41.926937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421024, 33.540848, 42.539852>,  <33.351711, 33.184769, 41.887943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421024, 33.540848, 42.539852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039158, 33.615826, 42.447353>,  <32.810040, 33.660812, 42.391853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039158, 33.615826, 42.447353>,  <33.421024, 33.540848, 42.539852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039158, 33.615826, 42.447353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239263, -0.020998, 0.970728,
		0.177104, 0.982050, 0.064895,
		-0.954666, 0.187447, -0.231250,
		32.752758, 33.672058, 42.377979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267990, 34.139706, 43.033466>,  <33.421024, 33.540848, 42.539852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267990, 34.139706, 43.033466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932491, 33.960114, 42.910225>,  <32.731194, 33.852360, 42.836281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932491, 33.960114, 42.910225>,  <33.267990, 34.139706, 43.033466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932491, 33.960114, 42.910225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308551, -0.074344, 0.948298,
		-0.448668, 0.890446, -0.076176,
		-0.838745, -0.448976, -0.308103,
		32.680866, 33.825420, 42.817795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687893, 34.546387, 43.353180>,  <33.267990, 34.139706, 43.033466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687893, 34.546387, 43.353180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576515, 34.171471, 43.269318>,  <32.509689, 33.946522, 43.219002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576515, 34.171471, 43.269318>,  <32.687893, 34.546387, 43.353180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576515, 34.171471, 43.269318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308928, -0.119286, 0.943575,
		-0.909414, 0.327498, -0.256342,
		-0.278441, -0.937292, -0.209653,
		32.492985, 33.890282, 43.206421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163677, 34.393715, 43.746098>,  <32.687893, 34.546387, 43.353180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163677, 34.393715, 43.746098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224583, 34.012913, 43.639893>,  <32.261127, 33.784431, 43.576168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224583, 34.012913, 43.639893>,  <32.163677, 34.393715, 43.746098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224583, 34.012913, 43.639893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200077, -0.292775, 0.935014,
		-0.967876, -0.089250, -0.235055,
		0.152268, -0.952007, -0.265513,
		32.270264, 33.727310, 43.560238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653519, 34.044510, 44.063026>,  <32.163677, 34.393715, 43.746098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653519, 34.044510, 44.063026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912504, 33.755341, 43.966545>,  <32.067894, 33.581841, 43.908657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912504, 33.755341, 43.966545>,  <31.653519, 34.044510, 44.063026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912504, 33.755341, 43.966545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006390, -0.311334, 0.950279,
		-0.762071, -0.616811, -0.196958,
		0.647462, -0.722921, -0.241200,
		32.106743, 33.538464, 43.894184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355295, 33.483456, 44.341213>,  <31.653519, 34.044510, 44.063026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355295, 33.483456, 44.341213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748991, 33.424496, 44.302143>,  <31.985209, 33.389118, 44.278702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.748991, 33.424496, 44.302143>,  <31.355295, 33.483456, 44.341213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748991, 33.424496, 44.302143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035888, -0.374379, 0.926581,
		-0.173147, -0.915485, -0.363190,
		0.984242, -0.147401, -0.097678,
		32.044262, 33.380276, 44.272839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453619, 32.889908, 44.673347>,  <31.355295, 33.483456, 44.341213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453619, 32.889908, 44.673347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819546, 33.051392, 44.677906>,  <32.039101, 33.148281, 44.680641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819546, 33.051392, 44.677906>,  <31.453619, 32.889908, 44.673347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819546, 33.051392, 44.677906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108368, -0.272545, 0.956021,
		0.389059, -0.873349, -0.293078,
		0.914816, 0.403709, 0.011393,
		32.093990, 33.172504, 44.681324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781942, 32.457073, 45.134640>,  <31.453619, 32.889908, 44.673347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781942, 32.457073, 45.134640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034309, 32.765823, 45.103271>,  <32.185730, 32.951073, 45.084450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034309, 32.765823, 45.103271>,  <31.781942, 32.457073, 45.134640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034309, 32.765823, 45.103271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207344, -0.070351, 0.975735,
		0.747630, -0.631869, -0.204430,
		0.630919, 0.771876, -0.078418,
		32.223583, 32.997387, 45.079746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453339, 32.253979, 45.293797>,  <31.781942, 32.457073, 45.134640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453339, 32.253979, 45.293797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426338, 32.646187, 45.367584>,  <32.410137, 32.881512, 45.411858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426338, 32.646187, 45.367584>,  <32.453339, 32.253979, 45.293797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426338, 32.646187, 45.367584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418568, -0.140006, 0.897329,
		0.905673, 0.137789, -0.400962,
		-0.067505, 0.980516, 0.184473,
		32.406086, 32.940342, 45.422928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994381, 32.490002, 45.772476>,  <32.453339, 32.253979, 45.293797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994381, 32.490002, 45.772476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746986, 32.800503, 45.821316>,  <32.598549, 32.986805, 45.850620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746986, 32.800503, 45.821316>,  <32.994381, 32.490002, 45.772476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746986, 32.800503, 45.821316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313756, 0.101499, 0.944063,
		0.720439, 0.622198, -0.306329,
		-0.618486, 0.776253, 0.122094,
		32.561440, 33.033379, 45.857944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299541, 32.873531, 46.227753>,  <32.994381, 32.490002, 45.772476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299541, 32.873531, 46.227753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924271, 33.011543, 46.238895>,  <32.699108, 33.094353, 46.245579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924271, 33.011543, 46.238895>,  <33.299541, 32.873531, 46.227753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924271, 33.011543, 46.238895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105459, 0.208258, 0.972372,
		0.329699, 0.915195, -0.231770,
		-0.938178, 0.345032, 0.027853,
		32.642818, 33.115051, 46.247250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404369, 33.388496, 46.632942>,  <33.299541, 32.873531, 46.227753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404369, 33.388496, 46.632942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006721, 33.345276, 46.635590>,  <32.768131, 33.319344, 46.637177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006721, 33.345276, 46.635590>,  <33.404369, 33.388496, 46.632942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006721, 33.345276, 46.635590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004612, 0.018813, 0.999812,
		-0.108155, 0.993967, -0.018204,
		-0.994123, -0.108051, 0.006619,
		32.708485, 33.312862, 46.637577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131573, 33.998001, 46.808479>,  <33.404369, 33.388496, 46.632942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131573, 33.998001, 46.808479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916267, 33.678085, 46.914772>,  <32.787086, 33.486137, 46.978546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916267, 33.678085, 46.914772>,  <33.131573, 33.998001, 46.808479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916267, 33.678085, 46.914772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208729, 0.178967, 0.961459,
		-0.816521, 0.572982, 0.070608,
		-0.538262, -0.799789, 0.265728,
		32.754787, 33.438148, 46.994492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778160, 34.218491, 47.359459>,  <33.131573, 33.998001, 46.808479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778160, 34.218491, 47.359459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748528, 33.822056, 47.403755>,  <32.730747, 33.584194, 47.430332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748528, 33.822056, 47.403755>,  <32.778160, 34.218491, 47.359459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748528, 33.822056, 47.403755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001254, 0.110949, 0.993825,
		-0.997251, 0.073762, -0.006976,
		-0.074081, -0.991085, 0.110736,
		32.726303, 33.524731, 47.436977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468365, 34.231472, 47.989544>,  <32.778160, 34.218491, 47.359459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468365, 34.231472, 47.989544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592869, 33.855133, 47.936001>,  <32.667572, 33.629330, 47.903873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592869, 33.855133, 47.936001>,  <32.468365, 34.231472, 47.989544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592869, 33.855133, 47.936001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148787, -0.090870, 0.984685,
		-0.938605, -0.326409, 0.111703,
		0.311259, -0.940851, -0.133857,
		32.686245, 33.572876, 47.895844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046368, 33.890621, 48.403545>,  <32.468365, 34.231472, 47.989544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046368, 33.890621, 48.403545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386860, 33.698322, 48.319363>,  <32.591156, 33.582943, 48.268852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386860, 33.698322, 48.319363>,  <32.046368, 33.890621, 48.403545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386860, 33.698322, 48.319363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179119, -0.110791, 0.977569,
		-0.493285, -0.869829, -0.008197,
		0.851226, -0.480752, -0.210454,
		32.642227, 33.554096, 48.256226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055737, 33.296833, 48.836136>,  <32.046368, 33.890621, 48.403545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055737, 33.296833, 48.836136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440720, 33.329506, 48.732594>,  <32.671707, 33.349110, 48.670467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440720, 33.329506, 48.732594>,  <32.055737, 33.296833, 48.836136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440720, 33.329506, 48.732594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266987, -0.112839, 0.957071,
		0.048969, -0.990250, -0.130412,
		0.962455, 0.081685, -0.258859,
		32.729458, 33.354012, 48.654938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329685, 32.729710, 49.125854>,  <32.055737, 33.296833, 48.836136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329685, 32.729710, 49.125854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654099, 32.940830, 49.024944>,  <32.848747, 33.067505, 48.964397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654099, 32.940830, 49.024944>,  <32.329685, 32.729710, 49.125854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654099, 32.940830, 49.024944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485204, -0.366016, 0.794109,
		0.326799, -0.766456, -0.552945,
		0.811036, 0.527805, -0.252274,
		32.897408, 33.099171, 48.949261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910908, 32.310574, 49.175560>,  <32.329685, 32.729710, 49.125854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910908, 32.310574, 49.175560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042274, 32.686928, 49.208748>,  <33.121094, 32.912739, 49.228661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042274, 32.686928, 49.208748>,  <32.910908, 32.310574, 49.175560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042274, 32.686928, 49.208748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341992, -0.200328, 0.918102,
		0.880447, -0.273144, -0.387565,
		0.328414, 0.940883, 0.082965,
		33.140800, 32.969193, 49.233639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664356, 32.291916, 49.324425>,  <32.910908, 32.310574, 49.175560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664356, 32.291916, 49.324425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518051, 32.644238, 49.444695>,  <33.430267, 32.855629, 49.516857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518051, 32.644238, 49.444695>,  <33.664356, 32.291916, 49.324425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518051, 32.644238, 49.444695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402363, -0.141660, 0.904454,
		0.839237, 0.451799, -0.302587,
		-0.365767, 0.880801, 0.300674,
		33.408321, 32.908478, 49.534897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231567, 32.594002, 49.587303>,  <33.664356, 32.291916, 49.324425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231567, 32.594002, 49.587303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887531, 32.707615, 49.756809>,  <33.681110, 32.775784, 49.858513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887531, 32.707615, 49.756809>,  <34.231567, 32.594002, 49.587303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887531, 32.707615, 49.756809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261650, -0.467487, 0.844391,
		0.437941, 0.837126, 0.327761,
		-0.860086, 0.284035, 0.423765,
		33.629505, 32.792824, 49.883938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423740, 32.947075, 50.304672>,  <34.231567, 32.594002, 49.587303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423740, 32.947075, 50.304672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035381, 32.852417, 50.319378>,  <33.802364, 32.795624, 50.328201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035381, 32.852417, 50.319378>,  <34.423740, 32.947075, 50.304672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035381, 32.852417, 50.319378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123341, -0.362554, 0.923765,
		-0.205273, 0.901419, 0.381191,
		-0.970902, -0.236641, 0.036760,
		33.744110, 32.781425, 50.330406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174278, 33.206486, 50.943321>,  <34.423740, 32.947075, 50.304672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174278, 33.206486, 50.943321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905773, 32.930294, 50.835506>,  <33.744671, 32.764580, 50.770817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905773, 32.930294, 50.835506>,  <34.174278, 33.206486, 50.943321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905773, 32.930294, 50.835506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014442, -0.351382, 0.936121,
		-0.741082, 0.632272, 0.225896,
		-0.671259, -0.690480, -0.269534,
		33.704395, 32.723148, 50.754646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548321, 33.322086, 51.426193>,  <34.174278, 33.206486, 50.943321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548321, 33.322086, 51.426193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580097, 32.951885, 51.278065>,  <33.599163, 32.729763, 51.189190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580097, 32.951885, 51.278065>,  <33.548321, 33.322086, 51.426193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580097, 32.951885, 51.278065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149118, -0.378345, 0.913575,
		-0.985623, -0.017357, -0.168066,
		0.079444, -0.925502, -0.370317,
		33.603931, 32.674236, 51.166969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089493, 32.975521, 51.819061>,  <33.548321, 33.322086, 51.426193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089493, 32.975521, 51.819061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303322, 32.668919, 51.676682>,  <33.431618, 32.484955, 51.591255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303322, 32.668919, 51.676682>,  <33.089493, 32.975521, 51.819061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303322, 32.668919, 51.676682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024768, -0.435204, 0.899991,
		-0.844760, -0.472294, -0.251632,
		0.534571, -0.766509, -0.355945,
		33.463692, 32.438965, 51.569897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765152, 32.255714, 51.974270>,  <33.089493, 32.975521, 51.819061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765152, 32.255714, 51.974270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158054, 32.192177, 51.934387>,  <33.393795, 32.154053, 51.910458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158054, 32.192177, 51.934387>,  <32.765152, 32.255714, 51.974270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158054, 32.192177, 51.934387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019208, -0.614028, 0.789050,
		-0.186558, -0.773134, -0.606184,
		0.982256, -0.158847, -0.099702,
		33.452732, 32.144524, 51.904476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822895, 31.491278, 51.990627>,  <32.765152, 32.255714, 51.974270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822895, 31.491278, 51.990627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079308, 31.745306, 52.163029>,  <33.233154, 31.897722, 52.266468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079308, 31.745306, 52.163029>,  <32.822895, 31.491278, 51.990627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079308, 31.745306, 52.163029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020246, -0.575354, 0.817654,
		0.767248, -0.515415, -0.381678,
		0.641031, 0.635071, 0.431004,
		33.271618, 31.935827, 52.292332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495712, 31.150360, 52.287224>,  <32.822895, 31.491278, 51.990627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495712, 31.150360, 52.287224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402050, 31.492638, 52.471813>,  <33.345852, 31.698004, 52.582569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402050, 31.492638, 52.471813>,  <33.495712, 31.150360, 52.287224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402050, 31.492638, 52.471813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057457, -0.486023, 0.872055,
		0.970499, 0.177685, 0.162973,
		-0.234160, 0.855692, 0.461476,
		33.331802, 31.749346, 52.610256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717030, 30.948090, 52.898838>,  <33.495712, 31.150360, 52.287224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717030, 30.948090, 52.898838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440067, 31.229858, 52.961277>,  <33.273891, 31.398918, 52.998741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440067, 31.229858, 52.961277>,  <33.717030, 30.948090, 52.898838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440067, 31.229858, 52.961277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155303, -0.356785, 0.921187,
		0.704595, 0.613594, 0.356439,
		-0.692407, 0.704420, 0.156096,
		33.232346, 31.441185, 53.008106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804058, 31.490459, 53.460896>,  <33.717030, 30.948090, 52.898838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804058, 31.490459, 53.460896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416092, 31.408463, 53.408379>,  <33.183311, 31.359264, 53.376869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416092, 31.408463, 53.408379>,  <33.804058, 31.490459, 53.460896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416092, 31.408463, 53.408379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088892, -0.203852, 0.974958,
		-0.226624, 0.957300, 0.179498,
		-0.969918, -0.204993, -0.131294,
		33.125118, 31.346964, 53.368992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484066, 31.482231, 53.786102>,  <33.804058, 31.490459, 53.460896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484066, 31.482231, 53.786102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812046, 31.384684, 53.578945>,  <35.008835, 31.326155, 53.454651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812046, 31.384684, 53.578945>,  <34.484066, 31.482231, 53.786102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812046, 31.384684, 53.578945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572348, -0.333084, -0.749315,
		0.010232, 0.910814, -0.412689,
		0.819947, -0.243869, -0.517894,
		35.058029, 31.311523, 53.423576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637943, 31.992132, 53.145557>,  <34.484066, 31.482231, 53.786102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637943, 31.992132, 53.145557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777458, 31.622761, 53.081524>,  <34.861168, 31.401138, 53.043106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777458, 31.622761, 53.081524>,  <34.637943, 31.992132, 53.145557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777458, 31.622761, 53.081524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600015, -0.088804, -0.795045,
		0.719952, 0.373352, -0.585045,
		0.348786, -0.923430, -0.160082,
		34.882095, 31.345732, 53.033501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855671, 31.797937, 52.435459>,  <34.637943, 31.992132, 53.145557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855671, 31.797937, 52.435459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726181, 31.438280, 52.553268>,  <34.648487, 31.222485, 52.623955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726181, 31.438280, 52.553268>,  <34.855671, 31.797937, 52.435459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726181, 31.438280, 52.553268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435677, -0.134659, -0.889973,
		0.839875, -0.416420, -0.348145,
		-0.323722, -0.899145, 0.294521,
		34.629063, 31.168537, 52.641624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126324, 31.243412, 51.978447>,  <34.855671, 31.797937, 52.435459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126324, 31.243412, 51.978447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784092, 31.105503, 52.132904>,  <34.578751, 31.022757, 52.225578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784092, 31.105503, 52.132904>,  <35.126324, 31.243412, 51.978447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784092, 31.105503, 52.132904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330749, -0.209743, -0.920116,
		0.398223, -0.914953, 0.065419,
		-0.855584, -0.344774, 0.386145,
		34.527416, 31.002071, 52.248749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042980, 30.468733, 51.839317>,  <35.126324, 31.243412, 51.978447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042980, 30.468733, 51.839317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733788, 30.722147, 51.852757>,  <34.548271, 30.874195, 51.860821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733788, 30.722147, 51.852757>,  <35.042980, 30.468733, 51.839317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733788, 30.722147, 51.852757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108762, -0.080149, -0.990832,
		-0.625033, -0.769552, 0.130858,
		-0.772984, 0.633535, 0.033602,
		34.501892, 30.912207, 51.862839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436974, 30.175896, 51.496609>,  <35.042980, 30.468733, 51.839317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436974, 30.175896, 51.496609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442364, 30.574650, 51.465534>,  <34.445599, 30.813902, 51.446888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442364, 30.574650, 51.465534>,  <34.436974, 30.175896, 51.496609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442364, 30.574650, 51.465534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092289, -0.076123, -0.992818,
		-0.995641, 0.020546, 0.090976,
		0.013473, 0.996887, -0.077688,
		34.446407, 30.873716, 51.442226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857468, 30.374973, 51.060986>,  <34.436974, 30.175896, 51.496609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857468, 30.374973, 51.060986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110855, 30.682400, 51.025162>,  <34.262886, 30.866856, 51.003666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110855, 30.682400, 51.025162>,  <33.857468, 30.374973, 51.060986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110855, 30.682400, 51.025162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000252, -0.115541, -0.993303,
		-0.773767, 0.629250, -0.072998,
		0.633470, 0.768567, -0.089560,
		34.300896, 30.912970, 50.998295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596535, 30.798830, 50.459808>,  <33.857468, 30.374973, 51.060986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596535, 30.798830, 50.459808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979649, 30.889431, 50.530621>,  <34.209518, 30.943792, 50.573109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.979649, 30.889431, 50.530621>,  <33.596535, 30.798830, 50.459808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979649, 30.889431, 50.530621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172830, 0.038413, -0.984202,
		-0.229726, 0.973252, -0.002355,
		0.957787, 0.226504, 0.177031,
		34.266983, 30.957382, 50.583729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700665, 31.275602, 50.066422>,  <33.596535, 30.798830, 50.459808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700665, 31.275602, 50.066422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072044, 31.139896, 50.126930>,  <34.294872, 31.058474, 50.163235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072044, 31.139896, 50.126930>,  <33.700665, 31.275602, 50.066422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072044, 31.139896, 50.126930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237806, 0.230030, -0.943681,
		0.285359, 0.912133, 0.294250,
		0.928449, -0.339262, 0.151270,
		34.350578, 31.038118, 50.172310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076019, 31.695837, 49.654591>,  <33.700665, 31.275602, 50.066422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076019, 31.695837, 49.654591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314716, 31.391233, 49.755783>,  <34.457935, 31.208471, 49.816498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314716, 31.391233, 49.755783>,  <34.076019, 31.695837, 49.654591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314716, 31.391233, 49.755783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416489, 0.024452, -0.908812,
		0.685884, 0.647691, 0.331752,
		0.596741, -0.761510, 0.252986,
		34.493740, 31.162781, 49.831680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721043, 31.771738, 49.364693>,  <34.076019, 31.695837, 49.654591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721043, 31.771738, 49.364693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718014, 31.376263, 49.424603>,  <34.716194, 31.138977, 49.460548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718014, 31.376263, 49.424603>,  <34.721043, 31.771738, 49.364693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718014, 31.376263, 49.424603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415533, -0.139350, -0.898841,
		0.909547, 0.055430, 0.411889,
		-0.007574, -0.988691, 0.149778,
		34.715740, 31.079655, 49.469536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396034, 31.483032, 49.174965>,  <34.721043, 31.771738, 49.364693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396034, 31.483032, 49.174965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156979, 31.162432, 49.166687>,  <35.013546, 30.970072, 49.161720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156979, 31.162432, 49.166687>,  <35.396034, 31.483032, 49.174965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156979, 31.162432, 49.166687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296932, -0.197288, -0.934296,
		0.744757, -0.564512, 0.355898,
		-0.597636, -0.801501, -0.020690,
		34.977688, 30.921982, 49.160480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806797, 30.960289, 48.952648>,  <35.396034, 31.483032, 49.174965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806797, 30.960289, 48.952648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450283, 30.792309, 48.884232>,  <35.236374, 30.691521, 48.843182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450283, 30.792309, 48.884232>,  <35.806797, 30.960289, 48.952648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450283, 30.792309, 48.884232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341999, -0.374882, -0.861684,
		0.297745, -0.826501, 0.477749,
		-0.891282, -0.419952, -0.171043,
		35.182899, 30.666323, 48.832920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864742, 30.220644, 48.982685>,  <35.806797, 30.960289, 48.952648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864742, 30.220644, 48.982685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544231, 30.269773, 48.748466>,  <35.351925, 30.299252, 48.607933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544231, 30.269773, 48.748466>,  <35.864742, 30.220644, 48.982685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544231, 30.269773, 48.748466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467858, -0.481386, -0.741199,
		-0.372911, -0.867861, 0.328261,
		-0.801278, 0.122822, -0.585550,
		35.303848, 30.306622, 48.572800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537846, 29.505215, 48.694000>,  <35.864742, 30.220644, 48.982685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537846, 29.505215, 48.694000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422409, 29.797701, 48.446762>,  <35.353149, 29.973192, 48.298420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422409, 29.797701, 48.446762>,  <35.537846, 29.505215, 48.694000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422409, 29.797701, 48.446762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218905, -0.578068, -0.786077,
		-0.932093, -0.362157, 0.006757,
		-0.288589, 0.731218, -0.618091,
		35.335831, 30.017067, 48.261333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441570, 29.167912, 48.104435>,  <35.537846, 29.505215, 48.694000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441570, 29.167912, 48.104435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445320, 29.546831, 47.976349>,  <35.447571, 29.774183, 47.899498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445320, 29.546831, 47.976349>,  <35.441570, 29.167912, 48.104435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445320, 29.546831, 47.976349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247558, -0.312464, -0.917105,
		-0.968828, -0.070672, -0.237441,
		0.009379, 0.947297, -0.320219,
		35.448135, 29.831020, 47.880283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134453, 29.052773, 47.462326>,  <35.441570, 29.167912, 48.104435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134453, 29.052773, 47.462326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333675, 29.399420, 47.474438>,  <35.453209, 29.607409, 47.481705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333675, 29.399420, 47.474438>,  <35.134453, 29.052773, 47.462326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333675, 29.399420, 47.474438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339273, -0.162614, -0.926526,
		-0.798020, 0.471733, -0.375010,
		0.498055, 0.866617, 0.030277,
		35.483093, 29.659405, 47.483521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073662, 29.298100, 46.824791>,  <35.134453, 29.052773, 47.462326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073662, 29.298100, 46.824791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351307, 29.550377, 46.963608>,  <35.517895, 29.701744, 47.046898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351307, 29.550377, 46.963608>,  <35.073662, 29.298100, 46.824791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351307, 29.550377, 46.963608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469657, -0.031398, -0.882291,
		-0.545560, 0.775395, -0.318004,
		0.694109, 0.630695, 0.347040,
		35.559540, 29.739586, 47.067719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984417, 29.842783, 46.441051>,  <35.073662, 29.298100, 46.824791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984417, 29.842783, 46.441051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365902, 29.845247, 46.561317>,  <35.594791, 29.846725, 46.633476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365902, 29.845247, 46.561317>,  <34.984417, 29.842783, 46.441051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365902, 29.845247, 46.561317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298334, 0.106601, -0.948490,
		-0.037894, 0.994283, 0.099829,
		0.953709, 0.006160, 0.300668,
		35.652016, 29.847095, 46.651520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339996, 30.390493, 46.084057>,  <34.984417, 29.842783, 46.441051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339996, 30.390493, 46.084057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616871, 30.122730, 46.191959>,  <35.782997, 29.962072, 46.256702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616871, 30.122730, 46.191959>,  <35.339996, 30.390493, 46.084057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616871, 30.122730, 46.191959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389708, 0.032073, -0.920380,
		0.607457, 0.742203, 0.283074,
		0.692188, -0.669407, 0.269760,
		35.824528, 29.921907, 46.272888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925262, 30.735432, 45.825546>,  <35.339996, 30.390493, 46.084057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925262, 30.735432, 45.825546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989174, 30.351585, 45.918163>,  <36.027519, 30.121279, 45.973736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989174, 30.351585, 45.918163>,  <35.925262, 30.735432, 45.825546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989174, 30.351585, 45.918163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346303, -0.165164, -0.923469,
		0.924417, 0.227733, 0.305928,
		0.159776, -0.959614, 0.231545,
		36.037106, 30.063702, 45.987625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605362, 30.504908, 45.535183>,  <35.925262, 30.735432, 45.825546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605362, 30.504908, 45.535183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392933, 30.169828, 45.586140>,  <36.265476, 29.968781, 45.616714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392933, 30.169828, 45.586140>,  <36.605362, 30.504908, 45.535183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392933, 30.169828, 45.586140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305720, -0.329650, -0.893234,
		0.790254, -0.435423, 0.431168,
		-0.531069, -0.837698, 0.127390,
		36.233612, 29.918520, 45.624355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005234, 30.139248, 45.293804>,  <36.605362, 30.504908, 45.535183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005234, 30.139248, 45.293804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662994, 29.932510, 45.282337>,  <36.457649, 29.808468, 45.275459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662994, 29.932510, 45.282337>,  <37.005234, 30.139248, 45.293804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662994, 29.932510, 45.282337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156101, -0.204822, -0.966271,
		0.493541, -0.831215, 0.255926,
		-0.855599, -0.516845, -0.028666,
		36.406315, 29.777456, 45.273739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134125, 29.400236, 44.973248>,  <37.005234, 30.139248, 45.293804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134125, 29.400236, 44.973248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743011, 29.478565, 44.943352>,  <36.508343, 29.525562, 44.925415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743011, 29.478565, 44.943352>,  <37.134125, 29.400236, 44.973248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743011, 29.478565, 44.943352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022471, -0.256575, -0.966263,
		-0.208388, -0.946480, 0.246476,
		-0.977788, 0.195819, -0.074735,
		36.449677, 29.537312, 44.920933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704441, 28.732721, 44.743977>,  <37.134125, 29.400236, 44.973248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704441, 28.732721, 44.743977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499989, 29.066898, 44.663197>,  <36.377316, 29.267405, 44.614731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499989, 29.066898, 44.663197>,  <36.704441, 28.732721, 44.743977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499989, 29.066898, 44.663197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061396, -0.269847, -0.960944,
		-0.857307, -0.478769, 0.189220,
		-0.511130, 0.835442, -0.201947,
		36.346649, 29.317532, 44.602612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149891, 28.518471, 44.248257>,  <36.704441, 28.732721, 44.743977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149891, 28.518471, 44.248257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183117, 28.914154, 44.199970>,  <36.203053, 29.151564, 44.170998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183117, 28.914154, 44.199970>,  <36.149891, 28.518471, 44.248257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183117, 28.914154, 44.199970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011730, -0.120157, -0.992686,
		-0.996475, 0.083870, 0.001623,
		0.083061, 0.989206, -0.120717,
		36.208035, 29.210917, 44.163754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750576, 28.642330, 43.592583>,  <36.149891, 28.518471, 44.248257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750576, 28.642330, 43.592583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947006, 28.982576, 43.667736>,  <36.064865, 29.186724, 43.712826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947006, 28.982576, 43.667736>,  <35.750576, 28.642330, 43.592583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947006, 28.982576, 43.667736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055861, 0.184484, -0.981247,
		-0.869324, 0.492362, 0.043079,
		0.491076, 0.850614, 0.187881,
		36.094330, 29.237761, 43.724102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333660, 29.170788, 43.216721>,  <35.750576, 28.642330, 43.592583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333660, 29.170788, 43.216721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714718, 29.286404, 43.254494>,  <35.943352, 29.355774, 43.277157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714718, 29.286404, 43.254494>,  <35.333660, 29.170788, 43.216721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714718, 29.286404, 43.254494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040199, 0.427537, -0.903104,
		-0.301405, 0.856544, 0.418911,
		0.952648, 0.289040, 0.094430,
		36.000511, 29.373116, 43.282822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384953, 29.535027, 42.625263>,  <35.333660, 29.170788, 43.216721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384953, 29.535027, 42.625263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751556, 29.602278, 42.770447>,  <35.971519, 29.642628, 42.857555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751556, 29.602278, 42.770447>,  <35.384953, 29.535027, 42.625263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751556, 29.602278, 42.770447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210982, 0.567721, -0.795726,
		-0.339843, 0.805870, 0.484851,
		0.916512, 0.168127, 0.362960,
		36.026508, 29.652716, 42.879333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495735, 30.314711, 42.660057>,  <35.384953, 29.535027, 42.625263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495735, 30.314711, 42.660057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831085, 30.102108, 42.611668>,  <36.032295, 29.974546, 42.582634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831085, 30.102108, 42.611668>,  <35.495735, 30.314711, 42.660057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831085, 30.102108, 42.611668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204666, 0.512621, -0.833865,
		0.505218, 0.674329, 0.538549,
		0.838371, -0.531507, -0.120973,
		36.082596, 29.942656, 42.575375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926228, 30.831800, 42.364506>,  <35.495735, 30.314711, 42.660057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926228, 30.831800, 42.364506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125198, 30.492706, 42.290844>,  <36.244579, 30.289249, 42.246647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125198, 30.492706, 42.290844>,  <35.926228, 30.831800, 42.364506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125198, 30.492706, 42.290844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251610, 0.344141, -0.904577,
		0.830218, 0.403622, 0.384482,
		0.497423, -0.847736, -0.184157,
		36.274426, 30.238386, 42.235596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575615, 30.989143, 42.248859>,  <35.926228, 30.831800, 42.364506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575615, 30.989143, 42.248859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509247, 30.646914, 42.052715>,  <36.469425, 30.441574, 41.935028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509247, 30.646914, 42.052715>,  <36.575615, 30.989143, 42.248859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509247, 30.646914, 42.052715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151292, 0.469284, -0.869990,
		0.974464, -0.218541, 0.051576,
		-0.165925, -0.855577, -0.490364,
		36.459469, 30.390240, 41.905605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033356, 31.003851, 41.731865>,  <36.575615, 30.989143, 42.248859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033356, 31.003851, 41.731865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762722, 30.743847, 41.593460>,  <36.600342, 30.587845, 41.510418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762722, 30.743847, 41.593460>,  <37.033356, 31.003851, 41.731865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762722, 30.743847, 41.593460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119586, 0.366656, -0.922639,
		0.726592, -0.665619, -0.170340,
		-0.676582, -0.650011, -0.346008,
		36.559746, 30.548843, 41.489658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283966, 30.844364, 41.117603>,  <37.033356, 31.003851, 41.731865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283966, 30.844364, 41.117603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905819, 30.734142, 41.047916>,  <36.678932, 30.668009, 41.006104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905819, 30.734142, 41.047916>,  <37.283966, 30.844364, 41.117603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905819, 30.734142, 41.047916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076497, 0.331966, -0.940184,
		0.316896, -0.902149, -0.292753,
		-0.945370, -0.275546, -0.174211,
		36.622208, 30.651476, 40.995651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278522, 30.433989, 40.444798>,  <37.283966, 30.844364, 41.117603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278522, 30.433989, 40.444798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904106, 30.557785, 40.511787>,  <36.679459, 30.632063, 40.551979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904106, 30.557785, 40.511787>,  <37.278522, 30.433989, 40.444798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904106, 30.557785, 40.511787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043264, 0.371087, -0.927590,
		-0.349226, -0.875506, -0.333962,
		-0.936039, 0.309490, 0.167471,
		36.623295, 30.650633, 40.562027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029457, 30.399260, 39.842743>,  <37.278522, 30.433989, 40.444798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029457, 30.399260, 39.842743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746456, 30.621803, 40.017052>,  <36.576656, 30.755329, 40.121639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746456, 30.621803, 40.017052>,  <37.029457, 30.399260, 39.842743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746456, 30.621803, 40.017052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268154, 0.359168, -0.893919,
		-0.653858, -0.749307, -0.104923,
		-0.707505, 0.556361, 0.435774,
		36.534206, 30.788712, 40.147785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374729, 30.349766, 39.429337>,  <37.029457, 30.399260, 39.842743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374729, 30.349766, 39.429337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330151, 30.694162, 39.627838>,  <36.303402, 30.900801, 39.746941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330151, 30.694162, 39.627838>,  <36.374729, 30.349766, 39.429337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330151, 30.694162, 39.627838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297786, 0.447487, -0.843255,
		-0.948105, -0.241756, 0.206521,
		-0.111446, 0.860993, 0.496256,
		36.296719, 30.952461, 39.776714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634007, 30.541908, 39.249683>,  <36.374729, 30.349766, 39.429337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634007, 30.541908, 39.249683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778275, 30.875296, 39.417133>,  <35.864834, 31.075329, 39.517605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778275, 30.875296, 39.417133>,  <35.634007, 30.541908, 39.249683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778275, 30.875296, 39.417133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362668, 0.538838, -0.760346,
		-0.859297, 0.122408, 0.496613,
		0.360666, 0.833469, 0.418629,
		35.886475, 31.125336, 39.542721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097473, 31.066813, 39.248024>,  <35.634007, 30.541908, 39.249683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097473, 31.066813, 39.248024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452339, 31.250877, 39.234207>,  <35.665260, 31.361317, 39.225918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452339, 31.250877, 39.234207>,  <35.097473, 31.066813, 39.248024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452339, 31.250877, 39.234207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263108, 0.442918, -0.857087,
		-0.379098, 0.769465, 0.514012,
		0.887164, 0.460160, -0.034543,
		35.718487, 31.388926, 39.223843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981544, 31.727400, 39.100819>,  <35.097473, 31.066813, 39.248024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981544, 31.727400, 39.100819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368118, 31.715246, 38.998775>,  <35.600063, 31.707954, 38.937550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368118, 31.715246, 38.998775>,  <34.981544, 31.727400, 39.100819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368118, 31.715246, 38.998775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179804, 0.629250, -0.756118,
		0.183498, 0.776608, 0.602667,
		0.966436, -0.030384, -0.255104,
		35.658051, 31.706131, 38.922245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216423, 32.405094, 38.790783>,  <34.981544, 31.727400, 39.100819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216423, 32.405094, 38.790783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497986, 32.147823, 38.670227>,  <35.666924, 31.993462, 38.597893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497986, 32.147823, 38.670227>,  <35.216423, 32.405094, 38.790783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497986, 32.147823, 38.670227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002172, 0.426266, -0.904595,
		0.710287, 0.636098, 0.301450,
		0.703909, -0.643177, -0.301389,
		35.709160, 31.954870, 38.579811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529911, 32.834007, 38.289608>,  <35.216423, 32.405094, 38.790783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529911, 32.834007, 38.289608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701153, 32.476768, 38.234306>,  <35.803898, 32.262424, 38.201126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701153, 32.476768, 38.234306>,  <35.529911, 32.834007, 38.289608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701153, 32.476768, 38.234306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305655, 0.287052, -0.907842,
		0.850472, 0.346392, 0.395866,
		0.428103, -0.893092, -0.138253,
		35.829582, 32.208839, 38.192829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279369, 32.884956, 38.235905>,  <35.529911, 32.834007, 38.289608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279369, 32.884956, 38.235905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168697, 32.560616, 38.029617>,  <36.102295, 32.366013, 37.905846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168697, 32.560616, 38.029617>,  <36.279369, 32.884956, 38.235905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168697, 32.560616, 38.029617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335550, 0.421369, -0.842528,
		0.900473, -0.406164, 0.155495,
		-0.276684, -0.810851, -0.515720,
		36.085693, 32.317360, 37.874901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711193, 32.881493, 37.619877>,  <36.279369, 32.884956, 38.235905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711193, 32.881493, 37.619877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424004, 32.624310, 37.513203>,  <36.251690, 32.470001, 37.449200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424004, 32.624310, 37.513203>,  <36.711193, 32.881493, 37.619877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424004, 32.624310, 37.513203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217180, 0.157079, -0.963410,
		0.661323, -0.749620, 0.026859,
		-0.717973, -0.642959, -0.266682,
		36.208611, 32.431423, 37.433197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044075, 32.447384, 37.165726>,  <36.711193, 32.881493, 37.619877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044075, 32.447384, 37.165726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650860, 32.430832, 37.094250>,  <36.414932, 32.420902, 37.051365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650860, 32.430832, 37.094250>,  <37.044075, 32.447384, 37.165726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650860, 32.430832, 37.094250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175111, 0.078131, -0.981444,
		0.054565, -0.996084, -0.069561,
		-0.983036, -0.041372, -0.178688,
		36.355949, 32.418419, 37.040642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728653, 32.128216, 37.412659>,  <37.044075, 32.447384, 37.165726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728653, 32.128216, 37.412659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115902, 32.215153, 37.362846>,  <38.348251, 32.267315, 37.332958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115902, 32.215153, 37.362846>,  <37.728653, 32.128216, 37.412659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115902, 32.215153, 37.362846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232304, -0.593054, 0.770923,
		0.093700, -0.775274, -0.624636,
		0.968120, 0.217341, -0.124530,
		38.406338, 32.280354, 37.325489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055573, 31.497620, 37.394077>,  <37.728653, 32.128216, 37.412659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055573, 31.497620, 37.394077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332157, 31.763292, 37.507744>,  <38.498108, 31.922695, 37.575943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332157, 31.763292, 37.507744>,  <38.055573, 31.497620, 37.394077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332157, 31.763292, 37.507744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265156, -0.599231, 0.755390,
		0.671997, -0.446972, -0.590454,
		0.691457, 0.664182, 0.284164,
		38.539593, 31.962547, 37.592995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709179, 31.096638, 37.516335>,  <38.055573, 31.497620, 37.394077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709179, 31.096638, 37.516335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761776, 31.427956, 37.734192>,  <38.793335, 31.626747, 37.864906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761776, 31.427956, 37.734192>,  <38.709179, 31.096638, 37.516335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761776, 31.427956, 37.734192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285891, -0.557755, 0.779215,
		0.949197, 0.053244, -0.310145,
		0.131496, 0.828297, 0.544641,
		38.801224, 31.676445, 37.897583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333023, 30.968128, 37.927002>,  <38.709179, 31.096638, 37.516335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333023, 30.968128, 37.927002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164948, 31.277838, 38.116291>,  <39.064102, 31.463663, 38.229866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164948, 31.277838, 38.116291>,  <39.333023, 30.968128, 37.927002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164948, 31.277838, 38.116291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189081, -0.435347, 0.880183,
		0.887519, 0.459322, 0.036528,
		-0.420189, 0.774272, 0.473227,
		39.038891, 31.510118, 38.258259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748844, 31.097071, 38.485596>,  <39.333023, 30.968128, 37.927002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748844, 31.097071, 38.485596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406185, 31.278568, 38.583797>,  <39.200588, 31.387466, 38.642719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406185, 31.278568, 38.583797>,  <39.748844, 31.097071, 38.485596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406185, 31.278568, 38.583797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035288, -0.423218, 0.905340,
		0.514692, 0.784222, 0.346538,
		-0.856648, 0.453743, 0.245501,
		39.149189, 31.414692, 38.657448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909534, 31.307241, 39.090023>,  <39.748844, 31.097071, 38.485596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909534, 31.307241, 39.090023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512112, 31.344715, 39.115509>,  <39.273659, 31.367199, 39.130802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512112, 31.344715, 39.115509>,  <39.909534, 31.307241, 39.090023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512112, 31.344715, 39.115509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044524, -0.194308, 0.979930,
		0.104185, 0.976457, 0.188885,
		-0.993561, 0.093684, 0.063720,
		39.214043, 31.372820, 39.134624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818859, 31.585186, 39.750660>,  <39.909534, 31.307241, 39.090023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818859, 31.585186, 39.750660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455376, 31.446817, 39.657204>,  <39.237286, 31.363796, 39.601128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455376, 31.446817, 39.657204>,  <39.818859, 31.585186, 39.750660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455376, 31.446817, 39.657204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131980, -0.292919, 0.946984,
		-0.396022, 0.891367, 0.220523,
		-0.908706, -0.345922, -0.233645,
		39.182762, 31.343040, 39.587109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346619, 31.878857, 40.257240>,  <39.818859, 31.585186, 39.750660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346619, 31.878857, 40.257240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175163, 31.549078, 40.109425>,  <39.072289, 31.351212, 40.020737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175163, 31.549078, 40.109425>,  <39.346619, 31.878857, 40.257240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175163, 31.549078, 40.109425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116315, -0.355254, 0.927505,
		-0.895956, 0.440549, 0.056381,
		-0.428641, -0.824446, -0.369535,
		39.046570, 31.301744, 39.998566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690243, 31.676826, 40.675468>,  <39.346619, 31.878857, 40.257240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690243, 31.676826, 40.675468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822643, 31.357071, 40.474903>,  <38.902084, 31.165218, 40.354565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822643, 31.357071, 40.474903>,  <38.690243, 31.676826, 40.675468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822643, 31.357071, 40.474903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128095, -0.564512, 0.815425,
		-0.934895, -0.205679, -0.289253,
		0.331003, -0.799388, -0.501413,
		38.921944, 31.117254, 40.324478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170811, 31.130827, 40.810539>,  <38.690243, 31.676826, 40.675468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170811, 31.130827, 40.810539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532757, 30.986769, 40.719749>,  <38.749924, 30.900333, 40.665276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532757, 30.986769, 40.719749>,  <38.170811, 31.130827, 40.810539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532757, 30.986769, 40.719749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019865, -0.568314, 0.822572,
		-0.425234, -0.739808, -0.521401,
		0.904866, -0.360144, -0.226970,
		38.804218, 30.878725, 40.651657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086002, 30.519703, 41.049240>,  <38.170811, 31.130827, 40.810539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086002, 30.519703, 41.049240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483868, 30.548016, 41.019199>,  <38.722588, 30.565002, 41.001175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483868, 30.548016, 41.019199>,  <38.086002, 30.519703, 41.049240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483868, 30.548016, 41.019199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098778, -0.442162, 0.891480,
		0.029891, -0.894138, -0.446792,
		0.994661, 0.070780, -0.075105,
		38.782265, 30.569250, 40.996666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438446, 29.806568, 41.091751>,  <38.086002, 30.519703, 41.049240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438446, 29.806568, 41.091751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710274, 30.070278, 41.220467>,  <38.873371, 30.228504, 41.297695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710274, 30.070278, 41.220467>,  <38.438446, 29.806568, 41.091751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710274, 30.070278, 41.220467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165096, -0.564815, 0.808534,
		0.714795, -0.496327, -0.492673,
		0.679567, 0.659274, 0.321786,
		38.914143, 30.268061, 41.317001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203754, 29.522385, 41.282486>,  <38.438446, 29.806568, 41.091751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203754, 29.522385, 41.282486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224960, 29.887043, 41.445503>,  <39.237686, 30.105839, 41.543312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224960, 29.887043, 41.445503>,  <39.203754, 29.522385, 41.282486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224960, 29.887043, 41.445503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061289, -0.410316, 0.909882,
		0.996711, -0.023263, -0.077629,
		0.053018, 0.911647, 0.407540,
		39.240868, 30.160538, 41.567764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780563, 29.448004, 41.721443>,  <39.203754, 29.522385, 41.282486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780563, 29.448004, 41.721443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578823, 29.763506, 41.862011>,  <39.457779, 29.952806, 41.946350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578823, 29.763506, 41.862011>,  <39.780563, 29.448004, 41.721443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578823, 29.763506, 41.862011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410697, -0.138872, 0.901134,
		0.759575, 0.598817, -0.253898,
		-0.504355, 0.788754, 0.351416,
		39.427517, 30.000132, 41.967438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275372, 29.933453, 42.132919>,  <39.780563, 29.448004, 41.721443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275372, 29.933453, 42.132919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896854, 29.982477, 42.252586>,  <39.669743, 30.011892, 42.324387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896854, 29.982477, 42.252586>,  <40.275372, 29.933453, 42.132919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896854, 29.982477, 42.252586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288204, -0.099532, 0.952382,
		0.146505, 0.987457, 0.058863,
		-0.946295, 0.122564, 0.299171,
		39.612965, 30.019247, 42.342339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360344, 30.118792, 42.922577>,  <40.275372, 29.933453, 42.132919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360344, 30.118792, 42.922577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969215, 30.058035, 42.864902>,  <39.734539, 30.021582, 42.830299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969215, 30.058035, 42.864902>,  <40.360344, 30.118792, 42.922577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969215, 30.058035, 42.864902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139166, -0.043215, 0.989326,
		-0.156500, 0.987452, 0.021119,
		-0.977825, -0.151890, -0.144182,
		39.675869, 30.012468, 42.821648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911469, 30.545134, 43.348530>,  <40.360344, 30.118792, 42.922577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911469, 30.545134, 43.348530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676010, 30.231691, 43.269066>,  <39.534737, 30.043627, 43.221390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676010, 30.231691, 43.269066>,  <39.911469, 30.545134, 43.348530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676010, 30.231691, 43.269066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205208, -0.092849, 0.974304,
		-0.781914, 0.614283, -0.106147,
		-0.588643, -0.783604, -0.198656,
		39.499416, 29.996611, 43.209469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262295, 30.629362, 43.722603>,  <39.911469, 30.545134, 43.348530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262295, 30.629362, 43.722603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292202, 30.236225, 43.655155>,  <39.310146, 30.000343, 43.614689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292202, 30.236225, 43.655155>,  <39.262295, 30.629362, 43.722603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292202, 30.236225, 43.655155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196273, -0.180286, 0.963833,
		-0.977695, -0.038967, -0.206385,
		0.074767, -0.982842, -0.168617,
		39.314632, 29.941372, 43.604568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713680, 30.392044, 44.026131>,  <39.262295, 30.629362, 43.722603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713680, 30.392044, 44.026131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921375, 30.051600, 43.995155>,  <39.045994, 29.847332, 43.976570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921375, 30.051600, 43.995155>,  <38.713680, 30.392044, 44.026131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921375, 30.051600, 43.995155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264748, -0.246339, 0.932323,
		-0.812587, -0.463598, -0.353240,
		0.519240, -0.851113, -0.077435,
		39.077148, 29.796265, 43.971924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328182, 29.785536, 44.135242>,  <38.713680, 30.392044, 44.026131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328182, 29.785536, 44.135242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704315, 29.702770, 44.243286>,  <38.929996, 29.653111, 44.308113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704315, 29.702770, 44.243286>,  <38.328182, 29.785536, 44.135242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704315, 29.702770, 44.243286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282436, -0.031965, 0.958754,
		-0.189746, -0.977837, -0.088498,
		0.940333, -0.206915, 0.270111,
		38.986416, 29.640696, 44.324318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184597, 29.370667, 44.597080>,  <38.328182, 29.785536, 44.135242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184597, 29.370667, 44.597080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571293, 29.424471, 44.684086>,  <38.803310, 29.456755, 44.736290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571293, 29.424471, 44.684086>,  <38.184597, 29.370667, 44.597080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571293, 29.424471, 44.684086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226936, 0.058992, 0.972121,
		0.117930, -0.989154, 0.087556,
		0.966743, 0.134512, 0.217518,
		38.861317, 29.464825, 44.749340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393391, 28.796627, 44.941761>,  <38.184597, 29.370667, 44.597080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393391, 28.796627, 44.941761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620716, 29.112560, 45.034004>,  <38.757111, 29.302120, 45.089352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620716, 29.112560, 45.034004>,  <38.393391, 28.796627, 44.941761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620716, 29.112560, 45.034004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362772, -0.011036, 0.931813,
		0.738524, -0.613220, 0.280258,
		0.568313, 0.789836, 0.230609,
		38.791210, 29.349510, 45.103188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637875, 28.703545, 45.587105>,  <38.393391, 28.796627, 44.941761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637875, 28.703545, 45.587105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743568, 29.088655, 45.564346>,  <38.806984, 29.319721, 45.550690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743568, 29.088655, 45.564346>,  <38.637875, 28.703545, 45.587105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743568, 29.088655, 45.564346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224766, 0.118842, 0.967138,
		0.937901, -0.242766, 0.247803,
		0.264238, 0.962778, -0.056896,
		38.822842, 29.377489, 45.547279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019325, 28.784286, 46.216309>,  <38.637875, 28.703545, 45.587105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019325, 28.784286, 46.216309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858341, 29.128485, 46.091362>,  <38.761753, 29.335005, 46.016392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858341, 29.128485, 46.091362>,  <39.019325, 28.784286, 46.216309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858341, 29.128485, 46.091362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313978, 0.190775, 0.930066,
		0.859911, 0.472387, 0.193398,
		-0.402456, 0.860497, -0.312369,
		38.737606, 29.386635, 45.997650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279957, 29.211586, 46.716965>,  <39.019325, 28.784286, 46.216309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279957, 29.211586, 46.716965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960472, 29.388071, 46.553314>,  <38.768780, 29.493961, 46.455124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960472, 29.388071, 46.553314>,  <39.279957, 29.211586, 46.716965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960472, 29.388071, 46.553314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334174, 0.240174, 0.911397,
		0.500381, 0.864666, -0.044389,
		-0.798715, 0.441213, -0.409127,
		38.720856, 29.520435, 46.430576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292953, 29.788280, 47.019348>,  <39.279957, 29.211586, 46.716965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292953, 29.788280, 47.019348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920197, 29.716105, 46.893478>,  <38.696545, 29.672800, 46.817955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920197, 29.716105, 46.893478>,  <39.292953, 29.788280, 47.019348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920197, 29.716105, 46.893478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352510, 0.245918, 0.902918,
		-0.085537, 0.952348, -0.292775,
		-0.931891, -0.180439, -0.314677,
		38.640629, 29.661972, 46.799076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985298, 30.335299, 47.193794>,  <39.292953, 29.788280, 47.019348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985298, 30.335299, 47.193794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714157, 30.045578, 47.143360>,  <38.551472, 29.871746, 47.113098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714157, 30.045578, 47.143360>,  <38.985298, 30.335299, 47.193794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714157, 30.045578, 47.143360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390023, 0.208901, 0.896796,
		-0.623211, 0.657075, -0.424099,
		-0.677857, -0.724302, -0.126085,
		38.510799, 29.828287, 47.105534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346504, 30.572886, 47.460556>,  <38.985298, 30.335299, 47.193794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346504, 30.572886, 47.460556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247276, 30.186321, 47.433701>,  <38.187740, 29.954382, 47.417587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247276, 30.186321, 47.433701>,  <38.346504, 30.572886, 47.460556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247276, 30.186321, 47.433701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472765, 0.060279, 0.879124,
		-0.845549, 0.249828, -0.471839,
		-0.248071, -0.966412, -0.067141,
		38.172855, 29.896397, 47.413559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745602, 30.615501, 47.677536>,  <38.346504, 30.572886, 47.460556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745602, 30.615501, 47.677536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862659, 30.236528, 47.729279>,  <37.932892, 30.009144, 47.760323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862659, 30.236528, 47.729279>,  <37.745602, 30.615501, 47.677536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862659, 30.236528, 47.729279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379096, 0.009240, 0.925311,
		-0.877865, -0.319823, -0.356463,
		0.292642, -0.947432, 0.129355,
		37.950451, 29.952299, 47.768085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257229, 30.295435, 48.075150>,  <37.745602, 30.615501, 47.677536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257229, 30.295435, 48.075150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561001, 30.048189, 48.156345>,  <37.743263, 29.899841, 48.205063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.561001, 30.048189, 48.156345>,  <37.257229, 30.295435, 48.075150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561001, 30.048189, 48.156345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376023, -0.162397, 0.912269,
		-0.530921, -0.769131, -0.355754,
		0.759427, -0.618114, 0.202991,
		37.788830, 29.862755, 48.217243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950760, 29.705711, 48.233498>,  <37.257229, 30.295435, 48.075150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950760, 29.705711, 48.233498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321037, 29.667622, 48.379936>,  <37.543201, 29.644768, 48.467800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321037, 29.667622, 48.379936>,  <36.950760, 29.705711, 48.233498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321037, 29.667622, 48.379936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375078, -0.356686, 0.855623,
		0.049106, -0.929359, -0.365898,
		0.925691, -0.095224, 0.366098,
		37.598743, 29.639053, 48.489765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950279, 29.108387, 48.627640>,  <36.950760, 29.705711, 48.233498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950279, 29.108387, 48.627640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268391, 29.303823, 48.771198>,  <37.459259, 29.421085, 48.857334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268391, 29.303823, 48.771198>,  <36.950279, 29.108387, 48.627640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268391, 29.303823, 48.771198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192911, -0.357274, 0.913860,
		0.574729, -0.796010, -0.189878,
		0.795281, 0.488593, 0.358895,
		37.506973, 29.450401, 48.878868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043686, 28.716862, 49.202698>,  <36.950279, 29.108387, 48.627640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043686, 28.716862, 49.202698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277302, 29.036617, 49.259087>,  <37.417473, 29.228472, 49.292919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277302, 29.036617, 49.259087>,  <37.043686, 28.716862, 49.202698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277302, 29.036617, 49.259087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056075, -0.133523, 0.989458,
		0.809787, -0.585786, -0.033157,
		0.584038, 0.799391, 0.140973,
		37.452515, 29.276434, 49.301380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715984, 28.554785, 49.492374>,  <37.043686, 28.716862, 49.202698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715984, 28.554785, 49.492374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631397, 28.930321, 49.601082>,  <37.580647, 29.155643, 49.666306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631397, 28.930321, 49.601082>,  <37.715984, 28.554785, 49.492374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631397, 28.930321, 49.601082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227116, -0.223242, 0.947935,
		0.950631, 0.262180, -0.166018,
		-0.211467, 0.938842, 0.271766,
		37.567959, 29.211973, 49.682613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245796, 28.675787, 50.036060>,  <37.715984, 28.554785, 49.492374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245796, 28.675787, 50.036060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992355, 28.980402, 50.090630>,  <37.840290, 29.163170, 50.123371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992355, 28.980402, 50.090630>,  <38.245796, 28.675787, 50.036060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992355, 28.980402, 50.090630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184156, -0.022815, 0.982632,
		0.751423, 0.647720, -0.125786,
		-0.633601, 0.761536, 0.136425,
		37.802277, 29.208862, 50.131557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568764, 29.156698, 50.471439>,  <38.245796, 28.675787, 50.036060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568764, 29.156698, 50.471439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174469, 29.213909, 50.506893>,  <37.937893, 29.248236, 50.528168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174469, 29.213909, 50.506893>,  <38.568764, 29.156698, 50.471439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174469, 29.213909, 50.506893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105484, 0.114851, 0.987766,
		0.131100, 0.983032, -0.128300,
		-0.985741, 0.143030, 0.088637,
		37.878746, 29.256819, 50.533485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621063, 29.651999, 50.866146>,  <38.568764, 29.156698, 50.471439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621063, 29.651999, 50.866146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240791, 29.536528, 50.911541>,  <38.012630, 29.467245, 50.938778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.240791, 29.536528, 50.911541>,  <38.621063, 29.651999, 50.866146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240791, 29.536528, 50.911541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113253, 0.017582, 0.993411,
		-0.288769, 0.957266, 0.015978,
		-0.950677, -0.288676, 0.113490,
		37.955589, 29.449924, 50.945587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214973, 30.083965, 51.336121>,  <38.621063, 29.651999, 50.866146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214973, 30.083965, 51.336121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035038, 29.726728, 51.333855>,  <37.927078, 29.512386, 51.332493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035038, 29.726728, 51.333855>,  <38.214973, 30.083965, 51.336121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035038, 29.726728, 51.333855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022408, -0.017631, 0.999593,
		-0.892829, 0.449528, 0.027943,
		-0.449838, -0.893092, -0.005669,
		37.900085, 29.458801, 51.332153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022022, 30.742035, 51.058563>,  <38.214973, 30.083965, 51.336121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022022, 30.742035, 51.058563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973480, 31.092508, 51.245144>,  <37.944355, 31.302792, 51.357090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973480, 31.092508, 51.245144>,  <38.022022, 30.742035, 51.058563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973480, 31.092508, 51.245144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294866, 0.480532, -0.825920,
		-0.947801, 0.037310, -0.316672,
		-0.121356, 0.876183, 0.466450,
		37.937073, 31.355364, 51.385078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584339, 31.115454, 50.589050>,  <38.022022, 30.742035, 51.058563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584339, 31.115454, 50.589050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793892, 31.351812, 50.834454>,  <37.919624, 31.493628, 50.981693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793892, 31.351812, 50.834454>,  <37.584339, 31.115454, 50.589050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793892, 31.351812, 50.834454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223209, 0.599849, -0.768348,
		-0.822026, 0.539463, 0.182356,
		0.523881, 0.590898, 0.613505,
		37.951057, 31.529081, 51.018505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455437, 31.815128, 50.363209>,  <37.584339, 31.115454, 50.589050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455437, 31.815128, 50.363209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791790, 31.826698, 50.579388>,  <37.993603, 31.833639, 50.709095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791790, 31.826698, 50.579388>,  <37.455437, 31.815128, 50.363209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791790, 31.826698, 50.579388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450109, 0.517118, -0.728005,
		-0.300529, 0.855425, 0.421817,
		0.840883, 0.028923, 0.540444,
		38.044056, 31.835375, 50.741520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656971, 32.537163, 50.330307>,  <37.455437, 31.815128, 50.363209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656971, 32.537163, 50.330307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967960, 32.293961, 50.394638>,  <38.154552, 32.148041, 50.433235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967960, 32.293961, 50.394638>,  <37.656971, 32.537163, 50.330307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967960, 32.293961, 50.394638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487908, 0.421751, -0.764246,
		0.396839, 0.672648, 0.624551,
		0.777474, -0.608005, 0.160823,
		38.201202, 32.111561, 50.442886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097870, 33.003597, 50.204094>,  <37.656971, 32.537163, 50.330307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097870, 33.003597, 50.204094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312065, 32.665783, 50.205559>,  <38.440582, 32.463097, 50.206436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312065, 32.665783, 50.205559>,  <38.097870, 33.003597, 50.204094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312065, 32.665783, 50.205559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478629, 0.299909, -0.825208,
		0.695818, 0.443644, 0.564816,
		0.535492, -0.844532, 0.003659,
		38.472713, 32.412422, 50.206657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696674, 33.242897, 49.925529>,  <38.097870, 33.003597, 50.204094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696674, 33.242897, 49.925529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733337, 32.848576, 49.869251>,  <38.755333, 32.611984, 49.835484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733337, 32.848576, 49.869251>,  <38.696674, 33.242897, 49.925529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733337, 32.848576, 49.869251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443535, 0.166914, -0.880577,
		0.891558, 0.018306, 0.452536,
		0.091654, -0.985801, -0.140695,
		38.760834, 32.552834, 49.827042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413162, 33.142338, 49.586864>,  <38.696674, 33.242897, 49.925529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413162, 33.142338, 49.586864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197895, 32.809086, 49.535828>,  <39.068737, 32.609135, 49.505207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197895, 32.809086, 49.535828>,  <39.413162, 33.142338, 49.586864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197895, 32.809086, 49.535828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262191, -0.021616, -0.964774,
		0.801020, -0.552660, 0.230071,
		-0.538165, -0.833126, -0.127588,
		39.036446, 32.559147, 49.497551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772770, 32.724041, 49.205090>,  <39.413162, 33.142338, 49.586864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772770, 32.724041, 49.205090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408306, 32.577065, 49.130497>,  <39.189629, 32.488880, 49.085743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408306, 32.577065, 49.130497>,  <39.772770, 32.724041, 49.205090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408306, 32.577065, 49.130497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242356, -0.111893, -0.963713,
		0.333240, -0.923292, 0.191003,
		-0.911161, -0.367439, -0.186478,
		39.134956, 32.466831, 49.074554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805374, 32.014256, 48.980473>,  <39.772770, 32.724041, 49.205090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805374, 32.014256, 48.980473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453835, 32.140057, 48.836964>,  <39.242912, 32.215538, 48.750858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453835, 32.140057, 48.836964>,  <39.805374, 32.014256, 48.980473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453835, 32.140057, 48.836964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378886, 0.003058, -0.925438,
		-0.289955, -0.949252, -0.121847,
		-0.878846, 0.314502, -0.358772,
		39.190182, 32.234406, 48.729332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680470, 31.643795, 48.320545>,  <39.805374, 32.014256, 48.980473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680470, 31.643795, 48.320545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438339, 31.960741, 48.290257>,  <39.293060, 32.150909, 48.272083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438339, 31.960741, 48.290257>,  <39.680470, 31.643795, 48.320545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438339, 31.960741, 48.290257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216475, 0.072329, -0.973605,
		-0.765976, -0.605741, -0.215311,
		-0.605326, 0.792367, -0.075726,
		39.256741, 32.198452, 48.267540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467247, 31.568605, 47.683247>,  <39.680470, 31.643795, 48.320545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467247, 31.568605, 47.683247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348949, 31.944071, 47.754177>,  <39.277973, 32.169350, 47.796738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348949, 31.944071, 47.754177>,  <39.467247, 31.568605, 47.683247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348949, 31.944071, 47.754177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143811, 0.139771, -0.979685,
		-0.944382, -0.315233, 0.093655,
		-0.295739, 0.938665, 0.177331,
		39.260227, 32.225670, 47.807377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805046, 31.637348, 47.433968>,  <39.467247, 31.568605, 47.683247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805046, 31.637348, 47.433968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959270, 32.006042, 47.450691>,  <39.051804, 32.227261, 47.460728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959270, 32.006042, 47.450691>,  <38.805046, 31.637348, 47.433968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959270, 32.006042, 47.450691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143679, 0.104739, -0.984066,
		-0.911428, 0.373408, 0.172817,
		0.385559, 0.921735, 0.041811,
		39.074940, 32.282562, 47.463234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369133, 32.049923, 47.074184>,  <38.805046, 31.637348, 47.433968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369133, 32.049923, 47.074184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714115, 32.252258, 47.081127>,  <38.921104, 32.373661, 47.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714115, 32.252258, 47.081127>,  <38.369133, 32.049923, 47.074184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714115, 32.252258, 47.081127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131249, 0.256627, -0.957557,
		-0.488827, 0.823569, 0.287719,
		0.862451, 0.505843, 0.017353,
		38.972851, 32.404011, 47.086334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304455, 32.717983, 46.788555>,  <38.369133, 32.049923, 47.074184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304455, 32.717983, 46.788555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698223, 32.658741, 46.750656>,  <38.934486, 32.623196, 46.727917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698223, 32.658741, 46.750656>,  <38.304455, 32.717983, 46.788555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698223, 32.658741, 46.750656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037256, 0.350925, -0.935662,
		0.171821, 0.924617, 0.339941,
		0.984424, -0.148101, -0.094744,
		38.993549, 32.614311, 46.722233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503162, 33.210453, 46.292496>,  <38.304455, 32.717983, 46.788555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503162, 33.210453, 46.292496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804813, 32.948547, 46.272224>,  <38.985806, 32.791405, 46.260063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804813, 32.948547, 46.272224>,  <38.503162, 33.210453, 46.292496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804813, 32.948547, 46.272224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020936, 0.053155, -0.998367,
		0.656391, 0.753960, 0.026377,
		0.754131, -0.654766, -0.050675,
		39.031052, 32.752117, 46.257023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946358, 33.433662, 45.750603>,  <38.503162, 33.210453, 46.292496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946358, 33.433662, 45.750603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065498, 33.053989, 45.791264>,  <39.136982, 32.826183, 45.815659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065498, 33.053989, 45.791264>,  <38.946358, 33.433662, 45.750603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065498, 33.053989, 45.791264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043262, -0.092949, -0.994730,
		0.953631, 0.300679, 0.013379,
		0.297852, -0.949185, 0.101647,
		39.154854, 32.769234, 45.821758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583477, 33.303837, 45.292072>,  <38.946358, 33.433662, 45.750603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583477, 33.303837, 45.292072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410316, 32.950047, 45.361706>,  <39.306419, 32.737774, 45.403484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410316, 32.950047, 45.361706>,  <39.583477, 33.303837, 45.292072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410316, 32.950047, 45.361706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090158, -0.234627, -0.967896,
		0.896923, -0.403305, 0.181312,
		-0.432898, -0.884474, 0.174081,
		39.280449, 32.684704, 45.413929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014839, 32.778587, 44.978951>,  <39.583477, 33.303837, 45.292072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014839, 32.778587, 44.978951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646393, 32.632244, 45.032158>,  <39.425323, 32.544437, 45.064083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646393, 32.632244, 45.032158>,  <40.014839, 32.778587, 44.978951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646393, 32.632244, 45.032158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055126, -0.215654, -0.974912,
		0.385369, -0.905339, 0.178474,
		-0.921115, -0.365862, 0.133014,
		39.370060, 32.522484, 45.072063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064430, 32.137157, 44.800499>,  <40.014839, 32.778587, 44.978951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064430, 32.137157, 44.800499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675682, 32.217628, 44.751511>,  <39.442432, 32.265911, 44.722118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675682, 32.217628, 44.751511>,  <40.064430, 32.137157, 44.800499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675682, 32.217628, 44.751511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085312, -0.183989, -0.979219,
		-0.219535, -0.962119, 0.161650,
		-0.971867, 0.201182, -0.122472,
		39.384121, 32.277981, 44.714767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859879, 31.588348, 44.343704>,  <40.064430, 32.137157, 44.800499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859879, 31.588348, 44.343704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577717, 31.871582, 44.330933>,  <39.408421, 32.041523, 44.323269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577717, 31.871582, 44.330933>,  <39.859879, 31.588348, 44.343704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577717, 31.871582, 44.330933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008454, -0.036637, -0.999293,
		-0.708751, -0.705179, 0.019858,
		-0.705408, 0.708082, -0.031928,
		39.366093, 32.084007, 44.321354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499500, 31.339499, 43.691025>,  <39.859879, 31.588348, 44.343704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499500, 31.339499, 43.691025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345276, 31.701431, 43.763271>,  <39.252743, 31.918591, 43.806618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345276, 31.701431, 43.763271>,  <39.499500, 31.339499, 43.691025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345276, 31.701431, 43.763271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201927, 0.108256, -0.973399,
		-0.900316, -0.411774, 0.140971,
		-0.385559, 0.904833, 0.180613,
		39.229607, 31.972881, 43.817455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939228, 31.372711, 43.180443>,  <39.499500, 31.339499, 43.691025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939228, 31.372711, 43.180443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050224, 31.744215, 43.278751>,  <39.116821, 31.967117, 43.337734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050224, 31.744215, 43.278751>,  <38.939228, 31.372711, 43.180443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050224, 31.744215, 43.278751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017307, 0.260606, -0.965290,
		-0.960573, 0.263602, 0.088389,
		0.277488, 0.928762, 0.245769,
		39.133469, 32.022842, 43.352482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606831, 31.775774, 42.726402>,  <38.939228, 31.372711, 43.180443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606831, 31.775774, 42.726402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860561, 32.051785, 42.865829>,  <39.012798, 32.217392, 42.949486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860561, 32.051785, 42.865829>,  <38.606831, 31.775774, 42.726402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860561, 32.051785, 42.865829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022284, 0.467018, -0.883967,
		-0.772747, 0.552953, 0.311617,
		0.634323, 0.690027, 0.348565,
		39.050858, 32.258793, 42.970398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401302, 32.633583, 42.525700>,  <38.606831, 31.775774, 42.726402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401302, 32.633583, 42.525700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789024, 32.567390, 42.598438>,  <39.021656, 32.527676, 42.642082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789024, 32.567390, 42.598438>,  <38.401302, 32.633583, 42.525700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789024, 32.567390, 42.598438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241130, 0.495163, -0.834668,
		0.048080, 0.852894, 0.519865,
		0.969301, -0.165486, 0.181851,
		39.079815, 32.517746, 42.652992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639725, 33.249374, 42.232895>,  <38.401302, 32.633583, 42.525700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639725, 33.249374, 42.232895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941235, 32.989807, 42.274330>,  <39.122139, 32.834068, 42.299191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941235, 32.989807, 42.274330>,  <38.639725, 33.249374, 42.232895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941235, 32.989807, 42.274330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433593, 0.372686, -0.820428,
		0.493785, 0.663332, 0.562287,
		0.753773, -0.648919, 0.103589,
		39.167366, 32.795132, 42.305408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189621, 33.624554, 42.107861>,  <38.639725, 33.249374, 42.232895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189621, 33.624554, 42.107861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317051, 33.249470, 42.052429>,  <39.393509, 33.024418, 42.019169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317051, 33.249470, 42.052429>,  <39.189621, 33.624554, 42.107861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317051, 33.249470, 42.052429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311876, 0.241750, -0.918853,
		0.895121, 0.249506, 0.369466,
		0.318578, -0.937712, -0.138581,
		39.412624, 32.968155, 42.010857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819622, 33.739361, 41.824417>,  <39.189621, 33.624554, 42.107861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819622, 33.739361, 41.824417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749996, 33.360859, 41.715378>,  <39.708221, 33.133759, 41.649952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749996, 33.360859, 41.715378>,  <39.819622, 33.739361, 41.824417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749996, 33.360859, 41.715378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303554, 0.211784, -0.928979,
		0.936779, -0.244453, 0.250374,
		-0.174067, -0.946251, -0.272600,
		39.697777, 33.076984, 41.633598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403297, 33.497395, 41.637627>,  <39.819622, 33.739361, 41.824417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403297, 33.497395, 41.637627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117268, 33.279911, 41.461880>,  <39.945648, 33.149422, 41.356430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.117268, 33.279911, 41.461880>,  <40.403297, 33.497395, 41.637627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117268, 33.279911, 41.461880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407814, 0.186023, -0.893914,
		0.567766, -0.818396, 0.088714,
		-0.715073, -0.543713, -0.439371,
		39.902744, 33.116798, 41.330067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745232, 33.058971, 41.187542>,  <40.403297, 33.497395, 41.637627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745232, 33.058971, 41.187542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364677, 33.090462, 41.068428>,  <40.136345, 33.109356, 40.996960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364677, 33.090462, 41.068428>,  <40.745232, 33.058971, 41.187542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364677, 33.090462, 41.068428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308012, 0.237973, -0.921139,
		-0.001656, -0.968076, -0.250652,
		-0.951381, 0.078729, -0.297785,
		40.079262, 33.114079, 40.979092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739834, 32.741035, 40.503624>,  <40.745232, 33.058971, 41.187542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739834, 32.741035, 40.503624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409924, 32.965855, 40.528439>,  <40.211979, 33.100746, 40.543327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409924, 32.965855, 40.528439>,  <40.739834, 32.741035, 40.503624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409924, 32.965855, 40.528439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187372, 0.375154, -0.907828,
		-0.533518, -0.737129, -0.414730,
		-0.824773, 0.562051, 0.062035,
		40.162491, 33.134468, 40.547050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441322, 32.638783, 39.914413>,  <40.739834, 32.741035, 40.503624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441322, 32.638783, 39.914413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240429, 32.958759, 40.045780>,  <40.119892, 33.150745, 40.124599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240429, 32.958759, 40.045780>,  <40.441322, 32.638783, 39.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240429, 32.958759, 40.045780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085111, 0.423674, -0.901807,
		-0.860533, -0.424966, -0.280867,
		-0.502234, 0.799940, 0.328417,
		40.089760, 33.198742, 40.144306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823673, 32.723267, 39.525433>,  <40.441322, 32.638783, 39.914413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823673, 32.723267, 39.525433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919804, 33.077740, 39.683884>,  <39.977482, 33.290424, 39.778954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919804, 33.077740, 39.683884>,  <39.823673, 32.723267, 39.525433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919804, 33.077740, 39.683884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133630, 0.434408, -0.890748,
		-0.961451, 0.161132, 0.222819,
		0.240322, 0.886186, 0.396130,
		39.991901, 33.343597, 39.802723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367352, 33.108288, 39.263012>,  <39.823673, 32.723267, 39.525433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367352, 33.108288, 39.263012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648296, 33.370274, 39.374519>,  <39.816864, 33.527466, 39.441422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648296, 33.370274, 39.374519>,  <39.367352, 33.108288, 39.263012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648296, 33.370274, 39.374519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119264, 0.494366, -0.861033,
		-0.701758, 0.571510, 0.425338,
		0.702362, 0.654964, 0.278765,
		39.859005, 33.566761, 39.458149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085785, 33.764385, 39.094494>,  <39.367352, 33.108288, 39.263012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085785, 33.764385, 39.094494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481052, 33.822281, 39.114777>,  <39.718212, 33.857018, 39.126945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481052, 33.822281, 39.114777>,  <39.085785, 33.764385, 39.094494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481052, 33.822281, 39.114777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058443, 0.661083, -0.748034,
		-0.141793, 0.736220, 0.661721,
		0.988170, 0.144739, 0.050710,
		39.777504, 33.865704, 39.129990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164055, 34.442905, 38.837585>,  <39.085785, 33.764385, 39.094494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164055, 34.442905, 38.837585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534180, 34.291584, 38.827080>,  <39.756252, 34.200790, 38.820778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534180, 34.291584, 38.827080>,  <39.164055, 34.442905, 38.837585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534180, 34.291584, 38.827080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237480, 0.632067, -0.737627,
		0.295649, 0.676295, 0.674697,
		0.925308, -0.378306, -0.026264,
		39.811771, 34.178093, 38.819202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615120, 35.023060, 38.817684>,  <39.164055, 34.442905, 38.837585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615120, 35.023060, 38.817684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825653, 34.723877, 38.655926>,  <39.951973, 34.544369, 38.558872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825653, 34.723877, 38.655926>,  <39.615120, 35.023060, 38.817684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825653, 34.723877, 38.655926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278619, 0.601060, -0.749065,
		0.803333, 0.281586, 0.524753,
		0.526334, -0.747955, -0.404396,
		39.983555, 34.499489, 38.534607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173523, 35.299679, 38.711811>,  <39.615120, 35.023060, 38.817684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173523, 35.299679, 38.711811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185078, 34.999317, 38.447899>,  <40.192009, 34.819099, 38.289551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.185078, 34.999317, 38.447899>,  <40.173523, 35.299679, 38.711811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185078, 34.999317, 38.447899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377585, 0.619346, -0.688360,
		0.925524, -0.229239, 0.301421,
		0.028885, -0.750906, -0.659777,
		40.193745, 34.774044, 38.249966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704868, 35.571583, 38.265282>,  <40.173523, 35.299679, 38.711811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704868, 35.571583, 38.265282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554024, 35.239063, 38.101952>,  <40.463516, 35.039551, 38.003952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554024, 35.239063, 38.101952>,  <40.704868, 35.571583, 38.265282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554024, 35.239063, 38.101952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475301, 0.204683, -0.855683,
		0.794905, -0.516767, 0.317928,
		-0.377114, -0.831298, -0.408324,
		40.440891, 34.989674, 37.979454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231552, 35.276344, 37.884872>,  <40.704868, 35.571583, 38.265282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231552, 35.276344, 37.884872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879814, 35.219234, 37.703159>,  <40.668774, 35.184971, 37.594131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879814, 35.219234, 37.703159>,  <41.231552, 35.276344, 37.884872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879814, 35.219234, 37.703159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338670, 0.483141, -0.807389,
		0.334756, -0.863824, -0.376493,
		-0.879341, -0.142771, -0.454286,
		40.616013, 35.176403, 37.566872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412483, 35.083984, 37.220207>,  <41.231552, 35.276344, 37.884872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412483, 35.083984, 37.220207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031082, 35.197739, 37.180286>,  <40.802242, 35.265991, 37.156334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031082, 35.197739, 37.180286>,  <41.412483, 35.083984, 37.220207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031082, 35.197739, 37.180286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237058, 0.503166, -0.831040,
		-0.186123, -0.816055, -0.547186,
		-0.953500, 0.284391, -0.099801,
		40.745033, 35.283054, 37.150345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853027, 35.820667, 37.360729>,  <41.412483, 35.083984, 37.220207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853027, 35.820667, 37.360729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869850, 36.180618, 37.187084>,  <41.879944, 36.396587, 37.082897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869850, 36.180618, 37.187084>,  <41.853027, 35.820667, 37.360729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869850, 36.180618, 37.187084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600384, 0.324533, 0.730902,
		0.798605, -0.291374, -0.526623,
		0.042059, 0.899878, -0.434109,
		41.882469, 36.450581, 37.056850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288311, 35.839127, 38.007252>,  <41.853027, 35.820667, 37.360729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288311, 35.839127, 38.007252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509846, 35.520683, 37.909698>,  <42.642765, 35.329617, 37.851166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509846, 35.520683, 37.909698>,  <42.288311, 35.839127, 38.007252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509846, 35.520683, 37.909698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384898, 0.504523, -0.772858,
		0.738323, 0.334166, 0.585844,
		0.553835, -0.796109, -0.243881,
		42.675995, 35.281849, 37.836533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028145, 35.950005, 37.926838>,  <42.288311, 35.839127, 38.007252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028145, 35.950005, 37.926838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939812, 35.638458, 37.692024>,  <42.886810, 35.451530, 37.551136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939812, 35.638458, 37.692024>,  <43.028145, 35.950005, 37.926838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939812, 35.638458, 37.692024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229044, 0.543642, -0.807461,
		0.948036, -0.312769, 0.058340,
		-0.220833, -0.778864, -0.587030,
		42.873562, 35.404800, 37.515915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624863, 35.710152, 37.439968>,  <43.028145, 35.950005, 37.926838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624863, 35.710152, 37.439968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261951, 35.626106, 37.294258>,  <43.044205, 35.575680, 37.206833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261951, 35.626106, 37.294258>,  <43.624863, 35.710152, 37.439968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261951, 35.626106, 37.294258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196464, 0.554110, -0.808928,
		0.371812, -0.805491, -0.461454,
		-0.907280, -0.210110, -0.364275,
		42.989769, 35.563072, 37.184975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615437, 35.366390, 36.755516>,  <43.624863, 35.710152, 37.439968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615437, 35.366390, 36.755516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273540, 35.567730, 36.806213>,  <43.068401, 35.688534, 36.836632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273540, 35.567730, 36.806213>,  <43.615437, 35.366390, 36.755516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273540, 35.567730, 36.806213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193909, 0.536142, -0.821554,
		-0.481476, -0.677638, -0.555866,
		-0.854740, 0.503346, 0.126740,
		43.017120, 35.718735, 36.844234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282948, 35.370487, 36.023525>,  <43.615437, 35.366390, 36.755516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282948, 35.370487, 36.023525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223122, 35.680229, 36.269451>,  <43.187225, 35.866074, 36.417007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223122, 35.680229, 36.269451>,  <43.282948, 35.370487, 36.023525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223122, 35.680229, 36.269451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057503, 0.627571, -0.776433,
		-0.987079, -0.080770, -0.138387,
		-0.149560, 0.774358, 0.614818,
		43.178253, 35.912537, 36.453896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606880, 35.816208, 35.972206>,  <43.282948, 35.370487, 36.023525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606880, 35.816208, 35.972206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901852, 36.051853, 36.104351>,  <43.078835, 36.193241, 36.183640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901852, 36.051853, 36.104351>,  <42.606880, 35.816208, 35.972206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901852, 36.051853, 36.104351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002321, 0.486913, -0.873447,
		-0.675417, 0.644875, 0.357698,
		0.737432, 0.589111, 0.330366,
		43.123081, 36.228588, 36.203461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405319, 36.580578, 35.984131>,  <42.606880, 35.816208, 35.972206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405319, 36.580578, 35.984131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791019, 36.494789, 35.921875>,  <43.022438, 36.443314, 35.884521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791019, 36.494789, 35.921875>,  <42.405319, 36.580578, 35.984131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791019, 36.494789, 35.921875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080324, 0.323153, -0.942932,
		0.252532, 0.921722, 0.294372,
		0.964249, -0.214475, -0.155643,
		43.080296, 36.430447, 35.875183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669983, 37.216408, 35.717754>,  <42.405319, 36.580578, 35.984131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669983, 37.216408, 35.717754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905396, 36.906536, 35.625225>,  <43.046642, 36.720612, 35.569710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905396, 36.906536, 35.625225>,  <42.669983, 37.216408, 35.717754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905396, 36.906536, 35.625225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090849, 0.220937, -0.971048,
		0.803356, 0.592505, 0.059649,
		0.588529, -0.774678, -0.231319,
		43.081955, 36.674133, 35.555828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064892, 37.457493, 35.088688>,  <42.669983, 37.216408, 35.717754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064892, 37.457493, 35.088688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105289, 37.059780, 35.102547>,  <43.129528, 36.821152, 35.110863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105289, 37.059780, 35.102547>,  <43.064892, 37.457493, 35.088688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105289, 37.059780, 35.102547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090729, -0.043888, -0.994908,
		0.990742, 0.097334, -0.094642,
		0.100992, -0.994284, 0.034651,
		43.135586, 36.761494, 35.112942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720245, 37.241440, 34.661224>,  <43.064892, 37.457493, 35.088688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720245, 37.241440, 34.661224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468689, 36.931297, 34.684277>,  <43.317757, 36.745213, 34.698109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468689, 36.931297, 34.684277>,  <43.720245, 37.241440, 34.661224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468689, 36.931297, 34.684277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121959, 0.025167, -0.992216,
		0.767871, -0.631021, -0.110389,
		-0.628888, -0.775357, 0.057634,
		43.280022, 36.698689, 34.701569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993408, 36.815655, 34.246922>,  <43.720245, 37.241440, 34.661224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993408, 36.815655, 34.246922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619934, 36.674263, 34.269833>,  <43.395847, 36.589428, 34.283577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619934, 36.674263, 34.269833>,  <43.993408, 36.815655, 34.246922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619934, 36.674263, 34.269833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017710, -0.114170, -0.993303,
		0.357647, -0.928450, 0.100340,
		-0.933689, -0.353475, 0.057275,
		43.339828, 36.568222, 34.287014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019932, 36.377224, 33.670582>,  <43.993408, 36.815655, 34.246922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019932, 36.377224, 33.670582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633076, 36.410889, 33.766541>,  <43.400963, 36.431087, 33.824116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633076, 36.410889, 33.766541>,  <44.019932, 36.377224, 33.670582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633076, 36.410889, 33.766541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253553, -0.250382, -0.934355,
		-0.018573, -0.964482, 0.263495,
		-0.967143, 0.084164, 0.239897,
		43.342934, 36.436138, 33.838509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681232, 35.764515, 33.470425>,  <44.019932, 36.377224, 33.670582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681232, 35.764515, 33.470425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408485, 36.056873, 33.482059>,  <43.244839, 36.232288, 33.489040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408485, 36.056873, 33.482059>,  <43.681232, 35.764515, 33.470425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408485, 36.056873, 33.482059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400827, -0.340084, -0.850694,
		-0.611881, -0.591716, 0.524856,
		-0.681865, 0.730900, 0.029084,
		43.203926, 36.276142, 33.490784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188095, 35.518494, 33.003284>,  <43.681232, 35.764515, 33.470425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188095, 35.518494, 33.003284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101536, 35.905945, 33.052174>,  <43.049599, 36.138416, 33.081509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101536, 35.905945, 33.052174>,  <43.188095, 35.518494, 33.003284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101536, 35.905945, 33.052174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389449, 0.029158, -0.920586,
		-0.895266, -0.246814, 0.370920,
		-0.216398, 0.968624, 0.122226,
		43.036617, 36.196533, 33.088840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562527, 35.577415, 32.595963>,  <43.188095, 35.518494, 33.003284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562527, 35.577415, 32.595963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706009, 35.949097, 32.631535>,  <42.792099, 36.172108, 32.652878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706009, 35.949097, 32.631535>,  <42.562527, 35.577415, 32.595963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706009, 35.949097, 32.631535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210852, 0.173465, -0.962004,
		-0.909327, 0.326320, 0.258148,
		0.358701, 0.929207, 0.088931,
		42.813618, 36.227859, 32.658215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044846, 35.987812, 32.201393>,  <42.562527, 35.577415, 32.595963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044846, 35.987812, 32.201393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393833, 36.181648, 32.226582>,  <42.603226, 36.297951, 32.241695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393833, 36.181648, 32.226582>,  <42.044846, 35.987812, 32.201393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393833, 36.181648, 32.226582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082313, 0.272756, -0.958556,
		-0.481680, 0.831131, 0.277860,
		0.872473, 0.484588, 0.062968,
		42.655575, 36.327026, 32.245472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905071, 36.674080, 32.087135>,  <42.044846, 35.987812, 32.201393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905071, 36.674080, 32.087135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296661, 36.649540, 32.009331>,  <42.531616, 36.634815, 31.962648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296661, 36.649540, 32.009331>,  <41.905071, 36.674080, 32.087135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296661, 36.649540, 32.009331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168781, 0.291715, -0.941496,
		0.114504, 0.954536, 0.275228,
		0.978980, -0.061352, -0.194510,
		42.590355, 36.631134, 31.950977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047810, 37.336212, 31.773943>,  <41.905071, 36.674080, 32.087135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047810, 37.336212, 31.773943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342022, 37.081139, 31.682419>,  <42.518551, 36.928093, 31.627504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342022, 37.081139, 31.682419>,  <42.047810, 37.336212, 31.773943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342022, 37.081139, 31.682419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018750, 0.318442, -0.947757,
		0.677232, 0.701394, 0.222267,
		0.735531, -0.637684, -0.228810,
		42.562679, 36.889835, 31.613775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430008, 37.683525, 31.247820>,  <42.047810, 37.336212, 31.773943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430008, 37.683525, 31.247820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563820, 37.311108, 31.189518>,  <42.644108, 37.087658, 31.154537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563820, 37.311108, 31.189518>,  <42.430008, 37.683525, 31.247820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563820, 37.311108, 31.189518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132910, 0.199734, -0.970794,
		0.932965, 0.305388, 0.190562,
		0.334531, -0.931045, -0.145756,
		42.664181, 37.031796, 31.145792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982353, 37.692375, 30.731508>,  <42.430008, 37.683525, 31.247820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982353, 37.692375, 30.731508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876472, 37.306652, 30.728668>,  <42.812943, 37.075218, 30.726965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876472, 37.306652, 30.728668>,  <42.982353, 37.692375, 30.731508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876472, 37.306652, 30.728668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041788, -0.004114, -0.999118,
		0.963425, -0.264764, 0.041386,
		-0.264701, -0.964305, -0.007100,
		42.797062, 37.017361, 30.726538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466400, 37.358776, 30.261303>,  <42.982353, 37.692375, 30.731508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466400, 37.358776, 30.261303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168221, 37.093075, 30.283503>,  <42.989315, 36.933655, 30.296822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.168221, 37.093075, 30.283503>,  <43.466400, 37.358776, 30.261303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168221, 37.093075, 30.283503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011912, -0.096520, -0.995260,
		0.666460, -0.741251, 0.079862,
		-0.745445, -0.664252, 0.055497,
		42.944588, 36.893799, 30.300152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739967, 36.907867, 29.835135>,  <43.466400, 37.358776, 30.261303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739967, 36.907867, 29.835135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355019, 36.801338, 29.856691>,  <43.124050, 36.737419, 29.869625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355019, 36.801338, 29.856691>,  <43.739967, 36.907867, 29.835135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355019, 36.801338, 29.856691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037932, -0.064715, -0.997183,
		0.269063, -0.961708, 0.052178,
		-0.962375, -0.266326, 0.053892,
		43.066307, 36.721439, 29.872858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550503, 36.323318, 29.359297>,  <43.739967, 36.907867, 29.835135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550503, 36.323318, 29.359297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202530, 36.513210, 29.412739>,  <42.993748, 36.627144, 29.444805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202530, 36.513210, 29.412739>,  <43.550503, 36.323318, 29.359297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202530, 36.513210, 29.412739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064988, 0.158202, -0.985266,
		-0.488873, -0.865796, -0.106773,
		-0.869931, 0.474731, 0.133607,
		42.941551, 36.655628, 29.452822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230442, 35.993187, 28.811319>,  <43.550503, 36.323318, 29.359297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230442, 35.993187, 28.811319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011074, 36.307861, 28.924717>,  <42.879452, 36.496666, 28.992756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.011074, 36.307861, 28.924717>,  <43.230442, 35.993187, 28.811319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011074, 36.307861, 28.924717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140207, 0.247716, -0.958634,
		-0.824365, -0.565481, -0.025554,
		-0.548419, 0.786682, 0.283493,
		42.846550, 36.543865, 29.009766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630203, 36.006279, 28.431078>,  <43.230442, 35.993187, 28.811319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630203, 36.006279, 28.431078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618462, 36.392174, 28.535713>,  <42.611416, 36.623711, 28.598494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618462, 36.392174, 28.535713>,  <42.630203, 36.006279, 28.431078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618462, 36.392174, 28.535713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280078, 0.243278, -0.928640,
		-0.959528, -0.100527, 0.263059,
		-0.029357, 0.964733, 0.261588,
		42.609653, 36.681595, 28.614189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010242, 36.349098, 28.154819>,  <42.630203, 36.006279, 28.431078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010242, 36.349098, 28.154819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282238, 36.638279, 28.203724>,  <42.445435, 36.811787, 28.233067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282238, 36.638279, 28.203724>,  <42.010242, 36.349098, 28.154819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282238, 36.638279, 28.203724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164546, 0.312958, -0.935405,
		-0.714517, 0.615951, 0.331768,
		0.679993, 0.722953, 0.122261,
		42.486237, 36.855164, 28.240402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740852, 36.989601, 27.904650>,  <42.010242, 36.349098, 28.154819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740852, 36.989601, 27.904650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138599, 37.021469, 27.876711>,  <42.377247, 37.040592, 27.859947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138599, 37.021469, 27.876711>,  <41.740852, 36.989601, 27.904650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138599, 37.021469, 27.876711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088325, 0.259186, -0.961780,
		-0.058525, 0.962536, 0.264764,
		0.994371, 0.079674, -0.069847,
		42.436913, 37.045372, 27.855757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515068, 36.285564, 27.469812>,  <41.740852, 36.989601, 27.904650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515068, 36.285564, 27.469812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336285, 35.977032, 27.651043>,  <41.229015, 35.791912, 27.759781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336285, 35.977032, 27.651043>,  <41.515068, 36.285564, 27.469812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336285, 35.977032, 27.651043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783464, -0.581983, -0.217897,
		0.431753, 0.257578, 0.864432,
		-0.446959, -0.771330, 0.453076,
		41.202198, 35.745632, 27.786966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733471, 35.666821, 27.324957>,  <41.515068, 36.285564, 27.469812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733471, 35.666821, 27.324957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097813, 35.504360, 27.295584>,  <42.316418, 35.406883, 27.277960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097813, 35.504360, 27.295584>,  <41.733471, 35.666821, 27.324957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097813, 35.504360, 27.295584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379048, -0.893563, 0.240557,
		-0.163318, -0.191278, -0.967853,
		0.910851, -0.406150, -0.073431,
		42.371067, 35.382515, 27.273554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677784, 34.967323, 26.936420>,  <41.733471, 35.666821, 27.324957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677784, 34.967323, 26.936420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001621, 34.967819, 27.171215>,  <42.195923, 34.968117, 27.312092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001621, 34.967819, 27.171215>,  <41.677784, 34.967323, 26.936420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001621, 34.967819, 27.171215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263294, -0.892985, 0.365040,
		0.524622, -0.450085, -0.722631,
		0.809597, 0.001243, 0.586984,
		42.244499, 34.968193, 27.347311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089443, 34.325977, 26.862780>,  <41.677784, 34.967323, 26.936420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089443, 34.325977, 26.862780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146851, 34.491016, 27.222595>,  <42.181293, 34.590038, 27.438484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146851, 34.491016, 27.222595>,  <42.089443, 34.325977, 26.862780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146851, 34.491016, 27.222595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471822, -0.770471, 0.428671,
		0.869935, -0.485943, 0.084097,
		0.143515, 0.412595, 0.899538,
		42.189903, 34.614796, 27.492456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310852, 33.635231, 26.786888>,  <42.089443, 34.325977, 26.862780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310852, 33.635231, 26.786888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202137, 33.321178, 27.009493>,  <42.136909, 33.132748, 27.143057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202137, 33.321178, 27.009493>,  <42.310852, 33.635231, 26.786888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202137, 33.321178, 27.009493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528254, 0.361659, 0.768212,
		-0.804413, 0.502771, 0.316452,
		-0.271787, -0.785127, 0.556514,
		42.120602, 33.085640, 27.176447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172787, 33.858486, 27.474430>,  <42.310852, 33.635231, 26.786888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172787, 33.858486, 27.474430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268410, 33.470547, 27.493355>,  <42.325783, 33.237782, 27.504709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268410, 33.470547, 27.493355>,  <42.172787, 33.858486, 27.474430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268410, 33.470547, 27.493355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588066, 0.183380, 0.787750,
		-0.772676, -0.160498, 0.614176,
		0.239060, -0.969852, 0.047310,
		42.340126, 33.179592, 27.507547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069023, 33.682293, 28.168150>,  <42.172787, 33.858486, 27.474430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069023, 33.682293, 28.168150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332401, 33.441090, 27.988001>,  <42.490429, 33.296368, 27.879911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332401, 33.441090, 27.988001>,  <42.069023, 33.682293, 28.168150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332401, 33.441090, 27.988001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713556, 0.309848, 0.628356,
		-0.239357, -0.735102, 0.634297,
		0.658442, -0.603008, -0.450372,
		42.529934, 33.260189, 27.852888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577755, 33.436741, 28.730389>,  <42.069023, 33.682293, 28.168150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577755, 33.436741, 28.730389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758121, 33.405350, 28.374746>,  <42.866341, 33.386513, 28.161360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758121, 33.405350, 28.374746>,  <42.577755, 33.436741, 28.730389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758121, 33.405350, 28.374746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892545, 0.032998, 0.449749,
		-0.005958, -0.996369, 0.084928,
		0.450919, -0.078481, -0.889108,
		42.893398, 33.381805, 28.108013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.208652, 32.895641, 28.829897>,  <42.577755, 33.436741, 28.730389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.208652, 32.895641, 28.829897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219624, 33.179165, 28.547951>,  <43.226208, 33.349277, 28.378782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219624, 33.179165, 28.547951>,  <43.208652, 32.895641, 28.829897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219624, 33.179165, 28.547951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763477, 0.440302, 0.472479,
		0.645252, -0.551110, -0.529082,
		0.027432, 0.708810, -0.704866,
		43.227852, 33.391808, 28.336491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870914, 32.861698, 28.461597>,  <43.208652, 32.895641, 28.829897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870914, 32.861698, 28.461597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711945, 33.228642, 28.470594>,  <43.616562, 33.448807, 28.475992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711945, 33.228642, 28.470594>,  <43.870914, 32.861698, 28.461597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711945, 33.228642, 28.470594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808515, 0.338468, 0.481397,
		0.434000, 0.209508, -0.876214,
		-0.397427, 0.917358, 0.022495,
		43.592716, 33.503849, 28.477343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491646, 33.235237, 28.495350>,  <43.870914, 32.861698, 28.461597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491646, 33.235237, 28.495350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191124, 33.486649, 28.575848>,  <44.010811, 33.637497, 28.624146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191124, 33.486649, 28.575848>,  <44.491646, 33.235237, 28.495350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191124, 33.486649, 28.575848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607715, 0.539974, 0.582332,
		0.257346, 0.559805, -0.787649,
		-0.751302, 0.628527, 0.201242,
		43.965733, 33.675205, 28.636221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714027, 33.897305, 28.304472>,  <44.491646, 33.235237, 28.495350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714027, 33.897305, 28.304472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427917, 33.914978, 28.583448>,  <44.256252, 33.925583, 28.750834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.427917, 33.914978, 28.583448>,  <44.714027, 33.897305, 28.304472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427917, 33.914978, 28.583448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562477, 0.628657, 0.537039,
		-0.414724, 0.776427, -0.474516,
		-0.715279, 0.044181, 0.697442,
		44.213333, 33.928234, 28.792681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666019, 34.578911, 28.488487>,  <44.714027, 33.897305, 28.304472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666019, 34.578911, 28.488487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506664, 34.374596, 28.793219>,  <44.411053, 34.252007, 28.976057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506664, 34.374596, 28.793219>,  <44.666019, 34.578911, 28.488487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506664, 34.374596, 28.793219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451187, 0.614015, 0.647624,
		-0.798573, 0.601732, -0.014155,
		-0.398387, -0.510788, 0.761829,
		44.387150, 34.221359, 29.021767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667736, 35.060719, 29.009800>,  <44.666019, 34.578911, 28.488487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667736, 35.060719, 29.009800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588150, 34.748123, 29.246340>,  <44.540398, 34.560566, 29.388264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.588150, 34.748123, 29.246340>,  <44.667736, 35.060719, 29.009800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588150, 34.748123, 29.246340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363361, 0.501580, 0.785103,
		-0.910156, 0.371079, 0.184166,
		-0.198961, -0.781484, 0.591352,
		44.528461, 34.513680, 29.423746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454945, 35.404713, 29.650024>,  <44.667736, 35.060719, 29.009800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454945, 35.404713, 29.650024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506706, 35.028206, 29.774778>,  <44.537762, 34.802303, 29.849630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506706, 35.028206, 29.774778>,  <44.454945, 35.404713, 29.650024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506706, 35.028206, 29.774778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525036, 0.331858, 0.783714,
		-0.841185, 0.062336, 0.537142,
		0.129401, -0.941268, 0.311883,
		44.545525, 34.745827, 29.868343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151741, 35.323021, 30.301870>,  <44.454945, 35.404713, 29.650024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151741, 35.323021, 30.301870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444477, 35.050468, 30.297388>,  <44.620117, 34.886936, 30.294699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444477, 35.050468, 30.297388>,  <44.151741, 35.323021, 30.301870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444477, 35.050468, 30.297388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229054, 0.230458, 0.945740,
		-0.641831, -0.694696, 0.324732,
		0.731838, -0.681386, -0.011208,
		44.664028, 34.846054, 30.294025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108406, 34.885441, 30.889008>,  <44.151741, 35.323021, 30.301870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108406, 34.885441, 30.889008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496307, 34.846985, 30.799273>,  <44.729050, 34.823910, 30.745432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496307, 34.846985, 30.799273>,  <44.108406, 34.885441, 30.889008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496307, 34.846985, 30.799273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241686, 0.250120, 0.937565,
		-0.034028, -0.963429, 0.265792,
		0.969758, -0.096142, -0.224336,
		44.787235, 34.818142, 30.731972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480968, 34.901901, 31.540503>,  <44.108406, 34.885441, 30.889008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480968, 34.901901, 31.540503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807259, 34.864681, 31.312140>,  <45.003033, 34.842350, 31.175121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807259, 34.864681, 31.312140>,  <44.480968, 34.901901, 31.540503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807259, 34.864681, 31.312140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567100, -0.065839, 0.821014,
		-0.113979, -0.993483, -0.000941,
		0.815725, -0.093045, -0.570908,
		45.051975, 34.836769, 31.140867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818741, 34.369095, 31.748581>,  <44.480968, 34.901901, 31.540503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818741, 34.369095, 31.748581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102489, 34.582493, 31.564329>,  <45.272739, 34.710533, 31.453779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.102489, 34.582493, 31.564329>,  <44.818741, 34.369095, 31.748581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102489, 34.582493, 31.564329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548190, -0.006810, 0.836326,
		0.443043, -0.845773, -0.297289,
		0.709367, 0.533499, -0.460627,
		45.315300, 34.742542, 31.426142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464725, 34.092365, 31.920013>,  <44.818741, 34.369095, 31.748581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464725, 34.092365, 31.920013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567757, 34.463261, 31.811283>,  <45.629574, 34.685799, 31.746046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.567757, 34.463261, 31.811283>,  <45.464725, 34.092365, 31.920013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567757, 34.463261, 31.811283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538565, 0.095800, 0.837120,
		0.802249, -0.362015, -0.474701,
		0.257573, 0.927236, -0.271824,
		45.645027, 34.741432, 31.729736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.146961, 34.195724, 32.180279>,  <45.464725, 34.092365, 31.920013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.146961, 34.195724, 32.180279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976345, 34.554226, 32.131626>,  <45.873974, 34.769325, 32.102432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.976345, 34.554226, 32.131626>,  <46.146961, 34.195724, 32.180279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976345, 34.554226, 32.131626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091807, 0.176690, 0.979976,
		0.899797, 0.406833, -0.157647,
		-0.426541, 0.896252, -0.121635,
		45.848381, 34.823101, 32.095135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580723, 34.717243, 32.531857>,  <46.146961, 34.195724, 32.180279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580723, 34.717243, 32.531857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211575, 34.868076, 32.500546>,  <45.990086, 34.958576, 32.481758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211575, 34.868076, 32.500546>,  <46.580723, 34.717243, 32.531857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211575, 34.868076, 32.500546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033083, 0.280123, 0.959394,
		0.383693, 0.882804, -0.270991,
		-0.922868, 0.377078, -0.078275,
		45.934715, 34.981201, 32.477062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590683, 35.292763, 32.958298>,  <46.580723, 34.717243, 32.531857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590683, 35.292763, 32.958298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.202053, 35.233917, 32.884113>,  <45.968876, 35.198612, 32.839603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.202053, 35.233917, 32.884113>,  <46.590683, 35.292763, 32.958298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.202053, 35.233917, 32.884113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220430, 0.276601, 0.935362,
		-0.086302, 0.949659, -0.301166,
		-0.971577, -0.147109, -0.185462,
		45.910580, 35.189785, 32.828476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213779, 35.949329, 33.056347>,  <46.590683, 35.292763, 32.958298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213779, 35.949329, 33.056347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977993, 35.639336, 33.147499>,  <45.836521, 35.453339, 33.202190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977993, 35.639336, 33.147499>,  <46.213779, 35.949329, 33.056347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977993, 35.639336, 33.147499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100626, 0.350357, 0.931195,
		-0.801503, 0.525975, -0.284507,
		-0.589464, -0.774984, 0.227885,
		45.801155, 35.406841, 33.215866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620628, 36.221333, 33.405960>,  <46.213779, 35.949329, 33.056347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620628, 36.221333, 33.405960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634819, 35.836933, 33.515667>,  <45.643333, 35.606293, 33.581490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634819, 35.836933, 33.515667>,  <45.620628, 36.221333, 33.405960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634819, 35.836933, 33.515667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133972, 0.267389, 0.954230,
		-0.990350, -0.070596, -0.119262,
		0.035475, -0.960999, 0.274267,
		45.645462, 35.548634, 33.597946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059540, 36.164040, 33.906734>,  <45.620628, 36.221333, 33.405960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059540, 36.164040, 33.906734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294807, 35.850334, 33.985722>,  <45.435966, 35.662113, 34.033115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.294807, 35.850334, 33.985722>,  <45.059540, 36.164040, 33.906734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294807, 35.850334, 33.985722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064544, 0.197868, 0.978101,
		-0.806159, -0.588033, 0.065760,
		0.588168, -0.784261, 0.197467,
		45.471256, 35.615055, 34.044960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713341, 35.898220, 34.413021>,  <45.059540, 36.164040, 33.906734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713341, 35.898220, 34.413021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080368, 35.744804, 34.454895>,  <45.300587, 35.652756, 34.480019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080368, 35.744804, 34.454895>,  <44.713341, 35.898220, 34.413021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080368, 35.744804, 34.454895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042301, 0.167643, 0.984940,
		-0.395312, -0.908182, 0.137600,
		0.917572, -0.383538, 0.104688,
		45.355640, 35.629742, 34.486301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678963, 35.416210, 34.933250>,  <44.713341, 35.898220, 34.413021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678963, 35.416210, 34.933250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071949, 35.486542, 34.908424>,  <45.307739, 35.528740, 34.893528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071949, 35.486542, 34.908424>,  <44.678963, 35.416210, 34.933250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071949, 35.486542, 34.908424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031222, 0.173026, 0.984422,
		0.183827, -0.969096, 0.164502,
		0.982462, 0.175828, -0.062064,
		45.366688, 35.539288, 34.889805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025185, 35.022331, 35.491875>,  <44.678963, 35.416210, 34.933250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025185, 35.022331, 35.491875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.293648, 35.307526, 35.410694>,  <45.454727, 35.478642, 35.361984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.293648, 35.307526, 35.410694>,  <45.025185, 35.022331, 35.491875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.293648, 35.307526, 35.410694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016134, 0.259666, 0.965564,
		0.741137, -0.651322, 0.162774,
		0.671160, 0.712989, -0.202956,
		45.494995, 35.521423, 35.349808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473579, 34.971355, 36.011574>,  <45.025185, 35.022331, 35.491875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473579, 34.971355, 36.011574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588276, 35.324684, 35.863239>,  <45.657093, 35.536682, 35.774239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.588276, 35.324684, 35.863239>,  <45.473579, 34.971355, 36.011574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588276, 35.324684, 35.863239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061238, 0.369401, 0.927250,
		0.956050, -0.288586, 0.051828,
		0.286737, 0.883324, -0.370838,
		45.674297, 35.589680, 35.751987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131931, 35.288994, 36.422115>,  <45.473579, 34.971355, 36.011574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131931, 35.288994, 36.422115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901577, 35.573700, 36.261242>,  <45.763363, 35.744522, 36.164719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901577, 35.573700, 36.261242>,  <46.131931, 35.288994, 36.422115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901577, 35.573700, 36.261242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208483, 0.347825, 0.914086,
		0.790500, 0.610257, -0.051918,
		-0.575886, 0.711761, -0.402184,
		45.728813, 35.787228, 36.140587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.866055, 35.446068, 36.368050>,  <46.131931, 35.288994, 36.422115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.866055, 35.446068, 36.368050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934441, 35.574799, 35.995556>,  <46.975471, 35.652039, 35.772060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.934441, 35.574799, 35.995556>,  <46.866055, 35.446068, 36.368050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934441, 35.574799, 35.995556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715759, -0.690088, -0.107088,
		-0.677098, -0.648232, -0.348330,
		0.170961, 0.321830, -0.931235,
		46.985729, 35.671349, 35.716187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.995392, 34.865650, 35.931717>,  <46.866055, 35.446068, 36.368050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.995392, 34.865650, 35.931717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.136345, 35.177883, 35.725216>,  <47.220917, 35.365223, 35.601315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.136345, 35.177883, 35.725216>,  <46.995392, 34.865650, 35.931717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.136345, 35.177883, 35.725216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857754, -0.490007, -0.155407,
		-0.374277, -0.388058, -0.842216,
		0.352384, 0.780579, -0.516257,
		47.242062, 35.412056, 35.570339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.255981, 34.602856, 35.341297>,  <46.995392, 34.865650, 35.931717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.255981, 34.602856, 35.341297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430523, 34.960335, 35.383057>,  <47.535248, 35.174824, 35.408112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430523, 34.960335, 35.383057>,  <47.255981, 34.602856, 35.341297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.430523, 34.960335, 35.383057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882858, -0.402869, -0.241370,
		-0.173652, 0.197493, -0.964801,
		0.436357, 0.893696, 0.104400,
		47.561432, 35.228443, 35.414375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.580639, 34.901604, 34.809380>,  <47.255981, 34.602856, 35.341297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.580639, 34.901604, 34.809380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764561, 35.089005, 35.111130>,  <47.874912, 35.201447, 35.292179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764561, 35.089005, 35.111130>,  <47.580639, 34.901604, 34.809380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.764561, 35.089005, 35.111130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879622, -0.356857, -0.314512,
		0.121854, 0.808180, -0.576191,
		0.459801, 0.468506, 0.754378,
		47.902500, 35.229557, 35.337444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.813858, 34.973289, 44.745342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421314, 34.991158, 44.820118>,  <35.185787, 35.001881, 44.864983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421314, 34.991158, 44.820118>,  <35.813858, 34.973289, 44.745342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421314, 34.991158, 44.820118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191506, -0.144414, -0.970809,
		-0.016371, -0.988508, 0.150277,
		-0.981355, 0.044672, 0.186941,
		35.126907, 35.004559, 44.876202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569553, 34.406864, 44.468605>,  <35.813858, 34.973289, 44.745342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569553, 34.406864, 44.468605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269142, 34.668262, 44.506340>,  <35.088894, 34.825100, 44.528980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269142, 34.668262, 44.506340>,  <35.569553, 34.406864, 44.468605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269142, 34.668262, 44.506340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218794, -0.111515, -0.969378,
		-0.622961, -0.748674, 0.226732,
		-0.751032, 0.653492, 0.094336,
		35.043831, 34.864311, 44.534641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965839, 34.059109, 44.154083>,  <35.569553, 34.406864, 44.468605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965839, 34.059109, 44.154083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.908760, 34.454426, 44.175694>,  <34.874512, 34.691616, 44.188660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.908760, 34.454426, 44.175694>,  <34.965839, 34.059109, 44.154083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908760, 34.454426, 44.175694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360726, -0.001099, -0.932671,
		-0.921690, -0.152584, 0.356659,
		-0.142703, 0.988290, 0.054028,
		34.865948, 34.750912, 44.191902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374802, 34.075974, 43.768993>,  <34.965839, 34.059109, 44.154083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374802, 34.075974, 43.768993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.523876, 34.446899, 43.782822>,  <34.613323, 34.669453, 43.791119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.523876, 34.446899, 43.782822>,  <34.374802, 34.075974, 43.768993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523876, 34.446899, 43.782822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073949, 0.066812, -0.995021,
		-0.925005, 0.368276, 0.093474,
		0.372688, 0.927312, 0.034568,
		34.635681, 34.725094, 43.793194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905182, 34.473217, 43.333675>,  <34.374802, 34.075974, 43.768993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905182, 34.473217, 43.333675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.252453, 34.668022, 43.371796>,  <34.460815, 34.784904, 43.394669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.252453, 34.668022, 43.371796>,  <33.905182, 34.473217, 43.333675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252453, 34.668022, 43.371796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071832, 0.313350, -0.946917,
		-0.491024, 0.815248, 0.307027,
		0.868180, 0.487013, 0.095301,
		34.512905, 34.814125, 43.400387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743298, 35.127052, 43.083984>,  <33.905182, 34.473217, 43.333675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743298, 35.127052, 43.083984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.142242, 35.100082, 43.073261>,  <34.381611, 35.083900, 43.066826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.142242, 35.100082, 43.073261>,  <33.743298, 35.127052, 43.083984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142242, 35.100082, 43.073261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001194, 0.384685, -0.923047,
		0.072549, 0.920582, 0.383751,
		0.997364, -0.067425, -0.026809,
		34.441452, 35.079853, 43.065220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864918, 35.703880, 42.667397>,  <33.743298, 35.127052, 43.083984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864918, 35.703880, 42.667397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.197044, 35.480965, 42.667397>,  <34.396320, 35.347214, 42.667397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.197044, 35.480965, 42.667397>,  <33.864918, 35.703880, 42.667397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197044, 35.480965, 42.667397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090256, 0.134468, -0.986799,
		0.549931, 0.819359, 0.161950,
		0.830319, -0.557288, 0.000004,
		34.446140, 35.313778, 42.667397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247860, 36.038925, 42.259060>,  <33.864918, 35.703880, 42.667397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247860, 36.038925, 42.259060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382694, 35.662483, 42.248478>,  <34.463593, 35.436619, 42.242130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382694, 35.662483, 42.248478>,  <34.247860, 36.038925, 42.259060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382694, 35.662483, 42.248478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226120, 0.108203, -0.968071,
		0.913917, 0.320339, 0.249276,
		0.337083, -0.941103, -0.026453,
		34.483818, 35.380154, 42.240543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903366, 36.055946, 42.054279>,  <34.247860, 36.038925, 42.259060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903366, 36.055946, 42.054279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774014, 35.694004, 41.943531>,  <34.696404, 35.476837, 41.877083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774014, 35.694004, 41.943531>,  <34.903366, 36.055946, 42.054279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774014, 35.694004, 41.943531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341797, 0.161143, -0.925855,
		0.882383, -0.394037, 0.257167,
		-0.323381, -0.904858, -0.276871,
		34.676998, 35.422546, 41.860470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369511, 35.855850, 41.563042>,  <34.903366, 36.055946, 42.054279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369511, 35.855850, 41.563042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.063465, 35.603443, 41.511780>,  <34.879837, 35.452000, 41.481022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.063465, 35.603443, 41.511780>,  <35.369511, 35.855850, 41.563042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063465, 35.603443, 41.511780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089336, 0.093080, -0.991643,
		0.637670, -0.770167, -0.014844,
		-0.765112, -0.631014, -0.128158,
		34.833931, 35.414139, 41.473331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649696, 35.417866, 41.099632>,  <35.369511, 35.855850, 41.563042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649696, 35.417866, 41.099632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.249783, 35.411400, 41.094528>,  <35.009834, 35.407520, 41.091465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.249783, 35.411400, 41.094528>,  <35.649696, 35.417866, 41.099632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249783, 35.411400, 41.094528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013805, -0.066326, -0.997702,
		0.015285, -0.997667, 0.066536,
		-0.999788, -0.016169, -0.012759,
		34.949844, 35.406551, 41.090702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465179, 34.778690, 40.773834>,  <35.649696, 35.417866, 41.099632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465179, 34.778690, 40.773834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177155, 35.048599, 40.709087>,  <35.004341, 35.210545, 40.670238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177155, 35.048599, 40.709087>,  <35.465179, 34.778690, 40.773834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177155, 35.048599, 40.709087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048781, -0.183474, -0.981814,
		-0.692196, -0.714861, 0.099196,
		-0.720059, 0.674768, -0.161871,
		34.961136, 35.251030, 40.660526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082958, 34.550438, 40.136002>,  <35.465179, 34.778690, 40.773834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082958, 34.550438, 40.136002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929924, 34.919250, 40.159595>,  <34.838104, 35.140537, 40.173752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.929924, 34.919250, 40.159595>,  <35.082958, 34.550438, 40.136002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929924, 34.919250, 40.159595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004680, 0.061906, -0.998071,
		-0.923907, -0.382126, -0.019369,
		-0.382589, 0.922034, 0.058983,
		34.815147, 35.195862, 40.177292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478600, 34.605667, 39.631485>,  <35.082958, 34.550438, 40.136002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478600, 34.605667, 39.631485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.565678, 34.988667, 39.707184>,  <34.617924, 35.218464, 39.752602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.565678, 34.988667, 39.707184>,  <34.478600, 34.605667, 39.631485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565678, 34.988667, 39.707184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143764, 0.160325, -0.976539,
		-0.965372, 0.239790, -0.102752,
		0.217691, 0.957495, 0.189246,
		34.630985, 35.275913, 39.763958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125778, 34.889889, 39.123020>,  <34.478600, 34.605667, 39.631485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125778, 34.889889, 39.123020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397667, 35.151489, 39.255844>,  <34.560802, 35.308449, 39.335537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397667, 35.151489, 39.255844>,  <34.125778, 34.889889, 39.123020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397667, 35.151489, 39.255844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093046, 0.372178, -0.923486,
		-0.727541, 0.658613, 0.192128,
		0.679725, 0.653997, 0.332056,
		34.601585, 35.347687, 39.355461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930450, 35.413574, 38.748318>,  <34.125778, 34.889889, 39.123020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930450, 35.413574, 38.748318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310047, 35.478306, 38.856556>,  <34.537807, 35.517147, 38.921497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.310047, 35.478306, 38.856556>,  <33.930450, 35.413574, 38.748318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310047, 35.478306, 38.856556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200830, 0.351332, -0.914458,
		-0.243056, 0.922158, 0.300911,
		0.948995, 0.161833, 0.270591,
		34.594746, 35.526855, 38.937733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049313, 36.086994, 38.481285>,  <33.930450, 35.413574, 38.748318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049313, 36.086994, 38.481285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397133, 35.906696, 38.561993>,  <34.605827, 35.798519, 38.610416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.397133, 35.906696, 38.561993>,  <34.049313, 36.086994, 38.481285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397133, 35.906696, 38.561993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404348, 0.415273, -0.814893,
		0.283515, 0.790178, 0.543358,
		0.869553, -0.450740, 0.201771,
		34.657997, 35.771473, 38.622524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538982, 36.595886, 38.393764>,  <34.049313, 36.086994, 38.481285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538982, 36.595886, 38.393764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766426, 36.268555, 38.360226>,  <34.902893, 36.072155, 38.340103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.766426, 36.268555, 38.360226>,  <34.538982, 36.595886, 38.393764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766426, 36.268555, 38.360226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470978, 0.407420, -0.782425,
		0.674439, 0.405401, 0.617075,
		0.568605, -0.818327, -0.083846,
		34.937008, 36.023056, 38.335072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190296, 36.869602, 38.291641>,  <34.538982, 36.595886, 38.393764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190296, 36.869602, 38.291641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182224, 36.493374, 38.156040>,  <35.177383, 36.267639, 38.074680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182224, 36.493374, 38.156040>,  <35.190296, 36.869602, 38.291641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182224, 36.493374, 38.156040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380277, 0.306369, -0.872656,
		0.924653, -0.146521, 0.351495,
		-0.020176, -0.940569, -0.339003,
		35.176170, 36.211205, 38.054340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887302, 36.760899, 37.979465>,  <35.190296, 36.869602, 38.291641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887302, 36.760899, 37.979465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651558, 36.475315, 37.828247>,  <35.510113, 36.303967, 37.737514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.651558, 36.475315, 37.828247>,  <35.887302, 36.760899, 37.979465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651558, 36.475315, 37.828247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181107, 0.339282, -0.923086,
		0.787309, -0.612497, -0.070656,
		-0.589360, -0.713957, -0.378047,
		35.474751, 36.261127, 37.714832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307270, 36.411121, 37.502468>,  <35.887302, 36.760899, 37.979465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307270, 36.411121, 37.502468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925983, 36.348236, 37.399189>,  <35.697212, 36.310505, 37.337223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925983, 36.348236, 37.399189>,  <36.307270, 36.411121, 37.502468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925983, 36.348236, 37.399189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184436, 0.374279, -0.908790,
		0.239511, -0.913893, -0.327772,
		-0.953215, -0.157212, -0.258198,
		35.640018, 36.301071, 37.321728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489574, 36.091831, 36.827576>,  <36.307270, 36.411121, 37.502468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489574, 36.091831, 36.827576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113785, 36.227734, 36.845245>,  <35.888309, 36.309273, 36.855846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.113785, 36.227734, 36.845245>,  <36.489574, 36.091831, 36.827576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113785, 36.227734, 36.845245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093849, 0.379196, -0.920545,
		-0.329509, -0.860685, -0.388131,
		-0.939477, 0.339753, 0.044174,
		35.831944, 36.329659, 36.858498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972107, 35.428154, 36.861439>,  <36.489574, 36.091831, 36.827576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972107, 35.428154, 36.861439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239346, 35.694473, 36.728554>,  <37.399689, 35.854263, 36.648823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239346, 35.694473, 36.728554>,  <36.972107, 35.428154, 36.861439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239346, 35.694473, 36.728554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361716, 0.099553, 0.926958,
		0.650236, -0.739463, -0.174318,
		0.668097, 0.665795, -0.332209,
		37.439774, 35.894211, 36.628891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679600, 35.213177, 37.082901>,  <36.972107, 35.428154, 36.861439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679600, 35.213177, 37.082901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723274, 35.610104, 37.059624>,  <37.749481, 35.848259, 37.045658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723274, 35.610104, 37.059624>,  <37.679600, 35.213177, 37.082901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723274, 35.610104, 37.059624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344015, 0.017203, 0.938806,
		0.932594, -0.122528, -0.339494,
		0.109190, 0.992316, -0.058195,
		37.756031, 35.907799, 37.042164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265224, 35.418407, 37.553745>,  <37.679600, 35.213177, 37.082901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265224, 35.418407, 37.553745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.145775, 35.797062, 37.505249>,  <38.074104, 36.024254, 37.476151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.145775, 35.797062, 37.505249>,  <38.265224, 35.418407, 37.553745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145775, 35.797062, 37.505249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139481, 0.168965, 0.975703,
		0.944125, 0.274453, -0.182495,
		-0.298620, 0.946640, -0.121243,
		38.056190, 36.081055, 37.468876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567879, 35.801910, 38.061260>,  <38.265224, 35.418407, 37.553745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567879, 35.801910, 38.061260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.301037, 36.086773, 37.973804>,  <38.140930, 36.257690, 37.921333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.301037, 36.086773, 37.973804>,  <38.567879, 35.801910, 38.061260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301037, 36.086773, 37.973804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094515, 0.210206, 0.973078,
		0.738943, 0.669810, -0.072920,
		-0.667106, 0.712157, -0.218637,
		38.100906, 36.300419, 37.908215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817318, 36.444260, 38.264477>,  <38.567879, 35.801910, 38.061260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817318, 36.444260, 38.264477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417412, 36.448814, 38.257198>,  <38.177467, 36.451546, 38.252831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417412, 36.448814, 38.257198>,  <38.817318, 36.444260, 38.264477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417412, 36.448814, 38.257198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012165, 0.397670, 0.917448,
		0.017680, 0.917458, -0.397440,
		-0.999770, 0.011385, -0.018192,
		38.117481, 36.452229, 38.251740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563992, 37.185772, 38.456955>,  <38.817318, 36.444260, 38.264477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563992, 37.185772, 38.456955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274719, 36.920094, 38.532700>,  <38.101154, 36.760689, 38.578144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274719, 36.920094, 38.532700>,  <38.563992, 37.185772, 38.456955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274719, 36.920094, 38.532700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079668, 0.352565, 0.932390,
		-0.686047, 0.659202, -0.307884,
		-0.723183, -0.664191, 0.189359,
		38.057766, 36.720837, 38.589508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139271, 37.478600, 38.931725>,  <38.563992, 37.185772, 38.456955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139271, 37.478600, 38.931725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045998, 37.090298, 38.954556>,  <37.990032, 36.857315, 38.968254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.045998, 37.090298, 38.954556>,  <38.139271, 37.478600, 38.931725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045998, 37.090298, 38.954556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174577, 0.099532, 0.979600,
		-0.956633, 0.218466, -0.192681,
		-0.233188, -0.970755, 0.057076,
		37.976040, 36.799072, 38.971680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872646, 37.590073, 39.575359>,  <38.139271, 37.478600, 38.931725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872646, 37.590073, 39.575359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.865604, 37.190334, 39.562675>,  <37.861378, 36.950493, 39.555065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.865604, 37.190334, 39.562675>,  <37.872646, 37.590073, 39.575359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865604, 37.190334, 39.562675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270198, -0.025782, 0.962460,
		-0.962644, 0.025513, -0.269566,
		-0.017606, -0.999342, -0.031712,
		37.860321, 36.890533, 39.553162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251610, 37.336571, 39.919994>,  <37.872646, 37.590073, 39.575359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251610, 37.336571, 39.919994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483486, 37.010727, 39.912327>,  <37.622612, 36.815220, 39.907726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.483486, 37.010727, 39.912327>,  <37.251610, 37.336571, 39.919994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483486, 37.010727, 39.912327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235828, -0.190247, 0.952991,
		-0.779960, -0.547924, -0.302393,
		0.579695, -0.814608, -0.019169,
		37.657394, 36.766346, 39.906574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982224, 36.816353, 40.300495>,  <37.251610, 37.336571, 39.919994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982224, 36.816353, 40.300495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.359493, 36.683540, 40.295223>,  <37.585854, 36.603851, 40.292061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.359493, 36.683540, 40.295223>,  <36.982224, 36.816353, 40.300495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359493, 36.683540, 40.295223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088416, -0.288980, 0.953244,
		-0.320328, -0.897907, -0.301915,
		0.943171, -0.332045, -0.013179,
		37.642445, 36.583931, 40.291271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064445, 36.080097, 40.566357>,  <36.982224, 36.816353, 40.300495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064445, 36.080097, 40.566357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435905, 36.220634, 40.613960>,  <37.658783, 36.304958, 40.642525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435905, 36.220634, 40.613960>,  <37.064445, 36.080097, 40.566357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435905, 36.220634, 40.613960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046860, -0.207148, 0.977187,
		0.367980, -0.913043, -0.175905,
		0.928652, 0.351342, 0.119012,
		37.714500, 36.326038, 40.649662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350834, 35.611992, 40.995468>,  <37.064445, 36.080097, 40.566357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350834, 35.611992, 40.995468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589138, 35.929493, 41.044491>,  <37.732121, 36.119995, 41.073902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.589138, 35.929493, 41.044491>,  <37.350834, 35.611992, 40.995468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589138, 35.929493, 41.044491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042689, -0.183669, 0.982061,
		0.802024, -0.579845, -0.143308,
		0.595764, 0.793754, 0.122553,
		37.767868, 36.167618, 41.081257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845085, 35.381695, 41.452145>,  <37.350834, 35.611992, 40.995468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845085, 35.381695, 41.452145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906395, 35.775333, 41.488071>,  <37.943180, 36.011517, 41.509628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906395, 35.775333, 41.488071>,  <37.845085, 35.381695, 41.452145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906395, 35.775333, 41.488071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087006, -0.103974, 0.990767,
		0.984345, -0.144049, -0.101559,
		0.153279, 0.984093, 0.089814,
		37.952377, 36.070560, 41.515015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492802, 35.462490, 41.707809>,  <37.845085, 35.381695, 41.452145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492802, 35.462490, 41.707809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258129, 35.776264, 41.788280>,  <38.117325, 35.964527, 41.836563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.258129, 35.776264, 41.788280>,  <38.492802, 35.462490, 41.707809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258129, 35.776264, 41.788280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111281, -0.167970, 0.979491,
		0.802134, 0.597038, 0.011253,
		-0.586684, 0.784431, 0.201174,
		38.082123, 36.011593, 41.848633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801720, 35.762733, 42.354179>,  <38.492802, 35.462490, 41.707809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801720, 35.762733, 42.354179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441700, 35.937035, 42.356525>,  <38.225689, 36.041615, 42.357933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441700, 35.937035, 42.356525>,  <38.801720, 35.762733, 42.354179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441700, 35.937035, 42.356525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074359, -0.166822, 0.983179,
		0.429401, 0.884472, 0.182550,
		-0.900048, 0.435752, 0.005865,
		38.171684, 36.067760, 42.358284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805969, 36.222092, 42.997200>,  <38.801720, 35.762733, 42.354179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805969, 36.222092, 42.997200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419281, 36.188011, 42.900703>,  <38.187267, 36.167564, 42.842808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419281, 36.188011, 42.900703>,  <38.805969, 36.222092, 42.997200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419281, 36.188011, 42.900703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222042, -0.189008, 0.956542,
		-0.127095, 0.978272, 0.163799,
		-0.966718, -0.085201, -0.241240,
		38.129265, 36.162449, 42.828331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657703, 36.611172, 43.509083>,  <38.805969, 36.222092, 42.997200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657703, 36.611172, 43.509083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349976, 36.386780, 43.386806>,  <38.165337, 36.252144, 43.313442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.349976, 36.386780, 43.386806>,  <38.657703, 36.611172, 43.509083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349976, 36.386780, 43.386806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430103, 0.100987, 0.897114,
		-0.472389, 0.821649, -0.318969,
		-0.769324, -0.560977, -0.305689,
		38.119179, 36.218487, 43.295101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999470, 36.948792, 43.721169>,  <38.657703, 36.611172, 43.509083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999470, 36.948792, 43.721169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929974, 36.558960, 43.664597>,  <37.888275, 36.325062, 43.630653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929974, 36.558960, 43.664597>,  <37.999470, 36.948792, 43.721169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929974, 36.558960, 43.664597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531654, -0.028061, 0.846497,
		-0.828950, 0.222264, -0.513266,
		-0.173743, -0.974583, -0.141428,
		37.877850, 36.266586, 43.622169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.250107, 36.811718, 43.941383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445335, 36.462906, 43.956047>,  <37.562473, 36.253616, 43.964844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.445335, 36.462906, 43.956047>,  <37.250107, 36.811718, 43.941383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445335, 36.462906, 43.956047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550920, -0.275226, 0.787869,
		-0.676959, -0.404732, -0.614751,
		0.488071, -0.872034, 0.036658,
		37.591755, 36.201294, 43.967045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718868, 36.288826, 44.110886>,  <37.250107, 36.811718, 43.941383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718868, 36.288826, 44.110886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057690, 36.097992, 44.204601>,  <37.260983, 35.983490, 44.260830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057690, 36.097992, 44.204601>,  <36.718868, 36.288826, 44.110886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057690, 36.097992, 44.204601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372587, -0.218619, 0.901879,
		-0.379055, -0.851231, -0.362938,
		0.847052, -0.477087, 0.234289,
		37.311806, 35.954865, 44.274887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515770, 35.694366, 44.413307>,  <36.718868, 36.288826, 44.110886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515770, 35.694366, 44.413307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904308, 35.678604, 44.507069>,  <37.137432, 35.669147, 44.563324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.904308, 35.678604, 44.507069>,  <36.515770, 35.694366, 44.413307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904308, 35.678604, 44.507069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215957, -0.558259, 0.801067,
		0.099291, -0.828730, -0.550770,
		0.971341, -0.039404, 0.234401,
		37.195709, 35.666782, 44.577389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673225, 35.020073, 44.524250>,  <36.515770, 35.694366, 44.413307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673225, 35.020073, 44.524250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.960468, 35.221745, 44.716133>,  <37.132816, 35.342747, 44.831264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.960468, 35.221745, 44.716133>,  <36.673225, 35.020073, 44.524250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960468, 35.221745, 44.716133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197309, -0.513525, 0.835082,
		0.667372, -0.694332, -0.269289,
		0.718111, 0.504177, 0.479710,
		37.175903, 35.372997, 44.860046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964001, 34.506657, 44.975494>,  <36.673225, 35.020073, 44.524250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964001, 34.506657, 44.975494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093548, 34.855110, 45.123135>,  <37.171276, 35.064182, 45.211720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093548, 34.855110, 45.123135>,  <36.964001, 34.506657, 44.975494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093548, 34.855110, 45.123135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152211, -0.337074, 0.929093,
		0.933777, -0.357087, 0.023427,
		0.323870, 0.871131, 0.369104,
		37.190708, 35.116451, 45.233868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531128, 34.398685, 45.387722>,  <36.964001, 34.506657, 44.975494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531128, 34.398685, 45.387722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345413, 34.733246, 45.504250>,  <37.233986, 34.933983, 45.574165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345413, 34.733246, 45.504250>,  <37.531128, 34.398685, 45.387722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345413, 34.733246, 45.504250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074559, -0.364667, 0.928148,
		0.882541, 0.409206, 0.231671,
		-0.464287, 0.836402, 0.291323,
		37.206127, 34.984165, 45.591648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971260, 34.641933, 45.962906>,  <37.531128, 34.398685, 45.387722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971260, 34.641933, 45.962906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617981, 34.828453, 45.983025>,  <37.406013, 34.940365, 45.995094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617981, 34.828453, 45.983025>,  <37.971260, 34.641933, 45.962906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617981, 34.828453, 45.983025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056728, -0.212665, 0.975477,
		0.465559, 0.858685, 0.214277,
		-0.883197, 0.466298, 0.050296,
		37.353024, 34.968342, 45.998112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998722, 35.117409, 46.448906>,  <37.971260, 34.641933, 45.962906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998722, 35.117409, 46.448906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607372, 35.042767, 46.413231>,  <37.372562, 34.997982, 46.391827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.607372, 35.042767, 46.413231>,  <37.998722, 35.117409, 46.448906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607372, 35.042767, 46.413231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036728, -0.267637, 0.962819,
		-0.203535, 0.945278, 0.254997,
		-0.978378, -0.186602, -0.089192,
		37.313858, 34.986786, 46.386475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740334, 35.333508, 47.141541>,  <37.998722, 35.117409, 46.448906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740334, 35.333508, 47.141541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.465908, 35.100677, 46.966953>,  <37.301254, 34.960979, 46.862202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.465908, 35.100677, 46.966953>,  <37.740334, 35.333508, 47.141541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465908, 35.100677, 46.966953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302759, -0.317097, 0.898769,
		-0.661556, 0.748756, 0.041318,
		-0.686061, -0.582077, -0.436470,
		37.260090, 34.926056, 46.836014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226662, 35.509563, 47.512985>,  <37.740334, 35.333508, 47.141541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226662, 35.509563, 47.512985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143822, 35.151882, 47.354237>,  <37.094116, 34.937271, 47.258987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.143822, 35.151882, 47.354237>,  <37.226662, 35.509563, 47.512985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143822, 35.151882, 47.354237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177595, -0.364559, 0.914088,
		-0.962065, 0.259793, -0.083305,
		-0.207104, -0.894206, -0.396867,
		37.081692, 34.883621, 47.235176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655643, 35.241783, 47.855453>,  <37.226662, 35.509563, 47.512985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655643, 35.241783, 47.855453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822655, 34.912800, 47.700932>,  <36.922863, 34.715408, 47.608219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822655, 34.912800, 47.700932>,  <36.655643, 35.241783, 47.855453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822655, 34.912800, 47.700932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075210, -0.454952, 0.887334,
		-0.905545, -0.341436, -0.251814,
		0.417531, -0.822460, -0.386300,
		36.947914, 34.666061, 47.585041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179440, 34.664204, 48.037140>,  <36.655643, 35.241783, 47.855453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179440, 34.664204, 48.037140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.547886, 34.517376, 47.985283>,  <36.768955, 34.429279, 47.954166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.547886, 34.517376, 47.985283>,  <36.179440, 34.664204, 48.037140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547886, 34.517376, 47.985283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083057, -0.510668, 0.855757,
		-0.380325, -0.777483, -0.500872,
		0.921116, -0.367067, -0.129645,
		36.824219, 34.407257, 47.946388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210911, 33.981232, 48.332687>,  <36.179440, 34.664204, 48.037140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210911, 33.981232, 48.332687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592476, 34.101212, 48.329185>,  <36.821415, 34.173199, 48.327084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592476, 34.101212, 48.329185>,  <36.210911, 33.981232, 48.332687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592476, 34.101212, 48.329185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096284, -0.278295, 0.955657,
		0.284215, -0.912458, -0.294350,
		0.953914, 0.299953, -0.008759,
		36.878651, 34.191196, 48.326557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559361, 33.443146, 48.683941>,  <36.210911, 33.981232, 48.332687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559361, 33.443146, 48.683941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822807, 33.744125, 48.681061>,  <36.980873, 33.924713, 48.679333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.822807, 33.744125, 48.681061>,  <36.559361, 33.443146, 48.683941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822807, 33.744125, 48.681061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183781, -0.151570, 0.971211,
		0.729694, -0.640975, -0.238112,
		0.658613, 0.752447, -0.007199,
		37.020390, 33.969860, 48.678902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109352, 33.194904, 49.030830>,  <36.559361, 33.443146, 48.683941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109352, 33.194904, 49.030830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172997, 33.589600, 49.017956>,  <37.211185, 33.826416, 49.010231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.172997, 33.589600, 49.017956>,  <37.109352, 33.194904, 49.030830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172997, 33.589600, 49.017956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294332, -0.016293, 0.955564,
		0.942365, -0.161516, -0.293020,
		0.159113, 0.986736, -0.032186,
		37.220730, 33.885620, 49.008301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830208, 33.347984, 49.273647>,  <37.109352, 33.194904, 49.030830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830208, 33.347984, 49.273647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658817, 33.700603, 49.352924>,  <37.555984, 33.912174, 49.400490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658817, 33.700603, 49.352924>,  <37.830208, 33.347984, 49.273647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658817, 33.700603, 49.352924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290831, -0.073114, 0.953977,
		0.855468, 0.466395, -0.225055,
		-0.428475, 0.881550, 0.198189,
		37.530273, 33.965069, 49.412380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366680, 33.858543, 49.494099>,  <37.830208, 33.347984, 49.273647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366680, 33.858543, 49.494099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017986, 33.997925, 49.631886>,  <37.808769, 34.081554, 49.714558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017986, 33.997925, 49.631886>,  <38.366680, 33.858543, 49.494099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017986, 33.997925, 49.631886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392326, 0.075222, 0.916745,
		0.293532, 0.934303, -0.202281,
		-0.871733, 0.348454, 0.344471,
		37.756466, 34.102463, 49.735226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506176, 34.306091, 49.939899>,  <38.366680, 33.858543, 49.494099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506176, 34.306091, 49.939899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132069, 34.237022, 50.063484>,  <37.907604, 34.195580, 50.137634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132069, 34.237022, 50.063484>,  <38.506176, 34.306091, 49.939899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132069, 34.237022, 50.063484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284092, 0.154404, 0.946283,
		-0.211106, 0.972801, -0.095353,
		-0.935268, -0.172677, 0.308961,
		37.851490, 34.185219, 50.156174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296131, 34.863464, 50.303047>,  <38.506176, 34.306091, 49.939899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296131, 34.863464, 50.303047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.053593, 34.581284, 50.449844>,  <37.908070, 34.411976, 50.537922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.053593, 34.581284, 50.449844>,  <38.296131, 34.863464, 50.303047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053593, 34.581284, 50.449844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198385, 0.312724, 0.928895,
		-0.770056, 0.636040, -0.049669,
		-0.606347, -0.705448, 0.366996,
		37.871689, 34.369648, 50.559944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092613, 35.185287, 50.942566>,  <38.296131, 34.863464, 50.303047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092613, 35.185287, 50.942566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993191, 34.799610, 50.979565>,  <37.933537, 34.568203, 51.001762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.993191, 34.799610, 50.979565>,  <38.092613, 35.185287, 50.942566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993191, 34.799610, 50.979565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205899, 0.040715, 0.977726,
		-0.946482, 0.262060, 0.188407,
		-0.248551, -0.964193, 0.092494,
		37.918625, 34.510353, 51.007313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826733, 35.113464, 51.605289>,  <38.092613, 35.185287, 50.942566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826733, 35.113464, 51.605289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862679, 34.721626, 51.533382>,  <37.884247, 34.486523, 51.490238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.862679, 34.721626, 51.533382>,  <37.826733, 35.113464, 51.605289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862679, 34.721626, 51.533382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185583, -0.160862, 0.969372,
		-0.978511, -0.120473, 0.167341,
		0.089864, -0.979597, -0.179763,
		37.889637, 34.427746, 51.479454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485565, 34.819141, 52.130939>,  <37.826733, 35.113464, 51.605289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485565, 34.819141, 52.130939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697075, 34.507782, 51.995594>,  <37.823978, 34.320965, 51.914387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.697075, 34.507782, 51.995594>,  <37.485565, 34.819141, 52.130939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697075, 34.507782, 51.995594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329850, -0.178859, 0.926935,
		-0.782048, -0.601746, 0.162180,
		0.528772, -0.778403, -0.338362,
		37.855705, 34.274261, 51.894085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293961, 34.145191, 52.416107>,  <37.485565, 34.819141, 52.130939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293961, 34.145191, 52.416107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684830, 34.114986, 52.336674>,  <37.919350, 34.096863, 52.289013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684830, 34.114986, 52.336674>,  <37.293961, 34.145191, 52.416107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684830, 34.114986, 52.336674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184474, -0.162059, 0.969385,
		-0.105379, -0.983888, -0.144430,
		0.977172, -0.075509, -0.198579,
		37.977982, 34.092335, 52.277100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499054, 34.360195, 52.179398>,  <37.293961, 34.145191, 52.416107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499054, 34.360195, 52.179398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221401, 34.160854, 52.387177>,  <36.054810, 34.041248, 52.511845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221401, 34.160854, 52.387177>,  <36.499054, 34.360195, 52.179398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221401, 34.160854, 52.387177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596576, -0.005575, -0.802538,
		0.402845, -0.866954, -0.293438,
		-0.694128, -0.498356, 0.519450,
		36.013165, 34.011349, 52.543011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271267, 33.662918, 51.985626>,  <36.499054, 34.360195, 52.179398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271267, 33.662918, 51.985626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935764, 33.791920, 52.161118>,  <35.734463, 33.869320, 52.266411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935764, 33.791920, 52.161118>,  <36.271267, 33.662918, 51.985626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935764, 33.791920, 52.161118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461423, 0.006822, -0.887154,
		-0.289110, -0.946541, 0.143091,
		-0.838752, 0.322510, 0.438728,
		35.684139, 33.888672, 52.292736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775089, 33.392532, 51.599163>,  <36.271267, 33.662918, 51.985626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775089, 33.392532, 51.599163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579227, 33.683071, 51.792099>,  <35.461708, 33.857395, 51.907860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.579227, 33.683071, 51.792099>,  <35.775089, 33.392532, 51.599163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579227, 33.683071, 51.792099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521640, 0.199238, -0.829576,
		-0.698662, -0.657817, 0.281333,
		-0.489657, 0.726348, 0.482344,
		35.432331, 33.900974, 51.936802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039307, 33.251728, 51.569633>,  <35.775089, 33.392532, 51.599163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039307, 33.251728, 51.569633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079479, 33.642139, 51.646873>,  <35.103584, 33.876385, 51.693218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.079479, 33.642139, 51.646873>,  <35.039307, 33.251728, 51.569633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079479, 33.642139, 51.646873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677080, 0.209256, -0.705532,
		-0.729024, -0.059887, 0.681863,
		0.100432, 0.976025, 0.193101,
		35.109608, 33.934948, 51.704803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404964, 33.582928, 51.587849>,  <35.039307, 33.251728, 51.569633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404964, 33.582928, 51.587849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.661697, 33.876213, 51.498009>,  <34.815739, 34.052185, 51.444107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.661697, 33.876213, 51.498009>,  <34.404964, 33.582928, 51.587849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661697, 33.876213, 51.498009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554032, 0.240882, -0.796884,
		-0.530188, 0.635900, 0.560832,
		0.641833, 0.733217, -0.224596,
		34.854248, 34.096180, 51.430630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008442, 34.075909, 51.115730>,  <34.404964, 33.582928, 51.587849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008442, 34.075909, 51.115730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377769, 34.227470, 51.090694>,  <34.599365, 34.318405, 51.075672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377769, 34.227470, 51.090694>,  <34.008442, 34.075909, 51.115730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377769, 34.227470, 51.090694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208973, 0.358962, -0.909657,
		-0.322202, 0.852983, 0.410616,
		0.923318, 0.378901, -0.062593,
		34.654766, 34.341141, 51.071918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972980, 34.793167, 50.922562>,  <34.008442, 34.075909, 51.115730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972980, 34.793167, 50.922562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339546, 34.678642, 50.810692>,  <34.559486, 34.609928, 50.743568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339546, 34.678642, 50.810692>,  <33.972980, 34.793167, 50.922562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339546, 34.678642, 50.810692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095508, 0.522154, -0.847487,
		0.388679, 0.803357, 0.451162,
		0.916410, -0.286311, -0.279677,
		34.614468, 34.592751, 50.726788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327003, 35.327625, 50.515102>,  <33.972980, 34.793167, 50.922562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327003, 35.327625, 50.515102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511612, 34.990932, 50.403046>,  <34.622375, 34.788918, 50.335812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511612, 34.990932, 50.403046>,  <34.327003, 35.327625, 50.515102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511612, 34.990932, 50.403046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046580, 0.338339, -0.939871,
		0.885905, 0.420722, 0.195359,
		0.461522, -0.841736, -0.280139,
		34.650070, 34.738411, 50.319004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783566, 35.504986, 49.983646>,  <34.327003, 35.327625, 50.515102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783566, 35.504986, 49.983646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750160, 35.107983, 49.947968>,  <34.730118, 34.869781, 49.926559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.750160, 35.107983, 49.947968>,  <34.783566, 35.504986, 49.983646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750160, 35.107983, 49.947968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042977, 0.085842, -0.995381,
		0.995580, -0.086958, 0.035487,
		-0.083510, -0.992507, -0.089200,
		34.725105, 34.810230, 49.921207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364761, 35.318180, 49.562401>,  <34.783566, 35.504986, 49.983646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364761, 35.318180, 49.562401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.101376, 35.017582, 49.546013>,  <34.943344, 34.837223, 49.536179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.101376, 35.017582, 49.546013>,  <35.364761, 35.318180, 49.562401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101376, 35.017582, 49.546013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003240, 0.051607, -0.998662,
		0.752605, -0.657716, -0.031546,
		-0.658463, -0.751496, -0.040971,
		34.903835, 34.792133, 49.533722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713238, 34.775051, 49.192089>,  <35.364761, 35.318180, 49.562401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713238, 34.775051, 49.192089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316170, 34.732155, 49.169773>,  <35.077930, 34.706417, 49.156384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.316170, 34.732155, 49.169773>,  <35.713238, 34.775051, 49.192089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316170, 34.732155, 49.169773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051585, 0.041624, -0.997801,
		0.109333, -0.993361, -0.035786,
		-0.992666, -0.107247, -0.055793,
		35.018372, 34.699982, 49.153034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693871, 34.544186, 48.562416>,  <35.713238, 34.775051, 49.192089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693871, 34.544186, 48.562416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.305931, 34.605247, 48.638401>,  <35.073166, 34.641884, 48.683990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.305931, 34.605247, 48.638401>,  <35.693871, 34.544186, 48.562416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305931, 34.605247, 48.638401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162833, 0.174002, -0.971189,
		-0.181313, -0.972841, -0.143898,
		-0.969851, 0.152658, 0.189959,
		35.014977, 34.651043, 48.695389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311783, 33.974308, 48.391312>,  <35.693871, 34.544186, 48.562416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311783, 33.974308, 48.391312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059631, 34.284195, 48.371574>,  <34.908340, 34.470127, 48.359734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059631, 34.284195, 48.371574>,  <35.311783, 33.974308, 48.391312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059631, 34.284195, 48.371574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065622, -0.116511, -0.991019,
		-0.773512, -0.621475, 0.124285,
		-0.630375, 0.774721, -0.049341,
		34.870518, 34.516613, 48.356773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839783, 33.787243, 47.870083>,  <35.311783, 33.974308, 48.391312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839783, 33.787243, 47.870083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772388, 34.179321, 47.911697>,  <34.731953, 34.414570, 47.936665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772388, 34.179321, 47.911697>,  <34.839783, 33.787243, 47.870083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772388, 34.179321, 47.911697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021911, 0.101796, -0.994564,
		-0.985461, -0.169849, 0.004326,
		-0.168485, 0.980199, 0.104037,
		34.721844, 34.473381, 47.942909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238468, 33.865120, 47.515694>,  <34.839783, 33.787243, 47.870083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238468, 33.865120, 47.515694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.445980, 34.206951, 47.525234>,  <34.570488, 34.412048, 47.530960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.445980, 34.206951, 47.525234>,  <34.238468, 33.865120, 47.515694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445980, 34.206951, 47.525234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026249, 0.043811, -0.998695,
		-0.854507, 0.517473, 0.045160,
		0.518777, 0.854577, 0.023854,
		34.601612, 34.463326, 47.532391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887180, 34.268078, 47.093388>,  <34.238468, 33.865120, 47.515694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887180, 34.268078, 47.093388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248390, 34.437271, 47.123405>,  <34.465115, 34.538788, 47.141415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248390, 34.437271, 47.123405>,  <33.887180, 34.268078, 47.093388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248390, 34.437271, 47.123405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044042, 0.082606, -0.995609,
		-0.427328, 0.902363, 0.055965,
		0.903023, 0.422986, 0.075042,
		34.519299, 34.564167, 47.145920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816689, 34.903770, 46.890339>,  <33.887180, 34.268078, 47.093388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816689, 34.903770, 46.890339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198257, 34.788872, 46.855640>,  <34.427200, 34.719933, 46.834820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198257, 34.788872, 46.855640>,  <33.816689, 34.903770, 46.890339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198257, 34.788872, 46.855640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003647, 0.277981, -0.960580,
		0.300034, 0.916634, 0.264125,
		0.953922, -0.287243, -0.086746,
		34.484432, 34.702698, 46.829617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189987, 35.428028, 46.678276>,  <33.816689, 34.903770, 46.890339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189987, 35.428028, 46.678276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442726, 35.134987, 46.577042>,  <34.594372, 34.959160, 46.516300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442726, 35.134987, 46.577042>,  <34.189987, 35.428028, 46.678276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442726, 35.134987, 46.577042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070626, 0.379583, -0.922458,
		0.771864, 0.564983, 0.291581,
		0.631852, -0.732606, -0.253084,
		34.632282, 34.915207, 46.501118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573204, 35.781750, 46.301353>,  <34.189987, 35.428028, 46.678276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573204, 35.781750, 46.301353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709297, 35.412647, 46.228947>,  <34.790955, 35.191185, 46.185501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709297, 35.412647, 46.228947>,  <34.573204, 35.781750, 46.301353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709297, 35.412647, 46.228947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301273, 0.289326, -0.908584,
		0.890771, 0.254597, 0.376439,
		0.340237, -0.922752, -0.181020,
		34.811367, 35.135822, 46.174641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144646, 35.836857, 45.823807>,  <34.573204, 35.781750, 46.301353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144646, 35.836857, 45.823807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057632, 35.449806, 45.772621>,  <35.005424, 35.217575, 45.741909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.057632, 35.449806, 45.772621>,  <35.144646, 35.836857, 45.823807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057632, 35.449806, 45.772621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057421, 0.118187, -0.991330,
		0.974363, -0.222993, 0.029853,
		-0.217532, -0.967629, -0.127961,
		34.992374, 35.159519, 45.734234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647053, 35.564243, 45.412258>,  <35.144646, 35.836857, 45.823807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647053, 35.564243, 45.412258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335926, 35.314041, 45.387787>,  <35.149250, 35.163921, 45.373104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335926, 35.314041, 45.387787>,  <35.647053, 35.564243, 45.412258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335926, 35.314041, 45.387787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085440, -0.008802, -0.996304,
		0.622653, -0.780172, 0.060289,
		-0.777819, -0.625503, -0.061178,
		35.102581, 35.126389, 45.369434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.629124, 37.349789, 27.799353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.237106, 37.282906, 27.842356>,  <43.001896, 37.242775, 27.868158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.237106, 37.282906, 27.842356>,  <43.629124, 37.349789, 27.799353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237106, 37.282906, 27.842356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132754, -0.147966, 0.980042,
		-0.147966, 0.974754, 0.167211,
		-0.980042, -0.167211, 0.107509,
		42.943092, 37.232742, 27.874609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378559, 37.749416, 28.399567>,  <43.629124, 37.349789, 27.799353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378559, 37.749416, 28.399567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.096561, 37.471733, 28.341524>,  <42.927361, 37.305122, 28.306698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.096561, 37.471733, 28.341524>,  <43.378559, 37.749416, 28.399567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096561, 37.471733, 28.341524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040939, -0.164426, 0.985540,
		-0.708027, 0.700744, 0.087500,
		-0.704998, -0.694206, -0.145106,
		42.885063, 37.263470, 28.297993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912987, 37.844284, 28.960402>,  <43.378559, 37.749416, 28.399567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912987, 37.844284, 28.960402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891888, 37.465080, 28.834871>,  <42.879227, 37.237556, 28.759552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.891888, 37.465080, 28.834871>,  <42.912987, 37.844284, 28.960402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891888, 37.465080, 28.834871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164475, -0.301726, 0.939100,
		-0.984970, 0.101153, -0.140009,
		-0.052749, -0.948013, -0.313828,
		42.876064, 37.180676, 28.740723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410591, 37.774525, 29.328554>,  <42.912987, 37.844284, 28.960402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410591, 37.774525, 29.328554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.531918, 37.407135, 29.227049>,  <42.604713, 37.186699, 29.166145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.531918, 37.407135, 29.227049>,  <42.410591, 37.774525, 29.328554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531918, 37.407135, 29.227049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110974, -0.298547, 0.947921,
		-0.946405, -0.259362, -0.192482,
		0.303320, -0.918478, -0.253764,
		42.622913, 37.131592, 29.150919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873756, 37.245636, 29.670586>,  <42.410591, 37.774525, 29.328554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873756, 37.245636, 29.670586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212986, 37.053688, 29.580692>,  <42.416523, 36.938519, 29.526756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.212986, 37.053688, 29.580692>,  <41.873756, 37.245636, 29.670586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212986, 37.053688, 29.580692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049520, -0.350489, 0.935257,
		-0.527567, -0.804291, -0.273476,
		0.848069, -0.479868, -0.224735,
		42.467407, 36.909729, 29.513271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794312, 36.468239, 29.892105>,  <41.873756, 37.245636, 29.670586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794312, 36.468239, 29.892105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189255, 36.530197, 29.905560>,  <42.426220, 36.567371, 29.913631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.189255, 36.530197, 29.905560>,  <41.794312, 36.468239, 29.892105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189255, 36.530197, 29.905560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038126, -0.438053, 0.898140,
		0.153855, -0.885503, -0.438420,
		0.987357, 0.154899, 0.033636,
		42.485462, 36.576668, 29.915649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123268, 35.856228, 30.244762>,  <41.794312, 36.468239, 29.892105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123268, 35.856228, 30.244762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.345085, 36.186180, 30.288660>,  <42.478176, 36.384151, 30.314999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.345085, 36.186180, 30.288660>,  <42.123268, 35.856228, 30.244762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345085, 36.186180, 30.288660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109925, -0.203338, 0.972918,
		0.824860, -0.527465, -0.203436,
		0.554547, 0.824884, 0.109744,
		42.511448, 36.433647, 30.321583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390930, 35.816380, 30.900753>,  <42.123268, 35.856228, 30.244762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390930, 35.816380, 30.900753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.549191, 36.173004, 30.812592>,  <42.644146, 36.386978, 30.759695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.549191, 36.173004, 30.812592>,  <42.390930, 35.816380, 30.900753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549191, 36.173004, 30.812592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265800, 0.118553, 0.956711,
		0.879098, -0.437103, -0.190073,
		0.395647, 0.891564, -0.220402,
		42.667885, 36.440472, 30.746471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098934, 35.758232, 31.152790>,  <42.390930, 35.816380, 30.900753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098934, 35.758232, 31.152790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964924, 36.135025, 31.144482>,  <42.884518, 36.361099, 31.139496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964924, 36.135025, 31.144482>,  <43.098934, 35.758232, 31.152790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964924, 36.135025, 31.144482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174037, 0.083535, 0.981190,
		0.925996, 0.325109, -0.191926,
		-0.335026, 0.941980, -0.020772,
		42.864414, 36.417618, 31.138250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631783, 36.280247, 31.183226>,  <43.098934, 35.758232, 31.152790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631783, 36.280247, 31.183226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292648, 36.411259, 31.350029>,  <43.089169, 36.489864, 31.450111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292648, 36.411259, 31.350029>,  <43.631783, 36.280247, 31.183226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292648, 36.411259, 31.350029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467525, 0.090691, 0.879316,
		0.250181, 0.940479, -0.230019,
		-0.847839, 0.327527, 0.417008,
		43.038296, 36.509518, 31.475132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887974, 36.458786, 31.759396>,  <43.631783, 36.280247, 31.183226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887974, 36.458786, 31.759396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493851, 36.503803, 31.810778>,  <43.257378, 36.530815, 31.841608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493851, 36.503803, 31.810778>,  <43.887974, 36.458786, 31.759396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493851, 36.503803, 31.810778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131841, 0.023133, 0.991001,
		0.108562, 0.993377, -0.037631,
		-0.985308, 0.112546, 0.128456,
		43.198257, 36.537567, 31.849314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808380, 36.915524, 32.267700>,  <43.887974, 36.458786, 31.759396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808380, 36.915524, 32.267700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457092, 36.724346, 32.274570>,  <43.246319, 36.609638, 32.278694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457092, 36.724346, 32.274570>,  <43.808380, 36.915524, 32.267700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457092, 36.724346, 32.274570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052704, 0.132416, 0.989792,
		-0.475340, 0.868352, -0.141480,
		-0.878222, -0.477944, 0.017177,
		43.193626, 36.580963, 32.279724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291225, 37.423630, 32.623783>,  <43.808380, 36.915524, 32.267700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291225, 37.423630, 32.623783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169327, 37.043621, 32.650852>,  <43.096188, 36.815617, 32.667095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.169327, 37.043621, 32.650852>,  <43.291225, 37.423630, 32.623783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169327, 37.043621, 32.650852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092895, 0.100364, 0.990605,
		-0.947891, 0.295600, -0.118839,
		-0.304750, -0.950025, 0.067674,
		43.077904, 36.758614, 32.671154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849957, 37.448090, 33.158150>,  <43.291225, 37.423630, 32.623783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849957, 37.448090, 33.158150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.931293, 37.057713, 33.126678>,  <42.980095, 36.823486, 33.107796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.931293, 37.057713, 33.126678>,  <42.849957, 37.448090, 33.158150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931293, 37.057713, 33.126678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040594, -0.088692, 0.995232,
		-0.978267, -0.199175, -0.057652,
		0.203339, -0.975942, -0.078679,
		42.992294, 36.764931, 33.103073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273853, 37.138741, 33.393631>,  <42.849957, 37.448090, 33.158150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273853, 37.138741, 33.393631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586857, 36.892036, 33.427776>,  <42.774658, 36.744015, 33.448265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586857, 36.892036, 33.427776>,  <42.273853, 37.138741, 33.393631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586857, 36.892036, 33.427776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141390, -0.042497, 0.989041,
		-0.606371, -0.786005, -0.120458,
		0.782511, -0.616757, 0.085364,
		42.821609, 36.707008, 33.453384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058025, 36.634594, 33.909233>,  <42.273853, 37.138741, 33.393631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058025, 36.634594, 33.909233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456532, 36.608021, 33.887142>,  <42.695633, 36.592075, 33.873886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456532, 36.608021, 33.887142>,  <42.058025, 36.634594, 33.909233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456532, 36.608021, 33.887142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037514, -0.243202, 0.969250,
		-0.077819, -0.967698, -0.239800,
		0.996261, -0.066430, -0.055228,
		42.755409, 36.588093, 33.870575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114090, 36.160950, 34.406025>,  <42.058025, 36.634594, 33.909233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114090, 36.160950, 34.406025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495640, 36.269352, 34.354362>,  <42.724567, 36.334393, 34.323364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.495640, 36.269352, 34.354362>,  <42.114090, 36.160950, 34.406025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495640, 36.269352, 34.354362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212903, -0.307331, 0.927481,
		0.211660, -0.912196, -0.350853,
		0.953872, 0.271008, -0.129160,
		42.781803, 36.350655, 34.315613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622112, 35.566471, 34.766651>,  <42.114090, 36.160950, 34.406025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622112, 35.566471, 34.766651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.823753, 35.911655, 34.752903>,  <42.944736, 36.118767, 34.744656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.823753, 35.911655, 34.752903>,  <42.622112, 35.566471, 34.766651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823753, 35.911655, 34.752903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286363, -0.129474, 0.949333,
		0.814788, -0.488401, -0.312388,
		0.504101, 0.862961, -0.034366,
		42.974983, 36.170544, 34.742592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360989, 35.474850, 35.072510>,  <42.622112, 35.566471, 34.766651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360989, 35.474850, 35.072510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293262, 35.868900, 35.084221>,  <43.252628, 36.105331, 35.091248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.293262, 35.868900, 35.084221>,  <43.360989, 35.474850, 35.072510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293262, 35.868900, 35.084221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497568, 0.059801, 0.865361,
		0.850741, 0.161082, -0.500293,
		-0.169312, 0.985128, 0.029274,
		43.242470, 36.164440, 35.093002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962582, 35.758305, 35.270084>,  <43.360989, 35.474850, 35.072510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962582, 35.758305, 35.270084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.682442, 36.026390, 35.368324>,  <43.514359, 36.187241, 35.427269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.682442, 36.026390, 35.368324>,  <43.962582, 35.758305, 35.270084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682442, 36.026390, 35.368324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355617, 0.029287, 0.934173,
		0.618906, 0.741587, -0.258851,
		-0.700351, 0.670217, 0.245595,
		43.472336, 36.227455, 35.442001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366955, 36.297005, 35.716324>,  <43.962582, 35.758305, 35.270084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366955, 36.297005, 35.716324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.972076, 36.329441, 35.771267>,  <43.735149, 36.348904, 35.804234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.972076, 36.329441, 35.771267>,  <44.366955, 36.297005, 35.716324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972076, 36.329441, 35.771267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148816, 0.158314, 0.976110,
		0.057411, 0.984053, -0.168355,
		-0.987197, 0.081094, 0.137353,
		43.675919, 36.353767, 35.812473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018150, 36.736935, 35.651867>,  <44.366955, 36.297005, 35.716324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018150, 36.736935, 35.651867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261501, 36.453991, 35.795826>,  <45.407513, 36.284225, 35.882202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261501, 36.453991, 35.795826>,  <45.018150, 36.736935, 35.651867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261501, 36.453991, 35.795826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202482, -0.300123, -0.932163,
		0.767384, 0.639979, -0.039361,
		0.608378, -0.707357, 0.359893,
		45.444016, 36.241783, 35.903793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748753, 36.831211, 35.419304>,  <45.018150, 36.736935, 35.651867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748753, 36.831211, 35.419304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.726852, 36.445156, 35.521683>,  <45.713715, 36.213524, 35.583111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.726852, 36.445156, 35.521683>,  <45.748753, 36.831211, 35.419304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726852, 36.445156, 35.521683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132490, -0.261084, -0.956181,
		0.989671, -0.018439, 0.142166,
		-0.054748, -0.965140, 0.255945,
		45.710426, 36.155613, 35.598465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358501, 36.420570, 35.174080>,  <45.748753, 36.831211, 35.419304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358501, 36.420570, 35.174080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.069031, 36.148090, 35.218369>,  <45.895348, 35.984604, 35.244942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.069031, 36.148090, 35.218369>,  <46.358501, 36.420570, 35.174080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069031, 36.148090, 35.218369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207513, -0.367784, -0.906462,
		0.658202, -0.633011, 0.407515,
		-0.723678, -0.681199, 0.110719,
		45.851929, 35.943729, 35.251583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624115, 35.787319, 34.886810>,  <46.358501, 36.420570, 35.174080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624115, 35.787319, 34.886810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231224, 35.713989, 34.870720>,  <45.995487, 35.669991, 34.861065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231224, 35.713989, 34.870720>,  <46.624115, 35.787319, 34.886810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231224, 35.713989, 34.870720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120586, -0.452164, -0.883746,
		0.143823, -0.872891, 0.466235,
		-0.982229, -0.183325, -0.040227,
		45.936554, 35.658993, 34.858650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.597744, 35.168201, 34.553421>,  <46.624115, 35.787319, 34.886810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.597744, 35.168201, 34.553421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.222088, 35.305145, 34.542080>,  <45.996693, 35.387314, 34.535275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.222088, 35.305145, 34.542080>,  <46.597744, 35.168201, 34.553421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.222088, 35.305145, 34.542080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125379, -0.418429, -0.899554,
		-0.319839, -0.841251, 0.435889,
		-0.939140, 0.342363, -0.028355,
		45.940346, 35.407856, 34.533573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232819, 34.624786, 34.333481>,  <46.597744, 35.168201, 34.553421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232819, 34.624786, 34.333481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.011536, 34.944786, 34.240566>,  <45.878765, 35.136787, 34.184818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.011536, 34.944786, 34.240566>,  <46.232819, 34.624786, 34.333481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011536, 34.944786, 34.240566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025159, -0.262671, -0.964557,
		-0.832661, -0.539448, 0.125185,
		-0.553211, 0.800000, -0.232288,
		45.845573, 35.184788, 34.170879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631424, 34.286404, 33.811642>,  <46.232819, 34.624786, 34.333481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631424, 34.286404, 33.811642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.610394, 34.681309, 33.751583>,  <45.597775, 34.918251, 33.715549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.610394, 34.681309, 33.751583>,  <45.631424, 34.286404, 33.811642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610394, 34.681309, 33.751583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379571, -0.158826, -0.911427,
		-0.923668, 0.009075, 0.383087,
		-0.052573, 0.987265, -0.150147,
		45.594620, 34.977489, 33.706539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982929, 34.362576, 33.375763>,  <45.631424, 34.286404, 33.811642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982929, 34.362576, 33.375763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246906, 34.658146, 33.321411>,  <45.405293, 34.835487, 33.288799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.246906, 34.658146, 33.321411>,  <44.982929, 34.362576, 33.375763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246906, 34.658146, 33.321411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136867, -0.059594, -0.988795,
		-0.738744, 0.671147, 0.061806,
		0.659943, 0.738925, -0.135883,
		45.444889, 34.879822, 33.280647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689339, 34.830265, 32.909649>,  <44.982929, 34.362576, 33.375763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689339, 34.830265, 32.909649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058392, 34.982784, 32.886436>,  <45.279823, 35.074295, 32.872509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.058392, 34.982784, 32.886436>,  <44.689339, 34.830265, 32.909649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058392, 34.982784, 32.886436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085892, 0.056450, -0.994704,
		-0.376006, 0.922726, 0.084833,
		0.922628, 0.381301, -0.058029,
		45.335178, 35.097176, 32.869026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717552, 35.404362, 32.403381>,  <44.689339, 34.830265, 32.909649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717552, 35.404362, 32.403381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107033, 35.314053, 32.415653>,  <45.340721, 35.259869, 32.423016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.107033, 35.314053, 32.415653>,  <44.717552, 35.404362, 32.403381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.107033, 35.314053, 32.415653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000072, -0.134962, -0.990851,
		0.227844, 0.964787, -0.131429,
		0.973698, -0.225769, 0.030681,
		45.399143, 35.246323, 32.424858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145752, 35.898212, 31.940882>,  <44.717552, 35.404362, 32.403381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145752, 35.898212, 31.940882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.358658, 35.564644, 31.999233>,  <45.486401, 35.364502, 32.034245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.358658, 35.564644, 31.999233>,  <45.145752, 35.898212, 31.940882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358658, 35.564644, 31.999233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054086, -0.138465, -0.988889,
		0.844851, 0.534237, -0.028596,
		0.532261, -0.833917, 0.145877,
		45.518337, 35.314468, 32.042995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.759434, 35.979111, 31.565758>,  <45.145752, 35.898212, 31.940882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.759434, 35.979111, 31.565758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.685520, 35.587795, 31.603283>,  <45.641174, 35.353004, 31.625797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.685520, 35.587795, 31.603283>,  <45.759434, 35.979111, 31.565758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685520, 35.587795, 31.603283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149246, -0.122282, -0.981210,
		0.971382, -0.167307, 0.168602,
		-0.184780, -0.978292, 0.093813,
		45.630085, 35.294308, 31.631426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096245, 35.654137, 30.961519>,  <45.759434, 35.979111, 31.565758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096245, 35.654137, 30.961519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.867645, 35.352821, 31.091719>,  <45.730488, 35.172031, 31.169838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.867645, 35.352821, 31.091719>,  <46.096245, 35.654137, 30.961519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867645, 35.352821, 31.091719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291750, -0.184223, -0.938586,
		0.766991, -0.631361, -0.114489,
		-0.571496, -0.753289, 0.325496,
		45.696198, 35.126835, 31.189367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097462, 35.103725, 30.435045>,  <46.096245, 35.654137, 30.961519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097462, 35.103725, 30.435045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.765549, 35.025242, 30.644030>,  <45.566402, 34.978149, 30.769421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.765549, 35.025242, 30.644030>,  <46.097462, 35.103725, 30.435045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765549, 35.025242, 30.644030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424337, -0.386245, -0.818995,
		0.362494, -0.901286, 0.237240,
		-0.829781, -0.196211, 0.522461,
		45.516613, 34.966377, 30.800768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037476, 34.432987, 30.297413>,  <46.097462, 35.103725, 30.435045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037476, 34.432987, 30.297413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.675640, 34.566917, 30.402946>,  <45.458538, 34.647274, 30.466267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.675640, 34.566917, 30.402946>,  <46.037476, 34.432987, 30.297413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.675640, 34.566917, 30.402946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380647, -0.355840, -0.853514,
		-0.191893, -0.872509, 0.449339,
		-0.904591, 0.334823, 0.263835,
		45.404263, 34.667366, 30.482098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.528301, 33.854706, 30.284901>,  <46.037476, 34.432987, 30.297413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.528301, 33.854706, 30.284901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276348, 34.165348, 30.280510>,  <45.125175, 34.351734, 30.277876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.276348, 34.165348, 30.280510>,  <45.528301, 33.854706, 30.284901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276348, 34.165348, 30.280510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543692, -0.450980, -0.707826,
		-0.554657, -0.439879, 0.706302,
		-0.629885, 0.776611, -0.010981,
		45.087383, 34.398331, 30.277216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900547, 33.602856, 30.270288>,  <45.528301, 33.854706, 30.284901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900547, 33.602856, 30.270288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807915, 33.962505, 30.121725>,  <44.752335, 34.178295, 30.032587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807915, 33.962505, 30.121725>,  <44.900547, 33.602856, 30.270288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807915, 33.962505, 30.121725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683567, -0.422050, -0.595491,
		-0.692174, 0.115978, 0.712352,
		-0.231584, 0.899124, -0.371411,
		44.738438, 34.232243, 30.010302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.183170, 33.433605, 30.073349>,  <44.900547, 33.602856, 30.270288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.183170, 33.433605, 30.073349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.268394, 33.783077, 29.898399>,  <44.319527, 33.992760, 29.793428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.268394, 33.783077, 29.898399>,  <44.183170, 33.433605, 30.073349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.268394, 33.783077, 29.898399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747656, -0.142394, -0.648640,
		-0.628981, 0.465204, 0.622871,
		0.213057, 0.873676, -0.437376,
		44.332310, 34.045181, 29.767187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634678, 33.884865, 30.013891>,  <44.183170, 33.433605, 30.073349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634678, 33.884865, 30.013891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.875568, 33.979397, 29.708872>,  <44.020103, 34.036118, 29.525860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.875568, 33.979397, 29.708872>,  <43.634678, 33.884865, 30.013891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875568, 33.979397, 29.708872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751180, -0.155647, -0.641484,
		-0.270289, 0.959126, 0.083791,
		0.602223, 0.236328, -0.762546,
		44.056236, 34.050297, 29.480108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115318, 33.989304, 29.595316>,  <43.634678, 33.884865, 30.013891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115318, 33.989304, 29.595316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445419, 34.002476, 29.369791>,  <43.643478, 34.010380, 29.234476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.445419, 34.002476, 29.369791>,  <43.115318, 33.989304, 29.595316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445419, 34.002476, 29.369791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557248, -0.114918, -0.822355,
		-0.091871, 0.992829, -0.076486,
		0.825248, 0.032929, -0.563810,
		43.692993, 34.012356, 29.200647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996021, 34.482777, 29.101114>,  <43.115318, 33.989304, 29.595316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996021, 34.482777, 29.101114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258209, 34.218140, 28.955433>,  <43.415524, 34.059357, 28.868025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258209, 34.218140, 28.955433>,  <42.996021, 34.482777, 29.101114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258209, 34.218140, 28.955433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604758, -0.170969, -0.777841,
		0.452350, 0.730109, -0.512172,
		0.655474, -0.661597, -0.364202,
		43.454853, 34.019661, 28.846172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.626865, 37.100441, 41.248489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374241, 36.794197, 41.199547>,  <38.222664, 36.610451, 41.170181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374241, 36.794197, 41.199547>,  <38.626865, 37.100441, 41.248489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374241, 36.794197, 41.199547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008779, 0.164861, -0.986278,
		0.775273, -0.621825, -0.110842,
		-0.631565, -0.765608, -0.122354,
		38.184772, 36.564514, 41.162842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911667, 36.666168, 40.795990>,  <38.626865, 37.100441, 41.248489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911667, 36.666168, 40.795990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520676, 36.586746, 40.767395>,  <38.286079, 36.539093, 40.750237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520676, 36.586746, 40.767395>,  <38.911667, 36.666168, 40.795990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520676, 36.586746, 40.767395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090715, -0.089475, -0.991849,
		0.190540, -0.975997, 0.105471,
		-0.977479, -0.198555, -0.071489,
		38.227432, 36.527180, 40.745949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985645, 36.337414, 40.166176>,  <38.911667, 36.666168, 40.795990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985645, 36.337414, 40.166176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590893, 36.384769, 40.210083>,  <38.354042, 36.413185, 40.236427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590893, 36.384769, 40.210083>,  <38.985645, 36.337414, 40.166176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590893, 36.384769, 40.210083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131638, -0.196412, -0.971645,
		-0.093471, -0.973348, 0.209420,
		-0.986881, 0.118388, 0.109771,
		38.294830, 36.420288, 40.243015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549992, 35.834827, 39.909832>,  <38.985645, 36.337414, 40.166176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549992, 35.834827, 39.909832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272308, 36.122517, 39.921131>,  <38.105698, 36.295132, 39.927910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272308, 36.122517, 39.921131>,  <38.549992, 35.834827, 39.909832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272308, 36.122517, 39.921131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042840, -0.002107, -0.999080,
		-0.718503, -0.694775, 0.032275,
		-0.694204, 0.719224, 0.028250,
		38.064049, 36.338284, 39.929607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150169, 35.626041, 39.384949>,  <38.549992, 35.834827, 39.909832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150169, 35.626041, 39.384949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046627, 36.009296, 39.433868>,  <37.984501, 36.239250, 39.463219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046627, 36.009296, 39.433868>,  <38.150169, 35.626041, 39.384949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046627, 36.009296, 39.433868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220872, 0.064542, -0.973165,
		-0.940323, -0.278924, 0.194919,
		-0.258858, 0.958142, 0.122297,
		37.968971, 36.296738, 39.470558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641529, 35.621582, 38.979805>,  <38.150169, 35.626041, 39.384949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641529, 35.621582, 38.979805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697311, 36.016655, 39.008213>,  <37.730782, 36.253696, 39.025257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697311, 36.016655, 39.008213>,  <37.641529, 35.621582, 38.979805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697311, 36.016655, 39.008213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340729, 0.115205, -0.933077,
		-0.929761, 0.105929, 0.352596,
		0.139461, 0.987678, 0.071020,
		37.739151, 36.312958, 39.029518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009209, 35.905125, 38.669521>,  <37.641529, 35.621582, 38.979805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009209, 35.905125, 38.669521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330696, 36.141563, 38.642273>,  <37.523590, 36.283428, 38.625923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330696, 36.141563, 38.642273>,  <37.009209, 35.905125, 38.669521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330696, 36.141563, 38.642273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205117, 0.167774, -0.964251,
		-0.558535, 0.788960, 0.256087,
		0.803720, 0.591095, -0.068121,
		37.571812, 36.318893, 38.621838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836357, 36.332127, 38.161728>,  <37.009209, 35.905125, 38.669521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836357, 36.332127, 38.161728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229801, 36.395111, 38.196850>,  <37.465870, 36.432903, 38.217922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229801, 36.395111, 38.196850>,  <36.836357, 36.332127, 38.161728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229801, 36.395111, 38.196850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066475, 0.135981, -0.988479,
		-0.167591, 0.978118, 0.123285,
		0.983613, 0.157465, 0.087809,
		37.524883, 36.442352, 38.223194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047688, 36.951412, 37.811222>,  <36.836357, 36.332127, 38.161728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047688, 36.951412, 37.811222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383602, 36.734722, 37.825588>,  <37.585152, 36.604706, 37.834209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383602, 36.734722, 37.825588>,  <37.047688, 36.951412, 37.811222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383602, 36.734722, 37.825588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045496, 0.004294, -0.998955,
		0.541007, 0.840543, 0.028253,
		0.839787, -0.541727, 0.035918,
		37.635540, 36.572205, 37.836365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416229, 37.161686, 37.200954>,  <37.047688, 36.951412, 37.811222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416229, 37.161686, 37.200954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628387, 36.831253, 37.277130>,  <37.755684, 36.632992, 37.322838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628387, 36.831253, 37.277130>,  <37.416229, 37.161686, 37.200954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628387, 36.831253, 37.277130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053584, -0.191528, -0.980024,
		0.846055, 0.530005, -0.057321,
		0.530396, -0.826082, 0.190443,
		37.787506, 36.583427, 37.334263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017513, 37.117367, 36.831554>,  <37.416229, 37.161686, 37.200954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017513, 37.117367, 36.831554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919090, 36.737888, 36.910980>,  <37.860039, 36.510201, 36.958637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919090, 36.737888, 36.910980>,  <38.017513, 37.117367, 36.831554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919090, 36.737888, 36.910980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198110, -0.151313, -0.968430,
		0.948794, -0.277623, -0.150716,
		-0.246053, -0.948699, 0.198565,
		37.845276, 36.453278, 36.970551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473217, 36.722733, 36.361290>,  <38.017513, 37.117367, 36.831554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473217, 36.722733, 36.361290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171501, 36.474915, 36.448204>,  <37.990471, 36.326225, 36.500355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171501, 36.474915, 36.448204>,  <38.473217, 36.722733, 36.361290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171501, 36.474915, 36.448204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057027, -0.267884, -0.961762,
		0.654061, -0.737838, 0.166731,
		-0.754289, -0.619543, 0.217289,
		37.945213, 36.289051, 36.513390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622997, 36.044308, 35.942474>,  <38.473217, 36.722733, 36.361290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622997, 36.044308, 35.942474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232250, 36.090408, 36.014519>,  <37.997803, 36.118069, 36.057747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232250, 36.090408, 36.014519>,  <38.622997, 36.044308, 35.942474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232250, 36.090408, 36.014519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203714, -0.245592, -0.947726,
		-0.064995, -0.962497, 0.263390,
		-0.976871, 0.115253, 0.180112,
		37.939190, 36.124985, 36.068554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794518, 35.907913, 36.707829>,  <38.622997, 36.044308, 35.942474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794518, 35.907913, 36.707829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430603, 35.767559, 36.796516>,  <38.212254, 35.683346, 36.849728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430603, 35.767559, 36.796516>,  <38.794518, 35.907913, 36.707829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430603, 35.767559, 36.796516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223886, 0.034940, 0.973989,
		-0.349507, 0.935765, 0.046771,
		-0.909791, -0.350888, 0.221717,
		38.157665, 35.662292, 36.863033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486057, 35.732609, 37.098576>,  <38.794518, 35.907913, 36.707829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486057, 35.732609, 37.098576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858940, 35.588078, 37.106964>,  <40.082668, 35.501358, 37.112000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858940, 35.588078, 37.106964>,  <39.486057, 35.732609, 37.098576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858940, 35.588078, 37.106964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297052, -0.730704, 0.614681,
		-0.206772, -0.579239, -0.788497,
		0.932204, -0.361324, 0.020975,
		40.138603, 35.479679, 37.113258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483929, 35.025375, 36.971760>,  <39.486057, 35.732609, 37.098576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483929, 35.025375, 36.971760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831013, 35.072094, 37.165020>,  <40.039265, 35.100124, 37.280975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831013, 35.072094, 37.165020>,  <39.483929, 35.025375, 36.971760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831013, 35.072094, 37.165020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246940, -0.742279, 0.622931,
		0.431387, -0.659834, -0.615243,
		0.867713, 0.116797, 0.483148,
		40.091328, 35.107132, 37.309963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717957, 34.352985, 37.207016>,  <39.483929, 35.025375, 36.971760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717957, 34.352985, 37.207016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961464, 34.560261, 37.447308>,  <40.107567, 34.684628, 37.591484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961464, 34.560261, 37.447308>,  <39.717957, 34.352985, 37.207016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961464, 34.560261, 37.447308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074834, -0.716326, 0.693741,
		0.789811, -0.467282, -0.397299,
		0.608768, 0.518193, 0.600731,
		40.144096, 34.715717, 37.627525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176682, 33.748615, 37.463223>,  <39.717957, 34.352985, 37.207016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176682, 33.748615, 37.463223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206673, 34.057301, 37.715836>,  <40.224667, 34.242512, 37.867405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206673, 34.057301, 37.715836>,  <40.176682, 33.748615, 37.463223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206673, 34.057301, 37.715836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024325, -0.631712, 0.774821,
		0.996888, -0.073458, -0.028594,
		0.074980, 0.771715, 0.631533,
		40.229168, 34.288815, 37.905296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727215, 33.620110, 38.083889>,  <40.176682, 33.748615, 37.463223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727215, 33.620110, 38.083889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498375, 33.912014, 38.233631>,  <40.361069, 34.087158, 38.323479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498375, 33.912014, 38.233631>,  <40.727215, 33.620110, 38.083889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498375, 33.912014, 38.233631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049726, -0.486456, 0.872289,
		0.818673, 0.480424, 0.314592,
		-0.572104, 0.729762, 0.374359,
		40.326744, 34.130943, 38.345940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064236, 33.796997, 38.637367>,  <40.727215, 33.620110, 38.083889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064236, 33.796997, 38.637367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688866, 33.920086, 38.700195>,  <40.463646, 33.993938, 38.737892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688866, 33.920086, 38.700195>,  <41.064236, 33.796997, 38.637367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688866, 33.920086, 38.700195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001777, -0.458917, 0.888477,
		0.345488, 0.833487, 0.431204,
		-0.938421, 0.307724, 0.157069,
		40.407341, 34.012402, 38.747314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103699, 34.062145, 39.293095>,  <41.064236, 33.796997, 38.637367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103699, 34.062145, 39.293095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713421, 34.003380, 39.228054>,  <40.479256, 33.968121, 39.189030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713421, 34.003380, 39.228054>,  <41.103699, 34.062145, 39.293095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713421, 34.003380, 39.228054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101784, -0.353305, 0.929955,
		-0.194072, 0.923900, 0.329764,
		-0.975693, -0.146913, -0.162605,
		40.420712, 33.959305, 39.179272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762360, 34.451981, 39.843941>,  <41.103699, 34.062145, 39.293095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762360, 34.451981, 39.843941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486610, 34.185604, 39.729897>,  <40.321159, 34.025780, 39.661469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486610, 34.185604, 39.729897>,  <40.762360, 34.451981, 39.843941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486610, 34.185604, 39.729897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051615, -0.347426, 0.936286,
		-0.722567, 0.660165, 0.205133,
		-0.689372, -0.665941, -0.285113,
		40.279800, 33.985821, 39.644363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273026, 34.480038, 40.321476>,  <40.762360, 34.451981, 39.843941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273026, 34.480038, 40.321476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205715, 34.113289, 40.176685>,  <40.165329, 33.893238, 40.089809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205715, 34.113289, 40.176685>,  <40.273026, 34.480038, 40.321476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205715, 34.113289, 40.176685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225289, -0.321727, 0.919640,
		-0.959651, 0.236301, -0.152423,
		-0.168273, -0.916872, -0.361981,
		40.155231, 33.838226, 40.068092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613026, 34.342411, 40.519062>,  <40.273026, 34.480038, 40.321476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613026, 34.342411, 40.519062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756908, 33.983479, 40.416759>,  <39.843239, 33.768120, 40.355377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756908, 33.983479, 40.416759>,  <39.613026, 34.342411, 40.519062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756908, 33.983479, 40.416759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381597, -0.391612, 0.837272,
		-0.851465, -0.203577, -0.483284,
		0.359709, -0.897327, -0.255759,
		39.864822, 33.714279, 40.340031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041500, 33.792625, 40.628071>,  <39.613026, 34.342411, 40.519062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041500, 33.792625, 40.628071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370300, 33.567352, 40.594273>,  <39.567581, 33.432190, 40.573994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370300, 33.567352, 40.594273>,  <39.041500, 33.792625, 40.628071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370300, 33.567352, 40.594273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261949, -0.505660, 0.822004,
		-0.505660, -0.653557, -0.563179,
		-0.822004, 0.563179, 0.084494,
		39.616901, 33.398399, 40.568924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865025, 33.106724, 40.528576>,  <39.041500, 33.792625, 40.628071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865025, 33.106724, 40.528576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237228, 33.118877, 40.674572>,  <39.460552, 33.126171, 40.762169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237228, 33.118877, 40.674572>,  <38.865025, 33.106724, 40.528576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237228, 33.118877, 40.674572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269644, -0.617576, 0.738845,
		0.247863, -0.785924, -0.566469,
		0.930514, 0.030387, 0.364994,
		39.516384, 33.127995, 40.784069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986427, 32.443447, 40.711670>,  <38.865025, 33.106724, 40.528576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986427, 32.443447, 40.711670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254734, 32.659592, 40.914875>,  <39.415718, 32.789280, 41.036797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254734, 32.659592, 40.914875>,  <38.986427, 32.443447, 40.711670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254734, 32.659592, 40.914875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198023, -0.529605, 0.824806,
		0.714740, -0.653854, -0.248239,
		0.670771, 0.540365, 0.508008,
		39.455967, 32.821701, 41.067276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359840, 31.889250, 41.224369>,  <38.986427, 32.443447, 40.711670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359840, 31.889250, 41.224369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487152, 32.240543, 41.367142>,  <39.563541, 32.451321, 41.452805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487152, 32.240543, 41.367142>,  <39.359840, 31.889250, 41.224369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487152, 32.240543, 41.367142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038581, -0.388202, 0.920766,
		0.947211, -0.279293, -0.157440,
		0.318282, 0.878234, 0.356933,
		39.582638, 32.504013, 41.474220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778095, 31.180571, 41.328075>,  <39.359840, 31.889250, 41.224369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778095, 31.180571, 41.328075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528419, 30.868141, 41.335091>,  <39.378613, 30.680683, 41.339298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528419, 30.868141, 41.335091>,  <39.778095, 31.180571, 41.328075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528419, 30.868141, 41.335091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039241, 0.008926, -0.999190,
		0.780285, -0.624374, -0.036221,
		-0.624192, -0.781074, 0.017536,
		39.341164, 30.633820, 41.340351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070396, 30.779675, 40.812756>,  <39.778095, 31.180571, 41.328075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070396, 30.779675, 40.812756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684769, 30.687338, 40.865349>,  <39.453392, 30.631935, 40.896904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684769, 30.687338, 40.865349>,  <40.070396, 30.779675, 40.812756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684769, 30.687338, 40.865349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134956, -0.000742, -0.990851,
		0.228828, -0.972991, -0.030438,
		-0.964067, -0.230842, 0.131481,
		39.395550, 30.618086, 40.904793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802391, 30.122252, 40.400692>,  <40.070396, 30.779675, 40.812756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802391, 30.122252, 40.400692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534073, 30.405506, 40.488846>,  <39.373081, 30.575459, 40.541737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534073, 30.405506, 40.488846>,  <39.802391, 30.122252, 40.400692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534073, 30.405506, 40.488846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256420, 0.057384, -0.964861,
		-0.695900, -0.703739, 0.143088,
		-0.670799, 0.708137, 0.220386,
		39.332832, 30.617947, 40.554962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319405, 30.004881, 39.849483>,  <39.802391, 30.122252, 40.400692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319405, 30.004881, 39.849483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208565, 30.360790, 39.994545>,  <39.142059, 30.574337, 40.081581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208565, 30.360790, 39.994545>,  <39.319405, 30.004881, 39.849483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208565, 30.360790, 39.994545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405498, 0.233880, -0.883669,
		-0.871084, -0.391918, 0.295994,
		-0.277099, 0.889776, 0.362651,
		39.125435, 30.627724, 40.103340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621483, 30.157692, 39.594913>,  <39.319405, 30.004881, 39.849483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621483, 30.157692, 39.594913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795078, 30.504044, 39.694439>,  <38.899235, 30.711855, 39.754154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795078, 30.504044, 39.694439>,  <38.621483, 30.157692, 39.594913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795078, 30.504044, 39.694439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249544, 0.380904, -0.890303,
		-0.865669, 0.324290, 0.381382,
		0.433987, 0.865880, 0.248813,
		38.925274, 30.763807, 39.769081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094952, 30.624615, 39.302094>,  <38.621483, 30.157692, 39.594913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094952, 30.624615, 39.302094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422653, 30.842659, 39.373295>,  <38.619274, 30.973486, 39.416016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422653, 30.842659, 39.373295>,  <38.094952, 30.624615, 39.302094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422653, 30.842659, 39.373295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187158, 0.547600, -0.815540,
		-0.542035, 0.634816, 0.550642,
		0.819250, 0.545109, 0.178007,
		38.668427, 31.006191, 39.426697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903133, 31.317808, 39.228516>,  <38.094952, 30.624615, 39.302094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903133, 31.317808, 39.228516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297977, 31.320953, 39.164574>,  <38.534885, 31.322842, 39.126209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297977, 31.320953, 39.164574>,  <37.903133, 31.317808, 39.228516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297977, 31.320953, 39.164574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144672, 0.470990, -0.870194,
		0.068445, 0.882103, 0.466057,
		0.987110, 0.007865, -0.159852,
		38.594109, 31.323313, 39.116619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014725, 31.927259, 38.948223>,  <37.903133, 31.317808, 39.228516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014725, 31.927259, 38.948223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366577, 31.762924, 38.852333>,  <38.577686, 31.664324, 38.794800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366577, 31.762924, 38.852333>,  <38.014725, 31.927259, 38.948223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366577, 31.762924, 38.852333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024327, 0.542176, -0.839913,
		0.475041, 0.732979, 0.486907,
		0.879627, -0.410838, -0.239725,
		38.630466, 31.639673, 38.780415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415245, 32.499279, 38.866558>,  <38.014725, 31.927259, 38.948223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415245, 32.499279, 38.866558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582970, 32.196014, 38.666813>,  <38.683605, 32.014057, 38.546967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582970, 32.196014, 38.666813>,  <38.415245, 32.499279, 38.866558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582970, 32.196014, 38.666813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225489, 0.619799, -0.751667,
		0.879392, 0.202582, 0.430847,
		0.419313, -0.758162, -0.499367,
		38.708763, 31.968565, 38.517002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926933, 32.833271, 38.490021>,  <38.415245, 32.499279, 38.866558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926933, 32.833271, 38.490021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898239, 32.485088, 38.295223>,  <38.881023, 32.276180, 38.178345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898239, 32.485088, 38.295223>,  <38.926933, 32.833271, 38.490021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898239, 32.485088, 38.295223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017470, 0.489269, -0.871958,
		0.997271, -0.054040, -0.050303,
		-0.071732, -0.870457, -0.486990,
		38.876720, 32.223949, 38.149128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335888, 32.880508, 37.945084>,  <38.926933, 32.833271, 38.490021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335888, 32.880508, 37.945084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095280, 32.579430, 37.838028>,  <38.950916, 32.398785, 37.773796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095280, 32.579430, 37.838028>,  <39.335888, 32.880508, 37.945084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095280, 32.579430, 37.838028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011173, 0.342917, -0.939299,
		0.798782, -0.562014, -0.214681,
		-0.601517, -0.752694, -0.267637,
		38.914825, 32.353622, 37.757736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646278, 32.365528, 37.347656>,  <39.335888, 32.880508, 37.945084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646278, 32.365528, 37.347656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249329, 32.414822, 37.348171>,  <39.011158, 32.444397, 37.348480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249329, 32.414822, 37.348171>,  <39.646278, 32.365528, 37.347656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249329, 32.414822, 37.348171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026707, 0.225219, -0.973942,
		-0.120317, -0.966482, -0.226794,
		-0.992377, 0.123239, 0.001285,
		38.951614, 32.451794, 37.348557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.106087, 29.708241, 45.048141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725788, 29.619980, 44.961067>,  <39.497608, 29.567024, 44.908825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725788, 29.619980, 44.961067>,  <40.106087, 29.708241, 45.048141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725788, 29.619980, 44.961067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244781, -0.103676, -0.964019,
		0.190144, -0.969827, 0.152581,
		-0.950751, -0.220651, -0.217682,
		39.440563, 29.553785, 44.895763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125233, 29.143831, 44.573578>,  <40.106087, 29.708241, 45.048141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125233, 29.143831, 44.573578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778404, 29.329012, 44.499969>,  <39.570305, 29.440121, 44.455807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.778404, 29.329012, 44.499969>,  <40.125233, 29.143831, 44.573578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778404, 29.329012, 44.499969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101991, -0.196598, -0.975165,
		-0.487631, -0.864307, 0.123247,
		-0.867072, 0.462950, -0.184019,
		39.518284, 29.467897, 44.444763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790314, 28.713799, 43.997028>,  <40.125233, 29.143831, 44.573578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790314, 28.713799, 43.997028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589897, 29.059799, 43.986187>,  <39.469646, 29.267399, 43.979683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589897, 29.059799, 43.986187>,  <39.790314, 28.713799, 43.997028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589897, 29.059799, 43.986187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006207, -0.027720, -0.999597,
		-0.865402, -0.501006, 0.008520,
		-0.501040, 0.865000, -0.027099,
		39.439587, 29.319300, 43.978058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452000, 28.678913, 43.382839>,  <39.790314, 28.713799, 43.997028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452000, 28.678913, 43.382839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410713, 29.071833, 43.445370>,  <39.385941, 29.307585, 43.482887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410713, 29.071833, 43.445370>,  <39.452000, 28.678913, 43.382839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410713, 29.071833, 43.445370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087317, 0.147615, -0.985183,
		-0.990819, -0.115340, 0.070534,
		-0.103219, 0.982297, 0.156331,
		39.379745, 29.366522, 43.492268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915543, 28.876774, 42.948231>,  <39.452000, 28.678913, 43.382839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915543, 28.876774, 42.948231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110840, 29.219187, 43.016144>,  <39.228016, 29.424635, 43.056892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110840, 29.219187, 43.016144>,  <38.915543, 28.876774, 42.948231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110840, 29.219187, 43.016144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045523, 0.219268, -0.974602,
		-0.871521, 0.468111, 0.146025,
		0.488240, 0.856034, 0.169787,
		39.257313, 29.475996, 43.067081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506275, 29.503290, 42.735413>,  <38.915543, 28.876774, 42.948231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506275, 29.503290, 42.735413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865147, 29.678518, 42.757915>,  <39.080471, 29.783655, 42.771416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.865147, 29.678518, 42.757915>,  <38.506275, 29.503290, 42.735413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865147, 29.678518, 42.757915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196859, 0.510659, -0.836943,
		-0.395367, 0.739813, 0.544391,
		0.897180, 0.438068, 0.056259,
		39.134300, 29.809938, 42.774792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398483, 30.253599, 42.719666>,  <38.506275, 29.503290, 42.735413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398483, 30.253599, 42.719666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770813, 30.158749, 42.608429>,  <38.994209, 30.101837, 42.541687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770813, 30.158749, 42.608429>,  <38.398483, 30.253599, 42.719666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770813, 30.158749, 42.608429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082482, 0.604987, -0.791952,
		0.356035, 0.760106, 0.543579,
		0.930825, -0.237127, -0.278091,
		39.050060, 30.087610, 42.525002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767113, 30.940538, 42.555035>,  <38.398483, 30.253599, 42.719666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767113, 30.940538, 42.555035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927769, 30.631702, 42.358032>,  <39.024162, 30.446400, 42.239830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.927769, 30.631702, 42.358032>,  <38.767113, 30.940538, 42.555035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927769, 30.631702, 42.358032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006840, 0.540301, -0.841444,
		0.915772, 0.334589, 0.222288,
		0.401641, -0.772091, -0.492504,
		39.048260, 30.400076, 42.210281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227032, 31.336302, 42.081715>,  <38.767113, 30.940538, 42.555035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227032, 31.336302, 42.081715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205856, 30.961121, 41.944637>,  <39.193150, 30.736012, 41.862392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205856, 30.961121, 41.944637>,  <39.227032, 31.336302, 42.081715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205856, 30.961121, 41.944637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265263, 0.317634, -0.910354,
		0.962721, -0.139099, 0.231989,
		-0.052942, -0.937955, -0.342692,
		39.189972, 30.679733, 41.841831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858589, 31.768688, 41.891018>,  <39.227032, 31.336302, 42.081715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858589, 31.768688, 41.891018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730240, 32.145615, 41.929138>,  <39.653229, 32.371769, 41.952011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.730240, 32.145615, 41.929138>,  <39.858589, 31.768688, 41.891018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730240, 32.145615, 41.929138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002192, -0.099883, 0.994997,
		0.947119, 0.319479, 0.029984,
		-0.320875, 0.942315, 0.095301,
		39.633976, 32.428310, 41.957729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217209, 32.095390, 42.320236>,  <39.858589, 31.768688, 41.891018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217209, 32.095390, 42.320236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873901, 32.300262, 42.333183>,  <39.667915, 32.423183, 42.340950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.873901, 32.300262, 42.333183>,  <40.217209, 32.095390, 42.320236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873901, 32.300262, 42.333183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007287, -0.075223, 0.997140,
		0.513146, 0.855580, 0.068294,
		-0.858270, 0.512177, 0.032366,
		39.616421, 32.453915, 42.342892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384254, 32.439850, 42.898998>,  <40.217209, 32.095390, 42.320236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384254, 32.439850, 42.898998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992722, 32.463646, 42.820663>,  <39.757801, 32.477924, 42.773663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992722, 32.463646, 42.820663>,  <40.384254, 32.439850, 42.898998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992722, 32.463646, 42.820663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194848, 0.021994, 0.980587,
		0.062645, 0.997987, -0.009936,
		-0.978831, 0.059493, -0.195833,
		39.699074, 32.481495, 42.761913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119385, 32.895859, 43.295208>,  <40.384254, 32.439850, 42.898998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119385, 32.895859, 43.295208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.781822, 32.701694, 43.203819>,  <39.579285, 32.585197, 43.148987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.781822, 32.701694, 43.203819>,  <40.119385, 32.895859, 43.295208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781822, 32.701694, 43.203819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322769, 0.119212, 0.938940,
		-0.428535, 0.866121, -0.257279,
		-0.843907, -0.485410, -0.228471,
		39.528648, 32.556072, 43.135277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489330, 33.250324, 43.493809>,  <40.119385, 32.895859, 43.295208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489330, 33.250324, 43.493809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392731, 32.862961, 43.468922>,  <39.334770, 32.630543, 43.453991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.392731, 32.862961, 43.468922>,  <39.489330, 33.250324, 43.493809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392731, 32.862961, 43.468922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327917, 0.021094, 0.944471,
		-0.913318, 0.248490, -0.322651,
		-0.241498, -0.968405, -0.062219,
		39.320282, 32.572441, 43.450256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757092, 33.172642, 43.808907>,  <39.489330, 33.250324, 43.493809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757092, 33.172642, 43.808907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945801, 32.820477, 43.828087>,  <39.059029, 32.609177, 43.839596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945801, 32.820477, 43.828087>,  <38.757092, 33.172642, 43.808907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945801, 32.820477, 43.828087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307671, -0.113420, 0.944709,
		-0.826297, -0.460442, -0.324386,
		0.471775, -0.880414, 0.047946,
		39.087334, 32.556351, 43.842472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276955, 32.741280, 44.078571>,  <38.757092, 33.172642, 43.808907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276955, 32.741280, 44.078571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.634735, 32.585964, 44.167282>,  <38.849403, 32.492775, 44.220509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.634735, 32.585964, 44.167282>,  <38.276955, 32.741280, 44.078571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634735, 32.585964, 44.167282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285944, -0.115359, 0.951277,
		-0.343784, -0.914290, -0.214212,
		0.894454, -0.388287, 0.221778,
		38.903072, 32.469479, 44.233814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123901, 32.396881, 44.581924>,  <38.276955, 32.741280, 44.078571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123901, 32.396881, 44.581924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.521095, 32.374378, 44.623516>,  <38.759411, 32.360878, 44.648472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.521095, 32.374378, 44.623516>,  <38.123901, 32.396881, 44.581924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521095, 32.374378, 44.623516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105906, -0.032367, 0.993849,
		-0.052545, -0.997891, -0.038097,
		0.992987, -0.056256, 0.103982,
		38.818993, 32.357502, 44.654709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226482, 31.848938, 45.127964>,  <38.123901, 32.396881, 44.581924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226482, 31.848938, 45.127964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569157, 32.054913, 45.115707>,  <38.774761, 32.178497, 45.108353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569157, 32.054913, 45.115707>,  <38.226482, 31.848938, 45.127964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569157, 32.054913, 45.115707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065727, -0.050046, 0.996582,
		0.511641, -0.855767, -0.076719,
		0.856681, 0.514935, -0.030641,
		38.826160, 32.209393, 45.106514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736217, 31.514175, 45.610779>,  <38.226482, 31.848938, 45.127964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736217, 31.514175, 45.610779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899757, 31.873716, 45.547653>,  <38.997883, 32.089439, 45.509777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899757, 31.873716, 45.547653>,  <38.736217, 31.514175, 45.610779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899757, 31.873716, 45.547653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174969, 0.092518, 0.980217,
		0.895670, -0.428378, -0.119445,
		0.408852, 0.898851, -0.157819,
		39.022411, 32.143372, 45.500309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408527, 31.527908, 45.927547>,  <38.736217, 31.514175, 45.610779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408527, 31.527908, 45.927547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328167, 31.919502, 45.913551>,  <39.279949, 32.154461, 45.905155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328167, 31.919502, 45.913551>,  <39.408527, 31.527908, 45.927547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328167, 31.919502, 45.913551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219396, 0.079776, 0.972369,
		0.954728, 0.187673, -0.230813,
		-0.200900, 0.978987, -0.034990,
		39.267899, 32.213200, 45.903053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009098, 31.913816, 46.244469>,  <39.408527, 31.527908, 45.927547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009098, 31.913816, 46.244469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.707897, 32.176888, 46.252945>,  <39.527176, 32.334728, 46.258030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.707897, 32.176888, 46.252945>,  <40.009098, 31.913816, 46.244469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707897, 32.176888, 46.252945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227906, 0.230462, 0.946016,
		0.617288, 0.717182, -0.323427,
		-0.753003, 0.657675, 0.021189,
		39.481995, 32.374191, 46.259300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264030, 32.373894, 46.731617>,  <40.009098, 31.913816, 46.244469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264030, 32.373894, 46.731617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.870964, 32.447571, 46.723251>,  <39.635124, 32.491776, 46.718231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.870964, 32.447571, 46.723251>,  <40.264030, 32.373894, 46.731617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870964, 32.447571, 46.723251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009828, 0.164434, 0.986339,
		0.185117, 0.969038, -0.163394,
		-0.982667, 0.184194, -0.020915,
		39.576164, 32.502831, 46.716976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113693, 33.052708, 47.093571>,  <40.264030, 32.373894, 46.731617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113693, 33.052708, 47.093571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780441, 32.831657, 47.102470>,  <39.580490, 32.699028, 47.107811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780441, 32.831657, 47.102470>,  <40.113693, 33.052708, 47.093571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780441, 32.831657, 47.102470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062139, 0.133504, 0.989098,
		-0.549575, 0.822665, -0.145566,
		-0.833130, -0.552629, 0.022251,
		39.530502, 32.665867, 47.109146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.411205, 33.509949, 46.357338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794394, 33.399246, 46.327145>,  <32.024307, 33.332825, 46.309029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794394, 33.399246, 46.327145>,  <31.411205, 33.509949, 46.357338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794394, 33.399246, 46.327145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015972, 0.314168, -0.949233,
		0.286424, 0.908131, 0.305384,
		0.957970, -0.276760, -0.075481,
		32.081783, 33.316219, 46.304501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797697, 34.047745, 46.052887>,  <31.411205, 33.509949, 46.357338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797697, 34.047745, 46.052887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.014786, 33.717487, 45.991222>,  <32.145039, 33.519333, 45.954224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.014786, 33.717487, 45.991222>,  <31.797697, 34.047745, 46.052887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014786, 33.717487, 45.991222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368455, 0.398981, -0.839675,
		0.754779, 0.398910, 0.520749,
		0.542723, -0.825642, -0.154163,
		32.177605, 33.469795, 45.944973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289841, 34.242905, 45.545017>,  <31.797697, 34.047745, 46.052887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289841, 34.242905, 45.545017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333229, 33.846569, 45.512856>,  <32.359264, 33.608768, 45.493557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.333229, 33.846569, 45.512856>,  <32.289841, 34.242905, 45.545017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333229, 33.846569, 45.512856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187961, 0.099870, -0.977086,
		0.976168, 0.090874, 0.197072,
		0.108473, -0.990842, -0.080409,
		32.365772, 33.549316, 45.488731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866001, 34.107563, 45.093929>,  <32.289841, 34.242905, 45.545017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866001, 34.107563, 45.093929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663204, 33.762939, 45.083458>,  <32.541527, 33.556168, 45.077175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663204, 33.762939, 45.083458>,  <32.866001, 34.107563, 45.093929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663204, 33.762939, 45.083458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187433, -0.080548, -0.978969,
		0.841327, -0.501233, 0.202321,
		-0.506989, -0.861555, -0.026180,
		32.511108, 33.504475, 45.075603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260082, 33.715668, 44.606625>,  <32.866001, 34.107563, 45.093929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260082, 33.715668, 44.606625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897591, 33.548119, 44.629570>,  <32.680096, 33.447590, 44.643337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897591, 33.548119, 44.629570>,  <33.260082, 33.715668, 44.606625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897591, 33.548119, 44.629570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027138, -0.077771, -0.996602,
		0.421911, -0.904708, 0.059111,
		-0.906231, -0.418874, 0.057365,
		32.625721, 33.422455, 44.646778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289288, 33.002434, 44.197243>,  <33.260082, 33.715668, 44.606625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289288, 33.002434, 44.197243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906620, 33.114613, 44.228577>,  <32.677021, 33.181919, 44.247375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.906620, 33.114613, 44.228577>,  <33.289288, 33.002434, 44.197243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906620, 33.114613, 44.228577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079948, 0.005703, -0.996783,
		-0.279990, -0.959853, 0.016965,
		-0.956668, 0.280446, 0.078335,
		32.619621, 33.198746, 44.252079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008408, 32.642574, 43.603470>,  <33.289288, 33.002434, 44.197243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008408, 32.642574, 43.603470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723976, 32.908417, 43.695259>,  <32.553318, 33.067924, 43.750332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723976, 32.908417, 43.695259>,  <33.008408, 32.642574, 43.603470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723976, 32.908417, 43.695259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221822, 0.097647, -0.970185,
		-0.667201, -0.740784, 0.077990,
		-0.711082, 0.664609, 0.229473,
		32.510651, 33.107800, 43.764099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337132, 32.478699, 43.240601>,  <33.008408, 32.642574, 43.603470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337132, 32.478699, 43.240601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356003, 32.872627, 43.307404>,  <32.367325, 33.108986, 43.347485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.356003, 32.872627, 43.307404>,  <32.337132, 32.478699, 43.240601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356003, 32.872627, 43.307404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376877, 0.172389, -0.910080,
		-0.925061, -0.020010, 0.379291,
		0.047175, 0.984826, 0.167011,
		32.370155, 33.168076, 43.357506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760920, 32.849575, 42.911831>,  <32.337132, 32.478699, 43.240601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760920, 32.849575, 42.911831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006115, 33.157600, 42.982540>,  <32.153233, 33.342415, 43.024967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006115, 33.157600, 42.982540>,  <31.760920, 32.849575, 42.911831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006115, 33.157600, 42.982540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126840, 0.316748, -0.939991,
		-0.779843, 0.553783, 0.291838,
		0.612990, 0.770062, 0.176772,
		32.190010, 33.388618, 43.035572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556009, 33.271416, 42.432899>,  <31.760920, 32.849575, 42.911831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556009, 33.271416, 42.432899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892803, 33.445267, 42.560749>,  <32.094879, 33.549576, 42.637459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.892803, 33.445267, 42.560749>,  <31.556009, 33.271416, 42.432899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892803, 33.445267, 42.560749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039431, 0.541287, -0.839913,
		-0.538055, 0.719799, 0.438619,
		0.841987, 0.434624, 0.319624,
		32.145401, 33.575653, 42.656635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494690, 33.979912, 42.273113>,  <31.556009, 33.271416, 42.432899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494690, 33.979912, 42.273113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879467, 33.874252, 42.301090>,  <32.110332, 33.810856, 42.317879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.879467, 33.874252, 42.301090>,  <31.494690, 33.979912, 42.273113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879467, 33.874252, 42.301090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147426, 0.286174, -0.946768,
		0.230075, 0.921047, 0.314225,
		0.961941, -0.264152, 0.069945,
		32.168049, 33.795006, 42.322075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868223, 34.567860, 41.958824>,  <31.494690, 33.979912, 42.273113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868223, 34.567860, 41.958824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159336, 34.293987, 41.943130>,  <32.334003, 34.129662, 41.933712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.159336, 34.293987, 41.943130>,  <31.868223, 34.567860, 41.958824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159336, 34.293987, 41.943130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076095, 0.137479, -0.987577,
		0.681573, 0.715756, 0.152156,
		0.727782, -0.684685, -0.039237,
		32.377670, 34.088581, 41.931358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540901, 34.821003, 41.766636>,  <31.868223, 34.567860, 41.958824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540901, 34.821003, 41.766636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.562412, 34.431637, 41.677574>,  <32.575317, 34.198017, 41.624138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.562412, 34.431637, 41.677574>,  <32.540901, 34.821003, 41.766636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562412, 34.431637, 41.677574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186065, 0.228841, -0.955516,
		0.981064, 0.009957, 0.193424,
		0.053778, -0.973413, -0.222656,
		32.578545, 34.139614, 41.610779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161728, 34.821518, 41.212666>,  <32.540901, 34.821003, 41.766636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161728, 34.821518, 41.212666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997219, 34.462994, 41.146358>,  <32.898514, 34.247879, 41.106575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997219, 34.462994, 41.146358>,  <33.161728, 34.821518, 41.212666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997219, 34.462994, 41.146358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067876, 0.151244, -0.986163,
		0.908981, -0.416836, -0.001365,
		-0.411275, -0.896311, -0.165772,
		32.873837, 34.194099, 41.096626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882549, 34.509941, 41.318878>,  <33.161728, 34.821518, 41.212666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882549, 34.509941, 41.318878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180679, 34.774235, 41.354458>,  <34.359558, 34.932812, 41.375805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180679, 34.774235, 41.354458>,  <33.882549, 34.509941, 41.318878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180679, 34.774235, 41.354458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099687, -0.242368, 0.965049,
		0.659203, -0.710411, -0.246510,
		0.745328, 0.660737, 0.088951,
		34.404278, 34.972454, 41.381142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383545, 34.126793, 41.704407>,  <33.882549, 34.509941, 41.318878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383545, 34.126793, 41.704407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476639, 34.511688, 41.760872>,  <34.532497, 34.742626, 41.794750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476639, 34.511688, 41.760872>,  <34.383545, 34.126793, 41.704407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476639, 34.511688, 41.760872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221194, -0.193717, 0.955797,
		0.947052, -0.191225, -0.257927,
		0.232737, 0.962241, 0.141162,
		34.546459, 34.800362, 41.803219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978367, 34.150311, 42.130302>,  <34.383545, 34.126793, 41.704407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978367, 34.150311, 42.130302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.812664, 34.511189, 42.178375>,  <34.713242, 34.727715, 42.207218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.812664, 34.511189, 42.178375>,  <34.978367, 34.150311, 42.130302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812664, 34.511189, 42.178375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073468, -0.098468, 0.992424,
		0.907191, 0.419946, -0.025492,
		-0.414255, 0.902191, 0.120182,
		34.688389, 34.781845, 42.214432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436268, 34.449791, 42.565197>,  <34.978367, 34.150311, 42.130302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436268, 34.449791, 42.565197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.129459, 34.705299, 42.589367>,  <34.945374, 34.858604, 42.603867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.129459, 34.705299, 42.589367>,  <35.436268, 34.449791, 42.565197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129459, 34.705299, 42.589367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003380, -0.098192, 0.995162,
		0.641616, 0.763104, 0.077475,
		-0.767019, 0.638773, 0.060422,
		34.899353, 34.896931, 42.607494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749611, 34.923302, 43.044632>,  <35.436268, 34.449791, 42.565197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749611, 34.923302, 43.044632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355396, 34.991096, 43.044853>,  <35.118870, 35.031773, 43.044987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355396, 34.991096, 43.044853>,  <35.749611, 34.923302, 43.044632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355396, 34.991096, 43.044853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022923, 0.130051, 0.991242,
		0.167927, 0.976915, -0.132054,
		-0.985533, 0.169483, 0.000555,
		35.059738, 35.041943, 43.045021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608204, 35.529881, 43.466179>,  <35.749611, 34.923302, 43.044632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608204, 35.529881, 43.466179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262928, 35.327957, 43.462887>,  <35.055763, 35.206802, 43.460911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262928, 35.327957, 43.462887>,  <35.608204, 35.529881, 43.466179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262928, 35.327957, 43.462887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049536, 0.068453, 0.996424,
		-0.502437, 0.860515, -0.084094,
		-0.863194, -0.504805, -0.008234,
		35.003971, 35.176514, 43.460415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082191, 35.929165, 43.834991>,  <35.608204, 35.529881, 43.466179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082191, 35.929165, 43.834991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.926983, 35.560524, 43.831219>,  <34.833858, 35.339340, 43.828957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.926983, 35.560524, 43.831219>,  <35.082191, 35.929165, 43.834991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926983, 35.560524, 43.831219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165974, 0.059808, 0.984315,
		-0.906584, 0.383497, -0.176169,
		-0.388018, -0.921603, -0.009429,
		34.810577, 35.284042, 43.828388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362965, 35.916561, 44.063694>,  <35.082191, 35.929165, 43.834991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362965, 35.916561, 44.063694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528427, 35.559170, 44.133648>,  <34.627705, 35.344734, 44.175621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528427, 35.559170, 44.133648>,  <34.362965, 35.916561, 44.063694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528427, 35.559170, 44.133648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242624, 0.076955, 0.967063,
		-0.877507, -0.442466, -0.184946,
		0.413660, -0.893477, 0.174881,
		34.652527, 35.291126, 44.186111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054890, 35.674274, 44.678986>,  <34.362965, 35.916561, 44.063694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054890, 35.674274, 44.678986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.342556, 35.400429, 44.631489>,  <34.515156, 35.236122, 44.602989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.342556, 35.400429, 44.631489>,  <34.054890, 35.674274, 44.678986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342556, 35.400429, 44.631489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032921, -0.204275, 0.978360,
		-0.694058, -0.699694, -0.169446,
		0.719166, -0.684617, -0.118744,
		34.558308, 35.195045, 44.595867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845863, 35.102249, 45.065174>,  <34.054890, 35.674274, 44.678986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845863, 35.102249, 45.065174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.242725, 35.076946, 45.022057>,  <34.480843, 35.061764, 44.996185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.242725, 35.076946, 45.022057>,  <33.845863, 35.102249, 45.065174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242725, 35.076946, 45.022057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083331, -0.307995, 0.947732,
		-0.093154, -0.949282, -0.300308,
		0.992158, -0.063260, -0.107796,
		34.540375, 35.057968, 44.989719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103188, 34.357166, 45.178268>,  <33.845863, 35.102249, 45.065174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103188, 34.357166, 45.178268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405136, 34.610100, 45.247932>,  <34.586304, 34.761860, 45.289730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405136, 34.610100, 45.247932>,  <34.103188, 34.357166, 45.178268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405136, 34.610100, 45.247932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091869, -0.364857, 0.926520,
		0.649412, -0.683400, -0.333510,
		0.754867, 0.632333, 0.174159,
		34.631596, 34.799801, 45.300179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556538, 33.977448, 45.652679>,  <34.103188, 34.357166, 45.178268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556538, 33.977448, 45.652679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.682312, 34.356750, 45.670319>,  <34.757774, 34.584332, 45.680901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.682312, 34.356750, 45.670319>,  <34.556538, 33.977448, 45.652679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682312, 34.356750, 45.670319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261896, -0.131304, 0.956122,
		0.912438, -0.289086, -0.289630,
		0.314431, 0.948255, 0.044096,
		34.776642, 34.641228, 45.683548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289444, 33.975803, 45.780170>,  <34.556538, 33.977448, 45.652679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289444, 33.975803, 45.780170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.133072, 34.321468, 45.906910>,  <35.039249, 34.528866, 45.982956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.133072, 34.321468, 45.906910>,  <35.289444, 33.975803, 45.780170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133072, 34.321468, 45.906910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214294, -0.249332, 0.944411,
		0.895126, 0.437100, -0.087712,
		-0.390933, 0.864162, 0.316852,
		35.015793, 34.580719, 46.001965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657761, 34.140503, 46.392017>,  <35.289444, 33.975803, 45.780170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657761, 34.140503, 46.392017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342484, 34.380955, 46.444778>,  <35.153316, 34.525227, 46.476433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342484, 34.380955, 46.444778>,  <35.657761, 34.140503, 46.392017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342484, 34.380955, 46.444778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124423, -0.054250, 0.990745,
		0.602721, 0.797308, -0.032035,
		-0.788191, 0.601129, 0.131901,
		35.106026, 34.561295, 46.484348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053112, 34.768818, 46.256580>,  <35.657761, 34.140503, 46.392017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053112, 34.768818, 46.256580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448879, 34.819553, 46.284756>,  <36.686340, 34.849995, 46.301662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448879, 34.819553, 46.284756>,  <36.053112, 34.768818, 46.256580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448879, 34.819553, 46.284756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006019, 0.520951, -0.853565,
		-0.144963, 0.844110, 0.516202,
		0.989419, 0.126842, 0.070437,
		36.745705, 34.857605, 46.305885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152977, 35.399002, 46.017860>,  <36.053112, 34.768818, 46.256580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152977, 35.399002, 46.017860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.525860, 35.256943, 45.990009>,  <36.749592, 35.171707, 45.973297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.525860, 35.256943, 45.990009>,  <36.152977, 35.399002, 46.017860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525860, 35.256943, 45.990009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158412, 0.573393, -0.803820,
		0.325403, 0.738300, 0.590784,
		0.932212, -0.355153, -0.069628,
		36.805523, 35.150398, 45.969120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643692, 36.065044, 46.032906>,  <36.152977, 35.399002, 46.017860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643692, 36.065044, 46.032906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839912, 35.746941, 45.890400>,  <36.957645, 35.556080, 45.804897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839912, 35.746941, 45.890400>,  <36.643692, 36.065044, 46.032906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839912, 35.746941, 45.890400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319702, 0.544570, -0.775393,
		0.810649, 0.266471, 0.521385,
		0.490550, -0.795259, -0.356264,
		36.987076, 35.508362, 45.783520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241657, 36.317818, 45.690105>,  <36.643692, 36.065044, 46.032906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241657, 36.317818, 45.690105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.234123, 35.948769, 45.536007>,  <37.229603, 35.727341, 45.443546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.234123, 35.948769, 45.536007>,  <37.241657, 36.317818, 45.690105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234123, 35.948769, 45.536007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553606, 0.311232, -0.772435,
		0.832566, -0.227826, 0.504906,
		-0.018838, -0.922621, -0.385247,
		37.228470, 35.671982, 45.420433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985500, 36.140427, 45.517128>,  <37.241657, 36.317818, 45.690105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985500, 36.140427, 45.517128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739132, 35.897274, 45.316681>,  <37.591312, 35.751381, 45.196411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.739132, 35.897274, 45.316681>,  <37.985500, 36.140427, 45.517128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739132, 35.897274, 45.316681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390751, 0.316615, -0.864331,
		0.684076, -0.728170, 0.042523,
		-0.615917, -0.607884, -0.501122,
		37.554356, 35.714909, 45.166344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408684, 35.916031, 44.992504>,  <37.985500, 36.140427, 45.517128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408684, 35.916031, 44.992504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.032158, 35.845627, 44.877296>,  <37.806244, 35.803383, 44.808174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.032158, 35.845627, 44.877296>,  <38.408684, 35.916031, 44.992504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032158, 35.845627, 44.877296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282526, 0.056048, -0.957621,
		0.184695, -0.982791, -0.003031,
		-0.941311, -0.176011, -0.288016,
		37.749763, 35.792824, 44.790890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421837, 35.369411, 44.535149>,  <38.408684, 35.916031, 44.992504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421837, 35.369411, 44.535149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.070965, 35.541458, 44.449772>,  <37.860443, 35.644688, 44.398548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.070965, 35.541458, 44.449772>,  <38.421837, 35.369411, 44.535149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070965, 35.541458, 44.449772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230851, -0.011997, -0.972915,
		-0.421027, -0.902694, -0.088769,
		-0.877180, 0.430116, -0.213439,
		37.807812, 35.670494, 44.385738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084583, 34.952644, 43.980732>,  <38.421837, 35.369411, 44.535149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084583, 34.952644, 43.980732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923294, 35.318264, 43.963181>,  <37.826519, 35.537636, 43.952648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.923294, 35.318264, 43.963181>,  <38.084583, 34.952644, 43.980732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923294, 35.318264, 43.963181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323147, 0.097362, -0.941327,
		-0.856146, -0.393746, -0.334631,
		-0.403224, 0.914048, -0.043882,
		37.802326, 35.592480, 43.950016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657444, 34.982399, 43.388378>,  <38.084583, 34.952644, 43.980732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657444, 34.982399, 43.388378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709358, 35.374329, 43.449184>,  <37.740505, 35.609486, 43.485668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.709358, 35.374329, 43.449184>,  <37.657444, 34.982399, 43.388378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709358, 35.374329, 43.449184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157013, 0.131069, -0.978860,
		-0.979032, 0.150906, -0.136834,
		0.129781, 0.979821, 0.152015,
		37.748291, 35.668274, 43.494789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154564, 35.444725, 43.034428>,  <37.657444, 34.982399, 43.388378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154564, 35.444725, 43.034428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456421, 35.702614, 43.083183>,  <37.637535, 35.857346, 43.112438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456421, 35.702614, 43.083183>,  <37.154564, 35.444725, 43.034428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456421, 35.702614, 43.083183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126362, 0.325095, -0.937201,
		-0.643858, 0.691845, 0.326797,
		0.754638, 0.644719, 0.121892,
		37.682812, 35.896030, 43.119751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884441, 35.934406, 42.681339>,  <37.154564, 35.444725, 43.034428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884441, 35.934406, 42.681339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.275585, 36.007599, 42.721935>,  <37.510273, 36.051514, 42.746292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.275585, 36.007599, 42.721935>,  <36.884441, 35.934406, 42.681339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275585, 36.007599, 42.721935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030544, 0.355000, -0.934367,
		-0.206999, 0.916784, 0.341553,
		0.977864, 0.182981, 0.101487,
		37.568943, 36.062492, 42.752380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016216, 36.438175, 42.239269>,  <36.884441, 35.934406, 42.681339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016216, 36.438175, 42.239269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.406399, 36.361591, 42.282764>,  <37.640511, 36.315643, 42.308861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.406399, 36.361591, 42.282764>,  <37.016216, 36.438175, 42.239269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406399, 36.361591, 42.282764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189753, 0.480500, -0.856220,
		0.111682, 0.855841, 0.505038,
		0.975459, -0.191457, 0.108735,
		37.699036, 36.304153, 42.315384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478954, 37.116177, 42.079884>,  <37.016216, 36.438175, 42.239269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478954, 37.116177, 42.079884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683319, 36.777912, 42.018147>,  <37.805939, 36.574951, 41.981102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.683319, 36.777912, 42.018147>,  <37.478954, 37.116177, 42.079884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683319, 36.777912, 42.018147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371504, 0.379128, -0.847494,
		0.775212, 0.375655, 0.507869,
		0.510912, -0.845663, -0.154347,
		37.836594, 36.524212, 41.971844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049351, 37.285908, 41.807774>,  <37.478954, 37.116177, 42.079884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049351, 37.285908, 41.807774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.039440, 36.903255, 41.691681>,  <38.033493, 36.673664, 41.622025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.039440, 36.903255, 41.691681>,  <38.049351, 37.285908, 41.807774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039440, 36.903255, 41.691681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194454, 0.280168, -0.940050,
		0.980599, -0.079727, 0.179081,
		-0.024775, -0.956634, -0.290236,
		38.032009, 36.616264, 41.604610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.587215, 36.885826, 26.944551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.747929, 36.534615, 27.048586>,  <26.844357, 36.323887, 27.111006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.747929, 36.534615, 27.048586>,  <26.587215, 36.885826, 26.944551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747929, 36.534615, 27.048586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155747, 0.214359, 0.964258,
		-0.902393, -0.427929, -0.050624,
		0.401782, -0.878024, 0.260085,
		26.868464, 36.271206, 27.126612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150166, 36.640900, 27.485058>,  <26.587215, 36.885826, 26.944551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150166, 36.640900, 27.485058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489704, 36.435738, 27.536255>,  <26.693428, 36.312641, 27.566973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489704, 36.435738, 27.536255>,  <26.150166, 36.640900, 27.485058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489704, 36.435738, 27.536255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122153, 0.045259, 0.991479,
		-0.514329, -0.857250, -0.024235,
		0.848849, -0.512907, 0.127994,
		26.744358, 36.281864, 27.574654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982008, 36.049488, 27.984493>,  <26.150166, 36.640900, 27.485058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982008, 36.049488, 27.984493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379248, 36.096325, 27.981915>,  <26.617592, 36.124428, 27.980368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379248, 36.096325, 27.981915>,  <25.982008, 36.049488, 27.984493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379248, 36.096325, 27.981915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034360, -0.237963, 0.970667,
		0.112127, -0.964190, -0.240344,
		0.993100, 0.117096, -0.006448,
		26.677177, 36.131454, 27.979980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254265, 35.488636, 28.430414>,  <25.982008, 36.049488, 27.984493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254265, 35.488636, 28.430414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527502, 35.780643, 28.421858>,  <26.691444, 35.955849, 28.416725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527502, 35.780643, 28.421858>,  <26.254265, 35.488636, 28.430414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527502, 35.780643, 28.421858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069619, -0.035935, 0.996926,
		0.727005, -0.682483, -0.075371,
		0.683093, 0.730018, -0.021389,
		26.732430, 35.999649, 28.415442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770061, 35.190681, 28.804073>,  <26.254265, 35.488636, 28.430414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770061, 35.190681, 28.804073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839285, 35.584633, 28.800661>,  <26.880819, 35.821003, 28.798615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839285, 35.584633, 28.800661>,  <26.770061, 35.190681, 28.804073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839285, 35.584633, 28.800661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283447, -0.041510, 0.958089,
		0.943244, -0.168223, -0.286344,
		0.173059, 0.984875, -0.008528,
		26.891203, 35.880096, 28.798103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440420, 35.246471, 29.241486>,  <26.770061, 35.190681, 28.804073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440420, 35.246471, 29.241486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326538, 35.629025, 29.215315>,  <27.258209, 35.858555, 29.199614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.326538, 35.629025, 29.215315>,  <27.440420, 35.246471, 29.241486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326538, 35.629025, 29.215315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366422, 0.171639, 0.914481,
		0.885821, 0.236383, -0.399305,
		-0.284704, 0.956380, -0.065425,
		27.241127, 35.915939, 29.195688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944408, 35.552502, 29.586174>,  <27.440420, 35.246471, 29.241486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944408, 35.552502, 29.586174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641968, 35.814030, 29.574680>,  <27.460503, 35.970947, 29.567785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641968, 35.814030, 29.574680>,  <27.944408, 35.552502, 29.586174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641968, 35.814030, 29.574680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272833, 0.354811, 0.894243,
		0.594872, 0.668299, -0.446658,
		-0.756101, 0.653824, -0.028733,
		27.415138, 36.010178, 29.566061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205204, 36.199997, 29.754595>,  <27.944408, 35.552502, 29.586174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205204, 36.199997, 29.754595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814068, 36.229458, 29.832985>,  <27.579386, 36.247135, 29.880018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814068, 36.229458, 29.832985>,  <28.205204, 36.199997, 29.754595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814068, 36.229458, 29.832985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208213, 0.439764, 0.873644,
		-0.021838, 0.895088, -0.445354,
		-0.977840, 0.073650, 0.195973,
		27.520716, 36.251553, 29.891777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133484, 36.809071, 30.155699>,  <28.205204, 36.199997, 29.754595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133484, 36.809071, 30.155699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.792534, 36.628616, 30.261480>,  <27.587965, 36.520344, 30.324949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.792534, 36.628616, 30.261480>,  <28.133484, 36.809071, 30.155699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792534, 36.628616, 30.261480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153827, 0.267027, 0.951333,
		-0.499798, 0.851570, -0.158209,
		-0.852373, -0.451137, 0.264453,
		27.536821, 36.493275, 30.340816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800213, 37.286152, 30.640604>,  <28.133484, 36.809071, 30.155699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800213, 37.286152, 30.640604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651579, 36.922874, 30.717661>,  <27.562399, 36.704910, 30.763895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651579, 36.922874, 30.717661>,  <27.800213, 37.286152, 30.640604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651579, 36.922874, 30.717661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142241, 0.149357, 0.978499,
		-0.917437, 0.390999, 0.073683,
		-0.371587, -0.908192, 0.192642,
		27.540102, 36.650417, 30.775454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.330547, 37.416981, 31.217007>,  <27.800213, 37.286152, 30.640604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.330547, 37.416981, 31.217007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395441, 37.022667, 31.199554>,  <27.434378, 36.786079, 31.189083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395441, 37.022667, 31.199554>,  <27.330547, 37.416981, 31.217007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395441, 37.022667, 31.199554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355673, 0.017174, 0.934452,
		-0.920422, -0.167117, 0.353405,
		0.162233, -0.985788, -0.043632,
		27.444111, 36.726933, 31.186464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016279, 37.205975, 31.828115>,  <27.330547, 37.416981, 31.217007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016279, 37.205975, 31.828115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.250069, 36.902611, 31.712736>,  <27.390343, 36.720592, 31.643509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.250069, 36.902611, 31.712736>,  <27.016279, 37.205975, 31.828115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250069, 36.902611, 31.712736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284900, -0.141040, 0.948124,
		-0.759751, -0.636333, 0.133638,
		0.584474, -0.758412, -0.288447,
		27.425411, 36.675087, 31.626202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881502, 36.735863, 32.253551>,  <27.016279, 37.205975, 31.828115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881502, 36.735863, 32.253551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238264, 36.644436, 32.097469>,  <27.452322, 36.589581, 32.003822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238264, 36.644436, 32.097469>,  <26.881502, 36.735863, 32.253551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238264, 36.644436, 32.097469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334025, -0.248682, 0.909167,
		-0.304847, -0.941229, -0.145452,
		0.891906, -0.228572, -0.390204,
		27.505836, 36.575867, 31.980408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089586, 36.009674, 32.429550>,  <26.881502, 36.735863, 32.253551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089586, 36.009674, 32.429550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.447237, 36.174725, 32.359951>,  <27.661827, 36.273754, 32.318192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.447237, 36.174725, 32.359951>,  <27.089586, 36.009674, 32.429550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447237, 36.174725, 32.359951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291766, -0.242026, 0.925363,
		0.339716, -0.878159, -0.336792,
		0.894128, 0.412625, -0.173997,
		27.715475, 36.298512, 32.307751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622017, 35.601086, 32.866089>,  <27.089586, 36.009674, 32.429550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622017, 35.601086, 32.866089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.852459, 35.919586, 32.792240>,  <27.990725, 36.110687, 32.747932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.852459, 35.919586, 32.792240>,  <27.622017, 35.601086, 32.866089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852459, 35.919586, 32.792240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413410, -0.089001, 0.906185,
		0.705119, -0.598383, -0.380453,
		0.576107, 0.796251, -0.184621,
		28.025291, 36.158463, 32.736855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319565, 35.408028, 33.075848>,  <27.622017, 35.601086, 32.866089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319565, 35.408028, 33.075848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.283951, 35.806046, 33.058117>,  <28.262583, 36.044857, 33.047478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.283951, 35.806046, 33.058117>,  <28.319565, 35.408028, 33.075848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283951, 35.806046, 33.058117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345680, 0.072607, 0.935539,
		0.934119, 0.067973, -0.350430,
		-0.089035, 0.995042, -0.044327,
		28.257240, 36.104557, 33.044819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904327, 35.553619, 33.478455>,  <28.319565, 35.408028, 33.075848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904327, 35.553619, 33.478455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.680458, 35.884983, 33.469482>,  <28.546137, 36.083801, 33.464100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.680458, 35.884983, 33.469482>,  <28.904327, 35.553619, 33.478455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680458, 35.884983, 33.469482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201698, 0.162425, 0.965886,
		0.803793, 0.536056, -0.257993,
		-0.559674, 0.828409, -0.022434,
		28.512556, 36.133507, 33.462753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388212, 36.080341, 33.830704>,  <28.904327, 35.553619, 33.478455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388212, 36.080341, 33.830704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013315, 36.218319, 33.851067>,  <28.788378, 36.301105, 33.863285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.013315, 36.218319, 33.851067>,  <29.388212, 36.080341, 33.830704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.013315, 36.218319, 33.851067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155145, 0.281799, 0.946847,
		0.312264, 0.895322, -0.317631,
		-0.937241, 0.344945, 0.050909,
		28.732143, 36.321804, 33.866341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092480, 36.385822, 33.936440>,  <29.388212, 36.080341, 33.830704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092480, 36.385822, 33.936440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393591, 36.142994, 34.038254>,  <30.574257, 35.997295, 34.099342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393591, 36.142994, 34.038254>,  <30.092480, 36.385822, 33.936440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393591, 36.142994, 34.038254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185681, -0.175154, -0.966873,
		0.631547, 0.775102, -0.019130,
		0.752776, -0.607074, 0.254540,
		30.619423, 35.960873, 34.114616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793287, 36.636036, 33.778751>,  <30.092480, 36.385822, 33.936440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793287, 36.636036, 33.778751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739178, 36.243969, 33.720814>,  <30.706713, 36.008728, 33.686050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.739178, 36.243969, 33.720814>,  <30.793287, 36.636036, 33.778751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739178, 36.243969, 33.720814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187072, 0.118294, -0.975198,
		0.972988, -0.159014, 0.167359,
		-0.135273, -0.980164, -0.144846,
		30.698595, 35.949921, 33.677361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391470, 36.390533, 33.314949>,  <30.793287, 36.636036, 33.778751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391470, 36.390533, 33.314949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.100594, 36.117844, 33.282841>,  <30.926067, 35.954231, 33.263577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.100594, 36.117844, 33.282841>,  <31.391470, 36.390533, 33.314949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100594, 36.117844, 33.282841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147277, -0.040732, -0.988256,
		0.670449, -0.730475, 0.130022,
		-0.727192, -0.681724, -0.080274,
		30.882437, 35.913326, 33.258759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641640, 35.976719, 32.759445>,  <31.391470, 36.390533, 33.314949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641640, 35.976719, 32.759445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.257698, 35.865376, 32.773296>,  <31.027332, 35.798569, 32.781609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.257698, 35.865376, 32.773296>,  <31.641640, 35.976719, 32.759445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257698, 35.865376, 32.773296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007996, -0.150558, -0.988569,
		0.280386, -0.948605, 0.146739,
		-0.959854, -0.278354, 0.034629,
		30.969742, 35.781868, 32.783684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640795, 35.482796, 32.266907>,  <31.641640, 35.976719, 32.759445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640795, 35.482796, 32.266907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.267550, 35.611923, 32.330269>,  <31.043602, 35.689400, 32.368286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.267550, 35.611923, 32.330269>,  <31.640795, 35.482796, 32.266907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267550, 35.611923, 32.330269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115519, 0.148044, -0.982211,
		-0.340526, -0.934811, -0.100850,
		-0.933112, 0.322818, 0.158401,
		30.987616, 35.708767, 32.377789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157812, 35.182358, 31.707996>,  <31.640795, 35.482796, 32.266907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157812, 35.182358, 31.707996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993279, 35.507149, 31.873646>,  <30.894558, 35.702023, 31.973036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993279, 35.507149, 31.873646>,  <31.157812, 35.182358, 31.707996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993279, 35.507149, 31.873646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197272, 0.364263, -0.910162,
		-0.889881, -0.456075, 0.010347,
		-0.411333, 0.811978, 0.414122,
		30.869879, 35.750744, 31.997883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518284, 35.174438, 31.319523>,  <31.157812, 35.182358, 31.707996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518284, 35.174438, 31.319523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.538036, 35.552151, 31.449694>,  <30.549889, 35.778778, 31.527796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.538036, 35.552151, 31.449694>,  <30.518284, 35.174438, 31.319523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538036, 35.552151, 31.449694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117344, 0.329051, -0.936993,
		-0.991863, 0.008084, 0.127054,
		0.049382, 0.944278, 0.325425,
		30.552851, 35.835434, 31.547321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798264, 35.550396, 31.128363>,  <30.518284, 35.174438, 31.319523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798264, 35.550396, 31.128363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108652, 35.799637, 31.167570>,  <30.294886, 35.949181, 31.191095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108652, 35.799637, 31.167570>,  <29.798264, 35.550396, 31.128363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108652, 35.799637, 31.167570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125573, 0.304890, -0.944073,
		-0.618140, 0.720267, 0.314831,
		0.775973, 0.623104, 0.098018,
		30.341444, 35.986568, 31.196976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.490379, 36.233532, 30.833889>,  <29.798264, 35.550396, 31.128363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.490379, 36.233532, 30.833889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.889000, 36.266254, 30.828356>,  <30.128172, 36.285889, 30.825037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.889000, 36.266254, 30.828356>,  <29.490379, 36.233532, 30.833889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889000, 36.266254, 30.828356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052696, 0.495326, -0.867108,
		-0.064084, 0.864847, 0.497929,
		0.996552, 0.081806, -0.013832,
		30.187965, 36.290794, 30.824205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617760, 36.949394, 30.607101>,  <29.490379, 36.233532, 30.833889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617760, 36.949394, 30.607101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.952225, 36.736683, 30.553377>,  <30.152905, 36.609055, 30.521143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.952225, 36.736683, 30.553377>,  <29.617760, 36.949394, 30.607101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952225, 36.736683, 30.553377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176922, 0.493297, -0.851679,
		0.519162, 0.688380, 0.506561,
		0.836163, -0.531781, -0.134312,
		30.203074, 36.577148, 30.513084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045729, 37.534634, 30.330536>,  <29.617760, 36.949394, 30.607101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045729, 37.534634, 30.330536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235456, 37.190197, 30.257277>,  <30.349293, 36.983536, 30.213322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.235456, 37.190197, 30.257277>,  <30.045729, 37.534634, 30.330536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235456, 37.190197, 30.257277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392216, 0.392945, -0.831721,
		0.788155, 0.322667, 0.524115,
		0.474318, -0.861092, -0.183147,
		30.377752, 36.931870, 30.202333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661341, 37.745628, 30.044353>,  <30.045729, 37.534634, 30.330536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661341, 37.745628, 30.044353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587584, 37.364899, 29.946356>,  <30.543329, 37.136459, 29.887556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.587584, 37.364899, 29.946356>,  <30.661341, 37.745628, 30.044353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587584, 37.364899, 29.946356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306967, 0.181029, -0.934344,
		0.933687, -0.247492, 0.258800,
		-0.184392, -0.951828, -0.244996,
		30.532267, 37.079350, 29.872856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266768, 37.736366, 29.539711>,  <30.661341, 37.745628, 30.044353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266768, 37.736366, 29.539711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.032555, 37.417202, 29.482460>,  <30.892027, 37.225704, 29.448111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.032555, 37.417202, 29.482460>,  <31.266768, 37.736366, 29.539711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032555, 37.417202, 29.482460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062241, 0.131785, -0.989322,
		0.808257, -0.588187, -0.027501,
		-0.585531, -0.797915, -0.143126,
		30.856895, 37.177826, 29.439522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610264, 37.310333, 29.007368>,  <31.266768, 37.736366, 29.539711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610264, 37.310333, 29.007368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.215519, 37.249710, 28.984989>,  <30.978672, 37.213337, 28.971561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.215519, 37.249710, 28.984989>,  <31.610264, 37.310333, 29.007368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215519, 37.249710, 28.984989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022230, 0.215617, -0.976225,
		0.160012, -0.964646, -0.209416,
		-0.986865, -0.151552, -0.055945,
		30.919460, 37.204243, 28.968204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465811, 36.987812, 28.388971>,  <31.610264, 37.310333, 29.007368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465811, 36.987812, 28.388971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.100519, 37.114544, 28.491451>,  <30.881344, 37.190582, 28.552940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.100519, 37.114544, 28.491451>,  <31.465811, 36.987812, 28.388971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100519, 37.114544, 28.491451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190064, 0.224945, -0.955655,
		-0.360407, -0.921424, -0.145208,
		-0.913226, 0.316826, 0.256201,
		30.826551, 37.209591, 28.568312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068365, 36.615635, 27.972673>,  <31.465811, 36.987812, 28.388971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068365, 36.615635, 27.972673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.838791, 36.925587, 28.078625>,  <30.701046, 37.111557, 28.142195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.838791, 36.925587, 28.078625>,  <31.068365, 36.615635, 27.972673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838791, 36.925587, 28.078625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250404, 0.141898, -0.957686,
		-0.779675, -0.615978, 0.112592,
		-0.573937, 0.774878, 0.264878,
		30.666609, 37.158051, 28.158089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499899, 36.646587, 27.537285>,  <31.068365, 36.615635, 27.972673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499899, 36.646587, 27.537285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488144, 37.025494, 27.664925>,  <30.481091, 37.252838, 27.741508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.488144, 37.025494, 27.664925>,  <30.499899, 36.646587, 27.537285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488144, 37.025494, 27.664925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472971, 0.268059, -0.839311,
		-0.880588, -0.175589, 0.440152,
		-0.029387, 0.947266, 0.319098,
		30.479328, 37.309673, 27.760654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824768, 36.809834, 27.363935>,  <30.499899, 36.646587, 27.537285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824768, 36.809834, 27.363935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.039150, 37.144039, 27.412386>,  <30.167780, 37.344563, 27.441456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.039150, 37.144039, 27.412386>,  <29.824768, 36.809834, 27.363935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039150, 37.144039, 27.412386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316748, 0.331993, -0.888511,
		-0.782574, 0.437836, 0.442581,
		0.535956, 0.835512, 0.121125,
		30.199938, 37.394691, 27.448723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467533, 37.361214, 27.350979>,  <29.824768, 36.809834, 27.363935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467533, 37.361214, 27.350979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.802835, 37.551800, 27.244913>,  <30.004017, 37.666149, 27.181274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.802835, 37.551800, 27.244913>,  <29.467533, 37.361214, 27.350979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802835, 37.551800, 27.244913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428097, 0.273866, -0.861238,
		-0.337727, 0.835453, 0.433542,
		0.838256, 0.476461, -0.265163,
		30.054312, 37.694736, 27.165363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307808, 38.104122, 27.149744>,  <29.467533, 37.361214, 27.350979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307808, 38.104122, 27.149744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666540, 38.035378, 26.986692>,  <29.881779, 37.994133, 26.888861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666540, 38.035378, 26.986692>,  <29.307808, 38.104122, 27.149744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666540, 38.035378, 26.986692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260793, 0.538906, -0.800979,
		0.357330, 0.824648, 0.438487,
		0.896829, -0.171860, -0.407629,
		29.935589, 37.983818, 26.864403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568274, 38.779263, 26.783522>,  <29.307808, 38.104122, 27.149744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568274, 38.779263, 26.783522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784657, 38.485882, 26.618881>,  <29.914486, 38.309853, 26.520098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784657, 38.485882, 26.618881>,  <29.568274, 38.779263, 26.783522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784657, 38.485882, 26.618881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085201, 0.439081, -0.894398,
		0.836723, 0.518900, 0.175033,
		0.540957, -0.733451, -0.411600,
		29.946943, 38.265846, 26.495401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030413, 39.044155, 26.362064>,  <29.568274, 38.779263, 26.783522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030413, 39.044155, 26.362064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068123, 38.675068, 26.212557>,  <30.090748, 38.453617, 26.122852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.068123, 38.675068, 26.212557>,  <30.030413, 39.044155, 26.362064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068123, 38.675068, 26.212557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085296, 0.381546, -0.920406,
		0.991886, 0.054889, 0.114674,
		0.094273, -0.922719, -0.373768,
		30.096405, 38.398251, 26.100426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618021, 38.999813, 25.917139>,  <30.030413, 39.044155, 26.362064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618021, 38.999813, 25.917139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.399830, 38.690922, 25.786835>,  <30.268915, 38.505589, 25.708652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.399830, 38.690922, 25.786835>,  <30.618021, 38.999813, 25.917139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399830, 38.690922, 25.786835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195644, 0.260619, -0.945411,
		0.814970, -0.579434, 0.008919,
		-0.545479, -0.772227, -0.325759,
		30.236187, 38.459255, 25.689106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078018, 38.583073, 25.573111>,  <30.618021, 38.999813, 25.917139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078018, 38.583073, 25.573111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708179, 38.500450, 25.445074>,  <30.486277, 38.450878, 25.368252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708179, 38.500450, 25.445074>,  <31.078018, 38.583073, 25.573111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708179, 38.500450, 25.445074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263895, 0.258699, -0.929212,
		0.274737, -0.943616, -0.184684,
		-0.924597, -0.206551, -0.320090,
		30.430801, 38.438484, 25.349047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.629837, 33.435574, 47.778984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.411289, 33.133549, 47.634014>,  <39.280159, 32.952332, 47.547031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.411289, 33.133549, 47.634014>,  <39.629837, 33.435574, 47.778984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411289, 33.133549, 47.634014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398812, -0.145973, 0.905340,
		-0.736496, 0.639192, -0.221374,
		-0.546372, -0.755066, -0.362426,
		39.247379, 32.907028, 47.525288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926262, 33.444225, 47.947815>,  <39.629837, 33.435574, 47.778984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926262, 33.444225, 47.947815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015244, 33.056622, 47.904869>,  <39.068634, 32.824059, 47.879101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.015244, 33.056622, 47.904869>,  <38.926262, 33.444225, 47.947815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015244, 33.056622, 47.904869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487264, -0.205886, 0.848637,
		-0.844445, -0.136467, -0.517966,
		0.222453, -0.969014, -0.107364,
		39.081978, 32.765919, 47.872662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315075, 33.119793, 48.169556>,  <38.926262, 33.444225, 47.947815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315075, 33.119793, 48.169556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.589664, 32.831062, 48.204704>,  <38.754417, 32.657825, 48.225792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.589664, 32.831062, 48.204704>,  <38.315075, 33.119793, 48.169556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589664, 32.831062, 48.204704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408650, -0.283011, 0.867704,
		-0.601461, -0.631566, -0.489254,
		0.686477, -0.721823, 0.087869,
		38.795609, 32.614517, 48.231064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961697, 32.589718, 48.434494>,  <38.315075, 33.119793, 48.169556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961697, 32.589718, 48.434494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347340, 32.509773, 48.504406>,  <38.578724, 32.461807, 48.546352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.347340, 32.509773, 48.504406>,  <37.961697, 32.589718, 48.434494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347340, 32.509773, 48.504406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235844, -0.342308, 0.909507,
		-0.121948, -0.918085, -0.377159,
		0.964109, -0.199864, 0.174781,
		38.636574, 32.449814, 48.556839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879318, 32.092484, 48.926521>,  <37.961697, 32.589718, 48.434494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879318, 32.092484, 48.926521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262794, 32.200253, 48.963032>,  <38.492878, 32.264915, 48.984940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.262794, 32.200253, 48.963032>,  <37.879318, 32.092484, 48.926521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262794, 32.200253, 48.963032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030894, -0.220356, 0.974930,
		0.282782, -0.937472, -0.202929,
		0.958686, 0.269424, 0.091275,
		38.550400, 32.281078, 48.990414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188107, 31.564678, 49.248913>,  <37.879318, 32.092484, 48.926521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188107, 31.564678, 49.248913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470428, 31.836634, 49.328503>,  <38.639820, 31.999807, 49.376255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.470428, 31.836634, 49.328503>,  <38.188107, 31.564678, 49.248913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470428, 31.836634, 49.328503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115543, -0.166632, 0.979226,
		0.698922, -0.714131, -0.039053,
		0.705803, 0.679890, 0.198975,
		38.682171, 32.040600, 49.388195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639713, 31.226107, 49.709728>,  <38.188107, 31.564678, 49.248913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639713, 31.226107, 49.709728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686642, 31.620581, 49.756500>,  <38.714798, 31.857265, 49.784561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.686642, 31.620581, 49.756500>,  <38.639713, 31.226107, 49.709728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686642, 31.620581, 49.756500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085225, -0.107308, 0.990566,
		0.989430, -0.126181, 0.071458,
		0.117322, 0.986186, 0.116928,
		38.721840, 31.916437, 49.791580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118118, 31.298986, 50.198269>,  <38.639713, 31.226107, 49.709728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118118, 31.298986, 50.198269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.897575, 31.632631, 50.191723>,  <38.765251, 31.832817, 50.187794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.897575, 31.632631, 50.191723>,  <39.118118, 31.298986, 50.198269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897575, 31.632631, 50.191723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172729, -0.094936, 0.980383,
		0.816194, 0.543367, 0.196418,
		-0.551355, 0.834110, -0.016369,
		38.732170, 31.882864, 50.186813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378613, 31.715437, 50.731800>,  <39.118118, 31.298986, 50.198269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378613, 31.715437, 50.731800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995728, 31.799698, 50.652439>,  <38.765995, 31.850254, 50.604820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995728, 31.799698, 50.652439>,  <39.378613, 31.715437, 50.731800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995728, 31.799698, 50.652439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246421, -0.233916, 0.940510,
		0.151710, 0.949162, 0.275818,
		-0.957215, 0.210652, -0.198406,
		38.708565, 31.862894, 50.592918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158356, 32.042179, 51.396011>,  <39.378613, 31.715437, 50.731800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158356, 32.042179, 51.396011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.820690, 31.962357, 51.196983>,  <38.618092, 31.914463, 51.077568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.820690, 31.962357, 51.196983>,  <39.158356, 32.042179, 51.396011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820690, 31.962357, 51.196983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467764, -0.179248, 0.865487,
		-0.261900, 0.963352, 0.057970,
		-0.844159, -0.199555, -0.497567,
		38.567444, 31.902491, 51.047714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617176, 32.346462, 51.778576>,  <39.158356, 32.042179, 51.396011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617176, 32.346462, 51.778576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411861, 32.106300, 51.533283>,  <38.288673, 31.962204, 51.386108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.411861, 32.106300, 51.533283>,  <38.617176, 32.346462, 51.778576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411861, 32.106300, 51.533283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632416, -0.218422, 0.743197,
		-0.580162, 0.769289, -0.267593,
		-0.513285, -0.600405, -0.613231,
		38.257877, 31.926178, 51.349316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893013, 32.465965, 51.963253>,  <38.617176, 32.346462, 51.778576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893013, 32.465965, 51.963253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895271, 32.103310, 51.794510>,  <37.896626, 31.885715, 51.693264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895271, 32.103310, 51.794510>,  <37.893013, 32.465965, 51.963253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895271, 32.103310, 51.794510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383664, -0.391543, 0.836359,
		-0.923455, 0.157134, -0.350056,
		0.005642, -0.906644, -0.421859,
		37.896965, 31.831316, 51.667953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788574, 33.239262, 51.919773>,  <37.893013, 32.465965, 51.963253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788574, 33.239262, 51.919773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832253, 33.435154, 52.265778>,  <37.858459, 33.552689, 52.473381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.832253, 33.435154, 52.265778>,  <37.788574, 33.239262, 51.919773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832253, 33.435154, 52.265778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690725, -0.663175, 0.288266,
		0.714826, 0.566008, -0.410681,
		0.109192, 0.489728, 0.865011,
		37.865009, 33.582073, 52.525280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573647, 33.277355, 52.142467>,  <37.788574, 33.239262, 51.919773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573647, 33.277355, 52.142467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.364311, 33.314602, 52.481277>,  <38.238708, 33.336948, 52.684563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.364311, 33.314602, 52.481277>,  <38.573647, 33.277355, 52.142467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364311, 33.314602, 52.481277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616436, -0.644912, 0.451769,
		0.588322, 0.758563, 0.280107,
		-0.523339, 0.093118, 0.847021,
		38.207310, 33.342537, 52.735382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688625, 33.395569, 51.461552>,  <38.573647, 33.277355, 52.142467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688625, 33.395569, 51.461552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.414982, 33.649315, 51.605541>,  <38.250797, 33.801563, 51.691936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.414982, 33.649315, 51.605541>,  <38.688625, 33.395569, 51.461552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414982, 33.649315, 51.605541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464335, 0.001830, -0.885658,
		-0.562488, -0.773033, 0.293305,
		-0.684105, 0.634364, 0.359976,
		38.209751, 33.839622, 51.713535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113190, 33.178707, 51.195305>,  <38.688625, 33.395569, 51.461552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113190, 33.178707, 51.195305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035645, 33.561695, 51.280785>,  <37.989117, 33.791489, 51.332073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.035645, 33.561695, 51.280785>,  <38.113190, 33.178707, 51.195305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035645, 33.561695, 51.280785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476104, 0.098634, -0.873840,
		-0.857754, -0.271149, 0.436734,
		-0.193864, 0.957470, 0.213699,
		37.977486, 33.848938, 51.344894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433865, 33.333942, 51.252625>,  <38.113190, 33.178707, 51.195305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433865, 33.333942, 51.252625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593231, 33.687050, 51.153034>,  <37.688850, 33.898914, 51.093281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.593231, 33.687050, 51.153034>,  <37.433865, 33.333942, 51.252625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593231, 33.687050, 51.153034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545533, 0.009856, -0.838032,
		-0.737331, 0.469712, 0.485504,
		0.398419, 0.882765, -0.248976,
		37.712757, 33.951878, 51.078342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881947, 33.705914, 50.978817>,  <37.433865, 33.333942, 51.252625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881947, 33.705914, 50.978817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210842, 33.894535, 50.851345>,  <37.408180, 34.007710, 50.774860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210842, 33.894535, 50.851345>,  <36.881947, 33.705914, 50.978817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210842, 33.894535, 50.851345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369321, 0.016041, -0.929164,
		-0.433038, 0.881692, 0.187344,
		0.822241, 0.471553, -0.318681,
		37.457516, 34.035999, 50.755741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589615, 34.063168, 50.547089>,  <36.881947, 33.705914, 50.978817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589615, 34.063168, 50.547089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.966869, 34.125504, 50.429638>,  <37.193222, 34.162903, 50.359169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.966869, 34.125504, 50.429638>,  <36.589615, 34.063168, 50.547089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966869, 34.125504, 50.429638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320422, 0.191068, -0.927805,
		-0.088483, 0.969127, 0.230136,
		0.943133, 0.155836, -0.293623,
		37.249809, 34.172253, 50.341553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610157, 34.712013, 50.103806>,  <36.589615, 34.063168, 50.547089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610157, 34.712013, 50.103806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949673, 34.529648, 49.996693>,  <37.153381, 34.420231, 49.932423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.949673, 34.529648, 49.996693>,  <36.610157, 34.712013, 50.103806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949673, 34.529648, 49.996693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183451, 0.221067, -0.957849,
		0.495891, 0.862135, 0.104002,
		0.848786, -0.455909, -0.267785,
		37.204308, 34.392876, 49.916359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938519, 35.111248, 49.543060>,  <36.610157, 34.712013, 50.103806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938519, 35.111248, 49.543060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114853, 34.752792, 49.522705>,  <37.220654, 34.537720, 49.510494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.114853, 34.752792, 49.522705>,  <36.938519, 35.111248, 49.543060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114853, 34.752792, 49.522705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032694, 0.040624, -0.998639,
		0.896990, 0.441903, -0.011390,
		0.440839, -0.896142, -0.050886,
		37.247105, 34.483948, 49.507439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413120, 35.163681, 49.038029>,  <36.938519, 35.111248, 49.543060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413120, 35.163681, 49.038029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.367008, 34.766411, 49.031029>,  <37.339340, 34.528049, 49.026829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.367008, 34.766411, 49.031029>,  <37.413120, 35.163681, 49.038029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367008, 34.766411, 49.031029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078246, 0.008487, -0.996898,
		0.990246, -0.116293, 0.076734,
		-0.115281, -0.993179, -0.017504,
		37.332424, 34.468456, 49.025776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935303, 34.890278, 48.580757>,  <37.413120, 35.163681, 49.038029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935303, 34.890278, 48.580757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663258, 34.601124, 48.629555>,  <37.500031, 34.427631, 48.658833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.663258, 34.601124, 48.629555>,  <37.935303, 34.890278, 48.580757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663258, 34.601124, 48.629555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199574, 0.022450, -0.979625,
		0.705420, -0.690601, -0.159538,
		-0.680113, -0.722887, 0.121989,
		37.459225, 34.384258, 48.666153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137337, 34.323235, 48.204899>,  <37.935303, 34.890278, 48.580757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137337, 34.323235, 48.204899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739780, 34.291203, 48.235291>,  <37.501247, 34.271984, 48.253525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739780, 34.291203, 48.235291>,  <38.137337, 34.323235, 48.204899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739780, 34.291203, 48.235291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064083, -0.141884, -0.987807,
		0.089887, -0.986639, 0.135884,
		-0.993888, -0.080083, 0.075980,
		37.441612, 34.267178, 48.258083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994450, 33.978683, 47.615910>,  <38.137337, 34.323235, 48.204899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994450, 33.978683, 47.615910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.622379, 34.074490, 47.727200>,  <37.399139, 34.131973, 47.793972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.622379, 34.074490, 47.727200>,  <37.994450, 33.978683, 47.615910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622379, 34.074490, 47.727200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302061, -0.068593, -0.950818,
		-0.208657, -0.968465, 0.136153,
		-0.930173, 0.239522, 0.278223,
		37.343327, 34.146343, 47.810665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522781, 33.585793, 47.210476>,  <37.994450, 33.978683, 47.615910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522781, 33.585793, 47.210476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.324760, 33.919579, 47.307301>,  <37.205948, 34.119850, 47.365395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.324760, 33.919579, 47.307301>,  <37.522781, 33.585793, 47.210476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324760, 33.919579, 47.307301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122978, 0.208493, -0.970261,
		-0.860116, -0.510098, -0.000594,
		-0.495052, 0.834464, 0.242059,
		37.176247, 34.169918, 47.379917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898605, 33.692886, 46.762001>,  <37.522781, 33.585793, 47.210476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898605, 33.692886, 46.762001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914452, 34.065048, 46.907757>,  <36.923958, 34.288345, 46.995209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914452, 34.065048, 46.907757>,  <36.898605, 33.692886, 46.762001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914452, 34.065048, 46.907757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210353, 0.364269, -0.907226,
		-0.976822, -0.040710, 0.210144,
		0.039615, 0.930404, 0.364390,
		36.926334, 34.344170, 47.017075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370426, 34.133808, 46.423725>,  <36.898605, 33.692886, 46.762001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370426, 34.133808, 46.423725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640266, 34.401382, 46.548592>,  <36.802170, 34.561928, 46.623512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640266, 34.401382, 46.548592>,  <36.370426, 34.133808, 46.423725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640266, 34.401382, 46.548592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023747, 0.402995, -0.914894,
		-0.737803, 0.624599, 0.255974,
		0.674598, 0.668933, 0.312164,
		36.842648, 34.602062, 46.642242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886017, 34.421932, 47.000393>,  <36.370426, 34.133808, 46.423725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886017, 34.421932, 47.000393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504383, 34.521717, 46.934074>,  <35.275402, 34.581589, 46.894283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504383, 34.521717, 46.934074>,  <35.886017, 34.421932, 47.000393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504383, 34.521717, 46.934074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089373, 0.291223, 0.952471,
		0.285889, 0.923557, -0.255557,
		-0.954086, 0.249461, -0.165798,
		35.218159, 34.596554, 46.884335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690754, 35.135849, 47.249592>,  <35.886017, 34.421932, 47.000393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690754, 35.135849, 47.249592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328735, 34.967545, 47.224758>,  <35.111526, 34.866562, 47.209858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.328735, 34.967545, 47.224758>,  <35.690754, 35.135849, 47.249592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328735, 34.967545, 47.224758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232616, 0.367486, 0.900469,
		-0.356067, 0.829406, -0.430467,
		-0.905045, -0.420761, -0.062083,
		35.057220, 34.841316, 47.206135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237782, 35.602535, 47.609802>,  <35.690754, 35.135849, 47.249592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237782, 35.602535, 47.609802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021423, 35.267315, 47.581245>,  <34.891609, 35.066181, 47.564110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021423, 35.267315, 47.581245>,  <35.237782, 35.602535, 47.609802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021423, 35.267315, 47.581245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308898, 0.118981, 0.943624,
		-0.782311, 0.532459, -0.323229,
		-0.540899, -0.838052, -0.071395,
		34.859154, 35.015900, 47.559826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654499, 35.753876, 47.930698>,  <35.237782, 35.602535, 47.609802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654499, 35.753876, 47.930698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693806, 35.355812, 47.931503>,  <34.717388, 35.116974, 47.931988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.693806, 35.355812, 47.931503>,  <34.654499, 35.753876, 47.930698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693806, 35.355812, 47.931503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357606, -0.033421, 0.933274,
		-0.928689, -0.092427, -0.359159,
		0.098264, -0.995159, 0.002015,
		34.723286, 35.057266, 47.932106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157661, 35.585815, 48.379314>,  <34.654499, 35.753876, 47.930698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157661, 35.585815, 48.379314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365826, 35.245049, 48.355965>,  <34.490726, 35.040588, 48.341953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.365826, 35.245049, 48.355965>,  <34.157661, 35.585815, 48.379314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365826, 35.245049, 48.355965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207315, -0.192366, 0.959175,
		-0.828366, -0.487066, -0.276725,
		0.520414, -0.851917, -0.058373,
		34.521950, 34.989475, 48.338451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848133, 35.172230, 48.769966>,  <34.157661, 35.585815, 48.379314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848133, 35.172230, 48.769966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209141, 35.000744, 48.753651>,  <34.425747, 34.897854, 48.743862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.209141, 35.000744, 48.753651>,  <33.848133, 35.172230, 48.769966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209141, 35.000744, 48.753651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105537, -0.312005, 0.944201,
		-0.417519, -0.847854, -0.326835,
		0.902519, -0.428715, -0.040788,
		34.479897, 34.872131, 48.741413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759117, 34.554478, 48.993874>,  <33.848133, 35.172230, 48.769966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759117, 34.554478, 48.993874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153687, 34.594193, 49.046204>,  <34.390427, 34.618023, 49.077602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153687, 34.594193, 49.046204>,  <33.759117, 34.554478, 48.993874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153687, 34.594193, 49.046204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086414, -0.363633, 0.927526,
		0.139663, -0.926236, -0.350115,
		0.986421, 0.099286, 0.130826,
		34.449612, 34.623978, 49.085453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002037, 33.854774, 48.790920>,  <33.759117, 34.554478, 48.993874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002037, 33.854774, 48.790920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666615, 33.643402, 48.843964>,  <33.465359, 33.516579, 48.875790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666615, 33.643402, 48.843964>,  <34.002037, 33.854774, 48.790920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666615, 33.643402, 48.843964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135549, -0.033387, -0.990208,
		0.527679, -0.848323, -0.043631,
		-0.838559, -0.528426, 0.132607,
		33.415047, 33.484875, 48.883747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947151, 33.333591, 48.263462>,  <34.002037, 33.854774, 48.790920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947151, 33.333591, 48.263462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572422, 33.344624, 48.402943>,  <33.347584, 33.351242, 48.486629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572422, 33.344624, 48.402943>,  <33.947151, 33.333591, 48.263462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572422, 33.344624, 48.402943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348710, -0.151982, -0.924826,
		0.027490, -0.987998, 0.151998,
		-0.936828, 0.027580, 0.348703,
		33.291374, 33.352898, 48.507553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656506, 32.820068, 47.938202>,  <33.947151, 33.333591, 48.263462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656506, 32.820068, 47.938202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347553, 33.046116, 48.054176>,  <33.162182, 33.181744, 48.123760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.347553, 33.046116, 48.054176>,  <33.656506, 32.820068, 47.938202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347553, 33.046116, 48.054176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448223, -0.161543, -0.879204,
		-0.450021, -0.809037, 0.378074,
		-0.772384, 0.565122, 0.289932,
		33.115837, 33.215652, 48.141155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164978, 32.378643, 47.850437>,  <33.656506, 32.820068, 47.938202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164978, 32.378643, 47.850437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021828, 32.752022, 47.840542>,  <32.935940, 32.976048, 47.834602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021828, 32.752022, 47.840542>,  <33.164978, 32.378643, 47.850437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021828, 32.752022, 47.840542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418766, -0.184121, -0.889233,
		-0.834603, -0.307872, 0.456786,
		-0.357873, 0.933442, -0.024742,
		32.914467, 33.032055, 47.833118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581917, 32.289021, 47.622528>,  <33.164978, 32.378643, 47.850437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581917, 32.289021, 47.622528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.634415, 32.676849, 47.539875>,  <32.665913, 32.909546, 47.490284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.634415, 32.676849, 47.539875>,  <32.581917, 32.289021, 47.622528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634415, 32.676849, 47.539875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454075, -0.126490, -0.881939,
		-0.881243, 0.209579, 0.423659,
		0.131247, 0.969576, -0.206634,
		32.673790, 32.967724, 47.477886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954220, 32.431217, 47.185642>,  <32.581917, 32.289021, 47.622528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954220, 32.431217, 47.185642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190334, 32.746284, 47.115063>,  <32.332005, 32.935326, 47.072716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190334, 32.746284, 47.115063>,  <31.954220, 32.431217, 47.185642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190334, 32.746284, 47.115063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234390, -0.041921, -0.971238,
		-0.772413, 0.614669, 0.159877,
		0.590288, 0.787670, -0.176453,
		32.367420, 32.982586, 47.062126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545771, 32.826252, 46.730110>,  <31.954220, 32.431217, 47.185642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545771, 32.826252, 46.730110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903944, 33.004112, 46.721291>,  <32.118847, 33.110828, 46.716000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.903944, 33.004112, 46.721291>,  <31.545771, 32.826252, 46.730110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903944, 33.004112, 46.721291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145763, 0.246017, -0.958243,
		-0.420661, 0.861254, 0.285105,
		0.895431, 0.444653, -0.022049,
		32.172573, 33.137508, 46.714676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.297329, 28.954906, 51.780846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.377682, 29.290821, 51.579090>,  <37.425892, 29.492371, 51.458038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.377682, 29.290821, 51.579090>,  <37.297329, 28.954906, 51.780846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377682, 29.290821, 51.579090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226640, -0.461074, -0.857931,
		-0.953039, 0.286653, 0.097710,
		0.200877, 0.839786, -0.504388,
		37.437946, 29.542757, 51.427773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718121, 29.105143, 51.187210>,  <37.297329, 28.954906, 51.780846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718121, 29.105143, 51.187210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.079479, 29.246344, 51.089832>,  <37.296295, 29.331064, 51.031406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.079479, 29.246344, 51.089832>,  <36.718121, 29.105143, 51.187210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079479, 29.246344, 51.089832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141097, -0.291402, -0.946138,
		-0.404928, 0.889087, -0.213444,
		0.903397, 0.353001, -0.243444,
		37.350498, 29.352243, 51.016800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601391, 29.531881, 50.575394>,  <36.718121, 29.105143, 51.187210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601391, 29.531881, 50.575394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989647, 29.435907, 50.568653>,  <37.222603, 29.378323, 50.564610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.989647, 29.435907, 50.568653>,  <36.601391, 29.531881, 50.575394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989647, 29.435907, 50.568653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020247, -0.011683, -0.999727,
		0.239674, 0.970719, -0.016198,
		0.970642, -0.239936, -0.016854,
		37.280838, 29.363926, 50.563599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953251, 30.128592, 50.290485>,  <36.601391, 29.531881, 50.575394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953251, 30.128592, 50.290485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.216309, 29.831156, 50.242176>,  <37.374142, 29.652695, 50.213192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.216309, 29.831156, 50.242176>,  <36.953251, 30.128592, 50.290485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216309, 29.831156, 50.242176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167014, 0.300243, -0.939128,
		0.734586, 0.597437, 0.321641,
		0.657640, -0.743588, -0.120773,
		37.413601, 29.608080, 50.205944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495644, 30.430511, 49.929737>,  <36.953251, 30.128592, 50.290485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495644, 30.430511, 49.929737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.535934, 30.040270, 49.851711>,  <37.560108, 29.806126, 49.804897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.535934, 30.040270, 49.851711>,  <37.495644, 30.430511, 49.929737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535934, 30.040270, 49.851711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082860, 0.203608, -0.975540,
		0.991458, 0.082098, 0.101347,
		0.100725, -0.975604, -0.195066,
		37.566151, 29.747589, 49.793190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980362, 30.484158, 49.431240>,  <37.495644, 30.430511, 49.929737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980362, 30.484158, 49.431240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.839642, 30.110140, 49.413685>,  <37.755211, 29.885729, 49.403152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.839642, 30.110140, 49.413685>,  <37.980362, 30.484158, 49.431240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839642, 30.110140, 49.413685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117544, 0.002387, -0.993065,
		0.928665, -0.354520, 0.109069,
		-0.351801, -0.935045, -0.043888,
		37.734100, 29.829626, 49.400517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521812, 30.159166, 49.131268>,  <37.980362, 30.484158, 49.431240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521812, 30.159166, 49.131268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.218258, 29.908875, 49.059093>,  <38.036125, 29.758699, 49.015789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.218258, 29.908875, 49.059093>,  <38.521812, 30.159166, 49.131268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218258, 29.908875, 49.059093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276744, -0.059060, -0.959127,
		0.589499, -0.777800, 0.217987,
		-0.758883, -0.625731, -0.180436,
		37.990593, 29.721155, 49.004963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810951, 29.444929, 48.913750>,  <38.521812, 30.159166, 49.131268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810951, 29.444929, 48.913750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.438148, 29.529058, 48.795677>,  <38.214466, 29.579536, 48.724834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.438148, 29.529058, 48.795677>,  <38.810951, 29.444929, 48.913750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438148, 29.529058, 48.795677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280716, -0.096318, -0.954946,
		-0.229278, -0.972876, 0.030727,
		-0.932003, 0.210323, -0.295185,
		38.158546, 29.592155, 48.707123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775089, 29.076815, 48.262852>,  <38.810951, 29.444929, 48.913750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775089, 29.076815, 48.262852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.444469, 29.301483, 48.248203>,  <38.246098, 29.436285, 48.239414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.444469, 29.301483, 48.248203>,  <38.775089, 29.076815, 48.262852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444469, 29.301483, 48.248203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036438, -0.011525, -0.999269,
		-0.561684, -0.827280, -0.010941,
		-0.826549, 0.561672, -0.036618,
		38.196503, 29.469984, 48.237217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228897, 28.693718, 47.880543>,  <38.775089, 29.076815, 48.262852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228897, 28.693718, 47.880543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.131676, 29.080462, 47.849270>,  <38.073341, 29.312508, 47.830505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.131676, 29.080462, 47.849270>,  <38.228897, 28.693718, 47.880543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131676, 29.080462, 47.849270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016528, -0.076457, -0.996936,
		-0.969872, -0.243603, 0.002603,
		-0.243056, 0.966857, -0.078179,
		38.058758, 29.370518, 47.825817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881916, 28.682512, 47.250298>,  <38.228897, 28.693718, 47.880543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881916, 28.682512, 47.250298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.955738, 29.072239, 47.301907>,  <38.000031, 29.306074, 47.332870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.955738, 29.072239, 47.301907>,  <37.881916, 28.682512, 47.250298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955738, 29.072239, 47.301907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134193, 0.105066, -0.985369,
		-0.973618, 0.199166, -0.111357,
		0.184552, 0.974317, 0.129021,
		38.011105, 29.364534, 47.340614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447838, 29.099321, 46.839550>,  <37.881916, 28.682512, 47.250298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447838, 29.099321, 46.839550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.771416, 29.318733, 46.924145>,  <37.965561, 29.450380, 46.974899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.771416, 29.318733, 46.924145>,  <37.447838, 29.099321, 46.839550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771416, 29.318733, 46.924145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107879, 0.215120, -0.970611,
		-0.577902, 0.807985, 0.114846,
		0.808945, 0.548528, 0.211483,
		38.014099, 29.483292, 46.987591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834339, 29.670885, 47.107281>,  <37.447838, 29.099321, 46.839550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834339, 29.670885, 47.107281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.467468, 29.750853, 46.969398>,  <36.247345, 29.798832, 46.886669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.467468, 29.750853, 46.969398>,  <36.834339, 29.670885, 47.107281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467468, 29.750853, 46.969398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301102, 0.218910, 0.928125,
		0.261007, 0.955045, -0.140584,
		-0.917177, 0.199917, -0.344703,
		36.192314, 29.810827, 46.865986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594833, 30.241449, 47.507881>,  <36.834339, 29.670885, 47.107281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594833, 30.241449, 47.507881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.252499, 30.100384, 47.356525>,  <36.047100, 30.015745, 47.265713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.252499, 30.100384, 47.356525>,  <36.594833, 30.241449, 47.507881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252499, 30.100384, 47.356525> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495694, 0.350205, 0.794760,
		-0.147770, 0.867747, -0.474530,
		-0.855834, -0.352663, -0.378387,
		35.995747, 29.994585, 47.243008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068871, 30.845959, 47.393871>,  <36.594833, 30.241449, 47.507881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068871, 30.845959, 47.393871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.893280, 30.487606, 47.421288>,  <35.787926, 30.272594, 47.437737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.893280, 30.487606, 47.421288>,  <36.068871, 30.845959, 47.393871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893280, 30.487606, 47.421288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621838, 0.357985, 0.696537,
		-0.648549, 0.263146, -0.714240,
		-0.438978, -0.895880, 0.068537,
		35.761585, 30.218842, 47.441849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363415, 31.012659, 47.427559>,  <36.068871, 30.845959, 47.393871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363415, 31.012659, 47.427559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.387066, 30.644371, 47.581848>,  <35.401257, 30.423399, 47.674419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.387066, 30.644371, 47.581848>,  <35.363415, 31.012659, 47.427559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387066, 30.644371, 47.581848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679710, 0.245855, 0.691050,
		-0.731094, -0.303037, -0.611285,
		0.059126, -0.920720, 0.385720,
		35.404804, 30.368155, 47.697563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646156, 30.888494, 47.593594>,  <35.363415, 31.012659, 47.427559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646156, 30.888494, 47.593594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.881916, 30.639704, 47.799801>,  <35.023373, 30.490429, 47.923523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.881916, 30.639704, 47.799801>,  <34.646156, 30.888494, 47.593594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881916, 30.639704, 47.799801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553482, 0.153924, 0.818514,
		-0.588447, -0.767757, -0.253531,
		0.589396, -0.621977, 0.515516,
		35.058735, 30.453110, 47.954456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144520, 30.607988, 48.008865>,  <34.646156, 30.888494, 47.593594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144520, 30.607988, 48.008865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.499348, 30.511969, 48.166592>,  <34.712246, 30.454357, 48.261227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.499348, 30.511969, 48.166592>,  <34.144520, 30.607988, 48.008865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499348, 30.511969, 48.166592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365803, 0.155522, 0.917606,
		-0.281597, -0.958221, 0.050147,
		0.887069, -0.240051, 0.394315,
		34.765469, 30.439953, 48.284885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064655, 30.097240, 48.636383>,  <34.144520, 30.607988, 48.008865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064655, 30.097240, 48.636383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419971, 30.273401, 48.688522>,  <34.633160, 30.379097, 48.719807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419971, 30.273401, 48.688522>,  <34.064655, 30.097240, 48.636383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419971, 30.273401, 48.688522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177432, 0.067285, 0.981830,
		0.423628, -0.895277, 0.137910,
		0.888289, 0.440400, 0.130347,
		34.686459, 30.405521, 48.727627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219685, 29.825876, 49.212696>,  <34.064655, 30.097240, 48.636383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219685, 29.825876, 49.212696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.451080, 30.151680, 49.195118>,  <34.589916, 30.347162, 49.184570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.451080, 30.151680, 49.195118>,  <34.219685, 29.825876, 49.212696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451080, 30.151680, 49.195118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030040, 0.032565, 0.999018,
		0.815140, -0.579237, -0.005629,
		0.578485, 0.814508, -0.043945,
		34.624626, 30.396032, 49.181934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638729, 29.799814, 49.803577>,  <34.219685, 29.825876, 49.212696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638729, 29.799814, 49.803577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646370, 30.186447, 49.701321>,  <34.650955, 30.418427, 49.639965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646370, 30.186447, 49.701321>,  <34.638729, 29.799814, 49.803577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646370, 30.186447, 49.701321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118794, 0.251686, 0.960490,
		0.992735, -0.048714, -0.110017,
		0.019100, 0.966582, -0.255644,
		34.652100, 30.476421, 49.624626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109070, 30.105913, 50.245575>,  <34.638729, 29.799814, 49.803577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109070, 30.105913, 50.245575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930801, 30.425200, 50.083477>,  <34.823841, 30.616772, 49.986217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.930801, 30.425200, 50.083477>,  <35.109070, 30.105913, 50.245575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930801, 30.425200, 50.083477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097731, 0.493370, 0.864311,
		0.889846, 0.345593, -0.297892,
		-0.445671, 0.798217, -0.405248,
		34.797100, 30.664665, 49.961903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515030, 30.559147, 50.434456>,  <35.109070, 30.105913, 50.245575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515030, 30.559147, 50.434456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.165871, 30.735840, 50.351593>,  <34.956375, 30.841856, 50.301876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.165871, 30.735840, 50.351593>,  <35.515030, 30.559147, 50.434456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165871, 30.735840, 50.351593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028530, 0.377656, 0.925507,
		0.487063, 0.813786, -0.317053,
		-0.872901, 0.441735, -0.207160,
		34.903999, 30.868361, 50.289444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515560, 31.217882, 50.740112>,  <35.515030, 30.559147, 50.434456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515560, 31.217882, 50.740112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.127422, 31.144323, 50.677353>,  <34.894539, 31.100189, 50.639698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.127422, 31.144323, 50.677353>,  <35.515560, 31.217882, 50.740112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127422, 31.144323, 50.677353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201111, 0.254000, 0.946065,
		-0.134124, 0.949561, -0.283450,
		-0.970343, -0.183895, -0.156899,
		34.836319, 31.089155, 50.630283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151062, 31.883074, 50.965580>,  <35.515560, 31.217882, 50.740112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151062, 31.883074, 50.965580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.882015, 31.587669, 50.984280>,  <34.720585, 31.410427, 50.995499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.882015, 31.587669, 50.984280>,  <35.151062, 31.883074, 50.965580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882015, 31.587669, 50.984280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275563, 0.308607, 0.910399,
		-0.686766, 0.599470, -0.411082,
		-0.672620, -0.738510, 0.046749,
		34.680229, 31.366116, 50.998302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427670, 32.132507, 51.160946>,  <35.151062, 31.883074, 50.965580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427670, 32.132507, 51.160946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.462692, 31.747938, 51.265251>,  <34.483707, 31.517197, 51.327835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.462692, 31.747938, 51.265251>,  <34.427670, 32.132507, 51.160946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462692, 31.747938, 51.265251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261722, 0.230374, 0.937246,
		-0.961164, -0.150312, -0.231454,
		0.087558, -0.961423, 0.260766,
		34.488960, 31.459511, 51.343483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011162, 31.468111, 50.998718>,  <34.427670, 32.132507, 51.160946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011162, 31.468111, 50.998718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818874, 31.763311, 51.188145>,  <33.703503, 31.940432, 51.301800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818874, 31.763311, 51.188145>,  <34.011162, 31.468111, 50.998718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818874, 31.763311, 51.188145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430246, 0.272067, -0.860737,
		-0.764064, -0.617525, 0.186732,
		-0.480723, 0.737999, 0.473564,
		33.674656, 31.984711, 51.330215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318829, 31.443424, 50.858231>,  <34.011162, 31.468111, 50.998718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318829, 31.443424, 50.858231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429653, 31.820253, 50.933849>,  <33.496147, 32.046349, 50.979221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429653, 31.820253, 50.933849>,  <33.318829, 31.443424, 50.858231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429653, 31.820253, 50.933849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373178, 0.286805, -0.882316,
		-0.885422, 0.173912, 0.431024,
		0.277065, 0.942071, 0.189044,
		33.512772, 32.102875, 50.990562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748985, 31.897345, 50.642548>,  <33.318829, 31.443424, 50.858231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748985, 31.897345, 50.642548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051426, 32.158978, 50.651394>,  <33.232891, 32.315956, 50.656700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.051426, 32.158978, 50.651394>,  <32.748985, 31.897345, 50.642548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051426, 32.158978, 50.651394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305857, 0.383031, -0.871630,
		-0.578587, 0.652276, 0.489665,
		0.756101, 0.654082, 0.022113,
		33.278255, 32.355202, 50.658028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463463, 32.563583, 50.513042>,  <32.748985, 31.897345, 50.642548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463463, 32.563583, 50.513042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857677, 32.605297, 50.459614>,  <33.094208, 32.630325, 50.427555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.857677, 32.605297, 50.459614>,  <32.463463, 32.563583, 50.513042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857677, 32.605297, 50.459614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162606, 0.360020, -0.918665,
		-0.047716, 0.927098, 0.371771,
		0.985537, 0.104287, -0.133573,
		33.153339, 32.636581, 50.419540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612179, 33.284946, 50.426075>,  <32.463463, 32.563583, 50.513042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612179, 33.284946, 50.426075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927593, 33.119194, 50.244308>,  <33.116840, 33.019741, 50.135246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927593, 33.119194, 50.244308>,  <32.612179, 33.284946, 50.426075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927593, 33.119194, 50.244308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173249, 0.559303, -0.810657,
		0.590083, 0.717959, 0.369238,
		0.788535, -0.414385, -0.454421,
		33.164154, 32.994877, 50.107983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814785, 33.934437, 50.008572>,  <32.612179, 33.284946, 50.426075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814785, 33.934437, 50.008572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.997890, 33.611130, 49.860432>,  <33.107754, 33.417145, 49.771545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.997890, 33.611130, 49.860432>,  <32.814785, 33.934437, 50.008572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997890, 33.611130, 49.860432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104855, 0.364571, -0.925253,
		0.882869, 0.462381, 0.082137,
		0.457764, -0.808265, -0.370352,
		33.135220, 33.368649, 49.749325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340832, 34.163975, 49.576809>,  <32.814785, 33.934437, 50.008572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340832, 34.163975, 49.576809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.256729, 33.788776, 49.466572>,  <33.206268, 33.563656, 49.400429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.256729, 33.788776, 49.466572>,  <33.340832, 34.163975, 49.576809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256729, 33.788776, 49.466572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141140, 0.308064, -0.940838,
		0.967405, -0.158919, -0.197160,
		-0.210255, -0.937999, -0.275593,
		33.193653, 33.507378, 49.383896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053204, 33.781620, 49.520287>,  <33.340832, 34.163975, 49.576809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053204, 33.781620, 49.520287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.324890, 34.075195, 49.519295>,  <34.487904, 34.251339, 49.518700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.324890, 34.075195, 49.519295>,  <34.053204, 33.781620, 49.520287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324890, 34.075195, 49.519295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199716, -0.181576, 0.962883,
		0.706243, -0.654501, -0.269908,
		0.679217, 0.733934, -0.002477,
		34.528656, 34.295376, 49.518551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773251, 33.526608, 49.783222>,  <34.053204, 33.781620, 49.520287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773251, 33.526608, 49.783222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764595, 33.921486, 49.846443>,  <34.759403, 34.158413, 49.884377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764595, 33.921486, 49.846443>,  <34.773251, 33.526608, 49.783222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764595, 33.921486, 49.846443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239683, -0.148359, 0.959449,
		0.970610, 0.058642, -0.233404,
		-0.021636, 0.987193, 0.158054,
		34.758102, 34.217644, 49.893860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500793, 33.799210, 50.123104>,  <34.773251, 33.526608, 49.783222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500793, 33.799210, 50.123104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.241821, 34.099529, 50.175465>,  <35.086437, 34.279720, 50.206882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.241821, 34.099529, 50.175465>,  <35.500793, 33.799210, 50.123104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241821, 34.099529, 50.175465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330050, 0.121399, 0.936125,
		0.686946, 0.649284, -0.326398,
		-0.647435, 0.750795, 0.130901,
		35.047592, 34.324768, 50.214733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868393, 34.259621, 50.515522>,  <35.500793, 33.799210, 50.123104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868393, 34.259621, 50.515522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491516, 34.385506, 50.561516>,  <35.265388, 34.461037, 50.589111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.491516, 34.385506, 50.561516>,  <35.868393, 34.259621, 50.515522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491516, 34.385506, 50.561516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161955, 0.127340, 0.978547,
		0.293319, 0.940606, -0.170949,
		-0.942197, 0.314713, 0.114984,
		35.208858, 34.479919, 50.596012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810997, 34.831745, 50.930542>,  <35.868393, 34.259621, 50.515522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810997, 34.831745, 50.930542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.447861, 34.678234, 50.998119>,  <35.229980, 34.586128, 51.038666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.447861, 34.678234, 50.998119>,  <35.810997, 34.831745, 50.930542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447861, 34.678234, 50.998119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152174, 0.073895, 0.985587,
		-0.390735, 0.920462, -0.008683,
		-0.907838, -0.383782, 0.168944,
		35.175510, 34.563099, 51.048801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498016, 35.198856, 51.445179>,  <35.810997, 34.831745, 50.930542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498016, 35.198856, 51.445179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291061, 34.856606, 51.450905>,  <35.166889, 34.651253, 51.454342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.291061, 34.856606, 51.450905>,  <35.498016, 35.198856, 51.445179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291061, 34.856606, 51.450905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041049, -0.008104, 0.999124,
		-0.854764, 0.517527, 0.039315,
		-0.517392, -0.855629, 0.014317,
		35.135845, 34.599918, 51.455200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196030, 35.218849, 52.042839>,  <35.498016, 35.198856, 51.445179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196030, 35.218849, 52.042839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184563, 34.835644, 51.928719>,  <35.177685, 34.605721, 51.860249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.184563, 34.835644, 51.928719>,  <35.196030, 35.218849, 52.042839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184563, 34.835644, 51.928719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251114, -0.283164, 0.925613,
		-0.967533, -0.045109, 0.248687,
		-0.028666, -0.958010, -0.285298,
		35.175964, 34.548241, 51.843128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926098, 34.889709, 52.601860>,  <35.196030, 35.218849, 52.042839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926098, 34.889709, 52.601860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.075451, 34.568470, 52.416122>,  <35.165062, 34.375725, 52.304680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.075451, 34.568470, 52.416122>,  <34.926098, 34.889709, 52.601860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075451, 34.568470, 52.416122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231002, -0.404291, 0.884978,
		-0.898458, -0.437698, 0.034564,
		0.373379, -0.803100, -0.464347,
		35.187466, 34.327541, 52.276817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635971, 34.389877, 52.929462>,  <34.926098, 34.889709, 52.601860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635971, 34.389877, 52.929462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.959473, 34.250961, 52.739597>,  <35.153572, 34.167614, 52.625679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.959473, 34.250961, 52.739597>,  <34.635971, 34.389877, 52.929462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959473, 34.250961, 52.739597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324866, -0.408987, 0.852755,
		-0.490284, -0.843872, -0.217948,
		0.808755, -0.347288, -0.474665,
		35.202099, 34.146774, 52.597198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.609062, 36.819847, 37.006554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959900, 36.640930, 36.936535>,  <35.170403, 36.533581, 36.894524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959900, 36.640930, 36.936535>,  <34.609062, 36.819847, 37.006554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959900, 36.640930, 36.936535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088616, -0.508870, 0.856270,
		-0.472074, -0.735517, -0.485963,
		0.877093, -0.447288, -0.175045,
		35.223026, 36.506744, 36.884022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441132, 36.055008, 37.047771>,  <34.609062, 36.819847, 37.006554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441132, 36.055008, 37.047771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823608, 36.134991, 37.133297>,  <35.053093, 36.182980, 37.184612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823608, 36.134991, 37.133297>,  <34.441132, 36.055008, 37.047771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823608, 36.134991, 37.133297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090073, -0.493997, 0.864785,
		0.278544, -0.846159, -0.454344,
		0.956191, 0.199956, 0.213816,
		35.110466, 36.194977, 37.197441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676788, 35.405174, 37.221672>,  <34.441132, 36.055008, 37.047771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676788, 35.405174, 37.221672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930450, 35.674599, 37.373547>,  <35.082645, 35.836254, 37.464672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930450, 35.674599, 37.373547>,  <34.676788, 35.405174, 37.221672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930450, 35.674599, 37.373547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075662, -0.434643, 0.897419,
		0.769497, -0.597828, -0.224667,
		0.634152, 0.673563, 0.379689,
		35.120697, 35.876667, 37.487453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201950, 35.002453, 37.604485>,  <34.676788, 35.405174, 37.221672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201950, 35.002453, 37.604485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213600, 35.376949, 37.744545>,  <35.220589, 35.601646, 37.828583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213600, 35.376949, 37.744545>,  <35.201950, 35.002453, 37.604485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213600, 35.376949, 37.744545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033392, -0.349195, 0.936455,
		0.999018, -0.038962, 0.021095,
		0.029120, 0.936240, 0.350153,
		35.222336, 35.657822, 37.849590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682945, 34.990547, 38.157967>,  <35.201950, 35.002453, 37.604485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682945, 34.990547, 38.157967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466106, 35.321812, 38.214912>,  <35.336002, 35.520573, 38.249081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466106, 35.321812, 38.214912>,  <35.682945, 34.990547, 38.157967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466106, 35.321812, 38.214912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157420, -0.266510, 0.950890,
		0.825436, 0.493067, 0.274845,
		-0.542102, 0.828165, 0.142369,
		35.303474, 35.570263, 38.257622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813286, 35.290592, 38.834492>,  <35.682945, 34.990547, 38.157967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813286, 35.290592, 38.834492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448921, 35.445518, 38.777615>,  <35.230301, 35.538475, 38.743488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448921, 35.445518, 38.777615>,  <35.813286, 35.290592, 38.834492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448921, 35.445518, 38.777615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076121, 0.180944, 0.980543,
		0.405511, 0.904015, -0.135342,
		-0.910915, 0.387319, -0.142190,
		35.175648, 35.561714, 38.734959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812180, 35.858219, 39.293804>,  <35.813286, 35.290592, 38.834492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812180, 35.858219, 39.293804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441093, 35.754311, 39.186581>,  <35.218441, 35.691967, 39.122246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441093, 35.754311, 39.186581>,  <35.812180, 35.858219, 39.293804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441093, 35.754311, 39.186581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316197, 0.165224, 0.934195,
		-0.198385, 0.951431, -0.235420,
		-0.927719, -0.259769, -0.268062,
		35.162777, 35.676380, 39.106163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229046, 36.389099, 39.469795>,  <35.812180, 35.858219, 39.293804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229046, 36.389099, 39.469795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058250, 36.027435, 39.464546>,  <34.955772, 35.810436, 39.461399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058250, 36.027435, 39.464546>,  <35.229046, 36.389099, 39.469795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058250, 36.027435, 39.464546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229500, 0.094323, 0.968728,
		-0.874650, 0.416645, -0.247780,
		-0.426986, -0.904163, -0.013121,
		34.930153, 35.756187, 39.460609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822983, 36.540344, 39.952309>,  <35.229046, 36.389099, 39.469795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822983, 36.540344, 39.952309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792301, 36.143295, 39.914745>,  <34.773891, 35.905067, 39.892208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792301, 36.143295, 39.914745>,  <34.822983, 36.540344, 39.952309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792301, 36.143295, 39.914745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223852, -0.074639, 0.971761,
		-0.971600, 0.095558, -0.216475,
		-0.076702, -0.992622, -0.093910,
		34.769291, 35.845509, 39.886574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258224, 36.368645, 40.363060>,  <34.822983, 36.540344, 39.952309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258224, 36.368645, 40.363060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435291, 36.015614, 40.299683>,  <34.541531, 35.803795, 40.261654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435291, 36.015614, 40.299683>,  <34.258224, 36.368645, 40.363060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435291, 36.015614, 40.299683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124098, -0.235303, 0.963967,
		-0.888057, -0.407054, -0.213687,
		0.442668, -0.882576, -0.158448,
		34.568092, 35.750839, 40.252148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819912, 35.908226, 40.678749>,  <34.258224, 36.368645, 40.363060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819912, 35.908226, 40.678749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157200, 35.695515, 40.647297>,  <34.359573, 35.567886, 40.628426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157200, 35.695515, 40.647297>,  <33.819912, 35.908226, 40.678749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157200, 35.695515, 40.647297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097738, -0.295497, 0.950331,
		-0.528603, -0.793656, -0.301145,
		0.843224, -0.531782, -0.078630,
		34.410168, 35.535980, 40.623707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689808, 35.223785, 40.907745>,  <33.819912, 35.908226, 40.678749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689808, 35.223785, 40.907745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086338, 35.252754, 40.951633>,  <34.324257, 35.270134, 40.977966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086338, 35.252754, 40.951633>,  <33.689808, 35.223785, 40.907745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086338, 35.252754, 40.951633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092386, -0.209976, 0.973332,
		0.093527, -0.975021, -0.201463,
		0.991321, 0.072420, 0.109717,
		34.383736, 35.274479, 40.984547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395283, 34.619598, 40.517086>,  <33.689808, 35.223785, 40.907745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395283, 34.619598, 40.517086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100079, 34.360729, 40.593510>,  <32.922955, 34.205406, 40.639362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100079, 34.360729, 40.593510>,  <33.395283, 34.619598, 40.517086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100079, 34.360729, 40.593510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059235, -0.219906, -0.973721,
		0.672181, -0.729936, 0.123959,
		-0.738014, -0.647174, 0.191054,
		32.878674, 34.166576, 40.650826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654106, 33.941273, 40.268742>,  <33.395283, 34.619598, 40.517086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654106, 33.941273, 40.268742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254871, 33.965977, 40.269920>,  <33.015331, 33.980801, 40.270630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254871, 33.965977, 40.269920>,  <33.654106, 33.941273, 40.268742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254871, 33.965977, 40.269920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009827, -0.111348, -0.993733,
		-0.061038, -0.991861, 0.111742,
		-0.998087, 0.061754, 0.002950,
		32.955444, 33.984505, 40.270805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412231, 33.498096, 39.672531>,  <33.654106, 33.941273, 40.268742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412231, 33.498096, 39.672531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097626, 33.728928, 39.760517>,  <32.908863, 33.867424, 39.813309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097626, 33.728928, 39.760517>,  <33.412231, 33.498096, 39.672531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097626, 33.728928, 39.760517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236937, 0.046957, -0.970389,
		-0.570316, -0.815341, 0.099798,
		-0.786511, 0.577074, 0.219965,
		32.861671, 33.902050, 39.826508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840107, 33.229153, 39.224319>,  <33.412231, 33.498096, 39.672531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840107, 33.229153, 39.224319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740360, 33.593544, 39.355732>,  <32.680511, 33.812180, 39.434578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740360, 33.593544, 39.355732>,  <32.840107, 33.229153, 39.224319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740360, 33.593544, 39.355732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476157, 0.180062, -0.860728,
		-0.843261, -0.371071, 0.388867,
		-0.249370, 0.910980, 0.328527,
		32.665550, 33.866837, 39.454288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072502, 33.338951, 39.099655>,  <32.840107, 33.229153, 39.224319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072502, 33.338951, 39.099655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228413, 33.706219, 39.128059>,  <32.321957, 33.926579, 39.145103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228413, 33.706219, 39.128059>,  <32.072502, 33.338951, 39.099655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228413, 33.706219, 39.128059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424880, 0.247706, -0.870700,
		-0.817039, 0.309205, 0.486661,
		0.389774, 0.918169, 0.071011,
		32.345345, 33.981670, 39.149364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527611, 33.769817, 38.859413>,  <32.072502, 33.338951, 39.099655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527611, 33.769817, 38.859413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858410, 33.992439, 38.827595>,  <32.056889, 34.126011, 38.808506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858410, 33.992439, 38.827595>,  <31.527611, 33.769817, 38.859413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858410, 33.992439, 38.827595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286295, 0.295136, -0.911554,
		-0.483853, 0.776623, 0.403414,
		0.826995, 0.556553, -0.079541,
		32.106510, 34.159405, 38.803734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331553, 34.293743, 38.362602>,  <31.527611, 33.769817, 38.859413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331553, 34.293743, 38.362602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730993, 34.312122, 38.373035>,  <31.970657, 34.323151, 38.379295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730993, 34.312122, 38.373035>,  <31.331553, 34.293743, 38.362602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730993, 34.312122, 38.373035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013752, 0.250568, -0.968001,
		-0.051010, 0.967008, 0.249587,
		0.998603, 0.045945, 0.026080,
		32.030575, 34.325905, 38.380859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577438, 34.993446, 38.079727>,  <31.331553, 34.293743, 38.362602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577438, 34.993446, 38.079727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872812, 34.726509, 38.041023>,  <32.050037, 34.566345, 38.017799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872812, 34.726509, 38.041023>,  <31.577438, 34.993446, 38.079727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872812, 34.726509, 38.041023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103803, 0.029290, -0.994167,
		0.666288, 0.744171, -0.047644,
		0.738434, -0.667347, -0.096763,
		32.094341, 34.526306, 38.011993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921446, 35.331596, 37.469975>,  <31.577438, 34.993446, 38.079727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921446, 35.331596, 37.469975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027065, 34.948048, 37.511620>,  <32.090439, 34.717918, 37.536606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027065, 34.948048, 37.511620>,  <31.921446, 35.331596, 37.469975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027065, 34.948048, 37.511620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059269, -0.091610, -0.994030,
		0.962686, 0.268643, 0.032642,
		0.264049, -0.958873, 0.104114,
		32.106281, 34.660385, 37.542854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301723, 35.266296, 36.921715>,  <31.921446, 35.331596, 37.469975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301723, 35.266296, 36.921715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243523, 34.881264, 37.013165>,  <32.208603, 34.650246, 37.068035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243523, 34.881264, 37.013165>,  <32.301723, 35.266296, 36.921715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243523, 34.881264, 37.013165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175609, -0.252538, -0.951518,
		0.973648, -0.098301, 0.205783,
		-0.145504, -0.962581, 0.228621,
		32.199871, 34.592491, 37.081749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787510, 34.890057, 36.461189>,  <32.301723, 35.266296, 36.921715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787510, 34.890057, 36.461189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489365, 34.638103, 36.548542>,  <32.310478, 34.486931, 36.600952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489365, 34.638103, 36.548542>,  <32.787510, 34.890057, 36.461189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489365, 34.638103, 36.548542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103642, -0.214111, -0.971296,
		0.658557, -0.746598, 0.094307,
		-0.745360, -0.629879, 0.218383,
		32.265759, 34.449139, 36.614056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899845, 34.207409, 36.084988>,  <32.787510, 34.890057, 36.461189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899845, 34.207409, 36.084988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508842, 34.243805, 36.161091>,  <32.274242, 34.265644, 36.206753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508842, 34.243805, 36.161091>,  <32.899845, 34.207409, 36.084988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508842, 34.243805, 36.161091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208890, -0.293444, -0.932875,
		-0.029053, -0.951636, 0.305851,
		-0.977507, 0.090992, 0.190262,
		32.215591, 34.271103, 36.218170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508404, 33.842434, 36.195675>,  <32.899845, 34.207409, 36.084988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508404, 33.842434, 36.195675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277946, 33.657249, 36.465111>,  <33.139671, 33.546139, 36.626774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277946, 33.657249, 36.465111>,  <33.508404, 33.842434, 36.195675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277946, 33.657249, 36.465111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813799, 0.248182, -0.525488,
		0.076106, -0.850925, -0.519744,
		-0.576142, -0.462960, 0.673594,
		33.105103, 33.518360, 36.667191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336681, 33.752621, 36.180691>,  <33.508404, 33.842434, 36.195675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336681, 33.752621, 36.180691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431370, 34.131218, 36.268425>,  <34.488182, 34.358376, 36.321064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431370, 34.131218, 36.268425>,  <34.336681, 33.752621, 36.180691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431370, 34.131218, 36.268425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122039, -0.252926, 0.959758,
		0.963883, -0.200427, -0.175383,
		0.236720, 0.946497, 0.219332,
		34.502384, 34.415169, 36.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851456, 33.631496, 36.637135>,  <34.336681, 33.752621, 36.180691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851456, 33.631496, 36.637135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664165, 33.982544, 36.678207>,  <34.551792, 34.193172, 36.702850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664165, 33.982544, 36.678207>,  <34.851456, 33.631496, 36.637135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664165, 33.982544, 36.678207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185499, -0.211251, 0.959668,
		0.863917, 0.430296, 0.261712,
		-0.468229, 0.877621, 0.102684,
		34.523697, 34.245831, 36.709011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310734, 33.188160, 37.090561>,  <34.851456, 33.631496, 36.637135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310734, 33.188160, 37.090561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565166, 32.934235, 36.915100>,  <35.717827, 32.781879, 36.809822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565166, 32.934235, 36.915100>,  <35.310734, 33.188160, 37.090561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565166, 32.934235, 36.915100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081995, -0.509655, 0.856463,
		-0.767255, -0.580746, -0.272129,
		0.636079, -0.634812, -0.438653,
		35.755989, 32.743790, 36.783504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092960, 32.399864, 36.974339>,  <35.310734, 33.188160, 37.090561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092960, 32.399864, 36.974339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492275, 32.377522, 36.981335>,  <35.731865, 32.364117, 36.985531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492275, 32.377522, 36.981335>,  <35.092960, 32.399864, 36.974339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492275, 32.377522, 36.981335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048328, -0.618007, 0.784686,
		-0.033022, -0.784185, -0.619647,
		0.998286, -0.055858, 0.017490,
		35.791759, 32.360764, 36.986580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303570, 31.644007, 37.040764>,  <35.092960, 32.399864, 36.974339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303570, 31.644007, 37.040764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614586, 31.861498, 37.167130>,  <35.801193, 31.991993, 37.242950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614586, 31.861498, 37.167130>,  <35.303570, 31.644007, 37.040764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614586, 31.861498, 37.167130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013279, -0.488066, 0.872706,
		0.628698, -0.682755, -0.372269,
		0.777536, 0.543725, 0.315913,
		35.847847, 32.024616, 37.261902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722309, 31.205238, 37.409473>,  <35.303570, 31.644007, 37.040764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722309, 31.205238, 37.409473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878902, 31.552156, 37.532463>,  <35.972858, 31.760307, 37.606258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878902, 31.552156, 37.532463>,  <35.722309, 31.205238, 37.409473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878902, 31.552156, 37.532463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013539, -0.328681, 0.944344,
		0.920085, -0.373860, -0.116932,
		0.391485, 0.867293, 0.307476,
		35.996349, 31.812344, 37.624706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167889, 30.968616, 37.898067>,  <35.722309, 31.205238, 37.409473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167889, 30.968616, 37.898067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096172, 31.352247, 37.985725>,  <36.053143, 31.582426, 38.038322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096172, 31.352247, 37.985725>,  <36.167889, 30.968616, 37.898067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096172, 31.352247, 37.985725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181703, -0.186644, 0.965478,
		0.966871, 0.212917, -0.140804,
		-0.179287, 0.959078, 0.219149,
		36.042385, 31.639971, 38.051472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754894, 31.257507, 38.173382>,  <36.167889, 30.968616, 37.898067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754894, 31.257507, 38.173382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440304, 31.458822, 38.316582>,  <36.251549, 31.579611, 38.402500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440304, 31.458822, 38.316582>,  <36.754894, 31.257507, 38.173382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440304, 31.458822, 38.316582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253666, -0.265281, 0.930204,
		0.563128, 0.822393, 0.080969,
		-0.786473, 0.503285, 0.358000,
		36.204361, 31.609808, 38.423981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965748, 31.618240, 38.701912>,  <36.754894, 31.257507, 38.173382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965748, 31.618240, 38.701912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569275, 31.634745, 38.752281>,  <36.331390, 31.644648, 38.782505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.569275, 31.634745, 38.752281>,  <36.965748, 31.618240, 38.701912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569275, 31.634745, 38.752281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119788, -0.127344, 0.984599,
		0.056659, 0.991000, 0.121279,
		-0.991181, 0.041259, 0.125925,
		36.271919, 31.647121, 38.790058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829140, 32.031013, 39.323132>,  <36.965748, 31.618240, 38.701912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829140, 32.031013, 39.323132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499851, 31.808327, 39.278614>,  <36.302280, 31.674715, 39.251904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499851, 31.808327, 39.278614>,  <36.829140, 32.031013, 39.323132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499851, 31.808327, 39.278614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085945, -0.315978, 0.944866,
		-0.561184, 0.768264, 0.307965,
		-0.823216, -0.556712, -0.111293,
		36.252888, 31.641314, 39.245228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474098, 32.182938, 39.963940>,  <36.829140, 32.031013, 39.323132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474098, 32.182938, 39.963940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292912, 31.854559, 39.824871>,  <36.184200, 31.657532, 39.741428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292912, 31.854559, 39.824871>,  <36.474098, 32.182938, 39.963940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292912, 31.854559, 39.824871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133648, -0.448093, 0.883940,
		-0.881455, 0.353926, 0.312687,
		-0.452962, -0.820944, -0.347673,
		36.157024, 31.608276, 39.720570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981350, 32.017742, 40.458057>,  <36.474098, 32.182938, 39.963940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981350, 32.017742, 40.458057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080719, 31.682404, 40.263962>,  <36.140339, 31.481199, 40.147503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080719, 31.682404, 40.263962>,  <35.981350, 32.017742, 40.458057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080719, 31.682404, 40.263962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023446, -0.506001, 0.862214,
		-0.968368, -0.202815, -0.145357,
		0.248421, -0.838349, -0.485240,
		36.155247, 31.430899, 40.118389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649239, 31.598408, 40.806866>,  <35.981350, 32.017742, 40.458057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649239, 31.598408, 40.806866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885326, 31.347406, 40.603737>,  <36.026978, 31.196806, 40.481857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885326, 31.347406, 40.603737>,  <35.649239, 31.598408, 40.806866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885326, 31.347406, 40.603737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092283, -0.572509, 0.814689,
		-0.801954, -0.527705, -0.279995,
		0.590214, -0.627504, -0.507824,
		36.062389, 31.159155, 40.451389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344070, 30.899174, 40.721039>,  <35.649239, 31.598408, 40.806866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344070, 30.899174, 40.721039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733303, 30.809973, 40.697762>,  <35.966843, 30.756453, 40.683796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733303, 30.809973, 40.697762>,  <35.344070, 30.899174, 40.721039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733303, 30.809973, 40.697762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079314, -0.561107, 0.823935,
		-0.216393, -0.797138, -0.563689,
		0.973079, -0.223002, -0.058195,
		36.025227, 30.743073, 40.680302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423264, 30.171816, 40.893303>,  <35.344070, 30.899174, 40.721039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423264, 30.171816, 40.893303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779835, 30.345947, 40.943661>,  <35.993778, 30.450426, 40.973877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779835, 30.345947, 40.943661>,  <35.423264, 30.171816, 40.893303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779835, 30.345947, 40.943661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242698, -0.693236, 0.678617,
		0.382697, -0.574382, -0.723622,
		0.891426, 0.435326, 0.125898,
		36.047264, 30.476545, 40.981430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809525, 29.644640, 40.905060>,  <35.423264, 30.171816, 40.893303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809525, 29.644640, 40.905060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038334, 29.912533, 41.094479>,  <36.175621, 30.073269, 41.208130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038334, 29.912533, 41.094479>,  <35.809525, 29.644640, 40.905060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038334, 29.912533, 41.094479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147957, -0.652113, 0.743544,
		0.806782, -0.355260, -0.472115,
		0.572024, 0.669731, 0.473550,
		36.209942, 30.113453, 41.236542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201385, 29.220396, 41.315147>,  <35.809525, 29.644640, 40.905060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201385, 29.220396, 41.315147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306854, 29.558716, 41.500660>,  <36.370136, 29.761707, 41.611969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306854, 29.558716, 41.500660>,  <36.201385, 29.220396, 41.315147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306854, 29.558716, 41.500660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165074, -0.513273, 0.842200,
		0.950382, -0.145510, -0.274957,
		0.263676, 0.845800, 0.463785,
		36.385956, 29.812456, 41.639797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699974, 29.077723, 41.809887>,  <36.201385, 29.220396, 41.315147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699974, 29.077723, 41.809887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561401, 29.431412, 41.935192>,  <36.478256, 29.643625, 42.010376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561401, 29.431412, 41.935192>,  <36.699974, 29.077723, 41.809887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561401, 29.431412, 41.935192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120285, -0.289314, 0.949647,
		0.930330, 0.366672, -0.006130,
		-0.346436, 0.884222, 0.313262,
		36.457470, 29.696678, 42.029171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166290, 29.154610, 42.338589>,  <36.699974, 29.077723, 41.809887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166290, 29.154610, 42.338589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842197, 29.378431, 42.408360>,  <36.647743, 29.512724, 42.450222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842197, 29.378431, 42.408360>,  <37.166290, 29.154610, 42.338589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842197, 29.378431, 42.408360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091480, -0.173223, 0.980625,
		0.578929, 0.810488, 0.089162,
		-0.810230, 0.559556, 0.174427,
		36.599129, 29.546299, 42.460690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122799, 29.193371, 43.080322>,  <37.166290, 29.154610, 42.338589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122799, 29.193371, 43.080322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812424, 29.442169, 43.038303>,  <36.626198, 29.591448, 43.013092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812424, 29.442169, 43.038303>,  <37.122799, 29.193371, 43.080322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812424, 29.442169, 43.038303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108221, 0.032797, 0.993586,
		0.621452, 0.782333, 0.041865,
		-0.775942, 0.621997, -0.105047,
		36.579639, 29.628769, 43.006790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185658, 29.896208, 43.417099>,  <37.122799, 29.193371, 43.080322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185658, 29.896208, 43.417099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812042, 29.757881, 43.381367>,  <36.587872, 29.674885, 43.359928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812042, 29.757881, 43.381367>,  <37.185658, 29.896208, 43.417099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812042, 29.757881, 43.381367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126271, 0.085763, 0.988281,
		-0.334105, 0.934374, -0.123773,
		-0.934039, -0.345818, -0.089331,
		36.531830, 29.654135, 43.354568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735897, 30.344822, 43.781334>,  <37.185658, 29.896208, 43.417099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735897, 30.344822, 43.781334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516785, 30.011366, 43.753113>,  <36.385315, 29.811293, 43.736179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516785, 30.011366, 43.753113>,  <36.735897, 30.344822, 43.781334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516785, 30.011366, 43.753113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197218, 0.046715, 0.979246,
		-0.813042, 0.550330, -0.189999,
		-0.547784, -0.833640, -0.070554,
		36.352451, 29.761274, 43.731945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208000, 30.499805, 44.209774>,  <36.735897, 30.344822, 43.781334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208000, 30.499805, 44.209774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193321, 30.101215, 44.179600>,  <36.184513, 29.862061, 44.161495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193321, 30.101215, 44.179600>,  <36.208000, 30.499805, 44.209774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193321, 30.101215, 44.179600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273303, -0.062602, 0.959889,
		-0.961228, 0.055841, -0.270043,
		-0.036695, -0.996475, -0.075437,
		36.182312, 29.802273, 44.156967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500954, 30.305166, 44.458549>,  <36.208000, 30.499805, 44.209774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500954, 30.305166, 44.458549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751972, 29.996998, 44.503513>,  <35.902584, 29.812098, 44.530491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751972, 29.996998, 44.503513>,  <35.500954, 30.305166, 44.458549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751972, 29.996998, 44.503513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234318, -0.049206, 0.970914,
		-0.742481, -0.635634, -0.211403,
		0.627548, -0.770421, 0.112406,
		35.940235, 29.765871, 44.537235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193310, 29.741837, 44.828129>,  <35.500954, 30.305166, 44.458549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193310, 29.741837, 44.828129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583122, 29.670111, 44.882004>,  <35.817009, 29.627075, 44.914330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583122, 29.670111, 44.882004>,  <35.193310, 29.741837, 44.828129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583122, 29.670111, 44.882004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165614, -0.170455, 0.971348,
		-0.151201, -0.968916, -0.195808,
		0.974531, -0.179297, 0.134694,
		35.875481, 29.616316, 44.922409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227997, 29.115423, 45.267200>,  <35.193310, 29.741837, 44.828129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227997, 29.115423, 45.267200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577301, 29.310131, 45.275940>,  <35.786884, 29.426956, 45.281185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577301, 29.310131, 45.275940>,  <35.227997, 29.115423, 45.267200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577301, 29.310131, 45.275940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014087, -0.070045, 0.997444,
		0.487055, -0.870718, -0.068024,
		0.873258, 0.486769, 0.021849,
		35.839279, 29.456161, 45.282494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677166, 28.778292, 45.603325>,  <35.227997, 29.115423, 45.267200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677166, 28.778292, 45.603325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830570, 29.145597, 45.642738>,  <35.922611, 29.365982, 45.666386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830570, 29.145597, 45.642738>,  <35.677166, 28.778292, 45.603325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830570, 29.145597, 45.642738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181021, -0.029880, 0.983025,
		0.905623, -0.394835, 0.154767,
		0.383509, 0.918266, 0.098533,
		35.945621, 29.421078, 45.672298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166317, 28.732874, 46.181980>,  <35.677166, 28.778292, 45.603325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166317, 28.732874, 46.181980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110424, 29.126263, 46.135925>,  <36.076889, 29.362295, 46.108292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110424, 29.126263, 46.135925>,  <36.166317, 28.732874, 46.181980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110424, 29.126263, 46.135925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031246, 0.120596, 0.992210,
		0.989695, 0.135051, -0.047581,
		-0.139737, 0.983472, -0.115134,
		36.068504, 29.421305, 46.101387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778080, 29.151049, 46.523190>,  <36.166317, 28.732874, 46.181980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778080, 29.151049, 46.523190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458351, 29.386866, 46.476662>,  <36.266514, 29.528355, 46.448746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458351, 29.386866, 46.476662>,  <36.778080, 29.151049, 46.523190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458351, 29.386866, 46.476662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039569, 0.141509, 0.989146,
		0.599602, 0.795246, -0.089783,
		-0.799319, 0.589541, -0.116317,
		36.218555, 29.563728, 46.441765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368946, 29.609884, 46.304070>,  <36.778080, 29.151049, 46.523190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368946, 29.609884, 46.304070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749680, 29.648605, 46.420441>,  <37.978119, 29.671839, 46.490261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749680, 29.648605, 46.420441>,  <37.368946, 29.609884, 46.304070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749680, 29.648605, 46.420441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295287, -0.033981, -0.954804,
		-0.082543, 0.994723, -0.060930,
		0.951836, 0.096804, 0.290924,
		38.035229, 29.677647, 46.507717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723560, 30.024410, 45.843777>,  <37.368946, 29.609884, 46.304070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723560, 30.024410, 45.843777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043743, 29.875919, 46.032013>,  <38.235855, 29.786825, 46.144955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043743, 29.875919, 46.032013>,  <37.723560, 30.024410, 45.843777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043743, 29.875919, 46.032013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517839, 0.032936, -0.854844,
		0.301843, 0.927958, 0.218600,
		0.800459, -0.371228, 0.470591,
		38.283882, 29.764551, 46.173191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255405, 30.546009, 45.753437>,  <37.723560, 30.024410, 45.843777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255405, 30.546009, 45.753437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409489, 30.180824, 45.807281>,  <38.501938, 29.961714, 45.839588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409489, 30.180824, 45.807281>,  <38.255405, 30.546009, 45.753437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409489, 30.180824, 45.807281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463493, 0.065265, -0.883694,
		0.797992, 0.402796, 0.448291,
		0.385205, -0.912960, 0.134612,
		38.525051, 29.906937, 45.847664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933167, 30.644989, 45.466423>,  <38.255405, 30.546009, 45.753437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933167, 30.644989, 45.466423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878902, 30.248709, 45.470600>,  <38.846344, 30.010941, 45.473106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878902, 30.248709, 45.470600>,  <38.933167, 30.644989, 45.466423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878902, 30.248709, 45.470600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617602, -0.092802, -0.780997,
		0.774704, -0.099496, 0.624448,
		-0.135656, -0.990701, 0.010445,
		38.838207, 29.951498, 45.473732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574852, 30.406496, 45.233120>,  <38.933167, 30.644989, 45.466423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574852, 30.406496, 45.233120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322269, 30.097519, 45.205997>,  <39.170719, 29.912132, 45.189724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322269, 30.097519, 45.205997>,  <39.574852, 30.406496, 45.233120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322269, 30.097519, 45.205997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379498, -0.231597, -0.895737,
		0.676202, -0.591349, 0.439383,
		-0.631453, -0.772444, -0.067810,
		39.132835, 29.865786, 45.185654>
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
