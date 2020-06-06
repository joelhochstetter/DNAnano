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
	<24.045147, 34.744045, 34.912189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319176, 34.981747, 35.080734>,  <24.483593, 35.124367, 35.181862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.319176, 34.981747, 35.080734>,  <24.045147, 34.744045, 34.912189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.319176, 34.981747, 35.080734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703674, -0.390173, -0.593808,
		-0.188466, 0.703302, -0.685454,
		0.685072, 0.594249, 0.421361,
		24.524696, 35.160023, 35.207142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322128, 35.178490, 34.425354>,  <24.045147, 34.744045, 34.912189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322128, 35.178490, 34.425354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583736, 35.142700, 34.725822>,  <24.740702, 35.121227, 34.906101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583736, 35.142700, 34.725822>,  <24.322128, 35.178490, 34.425354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583736, 35.142700, 34.725822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633892, -0.477095, -0.608738,
		0.412843, 0.874285, -0.255314,
		0.654020, -0.089472, 0.751168,
		24.779942, 35.115860, 34.951172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051819, 35.372208, 34.187653>,  <24.322128, 35.178490, 34.425354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051819, 35.372208, 34.187653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077745, 35.143917, 34.515083>,  <25.093302, 35.006943, 34.711544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.077745, 35.143917, 34.515083>,  <25.051819, 35.372208, 34.187653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.077745, 35.143917, 34.515083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696554, -0.561525, -0.446656,
		0.714570, 0.599138, 0.361141,
		0.064819, -0.570722, 0.818581,
		25.097191, 34.972702, 34.760658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662121, 35.440624, 34.511402>,  <25.051819, 35.372208, 34.187653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662121, 35.440624, 34.511402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508432, 35.074432, 34.559196>,  <25.416220, 34.854717, 34.587872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508432, 35.074432, 34.559196>,  <25.662121, 35.440624, 34.511402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508432, 35.074432, 34.559196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773006, -0.389758, -0.500550,
		0.504811, -0.099962, 0.857422,
		-0.384223, -0.915476, 0.119483,
		25.393166, 34.799789, 34.595043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243189, 34.948956, 34.653942>,  <25.662121, 35.440624, 34.511402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243189, 34.948956, 34.653942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934189, 34.769512, 34.474163>,  <25.748789, 34.661846, 34.366295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934189, 34.769512, 34.474163>,  <26.243189, 34.948956, 34.653942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934189, 34.769512, 34.474163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621557, -0.389209, -0.679841,
		0.130053, -0.804531, 0.579497,
		-0.772498, -0.448606, -0.449444,
		25.702440, 34.634930, 34.339329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393513, 34.226978, 34.462135>,  <26.243189, 34.948956, 34.653942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393513, 34.226978, 34.462135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127722, 34.383736, 34.207611>,  <25.968246, 34.477791, 34.054897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127722, 34.383736, 34.207611>,  <26.393513, 34.226978, 34.462135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127722, 34.383736, 34.207611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494112, -0.408389, -0.767510,
		-0.560646, -0.824399, 0.077724,
		-0.664477, 0.391897, -0.636307,
		25.928379, 34.501305, 34.016720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542225, 34.382748, 33.650639>,  <26.393513, 34.226978, 34.462135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542225, 34.382748, 33.650639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439856, 34.488041, 33.278572>,  <26.378433, 34.551216, 33.055332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439856, 34.488041, 33.278572>,  <26.542225, 34.382748, 33.650639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439856, 34.488041, 33.278572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525667, -0.845413, -0.094614,
		-0.811281, 0.464745, 0.354733,
		-0.255924, 0.263229, -0.930168,
		26.363079, 34.567009, 32.999523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332897, 34.264816, 33.627548>,  <26.542225, 34.382748, 33.650639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332897, 34.264816, 33.627548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664145, 34.060551, 33.720024>,  <27.862892, 33.937992, 33.775509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.664145, 34.060551, 33.720024>,  <27.332897, 34.264816, 33.627548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664145, 34.060551, 33.720024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052757, -0.339598, -0.939090,
		0.558066, 0.789874, -0.254286,
		0.828118, -0.510659, 0.231189,
		27.912580, 33.907352, 33.789379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999607, 34.388451, 33.163639>,  <27.332897, 34.264816, 33.627548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999607, 34.388451, 33.163639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030195, 34.028675, 33.335762>,  <28.048548, 33.812809, 33.439037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030195, 34.028675, 33.335762>,  <27.999607, 34.388451, 33.163639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030195, 34.028675, 33.335762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011338, -0.432327, -0.901646,
		0.997008, 0.064070, -0.043258,
		0.076470, -0.899438, 0.430307,
		28.053137, 33.758842, 33.464855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172583, 34.043011, 32.687481>,  <27.999607, 34.388451, 33.163639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172583, 34.043011, 32.687481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094084, 33.736427, 32.932114>,  <28.046986, 33.552479, 33.078896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094084, 33.736427, 32.932114>,  <28.172583, 34.043011, 32.687481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094084, 33.736427, 32.932114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068641, -0.611445, -0.788304,
		0.978149, -0.196681, 0.067383,
		-0.196246, -0.766454, 0.611585,
		28.035210, 33.506493, 33.115589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636314, 33.507744, 32.513409>,  <28.172583, 34.043011, 32.687481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636314, 33.507744, 32.513409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327133, 33.342480, 32.706009>,  <28.141624, 33.243320, 32.821568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327133, 33.342480, 32.706009>,  <28.636314, 33.507744, 32.513409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327133, 33.342480, 32.706009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025024, -0.738464, -0.673829,
		0.633969, -0.532888, 0.560459,
		-0.772954, -0.413162, 0.481498,
		28.095247, 33.218533, 32.850460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733946, 32.685970, 32.473259>,  <28.636314, 33.507744, 32.513409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733946, 32.685970, 32.473259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350697, 32.782177, 32.535419>,  <28.120747, 32.839901, 32.572716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350697, 32.782177, 32.535419>,  <28.733946, 32.685970, 32.473259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350697, 32.782177, 32.535419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275687, -0.628051, -0.727701,
		-0.077429, -0.740069, 0.668058,
		-0.958124, 0.240520, 0.155398,
		28.063259, 32.854332, 32.582039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367876, 32.082066, 32.483425>,  <28.733946, 32.685970, 32.473259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367876, 32.082066, 32.483425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070948, 32.343628, 32.424953>,  <27.892792, 32.500565, 32.389870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070948, 32.343628, 32.424953>,  <28.367876, 32.082066, 32.483425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070948, 32.343628, 32.424953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327635, -0.544531, -0.772102,
		-0.584482, -0.525252, 0.618459,
		-0.742318, 0.653909, -0.146177,
		27.848251, 32.539799, 32.381100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723387, 31.727705, 32.420719>,  <28.367876, 32.082066, 32.483425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723387, 31.727705, 32.420719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669432, 32.066063, 32.214314>,  <27.637058, 32.269077, 32.090469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669432, 32.066063, 32.214314>,  <27.723387, 31.727705, 32.420719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669432, 32.066063, 32.214314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258772, -0.532772, -0.805723,
		-0.956474, 0.024848, 0.290758,
		-0.134888, 0.845894, -0.516013,
		27.628965, 32.319832, 32.059509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013309, 31.658436, 32.137089>,  <27.723387, 31.727705, 32.420719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013309, 31.658436, 32.137089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190802, 31.927471, 31.900198>,  <27.297297, 32.088890, 31.758064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190802, 31.927471, 31.900198>,  <27.013309, 31.658436, 32.137089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190802, 31.927471, 31.900198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456976, -0.398654, -0.795140,
		-0.770894, 0.623460, 0.130461,
		0.443729, 0.672587, -0.592226,
		27.323921, 32.129246, 31.722530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484764, 31.878136, 31.726578>,  <27.013309, 31.658436, 32.137089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484764, 31.878136, 31.726578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817678, 31.978060, 31.528631>,  <27.017427, 32.038013, 31.409864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817678, 31.978060, 31.528631>,  <26.484764, 31.878136, 31.726578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817678, 31.978060, 31.528631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430260, -0.271770, -0.860824,
		-0.349533, 0.929374, -0.118707,
		0.832288, 0.249811, -0.494865,
		27.067366, 32.053001, 31.380171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210970, 32.118618, 31.098557>,  <26.484764, 31.878136, 31.726578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210970, 32.118618, 31.098557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597706, 32.054947, 31.018669>,  <26.829746, 32.016747, 30.970737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597706, 32.054947, 31.018669>,  <26.210970, 32.118618, 31.098557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597706, 32.054947, 31.018669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249326, -0.418914, -0.873125,
		0.055314, 0.893966, -0.444708,
		0.966839, -0.159174, -0.199717,
		26.887758, 32.007195, 30.958754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412815, 32.241371, 30.412067>,  <26.210970, 32.118618, 31.098557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412815, 32.241371, 30.412067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716925, 31.989956, 30.477711>,  <26.899389, 31.839108, 30.517096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716925, 31.989956, 30.477711>,  <26.412815, 32.241371, 30.412067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716925, 31.989956, 30.477711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232631, -0.499303, -0.834613,
		0.606521, 0.596357, -0.525823,
		0.760273, -0.628534, 0.164107,
		26.945007, 31.801395, 30.526943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768984, 32.239452, 29.797880>,  <26.412815, 32.241371, 30.412067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768984, 32.239452, 29.797880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876326, 31.902639, 29.985054>,  <26.940731, 31.700550, 30.097359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876326, 31.902639, 29.985054>,  <26.768984, 32.239452, 29.797880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876326, 31.902639, 29.985054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217707, -0.526195, -0.822023,
		0.938398, 0.118719, -0.324523,
		0.268352, -0.842036, 0.467934,
		26.956831, 31.650028, 30.125435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152763, 31.935265, 29.286976>,  <26.768984, 32.239452, 29.797880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152763, 31.935265, 29.286976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044006, 31.647055, 29.542135>,  <26.978752, 31.474129, 29.695230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044006, 31.647055, 29.542135>,  <27.152763, 31.935265, 29.286976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044006, 31.647055, 29.542135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179157, -0.613383, -0.769197,
		0.945503, -0.323425, 0.037688,
		-0.271894, -0.720526, 0.637899,
		26.962439, 31.430897, 29.733505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563530, 31.423323, 29.059978>,  <27.152763, 31.935265, 29.286976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563530, 31.423323, 29.059978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285221, 31.259136, 29.295748>,  <27.118237, 31.160625, 29.437210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.285221, 31.259136, 29.295748>,  <27.563530, 31.423323, 29.059978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.285221, 31.259136, 29.295748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177188, -0.697177, -0.694658,
		0.696066, -0.587761, 0.412346,
		-0.695771, -0.410464, 0.589425,
		27.076490, 31.135998, 29.472576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697784, 30.747768, 28.995932>,  <27.563530, 31.423323, 29.059978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697784, 30.747768, 28.995932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326862, 30.765375, 29.144613>,  <27.104309, 30.775938, 29.233822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326862, 30.765375, 29.144613>,  <27.697784, 30.747768, 28.995932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326862, 30.765375, 29.144613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285856, -0.724366, -0.627360,
		0.241637, -0.688009, 0.684292,
		-0.927307, 0.044015, 0.371705,
		27.048670, 30.778580, 29.256124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469707, 30.046364, 29.281570>,  <27.697784, 30.747768, 28.995932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469707, 30.046364, 29.281570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146269, 30.248028, 29.160250>,  <26.952206, 30.369026, 29.087458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146269, 30.248028, 29.160250>,  <27.469707, 30.046364, 29.281570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146269, 30.248028, 29.160250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238668, -0.752249, -0.614132,
		-0.537777, -0.424199, 0.728595,
		-0.808600, 0.504159, -0.303300,
		26.903688, 30.399275, 29.069260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870256, 29.496908, 29.209572>,  <27.469707, 30.046364, 29.281570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870256, 29.496908, 29.209572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730408, 29.810984, 29.005123>,  <26.646500, 29.999430, 28.882454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730408, 29.810984, 29.005123>,  <26.870256, 29.496908, 29.209572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730408, 29.810984, 29.005123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423657, -0.619083, -0.661250,
		-0.835632, -0.014647, 0.549095,
		-0.349620, 0.785189, -0.511120,
		26.625523, 30.046541, 28.851788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162884, 29.279289, 29.044312>,  <26.870256, 29.496908, 29.209572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162884, 29.279289, 29.044312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276321, 29.578005, 28.803684>,  <26.344385, 29.757235, 28.659307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276321, 29.578005, 28.803684>,  <26.162884, 29.279289, 29.044312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276321, 29.578005, 28.803684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300979, -0.526304, -0.795246,
		-0.910486, 0.406588, 0.075509,
		0.283596, 0.746787, -0.601567,
		26.361401, 29.802040, 28.623215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584139, 29.583057, 28.694515>,  <26.162884, 29.279289, 29.044312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584139, 29.583057, 28.694515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911152, 29.634096, 28.469889>,  <26.107361, 29.664721, 28.335114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911152, 29.634096, 28.469889>,  <25.584139, 29.583057, 28.694515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911152, 29.634096, 28.469889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455249, -0.454003, -0.765917,
		-0.352682, 0.881816, -0.313074,
		0.817535, 0.127599, -0.561565,
		26.156412, 29.672377, 28.301418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.556438, 30.079895, 28.069572>,  <25.584139, 29.583057, 28.694515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.556438, 30.079895, 28.069572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796997, 29.774309, 27.976040>,  <25.941332, 29.590958, 27.919920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796997, 29.774309, 27.976040>,  <25.556438, 30.079895, 28.069572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796997, 29.774309, 27.976040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660227, -0.310402, -0.683923,
		0.449913, 0.565691, -0.691066,
		0.601397, -0.763966, -0.233831,
		25.977417, 29.545118, 27.905891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815973, 30.111273, 27.380127>,  <25.556438, 30.079895, 28.069572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815973, 30.111273, 27.380127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765596, 29.731213, 27.494217>,  <25.735371, 29.503176, 27.562672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.765596, 29.731213, 27.494217>,  <25.815973, 30.111273, 27.380127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.765596, 29.731213, 27.494217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700363, -0.118467, -0.703887,
		0.702588, -0.288409, -0.650530,
		-0.125941, -0.950150, 0.285225,
		25.727814, 29.446167, 27.579784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438789, 30.125431, 26.951611>,  <25.815973, 30.111273, 27.380127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438789, 30.125431, 26.951611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817129, 30.038593, 27.048143>,  <27.044132, 29.986490, 27.106062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817129, 30.038593, 27.048143>,  <26.438789, 30.125431, 26.951611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817129, 30.038593, 27.048143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235741, -0.970481, 0.050919,
		0.223152, -0.105054, -0.969106,
		0.945848, -0.217095, 0.241331,
		27.100883, 29.973465, 27.120543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711565, 29.552912, 26.644407>,  <26.438789, 30.125431, 26.951611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711565, 29.552912, 26.644407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944611, 29.541689, 26.969313>,  <27.084438, 29.534956, 27.164257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944611, 29.541689, 26.969313>,  <26.711565, 29.552912, 26.644407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944611, 29.541689, 26.969313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335731, -0.918459, 0.209087,
		0.740166, -0.394520, -0.544526,
		0.582613, -0.028055, 0.812265,
		27.119394, 29.533272, 27.212992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131762, 29.037933, 26.632935>,  <26.711565, 29.552912, 26.644407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131762, 29.037933, 26.632935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032042, 29.124901, 27.010416>,  <26.972210, 29.177082, 27.236904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032042, 29.124901, 27.010416>,  <27.131762, 29.037933, 26.632935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032042, 29.124901, 27.010416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265242, -0.952539, 0.149384,
		0.931394, -0.213069, 0.295138,
		-0.249301, 0.217419, 0.943705,
		26.957251, 29.190126, 27.293528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425974, 28.586834, 27.203453>,  <27.131762, 29.037933, 26.632935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425974, 28.586834, 27.203453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066828, 28.741556, 27.287563>,  <26.851339, 28.834391, 27.338030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066828, 28.741556, 27.287563>,  <27.425974, 28.586834, 27.203453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066828, 28.741556, 27.287563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389994, -0.920396, 0.027839,
		0.204307, -0.057011, 0.977245,
		-0.897866, 0.386808, 0.210278,
		26.797468, 28.857599, 27.350647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124685, 28.728848, 27.436821>,  <27.425974, 28.586834, 27.203453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124685, 28.728848, 27.436821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297558, 28.713459, 27.076435>,  <28.401281, 28.704226, 26.860203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297558, 28.713459, 27.076435>,  <28.124685, 28.728848, 27.436821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297558, 28.713459, 27.076435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188976, 0.980770, 0.048773,
		0.881763, -0.191340, 0.431142,
		0.432183, -0.038469, -0.900965,
		28.427214, 28.701918, 26.806145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.804237, 28.962057, 27.346947>,  <28.124685, 28.728848, 27.436821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.804237, 28.962057, 27.346947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657936, 29.019997, 26.979198>,  <28.570156, 29.054760, 26.758549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.657936, 29.019997, 26.979198>,  <28.804237, 28.962057, 27.346947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657936, 29.019997, 26.979198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303727, 0.952311, 0.029208,
		0.879758, -0.268555, -0.392307,
		-0.365754, 0.144850, -0.919371,
		28.548210, 29.063452, 26.703386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265263, 29.281807, 26.832766>,  <28.804237, 28.962057, 27.346947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265263, 29.281807, 26.832766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900642, 29.406464, 26.725466>,  <28.681871, 29.481258, 26.661085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900642, 29.406464, 26.725466>,  <29.265263, 29.281807, 26.832766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900642, 29.406464, 26.725466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248691, 0.937368, 0.243915,
		0.327464, 0.155628, -0.931959,
		-0.911548, 0.311643, -0.268251,
		28.627178, 29.499956, 26.644991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644125, 29.876951, 27.065458>,  <29.265263, 29.281807, 26.832766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644125, 29.876951, 27.065458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810171, 29.887709, 26.701710>,  <29.909798, 29.894163, 26.483461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810171, 29.887709, 26.701710>,  <29.644125, 29.876951, 27.065458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810171, 29.887709, 26.701710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140086, 0.989532, -0.034685,
		0.898920, 0.141788, 0.414535,
		0.415113, 0.026891, -0.909372,
		29.934706, 29.895777, 26.428898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777672, 29.978647, 27.883669>,  <29.644125, 29.876951, 27.065458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777672, 29.978647, 27.883669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612438, 30.289745, 27.694157>,  <29.513298, 30.476404, 27.580448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612438, 30.289745, 27.694157>,  <29.777672, 29.978647, 27.883669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612438, 30.289745, 27.694157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003772, 0.518778, 0.854901,
		0.910685, 0.354934, -0.211365,
		-0.413085, 0.777748, -0.473782,
		29.488512, 30.523069, 27.552023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124426, 30.667351, 27.962648>,  <29.777672, 29.978647, 27.883669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124426, 30.667351, 27.962648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733372, 30.738140, 27.917194>,  <29.498739, 30.780613, 27.889923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.733372, 30.738140, 27.917194>,  <30.124426, 30.667351, 27.962648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.733372, 30.738140, 27.917194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000910, 0.536740, 0.843747,
		0.210313, 0.824979, -0.524574,
		-0.977634, 0.176974, -0.113634,
		29.440083, 30.791233, 27.883104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090504, 31.409967, 28.039171>,  <30.124426, 30.667351, 27.962648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090504, 31.409967, 28.039171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757975, 31.207649, 28.131321>,  <29.558456, 31.086258, 28.186611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757975, 31.207649, 28.131321>,  <30.090504, 31.409967, 28.039171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757975, 31.207649, 28.131321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044753, 0.474071, 0.879349,
		-0.553986, 0.720712, -0.416741,
		-0.831322, -0.505797, 0.230375,
		29.508577, 31.055910, 28.200434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608847, 31.933655, 28.235121>,  <30.090504, 31.409967, 28.039171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608847, 31.933655, 28.235121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452158, 31.592949, 28.374289>,  <29.358145, 31.388525, 28.457788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452158, 31.592949, 28.374289>,  <29.608847, 31.933655, 28.235121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452158, 31.592949, 28.374289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222820, 0.454703, 0.862320,
		-0.892696, 0.260266, -0.367907,
		-0.391721, -0.851767, 0.347919,
		29.334642, 31.337420, 28.478664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857912, 32.025871, 28.450951>,  <29.608847, 31.933655, 28.235121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857912, 32.025871, 28.450951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031769, 31.736906, 28.666063>,  <29.136084, 31.563528, 28.795132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031769, 31.736906, 28.666063>,  <28.857912, 32.025871, 28.450951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031769, 31.736906, 28.666063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126331, 0.542328, 0.830615,
		-0.891699, -0.428958, 0.144456,
		0.434642, -0.722409, 0.537784,
		29.162161, 31.520184, 28.827398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663582, 32.234562, 29.045879>,  <28.857912, 32.025871, 28.450951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663582, 32.234562, 29.045879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938969, 31.953785, 29.118853>,  <29.104200, 31.785318, 29.162638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938969, 31.953785, 29.118853>,  <28.663582, 32.234562, 29.045879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938969, 31.953785, 29.118853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175251, 0.405098, 0.897320,
		-0.703775, -0.585804, 0.401913,
		0.688468, -0.701947, 0.182435,
		29.145510, 31.743200, 29.173584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611132, 32.054684, 29.708733>,  <28.663582, 32.234562, 29.045879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611132, 32.054684, 29.708733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981409, 31.915813, 29.648655>,  <29.203575, 31.832491, 29.612608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981409, 31.915813, 29.648655>,  <28.611132, 32.054684, 29.708733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981409, 31.915813, 29.648655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292444, 0.404986, 0.866292,
		-0.239928, -0.845846, 0.476423,
		0.925695, -0.347175, -0.150195,
		29.259117, 31.811661, 29.603596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773352, 31.741016, 30.290434>,  <28.611132, 32.054684, 29.708733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773352, 31.741016, 30.290434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107151, 31.836447, 30.091761>,  <29.307430, 31.893705, 29.972557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107151, 31.836447, 30.091761>,  <28.773352, 31.741016, 30.290434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107151, 31.836447, 30.091761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320858, 0.522417, 0.790019,
		0.447953, -0.818636, 0.359408,
		0.834499, 0.238572, -0.496684,
		29.357500, 31.908020, 29.942755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420317, 31.457170, 30.674120>,  <28.773352, 31.741016, 30.290434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420317, 31.457170, 30.674120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524019, 31.767330, 30.443802>,  <29.586241, 31.953426, 30.305611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524019, 31.767330, 30.443802>,  <29.420317, 31.457170, 30.674120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524019, 31.767330, 30.443802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436974, 0.437495, 0.785908,
		0.861301, -0.455360, -0.225406,
		0.259257, 0.775401, -0.575795,
		29.601797, 31.999950, 30.271063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061871, 31.583168, 30.991800>,  <29.420317, 31.457170, 30.674120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061871, 31.583168, 30.991800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001200, 31.904190, 30.761011>,  <29.964796, 32.096806, 30.622538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001200, 31.904190, 30.761011>,  <30.061871, 31.583168, 30.991800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001200, 31.904190, 30.761011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426353, 0.579752, 0.694343,
		0.891750, -0.140677, -0.430108,
		-0.151678, 0.802557, -0.576971,
		29.955696, 32.144958, 30.587919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744766, 31.978029, 30.788275>,  <30.061871, 31.583168, 30.991800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744766, 31.978029, 30.788275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436508, 32.232868, 30.782415>,  <30.251553, 32.385773, 30.778900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436508, 32.232868, 30.782415>,  <30.744766, 31.978029, 30.788275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436508, 32.232868, 30.782415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445117, 0.554591, 0.703065,
		0.456044, 0.535293, -0.710975,
		-0.770646, 0.637095, -0.014650,
		30.205315, 32.423996, 30.778021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979235, 32.688202, 30.883257>,  <30.744766, 31.978029, 30.788275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979235, 32.688202, 30.883257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594168, 32.740719, 30.977940>,  <30.363127, 32.772228, 31.034750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594168, 32.740719, 30.977940>,  <30.979235, 32.688202, 30.883257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594168, 32.740719, 30.977940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270615, 0.447511, 0.852351,
		0.005980, 0.884588, -0.466335,
		-0.962669, 0.131294, 0.236707,
		30.305367, 32.780106, 31.048952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964039, 33.434181, 31.100077>,  <30.979235, 32.688202, 30.883257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964039, 33.434181, 31.100077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638710, 33.258041, 31.252178>,  <30.443512, 33.152355, 31.343439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638710, 33.258041, 31.252178>,  <30.964039, 33.434181, 31.100077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638710, 33.258041, 31.252178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284423, 0.269221, 0.920122,
		-0.507551, 0.856510, -0.093717,
		-0.813324, -0.440353, 0.380254,
		30.394712, 33.125935, 31.366255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840559, 33.846718, 31.573563>,  <30.964039, 33.434181, 31.100077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840559, 33.846718, 31.573563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612614, 33.539532, 31.690514>,  <30.475847, 33.355221, 31.760685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612614, 33.539532, 31.690514>,  <30.840559, 33.846718, 31.573563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612614, 33.539532, 31.690514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124565, 0.432421, 0.893026,
		-0.812244, 0.472482, -0.342082,
		-0.569862, -0.767967, 0.292377,
		30.441654, 33.309143, 31.778227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227474, 34.096809, 31.952633>,  <30.840559, 33.846718, 31.573563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227474, 34.096809, 31.952633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257627, 33.719212, 32.081123>,  <30.275719, 33.492653, 32.158218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257627, 33.719212, 32.081123>,  <30.227474, 34.096809, 31.952633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257627, 33.719212, 32.081123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004526, 0.322461, 0.946572,
		-0.997144, -0.069900, 0.028580,
		0.075381, -0.943998, 0.321224,
		30.280241, 33.436012, 32.177490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767939, 34.129047, 32.454723>,  <30.227474, 34.096809, 31.952633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767939, 34.129047, 32.454723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992086, 33.807125, 32.532970>,  <30.126575, 33.613972, 32.579918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992086, 33.807125, 32.532970>,  <29.767939, 34.129047, 32.454723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992086, 33.807125, 32.532970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030857, 0.215739, 0.975963,
		-0.827666, -0.552939, 0.096060,
		0.560372, -0.804808, 0.195622,
		30.160198, 33.565681, 32.591656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481972, 33.761127, 33.027412>,  <29.767939, 34.129047, 32.454723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481972, 33.761127, 33.027412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859838, 33.635162, 32.990665>,  <30.086557, 33.559586, 32.968616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859838, 33.635162, 32.990665>,  <29.481972, 33.761127, 33.027412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859838, 33.635162, 32.990665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170756, 0.232947, 0.957381,
		-0.280088, -0.920092, 0.273830,
		0.944665, -0.314909, -0.091866,
		30.143238, 33.540691, 32.963104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623377, 33.164494, 33.586750>,  <29.481972, 33.761127, 33.027412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623377, 33.164494, 33.586750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959728, 33.363632, 33.501831>,  <30.161539, 33.483116, 33.450878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959728, 33.363632, 33.501831>,  <29.623377, 33.164494, 33.586750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959728, 33.363632, 33.501831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061412, 0.301962, 0.951340,
		0.537725, -0.813001, 0.223341,
		0.840881, 0.497843, -0.212301,
		30.211992, 33.512985, 33.438141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039286, 33.084965, 34.104431>,  <29.623377, 33.164494, 33.586750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039286, 33.084965, 34.104431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218342, 33.403801, 33.942314>,  <30.325775, 33.595104, 33.845043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218342, 33.403801, 33.942314>,  <30.039286, 33.084965, 34.104431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218342, 33.403801, 33.942314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108123, 0.401669, 0.909380,
		0.887652, -0.450898, 0.093619,
		0.447641, 0.797090, -0.405295,
		30.352634, 33.642929, 33.820724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669519, 33.192051, 34.568565>,  <30.039286, 33.084965, 34.104431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669519, 33.192051, 34.568565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627792, 33.538738, 34.373459>,  <30.602757, 33.746750, 34.256393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627792, 33.538738, 34.373459>,  <30.669519, 33.192051, 34.568565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627792, 33.538738, 34.373459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068657, 0.495547, 0.865863,
		0.992171, 0.056839, -0.111201,
		-0.104320, 0.866719, -0.487765,
		30.596497, 33.798756, 34.227131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252230, 33.604630, 34.705177>,  <30.669519, 33.192051, 34.568565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252230, 33.604630, 34.705177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949316, 33.837955, 34.587696>,  <30.767567, 33.977951, 34.517208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949316, 33.837955, 34.587696>,  <31.252230, 33.604630, 34.705177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949316, 33.837955, 34.587696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067860, 0.517567, 0.852947,
		0.649548, 0.625994, -0.431530,
		-0.757286, 0.583314, -0.293704,
		30.722130, 34.012951, 34.499584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450974, 34.365379, 34.794617>,  <31.252230, 33.604630, 34.705177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450974, 34.365379, 34.794617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053345, 34.322094, 34.798767>,  <30.814768, 34.296124, 34.801258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053345, 34.322094, 34.798767>,  <31.450974, 34.365379, 34.794617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053345, 34.322094, 34.798767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026401, 0.332907, 0.942590,
		-0.105455, 0.936730, -0.333791,
		-0.994074, -0.108214, 0.010377,
		30.755123, 34.289631, 34.801880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005142, 34.367893, 35.417717>,  <31.450974, 34.365379, 34.794617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005142, 34.367893, 35.417717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243126, 34.682697, 35.352417>,  <32.385914, 34.871578, 35.313236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243126, 34.682697, 35.352417>,  <32.005142, 34.367893, 35.417717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243126, 34.682697, 35.352417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215842, 0.352086, 0.910740,
		0.774236, -0.506613, 0.379344,
		0.594954, 0.787006, -0.163249,
		32.421612, 34.918800, 35.303444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558632, 34.419159, 35.923733>,  <32.005142, 34.367893, 35.417717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558632, 34.419159, 35.923733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451538, 34.780239, 35.789005>,  <32.387280, 34.996887, 35.708168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451538, 34.780239, 35.789005>,  <32.558632, 34.419159, 35.923733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451538, 34.780239, 35.789005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134985, 0.310993, 0.940778,
		0.953989, 0.297348, 0.038586,
		-0.267739, 0.902700, -0.336822,
		32.371216, 35.051048, 35.687958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904556, 35.003883, 36.401745>,  <32.558632, 34.419159, 35.923733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904556, 35.003883, 36.401745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548637, 35.088028, 36.239754>,  <32.335087, 35.138515, 36.142559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548637, 35.088028, 36.239754>,  <32.904556, 35.003883, 36.401745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548637, 35.088028, 36.239754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247579, 0.522958, 0.815610,
		0.383356, 0.825993, -0.413247,
		-0.889799, 0.210358, -0.404978,
		32.281696, 35.151134, 36.118259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856533, 35.737026, 36.369419>,  <32.904556, 35.003883, 36.401745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856533, 35.737026, 36.369419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496140, 35.564175, 36.384838>,  <32.279903, 35.460464, 36.394089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496140, 35.564175, 36.384838>,  <32.856533, 35.737026, 36.369419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496140, 35.564175, 36.384838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237957, 0.566516, 0.788946,
		-0.362769, 0.701655, -0.613252,
		-0.900986, -0.432133, 0.038551,
		32.225845, 35.434536, 36.396404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323277, 36.341820, 36.277973>,  <32.856533, 35.737026, 36.369419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323277, 36.341820, 36.277973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203308, 36.039742, 36.511120>,  <32.131329, 35.858494, 36.651009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203308, 36.039742, 36.511120>,  <32.323277, 36.341820, 36.277973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203308, 36.039742, 36.511120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043746, 0.621238, 0.782400,
		-0.952960, 0.209161, -0.219359,
		-0.299922, -0.755192, 0.582865,
		32.113331, 35.813183, 36.685978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838774, 36.666981, 36.710991>,  <32.323277, 36.341820, 36.277973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838774, 36.666981, 36.710991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942055, 36.339897, 36.916782>,  <32.004025, 36.143646, 37.040257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942055, 36.339897, 36.916782>,  <31.838774, 36.666981, 36.710991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942055, 36.339897, 36.916782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155225, 0.560730, 0.813319,
		-0.953539, -0.130142, 0.271711,
		0.258203, -0.817707, 0.514476,
		32.019516, 36.094585, 37.071125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474812, 36.638508, 37.312809>,  <31.838774, 36.666981, 36.710991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474812, 36.638508, 37.312809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771727, 36.388180, 37.408607>,  <31.949875, 36.237984, 37.466087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771727, 36.388180, 37.408607>,  <31.474812, 36.638508, 37.312809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771727, 36.388180, 37.408607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017926, 0.338735, 0.940711,
		-0.669843, -0.702570, 0.240220,
		0.742286, -0.625823, 0.239493,
		31.994411, 36.200432, 37.480457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327362, 36.206417, 37.930672>,  <31.474812, 36.638508, 37.312809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327362, 36.206417, 37.930672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725523, 36.243431, 37.920803>,  <31.964420, 36.265640, 37.914883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725523, 36.243431, 37.920803>,  <31.327362, 36.206417, 37.930672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725523, 36.243431, 37.920803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006622, 0.323496, 0.946207,
		0.095538, -0.941694, 0.322622,
		0.995404, 0.092535, -0.024670,
		32.024143, 36.271191, 37.913403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626106, 36.125759, 38.610790>,  <31.327362, 36.206417, 37.930672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626106, 36.125759, 38.610790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943174, 36.285965, 38.426937>,  <32.133415, 36.382088, 38.316624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943174, 36.285965, 38.426937>,  <31.626106, 36.125759, 38.610790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943174, 36.285965, 38.426937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212739, 0.524818, 0.824202,
		0.571329, -0.751101, 0.330802,
		0.792670, 0.400516, -0.459632,
		32.180977, 36.406120, 38.289047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150417, 36.282143, 39.115540>,  <31.626106, 36.125759, 38.610790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150417, 36.282143, 39.115540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267532, 36.501450, 38.802189>,  <32.337803, 36.633034, 38.614178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267532, 36.501450, 38.802189>,  <32.150417, 36.282143, 39.115540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267532, 36.501450, 38.802189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460771, 0.636975, 0.618024,
		0.837833, -0.541906, -0.066129,
		0.292788, 0.548271, -0.783373,
		32.355370, 36.665932, 38.567177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877613, 36.242039, 39.149632>,  <32.150417, 36.282143, 39.115540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877613, 36.242039, 39.149632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782150, 36.562618, 38.930275>,  <32.724873, 36.754967, 38.798660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782150, 36.562618, 38.930275>,  <32.877613, 36.242039, 39.149632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782150, 36.562618, 38.930275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441842, 0.592483, 0.673602,
		0.864766, -0.081544, -0.495509,
		-0.238652, 0.801445, -0.548389,
		32.710556, 36.803051, 38.765759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501678, 36.519341, 39.035973>,  <32.877613, 36.242039, 39.149632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501678, 36.519341, 39.035973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223255, 36.801197, 38.980862>,  <33.056202, 36.970310, 38.947796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223255, 36.801197, 38.980862>,  <33.501678, 36.519341, 39.035973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223255, 36.801197, 38.980862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538029, 0.638965, 0.549771,
		0.475427, 0.308543, -0.823875,
		-0.696056, 0.704645, -0.137776,
		33.014439, 37.012592, 38.939529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902096, 37.144699, 39.036758>,  <33.501678, 36.519341, 39.035973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902096, 37.144699, 39.036758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534496, 37.299141, 39.068672>,  <33.313938, 37.391808, 39.087822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534496, 37.299141, 39.068672>,  <33.902096, 37.144699, 39.036758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534496, 37.299141, 39.068672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300018, 0.553560, 0.776892,
		0.255795, 0.737900, -0.624559,
		-0.918999, 0.386104, 0.079785,
		33.258797, 37.414970, 39.092609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016869, 37.867176, 39.158310>,  <33.902096, 37.144699, 39.036758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016869, 37.867176, 39.158310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641682, 37.792572, 39.275227>,  <33.416569, 37.747810, 39.345379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641682, 37.792572, 39.275227>,  <34.016869, 37.867176, 39.158310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641682, 37.792572, 39.275227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183508, 0.448232, 0.874879,
		-0.294187, 0.874245, -0.386200,
		-0.937965, -0.186507, 0.292295,
		33.360291, 37.736618, 39.362915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793087, 38.511497, 39.505527>,  <34.016869, 37.867176, 39.158310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793087, 38.511497, 39.505527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549889, 38.230335, 39.653183>,  <33.403969, 38.061638, 39.741776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549889, 38.230335, 39.653183>,  <33.793087, 38.511497, 39.505527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549889, 38.230335, 39.653183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014334, 0.474595, 0.880088,
		-0.793808, 0.529802, -0.298629,
		-0.608000, -0.702901, 0.369143,
		33.367489, 38.019466, 39.763927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392857, 38.852249, 40.047653>,  <33.793087, 38.511497, 39.505527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392857, 38.852249, 40.047653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387009, 38.459690, 40.124218>,  <33.383499, 38.224155, 40.170155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387009, 38.459690, 40.124218>,  <33.392857, 38.852249, 40.047653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387009, 38.459690, 40.124218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033003, 0.191797, 0.980880,
		-0.999348, 0.008020, -0.035192,
		-0.014617, -0.981402, 0.191408,
		33.382622, 38.165268, 40.181641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030640, 38.800610, 40.550720>,  <33.392857, 38.852249, 40.047653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030640, 38.800610, 40.550720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204708, 38.440525, 40.544525>,  <33.309147, 38.224472, 40.540810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204708, 38.440525, 40.544525>,  <33.030640, 38.800610, 40.550720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204708, 38.440525, 40.544525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008826, -0.021468, 0.999731,
		-0.900306, -0.434915, -0.017287,
		0.435169, -0.900216, -0.015489,
		33.335258, 38.170460, 40.539879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720226, 38.333389, 41.145550>,  <33.030640, 38.800610, 40.550720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720226, 38.333389, 41.145550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066364, 38.160126, 41.044716>,  <33.274048, 38.056168, 40.984215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066364, 38.160126, 41.044716>,  <32.720226, 38.333389, 41.145550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066364, 38.160126, 41.044716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107814, -0.330312, 0.937694,
		-0.489437, -0.838610, -0.239134,
		0.865348, -0.433160, -0.252081,
		33.325970, 38.030178, 40.969093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675682, 37.578098, 41.413963>,  <32.720226, 38.333389, 41.145550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675682, 37.578098, 41.413963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052322, 37.704372, 41.367077>,  <33.278305, 37.780136, 41.338943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052322, 37.704372, 41.367077>,  <32.675682, 37.578098, 41.413963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052322, 37.704372, 41.367077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152241, -0.088588, 0.984365,
		0.300365, -0.944720, -0.131474,
		0.941596, 0.315684, -0.117216,
		33.334801, 37.799076, 41.331913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041512, 37.210629, 41.914417>,  <32.675682, 37.578098, 41.413963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041512, 37.210629, 41.914417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287830, 37.512798, 41.824863>,  <33.435623, 37.694099, 41.771130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287830, 37.512798, 41.824863>,  <33.041512, 37.210629, 41.914417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287830, 37.512798, 41.824863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243837, 0.087486, 0.965862,
		0.749223, -0.649369, -0.130327,
		0.615799, 0.755425, -0.223886,
		33.472569, 37.739426, 41.757698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404278, 37.138962, 42.541100>,  <33.041512, 37.210629, 41.914417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404278, 37.138962, 42.541100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505951, 37.487362, 42.372932>,  <33.566956, 37.696400, 42.272034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505951, 37.487362, 42.372932>,  <33.404278, 37.138962, 42.541100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505951, 37.487362, 42.372932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186248, 0.382476, 0.904999,
		0.949053, -0.308341, -0.065001,
		0.254187, 0.870998, -0.420418,
		33.582207, 37.748661, 42.246807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992184, 37.283443, 42.924576>,  <33.404278, 37.138962, 42.541100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992184, 37.283443, 42.924576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835709, 37.623005, 42.782398>,  <33.741825, 37.826740, 42.697090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835709, 37.623005, 42.782398>,  <33.992184, 37.283443, 42.924576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835709, 37.623005, 42.782398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182731, 0.450176, 0.874043,
		0.901989, 0.276960, -0.331222,
		-0.391183, 0.848902, -0.355445,
		33.718353, 37.877674, 42.675766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417599, 37.822556, 43.159561>,  <33.992184, 37.283443, 42.924576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417599, 37.822556, 43.159561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085476, 38.020115, 43.056297>,  <33.886200, 38.138653, 42.994339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085476, 38.020115, 43.056297>,  <34.417599, 37.822556, 43.159561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085476, 38.020115, 43.056297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004644, 0.457084, 0.889411,
		0.557281, 0.739687, -0.377228,
		-0.830311, 0.493900, -0.258159,
		33.836384, 38.168285, 42.978851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655983, 38.479355, 43.391132>,  <34.417599, 37.822556, 43.159561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655983, 38.479355, 43.391132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258434, 38.442230, 43.367123>,  <34.019905, 38.419956, 43.352718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258434, 38.442230, 43.367123>,  <34.655983, 38.479355, 43.391132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258434, 38.442230, 43.367123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084036, 0.281750, 0.955801,
		-0.071796, 0.954989, -0.287823,
		-0.993873, -0.092810, -0.060025,
		33.960274, 38.414387, 43.349113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381554, 39.081081, 43.582134>,  <34.655983, 38.479355, 43.391132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381554, 39.081081, 43.582134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034313, 38.884335, 43.608868>,  <33.825970, 38.766285, 43.624908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034313, 38.884335, 43.608868>,  <34.381554, 39.081081, 43.582134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034313, 38.884335, 43.608868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094519, 0.295972, 0.950509,
		-0.487305, 0.818820, -0.303425,
		-0.868101, -0.491867, 0.066835,
		33.773884, 38.736774, 43.628918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769436, 39.548187, 43.815769>,  <34.381554, 39.081081, 43.582134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769436, 39.548187, 43.815769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682117, 39.169857, 43.911896>,  <33.629726, 38.942856, 43.969574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682117, 39.169857, 43.911896>,  <33.769436, 39.548187, 43.815769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682117, 39.169857, 43.911896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109244, 0.268394, 0.957095,
		-0.969749, 0.182673, -0.161915,
		-0.218293, -0.945830, 0.240319,
		33.616631, 38.886108, 43.983990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221825, 39.592445, 44.279728>,  <33.769436, 39.548187, 43.815769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221825, 39.592445, 44.279728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363869, 39.223331, 44.339554>,  <33.449097, 39.001865, 44.375450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363869, 39.223331, 44.339554>,  <33.221825, 39.592445, 44.279728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363869, 39.223331, 44.339554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062604, 0.183107, 0.981098,
		-0.932726, -0.339034, 0.122793,
		0.355110, -0.922783, 0.149564,
		33.470402, 38.946495, 44.384422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062450, 39.507130, 44.925621>,  <33.221825, 39.592445, 44.279728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062450, 39.507130, 44.925621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302979, 39.187580, 44.919773>,  <33.447296, 38.995850, 44.916264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302979, 39.187580, 44.919773>,  <33.062450, 39.507130, 44.925621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302979, 39.187580, 44.919773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013276, -0.028284, 0.999512,
		-0.798899, -0.600832, -0.027614,
		0.601319, -0.798875, -0.014620,
		33.483376, 38.947918, 44.915386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813156, 39.079239, 45.499847>,  <33.062450, 39.507130, 44.925621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813156, 39.079239, 45.499847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183174, 38.946430, 45.426029>,  <33.405186, 38.866745, 45.381741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183174, 38.946430, 45.426029>,  <32.813156, 39.079239, 45.499847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183174, 38.946430, 45.426029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151476, -0.123102, 0.980765,
		-0.348354, -0.935204, -0.063582,
		0.925043, -0.332022, -0.184544,
		33.460686, 38.846825, 45.370667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958759, 38.435024, 45.855984>,  <32.813156, 39.079239, 45.499847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958759, 38.435024, 45.855984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332340, 38.558128, 45.783310>,  <33.556488, 38.631992, 45.739704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332340, 38.558128, 45.783310>,  <32.958759, 38.435024, 45.855984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332340, 38.558128, 45.783310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277597, -0.304511, 0.911160,
		0.225098, -0.901418, -0.369834,
		0.933954, 0.307765, -0.181686,
		33.612526, 38.650459, 45.728806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430206, 37.887897, 46.016041>,  <32.958759, 38.435024, 45.855984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430206, 37.887897, 46.016041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637867, 38.229530, 46.028816>,  <33.762463, 38.434509, 46.036484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637867, 38.229530, 46.028816>,  <33.430206, 37.887897, 46.016041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637867, 38.229530, 46.028816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343277, -0.242592, 0.907364,
		0.782717, -0.460092, -0.419130,
		0.519149, 0.854087, 0.031942,
		33.793613, 38.485756, 46.038399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989937, 37.624710, 46.359077>,  <33.430206, 37.887897, 46.016041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989937, 37.624710, 46.359077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013641, 38.023762, 46.373100>,  <34.027863, 38.263191, 46.381516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013641, 38.023762, 46.373100>,  <33.989937, 37.624710, 46.359077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013641, 38.023762, 46.373100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275865, -0.050120, 0.959889,
		0.959368, -0.047211, -0.278180,
		0.059260, 0.997627, 0.035059,
		34.031418, 38.323051, 46.383617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703056, 37.785336, 46.502716>,  <33.989937, 37.624710, 46.359077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703056, 37.785336, 46.502716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516914, 38.123863, 46.606403>,  <34.405228, 38.326981, 46.668617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516914, 38.123863, 46.606403>,  <34.703056, 37.785336, 46.502716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516914, 38.123863, 46.606403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423986, -0.043940, 0.904602,
		0.776969, 0.530867, -0.338378,
		-0.465355, 0.846315, 0.259220,
		34.377308, 38.377758, 46.684170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216007, 38.199383, 46.798733>,  <34.703056, 37.785336, 46.502716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216007, 38.199383, 46.798733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851280, 38.280415, 46.941586>,  <34.632442, 38.329033, 47.027298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851280, 38.280415, 46.941586>,  <35.216007, 38.199383, 46.798733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851280, 38.280415, 46.941586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373354, 0.047135, 0.926491,
		0.170858, 0.978130, -0.118614,
		-0.911819, 0.202583, 0.357136,
		34.577736, 38.341190, 47.048725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332748, 38.650909, 47.338127>,  <35.216007, 38.199383, 46.798733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332748, 38.650909, 47.338127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956081, 38.544453, 47.420521>,  <34.730080, 38.480579, 47.469955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956081, 38.544453, 47.420521>,  <35.332748, 38.650909, 47.338127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956081, 38.544453, 47.420521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184274, 0.104409, 0.977314,
		-0.281607, 0.958264, -0.049277,
		-0.941669, -0.266138, 0.205985,
		34.673580, 38.464611, 47.482315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051640, 39.076027, 47.859657>,  <35.332748, 38.650909, 47.338127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051640, 39.076027, 47.859657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839130, 38.737156, 47.862419>,  <34.711624, 38.533833, 47.864079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839130, 38.737156, 47.862419>,  <35.051640, 39.076027, 47.859657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839130, 38.737156, 47.862419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095955, -0.052071, 0.994023,
		-0.841752, 0.528756, 0.108954,
		-0.531269, -0.847175, 0.006906,
		34.679749, 38.483002, 47.864491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589233, 39.209660, 48.424438>,  <35.051640, 39.076027, 47.859657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589233, 39.209660, 48.424438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615028, 38.818157, 48.346592>,  <34.630505, 38.583256, 48.299885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615028, 38.818157, 48.346592>,  <34.589233, 39.209660, 48.424438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615028, 38.818157, 48.346592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022074, -0.193571, 0.980838,
		-0.997674, -0.067551, 0.009122,
		0.064491, -0.978758, -0.194612,
		34.634377, 38.524529, 48.288208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246086, 38.997326, 48.976376>,  <34.589233, 39.209660, 48.424438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246086, 38.997326, 48.976376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427795, 38.663799, 48.850906>,  <34.536823, 38.463684, 48.775623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427795, 38.663799, 48.850906>,  <34.246086, 38.997326, 48.976376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427795, 38.663799, 48.850906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148751, -0.276162, 0.949530,
		-0.878354, -0.478008, -0.001423,
		0.454276, -0.833812, -0.313672,
		34.564079, 38.413654, 48.756805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989182, 38.461414, 49.416252>,  <34.246086, 38.997326, 48.976376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989182, 38.461414, 49.416252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340672, 38.324318, 49.283360>,  <34.551567, 38.242062, 49.203625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340672, 38.324318, 49.283360>,  <33.989182, 38.461414, 49.416252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340672, 38.324318, 49.283360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215882, -0.335403, 0.917006,
		-0.425723, -0.877517, -0.220736,
		0.878724, -0.342737, -0.332229,
		34.604290, 38.221497, 49.183689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148369, 37.797592, 49.711372>,  <33.989182, 38.461414, 49.416252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148369, 37.797592, 49.711372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517223, 37.905560, 49.600517>,  <34.738537, 37.970341, 49.534004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517223, 37.905560, 49.600517>,  <34.148369, 37.797592, 49.711372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517223, 37.905560, 49.600517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349857, -0.276079, 0.895199,
		0.165122, -0.922454, -0.349017,
		0.922136, 0.269923, -0.277140,
		34.793865, 37.986538, 49.517376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588196, 37.284126, 50.027534>,  <34.148369, 37.797592, 49.711372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588196, 37.284126, 50.027534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831493, 37.586651, 49.931179>,  <34.977470, 37.768166, 49.873363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831493, 37.586651, 49.931179>,  <34.588196, 37.284126, 50.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831493, 37.586651, 49.931179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504419, -0.133979, 0.853001,
		0.612862, -0.640343, -0.462991,
		0.608244, 0.756314, -0.240890,
		35.013966, 37.813545, 49.858913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311680, 36.892170, 50.031437>,  <34.588196, 37.284126, 50.027534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311680, 36.892170, 50.031437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307728, 37.289028, 50.081306>,  <35.305355, 37.527145, 50.111229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307728, 37.289028, 50.081306>,  <35.311680, 36.892170, 50.031437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307728, 37.289028, 50.081306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299908, -0.116002, 0.946889,
		0.953917, 0.046748, -0.296407,
		-0.009881, 0.992148, 0.124676,
		35.304764, 37.586674, 50.118710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900715, 36.985420, 50.457405>,  <35.311680, 36.892170, 50.031437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900715, 36.985420, 50.457405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685623, 37.319130, 50.506123>,  <35.556568, 37.519356, 50.535351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685623, 37.319130, 50.506123>,  <35.900715, 36.985420, 50.457405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685623, 37.319130, 50.506123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293041, 0.049491, 0.954818,
		0.790553, 0.549122, -0.271090,
		-0.537728, 0.834275, 0.121790,
		35.524303, 37.569412, 50.542660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387455, 37.372780, 50.802280>,  <35.900715, 36.985420, 50.457405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387455, 37.372780, 50.802280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021698, 37.524662, 50.858452>,  <35.802246, 37.615791, 50.892155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021698, 37.524662, 50.858452>,  <36.387455, 37.372780, 50.802280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021698, 37.524662, 50.858452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190768, 0.098188, 0.976712,
		0.357073, 0.919883, -0.162217,
		-0.914388, 0.379704, 0.140424,
		35.747383, 37.638573, 50.900578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557564, 37.873371, 51.207424>,  <36.387455, 37.372780, 50.802280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557564, 37.873371, 51.207424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161255, 37.834057, 51.244740>,  <35.923470, 37.810471, 51.267128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161255, 37.834057, 51.244740>,  <36.557564, 37.873371, 51.207424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161255, 37.834057, 51.244740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062351, 0.280543, 0.957814,
		-0.120307, 0.954796, -0.271828,
		-0.990777, -0.098283, 0.093284,
		35.864021, 37.804573, 51.272724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388744, 38.411293, 51.662014>,  <36.557564, 37.873371, 51.207424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388744, 38.411293, 51.662014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073833, 38.164753, 51.654915>,  <35.884888, 38.016830, 51.650654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.073833, 38.164753, 51.654915>,  <36.388744, 38.411293, 51.662014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073833, 38.164753, 51.654915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077835, 0.070786, 0.994450,
		-0.611672, 0.784285, -0.103701,
		-0.787273, -0.616349, -0.017747,
		35.837650, 37.979847, 51.649590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882248, 38.645519, 51.922112>,  <36.388744, 38.411293, 51.662014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882248, 38.645519, 51.922112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799213, 38.260536, 51.992058>,  <35.749393, 38.029545, 52.034027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799213, 38.260536, 51.992058>,  <35.882248, 38.645519, 51.922112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799213, 38.260536, 51.992058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290675, 0.231374, 0.928426,
		-0.934032, 0.141899, -0.327794,
		-0.207586, -0.962461, 0.174864,
		35.736938, 37.971798, 52.044518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584637, 38.500374, 52.617245>,  <35.882248, 38.645519, 51.922112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584637, 38.500374, 52.617245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623432, 38.110382, 52.537228>,  <35.646709, 37.876389, 52.489216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623432, 38.110382, 52.537228>,  <35.584637, 38.500374, 52.617245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623432, 38.110382, 52.537228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012419, -0.202159, 0.979274,
		-0.995208, -0.092495, -0.031715,
		0.096990, -0.974975, -0.200042,
		35.652531, 37.817890, 52.477215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074409, 37.978130, 52.907578>,  <35.584637, 38.500374, 52.617245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074409, 37.978130, 52.907578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400307, 37.755268, 52.843365>,  <35.595844, 37.621552, 52.804836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400307, 37.755268, 52.843365>,  <35.074409, 37.978130, 52.907578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400307, 37.755268, 52.843365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051657, -0.206007, 0.977186,
		-0.577515, -0.804449, -0.139063,
		0.814744, -0.557156, -0.160527,
		35.644730, 37.588120, 52.795208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954472, 37.284344, 53.037468>,  <35.074409, 37.978130, 52.907578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954472, 37.284344, 53.037468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337372, 37.366806, 53.118629>,  <35.567112, 37.416283, 53.167328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337372, 37.366806, 53.118629>,  <34.954472, 37.284344, 53.037468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337372, 37.366806, 53.118629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086901, -0.464100, 0.881510,
		0.275894, -0.861459, -0.426346,
		0.957252, 0.206153, 0.202904,
		35.624546, 37.428654, 53.179501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261566, 36.708183, 53.197872>,  <34.954472, 37.284344, 53.037468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261566, 36.708183, 53.197872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500332, 36.968857, 53.385067>,  <35.643589, 37.125259, 53.497383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500332, 36.968857, 53.385067>,  <35.261566, 36.708183, 53.197872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500332, 36.968857, 53.385067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050889, -0.612878, 0.788537,
		0.800691, -0.446872, -0.398998,
		0.596912, 0.651679, 0.467985,
		35.679405, 37.164360, 53.525463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859821, 36.373550, 53.528603>,  <35.261566, 36.708183, 53.197872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859821, 36.373550, 53.528603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796040, 36.715572, 53.725967>,  <35.757771, 36.920788, 53.844387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796040, 36.715572, 53.725967>,  <35.859821, 36.373550, 53.528603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796040, 36.715572, 53.725967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103326, -0.511513, 0.853040,
		0.981783, 0.085041, 0.169914,
		-0.159456, 0.855057, 0.493408,
		35.748203, 36.972088, 53.873989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384254, 36.095901, 53.975964>,  <35.859821, 36.373550, 53.528603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384254, 36.095901, 53.975964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309227, 35.721462, 54.094990>,  <36.264210, 35.496799, 54.166405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309227, 35.721462, 54.094990>,  <36.384254, 36.095901, 53.975964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309227, 35.721462, 54.094990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363236, -0.215363, -0.906465,
		0.912621, -0.278114, -0.299627,
		-0.187572, -0.936094, 0.297566,
		36.252956, 35.440636, 54.184261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508148, 35.632252, 53.345146>,  <36.384254, 36.095901, 53.975964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508148, 35.632252, 53.345146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327564, 35.392113, 53.609200>,  <36.219215, 35.248032, 53.767632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327564, 35.392113, 53.609200>,  <36.508148, 35.632252, 53.345146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327564, 35.392113, 53.609200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361483, -0.553335, -0.750433,
		0.815792, -0.577415, 0.032793,
		-0.451457, -0.600343, 0.660132,
		36.192127, 35.212009, 53.807240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795998, 34.852657, 53.377369>,  <36.508148, 35.632252, 53.345146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795998, 34.852657, 53.377369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407562, 34.911324, 53.452709>,  <36.174500, 34.946522, 53.497913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407562, 34.911324, 53.452709>,  <36.795998, 34.852657, 53.377369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407562, 34.911324, 53.452709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238719, -0.597868, -0.765224,
		0.000382, -0.788064, 0.615594,
		-0.971089, 0.146661, 0.188354,
		36.116234, 34.955322, 53.509216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352009, 34.208618, 53.511345>,  <36.795998, 34.852657, 53.377369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352009, 34.208618, 53.511345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153507, 34.490414, 53.308399>,  <36.034405, 34.659492, 53.186630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153507, 34.490414, 53.308399>,  <36.352009, 34.208618, 53.511345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153507, 34.490414, 53.308399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277951, -0.682572, -0.675898,
		-0.822479, -0.194396, 0.534545,
		-0.496257, 0.704489, -0.507369,
		36.004631, 34.701759, 53.156189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729195, 33.879330, 53.033077>,  <36.352009, 34.208618, 53.511345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729195, 33.879330, 53.033077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872486, 34.224781, 52.891197>,  <35.958462, 34.432053, 52.806068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872486, 34.224781, 52.891197>,  <35.729195, 33.879330, 53.033077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872486, 34.224781, 52.891197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028553, -0.369602, -0.928751,
		-0.933196, 0.342835, -0.107744,
		0.358231, 0.863631, -0.354700,
		35.979954, 34.483871, 52.784786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367828, 34.077152, 52.426582>,  <35.729195, 33.879330, 53.033077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367828, 34.077152, 52.426582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370060, 34.476376, 52.401764>,  <35.371399, 34.715908, 52.386875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370060, 34.476376, 52.401764>,  <35.367828, 34.077152, 52.426582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370060, 34.476376, 52.401764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318536, -0.060587, -0.945973,
		-0.947894, -0.014485, -0.318256,
		0.005580, 0.998058, -0.062044,
		35.371735, 34.775791, 52.383152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900131, 34.304192, 51.918011>,  <35.367828, 34.077152, 52.426582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900131, 34.304192, 51.918011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177265, 34.588608, 51.966015>,  <35.343544, 34.759258, 51.994820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177265, 34.588608, 51.966015>,  <34.900131, 34.304192, 51.918011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177265, 34.588608, 51.966015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196266, -0.025795, -0.980211,
		-0.693877, 0.702675, -0.157425,
		0.692831, 0.711043, 0.120013,
		35.385113, 34.801922, 52.002018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820782, 34.780415, 51.340824>,  <34.900131, 34.304192, 51.918011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820782, 34.780415, 51.340824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190929, 34.807964, 51.489925>,  <35.413017, 34.824493, 51.579384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190929, 34.807964, 51.489925>,  <34.820782, 34.780415, 51.340824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190929, 34.807964, 51.489925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376733, -0.058290, -0.924486,
		-0.041947, 0.995921, -0.079888,
		0.925372, 0.068876, 0.372751,
		35.468540, 34.828629, 51.601749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062351, 35.378647, 50.962585>,  <34.820782, 34.780415, 51.340824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062351, 35.378647, 50.962585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390583, 35.182251, 51.079605>,  <35.587521, 35.064415, 51.149815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390583, 35.182251, 51.079605>,  <35.062351, 35.378647, 50.962585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390583, 35.182251, 51.079605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432572, 0.198995, -0.879365,
		0.373540, 0.848135, 0.375678,
		0.820579, -0.490986, 0.292547,
		35.636757, 35.034954, 51.167370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668926, 35.830334, 51.200165>,  <35.062351, 35.378647, 50.962585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668926, 35.830334, 51.200165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808849, 35.476505, 51.076767>,  <35.892803, 35.264210, 51.002728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808849, 35.476505, 51.076767>,  <35.668926, 35.830334, 51.200165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808849, 35.476505, 51.076767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418207, 0.442116, -0.793496,
		0.838294, 0.148555, 0.524589,
		0.349807, -0.884570, -0.308496,
		35.913792, 35.211136, 50.984219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311306, 36.039970, 50.717377>,  <35.668926, 35.830334, 51.200165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311306, 36.039970, 50.717377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290371, 35.641533, 50.688942>,  <36.277809, 35.402470, 50.671883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290371, 35.641533, 50.688942>,  <36.311306, 36.039970, 50.717377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290371, 35.641533, 50.688942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460790, 0.039061, -0.886649,
		0.885964, -0.079164, 0.456947,
		-0.052342, -0.996096, -0.071085,
		36.274670, 35.342705, 50.667618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994598, 35.827362, 50.806690>,  <36.311306, 36.039970, 50.717377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994598, 35.827362, 50.806690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768242, 35.567135, 50.604095>,  <36.632427, 35.410999, 50.482540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768242, 35.567135, 50.604095>,  <36.994598, 35.827362, 50.806690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768242, 35.567135, 50.604095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577391, 0.125806, -0.806717,
		0.588543, -0.748955, 0.304439,
		-0.565894, -0.650568, -0.506483,
		36.598473, 35.371964, 50.452152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458431, 35.416176, 50.522015>,  <36.994598, 35.827362, 50.806690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458431, 35.416176, 50.522015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137936, 35.364765, 50.288261>,  <36.945641, 35.333920, 50.148010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137936, 35.364765, 50.288261>,  <37.458431, 35.416176, 50.522015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137936, 35.364765, 50.288261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594616, -0.062136, -0.801605,
		0.066715, -0.989758, 0.126208,
		-0.801237, -0.128524, -0.584380,
		36.897564, 35.326210, 50.112946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722675, 34.975327, 49.952759>,  <37.458431, 35.416176, 50.522015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722675, 34.975327, 49.952759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373474, 35.100674, 49.803272>,  <37.163952, 35.175880, 49.713581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373474, 35.100674, 49.803272>,  <37.722675, 34.975327, 49.952759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373474, 35.100674, 49.803272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418652, 0.088419, -0.903832,
		-0.250189, -0.945506, -0.208383,
		-0.873004, 0.313369, -0.373716,
		37.111572, 35.194683, 49.691158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664753, 34.637306, 49.396721>,  <37.722675, 34.975327, 49.952759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664753, 34.637306, 49.396721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409542, 34.936283, 49.322701>,  <37.256416, 35.115669, 49.278286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409542, 34.936283, 49.322701>,  <37.664753, 34.637306, 49.396721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409542, 34.936283, 49.322701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220991, -0.052469, -0.973863,
		-0.737619, -0.662249, -0.131701,
		-0.638029, 0.747445, -0.185053,
		37.218132, 35.160515, 49.267185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341473, 34.471752, 48.829914>,  <37.664753, 34.637306, 49.396721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341473, 34.471752, 48.829914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298988, 34.869053, 48.848564>,  <37.273499, 35.107433, 48.859753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298988, 34.869053, 48.848564>,  <37.341473, 34.471752, 48.829914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298988, 34.869053, 48.848564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331228, 0.079552, -0.940191,
		-0.937553, -0.084419, -0.337442,
		-0.106214, 0.993250, 0.046623,
		37.267124, 35.167027, 48.862553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963287, 34.706963, 48.136353>,  <37.341473, 34.471752, 48.829914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963287, 34.706963, 48.136353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143291, 35.030331, 48.288116>,  <37.251293, 35.224350, 48.379173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143291, 35.030331, 48.288116>,  <36.963287, 34.706963, 48.136353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143291, 35.030331, 48.288116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193143, 0.326692, -0.925185,
		-0.871885, 0.489625, -0.009125,
		0.450013, 0.808418, 0.379406,
		37.278294, 35.272858, 48.401939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714909, 35.186344, 47.723568>,  <36.963287, 34.706963, 48.136353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714909, 35.186344, 47.723568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052692, 35.339256, 47.873634>,  <37.255363, 35.431004, 47.963673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052692, 35.339256, 47.873634>,  <36.714909, 35.186344, 47.723568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052692, 35.339256, 47.873634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186872, 0.446145, -0.875233,
		-0.501960, 0.809208, 0.305316,
		0.844461, 0.382277, 0.375166,
		37.306030, 35.453941, 47.986183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790730, 35.568913, 47.215607>,  <36.714909, 35.186344, 47.723568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790730, 35.568913, 47.215607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137535, 35.606998, 47.411247>,  <37.345619, 35.629852, 47.528629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137535, 35.606998, 47.411247>,  <36.790730, 35.568913, 47.215607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137535, 35.606998, 47.411247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401925, 0.446530, -0.799417,
		-0.294516, 0.889688, 0.348877,
		0.867015, 0.095219, 0.489098,
		37.397640, 35.635563, 47.557976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991253, 36.289017, 47.399136>,  <36.790730, 35.568913, 47.215607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991253, 36.289017, 47.399136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292034, 36.040779, 47.310207>,  <37.472504, 35.891834, 47.256851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292034, 36.040779, 47.310207>,  <36.991253, 36.289017, 47.399136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292034, 36.040779, 47.310207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219491, 0.553712, -0.803260,
		0.621604, 0.555215, 0.552580,
		0.751952, -0.620596, -0.222325,
		37.517620, 35.854599, 47.243511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393085, 36.788662, 47.186352>,  <36.991253, 36.289017, 47.399136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393085, 36.788662, 47.186352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483200, 36.430759, 47.032124>,  <37.537270, 36.216019, 46.939587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483200, 36.430759, 47.032124>,  <37.393085, 36.788662, 47.186352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483200, 36.430759, 47.032124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005220, 0.396845, -0.917871,
		0.974278, 0.204775, 0.094076,
		0.225291, -0.894752, -0.385568,
		37.550789, 36.162334, 46.916454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649223, 36.998215, 46.555786>,  <37.393085, 36.788662, 47.186352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649223, 36.998215, 46.555786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595703, 36.604332, 46.511162>,  <37.563591, 36.368000, 46.484386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595703, 36.604332, 46.511162>,  <37.649223, 36.998215, 46.555786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595703, 36.604332, 46.511162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085976, 0.123679, -0.988591,
		0.987271, -0.122685, -0.101210,
		-0.133803, -0.984709, -0.111557,
		37.555561, 36.308918, 46.477695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024143, 36.893833, 45.972908>,  <37.649223, 36.998215, 46.555786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024143, 36.893833, 45.972908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772751, 36.582706, 45.973911>,  <37.621914, 36.396030, 45.974514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772751, 36.582706, 45.973911>,  <38.024143, 36.893833, 45.972908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772751, 36.582706, 45.973911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293910, 0.234491, -0.926623,
		0.720158, -0.583103, -0.375982,
		-0.628481, -0.777820, 0.002509,
		37.584206, 36.349361, 45.974663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188713, 36.423023, 45.307373>,  <38.024143, 36.893833, 45.972908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188713, 36.423023, 45.307373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820686, 36.338856, 45.439552>,  <37.599869, 36.288353, 45.518860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820686, 36.338856, 45.439552>,  <38.188713, 36.423023, 45.307373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820686, 36.338856, 45.439552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356343, 0.099055, -0.929090,
		0.162765, -0.972580, -0.166118,
		-0.920069, -0.210418, 0.330449,
		37.544666, 36.275730, 45.538689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011925, 36.047020, 44.704834>,  <38.188713, 36.423023, 45.307373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011925, 36.047020, 44.704834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675808, 36.147427, 44.897045>,  <37.474136, 36.207668, 45.012371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675808, 36.147427, 44.897045>,  <38.011925, 36.047020, 44.704834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675808, 36.147427, 44.897045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446683, 0.181725, -0.876042,
		-0.307223, -0.950772, -0.040577,
		-0.840290, 0.251015, 0.480524,
		37.423721, 36.222733, 45.041203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514492, 35.494106, 44.426567>,  <38.011925, 36.047020, 44.704834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514492, 35.494106, 44.426567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308086, 35.791546, 44.596642>,  <37.184242, 35.970009, 44.698685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308086, 35.791546, 44.596642>,  <37.514492, 35.494106, 44.426567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308086, 35.791546, 44.596642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598138, 0.042508, -0.800265,
		-0.613153, -0.667269, 0.422842,
		-0.516018, 0.743603, 0.425183,
		37.153282, 36.014626, 44.724197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693634, 35.312946, 44.574551>,  <37.514492, 35.494106, 44.426567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693634, 35.312946, 44.574551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733307, 35.710644, 44.558342>,  <36.757111, 35.949261, 44.548618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733307, 35.710644, 44.558342>,  <36.693634, 35.312946, 44.574551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733307, 35.710644, 44.558342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682090, 0.038280, -0.730266,
		-0.724511, 0.100070, 0.681960,
		0.099183, 0.994244, -0.040523,
		36.763062, 36.008919, 44.546185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086132, 35.499432, 44.407394>,  <36.693634, 35.312946, 44.574551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086132, 35.499432, 44.407394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279190, 35.843102, 44.339424>,  <36.395027, 36.049301, 44.298641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279190, 35.843102, 44.339424>,  <36.086132, 35.499432, 44.407394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279190, 35.843102, 44.339424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662216, 0.231028, -0.712809,
		-0.573169, 0.456561, 0.680463,
		0.482647, 0.859173, -0.169924,
		36.423985, 36.100853, 44.288448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585159, 35.928047, 44.389938>,  <36.086132, 35.499432, 44.407394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585159, 35.928047, 44.389938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913902, 36.045731, 44.194801>,  <36.111149, 36.116341, 44.077717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913902, 36.045731, 44.194801>,  <35.585159, 35.928047, 44.389938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913902, 36.045731, 44.194801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534499, 0.101886, -0.839005,
		-0.197137, 0.950295, 0.240989,
		0.821856, 0.294208, -0.487847,
		36.160458, 36.133991, 44.048447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223667, 36.407669, 43.959263>,  <35.585159, 35.928047, 44.389938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223667, 36.407669, 43.959263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577816, 36.309868, 43.801102>,  <35.790306, 36.251186, 43.706207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577816, 36.309868, 43.801102>,  <35.223667, 36.407669, 43.959263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577816, 36.309868, 43.801102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407240, 0.002317, -0.913318,
		0.224221, 0.969647, -0.097518,
		0.885370, -0.244499, -0.395398,
		35.843426, 36.236519, 43.682484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312271, 36.876606, 43.331524>,  <35.223667, 36.407669, 43.959263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312271, 36.876606, 43.331524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570377, 36.573223, 43.294899>,  <35.725239, 36.391193, 43.272926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570377, 36.573223, 43.294899>,  <35.312271, 36.876606, 43.331524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570377, 36.573223, 43.294899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347772, -0.184910, -0.919164,
		0.680213, 0.624945, -0.383084,
		0.645263, -0.758454, -0.091560,
		35.763958, 36.345688, 43.267429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367085, 36.894173, 42.639065>,  <35.312271, 36.876606, 43.331524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367085, 36.894173, 42.639065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508907, 36.530685, 42.727169>,  <35.594002, 36.312592, 42.780033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508907, 36.530685, 42.727169>,  <35.367085, 36.894173, 42.639065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508907, 36.530685, 42.727169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190712, -0.300897, -0.934393,
		0.915377, 0.289293, -0.279990,
		0.354561, -0.908719, 0.220263,
		35.615276, 36.258068, 42.793247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641075, 36.719383, 42.081772>,  <35.367085, 36.894173, 42.639065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641075, 36.719383, 42.081772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612930, 36.366089, 42.267223>,  <35.596043, 36.154114, 42.378494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612930, 36.366089, 42.267223>,  <35.641075, 36.719383, 42.081772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612930, 36.366089, 42.267223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223669, -0.438975, -0.870215,
		0.972122, -0.164931, -0.166663,
		-0.070365, -0.883232, 0.463627,
		35.591820, 36.101120, 42.406311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986923, 36.189522, 41.599468>,  <35.641075, 36.719383, 42.081772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986923, 36.189522, 41.599468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727325, 36.004101, 41.840771>,  <35.571568, 35.892849, 41.985554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727325, 36.004101, 41.840771>,  <35.986923, 36.189522, 41.599468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727325, 36.004101, 41.840771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293374, -0.579125, -0.760622,
		0.701950, -0.670623, 0.239857,
		-0.648998, -0.463551, 0.603260,
		35.532627, 35.865036, 42.021748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198853, 35.438496, 41.602863>,  <35.986923, 36.189522, 41.599468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198853, 35.438496, 41.602863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814564, 35.471767, 41.708771>,  <35.583992, 35.491730, 41.772316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814564, 35.471767, 41.708771>,  <36.198853, 35.438496, 41.602863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814564, 35.471767, 41.708771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256333, -0.631606, -0.731688,
		0.106373, -0.770815, 0.628115,
		-0.960718, 0.083175, 0.264771,
		35.526348, 35.496719, 41.788200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968220, 34.811111, 41.576038>,  <36.198853, 35.438496, 41.602863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968220, 34.811111, 41.576038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620750, 35.008385, 41.557354>,  <35.412270, 35.126747, 41.546143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620750, 35.008385, 41.557354>,  <35.968220, 34.811111, 41.576038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620750, 35.008385, 41.557354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271730, -0.553199, -0.787485,
		-0.414215, -0.671373, 0.614561,
		-0.868671, 0.493183, -0.046711,
		35.360149, 35.156342, 41.543339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518551, 34.310120, 41.283146>,  <35.968220, 34.811111, 41.576038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518551, 34.310120, 41.283146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281986, 34.632504, 41.272930>,  <35.140045, 34.825935, 41.266800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281986, 34.632504, 41.272930>,  <35.518551, 34.310120, 41.283146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281986, 34.632504, 41.272930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508148, -0.397100, -0.764262,
		-0.626111, -0.439015, 0.644399,
		-0.591414, 0.805964, -0.025544,
		35.104561, 34.874294, 41.265266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867531, 34.060940, 41.204334>,  <35.518551, 34.310120, 41.283146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867531, 34.060940, 41.204334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873741, 34.441841, 41.082375>,  <34.877468, 34.670383, 41.009197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873741, 34.441841, 41.082375>,  <34.867531, 34.060940, 41.204334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873741, 34.441841, 41.082375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492110, -0.258167, -0.831371,
		-0.870395, 0.162955, 0.464606,
		0.015530, 0.952258, -0.304899,
		34.878399, 34.727520, 40.990906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171776, 34.250229, 40.976582>,  <34.867531, 34.060940, 41.204334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171776, 34.250229, 40.976582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410442, 34.500801, 40.775955>,  <34.553642, 34.651146, 40.655579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410442, 34.500801, 40.775955>,  <34.171776, 34.250229, 40.976582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410442, 34.500801, 40.775955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448251, -0.258255, -0.855789,
		-0.665626, 0.735451, 0.126705,
		0.596669, 0.626432, -0.501568,
		34.589443, 34.688732, 40.625484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775932, 34.437267, 40.408154>,  <34.171776, 34.250229, 40.976582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775932, 34.437267, 40.408154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150410, 34.527550, 40.300377>,  <34.375095, 34.581718, 40.235710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150410, 34.527550, 40.300377>,  <33.775932, 34.437267, 40.408154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150410, 34.527550, 40.300377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254809, -0.092213, -0.962585,
		-0.242111, 0.969821, -0.028816,
		0.936191, 0.225710, -0.269445,
		34.431267, 34.595264, 40.219543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715225, 35.005169, 39.891193>,  <33.775932, 34.437267, 40.408154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715225, 35.005169, 39.891193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073986, 34.838993, 39.830566>,  <34.289242, 34.739288, 39.794189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073986, 34.838993, 39.830566>,  <33.715225, 35.005169, 39.891193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073986, 34.838993, 39.830566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183321, -0.037391, -0.982342,
		0.402440, 0.908851, -0.109696,
		0.896903, -0.415443, -0.151564,
		34.343056, 34.714359, 39.785099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004124, 35.406185, 39.392578>,  <33.715225, 35.005169, 39.891193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004124, 35.406185, 39.392578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215508, 35.067219, 39.372116>,  <34.342339, 34.863838, 39.359840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215508, 35.067219, 39.372116>,  <34.004124, 35.406185, 39.392578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215508, 35.067219, 39.372116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030255, 0.041416, -0.998684,
		0.848418, 0.529314, -0.003752,
		0.528462, -0.847414, -0.051152,
		34.374046, 34.812996, 39.356770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482910, 35.512291, 38.895657>,  <34.004124, 35.406185, 39.392578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482910, 35.512291, 38.895657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472622, 35.112461, 38.890041>,  <34.466450, 34.872562, 38.886673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472622, 35.112461, 38.890041>,  <34.482910, 35.512291, 38.895657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472622, 35.112461, 38.890041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084112, 0.011827, -0.996386,
		0.996124, -0.026808, 0.083772,
		-0.025720, -0.999571, -0.014036,
		34.464905, 34.812592, 38.885830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995220, 35.354008, 38.435501>,  <34.482910, 35.512291, 38.895657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995220, 35.354008, 38.435501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704292, 35.080505, 38.459137>,  <34.529736, 34.916405, 38.473320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704292, 35.080505, 38.459137>,  <34.995220, 35.354008, 38.435501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704292, 35.080505, 38.459137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200857, 0.129744, -0.970991,
		0.656250, -0.718088, -0.231701,
		-0.727318, -0.683752, 0.059088,
		34.486095, 34.875381, 38.476864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670582, 35.507816, 38.048687>,  <34.995220, 35.354008, 38.435501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670582, 35.507816, 38.048687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932114, 35.257687, 37.878288>,  <36.089031, 35.107609, 37.776047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932114, 35.257687, 37.878288>,  <35.670582, 35.507816, 38.048687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932114, 35.257687, 37.878288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426009, -0.161063, 0.890267,
		-0.625320, -0.763561, 0.161087,
		0.653828, -0.625327, -0.426000,
		36.128262, 35.070087, 37.750488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643742, 34.812901, 38.447350>,  <35.670582, 35.507816, 38.048687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643742, 34.812901, 38.447350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990501, 34.924252, 38.281940>,  <36.198555, 34.991062, 38.182697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990501, 34.924252, 38.281940>,  <35.643742, 34.812901, 38.447350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990501, 34.924252, 38.281940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474041, -0.203774, 0.856598,
		0.154190, -0.938608, -0.308612,
		0.866897, 0.278373, -0.413519,
		36.250572, 35.007763, 38.157887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092068, 34.230717, 38.597256>,  <35.643742, 34.812901, 38.447350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092068, 34.230717, 38.597256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315006, 34.553616, 38.519569>,  <36.448769, 34.747356, 38.472958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315006, 34.553616, 38.519569>,  <36.092068, 34.230717, 38.597256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315006, 34.553616, 38.519569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550724, -0.184372, 0.814071,
		0.621347, -0.560678, -0.547328,
		0.557343, 0.807247, -0.194220,
		36.482208, 34.795788, 38.461304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663246, 33.992405, 38.774834>,  <36.092068, 34.230717, 38.597256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663246, 33.992405, 38.774834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753269, 34.380936, 38.744194>,  <36.807281, 34.614056, 38.725811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753269, 34.380936, 38.744194>,  <36.663246, 33.992405, 38.774834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753269, 34.380936, 38.744194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665070, -0.095688, 0.740626,
		0.712062, -0.217628, -0.667537,
		0.225056, 0.971330, -0.076602,
		36.820786, 34.672333, 38.721214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402843, 34.088844, 38.721172>,  <36.663246, 33.992405, 38.774834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402843, 34.088844, 38.721172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263500, 34.439556, 38.853783>,  <37.179893, 34.649982, 38.933350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263500, 34.439556, 38.853783>,  <37.402843, 34.088844, 38.721172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263500, 34.439556, 38.853783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737848, 0.038349, 0.673877,
		0.578127, 0.479364, -0.660287,
		-0.348354, 0.876778, 0.331527,
		37.158993, 34.702591, 38.953239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046745, 34.500938, 38.909702>,  <37.402843, 34.088844, 38.721172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046745, 34.500938, 38.909702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747345, 34.665710, 39.117573>,  <37.567707, 34.764572, 39.242294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747345, 34.665710, 39.117573>,  <38.046745, 34.500938, 38.909702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747345, 34.665710, 39.117573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588963, 0.052803, 0.806433,
		0.304752, 0.909685, -0.282134,
		-0.748498, 0.411929, 0.519679,
		37.522797, 34.789288, 39.273476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253139, 35.091785, 39.214748>,  <38.046745, 34.500938, 38.909702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253139, 35.091785, 39.214748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956669, 34.965904, 39.451939>,  <37.778786, 34.890377, 39.594254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956669, 34.965904, 39.451939>,  <38.253139, 35.091785, 39.214748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956669, 34.965904, 39.451939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606033, 0.066287, 0.792673,
		-0.288762, 0.946873, 0.141590,
		-0.741175, -0.314702, 0.592977,
		37.734318, 34.871494, 39.629833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106911, 35.689678, 39.632782>,  <38.253139, 35.091785, 39.214748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106911, 35.689678, 39.632782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941193, 35.368656, 39.804489>,  <37.841763, 35.176044, 39.907513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941193, 35.368656, 39.804489>,  <38.106911, 35.689678, 39.632782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941193, 35.368656, 39.804489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423860, 0.247250, 0.871327,
		-0.805420, 0.542937, 0.237735,
		-0.414295, -0.802550, 0.429269,
		37.816902, 35.127892, 39.933270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897331, 35.913082, 40.427853>,  <38.106911, 35.689678, 39.632782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897331, 35.913082, 40.427853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927818, 35.514252, 40.425854>,  <37.946110, 35.274952, 40.424656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927818, 35.514252, 40.425854>,  <37.897331, 35.913082, 40.427853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927818, 35.514252, 40.425854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503715, 0.034184, 0.863193,
		-0.860501, -0.068310, 0.504849,
		0.076222, -0.997078, -0.004993,
		37.950684, 35.215130, 40.424355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696274, 35.716694, 41.059246>,  <37.897331, 35.913082, 40.427853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696274, 35.716694, 41.059246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888641, 35.390839, 40.929585>,  <38.004063, 35.195324, 40.851788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888641, 35.390839, 40.929585>,  <37.696274, 35.716694, 41.059246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888641, 35.390839, 40.929585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447674, -0.089726, 0.889684,
		-0.753857, -0.572984, 0.321542,
		0.480923, -0.814640, -0.324151,
		38.032917, 35.146446, 40.832340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757397, 35.435368, 41.665916>,  <37.696274, 35.716694, 41.059246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757397, 35.435368, 41.665916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995113, 35.221050, 41.426003>,  <38.137745, 35.092461, 41.282055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.995113, 35.221050, 41.426003>,  <37.757397, 35.435368, 41.665916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995113, 35.221050, 41.426003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516732, -0.317095, 0.795260,
		-0.616282, -0.782547, 0.088413,
		0.594293, -0.535790, -0.599787,
		38.173401, 35.060314, 41.246067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698563, 34.739868, 41.843269>,  <37.757397, 35.435368, 41.665916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698563, 34.739868, 41.843269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058117, 34.768124, 41.670284>,  <38.273849, 34.785076, 41.566494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058117, 34.768124, 41.670284>,  <37.698563, 34.739868, 41.843269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058117, 34.768124, 41.670284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431105, -0.319351, 0.843898,
		-0.078494, -0.945000, -0.317512,
		0.898881, 0.070640, -0.432461,
		38.327782, 34.789314, 41.540546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181534, 34.249325, 42.215698>,  <37.698563, 34.739868, 41.843269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181534, 34.249325, 42.215698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440815, 34.502239, 42.045975>,  <38.596386, 34.653988, 41.944141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440815, 34.502239, 42.045975>,  <38.181534, 34.249325, 42.215698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440815, 34.502239, 42.045975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572988, -0.038017, 0.818681,
		0.501513, -0.773799, -0.386937,
		0.648205, 0.632289, -0.424312,
		38.635277, 34.691925, 41.918682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776024, 33.860981, 42.365112>,  <38.181534, 34.249325, 42.215698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776024, 33.860981, 42.365112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877552, 34.240234, 42.288570>,  <38.938469, 34.467785, 42.242645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877552, 34.240234, 42.288570>,  <38.776024, 33.860981, 42.365112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877552, 34.240234, 42.288570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539382, 0.025477, 0.841676,
		0.802896, -0.316849, -0.504940,
		0.253820, 0.948134, -0.191358,
		38.953697, 34.524673, 42.231163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552162, 33.888947, 42.342812>,  <38.776024, 33.860981, 42.365112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552162, 33.888947, 42.342812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450466, 34.268398, 42.418137>,  <39.389446, 34.496071, 42.463329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450466, 34.268398, 42.418137>,  <39.552162, 33.888947, 42.342812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450466, 34.268398, 42.418137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530323, -0.026081, 0.847395,
		0.808776, 0.315309, -0.496449,
		-0.254244, 0.948631, 0.188309,
		39.374191, 34.552986, 42.474628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147640, 34.224861, 42.631260>,  <39.552162, 33.888947, 42.342812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147640, 34.224861, 42.631260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838833, 34.453289, 42.742878>,  <39.653549, 34.590343, 42.809849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838833, 34.453289, 42.742878>,  <40.147640, 34.224861, 42.631260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838833, 34.453289, 42.742878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406841, 0.106682, 0.907248,
		0.488329, 0.813943, -0.314693,
		-0.772021, 0.571066, 0.279049,
		39.607227, 34.624607, 42.826591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422577, 34.873379, 42.945316>,  <40.147640, 34.224861, 42.631260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422577, 34.873379, 42.945316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047279, 34.833187, 43.077740>,  <39.822102, 34.809074, 43.157192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.047279, 34.833187, 43.077740>,  <40.422577, 34.873379, 42.945316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047279, 34.833187, 43.077740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283417, 0.325576, 0.902040,
		-0.198419, 0.940162, -0.276993,
		-0.938246, -0.100477, 0.331058,
		39.765804, 34.803043, 43.177055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319065, 35.465912, 43.344387>,  <40.422577, 34.873379, 42.945316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319065, 35.465912, 43.344387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023190, 35.226185, 43.466820>,  <39.845665, 35.082348, 43.540279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023190, 35.226185, 43.466820>,  <40.319065, 35.465912, 43.344387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023190, 35.226185, 43.466820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202340, 0.235712, 0.950525,
		-0.641814, 0.765021, -0.053087,
		-0.739685, -0.599319, 0.306077,
		39.801285, 35.046391, 43.558643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961292, 35.844833, 43.867184>,  <40.319065, 35.465912, 43.344387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961292, 35.844833, 43.867184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837250, 35.468029, 43.918480>,  <39.762825, 35.241947, 43.949257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837250, 35.468029, 43.918480>,  <39.961292, 35.844833, 43.867184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837250, 35.468029, 43.918480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085045, 0.106859, 0.990630,
		-0.946890, 0.318109, 0.046976,
		-0.310109, -0.942013, 0.128237,
		39.744217, 35.185425, 43.956951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392338, 35.847996, 44.341251>,  <39.961292, 35.844833, 43.867184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392338, 35.847996, 44.341251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558842, 35.485229, 44.367283>,  <39.658745, 35.267570, 44.382904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558842, 35.485229, 44.367283>,  <39.392338, 35.847996, 44.341251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558842, 35.485229, 44.367283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164079, 0.145327, 0.975684,
		-0.894318, -0.395461, 0.209299,
		0.416262, -0.906913, 0.065082,
		39.683720, 35.213158, 44.386806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130001, 35.605453, 44.895279>,  <39.392338, 35.847996, 44.341251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130001, 35.605453, 44.895279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420124, 35.330902, 44.874062>,  <39.594200, 35.166172, 44.861332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420124, 35.330902, 44.874062>,  <39.130001, 35.605453, 44.895279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420124, 35.330902, 44.874062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040574, -0.034298, 0.998588,
		-0.687225, -0.726439, 0.002972,
		0.725310, -0.686375, -0.053045,
		39.637718, 35.124989, 44.858147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891647, 35.156433, 45.378147>,  <39.130001, 35.605453, 44.895279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891647, 35.156433, 45.378147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279144, 35.069481, 45.330357>,  <39.511642, 35.017307, 45.301682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279144, 35.069481, 45.330357>,  <38.891647, 35.156433, 45.378147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279144, 35.069481, 45.330357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130466, 0.036853, 0.990768,
		-0.210975, -0.975390, 0.064063,
		0.968745, -0.217386, -0.119480,
		39.569767, 35.004265, 45.294514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048550, 34.646851, 45.901955>,  <38.891647, 35.156433, 45.378147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048550, 34.646851, 45.901955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396603, 34.810093, 45.791454>,  <39.605434, 34.908039, 45.725155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396603, 34.810093, 45.791454>,  <39.048550, 34.646851, 45.901955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396603, 34.810093, 45.791454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224923, 0.169901, 0.959449,
		0.438491, -0.896986, 0.056045,
		0.870135, 0.408104, -0.276253,
		39.657642, 34.932526, 45.708580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637421, 34.427174, 46.371391>,  <39.048550, 34.646851, 45.901955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637421, 34.427174, 46.371391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722496, 34.783272, 46.210281>,  <39.773540, 34.996933, 46.113617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722496, 34.783272, 46.210281>,  <39.637421, 34.427174, 46.371391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722496, 34.783272, 46.210281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314217, 0.327994, 0.890891,
		0.925221, -0.316036, -0.209972,
		0.212684, 0.890248, -0.402770,
		39.786301, 35.050346, 46.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290932, 34.545834, 46.681141>,  <39.637421, 34.427174, 46.371391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290932, 34.545834, 46.681141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156193, 34.906048, 46.571182>,  <40.075348, 35.122177, 46.505207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156193, 34.906048, 46.571182>,  <40.290932, 34.545834, 46.681141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156193, 34.906048, 46.571182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434675, 0.407716, 0.803010,
		0.835219, 0.151003, -0.528779,
		-0.336848, 0.900537, -0.274895,
		40.055138, 35.176208, 46.488712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811810, 35.060539, 46.818905>,  <40.290932, 34.545834, 46.681141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811810, 35.060539, 46.818905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475090, 35.275127, 46.794979>,  <40.273060, 35.403881, 46.780624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475090, 35.275127, 46.794979>,  <40.811810, 35.060539, 46.818905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475090, 35.275127, 46.794979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239036, 0.469829, 0.849778,
		0.483978, 0.701046, -0.523736,
		-0.841800, 0.536466, -0.059812,
		40.222549, 35.436066, 46.777035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012115, 35.804314, 47.021656>,  <40.811810, 35.060539, 46.818905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012115, 35.804314, 47.021656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614613, 35.777443, 47.057301>,  <40.376110, 35.761322, 47.078686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614613, 35.777443, 47.057301>,  <41.012115, 35.804314, 47.021656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614613, 35.777443, 47.057301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027716, 0.624949, 0.780173,
		-0.108097, 0.777770, -0.619184,
		-0.993754, -0.067173, 0.089112,
		40.316486, 35.757290, 47.084034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788219, 36.506565, 47.250957>,  <41.012115, 35.804314, 47.021656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788219, 36.506565, 47.250957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468693, 36.291637, 47.359161>,  <40.276978, 36.162682, 47.424084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468693, 36.291637, 47.359161>,  <40.788219, 36.506565, 47.250957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468693, 36.291637, 47.359161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059818, 0.518387, 0.853052,
		-0.598592, 0.665251, -0.446238,
		-0.798818, -0.537323, 0.270508,
		40.229046, 36.130440, 47.440315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288513, 36.992466, 47.548630>,  <40.788219, 36.506565, 47.250957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288513, 36.992466, 47.548630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166912, 36.634766, 47.680027>,  <40.093952, 36.420147, 47.758865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166912, 36.634766, 47.680027>,  <40.288513, 36.992466, 47.548630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166912, 36.634766, 47.680027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168995, 0.389964, 0.905190,
		-0.937563, 0.219663, -0.269672,
		-0.303999, -0.894246, 0.328494,
		40.075714, 36.366493, 47.778576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715244, 37.134884, 47.846668>,  <40.288513, 36.992466, 47.548630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715244, 37.134884, 47.846668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832829, 36.785278, 48.001423>,  <39.903381, 36.575516, 48.094276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832829, 36.785278, 48.001423>,  <39.715244, 37.134884, 47.846668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832829, 36.785278, 48.001423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289894, 0.304177, 0.907435,
		-0.910794, -0.378909, -0.163955,
		0.293965, -0.874016, 0.386886,
		39.921017, 36.523075, 48.117489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154327, 36.873417, 48.346401>,  <39.715244, 37.134884, 47.846668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154327, 36.873417, 48.346401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494503, 36.696175, 48.459831>,  <39.698608, 36.589828, 48.527889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494503, 36.696175, 48.459831>,  <39.154327, 36.873417, 48.346401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494503, 36.696175, 48.459831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180472, 0.260604, 0.948428,
		-0.494153, -0.857756, 0.141659,
		0.850437, -0.443103, 0.283579,
		39.749634, 36.563244, 48.544907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037220, 36.524479, 49.084656>,  <39.154327, 36.873417, 48.346401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037220, 36.524479, 49.084656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435333, 36.530453, 49.046322>,  <39.674202, 36.534035, 49.023323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435333, 36.530453, 49.046322>,  <39.037220, 36.524479, 49.084656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435333, 36.530453, 49.046322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091945, 0.169228, 0.981279,
		0.030870, -0.985464, 0.167057,
		0.995286, 0.014932, -0.095832,
		39.733917, 36.534931, 49.017570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225571, 36.257851, 49.676411>,  <39.037220, 36.524479, 49.084656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225571, 36.257851, 49.676411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537415, 36.483242, 49.567085>,  <39.724522, 36.618477, 49.501488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537415, 36.483242, 49.567085>,  <39.225571, 36.257851, 49.676411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537415, 36.483242, 49.567085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256432, 0.110941, 0.960174,
		0.571357, -0.818649, -0.058002,
		0.779611, 0.563476, -0.273315,
		39.771297, 36.652287, 49.485092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743488, 36.022961, 50.095314>,  <39.225571, 36.257851, 49.676411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743488, 36.022961, 50.095314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884518, 36.370483, 49.956253>,  <39.969135, 36.578999, 49.872814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884518, 36.370483, 49.956253>,  <39.743488, 36.022961, 50.095314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884518, 36.370483, 49.956253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213359, 0.287095, 0.933839,
		0.911135, -0.403425, -0.084145,
		0.352576, 0.868807, -0.347657,
		39.990292, 36.631126, 49.851955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302879, 36.136047, 50.587177>,  <39.743488, 36.022961, 50.095314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302879, 36.136047, 50.587177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216331, 36.492027, 50.426590>,  <40.164402, 36.705616, 50.330238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216331, 36.492027, 50.426590>,  <40.302879, 36.136047, 50.587177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216331, 36.492027, 50.426590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252887, 0.448259, 0.857386,
		0.942991, 0.083985, -0.322045,
		-0.216367, 0.889949, -0.401466,
		40.151421, 36.759010, 50.306149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674458, 36.600037, 50.997612>,  <40.302879, 36.136047, 50.587177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674458, 36.600037, 50.997612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411053, 36.837952, 50.813187>,  <40.253010, 36.980701, 50.702530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411053, 36.837952, 50.813187>,  <40.674458, 36.600037, 50.997612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411053, 36.837952, 50.813187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035917, 0.587119, 0.808703,
		0.751710, 0.549103, -0.365264,
		-0.658515, 0.594791, -0.461065,
		40.213497, 37.016388, 50.674866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910084, 37.329132, 51.057255>,  <40.674458, 36.600037, 50.997612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910084, 37.329132, 51.057255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523628, 37.383266, 50.969383>,  <40.291756, 37.415749, 50.916660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523628, 37.383266, 50.969383>,  <40.910084, 37.329132, 51.057255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523628, 37.383266, 50.969383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058996, 0.712970, 0.698708,
		0.251184, 0.688010, -0.680844,
		-0.966140, 0.135337, -0.219677,
		40.233788, 37.423866, 50.903481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792099, 38.046879, 51.005531>,  <40.910084, 37.329132, 51.057255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792099, 38.046879, 51.005531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424477, 37.901974, 51.067635>,  <40.203903, 37.815029, 51.104897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424477, 37.901974, 51.067635>,  <40.792099, 38.046879, 51.005531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424477, 37.901974, 51.067635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119522, 0.631539, 0.766077,
		-0.375570, 0.685510, -0.623717,
		-0.919055, -0.362264, 0.155253,
		40.148762, 37.793293, 51.114212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381149, 38.572315, 51.382042>,  <40.792099, 38.046879, 51.005531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381149, 38.572315, 51.382042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166679, 38.240978, 51.446980>,  <40.037998, 38.042175, 51.485943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166679, 38.240978, 51.446980>,  <40.381149, 38.572315, 51.382042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166679, 38.240978, 51.446980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077344, 0.239726, 0.967755,
		-0.840553, 0.506334, -0.192604,
		-0.536179, -0.828346, 0.162340,
		40.005825, 37.992474, 51.495682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064816, 39.140045, 51.041965>,  <40.381149, 38.572315, 51.382042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064816, 39.140045, 51.041965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082638, 38.988976, 51.411911>,  <40.093330, 38.898335, 51.633881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082638, 38.988976, 51.411911>,  <40.064816, 39.140045, 51.041965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082638, 38.988976, 51.411911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743730, -0.605566, -0.283118,
		0.666994, 0.700466, 0.253904,
		0.044559, -0.377674, 0.924866,
		40.096004, 38.875675, 51.689369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081795, 39.606560, 50.572956>,  <40.064816, 39.140045, 51.041965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081795, 39.606560, 50.572956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430542, 39.801426, 50.552898>,  <40.639790, 39.918346, 50.540863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430542, 39.801426, 50.552898>,  <40.081795, 39.606560, 50.572956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430542, 39.801426, 50.552898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022756, -0.061977, -0.997818,
		-0.489210, 0.871108, -0.042950,
		0.871869, 0.487165, -0.050143,
		40.692104, 39.947575, 50.537857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020699, 40.083424, 50.048992>,  <40.081795, 39.606560, 50.572956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020699, 40.083424, 50.048992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419765, 40.074654, 50.074848>,  <40.659206, 40.069389, 50.090363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419765, 40.074654, 50.074848>,  <40.020699, 40.083424, 50.048992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419765, 40.074654, 50.074848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062497, -0.087224, -0.994226,
		0.027441, 0.995947, -0.085650,
		0.997668, -0.021929, 0.064637,
		40.719067, 40.068073, 50.094238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255989, 40.441780, 49.462124>,  <40.020699, 40.083424, 50.048992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255989, 40.441780, 49.462124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590633, 40.246460, 49.561440>,  <40.791420, 40.129269, 49.621029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590633, 40.246460, 49.561440>,  <40.255989, 40.441780, 49.462124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590633, 40.246460, 49.561440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026086, -0.417216, -0.908433,
		0.547178, 0.766481, -0.336309,
		0.836610, -0.488301, 0.248286,
		40.841618, 40.099968, 49.635925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562366, 40.523457, 48.902431>,  <40.255989, 40.441780, 49.462124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562366, 40.523457, 48.902431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756100, 40.230038, 49.093147>,  <40.872341, 40.053986, 49.207577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756100, 40.230038, 49.093147>,  <40.562366, 40.523457, 48.902431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756100, 40.230038, 49.093147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317626, -0.360359, -0.877072,
		0.815190, 0.576236, 0.058460,
		0.484333, -0.733549, 0.476789,
		40.901402, 40.009972, 49.236183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370480, 40.459900, 48.619667>,  <40.562366, 40.523457, 48.902431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370480, 40.459900, 48.619667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276241, 40.102539, 48.772675>,  <41.219700, 39.888123, 48.864479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276241, 40.102539, 48.772675>,  <41.370480, 40.459900, 48.619667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276241, 40.102539, 48.772675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298350, -0.441081, -0.846425,
		0.924924, -0.085285, 0.370462,
		-0.235592, -0.893406, 0.382522,
		41.205563, 39.834518, 48.887432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894421, 40.052822, 48.422562>,  <41.370480, 40.459900, 48.619667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894421, 40.052822, 48.422562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592041, 39.794704, 48.466625>,  <41.410614, 39.639835, 48.493065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592041, 39.794704, 48.466625>,  <41.894421, 40.052822, 48.422562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592041, 39.794704, 48.466625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243068, -0.432939, -0.868033,
		0.607829, -0.629413, 0.484131,
		-0.755951, -0.645293, 0.110162,
		41.365257, 39.601116, 48.499676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096256, 39.460789, 48.089890>,  <41.894421, 40.052822, 48.422562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096256, 39.460789, 48.089890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705269, 39.381107, 48.117794>,  <41.470676, 39.333298, 48.134537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705269, 39.381107, 48.117794>,  <42.096256, 39.460789, 48.089890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705269, 39.381107, 48.117794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014825, -0.394515, -0.918770,
		0.210547, -0.897037, 0.388580,
		-0.977471, -0.199205, 0.069766,
		41.412029, 39.321346, 48.138725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016071, 38.783936, 47.812054>,  <42.096256, 39.460789, 48.089890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016071, 38.783936, 47.812054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642799, 38.927692, 47.810249>,  <41.418839, 39.013947, 47.809166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642799, 38.927692, 47.810249>,  <42.016071, 38.783936, 47.812054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642799, 38.927692, 47.810249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140229, -0.375614, -0.916106,
		-0.330925, -0.854259, 0.400911,
		-0.933180, 0.359382, -0.004508,
		41.362846, 39.035507, 47.808895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501785, 38.242142, 47.547482>,  <42.016071, 38.783936, 47.812054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501785, 38.242142, 47.547482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316013, 38.593941, 47.505920>,  <41.204552, 38.805019, 47.480984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316013, 38.593941, 47.505920>,  <41.501785, 38.242142, 47.547482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316013, 38.593941, 47.505920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228591, -0.232398, -0.945377,
		-0.855600, -0.415310, 0.308977,
		-0.464430, 0.879494, -0.103904,
		41.176685, 38.857788, 47.474751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050732, 38.027843, 47.169941>,  <41.501785, 38.242142, 47.547482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050732, 38.027843, 47.169941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020554, 38.420708, 47.101048>,  <41.002445, 38.656425, 47.059711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020554, 38.420708, 47.101048>,  <41.050732, 38.027843, 47.169941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020554, 38.420708, 47.101048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333701, -0.187639, -0.923815,
		-0.939655, -0.012224, 0.341905,
		-0.075447, 0.982162, -0.172237,
		40.997921, 38.715355, 47.049377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267597, 38.338547, 46.913567>,  <41.050732, 38.027843, 47.169941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267597, 38.338547, 46.913567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557968, 38.583748, 46.788826>,  <40.732189, 38.730869, 46.713982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557968, 38.583748, 46.788826>,  <40.267597, 38.338547, 46.913567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557968, 38.583748, 46.788826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427700, 0.047268, -0.902684,
		-0.538610, 0.788663, 0.296496,
		0.725928, 0.613006, -0.311853,
		40.775745, 38.767651, 46.695271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910114, 38.795975, 46.583157>,  <40.267597, 38.338547, 46.913567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910114, 38.795975, 46.583157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288105, 38.853363, 46.465557>,  <40.514900, 38.887798, 46.394997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288105, 38.853363, 46.465557>,  <39.910114, 38.795975, 46.583157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288105, 38.853363, 46.465557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321498, 0.241049, -0.915715,
		-0.060513, 0.959849, 0.273912,
		0.944975, 0.143475, -0.294003,
		40.571598, 38.896404, 46.377357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778477, 39.168575, 45.999199>,  <39.910114, 38.795975, 46.583157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778477, 39.168575, 45.999199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161823, 39.057877, 45.971100>,  <40.391830, 38.991455, 45.954239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161823, 39.057877, 45.971100>,  <39.778477, 39.168575, 45.999199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161823, 39.057877, 45.971100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062549, 0.036575, -0.997371,
		0.278593, 0.960245, 0.017741,
		0.958370, -0.276751, -0.070252,
		40.449333, 38.974850, 45.950024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202530, 39.611954, 45.534195>,  <39.778477, 39.168575, 45.999199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202530, 39.611954, 45.534195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320522, 39.229752, 45.534267>,  <40.391319, 39.000431, 45.534313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320522, 39.229752, 45.534267>,  <40.202530, 39.611954, 45.534195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320522, 39.229752, 45.534267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078073, -0.024294, -0.996652,
		0.952308, 0.293981, -0.081765,
		0.294983, -0.955503, 0.000184,
		40.409016, 38.943100, 45.534321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481030, 39.570347, 44.867832>,  <40.202530, 39.611954, 45.534195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481030, 39.570347, 44.867832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451359, 39.186298, 44.975651>,  <40.433556, 38.955868, 45.040340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451359, 39.186298, 44.975651>,  <40.481030, 39.570347, 44.867832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451359, 39.186298, 44.975651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056003, -0.265855, -0.962385,
		0.995671, -0.086484, -0.034049,
		-0.074179, -0.960126, 0.269547,
		40.429104, 38.898262, 45.056515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953094, 39.149323, 44.407219>,  <40.481030, 39.570347, 44.867832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953094, 39.149323, 44.407219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686272, 38.906891, 44.580513>,  <40.526176, 38.761433, 44.684490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686272, 38.906891, 44.580513>,  <40.953094, 39.149323, 44.407219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686272, 38.906891, 44.580513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046152, -0.546790, -0.835997,
		0.743574, -0.577654, 0.336769,
		-0.667059, -0.606083, 0.433239,
		40.486153, 38.725067, 44.710484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234047, 38.534130, 44.186344>,  <40.953094, 39.149323, 44.407219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234047, 38.534130, 44.186344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847275, 38.471813, 44.267117>,  <40.615211, 38.434425, 44.315582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847275, 38.471813, 44.267117>,  <41.234047, 38.534130, 44.186344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847275, 38.471813, 44.267117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073135, -0.589145, -0.804711,
		0.244334, -0.792867, 0.558268,
		-0.966929, -0.155790, 0.201935,
		40.557198, 38.425076, 44.327698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108238, 37.841042, 44.206635>,  <41.234047, 38.534130, 44.186344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108238, 37.841042, 44.206635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735451, 37.977306, 44.157024>,  <40.511776, 38.059063, 44.127258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735451, 37.977306, 44.157024>,  <41.108238, 37.841042, 44.206635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735451, 37.977306, 44.157024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115184, -0.602612, -0.789678,
		-0.343747, -0.721672, 0.600856,
		-0.931971, 0.340658, -0.124021,
		40.455860, 38.079502, 44.119820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743160, 37.233555, 43.880455>,  <41.108238, 37.841042, 44.206635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743160, 37.233555, 43.880455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487637, 37.540783, 43.862625>,  <40.334324, 37.725121, 43.851925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487637, 37.540783, 43.862625>,  <40.743160, 37.233555, 43.880455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487637, 37.540783, 43.862625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457221, -0.425592, -0.780910,
		-0.618770, -0.478467, 0.623051,
		-0.638806, 0.768075, -0.044578,
		40.295994, 37.771206, 43.849251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125458, 36.904629, 43.858227>,  <40.743160, 37.233555, 43.880455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125458, 36.904629, 43.858227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048725, 37.258018, 43.687267>,  <40.002686, 37.470055, 43.584694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048725, 37.258018, 43.687267>,  <40.125458, 36.904629, 43.858227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048725, 37.258018, 43.687267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336331, -0.468292, -0.817058,
		-0.922000, -0.012988, 0.386972,
		-0.191828, 0.883479, -0.427397,
		39.991177, 37.523064, 43.559048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483421, 36.862621, 43.683804>,  <40.125458, 36.904629, 43.858227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483421, 36.862621, 43.683804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635052, 37.141392, 43.440296>,  <39.726032, 37.308655, 43.294193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635052, 37.141392, 43.440296>,  <39.483421, 36.862621, 43.683804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635052, 37.141392, 43.440296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304607, -0.527223, -0.793253,
		-0.873792, 0.486141, 0.012427,
		0.379081, 0.696923, -0.608765,
		39.748775, 37.350468, 43.257668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013729, 36.983341, 43.147774>,  <39.483421, 36.862621, 43.683804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013729, 36.983341, 43.147774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345951, 37.135822, 42.985363>,  <39.545284, 37.227310, 42.887917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345951, 37.135822, 42.985363>,  <39.013729, 36.983341, 43.147774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345951, 37.135822, 42.985363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307852, -0.293298, -0.905098,
		-0.464116, 0.876732, -0.126246,
		0.830556, 0.381205, -0.406028,
		39.595119, 37.250183, 42.863556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874641, 37.353390, 42.465435>,  <39.013729, 36.983341, 43.147774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874641, 37.353390, 42.465435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270187, 37.301548, 42.436176>,  <39.507515, 37.270443, 42.418621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.270187, 37.301548, 42.436176>,  <38.874641, 37.353390, 42.465435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270187, 37.301548, 42.436176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088493, -0.116870, -0.989197,
		0.119659, 0.984654, -0.127038,
		0.988863, -0.129608, -0.073150,
		39.566845, 37.262665, 42.414230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021626, 37.688728, 41.836174>,  <38.874641, 37.353390, 42.465435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021626, 37.688728, 41.836174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347450, 37.465542, 41.899628>,  <39.542946, 37.331631, 41.937702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347450, 37.465542, 41.899628>,  <39.021626, 37.688728, 41.836174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347450, 37.465542, 41.899628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050792, -0.203821, -0.977690,
		0.577847, 0.804448, -0.137685,
		0.814563, -0.557962, 0.158636,
		39.591820, 37.298153, 41.947220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653580, 38.027626, 41.558147>,  <39.021626, 37.688728, 41.836174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653580, 38.027626, 41.558147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690147, 37.629353, 41.564503>,  <39.712090, 37.390388, 41.568317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690147, 37.629353, 41.564503>,  <39.653580, 38.027626, 41.558147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690147, 37.629353, 41.564503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038782, -0.012383, -0.999171,
		0.995057, 0.091960, 0.037482,
		0.091420, -0.995686, 0.015888,
		39.717575, 37.330647, 41.569271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334595, 37.860291, 41.216000>,  <39.653580, 38.027626, 41.558147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334595, 37.860291, 41.216000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086578, 37.547409, 41.191635>,  <39.937771, 37.359680, 41.177017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086578, 37.547409, 41.191635>,  <40.334595, 37.860291, 41.216000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086578, 37.547409, 41.191635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108912, -0.008927, -0.994011,
		0.776975, -0.622959, 0.090726,
		-0.620039, -0.782203, -0.060911,
		39.900566, 37.312748, 41.173363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699387, 37.424812, 40.792877>,  <40.334595, 37.860291, 41.216000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699387, 37.424812, 40.792877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310753, 37.330299, 40.787231>,  <40.077572, 37.273590, 40.783844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310753, 37.330299, 40.787231>,  <40.699387, 37.424812, 40.792877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310753, 37.330299, 40.787231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010902, 0.014907, -0.999829,
		0.236454, -0.971569, -0.011907,
		-0.971581, -0.236284, -0.014117,
		40.019279, 37.259415, 40.782997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613525, 36.878807, 40.325993>,  <40.699387, 37.424812, 40.792877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613525, 36.878807, 40.325993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253479, 37.052410, 40.341118>,  <40.037453, 37.156574, 40.350193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253479, 37.052410, 40.341118>,  <40.613525, 36.878807, 40.325993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253479, 37.052410, 40.341118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034047, 0.016459, -0.999285,
		-0.434323, -0.900757, -0.000038,
		-0.900113, 0.434012, 0.037817,
		39.983444, 37.182613, 40.352463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302773, 36.514050, 39.875511>,  <40.613525, 36.878807, 40.325993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302773, 36.514050, 39.875511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054775, 36.823906, 39.925369>,  <39.905975, 37.009819, 39.955284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054775, 36.823906, 39.925369>,  <40.302773, 36.514050, 39.875511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054775, 36.823906, 39.925369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199687, -0.002159, -0.979857,
		-0.758767, -0.632399, 0.156024,
		-0.619998, 0.774640, 0.124644,
		39.868774, 37.056297, 39.962761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712353, 36.374298, 39.493885>,  <40.302773, 36.514050, 39.875511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712353, 36.374298, 39.493885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689362, 36.771313, 39.536896>,  <39.675568, 37.009521, 39.562702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689362, 36.771313, 39.536896>,  <39.712353, 36.374298, 39.493885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689362, 36.771313, 39.536896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151835, 0.097756, -0.983560,
		-0.986733, -0.072863, 0.145083,
		-0.057482, 0.992539, 0.107522,
		39.672115, 37.069073, 39.569153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233425, 36.598423, 39.004704>,  <39.712353, 36.374298, 39.493885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233425, 36.598423, 39.004704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401634, 36.954247, 39.076073>,  <39.502560, 37.167740, 39.118896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401634, 36.954247, 39.076073>,  <39.233425, 36.598423, 39.004704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401634, 36.954247, 39.076073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016618, 0.204180, -0.978792,
		-0.907129, 0.408642, 0.100645,
		0.420525, 0.889563, 0.178427,
		39.527790, 37.221115, 39.129601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887974, 37.057434, 38.564548>,  <39.233425, 36.598423, 39.004704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887974, 37.057434, 38.564548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244129, 37.216492, 38.653168>,  <39.457821, 37.311928, 38.706341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244129, 37.216492, 38.653168>,  <38.887974, 37.057434, 38.564548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244129, 37.216492, 38.653168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159819, 0.182642, -0.970103,
		-0.426222, 0.899177, 0.099071,
		0.890389, 0.397646, 0.221552,
		39.511246, 37.335785, 38.719635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829704, 37.631836, 38.190174>,  <38.887974, 37.057434, 38.564548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829704, 37.631836, 38.190174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216030, 37.575108, 38.276974>,  <39.447826, 37.541069, 38.329052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216030, 37.575108, 38.276974>,  <38.829704, 37.631836, 38.190174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216030, 37.575108, 38.276974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259109, 0.502504, -0.824835,
		0.007938, 0.852864, 0.522073,
		0.965816, -0.141821, 0.216996,
		39.505775, 37.532562, 38.342072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076736, 38.200554, 37.820625>,  <38.829704, 37.631836, 38.190174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076736, 38.200554, 37.820625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395897, 37.964478, 37.869663>,  <39.587395, 37.822834, 37.899086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395897, 37.964478, 37.869663>,  <39.076736, 38.200554, 37.820625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395897, 37.964478, 37.869663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330782, 0.258674, -0.907563,
		0.503920, 0.764700, 0.401620,
		0.797902, -0.590188, 0.122598,
		39.635269, 37.787422, 37.906445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561443, 38.511131, 37.511356>,  <39.076736, 38.200554, 37.820625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561443, 38.511131, 37.511356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712826, 38.141159, 37.525642>,  <39.803654, 37.919174, 37.534214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712826, 38.141159, 37.525642>,  <39.561443, 38.511131, 37.511356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712826, 38.141159, 37.525642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574282, 0.204367, -0.792738,
		0.725927, 0.320531, 0.608514,
		0.378458, -0.924929, 0.035720,
		39.826363, 37.863682, 37.536358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205139, 38.621948, 37.443214>,  <39.561443, 38.511131, 37.511356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205139, 38.621948, 37.443214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147938, 38.239727, 37.340084>,  <40.113617, 38.010395, 37.278206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147938, 38.239727, 37.340084>,  <40.205139, 38.621948, 37.443214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147938, 38.239727, 37.340084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521901, 0.148538, -0.839974,
		0.840934, -0.254677, 0.477462,
		-0.143001, -0.955550, -0.257827,
		40.105038, 37.953060, 37.262737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790325, 38.531246, 37.160885>,  <40.205139, 38.621948, 37.443214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790325, 38.531246, 37.160885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539913, 38.247276, 37.031834>,  <40.389668, 38.076893, 36.954403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539913, 38.247276, 37.031834>,  <40.790325, 38.531246, 37.160885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539913, 38.247276, 37.031834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407539, 0.054874, -0.911538,
		0.664831, -0.702132, 0.254971,
		-0.626029, -0.709929, -0.322628,
		40.352104, 38.034298, 36.935047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185078, 38.102009, 36.761490>,  <40.790325, 38.531246, 37.160885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185078, 38.102009, 36.761490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818531, 38.002544, 36.635994>,  <40.598602, 37.942863, 36.560696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818531, 38.002544, 36.635994>,  <41.185078, 38.102009, 36.761490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818531, 38.002544, 36.635994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344994, -0.092936, -0.933993,
		0.203094, -0.964121, 0.170951,
		-0.916369, -0.248666, -0.313742,
		40.543621, 37.927944, 36.541870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233818, 37.389141, 36.548759>,  <41.185078, 38.102009, 36.761490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233818, 37.389141, 36.548759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935593, 37.553589, 36.338951>,  <40.756657, 37.652256, 36.213066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935593, 37.553589, 36.338951>,  <41.233818, 37.389141, 36.548759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935593, 37.553589, 36.338951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453878, -0.263067, -0.851346,
		-0.487988, -0.872798, 0.009534,
		-0.745562, 0.411120, -0.524518,
		40.711926, 37.676926, 36.181595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936035, 36.845020, 36.177837>,  <41.233818, 37.389141, 36.548759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936035, 36.845020, 36.177837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949951, 37.219559, 36.038101>,  <40.958302, 37.444283, 35.954258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949951, 37.219559, 36.038101>,  <40.936035, 36.845020, 36.177837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949951, 37.219559, 36.038101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628591, -0.292254, -0.720736,
		-0.776957, -0.194519, -0.598748,
		0.034790, 0.936349, -0.349342,
		40.960388, 37.500462, 35.933300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656738, 36.904736, 35.529037>,  <40.936035, 36.845020, 36.177837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656738, 36.904736, 35.529037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966953, 37.143967, 35.609882>,  <41.153080, 37.287506, 35.658390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966953, 37.143967, 35.609882>,  <40.656738, 36.904736, 35.529037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966953, 37.143967, 35.609882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494349, -0.376211, -0.783635,
		-0.392641, 0.707648, -0.587425,
		0.775533, 0.598080, 0.202109,
		41.199612, 37.323391, 35.670517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911259, 37.302109, 34.845531>,  <40.656738, 36.904736, 35.529037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911259, 37.302109, 34.845531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228111, 37.303577, 35.089668>,  <41.418224, 37.304459, 35.236149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228111, 37.303577, 35.089668>,  <40.911259, 37.302109, 34.845531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228111, 37.303577, 35.089668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609944, -0.041240, -0.791371,
		0.022267, 0.999143, -0.034906,
		0.792132, 0.003669, 0.610339,
		41.465752, 37.304680, 35.272770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416271, 37.812721, 34.589569>,  <40.911259, 37.302109, 34.845531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416271, 37.812721, 34.589569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602165, 37.524860, 34.795921>,  <41.713699, 37.352146, 34.919731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602165, 37.524860, 34.795921>,  <41.416271, 37.812721, 34.589569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602165, 37.524860, 34.795921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644976, -0.124041, -0.754068,
		0.606656, 0.683167, 0.406512,
		0.464731, -0.719650, 0.515877,
		41.741585, 37.308964, 34.950684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173019, 37.998760, 34.713963>,  <41.416271, 37.812721, 34.589569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173019, 37.998760, 34.713963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099861, 37.606724, 34.683044>,  <42.055965, 37.371502, 34.664494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099861, 37.606724, 34.683044>,  <42.173019, 37.998760, 34.713963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099861, 37.606724, 34.683044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476044, -0.019494, -0.879206,
		0.860193, -0.197597, 0.470131,
		-0.182893, -0.980090, -0.077296,
		42.044994, 37.312698, 34.659855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264683, 37.568974, 34.124290>,  <42.173019, 37.998760, 34.713963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264683, 37.568974, 34.124290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307022, 37.188080, 34.238869>,  <42.332428, 36.959545, 34.307613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.307022, 37.188080, 34.238869>,  <42.264683, 37.568974, 34.124290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307022, 37.188080, 34.238869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616483, -0.163178, -0.770274,
		0.780221, 0.258120, 0.569763,
		0.105850, -0.952233, 0.286441,
		42.338776, 36.902409, 34.324802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976521, 37.351055, 34.237896>,  <42.264683, 37.568974, 34.124290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976521, 37.351055, 34.237896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756783, 37.043739, 34.106472>,  <42.624939, 36.859352, 34.027618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756783, 37.043739, 34.106472>,  <42.976521, 37.351055, 34.237896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756783, 37.043739, 34.106472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640163, -0.134246, -0.756419,
		0.537038, -0.625870, 0.565576,
		-0.549347, -0.768286, -0.328564,
		42.591980, 36.813251, 34.007904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163773, 37.812195, 34.792976>,  <42.976521, 37.351055, 34.237896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163773, 37.812195, 34.792976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507694, 37.776775, 34.994133>,  <43.714046, 37.755524, 35.114826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507694, 37.776775, 34.994133>,  <43.163773, 37.812195, 34.792976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507694, 37.776775, 34.994133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433975, 0.392276, 0.811039,
		-0.269089, -0.915576, 0.298852,
		0.859800, -0.088547, 0.502894,
		43.765633, 37.750210, 35.145000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001930, 37.337902, 35.286053>,  <43.163773, 37.812195, 34.792976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001930, 37.337902, 35.286053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321842, 37.547832, 35.402615>,  <43.513790, 37.673790, 35.472553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321842, 37.547832, 35.402615>,  <43.001930, 37.337902, 35.286053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321842, 37.547832, 35.402615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400929, 0.105710, 0.909989,
		0.446783, -0.844619, 0.294963,
		0.799775, 0.524828, 0.291403,
		43.561775, 37.705280, 35.490036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034058, 37.197636, 36.023861>,  <43.001930, 37.337902, 35.286053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034058, 37.197636, 36.023861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283108, 37.508461, 35.986965>,  <43.432537, 37.694954, 35.964828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283108, 37.508461, 35.986965>,  <43.034058, 37.197636, 36.023861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283108, 37.508461, 35.986965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340623, 0.375258, 0.862066,
		0.704492, -0.505329, 0.498332,
		0.622630, 0.777062, -0.092240,
		43.469898, 37.741581, 35.959293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400669, 37.181866, 36.658566>,  <43.034058, 37.197636, 36.023861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400669, 37.181866, 36.658566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395729, 37.549068, 36.500019>,  <43.392765, 37.769390, 36.404892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.395729, 37.549068, 36.500019>,  <43.400669, 37.181866, 36.658566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395729, 37.549068, 36.500019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181605, 0.387743, 0.903701,
		0.983294, 0.083147, 0.161924,
		-0.012355, 0.918010, -0.396365,
		43.392021, 37.824471, 36.381111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783115, 37.523129, 37.056629>,  <43.400669, 37.181866, 36.658566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783115, 37.523129, 37.056629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548252, 37.797508, 36.884712>,  <43.407333, 37.962135, 36.781563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.548252, 37.797508, 36.884712>,  <43.783115, 37.523129, 37.056629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.548252, 37.797508, 36.884712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181830, 0.405618, 0.895775,
		0.788785, 0.604112, -0.113437,
		-0.587160, 0.685947, -0.429790,
		43.372105, 38.003292, 36.755775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941212, 38.079243, 37.436085>,  <43.783115, 37.523129, 37.056629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941212, 38.079243, 37.436085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604843, 38.197315, 37.254658>,  <43.403023, 38.268158, 37.145802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604843, 38.197315, 37.254658>,  <43.941212, 38.079243, 37.436085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604843, 38.197315, 37.254658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215449, 0.586237, 0.780966,
		0.496422, 0.754451, -0.429382,
		-0.840920, 0.295179, -0.453567,
		43.352566, 38.285870, 37.118587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.018108, 38.740837, 37.477020>,  <43.941212, 38.079243, 37.436085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.018108, 38.740837, 37.477020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624722, 38.696075, 37.420067>,  <43.388691, 38.669216, 37.385895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624722, 38.696075, 37.420067>,  <44.018108, 38.740837, 37.477020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624722, 38.696075, 37.420067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179194, 0.487632, 0.854461,
		-0.026189, 0.865847, -0.499622,
		-0.983465, -0.111907, -0.142383,
		43.329681, 38.662502, 37.377354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661171, 39.363159, 37.448231>,  <44.018108, 38.740837, 37.477020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661171, 39.363159, 37.448231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387878, 39.093674, 37.560875>,  <43.223904, 38.931984, 37.628460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.387878, 39.093674, 37.560875>,  <43.661171, 39.363159, 37.448231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387878, 39.093674, 37.560875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268614, 0.590512, 0.761014,
		-0.678998, 0.444306, -0.584426,
		-0.683234, -0.673712, 0.281610,
		43.182907, 38.891560, 37.645359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095608, 39.760197, 37.768059>,  <43.661171, 39.363159, 37.448231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095608, 39.760197, 37.768059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976570, 39.398560, 37.890728>,  <42.905148, 39.181576, 37.964329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976570, 39.398560, 37.890728>,  <43.095608, 39.760197, 37.768059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976570, 39.398560, 37.890728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431513, 0.413927, 0.801537,
		-0.851606, 0.106202, -0.513312,
		-0.297598, -0.904094, 0.306675,
		42.887291, 39.127331, 37.982731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343922, 39.817993, 37.885349>,  <43.095608, 39.760197, 37.768059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343922, 39.817993, 37.885349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486298, 39.531815, 38.125828>,  <42.571724, 39.360107, 38.270115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.486298, 39.531815, 38.125828>,  <42.343922, 39.817993, 37.885349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.486298, 39.531815, 38.125828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380150, 0.476843, 0.792532,
		-0.853692, -0.510642, -0.102247,
		0.355944, -0.715448, 0.601198,
		42.593082, 39.317181, 38.306187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935207, 39.725002, 38.481846>,  <42.343922, 39.817993, 37.885349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935207, 39.725002, 38.481846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251995, 39.524910, 38.621880>,  <42.442066, 39.404854, 38.705902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251995, 39.524910, 38.621880>,  <41.935207, 39.725002, 38.481846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251995, 39.524910, 38.621880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148505, 0.398348, 0.905133,
		-0.592230, -0.768824, 0.241192,
		0.791966, -0.500228, 0.350088,
		42.489586, 39.374840, 38.726906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693623, 39.260014, 39.115002>,  <41.935207, 39.725002, 38.481846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693623, 39.260014, 39.115002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087151, 39.330166, 39.129616>,  <42.323269, 39.372257, 39.138386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087151, 39.330166, 39.129616>,  <41.693623, 39.260014, 39.115002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087151, 39.330166, 39.129616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096132, 0.344728, 0.933767,
		0.151168, -0.922174, 0.356011,
		0.983823, 0.175380, 0.036539,
		42.382298, 39.382782, 39.140575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909824, 38.862568, 39.693363>,  <41.693623, 39.260014, 39.115002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909824, 38.862568, 39.693363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187107, 39.142918, 39.626156>,  <42.353477, 39.311127, 39.585831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187107, 39.142918, 39.626156>,  <41.909824, 38.862568, 39.693363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187107, 39.142918, 39.626156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049393, 0.186372, 0.981237,
		0.719040, -0.688503, 0.094576,
		0.693211, 0.700877, -0.168016,
		42.395069, 39.353180, 39.575752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471230, 38.759621, 40.196575>,  <41.909824, 38.862568, 39.693363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471230, 38.759621, 40.196575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541866, 39.135403, 40.079113>,  <42.584248, 39.360874, 40.008636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541866, 39.135403, 40.079113>,  <42.471230, 38.759621, 40.196575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541866, 39.135403, 40.079113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137056, 0.271964, 0.952497,
		0.974695, -0.208450, -0.080732,
		0.176592, 0.939460, -0.293651,
		42.594845, 39.417240, 39.991016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050602, 38.934517, 40.643970>,  <42.471230, 38.759621, 40.196575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050602, 38.934517, 40.643970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964615, 39.287819, 40.477283>,  <42.913021, 39.499802, 40.377274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.964615, 39.287819, 40.477283>,  <43.050602, 38.934517, 40.643970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964615, 39.287819, 40.477283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322576, 0.466957, 0.823344,
		0.921810, 0.042571, -0.385298,
		-0.214969, 0.883255, -0.416713,
		42.900124, 39.552795, 40.352268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692764, 39.291878, 40.591015>,  <43.050602, 38.934517, 40.643970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692764, 39.291878, 40.591015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379047, 39.539875, 40.599949>,  <43.190819, 39.688675, 40.605309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.379047, 39.539875, 40.599949>,  <43.692764, 39.291878, 40.591015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379047, 39.539875, 40.599949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302434, 0.350654, 0.886327,
		0.541686, 0.701891, -0.462521,
		-0.784290, 0.619993, 0.022331,
		43.143761, 39.725872, 40.606647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951424, 39.845627, 40.847496>,  <43.692764, 39.291878, 40.591015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951424, 39.845627, 40.847496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561073, 39.908325, 40.908279>,  <43.326862, 39.945946, 40.944748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561073, 39.908325, 40.908279>,  <43.951424, 39.845627, 40.847496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561073, 39.908325, 40.908279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203964, 0.406397, 0.890640,
		0.077852, 0.900150, -0.428565,
		-0.975878, 0.156750, 0.151960,
		43.268311, 39.955349, 40.953869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881821, 40.433819, 41.206211>,  <43.951424, 39.845627, 40.847496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881821, 40.433819, 41.206211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532215, 40.259510, 41.292183>,  <43.322453, 40.154926, 41.343765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532215, 40.259510, 41.292183>,  <43.881821, 40.433819, 41.206211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532215, 40.259510, 41.292183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134624, 0.207847, 0.968853,
		-0.466873, 0.875729, -0.122996,
		-0.874017, -0.435773, 0.214932,
		43.270008, 40.128777, 41.356663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687454, 40.827957, 41.678635>,  <43.881821, 40.433819, 41.206211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687454, 40.827957, 41.678635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458241, 40.503044, 41.722157>,  <43.320713, 40.308098, 41.748268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458241, 40.503044, 41.722157>,  <43.687454, 40.827957, 41.678635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458241, 40.503044, 41.722157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091409, 0.195281, 0.976478,
		-0.814420, 0.549607, -0.186151,
		-0.573031, -0.812279, 0.108802,
		43.286331, 40.259361, 41.754799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068207, 41.099098, 41.915642>,  <43.687454, 40.827957, 41.678635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068207, 41.099098, 41.915642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101784, 40.715530, 42.024033>,  <43.121929, 40.485390, 42.089066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101784, 40.715530, 42.024033>,  <43.068207, 41.099098, 41.915642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101784, 40.715530, 42.024033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081698, 0.277644, 0.957204,
		-0.993116, -0.058211, 0.101648,
		0.083941, -0.958919, 0.270977,
		43.126965, 40.427856, 42.105324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761845, 41.028610, 42.629322>,  <43.068207, 41.099098, 41.915642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761845, 41.028610, 42.629322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940922, 40.670982, 42.623573>,  <43.048367, 40.456406, 42.620125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940922, 40.670982, 42.623573>,  <42.761845, 41.028610, 42.629322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940922, 40.670982, 42.623573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269359, 0.119520, 0.955594,
		-0.852653, -0.431683, 0.294335,
		0.447693, -0.894072, -0.014369,
		43.075230, 40.402760, 42.619263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594837, 40.708855, 43.203327>,  <42.761845, 41.028610, 42.629322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594837, 40.708855, 43.203327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945984, 40.584206, 43.057865>,  <43.156670, 40.509415, 42.970589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945984, 40.584206, 43.057865>,  <42.594837, 40.708855, 43.203327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945984, 40.584206, 43.057865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452967, 0.293741, 0.841746,
		-0.155491, -0.903662, 0.399021,
		0.877863, -0.311627, -0.363655,
		43.209343, 40.490719, 42.948769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019024, 40.880558, 43.648499>,  <42.594837, 40.708855, 43.203327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019024, 40.880558, 43.648499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286278, 40.688259, 43.421349>,  <43.446629, 40.572880, 43.285057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286278, 40.688259, 43.421349>,  <43.019024, 40.880558, 43.648499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286278, 40.688259, 43.421349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683540, 0.095127, 0.723687,
		-0.293890, -0.871685, 0.392167,
		0.668133, -0.480746, -0.567875,
		43.486717, 40.544037, 43.250988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325638, 40.477097, 44.152531>,  <43.019024, 40.880558, 43.648499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325638, 40.477097, 44.152531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558586, 40.561802, 43.838589>,  <43.698357, 40.612625, 43.650223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558586, 40.561802, 43.838589>,  <43.325638, 40.477097, 44.152531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558586, 40.561802, 43.838589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755351, 0.215913, 0.618730,
		0.300485, -0.953173, -0.034215,
		0.582369, 0.211764, -0.784858,
		43.733295, 40.625332, 43.603130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926727, 40.075710, 44.158211>,  <43.325638, 40.477097, 44.152531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926727, 40.075710, 44.158211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983799, 40.445118, 44.015800>,  <44.018040, 40.666763, 43.930355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983799, 40.445118, 44.015800>,  <43.926727, 40.075710, 44.158211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983799, 40.445118, 44.015800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771687, 0.121451, 0.624298,
		0.619792, -0.363812, -0.695341,
		0.142677, 0.923521, -0.356024,
		44.026604, 40.722176, 43.908993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469955, 40.259697, 44.525188>,  <43.926727, 40.075710, 44.158211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469955, 40.259697, 44.525188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402771, 40.601978, 44.329411>,  <44.362461, 40.807346, 44.211945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402771, 40.601978, 44.329411>,  <44.469955, 40.259697, 44.525188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402771, 40.601978, 44.329411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801735, 0.407468, 0.437254,
		0.573593, -0.318958, -0.754491,
		-0.167965, 0.855708, -0.489441,
		44.352383, 40.858692, 44.182579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662163, 39.580814, 44.173683>,  <44.469955, 40.259697, 44.525188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662163, 39.580814, 44.173683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024555, 39.728901, 44.255798>,  <45.241989, 39.817753, 44.305069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.024555, 39.728901, 44.255798>,  <44.662163, 39.580814, 44.173683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.024555, 39.728901, 44.255798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380034, -0.497658, -0.779686,
		-0.186490, 0.784395, -0.591563,
		0.905978, 0.370217, 0.205288,
		45.296349, 39.839966, 44.317387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910030, 39.827961, 43.436081>,  <44.662163, 39.580814, 44.173683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910030, 39.827961, 43.436081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210209, 39.737129, 43.684357>,  <45.390316, 39.682629, 43.833324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210209, 39.737129, 43.684357>,  <44.910030, 39.827961, 43.436081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210209, 39.737129, 43.684357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534057, -0.344919, -0.771890,
		0.389371, 0.910749, -0.137570,
		0.750449, -0.227082, 0.620694,
		45.435345, 39.669006, 43.870564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629215, 40.244984, 43.291836>,  <44.910030, 39.827961, 43.436081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629215, 40.244984, 43.291836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641396, 39.881702, 43.458805>,  <45.648705, 39.663734, 43.558987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.641396, 39.881702, 43.458805>,  <45.629215, 40.244984, 43.291836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641396, 39.881702, 43.458805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418244, -0.367721, -0.830574,
		0.907824, 0.199873, 0.368654,
		0.030447, -0.908203, 0.417421,
		45.650528, 39.609241, 43.584030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124573, 39.907860, 43.009064>,  <45.629215, 40.244984, 43.291836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124573, 39.907860, 43.009064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924652, 39.601273, 43.170418>,  <45.804699, 39.417320, 43.267231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.924652, 39.601273, 43.170418>,  <46.124573, 39.907860, 43.009064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.924652, 39.601273, 43.170418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092673, -0.510375, -0.854944,
		0.861167, -0.389921, 0.326118,
		-0.499803, -0.766472, 0.403383,
		45.774712, 39.371330, 43.291431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550064, 39.292229, 42.997547>,  <46.124573, 39.907860, 43.009064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550064, 39.292229, 42.997547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157524, 39.220024, 42.971130>,  <45.922001, 39.176701, 42.955280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.157524, 39.220024, 42.971130>,  <46.550064, 39.292229, 42.997547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.157524, 39.220024, 42.971130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153874, -0.531899, -0.832710,
		0.115184, -0.827345, 0.549757,
		-0.981354, -0.180508, -0.066041,
		45.863117, 39.165871, 42.951317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506466, 38.644611, 42.872353>,  <46.550064, 39.292229, 42.997547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506466, 38.644611, 42.872353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195812, 38.857872, 42.738132>,  <46.009422, 38.985828, 42.657600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195812, 38.857872, 42.738132>,  <46.506466, 38.644611, 42.872353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195812, 38.857872, 42.738132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020311, -0.511188, -0.859229,
		-0.629631, -0.674117, 0.386174,
		-0.776629, 0.533153, -0.335552,
		45.962822, 39.017818, 42.637466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076378, 38.219696, 42.462975>,  <46.506466, 38.644611, 42.872353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076378, 38.219696, 42.462975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912754, 38.565647, 42.346596>,  <45.814579, 38.773220, 42.276768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912754, 38.565647, 42.346596>,  <46.076378, 38.219696, 42.462975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912754, 38.565647, 42.346596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217608, -0.402103, -0.889359,
		-0.886179, -0.300493, 0.352691,
		-0.409064, 0.864880, -0.290946,
		45.790035, 38.825111, 42.259312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430229, 38.109776, 42.220066>,  <46.076378, 38.219696, 42.462975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430229, 38.109776, 42.220066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529373, 38.453220, 42.040577>,  <45.588860, 38.659286, 41.932884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529373, 38.453220, 42.040577>,  <45.430229, 38.109776, 42.220066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529373, 38.453220, 42.040577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246811, -0.391934, -0.886269,
		-0.936829, 0.330423, 0.114769,
		0.247862, 0.858608, -0.448727,
		45.603733, 38.710804, 41.905960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.927666, 38.172897, 41.708820>,  <45.430229, 38.109776, 42.220066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.927666, 38.172897, 41.708820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178974, 38.448109, 41.563553>,  <45.329758, 38.613235, 41.476391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178974, 38.448109, 41.563553>,  <44.927666, 38.172897, 41.708820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178974, 38.448109, 41.563553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306944, -0.209725, -0.928332,
		-0.714885, 0.694717, 0.079422,
		0.628272, 0.688029, -0.363168,
		45.367455, 38.654518, 41.454601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596092, 38.438446, 41.066917>,  <44.927666, 38.172897, 41.708820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596092, 38.438446, 41.066917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966938, 38.582005, 41.023727>,  <45.189445, 38.668140, 40.997814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.966938, 38.582005, 41.023727>,  <44.596092, 38.438446, 41.066917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966938, 38.582005, 41.023727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032956, -0.208921, -0.977377,
		-0.373335, 0.909695, -0.181865,
		0.927111, 0.358896, -0.107977,
		45.245071, 38.689674, 40.991333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504974, 38.801758, 40.419102>,  <44.596092, 38.438446, 41.066917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504974, 38.801758, 40.419102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893383, 38.720325, 40.469177>,  <45.126427, 38.671467, 40.499222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893383, 38.720325, 40.469177>,  <44.504974, 38.801758, 40.419102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893383, 38.720325, 40.469177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043467, -0.364649, -0.930130,
		0.235011, 0.908617, -0.345232,
		0.971020, -0.203585, 0.125191,
		45.184689, 38.659248, 40.506733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948147, 39.218277, 39.908142>,  <44.504974, 38.801758, 40.419102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948147, 39.218277, 39.908142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120518, 38.868603, 39.997673>,  <45.223938, 38.658798, 40.051392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.120518, 38.868603, 39.997673>,  <44.948147, 39.218277, 39.908142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.120518, 38.868603, 39.997673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112940, -0.193843, -0.974510,
		0.895293, 0.445219, 0.015199,
		0.430924, -0.874188, 0.223830,
		45.249794, 38.606346, 40.064823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482712, 39.137074, 39.355621>,  <44.948147, 39.218277, 39.908142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482712, 39.137074, 39.355621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432892, 38.784470, 39.537796>,  <45.403000, 38.572906, 39.647099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432892, 38.784470, 39.537796>,  <45.482712, 39.137074, 39.355621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432892, 38.784470, 39.537796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029143, -0.455559, -0.889729,
		0.991785, -0.124091, 0.031052,
		-0.124554, -0.881514, 0.455432,
		45.395527, 38.520016, 39.674427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997120, 38.647163, 39.059433>,  <45.482712, 39.137074, 39.355621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997120, 38.647163, 39.059433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715897, 38.420483, 39.231274>,  <45.547161, 38.284473, 39.334377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715897, 38.420483, 39.231274>,  <45.997120, 38.647163, 39.059433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715897, 38.420483, 39.231274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005184, -0.600012, -0.799974,
		0.711112, -0.564657, 0.418906,
		-0.703059, -0.566700, 0.429603,
		45.504978, 38.250473, 39.360153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299938, 38.035854, 39.198738>,  <45.997120, 38.647163, 39.059433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299938, 38.035854, 39.198738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908611, 37.953163, 39.203819>,  <45.673817, 37.903549, 39.206867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908611, 37.953163, 39.203819>,  <46.299938, 38.035854, 39.198738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.908611, 37.953163, 39.203819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106024, -0.552546, -0.826711,
		0.177926, -0.807437, 0.562483,
		-0.978316, -0.206730, 0.012705,
		45.615116, 37.891144, 39.207630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294712, 37.280346, 39.192562>,  <46.299938, 38.035854, 39.198738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294712, 37.280346, 39.192562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930923, 37.408676, 39.086781>,  <45.712650, 37.485676, 39.023312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930923, 37.408676, 39.086781>,  <46.294712, 37.280346, 39.192562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930923, 37.408676, 39.086781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026937, -0.589259, -0.807495,
		-0.414900, -0.741515, 0.527270,
		-0.909468, 0.320827, -0.264457,
		45.658085, 37.504925, 39.007442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.880093, 36.686081, 38.926807>,  <46.294712, 37.280346, 39.192562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.880093, 36.686081, 38.926807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717930, 37.018379, 38.774227>,  <45.620632, 37.217758, 38.682678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717930, 37.018379, 38.774227>,  <45.880093, 36.686081, 38.926807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717930, 37.018379, 38.774227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135733, -0.467360, -0.873585,
		-0.904002, -0.302385, 0.302232,
		-0.405410, 0.830745, -0.381451,
		45.596306, 37.267601, 38.659794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247356, 36.528358, 38.559093>,  <45.880093, 36.686081, 38.926807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247356, 36.528358, 38.559093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376244, 36.875149, 38.407032>,  <45.453575, 37.083225, 38.315796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376244, 36.875149, 38.407032>,  <45.247356, 36.528358, 38.559093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376244, 36.875149, 38.407032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207617, -0.327081, -0.921908,
		-0.923618, 0.375983, 0.074609,
		0.322218, 0.866980, -0.380158,
		45.472908, 37.135242, 38.292984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803692, 36.670185, 37.985653>,  <45.247356, 36.528358, 38.559093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803692, 36.670185, 37.985653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118473, 36.909950, 37.927128>,  <45.307343, 37.053810, 37.892014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118473, 36.909950, 37.927128>,  <44.803692, 36.670185, 37.985653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118473, 36.909950, 37.927128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000204, -0.236876, -0.971540,
		-0.617007, 0.764590, -0.186289,
		0.786958, 0.599409, -0.146310,
		45.354561, 37.089771, 37.883236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610836, 37.034843, 37.430550>,  <44.803692, 36.670185, 37.985653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610836, 37.034843, 37.430550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009659, 37.051785, 37.456139>,  <45.248951, 37.061951, 37.471493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009659, 37.051785, 37.456139>,  <44.610836, 37.034843, 37.430550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009659, 37.051785, 37.456139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076379, -0.468792, -0.880000,
		-0.007277, 0.882293, -0.470645,
		0.997052, 0.042351, 0.063977,
		45.308773, 37.064491, 37.475330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853092, 37.403862, 36.755650>,  <44.610836, 37.034843, 37.430550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853092, 37.403862, 36.755650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182949, 37.232853, 36.903805>,  <45.380863, 37.130249, 36.992699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182949, 37.232853, 36.903805>,  <44.853092, 37.403862, 36.755650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182949, 37.232853, 36.903805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319926, -0.187482, -0.928708,
		0.466482, 0.884351, -0.017831,
		0.824646, -0.427521, 0.370384,
		45.430344, 37.104595, 37.014919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398418, 37.755131, 36.356983>,  <44.853092, 37.403862, 36.755650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398418, 37.755131, 36.356983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520180, 37.401089, 36.497799>,  <45.593235, 37.188663, 36.582287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520180, 37.401089, 36.497799>,  <45.398418, 37.755131, 36.356983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520180, 37.401089, 36.497799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315703, -0.254941, -0.913968,
		0.898706, 0.389350, 0.201826,
		0.304399, -0.885106, 0.352036,
		45.611500, 37.135555, 36.603409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.111069, 37.654076, 36.207890>,  <45.398418, 37.755131, 36.356983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.111069, 37.654076, 36.207890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946442, 37.290997, 36.240631>,  <45.847668, 37.073151, 36.260277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946442, 37.290997, 36.240631>,  <46.111069, 37.654076, 36.207890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946442, 37.290997, 36.240631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375254, -0.250621, -0.892397,
		0.830542, -0.336562, 0.443764,
		-0.411563, -0.907698, 0.081855,
		45.822971, 37.018688, 36.265186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420887, 37.242233, 35.788567>,  <46.111069, 37.654076, 36.207890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420887, 37.242233, 35.788567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120598, 36.979824, 35.819668>,  <45.940422, 36.822380, 35.838329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.120598, 36.979824, 35.819668>,  <46.420887, 37.242233, 35.788567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.120598, 36.979824, 35.819668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145649, -0.279171, -0.949131,
		0.644359, -0.701211, 0.305129,
		-0.750725, -0.656024, 0.077756,
		45.895382, 36.783016, 35.842995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.056419, 36.713604, 35.754364>,  <46.420887, 37.242233, 35.788567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.056419, 36.713604, 35.754364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931477, 36.732784, 35.374863>,  <46.856510, 36.744293, 35.147163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.931477, 36.732784, 35.374863>,  <47.056419, 36.713604, 35.754364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.931477, 36.732784, 35.374863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002013, -0.998689, -0.051140,
		-0.949963, -0.017883, 0.311849,
		-0.312355, 0.047954, -0.948754,
		46.837769, 36.747169, 35.090237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583736, 36.163967, 35.516212>,  <47.056419, 36.713604, 35.754364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583736, 36.163967, 35.516212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.817150, 36.304489, 35.223343>,  <46.957199, 36.388802, 35.047623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.817150, 36.304489, 35.223343>,  <46.583736, 36.163967, 35.516212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.817150, 36.304489, 35.223343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524701, -0.851231, 0.009756,
		-0.619819, -0.389864, -0.681051,
		0.583536, 0.351301, -0.732171,
		46.992210, 36.409878, 35.003693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421219, 35.760994, 34.883930>,  <46.583736, 36.163967, 35.516212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421219, 35.760994, 34.883930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789173, 35.912590, 34.924294>,  <47.009945, 36.003548, 34.948509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789173, 35.912590, 34.924294>,  <46.421219, 35.760994, 34.883930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789173, 35.912590, 34.924294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362409, -0.919752, 0.150718,
		0.149929, -0.102074, -0.983414,
		0.919881, 0.378995, 0.100905,
		47.065136, 36.026287, 34.954563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.866226, 35.517376, 34.339783>,  <46.421219, 35.760994, 34.883930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.866226, 35.517376, 34.339783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082569, 35.603477, 34.665024>,  <47.212376, 35.655140, 34.860168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.082569, 35.603477, 34.665024>,  <46.866226, 35.517376, 34.339783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.082569, 35.603477, 34.665024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372835, -0.927894, -0.002359,
		0.753965, 0.304429, -0.582117,
		0.540861, 0.215255, 0.813102,
		47.244827, 35.668053, 34.908955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.624874, 35.374481, 34.196880>,  <46.866226, 35.517376, 34.339783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.624874, 35.374481, 34.196880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566109, 35.355301, 34.592075>,  <47.530849, 35.343792, 34.829193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.566109, 35.355301, 34.592075>,  <47.624874, 35.374481, 34.196880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.566109, 35.355301, 34.592075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365750, -0.930667, 0.009219,
		0.919044, 0.362710, 0.154270,
		-0.146917, -0.047952, 0.987986,
		47.522034, 35.340916, 34.888470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.170906, 35.030014, 34.444511>,  <47.624874, 35.374481, 34.196880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.170906, 35.030014, 34.444511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.889774, 34.993183, 34.726662>,  <47.721096, 34.971085, 34.895950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.889774, 34.993183, 34.726662>,  <48.170906, 35.030014, 34.444511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.889774, 34.993183, 34.726662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125022, -0.992142, -0.004939,
		0.700287, 0.084716, 0.708817,
		-0.702828, -0.092076, 0.705375,
		47.678925, 34.965561, 34.938274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.356110, 40.042267, 44.364204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988834, 39.919434, 44.464314>,  <36.768471, 39.845734, 44.524380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.988834, 39.919434, 44.464314>,  <37.356110, 40.042267, 44.364204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988834, 39.919434, 44.464314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175882, -0.250081, -0.952116,
		0.354966, -0.918238, 0.175611,
		-0.918186, -0.307082, 0.250271,
		36.713379, 39.827309, 44.539394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295822, 39.533966, 43.991253>,  <37.356110, 40.042267, 44.364204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295822, 39.533966, 43.991253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919334, 39.642845, 44.071266>,  <36.693443, 39.708172, 44.119274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.919334, 39.642845, 44.071266>,  <37.295822, 39.533966, 43.991253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919334, 39.642845, 44.071266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308440, -0.451072, -0.837495,
		-0.137738, -0.849965, 0.508516,
		-0.941218, 0.272201, 0.200034,
		36.636971, 39.724506, 44.131275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020420, 38.923794, 43.625000>,  <37.295822, 39.533966, 43.991253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020420, 38.923794, 43.625000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732910, 39.192932, 43.695023>,  <36.560406, 39.354416, 43.737034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732910, 39.192932, 43.695023>,  <37.020420, 38.923794, 43.625000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732910, 39.192932, 43.695023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495881, -0.319668, -0.807412,
		-0.487305, -0.667152, 0.563420,
		-0.718774, 0.672845, 0.175052,
		36.517277, 39.394787, 43.747540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345818, 38.639877, 43.474899>,  <37.020420, 38.923794, 43.625000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345818, 38.639877, 43.474899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314743, 39.038189, 43.455338>,  <36.296097, 39.277176, 43.443600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314743, 39.038189, 43.455338>,  <36.345818, 38.639877, 43.474899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314743, 39.038189, 43.455338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477219, -0.080210, -0.875116,
		-0.875344, -0.044648, 0.481436,
		-0.077688, 0.995778, -0.048904,
		36.291435, 39.336922, 43.440666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696819, 38.714317, 43.198288>,  <36.345818, 38.639877, 43.474899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696819, 38.714317, 43.198288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853008, 39.076828, 43.133545>,  <35.946720, 39.294334, 43.094700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853008, 39.076828, 43.133545>,  <35.696819, 38.714317, 43.198288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853008, 39.076828, 43.133545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539805, 0.082968, -0.837691,
		-0.745750, 0.414465, 0.521608,
		0.390471, 0.906275, -0.161857,
		35.970150, 39.348709, 43.084988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140564, 39.183300, 43.108349>,  <35.696819, 38.714317, 43.198288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140564, 39.183300, 43.108349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462170, 39.358582, 42.947582>,  <35.655132, 39.463749, 42.851120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462170, 39.358582, 42.947582>,  <35.140564, 39.183300, 43.108349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462170, 39.358582, 42.947582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403647, -0.094096, -0.910064,
		-0.436610, 0.893938, 0.101225,
		0.804015, 0.438202, -0.401918,
		35.703373, 39.490044, 42.827007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863583, 39.588749, 42.526394>,  <35.140564, 39.183300, 43.108349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863583, 39.588749, 42.526394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.259907, 39.581585, 42.472755>,  <35.497700, 39.577286, 42.440575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.259907, 39.581585, 42.472755>,  <34.863583, 39.588749, 42.526394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259907, 39.581585, 42.472755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130311, 0.139927, -0.981549,
		0.036338, 0.990000, 0.136308,
		0.990807, -0.017906, -0.134092,
		35.557148, 39.576214, 42.432529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034866, 40.280525, 42.193069>,  <34.863583, 39.588749, 42.526394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034866, 40.280525, 42.193069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287884, 39.979904, 42.118176>,  <35.439693, 39.799530, 42.073238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287884, 39.979904, 42.118176>,  <35.034866, 40.280525, 42.193069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287884, 39.979904, 42.118176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002820, 0.243970, -0.969779,
		0.774519, 0.612900, 0.156441,
		0.632544, -0.751553, -0.187231,
		35.477646, 39.754436, 42.062008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643513, 40.539093, 41.766407>,  <35.034866, 40.280525, 42.193069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643513, 40.539093, 41.766407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607910, 40.143021, 41.723305>,  <35.586548, 39.905376, 41.697445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607910, 40.143021, 41.723305>,  <35.643513, 40.539093, 41.766407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607910, 40.143021, 41.723305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080809, 0.100651, -0.991635,
		0.992748, -0.096969, 0.071058,
		-0.089006, -0.990185, -0.107757,
		35.581207, 39.845966, 41.690979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964642, 40.300831, 41.079704>,  <35.643513, 40.539093, 41.766407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964642, 40.300831, 41.079704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764149, 39.960667, 41.143661>,  <35.643852, 39.756569, 41.182037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764149, 39.960667, 41.143661>,  <35.964642, 40.300831, 41.079704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764149, 39.960667, 41.143661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002768, -0.186358, -0.982478,
		0.865307, -0.492009, 0.095763,
		-0.501235, -0.850411, 0.159895,
		35.613777, 39.705544, 41.191631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371460, 39.833881, 40.761093>,  <35.964642, 40.300831, 41.079704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371460, 39.833881, 40.761093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050068, 39.601353, 40.812450>,  <35.857235, 39.461834, 40.843266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050068, 39.601353, 40.812450>,  <36.371460, 39.833881, 40.761093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050068, 39.601353, 40.812450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133433, -0.386031, -0.912785,
		0.580190, -0.716269, 0.387735,
		-0.803477, -0.581325, 0.128397,
		35.809025, 39.426956, 40.850971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549564, 39.072502, 40.677227>,  <36.371460, 39.833881, 40.761093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549564, 39.072502, 40.677227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163975, 39.135098, 40.591183>,  <35.932621, 39.172653, 40.539558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163975, 39.135098, 40.591183>,  <36.549564, 39.072502, 40.677227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163975, 39.135098, 40.591183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126599, -0.441310, -0.888380,
		-0.233949, -0.883605, 0.405599,
		-0.963971, 0.156487, -0.215107,
		35.874783, 39.182045, 40.526649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242290, 38.405869, 40.383419>,  <36.549564, 39.072502, 40.677227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242290, 38.405869, 40.383419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019073, 38.709190, 40.248627>,  <35.885143, 38.891182, 40.167751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.019073, 38.709190, 40.248627>,  <36.242290, 38.405869, 40.383419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019073, 38.709190, 40.248627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149890, -0.491533, -0.857863,
		-0.816161, -0.428215, 0.387960,
		-0.558045, 0.758305, -0.336984,
		35.851662, 38.936684, 40.147530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966919, 38.060902, 39.842094>,  <36.242290, 38.405869, 40.383419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966919, 38.060902, 39.842094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881634, 38.442070, 39.755863>,  <35.830463, 38.670773, 39.704124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881634, 38.442070, 39.755863>,  <35.966919, 38.060902, 39.842094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881634, 38.442070, 39.755863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219041, -0.261661, -0.939976,
		-0.952135, -0.153194, 0.264519,
		-0.213213, 0.952924, -0.215581,
		35.817669, 38.727947, 39.691189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325863, 38.016052, 39.420414>,  <35.966919, 38.060902, 39.842094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325863, 38.016052, 39.420414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475739, 38.382248, 39.361774>,  <35.565666, 38.601963, 39.326591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.475739, 38.382248, 39.361774>,  <35.325863, 38.016052, 39.420414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475739, 38.382248, 39.361774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201287, -0.074028, -0.976731,
		-0.905035, 0.395483, 0.156538,
		0.374692, 0.915485, -0.146603,
		35.588146, 38.656895, 39.317795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906757, 38.213585, 39.005379>,  <35.325863, 38.016052, 39.420414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906757, 38.213585, 39.005379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211067, 38.465023, 38.940769>,  <35.393654, 38.615887, 38.902004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211067, 38.465023, 38.940769>,  <34.906757, 38.213585, 39.005379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211067, 38.465023, 38.940769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277524, 0.090098, -0.956485,
		-0.586689, 0.772496, 0.242995,
		0.760773, 0.628596, -0.161527,
		35.439301, 38.653603, 38.892311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708714, 38.685558, 38.504333>,  <34.906757, 38.213585, 39.005379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708714, 38.685558, 38.504333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105618, 38.719593, 38.468140>,  <35.343758, 38.740013, 38.446423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105618, 38.719593, 38.468140>,  <34.708714, 38.685558, 38.504333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105618, 38.719593, 38.468140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107705, 0.226598, -0.968015,
		-0.061864, 0.970264, 0.234008,
		0.992256, 0.085089, -0.090484,
		35.403294, 38.745121, 38.440994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798950, 39.041645, 37.919861>,  <34.708714, 38.685558, 38.504333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798950, 39.041645, 37.919861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172256, 38.904984, 37.964214>,  <35.396240, 38.822987, 37.990826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.172256, 38.904984, 37.964214>,  <34.798950, 39.041645, 37.919861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172256, 38.904984, 37.964214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180170, 0.178212, -0.967357,
		0.310739, 0.922775, 0.227874,
		0.933263, -0.341652, 0.110879,
		35.452236, 38.802486, 37.997478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259216, 39.499714, 37.526302>,  <34.798950, 39.041645, 37.919861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259216, 39.499714, 37.526302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436436, 39.143963, 37.571400>,  <35.542767, 38.930511, 37.598457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436436, 39.143963, 37.571400>,  <35.259216, 39.499714, 37.526302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436436, 39.143963, 37.571400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085894, -0.083073, -0.992835,
		0.892373, 0.449559, 0.039587,
		0.443050, -0.889379, 0.112746,
		35.569351, 38.877148, 37.605225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940739, 39.530510, 37.212685>,  <35.259216, 39.499714, 37.526302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940739, 39.530510, 37.212685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.886467, 39.136429, 37.254574>,  <35.853905, 38.899979, 37.279709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.886467, 39.136429, 37.254574>,  <35.940739, 39.530510, 37.212685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886467, 39.136429, 37.254574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175460, -0.127929, -0.976139,
		0.975092, -0.114070, 0.190221,
		-0.135683, -0.985202, 0.104728,
		35.845760, 38.840870, 37.285992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501389, 39.355465, 37.041245>,  <35.940739, 39.530510, 37.212685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501389, 39.355465, 37.041245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278000, 39.032490, 36.965191>,  <36.143967, 38.838703, 36.919559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.278000, 39.032490, 36.965191>,  <36.501389, 39.355465, 37.041245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278000, 39.032490, 36.965191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225118, 0.073084, -0.971587,
		0.798393, -0.585406, 0.140954,
		-0.558471, -0.807439, -0.190135,
		36.110458, 38.790257, 36.908150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888340, 38.861282, 36.627022>,  <36.501389, 39.355465, 37.041245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888340, 38.861282, 36.627022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503487, 38.775982, 36.559120>,  <36.272575, 38.724800, 36.518379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503487, 38.775982, 36.559120>,  <36.888340, 38.861282, 36.627022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503487, 38.775982, 36.559120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181672, -0.037450, -0.982646,
		0.203196, -0.976279, 0.074775,
		-0.962136, -0.213254, -0.169753,
		36.214844, 38.712006, 36.508194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694973, 38.777939, 36.344604>,  <36.888340, 38.861282, 36.627022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694973, 38.777939, 36.344604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040550, 38.977291, 36.315681>,  <38.247894, 39.096901, 36.298328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.040550, 38.977291, 36.315681>,  <37.694973, 38.777939, 36.344604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040550, 38.977291, 36.315681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108975, 0.325189, 0.939349,
		0.491664, -0.803661, 0.335254,
		0.863939, 0.498379, -0.072304,
		38.299732, 39.126804, 36.293991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153431, 38.580570, 36.873009>,  <37.694973, 38.777939, 36.344604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153431, 38.580570, 36.873009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311134, 38.934723, 36.774490>,  <38.405754, 39.147213, 36.715378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311134, 38.934723, 36.774490>,  <38.153431, 38.580570, 36.873009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311134, 38.934723, 36.774490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067882, 0.295333, 0.952980,
		0.916490, -0.358999, 0.176538,
		0.394256, 0.885380, -0.246300,
		38.429413, 39.200336, 36.700600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777462, 38.728703, 37.269783>,  <38.153431, 38.580570, 36.873009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777462, 38.728703, 37.269783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626041, 39.080368, 37.154015>,  <38.535191, 39.291367, 37.084553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626041, 39.080368, 37.154015>,  <38.777462, 38.728703, 37.269783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626041, 39.080368, 37.154015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010368, 0.316700, 0.948469,
		0.925523, 0.356043, -0.129002,
		-0.378551, 0.879167, -0.289421,
		38.512478, 39.344120, 37.067188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220406, 39.179760, 37.595951>,  <38.777462, 38.728703, 37.269783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220406, 39.179760, 37.595951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887672, 39.384495, 37.510082>,  <38.688034, 39.507336, 37.458561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.887672, 39.384495, 37.510082>,  <39.220406, 39.179760, 37.595951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887672, 39.384495, 37.510082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082684, 0.268193, 0.959810,
		0.548838, 0.816149, -0.180770,
		-0.831829, 0.511834, -0.214676,
		38.638123, 39.538044, 37.445679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310833, 39.886353, 37.802422>,  <39.220406, 39.179760, 37.595951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310833, 39.886353, 37.802422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915581, 39.824898, 37.803036>,  <38.678429, 39.788025, 37.803406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.915581, 39.824898, 37.803036>,  <39.310833, 39.886353, 37.802422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915581, 39.824898, 37.803036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054265, 0.358323, 0.932019,
		-0.143740, 0.920870, -0.362406,
		-0.988127, -0.153634, 0.001534,
		38.619144, 39.778809, 37.803497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199612, 40.477242, 38.103168>,  <39.310833, 39.886353, 37.802422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199612, 40.477242, 38.103168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868465, 40.253155, 38.114464>,  <38.669777, 40.118702, 38.121239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.868465, 40.253155, 38.114464>,  <39.199612, 40.477242, 38.103168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868465, 40.253155, 38.114464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170602, 0.299423, 0.938744,
		-0.534355, 0.772336, -0.343455,
		-0.827865, -0.560216, 0.028236,
		38.620106, 40.085091, 38.122936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628937, 40.912800, 38.214230>,  <39.199612, 40.477242, 38.103168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628937, 40.912800, 38.214230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525013, 40.543583, 38.327709>,  <38.462658, 40.322052, 38.395798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525013, 40.543583, 38.327709>,  <38.628937, 40.912800, 38.214230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525013, 40.543583, 38.327709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296582, 0.355859, 0.886230,
		-0.918986, 0.146116, -0.366216,
		-0.259814, -0.923046, 0.283694,
		38.447067, 40.266670, 38.412819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011574, 41.086899, 38.594116>,  <38.628937, 40.912800, 38.214230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011574, 41.086899, 38.594116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138680, 40.728710, 38.718796>,  <38.214943, 40.513798, 38.793602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.138680, 40.728710, 38.718796>,  <38.011574, 41.086899, 38.594116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138680, 40.728710, 38.718796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255752, 0.235607, 0.937593,
		-0.913027, -0.377650, -0.154151,
		0.317763, -0.895472, 0.311700,
		38.234009, 40.460068, 38.812305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500351, 40.957878, 39.121746>,  <38.011574, 41.086899, 38.594116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500351, 40.957878, 39.121746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791374, 40.689945, 39.181053>,  <37.965988, 40.529186, 39.216637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.791374, 40.689945, 39.181053>,  <37.500351, 40.957878, 39.121746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791374, 40.689945, 39.181053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060261, 0.152890, 0.986404,
		-0.683393, -0.726603, 0.070871,
		0.727559, -0.669831, 0.148270,
		38.009644, 40.488995, 39.225533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244270, 40.396233, 39.658978>,  <37.500351, 40.957878, 39.121746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244270, 40.396233, 39.658978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644188, 40.404156, 39.660995>,  <37.884136, 40.408909, 39.662209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.644188, 40.404156, 39.660995>,  <37.244270, 40.396233, 39.658978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644188, 40.404156, 39.660995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009474, 0.230294, 0.973075,
		0.018108, -0.972920, 0.230433,
		0.999791, 0.019804, 0.005048,
		37.944126, 40.410095, 39.662510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427467, 39.935310, 40.213367>,  <37.244270, 40.396233, 39.658978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427467, 39.935310, 40.213367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725933, 40.195099, 40.154819>,  <37.905014, 40.350971, 40.119690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725933, 40.195099, 40.154819>,  <37.427467, 39.935310, 40.213367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725933, 40.195099, 40.154819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105673, 0.101531, 0.989204,
		0.657320, -0.753578, 0.007128,
		0.746167, 0.649470, -0.146371,
		37.949783, 40.389938, 40.110909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867722, 39.849262, 40.859028>,  <37.427467, 39.935310, 40.213367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867722, 39.849262, 40.859028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004089, 40.185070, 40.689804>,  <38.085911, 40.386555, 40.588268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.004089, 40.185070, 40.689804>,  <37.867722, 39.849262, 40.859028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004089, 40.185070, 40.689804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268574, 0.344290, 0.899629,
		0.900913, -0.420323, -0.108099,
		0.340917, 0.839520, -0.423062,
		38.106365, 40.436928, 40.562885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576263, 40.071819, 41.012878>,  <37.867722, 39.849262, 40.859028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576263, 40.071819, 41.012878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403927, 40.412781, 40.894363>,  <38.300526, 40.617355, 40.823254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403927, 40.412781, 40.894363>,  <38.576263, 40.071819, 41.012878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403927, 40.412781, 40.894363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414915, 0.478675, 0.773767,
		0.801385, 0.210438, -0.559908,
		-0.430845, 0.852400, -0.296289,
		38.274673, 40.668499, 40.805477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100491, 40.583820, 40.889496>,  <38.576263, 40.071819, 41.012878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100491, 40.583820, 40.889496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769650, 40.783989, 40.991844>,  <38.571144, 40.904091, 41.053253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.769650, 40.783989, 40.991844>,  <39.100491, 40.583820, 40.889496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769650, 40.783989, 40.991844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478122, 0.387142, 0.788366,
		0.295458, 0.774401, -0.559471,
		-0.827106, 0.500425, 0.255874,
		38.521519, 40.934116, 41.068607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426037, 41.085876, 41.211708>,  <39.100491, 40.583820, 40.889496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426037, 41.085876, 41.211708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046627, 41.096672, 41.337929>,  <38.818981, 41.103149, 41.413662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046627, 41.096672, 41.337929>,  <39.426037, 41.085876, 41.211708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046627, 41.096672, 41.337929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301433, 0.382594, 0.873361,
		-0.097155, 0.923522, -0.371036,
		-0.948525, 0.026991, 0.315551,
		38.762070, 41.104771, 41.432594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366871, 41.669109, 41.653767>,  <39.426037, 41.085876, 41.211708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366871, 41.669109, 41.653767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041485, 41.451454, 41.735928>,  <38.846252, 41.320862, 41.785225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041485, 41.451454, 41.735928>,  <39.366871, 41.669109, 41.653767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041485, 41.451454, 41.735928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115705, 0.194702, 0.974014,
		-0.569988, 0.816093, -0.095424,
		-0.813465, -0.544136, 0.205404,
		38.797447, 41.288212, 41.797550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917637, 42.109604, 41.975971>,  <39.366871, 41.669109, 41.653767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917637, 42.109604, 41.975971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.835850, 41.731613, 42.078114>,  <38.786777, 41.504818, 42.139400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.835850, 41.731613, 42.078114>,  <38.917637, 42.109604, 41.975971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835850, 41.731613, 42.078114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133203, 0.231584, 0.963652,
		-0.969767, 0.231053, 0.078522,
		-0.204471, -0.944978, 0.255359,
		38.774509, 41.448120, 42.154720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377281, 42.130180, 42.475052>,  <38.917637, 42.109604, 41.975971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377281, 42.130180, 42.475052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570789, 41.783573, 42.524220>,  <38.686893, 41.575607, 42.553719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570789, 41.783573, 42.524220>,  <38.377281, 42.130180, 42.475052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570789, 41.783573, 42.524220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147320, 0.219068, 0.964524,
		-0.862709, -0.448496, 0.233634,
		0.483767, -0.866522, 0.122919,
		38.715919, 41.523617, 42.561096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.937080, 41.831394, 43.008831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222908, 41.551842, 43.021198>,  <38.394405, 41.384109, 43.028618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222908, 41.551842, 43.021198>,  <37.937080, 41.831394, 43.008831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222908, 41.551842, 43.021198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075929, 0.121421, 0.989693,
		-0.695436, -0.704852, 0.139829,
		0.714566, -0.698885, 0.030922,
		38.437279, 41.342175, 43.030476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814156, 41.289211, 43.563698>,  <37.937080, 41.831394, 43.008831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814156, 41.289211, 43.563698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207546, 41.257061, 43.498806>,  <38.443581, 41.237770, 43.459873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.207546, 41.257061, 43.498806>,  <37.814156, 41.289211, 43.563698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207546, 41.257061, 43.498806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142510, -0.208990, 0.967478,
		-0.111662, -0.974609, -0.194083,
		0.983475, -0.080371, -0.162228,
		38.502590, 41.232948, 43.450138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936066, 40.686661, 43.839462>,  <37.814156, 41.289211, 43.563698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936066, 40.686661, 43.839462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288349, 40.874664, 43.815987>,  <38.499718, 40.987469, 43.801899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.288349, 40.874664, 43.815987>,  <37.936066, 40.686661, 43.839462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288349, 40.874664, 43.815987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222329, -0.300789, 0.927413,
		0.418242, -0.829827, -0.369404,
		0.880706, 0.470012, -0.058692,
		38.552563, 41.015667, 43.798378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424313, 40.209175, 44.111290>,  <37.936066, 40.686661, 43.839462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424313, 40.209175, 44.111290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567661, 40.579220, 44.161480>,  <38.653671, 40.801247, 44.191593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.567661, 40.579220, 44.161480>,  <38.424313, 40.209175, 44.111290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567661, 40.579220, 44.161480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212797, -0.211813, 0.953862,
		0.909005, -0.315132, -0.272767,
		0.358368, 0.925109, 0.125479,
		38.675171, 40.856754, 44.199123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056042, 40.147335, 44.485909>,  <38.424313, 40.209175, 44.111290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056042, 40.147335, 44.485909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952076, 40.530575, 44.534054>,  <38.889694, 40.760517, 44.562943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952076, 40.530575, 44.534054>,  <39.056042, 40.147335, 44.485909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952076, 40.530575, 44.534054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136175, -0.087037, 0.986854,
		0.955980, 0.272893, -0.107847,
		-0.259919, 0.958099, 0.120367,
		38.874100, 40.818005, 44.570164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563854, 40.344635, 44.929848>,  <39.056042, 40.147335, 44.485909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563854, 40.344635, 44.929848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.260014, 40.603294, 44.957726>,  <39.077709, 40.758488, 44.974453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.260014, 40.603294, 44.957726>,  <39.563854, 40.344635, 44.929848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260014, 40.603294, 44.957726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076127, -0.018018, 0.996935,
		0.645918, 0.762579, -0.035541,
		-0.759601, 0.646644, 0.069690,
		39.032135, 40.797287, 44.978634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833061, 40.858490, 45.383938>,  <39.563854, 40.344635, 44.929848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833061, 40.858490, 45.383938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.438625, 40.924938, 45.381580>,  <39.201965, 40.964806, 45.380165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.438625, 40.924938, 45.381580>,  <39.833061, 40.858490, 45.383938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438625, 40.924938, 45.381580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011855, -0.034903, 0.999320,
		0.165802, 0.985487, 0.036387,
		-0.986088, 0.166121, -0.005896,
		39.142799, 40.974773, 45.379810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641521, 41.478298, 45.793289>,  <39.833061, 40.858490, 45.383938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641521, 41.478298, 45.793289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300560, 41.272171, 45.757832>,  <39.095982, 41.148495, 45.736557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.300560, 41.272171, 45.757832>,  <39.641521, 41.478298, 45.793289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300560, 41.272171, 45.757832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130155, 0.044923, 0.990475,
		-0.506426, 0.855822, -0.105364,
		-0.852404, -0.515317, -0.088639,
		39.044838, 41.117577, 45.731239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134426, 41.900803, 46.085415>,  <39.641521, 41.478298, 45.793289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134426, 41.900803, 46.085415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036629, 41.513077, 46.095600>,  <38.977951, 41.280441, 46.101711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.036629, 41.513077, 46.095600>,  <39.134426, 41.900803, 46.085415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036629, 41.513077, 46.095600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025306, 0.032626, 0.999147,
		-0.969321, 0.243640, -0.032506,
		-0.244493, -0.969317, 0.025459,
		38.963280, 41.222282, 46.103237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604149, 41.982533, 46.593525>,  <39.134426, 41.900803, 46.085415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604149, 41.982533, 46.593525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.665676, 41.587845, 46.572624>,  <38.702591, 41.351032, 46.560085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.665676, 41.587845, 46.572624>,  <38.604149, 41.982533, 46.593525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665676, 41.587845, 46.572624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258936, -0.091287, 0.961571,
		-0.953568, -0.134378, -0.269538,
		0.153819, -0.986717, -0.052253,
		38.711823, 41.291828, 46.556950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132439, 41.715576, 47.042931>,  <38.604149, 41.982533, 46.593525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132439, 41.715576, 47.042931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379841, 41.403847, 47.002705>,  <38.528282, 41.216808, 46.978569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.379841, 41.403847, 47.002705>,  <38.132439, 41.715576, 47.042931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379841, 41.403847, 47.002705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005496, -0.132273, 0.991198,
		-0.785765, -0.612504, -0.086094,
		0.618501, -0.779322, -0.100569,
		38.565392, 41.170052, 46.972534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817860, 41.117489, 47.443867>,  <38.132439, 41.715576, 47.042931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817860, 41.117489, 47.443867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214050, 41.070198, 47.415623>,  <38.451763, 41.041824, 47.398678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214050, 41.070198, 47.415623>,  <37.817860, 41.117489, 47.443867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214050, 41.070198, 47.415623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068018, -0.025824, 0.997350,
		-0.119742, -0.992650, -0.017536,
		0.990472, -0.118232, -0.070611,
		38.511192, 41.034729, 47.394440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980869, 40.553650, 47.923050>,  <37.817860, 41.117489, 47.443867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980869, 40.553650, 47.923050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317802, 40.765030, 47.880695>,  <38.519962, 40.891857, 47.855282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.317802, 40.765030, 47.880695>,  <37.980869, 40.553650, 47.923050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317802, 40.765030, 47.880695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121369, 0.005426, 0.992593,
		0.525113, -0.848945, -0.059568,
		0.842334, 0.528452, -0.105885,
		38.570503, 40.923565, 47.848930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546860, 40.252697, 48.284782>,  <37.980869, 40.553650, 47.923050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546860, 40.252697, 48.284782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639332, 40.640102, 48.247829>,  <38.694817, 40.872547, 48.225658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.639332, 40.640102, 48.247829>,  <38.546860, 40.252697, 48.284782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639332, 40.640102, 48.247829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218578, 0.040827, 0.974965,
		0.948040, -0.245587, -0.202258,
		0.231181, 0.968515, -0.092386,
		38.708687, 40.930656, 48.220112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035114, 40.339016, 48.892319>,  <38.546860, 40.252697, 48.284782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035114, 40.339016, 48.892319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007599, 40.724705, 48.789906>,  <38.991089, 40.956116, 48.728458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.007599, 40.724705, 48.789906>,  <39.035114, 40.339016, 48.892319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007599, 40.724705, 48.789906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028586, 0.258438, 0.965605,
		0.997221, 0.059106, -0.045341,
		-0.068791, 0.964218, -0.256031,
		38.986961, 41.013969, 48.713097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583984, 40.621632, 49.205219>,  <39.035114, 40.339016, 48.892319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583984, 40.621632, 49.205219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305672, 40.900249, 49.135113>,  <39.138683, 41.067421, 49.093048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305672, 40.900249, 49.135113>,  <39.583984, 40.621632, 49.205219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305672, 40.900249, 49.135113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066824, 0.305737, 0.949768,
		0.715140, 0.649117, -0.259272,
		-0.695780, 0.696543, -0.175268,
		39.096939, 41.109211, 49.082531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841175, 41.120296, 49.562355>,  <39.583984, 40.621632, 49.205219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841175, 41.120296, 49.562355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457905, 41.223179, 49.512157>,  <39.227943, 41.284908, 49.482040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457905, 41.223179, 49.512157>,  <39.841175, 41.120296, 49.562355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457905, 41.223179, 49.512157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109632, 0.075156, 0.991127,
		0.264351, 0.963431, -0.043815,
		-0.958175, 0.257202, -0.125490,
		39.170452, 41.300339, 49.474510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789886, 41.643269, 50.040421>,  <39.841175, 41.120296, 49.562355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789886, 41.643269, 50.040421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402870, 41.566566, 49.974571>,  <39.170662, 41.520546, 49.935062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.402870, 41.566566, 49.974571>,  <39.789886, 41.643269, 50.040421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402870, 41.566566, 49.974571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192807, 0.138948, 0.971349,
		-0.163383, 0.971558, -0.171409,
		-0.967539, -0.191751, -0.164621,
		39.112610, 41.509041, 49.925186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406975, 42.185852, 50.292320>,  <39.789886, 41.643269, 50.040421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406975, 42.185852, 50.292320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163620, 41.869568, 50.265064>,  <39.017605, 41.679798, 50.248711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.163620, 41.869568, 50.265064>,  <39.406975, 42.185852, 50.292320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163620, 41.869568, 50.265064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220940, 0.086275, 0.971464,
		-0.762265, 0.606084, -0.227188,
		-0.608389, -0.790708, -0.068144,
		38.981102, 41.632355, 50.244621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857273, 42.476944, 50.624977>,  <39.406975, 42.185852, 50.292320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857273, 42.476944, 50.624977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820515, 42.078644, 50.622753>,  <38.798458, 41.839664, 50.621418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.820515, 42.078644, 50.622753>,  <38.857273, 42.476944, 50.624977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820515, 42.078644, 50.622753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208744, 0.013803, 0.977873,
		-0.973643, 0.091026, -0.209125,
		-0.091899, -0.995753, -0.005562,
		38.792946, 41.779919, 50.621086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117176, 42.308983, 50.927963>,  <38.857273, 42.476944, 50.624977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117176, 42.308983, 50.927963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369774, 41.999569, 50.949341>,  <38.521332, 41.813919, 50.962170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.369774, 41.999569, 50.949341>,  <38.117176, 42.308983, 50.927963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369774, 41.999569, 50.949341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062519, 0.017911, 0.997883,
		-0.772859, -0.633496, -0.037050,
		0.631491, -0.773539, 0.053448,
		38.559219, 41.767506, 50.965374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841942, 41.750233, 51.340511>,  <38.117176, 42.308983, 50.927963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841942, 41.750233, 51.340511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239315, 41.795914, 51.343056>,  <38.477741, 41.823322, 51.344582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239315, 41.795914, 51.343056>,  <37.841942, 41.750233, 51.340511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239315, 41.795914, 51.343056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030921, 0.214607, 0.976211,
		0.110119, -0.970001, 0.216730,
		0.993437, 0.114201, 0.006361,
		38.537346, 41.830173, 51.344963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169113, 41.386818, 51.960354>,  <37.841942, 41.750233, 51.340511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169113, 41.386818, 51.960354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393005, 41.697956, 51.846054>,  <38.527340, 41.884640, 51.777473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393005, 41.697956, 51.846054>,  <38.169113, 41.386818, 51.960354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393005, 41.697956, 51.846054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178269, 0.223727, 0.958210,
		0.809270, -0.587283, -0.013439,
		0.559733, 0.777847, -0.285750,
		38.560925, 41.931309, 51.760330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611271, 41.128334, 52.331730>,  <38.169113, 41.386818, 51.960354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611271, 41.128334, 52.331730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360527, 40.841015, 52.452454>,  <37.210083, 40.668621, 52.524887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.360527, 40.841015, 52.452454>,  <37.611271, 41.128334, 52.331730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360527, 40.841015, 52.452454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158917, -0.261352, -0.952072,
		0.762755, -0.644776, 0.049679,
		-0.626857, -0.718303, 0.301813,
		37.172470, 40.625523, 52.542999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779831, 40.421486, 52.027534>,  <37.611271, 41.128334, 52.331730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779831, 40.421486, 52.027534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392380, 40.432529, 52.126331>,  <37.159908, 40.439156, 52.185608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.392380, 40.432529, 52.126331>,  <37.779831, 40.421486, 52.027534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392380, 40.432529, 52.126331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241401, -0.340833, -0.908602,
		0.059092, -0.939718, 0.336806,
		-0.968625, 0.027614, 0.246989,
		37.101791, 40.440815, 52.200428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584507, 39.776340, 51.939884>,  <37.779831, 40.421486, 52.027534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584507, 39.776340, 51.939884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250160, 39.995888, 51.936794>,  <37.049553, 40.127617, 51.934940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250160, 39.995888, 51.936794>,  <37.584507, 39.776340, 51.939884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250160, 39.995888, 51.936794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319385, -0.497732, -0.806385,
		-0.446444, -0.671568, 0.591341,
		-0.835871, 0.548872, -0.007721,
		36.999397, 40.160549, 51.934479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072689, 39.252251, 51.897362>,  <37.584507, 39.776340, 51.939884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072689, 39.252251, 51.897362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923740, 39.606922, 51.787720>,  <36.834370, 39.819725, 51.721935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.923740, 39.606922, 51.787720>,  <37.072689, 39.252251, 51.897362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923740, 39.606922, 51.787720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269260, -0.385857, -0.882391,
		-0.888165, -0.254775, 0.382431,
		-0.372375, 0.886682, -0.274104,
		36.812027, 39.872925, 51.705490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392975, 39.137012, 51.538330>,  <37.072689, 39.252251, 51.897362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392975, 39.137012, 51.538330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518265, 39.495956, 51.413982>,  <36.593437, 39.711323, 51.339375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.518265, 39.495956, 51.413982>,  <36.392975, 39.137012, 51.538330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518265, 39.495956, 51.413982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018036, -0.321662, -0.946683,
		-0.949509, 0.302127, -0.084566,
		0.313220, 0.897359, -0.310870,
		36.612232, 39.765163, 51.320721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029137, 39.279884, 50.984520>,  <36.392975, 39.137012, 51.538330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029137, 39.279884, 50.984520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.335159, 39.534187, 50.943527>,  <36.518772, 39.686768, 50.918930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.335159, 39.534187, 50.943527>,  <36.029137, 39.279884, 50.984520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335159, 39.534187, 50.943527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022086, -0.133147, -0.990850,
		-0.643582, 0.760321, -0.087824,
		0.765058, 0.635754, -0.102484,
		36.564678, 39.724915, 50.912781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772415, 39.702770, 50.546593>,  <36.029137, 39.279884, 50.984520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772415, 39.702770, 50.546593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167576, 39.749844, 50.506199>,  <36.404671, 39.778088, 50.481960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167576, 39.749844, 50.506199>,  <35.772415, 39.702770, 50.546593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167576, 39.749844, 50.506199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077061, -0.192569, -0.978253,
		-0.134569, 0.974201, -0.181170,
		0.987903, 0.117681, -0.100987,
		36.463947, 39.785149, 50.475903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881020, 40.267677, 50.069347>,  <35.772415, 39.702770, 50.546593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881020, 40.267677, 50.069347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202160, 40.029457, 50.058395>,  <36.394844, 39.886524, 50.051823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202160, 40.029457, 50.058395>,  <35.881020, 40.267677, 50.069347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202160, 40.029457, 50.058395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049908, 0.112904, -0.992352,
		0.594084, 0.795346, 0.120368,
		0.802853, -0.595548, -0.027380,
		36.443016, 39.850792, 50.050182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457851, 40.613468, 49.708397>,  <35.881020, 40.267677, 50.069347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457851, 40.613468, 49.708397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576004, 40.231720, 49.690865>,  <36.646896, 40.002670, 49.680344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.576004, 40.231720, 49.690865>,  <36.457851, 40.613468, 49.708397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576004, 40.231720, 49.690865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132379, 0.086326, -0.987433,
		0.946164, 0.285866, 0.151838,
		0.295381, -0.954373, -0.043836,
		36.664619, 39.945408, 49.677715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897160, 40.605804, 49.231873>,  <36.457851, 40.613468, 49.708397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897160, 40.605804, 49.231873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839184, 40.210152, 49.241718>,  <36.804398, 39.972759, 49.247623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839184, 40.210152, 49.241718>,  <36.897160, 40.605804, 49.231873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839184, 40.210152, 49.241718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310933, -0.069148, -0.947913,
		0.939315, -0.129737, 0.317577,
		-0.144939, -0.989134, 0.024612,
		36.795700, 39.913410, 49.249104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462730, 40.382614, 48.884739>,  <36.897160, 40.605804, 49.231873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462730, 40.382614, 48.884739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185673, 40.094170, 48.890827>,  <37.019436, 39.921101, 48.894482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.185673, 40.094170, 48.890827>,  <37.462730, 40.382614, 48.884739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185673, 40.094170, 48.890827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171977, -0.185610, -0.967457,
		0.700473, -0.667490, 0.252578,
		-0.692648, -0.721115, 0.015222,
		36.977879, 39.877834, 48.895393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779182, 39.754913, 48.611645>,  <37.462730, 40.382614, 48.884739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779182, 39.754913, 48.611645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.382202, 39.727421, 48.570999>,  <37.144016, 39.710926, 48.546612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.382202, 39.727421, 48.570999>,  <37.779182, 39.754913, 48.611645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382202, 39.727421, 48.570999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100755, 0.015825, -0.994785,
		0.069985, -0.997509, -0.008780,
		-0.992447, -0.068735, -0.101612,
		37.084469, 39.706802, 48.540516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679142, 39.320587, 48.040676>,  <37.779182, 39.754913, 48.611645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679142, 39.320587, 48.040676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325146, 39.502930, 48.078602>,  <37.112747, 39.612335, 48.101357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325146, 39.502930, 48.078602>,  <37.679142, 39.320587, 48.040676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325146, 39.502930, 48.078602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141862, -0.070039, -0.987406,
		-0.443476, -0.887293, 0.126653,
		-0.884989, 0.455858, 0.094813,
		37.059650, 39.639687, 48.107044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387737, 39.044708, 47.536026>,  <37.679142, 39.320587, 48.040676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387737, 39.044708, 47.536026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142715, 39.352234, 47.609455>,  <36.995701, 39.536747, 47.653511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142715, 39.352234, 47.609455>,  <37.387737, 39.044708, 47.536026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142715, 39.352234, 47.609455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338315, -0.045121, -0.939950,
		-0.714363, -0.637880, 0.287740,
		-0.612559, 0.768813, 0.183572,
		36.958946, 39.582878, 47.664528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697193, 38.800190, 47.197895>,  <37.387737, 39.044708, 47.536026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697193, 38.800190, 47.197895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751953, 39.193775, 47.243622>,  <36.784809, 39.429928, 47.271057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751953, 39.193775, 47.243622>,  <36.697193, 38.800190, 47.197895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751953, 39.193775, 47.243622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162351, 0.136126, -0.977298,
		-0.977190, 0.115236, 0.178384,
		0.136903, 0.983967, 0.114312,
		36.793022, 39.488964, 47.277916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271557, 39.008526, 46.748783>,  <36.697193, 38.800190, 47.197895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271557, 39.008526, 46.748783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485172, 39.340939, 46.810989>,  <36.613342, 39.540386, 46.848312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485172, 39.340939, 46.810989>,  <36.271557, 39.008526, 46.748783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485172, 39.340939, 46.810989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175295, 0.288781, -0.941210,
		-0.827088, 0.475381, 0.299897,
		0.534038, 0.831034, 0.155515,
		36.645382, 39.590248, 46.857643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902470, 39.566280, 46.604610>,  <36.271557, 39.008526, 46.748783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902470, 39.566280, 46.604610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276661, 39.705139, 46.578156>,  <36.501175, 39.788452, 46.562283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276661, 39.705139, 46.578156>,  <35.902470, 39.566280, 46.604610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276661, 39.705139, 46.578156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139521, 0.190868, -0.971650,
		-0.324678, 0.918184, 0.226987,
		0.935477, 0.347143, -0.066135,
		36.557304, 39.809280, 46.558315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810127, 40.197643, 46.293774>,  <35.902470, 39.566280, 46.604610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810127, 40.197643, 46.293774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180626, 40.056240, 46.241482>,  <36.402927, 39.971397, 46.210106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.180626, 40.056240, 46.241482>,  <35.810127, 40.197643, 46.293774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180626, 40.056240, 46.241482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088832, 0.132331, -0.987217,
		0.366290, 0.926024, 0.091169,
		0.926251, -0.353509, -0.130732,
		36.458500, 39.950188, 46.202263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109783, 40.703529, 45.759319>,  <35.810127, 40.197643, 46.293774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109783, 40.703529, 45.759319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389668, 40.417778, 45.762447>,  <36.557598, 40.246326, 45.764324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389668, 40.417778, 45.762447>,  <36.109783, 40.703529, 45.759319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389668, 40.417778, 45.762447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006407, -0.017219, -0.999831,
		0.714395, 0.699545, -0.016625,
		0.699713, -0.714381, 0.007820,
		36.599583, 40.203465, 45.764793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622536, 40.807747, 45.288033>,  <36.109783, 40.703529, 45.759319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622536, 40.807747, 45.288033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676323, 40.413750, 45.331295>,  <36.708595, 40.177349, 45.357250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.676323, 40.413750, 45.331295>,  <36.622536, 40.807747, 45.288033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676323, 40.413750, 45.331295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063560, -0.100347, -0.992920,
		0.988877, 0.140393, 0.049113,
		0.134471, -0.984998, 0.108154,
		36.716663, 40.118252, 45.363743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072983, 40.603535, 44.808655>,  <36.622536, 40.807747, 45.288033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072983, 40.603535, 44.808655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896671, 40.255989, 44.898800>,  <36.790886, 40.047462, 44.952888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896671, 40.255989, 44.898800>,  <37.072983, 40.603535, 44.808655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896671, 40.255989, 44.898800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169024, -0.166238, -0.971491,
		0.881559, -0.466303, -0.073585,
		-0.440777, -0.868865, 0.225365,
		36.764439, 39.995331, 44.966408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.755722, 39.276035, 42.520912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530174, 39.604568, 42.555481>,  <43.394848, 39.801689, 42.576221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.530174, 39.604568, 42.555481>,  <43.755722, 39.276035, 42.520912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530174, 39.604568, 42.555481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327230, -0.126117, -0.936491,
		-0.758272, -0.556332, 0.339878,
		-0.563865, 0.821334, 0.086418,
		43.361015, 39.850967, 42.581406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134571, 39.103424, 42.443733>,  <43.755722, 39.276035, 42.520912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134571, 39.103424, 42.443733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133602, 39.490971, 42.344711>,  <43.133022, 39.723499, 42.285297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.133602, 39.490971, 42.344711>,  <43.134571, 39.103424, 42.443733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133602, 39.490971, 42.344711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396931, -0.228149, -0.889041,
		-0.917845, 0.096111, 0.385127,
		-0.002420, 0.968871, -0.247555,
		43.132877, 39.781631, 42.270447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521732, 39.228764, 42.048939>,  <43.134571, 39.103424, 42.443733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521732, 39.228764, 42.048939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.736732, 39.547401, 41.938290>,  <42.865734, 39.738586, 41.871899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.736732, 39.547401, 41.938290>,  <42.521732, 39.228764, 42.048939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736732, 39.547401, 41.938290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441808, -0.013382, -0.897010,
		-0.718259, 0.604360, 0.344750,
		0.537504, 0.796599, -0.276623,
		42.897984, 39.786381, 41.855301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138840, 39.570969, 41.555565>,  <42.521732, 39.228764, 42.048939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138840, 39.570969, 41.555565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487808, 39.756924, 41.495232>,  <42.697189, 39.868496, 41.459030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.487808, 39.756924, 41.495232>,  <42.138840, 39.570969, 41.555565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487808, 39.756924, 41.495232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211515, 0.080917, -0.974019,
		-0.440608, 0.881662, 0.168925,
		0.872425, 0.464891, -0.150832,
		42.749535, 39.896393, 41.449982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039646, 40.243183, 41.087967>,  <42.138840, 39.570969, 41.555565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039646, 40.243183, 41.087967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428314, 40.152840, 41.060146>,  <42.661514, 40.098633, 41.043453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428314, 40.152840, 41.060146>,  <42.039646, 40.243183, 41.087967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428314, 40.152840, 41.060146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108424, -0.164534, -0.980394,
		0.209982, 0.960166, -0.184361,
		0.971675, -0.225854, -0.069555,
		42.719818, 40.085083, 41.039280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243607, 40.761223, 40.607708>,  <42.039646, 40.243183, 41.087967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243607, 40.761223, 40.607708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.477863, 40.437065, 40.601086>,  <42.618420, 40.242569, 40.597115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.477863, 40.437065, 40.601086>,  <42.243607, 40.761223, 40.607708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477863, 40.437065, 40.601086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148409, -0.087127, -0.985081,
		0.796865, 0.579365, -0.171296,
		0.585646, -0.810398, -0.016554,
		42.653557, 40.193947, 40.596119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495880, 40.747757, 39.954128>,  <42.243607, 40.761223, 40.607708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495880, 40.747757, 39.954128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602932, 40.381889, 40.075291>,  <42.667164, 40.162369, 40.147987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602932, 40.381889, 40.075291>,  <42.495880, 40.747757, 39.954128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602932, 40.381889, 40.075291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203393, -0.253663, -0.945667,
		0.941808, 0.314703, 0.118148,
		0.267634, -0.914668, 0.302910,
		42.683224, 40.107491, 40.166164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024765, 40.572536, 39.660557>,  <42.495880, 40.747757, 39.954128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024765, 40.572536, 39.660557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.883999, 40.211765, 39.760696>,  <42.799538, 39.995300, 39.820782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.883999, 40.211765, 39.760696>,  <43.024765, 40.572536, 39.660557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883999, 40.211765, 39.760696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237609, -0.344779, -0.908113,
		0.905370, -0.260096, 0.335641,
		-0.351918, -0.901930, 0.250352,
		42.778423, 39.941185, 39.835800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438484, 40.118267, 39.381302>,  <43.024765, 40.572536, 39.660557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438484, 40.118267, 39.381302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.107811, 39.899860, 39.435642>,  <42.909405, 39.768818, 39.468246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.107811, 39.899860, 39.435642>,  <43.438484, 40.118267, 39.381302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107811, 39.899860, 39.435642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228799, -0.546800, -0.805395,
		0.514042, -0.634726, 0.576961,
		-0.826687, -0.546015, 0.135853,
		42.859806, 39.736057, 39.476398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678432, 39.536552, 39.138138>,  <43.438484, 40.118267, 39.381302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678432, 39.536552, 39.138138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282047, 39.491501, 39.167294>,  <43.044216, 39.464470, 39.184788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282047, 39.491501, 39.167294>,  <43.678432, 39.536552, 39.138138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282047, 39.491501, 39.167294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020997, -0.666833, -0.744911,
		0.132508, -0.736646, 0.663170,
		-0.990960, -0.112631, 0.072893,
		42.984760, 39.457710, 39.189163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573120, 38.769230, 39.073856>,  <43.678432, 39.536552, 39.138138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573120, 38.769230, 39.073856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.218925, 38.931248, 38.982773>,  <43.006409, 39.028458, 38.928123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.218925, 38.931248, 38.982773>,  <43.573120, 38.769230, 39.073856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218925, 38.931248, 38.982773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021955, -0.525970, -0.850219,
		-0.464139, -0.747862, 0.474634,
		-0.885490, 0.405041, -0.227704,
		42.953278, 39.052761, 38.914459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005493, 38.212982, 38.976570>,  <43.573120, 38.769230, 39.073856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005493, 38.212982, 38.976570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899239, 38.542812, 38.776768>,  <42.835487, 38.740711, 38.656887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.899239, 38.542812, 38.776768>,  <43.005493, 38.212982, 38.976570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899239, 38.542812, 38.776768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202469, -0.554280, -0.807329,
		-0.942573, -0.113320, 0.314188,
		-0.265635, 0.824580, -0.499506,
		42.819550, 38.790188, 38.626915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479153, 38.043190, 38.520706>,  <43.005493, 38.212982, 38.976570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479153, 38.043190, 38.520706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.625538, 38.376087, 38.354122>,  <42.713367, 38.575825, 38.254169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.625538, 38.376087, 38.354122>,  <42.479153, 38.043190, 38.520706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625538, 38.376087, 38.354122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014971, -0.442183, -0.896800,
		-0.930509, 0.334430, -0.149363,
		0.365962, 0.832245, -0.416462,
		42.735325, 38.625759, 38.229183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122845, 38.120010, 37.863625>,  <42.479153, 38.043190, 38.520706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122845, 38.120010, 37.863625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.451427, 38.342190, 37.811962>,  <42.648579, 38.475498, 37.780964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.451427, 38.342190, 37.811962>,  <42.122845, 38.120010, 37.863625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451427, 38.342190, 37.811962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115206, -0.383460, -0.916344,
		-0.558510, 0.737859, -0.378987,
		0.821459, 0.555449, -0.129161,
		42.697865, 38.508823, 37.773212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059742, 38.414898, 37.161015>,  <42.122845, 38.120010, 37.863625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059742, 38.414898, 37.161015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446827, 38.483360, 37.235039>,  <42.679077, 38.524437, 37.279453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.446827, 38.483360, 37.235039>,  <42.059742, 38.414898, 37.161015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446827, 38.483360, 37.235039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225031, -0.255769, -0.940183,
		-0.113584, 0.951467, -0.286025,
		0.967709, 0.171154, 0.185058,
		42.737141, 38.534706, 37.290558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292831, 38.787071, 36.616772>,  <42.059742, 38.414898, 37.161015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292831, 38.787071, 36.616772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626614, 38.621189, 36.761936>,  <42.826881, 38.521660, 36.849033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.626614, 38.621189, 36.761936>,  <42.292831, 38.787071, 36.616772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626614, 38.621189, 36.761936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349856, -0.110140, -0.930306,
		0.425774, 0.903266, 0.053180,
		0.834456, -0.414705, 0.362907,
		42.876949, 38.496777, 36.870808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782715, 38.989647, 36.124340>,  <42.292831, 38.787071, 36.616772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782715, 38.989647, 36.124340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960239, 38.682407, 36.308971>,  <43.066753, 38.498062, 36.419750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960239, 38.682407, 36.308971>,  <42.782715, 38.989647, 36.124340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960239, 38.682407, 36.308971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565096, -0.159879, -0.809386,
		0.695485, 0.620052, 0.363093,
		0.443810, -0.768098, 0.461582,
		43.093384, 38.451977, 36.447445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361156, 39.001434, 35.785431>,  <42.782715, 38.989647, 36.124340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361156, 39.001434, 35.785431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395897, 38.658566, 35.988495>,  <43.416740, 38.452847, 36.110332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.395897, 38.658566, 35.988495>,  <43.361156, 39.001434, 35.785431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395897, 38.658566, 35.988495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648681, -0.338093, -0.681841,
		0.756089, 0.388529, 0.526664,
		0.086854, -0.857169, 0.507659,
		43.421951, 38.401413, 36.140793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058441, 38.892262, 35.679001>,  <43.361156, 39.001434, 35.785431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058441, 38.892262, 35.679001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901619, 38.545208, 35.801315>,  <43.807526, 38.336975, 35.874702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901619, 38.545208, 35.801315>,  <44.058441, 38.892262, 35.679001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901619, 38.545208, 35.801315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557211, -0.488447, -0.671517,
		0.731991, -0.092885, 0.674953,
		-0.392053, -0.867636, 0.305782,
		43.784004, 38.284916, 35.893051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579975, 38.455269, 35.793739>,  <44.058441, 38.892262, 35.679001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579975, 38.455269, 35.793739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266407, 38.218395, 35.719135>,  <44.078266, 38.076271, 35.674374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.266407, 38.218395, 35.719135>,  <44.579975, 38.455269, 35.793739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266407, 38.218395, 35.719135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539338, -0.500720, -0.677048,
		0.307550, -0.631342, 0.711913,
		-0.783918, -0.592188, -0.186511,
		44.031231, 38.040737, 35.663181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859116, 37.699154, 35.784744>,  <44.579975, 38.455269, 35.793739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859116, 37.699154, 35.784744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519962, 37.745670, 35.577835>,  <44.316471, 37.773582, 35.453690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519962, 37.745670, 35.577835>,  <44.859116, 37.699154, 35.784744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519962, 37.745670, 35.577835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455673, -0.338918, -0.823102,
		-0.271033, -0.933601, 0.234372,
		-0.847882, 0.116291, -0.517275,
		44.265598, 37.780560, 35.422653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001049, 37.195301, 35.236977>,  <44.859116, 37.699154, 35.784744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001049, 37.195301, 35.236977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674683, 37.401501, 35.132256>,  <44.478863, 37.525219, 35.069424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674683, 37.401501, 35.132256>,  <45.001049, 37.195301, 35.236977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674683, 37.401501, 35.132256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183645, -0.198299, -0.962784,
		-0.548231, -0.833629, 0.067126,
		-0.815915, 0.515500, -0.261805,
		44.429909, 37.556152, 35.053715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950005, 36.450809, 35.424412>,  <45.001049, 37.195301, 35.236977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950005, 36.450809, 35.424412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333069, 36.348938, 35.478107>,  <45.562908, 36.287815, 35.510323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.333069, 36.348938, 35.478107>,  <44.950005, 36.450809, 35.424412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333069, 36.348938, 35.478107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056503, 0.290927, 0.955075,
		-0.282292, -0.922225, 0.264220,
		0.957663, -0.254681, 0.134235,
		45.620369, 36.272533, 35.518379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045006, 35.878582, 36.031570>,  <44.950005, 36.450809, 35.424412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045006, 35.878582, 36.031570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.332321, 36.150585, 35.972710>,  <45.504711, 36.313786, 35.937393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.332321, 36.150585, 35.972710>,  <45.045006, 35.878582, 36.031570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332321, 36.150585, 35.972710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056184, 0.267510, 0.961916,
		0.693473, -0.682665, 0.230355,
		0.718288, 0.680005, -0.147156,
		45.547810, 36.354588, 35.928562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539467, 35.804581, 36.558056>,  <45.045006, 35.878582, 36.031570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539467, 35.804581, 36.558056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.633060, 36.181458, 36.462112>,  <45.689217, 36.407581, 36.404545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.633060, 36.181458, 36.462112>,  <45.539467, 35.804581, 36.558056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633060, 36.181458, 36.462112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100439, 0.268813, 0.957941,
		0.967038, -0.200055, 0.157531,
		0.233987, 0.942188, -0.239859,
		45.703259, 36.464115, 36.390156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.112038, 35.998951, 37.011009>,  <45.539467, 35.804581, 36.558056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.112038, 35.998951, 37.011009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951843, 36.344143, 36.887806>,  <45.855728, 36.551258, 36.813885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.951843, 36.344143, 36.887806>,  <46.112038, 35.998951, 37.011009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951843, 36.344143, 36.887806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039332, 0.319647, 0.946720,
		0.915459, 0.391262, -0.094071,
		-0.400485, 0.862983, -0.308013,
		45.831699, 36.603039, 36.795403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517658, 36.570301, 37.452133>,  <46.112038, 35.998951, 37.011009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517658, 36.570301, 37.452133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.173374, 36.720360, 37.314465>,  <45.966805, 36.810394, 37.231865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.173374, 36.720360, 37.314465>,  <46.517658, 36.570301, 37.452133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173374, 36.720360, 37.314465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137581, 0.479479, 0.866701,
		0.490157, 0.793327, -0.361079,
		-0.860708, 0.375142, -0.344167,
		45.915161, 36.832901, 37.211216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.595966, 37.301304, 37.516674>,  <46.517658, 36.570301, 37.452133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.595966, 37.301304, 37.516674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.202545, 37.230656, 37.501534>,  <45.966492, 37.188267, 37.492447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.202545, 37.230656, 37.501534>,  <46.595966, 37.301304, 37.516674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.202545, 37.230656, 37.501534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139132, 0.607131, 0.782326,
		-0.115188, 0.774725, -0.621717,
		-0.983552, -0.176616, -0.037855,
		45.907478, 37.177670, 37.490177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301041, 37.930908, 37.749596>,  <46.595966, 37.301304, 37.516674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301041, 37.930908, 37.749596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007866, 37.659851, 37.773579>,  <45.831963, 37.497215, 37.787968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007866, 37.659851, 37.773579>,  <46.301041, 37.930908, 37.749596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007866, 37.659851, 37.773579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269089, 0.369736, 0.889318,
		-0.624814, 0.635680, -0.453341,
		-0.732938, -0.677647, 0.059962,
		45.787983, 37.456558, 37.791569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659145, 38.346085, 37.890167>,  <46.301041, 37.930908, 37.749596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659145, 38.346085, 37.890167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589092, 37.969341, 38.004871>,  <45.547058, 37.743294, 38.073696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.589092, 37.969341, 38.004871>,  <45.659145, 38.346085, 37.890167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.589092, 37.969341, 38.004871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348787, 0.331728, 0.876530,
		-0.920693, 0.053492, -0.386605,
		-0.175135, -0.941857, 0.286762,
		45.536552, 37.686783, 38.090900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018353, 38.405254, 38.208988>,  <45.659145, 38.346085, 37.890167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018353, 38.405254, 38.208988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193020, 38.068901, 38.336880>,  <45.297821, 37.867088, 38.413616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193020, 38.068901, 38.336880>,  <45.018353, 38.405254, 38.208988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193020, 38.068901, 38.336880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223432, 0.242901, 0.943969,
		-0.871434, -0.483641, -0.081814,
		0.436669, -0.840886, 0.319733,
		45.324020, 37.816635, 38.432800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546936, 37.959507, 38.598248>,  <45.018353, 38.405254, 38.208988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.546936, 37.959507, 38.598248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912037, 37.846512, 38.716293>,  <45.131096, 37.778713, 38.787121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.912037, 37.846512, 38.716293>,  <44.546936, 37.959507, 38.598248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912037, 37.846512, 38.716293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271913, 0.119029, 0.954932,
		-0.304886, -0.951857, 0.031831,
		0.912747, -0.282490, 0.295112,
		45.185860, 37.761765, 38.804829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317356, 37.634563, 39.223541>,  <44.546936, 37.959507, 38.598248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317356, 37.634563, 39.223541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707642, 37.722095, 39.219803>,  <44.941814, 37.774616, 39.217560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.707642, 37.722095, 39.219803>,  <44.317356, 37.634563, 39.223541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.707642, 37.722095, 39.219803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052655, 0.275789, 0.959775,
		0.212606, -0.935978, 0.280615,
		0.975718, 0.218829, -0.009350,
		45.000359, 37.787746, 39.216999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.595856, 37.604668, 39.879570>,  <44.317356, 37.634563, 39.223541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.595856, 37.604668, 39.879570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921295, 37.774086, 39.720242>,  <45.116558, 37.875736, 39.624645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921295, 37.774086, 39.720242>,  <44.595856, 37.604668, 39.879570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921295, 37.774086, 39.720242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337516, 0.213781, 0.916723,
		0.473429, -0.880287, 0.030978,
		0.813602, 0.423547, -0.398321,
		45.165375, 37.901150, 39.600746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235023, 37.316879, 40.237000>,  <44.595856, 37.604668, 39.879570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235023, 37.316879, 40.237000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.307774, 37.678490, 40.082260>,  <45.351425, 37.895458, 39.989418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.307774, 37.678490, 40.082260>,  <45.235023, 37.316879, 40.237000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307774, 37.678490, 40.082260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416559, 0.285530, 0.863106,
		0.890730, -0.318123, -0.324651,
		0.181876, 0.904030, -0.386847,
		45.362335, 37.949699, 39.966206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.928288, 37.564495, 40.454334>,  <45.235023, 37.316879, 40.237000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.928288, 37.564495, 40.454334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.734890, 37.891136, 40.328228>,  <45.618851, 38.087120, 40.252563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.734890, 37.891136, 40.328228>,  <45.928288, 37.564495, 40.454334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734890, 37.891136, 40.328228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176789, 0.443834, 0.878497,
		0.857311, 0.369009, -0.358956,
		-0.483490, 0.816605, -0.315268,
		45.589844, 38.136116, 40.233646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384876, 38.146683, 40.435806>,  <45.928288, 37.564495, 40.454334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384876, 38.146683, 40.435806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.013981, 38.291965, 40.472271>,  <45.791443, 38.379135, 40.494148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.013981, 38.291965, 40.472271>,  <46.384876, 38.146683, 40.435806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.013981, 38.291965, 40.472271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240065, 0.389715, 0.889096,
		0.287397, 0.846289, -0.448552,
		-0.927239, 0.363205, 0.091161,
		45.735809, 38.400928, 40.499619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501625, 38.791904, 40.695946>,  <46.384876, 38.146683, 40.435806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501625, 38.791904, 40.695946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122757, 38.754013, 40.818516>,  <45.895435, 38.731277, 40.892056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122757, 38.754013, 40.818516>,  <46.501625, 38.791904, 40.695946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122757, 38.754013, 40.818516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224635, 0.485999, 0.844597,
		-0.228926, 0.868811, -0.439045,
		-0.947171, -0.094726, 0.306423,
		45.838604, 38.725594, 40.910442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356945, 39.453556, 41.108185>,  <46.501625, 38.791904, 40.695946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356945, 39.453556, 41.108185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.064060, 39.197037, 41.199917>,  <45.888329, 39.043125, 41.254955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.064060, 39.197037, 41.199917>,  <46.356945, 39.453556, 41.108185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064060, 39.197037, 41.199917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045225, 0.381762, 0.923154,
		-0.679569, 0.665577, -0.308535,
		-0.732216, -0.641300, 0.229333,
		45.844395, 39.004646, 41.268715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.869961, 39.878716, 41.350559>,  <46.356945, 39.453556, 41.108185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.869961, 39.878716, 41.350559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801571, 39.522869, 41.519955>,  <45.760536, 39.309361, 41.621593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801571, 39.522869, 41.519955>,  <45.869961, 39.878716, 41.350559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801571, 39.522869, 41.519955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001993, 0.429508, 0.903061,
		-0.985274, 0.155243, -0.071661,
		-0.170973, -0.889619, 0.423492,
		45.750278, 39.255981, 41.647003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552685, 40.087025, 41.869259>,  <45.869961, 39.878716, 41.350559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552685, 40.087025, 41.869259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607586, 39.704567, 41.972763>,  <45.640526, 39.475094, 42.034866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607586, 39.704567, 41.972763>,  <45.552685, 40.087025, 41.869259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607586, 39.704567, 41.972763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127144, 0.276078, 0.952689,
		-0.982342, -0.097861, 0.159460,
		0.137254, -0.956141, 0.258760,
		45.648762, 39.417725, 42.050392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046860, 39.994534, 42.361328>,  <45.552685, 40.087025, 41.869259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046860, 39.994534, 42.361328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.366615, 39.756268, 42.392696>,  <45.558468, 39.613308, 42.411518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.366615, 39.756268, 42.392696>,  <45.046860, 39.994534, 42.361328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366615, 39.756268, 42.392696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216983, 0.407946, 0.886847,
		-0.560259, -0.691923, 0.455359,
		0.799392, -0.595670, 0.078420,
		45.606434, 39.577568, 42.416222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.509495, 41.544010, 40.060390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419102, 41.184116, 40.209736>,  <38.364864, 40.968178, 40.299343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419102, 41.184116, 40.209736>,  <38.509495, 41.544010, 40.060390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419102, 41.184116, 40.209736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108460, -0.404137, -0.908245,
		0.968074, -0.164755, 0.188915,
		-0.225986, -0.899738, 0.373365,
		38.351307, 40.914196, 40.321747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035618, 41.108303, 39.895123>,  <38.509495, 41.544010, 40.060390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035618, 41.108303, 39.895123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689011, 40.916977, 39.952198>,  <38.481045, 40.802181, 39.986443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689011, 40.916977, 39.952198>,  <39.035618, 41.108303, 39.895123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689011, 40.916977, 39.952198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063592, -0.389334, -0.918899,
		0.495074, -0.787170, 0.367783,
		-0.866520, -0.478311, 0.142691,
		38.429054, 40.773483, 39.995007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203636, 40.477966, 39.736259>,  <39.035618, 41.108303, 39.895123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203636, 40.477966, 39.736259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805080, 40.449951, 39.717102>,  <38.565945, 40.433140, 39.705608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805080, 40.449951, 39.717102>,  <39.203636, 40.477966, 39.736259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805080, 40.449951, 39.717102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078644, -0.550411, -0.831182,
		0.031855, -0.831951, 0.553934,
		-0.996394, -0.070041, -0.047895,
		38.506161, 40.428940, 39.702732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070938, 39.767860, 39.524902>,  <39.203636, 40.477966, 39.736259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070938, 39.767860, 39.524902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739605, 39.972408, 39.433365>,  <38.540806, 40.095139, 39.378441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739605, 39.972408, 39.433365>,  <39.070938, 39.767860, 39.524902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739605, 39.972408, 39.433365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023978, -0.440464, -0.897450,
		-0.559729, -0.737897, 0.377110,
		-0.828329, 0.511371, -0.228848,
		38.491108, 40.125820, 39.364712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588074, 39.327209, 39.314640>,  <39.070938, 39.767860, 39.524902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588074, 39.327209, 39.314640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491501, 39.680145, 39.153049>,  <38.433559, 39.891907, 39.056095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491501, 39.680145, 39.153049>,  <38.588074, 39.327209, 39.314640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491501, 39.680145, 39.153049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034990, -0.423932, -0.905018,
		-0.969788, -0.204361, 0.133222,
		-0.241427, 0.882336, -0.403974,
		38.419071, 39.944847, 39.031857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145222, 39.050861, 38.727894>,  <38.588074, 39.327209, 39.314640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145222, 39.050861, 38.727894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235245, 39.432484, 38.648773>,  <38.289261, 39.661457, 38.601303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235245, 39.432484, 38.648773>,  <38.145222, 39.050861, 38.727894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235245, 39.432484, 38.648773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128366, -0.172203, -0.976662,
		-0.965852, 0.245197, 0.083713,
		0.225059, 0.954057, -0.197798,
		38.302761, 39.718700, 38.589436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620018, 39.319809, 38.341923>,  <38.145222, 39.050861, 38.727894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620018, 39.319809, 38.341923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924362, 39.569019, 38.269341>,  <38.106968, 39.718544, 38.225792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924362, 39.569019, 38.269341>,  <37.620018, 39.319809, 38.341923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924362, 39.569019, 38.269341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152791, -0.099767, -0.983210,
		-0.630669, 0.775813, 0.019284,
		0.760863, 0.623026, -0.181457,
		38.152622, 39.755928, 38.214905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353264, 39.737431, 37.718227>,  <37.620018, 39.319809, 38.341923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353264, 39.737431, 37.718227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752743, 39.749565, 37.734634>,  <37.992432, 39.756847, 37.744476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752743, 39.749565, 37.734634>,  <37.353264, 39.737431, 37.718227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752743, 39.749565, 37.734634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047543, -0.262080, -0.963874,
		-0.018490, 0.964569, -0.263181,
		0.998698, 0.030335, 0.041013,
		38.052353, 39.758667, 37.746937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555767, 40.168987, 37.102463>,  <37.353264, 39.737431, 37.718227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555767, 40.168987, 37.102463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896080, 39.992489, 37.216637>,  <38.100269, 39.886589, 37.285141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896080, 39.992489, 37.216637>,  <37.555767, 40.168987, 37.102463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896080, 39.992489, 37.216637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263023, -0.112685, -0.958186,
		0.454960, 0.890283, 0.020188,
		0.850782, -0.441247, 0.285432,
		38.151314, 39.860115, 37.302265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136139, 40.526440, 36.763012>,  <37.555767, 40.168987, 37.102463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136139, 40.526440, 36.763012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254475, 40.150932, 36.833664>,  <38.325478, 39.925629, 36.876057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254475, 40.150932, 36.833664>,  <38.136139, 40.526440, 36.763012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254475, 40.150932, 36.833664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177336, -0.127719, -0.975828,
		0.938632, 0.320012, 0.128693,
		0.295840, -0.938765, 0.176630,
		38.343227, 39.869301, 36.886654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840378, 40.444450, 36.470592>,  <38.136139, 40.526440, 36.763012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840378, 40.444450, 36.470592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701740, 40.073372, 36.526081>,  <38.618557, 39.850723, 36.559376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.701740, 40.073372, 36.526081>,  <38.840378, 40.444450, 36.470592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701740, 40.073372, 36.526081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278844, -0.243105, -0.929056,
		0.895611, -0.283323, 0.342943,
		-0.346594, -0.927701, 0.138725,
		38.597763, 39.795063, 36.567699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287373, 39.968178, 36.092945>,  <38.840378, 40.444450, 36.470592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287373, 39.968178, 36.092945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970840, 39.730114, 36.148914>,  <38.780922, 39.587276, 36.182495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970840, 39.730114, 36.148914>,  <39.287373, 39.968178, 36.092945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970840, 39.730114, 36.148914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078972, -0.326453, -0.941909,
		0.606265, -0.734312, 0.305334,
		-0.791332, -0.595159, 0.139927,
		38.733440, 39.551567, 36.190891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439827, 39.307266, 35.820797>,  <39.287373, 39.968178, 36.092945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439827, 39.307266, 35.820797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040878, 39.330315, 35.803242>,  <38.801510, 39.344143, 35.792709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040878, 39.330315, 35.803242>,  <39.439827, 39.307266, 35.820797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040878, 39.330315, 35.803242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020408, -0.357862, -0.933551,
		-0.069496, -0.931995, 0.355746,
		-0.997373, 0.057617, -0.043890,
		38.741665, 39.347599, 35.790073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090153, 38.683197, 35.793255>,  <39.439827, 39.307266, 35.820797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090153, 38.683197, 35.793255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872204, 38.929375, 35.565449>,  <38.741436, 39.077080, 35.428764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872204, 38.929375, 35.565449>,  <39.090153, 38.683197, 35.793255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872204, 38.929375, 35.565449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143798, -0.600546, -0.786554,
		-0.826096, -0.510467, 0.238722,
		-0.544873, 0.615441, -0.569513,
		38.708740, 39.114006, 35.394596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646965, 38.157337, 35.685196>,  <39.090153, 38.683197, 35.793255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646965, 38.157337, 35.685196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967087, 37.968765, 35.833389>,  <40.159161, 37.855621, 35.922306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967087, 37.968765, 35.833389>,  <39.646965, 38.157337, 35.685196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967087, 37.968765, 35.833389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520539, -0.239639, 0.819519,
		-0.297565, -0.848719, -0.437184,
		0.800309, -0.471432, 0.370484,
		40.207180, 37.827335, 35.944534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402706, 37.651264, 36.078697>,  <39.646965, 38.157337, 35.685196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402706, 37.651264, 36.078697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771973, 37.714634, 36.218796>,  <39.993530, 37.752655, 36.302856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771973, 37.714634, 36.218796>,  <39.402706, 37.651264, 36.078697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771973, 37.714634, 36.218796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310464, -0.229997, 0.922341,
		0.226673, -0.960211, -0.163141,
		0.923164, 0.158421, 0.350245,
		40.048923, 37.762161, 36.323868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524918, 37.163429, 36.477947>,  <39.402706, 37.651264, 36.078697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524918, 37.163429, 36.477947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815220, 37.408367, 36.603367>,  <39.989403, 37.555328, 36.678619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815220, 37.408367, 36.603367>,  <39.524918, 37.163429, 36.477947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815220, 37.408367, 36.603367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048650, -0.408946, 0.911261,
		0.686230, -0.676607, -0.267004,
		0.725756, 0.612345, 0.313548,
		40.032948, 37.592072, 36.697430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940601, 36.752495, 36.879738>,  <39.524918, 37.163429, 36.477947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940601, 36.752495, 36.879738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019375, 37.125755, 37.000034>,  <40.066639, 37.349712, 37.072212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019375, 37.125755, 37.000034>,  <39.940601, 36.752495, 36.879738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019375, 37.125755, 37.000034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088521, -0.288574, 0.953357,
		0.976412, -0.214370, 0.025774,
		0.196933, 0.933151, 0.300744,
		40.078453, 37.405701, 37.090256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196117, 36.617821, 37.506950>,  <39.940601, 36.752495, 36.879738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196117, 36.617821, 37.506950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155956, 37.014664, 37.536999>,  <40.131859, 37.252769, 37.555027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155956, 37.014664, 37.536999>,  <40.196117, 36.617821, 37.506950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155956, 37.014664, 37.536999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166708, -0.091214, 0.981778,
		0.980880, 0.086054, 0.174551,
		-0.100407, 0.992106, 0.075124,
		40.125835, 37.312294, 37.559536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554325, 36.928200, 38.108887>,  <40.196117, 36.617821, 37.506950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554325, 36.928200, 38.108887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279259, 37.210297, 38.039890>,  <40.114220, 37.379555, 37.998493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279259, 37.210297, 38.039890>,  <40.554325, 36.928200, 38.108887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279259, 37.210297, 38.039890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220625, 0.023358, 0.975079,
		0.691696, 0.708581, 0.139531,
		-0.687663, 0.705243, -0.172487,
		40.072960, 37.421871, 37.988144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732819, 37.428387, 38.561405>,  <40.554325, 36.928200, 38.108887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732819, 37.428387, 38.561405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342289, 37.428883, 38.474876>,  <40.107971, 37.429180, 38.422958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342289, 37.428883, 38.474876>,  <40.732819, 37.428387, 38.561405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342289, 37.428883, 38.474876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215921, 0.055410, 0.974837,
		0.013190, 0.998463, -0.053831,
		-0.976322, 0.001235, -0.216320,
		40.049393, 37.429253, 38.409981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537079, 38.043694, 38.932415>,  <40.732819, 37.428387, 38.561405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537079, 38.043694, 38.932415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225750, 37.795635, 38.893150>,  <40.038952, 37.646801, 38.869591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225750, 37.795635, 38.893150>,  <40.537079, 38.043694, 38.932415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225750, 37.795635, 38.893150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230406, 0.136670, 0.963449,
		-0.584059, 0.772493, -0.249258,
		-0.778324, -0.620141, -0.098163,
		39.992252, 37.609592, 38.863701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193813, 38.281227, 39.521805>,  <40.537079, 38.043694, 38.932415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193813, 38.281227, 39.521805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995197, 37.961330, 39.386829>,  <39.876026, 37.769394, 39.305843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995197, 37.961330, 39.386829>,  <40.193813, 38.281227, 39.521805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995197, 37.961330, 39.386829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455104, -0.091168, 0.885759,
		-0.739139, 0.593387, -0.318695,
		-0.496542, -0.799738, -0.337439,
		39.846233, 37.721409, 39.285599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526123, 38.359520, 39.692837>,  <40.193813, 38.281227, 39.521805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526123, 38.359520, 39.692837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579967, 37.964897, 39.655792>,  <39.612274, 37.728123, 39.633564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579967, 37.964897, 39.655792>,  <39.526123, 38.359520, 39.692837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579967, 37.964897, 39.655792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260923, -0.125453, 0.957173,
		-0.955929, -0.104680, -0.274304,
		0.134609, -0.986561, -0.092611,
		39.620350, 37.668930, 39.628010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061539, 38.026527, 40.083652>,  <39.526123, 38.359520, 39.692837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061539, 38.026527, 40.083652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312328, 37.720444, 40.025200>,  <39.462803, 37.536793, 39.990128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312328, 37.720444, 40.025200>,  <39.061539, 38.026527, 40.083652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312328, 37.720444, 40.025200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180452, -0.325130, 0.928293,
		-0.757851, -0.555648, -0.341932,
		0.626976, -0.765210, -0.146132,
		39.500420, 37.490879, 39.981361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741741, 37.441021, 40.422153>,  <39.061539, 38.026527, 40.083652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741741, 37.441021, 40.422153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139332, 37.397358, 40.418438>,  <39.377888, 37.371159, 40.416210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139332, 37.397358, 40.418438>,  <38.741741, 37.441021, 40.422153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139332, 37.397358, 40.418438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034687, -0.393972, 0.918468,
		-0.103917, -0.912617, -0.395387,
		0.993981, -0.109159, -0.009285,
		39.437527, 37.364609, 40.415653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728436, 36.835526, 40.811440>,  <38.741741, 37.441021, 40.422153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728436, 36.835526, 40.811440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110001, 36.953236, 40.787945>,  <39.338940, 37.023861, 40.773846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110001, 36.953236, 40.787945>,  <38.728436, 36.835526, 40.811440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110001, 36.953236, 40.787945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161125, -0.337149, 0.927561,
		0.253158, -0.894277, -0.369026,
		0.953913, 0.294279, -0.058739,
		39.396175, 37.041519, 40.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183853, 36.232376, 40.984764>,  <38.728436, 36.835526, 40.811440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183853, 36.232376, 40.984764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373482, 36.575920, 41.062344>,  <39.487259, 36.782047, 41.108891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373482, 36.575920, 41.062344>,  <39.183853, 36.232376, 40.984764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373482, 36.575920, 41.062344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123292, -0.282859, 0.951204,
		0.871809, -0.427030, -0.239987,
		0.474075, 0.858857, 0.193950,
		39.515705, 36.833576, 41.120529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397430, 35.569500, 41.368587>,  <39.183853, 36.232376, 40.984764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397430, 35.569500, 41.368587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169621, 35.288883, 41.539925>,  <39.032936, 35.120514, 41.642727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169621, 35.288883, 41.539925>,  <39.397430, 35.569500, 41.368587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169621, 35.288883, 41.539925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467961, -0.151692, -0.870633,
		0.675763, -0.696295, -0.241902,
		-0.569523, -0.701543, 0.428347,
		38.998764, 35.078419, 41.668430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500977, 35.037403, 40.985630>,  <39.397430, 35.569500, 41.368587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500977, 35.037403, 40.985630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146919, 34.970161, 41.159184>,  <38.934483, 34.929817, 41.263317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146919, 34.970161, 41.159184>,  <39.500977, 35.037403, 40.985630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146919, 34.970161, 41.159184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417339, -0.125553, -0.900036,
		0.205780, -0.977740, 0.040974,
		-0.885146, -0.168109, 0.433886,
		38.881374, 34.919727, 41.289349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135910, 34.467026, 40.616276>,  <39.500977, 35.037403, 40.985630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135910, 34.467026, 40.616276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815346, 34.615788, 40.803650>,  <38.623009, 34.705044, 40.916073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815346, 34.615788, 40.803650>,  <39.135910, 34.467026, 40.616276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815346, 34.615788, 40.803650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546741, -0.137955, -0.825859,
		-0.242519, -0.917962, 0.313894,
		-0.801410, 0.371905, 0.468431,
		38.574921, 34.727360, 40.944180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619606, 34.051910, 40.443123>,  <39.135910, 34.467026, 40.616276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619606, 34.051910, 40.443123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450153, 34.391232, 40.570194>,  <38.348480, 34.594822, 40.646439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450153, 34.391232, 40.570194>,  <38.619606, 34.051910, 40.443123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450153, 34.391232, 40.570194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577824, 0.017020, -0.815984,
		-0.697605, -0.529244, 0.482957,
		-0.423635, 0.848299, 0.317683,
		38.323063, 34.645721, 40.665501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911640, 33.949528, 40.406990>,  <38.619606, 34.051910, 40.443123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911640, 33.949528, 40.406990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940727, 34.348469, 40.407063>,  <37.958179, 34.587833, 40.407104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940727, 34.348469, 40.407063>,  <37.911640, 33.949528, 40.406990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940727, 34.348469, 40.407063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799469, 0.058396, -0.597862,
		-0.596290, 0.043329, 0.801599,
		0.072715, 0.997353, 0.000181,
		37.962543, 34.647675, 40.407116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156345, 34.129192, 40.535988>,  <37.911640, 33.949528, 40.406990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156345, 34.129192, 40.535988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360497, 34.431278, 40.371468>,  <37.482986, 34.612530, 40.272755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360497, 34.431278, 40.371468>,  <37.156345, 34.129192, 40.535988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360497, 34.431278, 40.371468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732211, 0.130821, -0.668396,
		-0.450974, 0.642294, 0.619743,
		0.510382, 0.755212, -0.411297,
		37.513611, 34.657841, 40.248077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665867, 34.709103, 40.301254>,  <37.156345, 34.129192, 40.535988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665867, 34.709103, 40.301254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008602, 34.762798, 40.102135>,  <37.214245, 34.795017, 39.982662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008602, 34.762798, 40.102135>,  <36.665867, 34.709103, 40.301254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008602, 34.762798, 40.102135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505208, 0.411313, -0.758674,
		0.102908, 0.901555, 0.420247,
		0.856840, 0.134238, -0.497800,
		37.265656, 34.803070, 39.952793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639072, 35.418991, 39.995373>,  <36.665867, 34.709103, 40.301254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639072, 35.418991, 39.995373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898586, 35.218502, 39.766338>,  <37.054295, 35.098209, 39.628918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898586, 35.218502, 39.766338>,  <36.639072, 35.418991, 39.995373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898586, 35.218502, 39.766338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584468, 0.153647, -0.796737,
		0.487320, 0.851567, -0.193267,
		0.648780, -0.501224, -0.572589,
		37.093220, 35.068134, 39.594563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645214, 35.821659, 39.396103>,  <36.639072, 35.418991, 39.995373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645214, 35.821659, 39.396103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824612, 35.492020, 39.257702>,  <36.932251, 35.294235, 39.174660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824612, 35.492020, 39.257702>,  <36.645214, 35.821659, 39.396103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824612, 35.492020, 39.257702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368887, 0.181938, -0.911494,
		0.814109, 0.536438, -0.222399,
		0.448497, -0.824095, -0.346002,
		36.959160, 35.244789, 39.153900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989639, 35.962620, 38.698982>,  <36.645214, 35.821659, 39.396103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989639, 35.962620, 38.698982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938961, 35.565926, 38.707027>,  <36.908554, 35.327908, 38.711853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938961, 35.565926, 38.707027>,  <36.989639, 35.962620, 38.698982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938961, 35.565926, 38.707027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389974, 0.031157, -0.920299,
		0.912068, -0.124442, -0.390700,
		-0.126697, -0.991738, 0.020112,
		36.900951, 35.268406, 38.713062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393116, 35.736202, 38.175137>,  <36.989639, 35.962620, 38.698982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393116, 35.736202, 38.175137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098015, 35.479134, 38.257790>,  <36.920956, 35.324894, 38.307381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098015, 35.479134, 38.257790>,  <37.393116, 35.736202, 38.175137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098015, 35.479134, 38.257790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375217, 0.135924, -0.916917,
		0.561187, -0.753991, -0.341418,
		-0.737755, -0.642668, 0.206631,
		36.876690, 35.286335, 38.319778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309818, 35.356026, 37.511940>,  <37.393116, 35.736202, 38.175137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309818, 35.356026, 37.511940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994282, 35.296490, 37.750458>,  <36.804958, 35.260769, 37.893570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994282, 35.296490, 37.750458>,  <37.309818, 35.356026, 37.511940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994282, 35.296490, 37.750458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590504, -0.085427, -0.802501,
		0.170386, -0.985164, -0.020503,
		-0.788843, -0.148843, 0.596298,
		36.757629, 35.251839, 37.929348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.806477, 34.863625, 45.091812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416553, 34.912632, 45.166367>,  <40.182598, 34.942036, 45.211098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416553, 34.912632, 45.166367>,  <40.806477, 34.863625, 45.091812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416553, 34.912632, 45.166367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221483, -0.433090, -0.873715,
		-0.026322, -0.892986, 0.449315,
		-0.974809, 0.122513, 0.186382,
		40.124111, 34.949387, 45.222282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566650, 34.316113, 44.846706>,  <40.806477, 34.863625, 45.091812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566650, 34.316113, 44.846706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279652, 34.594704, 44.842209>,  <40.107452, 34.761856, 44.839512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.279652, 34.594704, 44.842209>,  <40.566650, 34.316113, 44.846706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279652, 34.594704, 44.842209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213892, -0.235651, -0.948008,
		-0.662913, -0.677785, 0.318048,
		-0.717493, 0.696474, -0.011244,
		40.064404, 34.803646, 44.838837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049675, 33.991951, 44.510746>,  <40.566650, 34.316113, 44.846706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049675, 33.991951, 44.510746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.959023, 34.379612, 44.472004>,  <39.904629, 34.612209, 44.448761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.959023, 34.379612, 44.472004>,  <40.049675, 33.991951, 44.510746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959023, 34.379612, 44.472004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438589, -0.190335, -0.878301,
		-0.869642, -0.156574, 0.468196,
		-0.226633, 0.969153, -0.096852,
		39.891033, 34.670357, 44.442947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405270, 33.902103, 44.236889>,  <40.049675, 33.991951, 44.510746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405270, 33.902103, 44.236889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.507500, 34.277233, 44.142933>,  <39.568840, 34.502312, 44.086559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.507500, 34.277233, 44.142933>,  <39.405270, 33.902103, 44.236889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507500, 34.277233, 44.142933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256349, -0.168523, -0.951780,
		-0.932183, 0.303466, 0.197339,
		0.255577, 0.937821, -0.234887,
		39.584171, 34.558578, 44.072468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898964, 34.184700, 43.893440>,  <39.405270, 33.902103, 44.236889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898964, 34.184700, 43.893440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168114, 34.458900, 43.782211>,  <39.329605, 34.623421, 43.715473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.168114, 34.458900, 43.782211>,  <38.898964, 34.184700, 43.893440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168114, 34.458900, 43.782211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447757, 0.078182, -0.890731,
		-0.588858, 0.723860, 0.359546,
		0.672874, 0.685503, -0.278075,
		39.369976, 34.664551, 43.698788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521477, 34.740925, 43.541687>,  <38.898964, 34.184700, 43.893440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521477, 34.740925, 43.541687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906361, 34.756058, 43.433815>,  <39.137291, 34.765137, 43.369091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906361, 34.756058, 43.433815>,  <38.521477, 34.740925, 43.541687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906361, 34.756058, 43.433815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271093, 0.039021, -0.961762,
		-0.025866, 0.998522, 0.047804,
		0.962205, 0.037836, -0.269683,
		39.195023, 34.767410, 43.352909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598663, 35.385532, 43.224644>,  <38.521477, 34.740925, 43.541687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598663, 35.385532, 43.224644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891357, 35.149017, 43.089035>,  <39.066975, 35.007107, 43.007671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891357, 35.149017, 43.089035>,  <38.598663, 35.385532, 43.224644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891357, 35.149017, 43.089035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354254, 0.095000, -0.930311,
		0.582290, 0.800845, -0.139952,
		0.731740, -0.591289, -0.339020,
		39.110878, 34.971630, 42.987328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966045, 35.764847, 42.706055>,  <38.598663, 35.385532, 43.224644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966045, 35.764847, 42.706055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.069138, 35.384998, 42.634724>,  <39.130993, 35.157089, 42.591927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.069138, 35.384998, 42.634724>,  <38.966045, 35.764847, 42.706055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069138, 35.384998, 42.634724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144993, 0.144462, -0.978830,
		0.955275, 0.278134, -0.100455,
		0.257734, -0.949617, -0.178329,
		39.146458, 35.100113, 42.581226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273163, 35.811844, 42.083385>,  <38.966045, 35.764847, 42.706055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273163, 35.811844, 42.083385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.194836, 35.420208, 42.105434>,  <39.147839, 35.185226, 42.118664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.194836, 35.420208, 42.105434>,  <39.273163, 35.811844, 42.083385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194836, 35.420208, 42.105434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149293, -0.025793, -0.988457,
		0.969210, -0.201787, -0.141120,
		-0.195818, -0.979090, 0.055124,
		39.136089, 35.126480, 42.121971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897621, 36.052361, 41.743591>,  <39.273163, 35.811844, 42.083385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897621, 36.052361, 41.743591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871140, 36.444061, 41.666981>,  <39.855251, 36.679081, 41.621014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871140, 36.444061, 41.666981>,  <39.897621, 36.052361, 41.743591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871140, 36.444061, 41.666981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074356, 0.196261, 0.977729,
		0.995032, 0.050492, -0.085807,
		-0.066208, 0.979251, -0.191531,
		39.851276, 36.737835, 41.609520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512310, 36.387295, 42.044708>,  <39.897621, 36.052361, 41.743591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512310, 36.387295, 42.044708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225719, 36.665646, 42.025013>,  <40.053764, 36.832657, 42.013195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.225719, 36.665646, 42.025013>,  <40.512310, 36.387295, 42.044708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225719, 36.665646, 42.025013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262688, 0.334496, 0.905045,
		0.646268, 0.635507, -0.422456,
		-0.716472, 0.695876, -0.049234,
		40.010777, 36.874409, 42.010242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784824, 36.958950, 42.322933>,  <40.512310, 36.387295, 42.044708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784824, 36.958950, 42.322933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397404, 37.054764, 42.349827>,  <40.164951, 37.112251, 42.365963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397404, 37.054764, 42.349827>,  <40.784824, 36.958950, 42.322933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397404, 37.054764, 42.349827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185591, 0.515626, 0.836472,
		0.165697, 0.822648, -0.543869,
		-0.968556, 0.239539, 0.067239,
		40.106838, 37.126625, 42.369999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714619, 37.671200, 42.299778>,  <40.784824, 36.958950, 42.322933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714619, 37.671200, 42.299778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.376831, 37.553936, 42.479076>,  <40.174160, 37.483578, 42.586655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.376831, 37.553936, 42.479076>,  <40.714619, 37.671200, 42.299778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376831, 37.553936, 42.479076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173351, 0.642262, 0.746625,
		-0.506775, 0.708207, -0.491551,
		-0.844469, -0.293160, 0.448251,
		40.123489, 37.465988, 42.613552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348862, 38.264019, 42.533333>,  <40.714619, 37.671200, 42.299778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348862, 38.264019, 42.533333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.197929, 37.966846, 42.754482>,  <40.107372, 37.788544, 42.887173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.197929, 37.966846, 42.754482>,  <40.348862, 38.264019, 42.533333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197929, 37.966846, 42.754482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031499, 0.606958, 0.794109,
		-0.925544, 0.282224, -0.252424,
		-0.377328, -0.742934, 0.552877,
		40.084732, 37.743965, 42.920345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841671, 38.614960, 42.949451>,  <40.348862, 38.264019, 42.533333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841671, 38.614960, 42.949451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871769, 38.276566, 43.160603>,  <39.889828, 38.073528, 43.287292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871769, 38.276566, 43.160603>,  <39.841671, 38.614960, 42.949451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871769, 38.276566, 43.160603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209542, 0.504141, 0.837815,
		-0.974900, -0.173652, -0.139336,
		0.075243, -0.845983, 0.527875,
		39.894341, 38.022770, 43.318966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390949, 38.702137, 43.566715>,  <39.841671, 38.614960, 42.949451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390949, 38.702137, 43.566715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621517, 38.393951, 43.675617>,  <39.759857, 38.209042, 43.740959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.621517, 38.393951, 43.675617>,  <39.390949, 38.702137, 43.566715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621517, 38.393951, 43.675617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157874, 0.431903, 0.887995,
		-0.801759, -0.468874, 0.370594,
		0.576419, -0.770465, 0.272259,
		39.794441, 38.162811, 43.757294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163635, 38.482826, 44.198063>,  <39.390949, 38.702137, 43.566715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163635, 38.482826, 44.198063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547142, 38.371338, 44.175842>,  <39.777245, 38.304447, 44.162510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547142, 38.371338, 44.175842>,  <39.163635, 38.482826, 44.198063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547142, 38.371338, 44.175842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193768, 0.498076, 0.845207,
		-0.207903, -0.821119, 0.531544,
		0.958765, -0.278717, -0.055555,
		39.834770, 38.287724, 44.159176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330986, 38.304703, 44.785015>,  <39.163635, 38.482826, 44.198063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330986, 38.304703, 44.785015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.708138, 38.333393, 44.654884>,  <39.934429, 38.350609, 44.576805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.708138, 38.333393, 44.654884>,  <39.330986, 38.304703, 44.785015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708138, 38.333393, 44.654884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307207, 0.190541, 0.932372,
		0.128865, -0.979055, 0.157622,
		0.942877, 0.071728, -0.325327,
		39.991001, 38.354912, 44.557285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692509, 37.814766, 45.203636>,  <39.330986, 38.304703, 44.785015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692509, 37.814766, 45.203636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.946384, 38.081985, 45.048267>,  <40.098709, 38.242317, 44.955044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.946384, 38.081985, 45.048267>,  <39.692509, 37.814766, 45.203636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946384, 38.081985, 45.048267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351047, 0.198534, 0.915069,
		0.688428, -0.717142, -0.108510,
		0.634691, 0.668051, -0.388426,
		40.136791, 38.282402, 44.931740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389359, 37.674229, 45.447937>,  <39.692509, 37.814766, 45.203636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389359, 37.674229, 45.447937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409580, 38.053383, 45.322102>,  <40.421715, 38.280876, 45.246601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409580, 38.053383, 45.322102>,  <40.389359, 37.674229, 45.447937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409580, 38.053383, 45.322102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488039, 0.251370, 0.835842,
		0.871356, -0.195789, -0.449894,
		0.050559, 0.947882, -0.314585,
		40.424747, 38.337746, 45.227726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084419, 37.848648, 45.573666>,  <40.389359, 37.674229, 45.447937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084419, 37.848648, 45.573666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898037, 38.198490, 45.520073>,  <40.786209, 38.408398, 45.487919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.898037, 38.198490, 45.520073>,  <41.084419, 37.848648, 45.573666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898037, 38.198490, 45.520073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441777, 0.361158, 0.821218,
		0.766630, 0.323460, -0.554664,
		-0.465952, 0.874608, -0.133977,
		40.758251, 38.460873, 45.479881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611870, 38.470066, 45.741543>,  <41.084419, 37.848648, 45.573666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611870, 38.470066, 45.741543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.271576, 38.670937, 45.803600>,  <41.067398, 38.791458, 45.840836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.271576, 38.670937, 45.803600>,  <41.611870, 38.470066, 45.741543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271576, 38.670937, 45.803600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326956, 0.274533, 0.904285,
		0.411517, 0.820032, -0.397745,
		-0.850737, 0.502174, 0.155139,
		41.016354, 38.821590, 45.850143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793301, 39.188213, 45.983459>,  <41.611870, 38.470066, 45.741543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793301, 39.188213, 45.983459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.420738, 39.096741, 46.096725>,  <41.197201, 39.041859, 46.164684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.420738, 39.096741, 46.096725>,  <41.793301, 39.188213, 45.983459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420738, 39.096741, 46.096725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222725, 0.257220, 0.940336,
		-0.287872, 0.938905, -0.188644,
		-0.931409, -0.228680, 0.283164,
		41.141315, 39.028137, 46.181675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.646858, 39.363979, 47.035389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.869797, 39.046097, 46.939213>,  <34.003559, 38.855366, 46.881508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.869797, 39.046097, 46.939213>,  <33.646858, 39.363979, 47.035389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869797, 39.046097, 46.939213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001678, 0.288513, -0.957474,
		0.830280, 0.534045, 0.159467,
		0.557343, -0.794705, -0.240443,
		34.036999, 38.807686, 46.867081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220230, 39.608746, 46.565395>,  <33.646858, 39.363979, 47.035389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220230, 39.608746, 46.565395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129738, 39.222946, 46.510895>,  <34.075443, 38.991467, 46.478195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129738, 39.222946, 46.510895>,  <34.220230, 39.608746, 46.565395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129738, 39.222946, 46.510895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074469, 0.156596, -0.984851,
		0.971223, -0.212657, -0.107252,
		-0.226231, -0.964497, -0.136254,
		34.061871, 38.933598, 46.470020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455982, 39.674591, 45.840427>,  <34.220230, 39.608746, 46.565395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455982, 39.674591, 45.840427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282059, 39.325546, 45.929413>,  <34.177704, 39.116119, 45.982803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282059, 39.325546, 45.929413>,  <34.455982, 39.674591, 45.840427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282059, 39.325546, 45.929413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177733, -0.159019, -0.971146,
		0.882812, -0.461796, -0.085950,
		-0.434804, -0.872615, 0.222460,
		34.151619, 39.063763, 45.996151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768627, 39.150532, 45.552330>,  <34.455982, 39.674591, 45.840427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768627, 39.150532, 45.552330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404057, 38.998474, 45.615322>,  <34.185314, 38.907242, 45.653118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404057, 38.998474, 45.615322>,  <34.768627, 39.150532, 45.552330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404057, 38.998474, 45.615322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120151, -0.120158, -0.985457,
		0.393536, -0.917090, 0.063840,
		-0.911424, -0.380143, 0.157476,
		34.130630, 38.884430, 45.662563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746281, 38.526211, 45.164028>,  <34.768627, 39.150532, 45.552330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746281, 38.526211, 45.164028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359364, 38.617390, 45.208530>,  <34.127213, 38.672096, 45.235229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.359364, 38.617390, 45.208530>,  <34.746281, 38.526211, 45.164028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359364, 38.617390, 45.208530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150780, -0.164045, -0.974861,
		-0.203976, -0.959753, 0.193051,
		-0.967295, 0.227957, 0.111251,
		34.069176, 38.685776, 45.241905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297977, 37.951630, 44.917278>,  <34.746281, 38.526211, 45.164028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297977, 37.951630, 44.917278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059650, 38.272598, 44.903885>,  <33.916653, 38.465179, 44.895847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.059650, 38.272598, 44.903885>,  <34.297977, 37.951630, 44.917278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059650, 38.272598, 44.903885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235209, -0.214211, -0.948045,
		-0.767902, -0.556990, 0.316368,
		-0.595821, 0.802419, -0.033484,
		33.880905, 38.513325, 44.893841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805981, 37.732796, 44.584637>,  <34.297977, 37.951630, 44.917278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805981, 37.732796, 44.584637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711926, 38.118057, 44.532406>,  <33.655491, 38.349213, 44.501068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711926, 38.118057, 44.532406>,  <33.805981, 37.732796, 44.584637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711926, 38.118057, 44.532406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213891, -0.182330, -0.959691,
		-0.948135, -0.197733, 0.248882,
		-0.235141, 0.963150, -0.130580,
		33.641384, 38.407001, 44.493233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132034, 37.734749, 44.255993>,  <33.805981, 37.732796, 44.584637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132034, 37.734749, 44.255993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.306324, 38.086636, 44.179836>,  <33.410896, 38.297768, 44.134144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.306324, 38.086636, 44.179836>,  <33.132034, 37.734749, 44.255993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306324, 38.086636, 44.179836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323260, -0.044463, -0.945265,
		-0.840029, 0.473418, 0.265003,
		0.435722, 0.879715, -0.190387,
		33.437042, 38.350552, 44.122719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777508, 37.938419, 43.706356>,  <33.132034, 37.734749, 44.255993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777508, 37.938419, 43.706356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.089817, 38.188049, 43.694218>,  <33.277203, 38.337826, 43.686935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.089817, 38.188049, 43.694218>,  <32.777508, 37.938419, 43.706356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089817, 38.188049, 43.694218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050977, 0.015225, -0.998584,
		-0.622728, 0.781217, 0.043701,
		0.780776, 0.624074, -0.030343,
		33.324051, 38.375271, 43.685116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671432, 38.444450, 43.239292>,  <32.777508, 37.938419, 43.706356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671432, 38.444450, 43.239292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.070324, 38.430229, 43.265446>,  <33.309658, 38.421696, 43.281139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.070324, 38.430229, 43.265446>,  <32.671432, 38.444450, 43.239292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070324, 38.430229, 43.265446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064445, -0.026973, -0.997557,
		0.037234, 0.999003, -0.024607,
		0.997226, -0.035558, 0.065385,
		33.369492, 38.419563, 43.285061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727425, 38.768841, 42.601879>,  <32.671432, 38.444450, 43.239292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727425, 38.768841, 42.601879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069580, 38.593876, 42.712868>,  <33.274872, 38.488899, 42.779461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069580, 38.593876, 42.712868>,  <32.727425, 38.768841, 42.601879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069580, 38.593876, 42.712868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188768, -0.235597, -0.953342,
		0.482371, 0.867853, -0.118958,
		0.855386, -0.437409, 0.277467,
		33.326195, 38.462654, 42.796108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255020, 39.014256, 42.188137>,  <32.727425, 38.768841, 42.601879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255020, 39.014256, 42.188137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394878, 38.668407, 42.332466>,  <33.478794, 38.460899, 42.419064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.394878, 38.668407, 42.332466>,  <33.255020, 39.014256, 42.188137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394878, 38.668407, 42.332466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233648, -0.292488, -0.927286,
		0.907281, 0.408523, 0.099750,
		0.349642, -0.864615, 0.360819,
		33.499771, 38.409023, 42.440712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922142, 38.904530, 41.765232>,  <33.255020, 39.014256, 42.188137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922142, 38.904530, 41.765232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795094, 38.547932, 41.894447>,  <33.718864, 38.333973, 41.971977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795094, 38.547932, 41.894447>,  <33.922142, 38.904530, 41.765232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795094, 38.547932, 41.894447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218162, -0.400246, -0.890061,
		0.922781, -0.212224, 0.321616,
		-0.317617, -0.891496, 0.323040,
		33.699810, 38.280483, 41.991360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412819, 38.651672, 41.540878>,  <33.922142, 38.904530, 41.765232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412819, 38.651672, 41.540878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124081, 38.379917, 41.593590>,  <33.950836, 38.216862, 41.625217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124081, 38.379917, 41.593590>,  <34.412819, 38.651672, 41.540878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124081, 38.379917, 41.593590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131951, -0.322036, -0.937487,
		0.679358, -0.659333, 0.322107,
		-0.721846, -0.679392, 0.131778,
		33.907528, 38.176098, 41.633121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103550, 38.499496, 41.334457>,  <34.412819, 38.651672, 41.540878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103550, 38.499496, 41.334457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239452, 38.873177, 41.290943>,  <35.320995, 39.097385, 41.264835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.239452, 38.873177, 41.290943>,  <35.103550, 38.499496, 41.334457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239452, 38.873177, 41.290943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212979, 0.036243, 0.976385,
		0.916081, -0.354905, -0.186651,
		0.339759, 0.934200, -0.108789,
		35.341381, 39.153435, 41.258305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786167, 38.601051, 41.446632>,  <35.103550, 38.499496, 41.334457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786167, 38.601051, 41.446632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675491, 38.967377, 41.563068>,  <35.609085, 39.187172, 41.632931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.675491, 38.967377, 41.563068>,  <35.786167, 38.601051, 41.446632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675491, 38.967377, 41.563068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445671, -0.146071, 0.883199,
		0.851363, 0.374103, -0.367734,
		-0.276692, 0.915811, 0.291086,
		35.592484, 39.242119, 41.650394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457329, 38.858044, 41.790695>,  <35.786167, 38.601051, 41.446632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457329, 38.858044, 41.790695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.160053, 39.113400, 41.870819>,  <35.981686, 39.266613, 41.918892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.160053, 39.113400, 41.870819>,  <36.457329, 38.858044, 41.790695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160053, 39.113400, 41.870819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406257, 0.192691, 0.893211,
		0.531621, 0.745203, -0.402557,
		-0.743192, 0.638391, 0.200305,
		35.937096, 39.304916, 41.930912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800400, 39.369114, 42.034489>,  <36.457329, 38.858044, 41.790695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800400, 39.369114, 42.034489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423702, 39.469189, 42.124409>,  <36.197685, 39.529232, 42.178360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423702, 39.469189, 42.124409>,  <36.800400, 39.369114, 42.034489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423702, 39.469189, 42.124409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285976, 0.243783, 0.926708,
		0.177045, 0.937005, -0.301127,
		-0.941739, 0.250184, 0.224800,
		36.141182, 39.544243, 42.191849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811638, 40.081593, 42.401356>,  <36.800400, 39.369114, 42.034489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811638, 40.081593, 42.401356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478363, 39.887936, 42.508236>,  <36.278397, 39.771740, 42.572365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478363, 39.887936, 42.508236>,  <36.811638, 40.081593, 42.401356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478363, 39.887936, 42.508236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143181, 0.277847, 0.949895,
		-0.534129, 0.829701, -0.162179,
		-0.833190, -0.484146, 0.267204,
		36.228405, 39.742691, 42.588398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552734, 40.509754, 42.858181>,  <36.811638, 40.081593, 42.401356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552734, 40.509754, 42.858181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.376740, 40.157837, 42.930157>,  <36.271145, 39.946686, 42.973343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.376740, 40.157837, 42.930157>,  <36.552734, 40.509754, 42.858181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376740, 40.157837, 42.930157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078873, 0.161742, 0.983676,
		-0.894536, 0.446993, -0.001772,
		-0.439982, -0.879794, 0.179940,
		36.244743, 39.893898, 42.984138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002441, 40.676453, 43.448578>,  <36.552734, 40.509754, 42.858181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002441, 40.676453, 43.448578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125290, 40.296169, 43.431488>,  <36.198997, 40.067997, 43.421234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.125290, 40.296169, 43.431488>,  <36.002441, 40.676453, 43.448578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125290, 40.296169, 43.431488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163734, 0.008559, 0.986467,
		-0.937479, -0.309962, 0.158292,
		0.307123, -0.950710, -0.042728,
		36.217426, 40.010956, 43.418671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660660, 40.412617, 43.958652>,  <36.002441, 40.676453, 43.448578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660660, 40.412617, 43.958652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.907806, 40.106064, 43.888344>,  <36.056095, 39.922131, 43.846157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.907806, 40.106064, 43.888344>,  <35.660660, 40.412617, 43.958652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907806, 40.106064, 43.888344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037056, -0.194920, 0.980119,
		-0.785410, -0.612095, -0.092035,
		0.617866, -0.766384, -0.175774,
		36.093166, 39.876148, 43.835613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400684, 39.849731, 44.387543>,  <35.660660, 40.412617, 43.958652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400684, 39.849731, 44.387543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.794533, 39.822472, 44.323196>,  <36.030842, 39.806114, 44.284588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.794533, 39.822472, 44.323196>,  <35.400684, 39.849731, 44.387543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794533, 39.822472, 44.323196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162082, 0.012741, 0.986695,
		-0.065199, -0.997593, 0.023592,
		0.984621, -0.068156, -0.160862,
		36.089920, 39.802025, 44.274937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546177, 39.381458, 44.863670>,  <35.400684, 39.849731, 44.387543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546177, 39.381458, 44.863670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912170, 39.519154, 44.779476>,  <36.131767, 39.601772, 44.728962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912170, 39.519154, 44.779476>,  <35.546177, 39.381458, 44.863670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912170, 39.519154, 44.779476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230935, -0.019023, 0.972783,
		0.330865, -0.938689, -0.096902,
		0.914985, 0.344238, -0.210482,
		36.186665, 39.622425, 44.716331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067764, 38.973373, 45.280270>,  <35.546177, 39.381458, 44.863670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067764, 38.973373, 45.280270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290104, 39.291832, 45.184616>,  <36.423508, 39.482906, 45.127224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.290104, 39.291832, 45.184616>,  <36.067764, 38.973373, 45.280270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290104, 39.291832, 45.184616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289461, 0.084288, 0.953471,
		0.779256, -0.599209, -0.183601,
		0.555853, 0.796143, -0.239130,
		36.456860, 39.530674, 45.112877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693733, 38.885014, 45.476269>,  <36.067764, 38.973373, 45.280270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693733, 38.885014, 45.476269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679504, 39.284019, 45.451965>,  <36.670967, 39.523422, 45.437386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679504, 39.284019, 45.451965>,  <36.693733, 38.885014, 45.476269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679504, 39.284019, 45.451965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340346, 0.069251, 0.937747,
		0.939627, 0.012682, -0.341965,
		-0.035574, 0.997519, -0.060754,
		36.668831, 39.583275, 45.433739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311085, 39.139439, 45.755554>,  <36.693733, 38.885014, 45.476269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311085, 39.139439, 45.755554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.079815, 39.465565, 45.768002>,  <36.941051, 39.661240, 45.775471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.079815, 39.465565, 45.768002>,  <37.311085, 39.139439, 45.755554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079815, 39.465565, 45.768002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358035, 0.219255, 0.907600,
		0.733157, 0.535898, -0.418680,
		-0.578179, 0.815316, 0.031122,
		36.906361, 39.710159, 45.777340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684570, 39.720028, 45.858620>,  <37.311085, 39.139439, 45.755554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684570, 39.720028, 45.858620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309513, 39.781174, 45.983490>,  <37.084476, 39.817860, 46.058411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.309513, 39.781174, 45.983490>,  <37.684570, 39.720028, 45.858620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309513, 39.781174, 45.983490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343752, 0.274719, 0.897978,
		0.051509, 0.949295, -0.310137,
		-0.937647, 0.152864, 0.312171,
		37.028217, 39.827034, 46.077141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877510, 40.466366, 45.766869>,  <37.684570, 39.720028, 45.858620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877510, 40.466366, 45.766869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.233875, 40.647293, 45.750454>,  <38.447693, 40.755848, 45.740604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.233875, 40.647293, 45.750454>,  <37.877510, 40.466366, 45.766869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233875, 40.647293, 45.750454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166899, 0.242016, -0.955810,
		-0.422399, 0.858392, 0.291106,
		0.890912, 0.452319, -0.041038,
		38.501148, 40.782990, 45.738144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857132, 41.063313, 45.468178>,  <37.877510, 40.466366, 45.766869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857132, 41.063313, 45.468178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255856, 41.036461, 45.450897>,  <38.495090, 41.020351, 45.440529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255856, 41.036461, 45.450897>,  <37.857132, 41.063313, 45.468178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255856, 41.036461, 45.450897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028105, 0.211391, -0.976997,
		0.074716, 0.975094, 0.208830,
		0.996809, -0.067128, -0.043199,
		38.554897, 41.016323, 45.437939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072472, 41.688210, 45.152332>,  <37.857132, 41.063313, 45.468178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072472, 41.688210, 45.152332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368683, 41.426037, 45.092960>,  <38.546410, 41.268734, 45.057335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368683, 41.426037, 45.092960>,  <38.072472, 41.688210, 45.152332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368683, 41.426037, 45.092960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077559, 0.302753, -0.949908,
		0.667535, 0.691922, 0.275031,
		0.740528, -0.655428, -0.148433,
		38.590843, 41.229408, 45.048431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681625, 42.061893, 44.841076>,  <38.072472, 41.688210, 45.152332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681625, 42.061893, 44.841076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731426, 41.674667, 44.754032>,  <38.761307, 41.442333, 44.701805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.731426, 41.674667, 44.754032>,  <38.681625, 42.061893, 44.841076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731426, 41.674667, 44.754032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137071, 0.233991, -0.962528,
		0.982705, 0.090013, 0.161827,
		0.124506, -0.968063, -0.217606,
		38.768780, 41.384247, 44.688751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161079, 42.043869, 44.373989>,  <38.681625, 42.061893, 44.841076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161079, 42.043869, 44.373989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002907, 41.681664, 44.312428>,  <38.908005, 41.464340, 44.275490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.002907, 41.681664, 44.312428>,  <39.161079, 42.043869, 44.373989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002907, 41.681664, 44.312428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015939, 0.174300, -0.984564,
		0.918358, -0.386873, -0.083356,
		-0.395430, -0.905510, -0.153904,
		38.884277, 41.410011, 44.266258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627579, 41.856247, 43.857079>,  <39.161079, 42.043869, 44.373989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627579, 41.856247, 43.857079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.321529, 41.598793, 43.849915>,  <39.137897, 41.444321, 43.845615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.321529, 41.598793, 43.849915>,  <39.627579, 41.856247, 43.857079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321529, 41.598793, 43.849915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189291, -0.198270, -0.961695,
		0.615426, -0.739208, 0.273535,
		-0.765127, -0.643630, -0.017905,
		39.091991, 41.405704, 43.844543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778717, 41.258709, 43.326622>,  <39.627579, 41.856247, 43.857079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778717, 41.258709, 43.326622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381203, 41.233631, 43.363411>,  <39.142693, 41.218586, 43.385483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381203, 41.233631, 43.363411>,  <39.778717, 41.258709, 43.326622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381203, 41.233631, 43.363411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079709, -0.175836, -0.981187,
		0.077685, -0.982421, 0.169746,
		-0.993787, -0.062693, 0.091968,
		39.083065, 41.214825, 43.391003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594543, 40.700226, 42.973694>,  <39.778717, 41.258709, 43.326622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594543, 40.700226, 42.973694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.251690, 40.904354, 43.001678>,  <39.045979, 41.026833, 43.018467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.251690, 40.904354, 43.001678>,  <39.594543, 40.700226, 42.973694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251690, 40.904354, 43.001678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142384, -0.104210, -0.984310,
		-0.495023, -0.853647, 0.161984,
		-0.857134, 0.510320, 0.069959,
		38.994549, 41.057449, 43.022667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121792, 40.257946, 42.726547>,  <39.594543, 40.700226, 42.973694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121792, 40.257946, 42.726547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.991123, 40.635067, 42.699970>,  <38.912724, 40.861340, 42.684025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.991123, 40.635067, 42.699970>,  <39.121792, 40.257946, 42.726547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991123, 40.635067, 42.699970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390755, -0.198735, -0.898785,
		-0.860579, -0.267644, 0.433325,
		-0.326671, 0.942800, -0.066444,
		38.893120, 40.917908, 42.680038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537148, 40.198795, 42.360886>,  <39.121792, 40.257946, 42.726547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537148, 40.198795, 42.360886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.607292, 40.590626, 42.321518>,  <38.649380, 40.825722, 42.297897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.607292, 40.590626, 42.321518>,  <38.537148, 40.198795, 42.360886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607292, 40.590626, 42.321518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315843, -0.038707, -0.948022,
		-0.932465, 0.197333, 0.302603,
		0.175363, 0.979572, -0.098420,
		38.659901, 40.884499, 42.291992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789768, 40.593006, 42.219517>,  <38.537148, 40.198795, 42.360886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789768, 40.593006, 42.219517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.104679, 40.795162, 42.078224>,  <38.293625, 40.916454, 41.993446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.104679, 40.795162, 42.078224>,  <37.789768, 40.593006, 42.219517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104679, 40.795162, 42.078224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403779, -0.010389, -0.914798,
		-0.465998, 0.862829, 0.195886,
		0.787279, 0.505389, -0.353233,
		38.340862, 40.946777, 41.972256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518623, 41.246559, 41.889748>,  <37.789768, 40.593006, 42.219517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518623, 41.246559, 41.889748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883308, 41.176289, 41.741196>,  <38.102119, 41.134125, 41.652065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883308, 41.176289, 41.741196>,  <37.518623, 41.246559, 41.889748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883308, 41.176289, 41.741196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362490, 0.081475, -0.928420,
		0.193361, 0.981070, 0.010600,
		0.911709, -0.175678, -0.371382,
		38.156822, 41.123585, 41.629780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427139, 41.631569, 41.249035>,  <37.518623, 41.246559, 41.889748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427139, 41.631569, 41.249035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745789, 41.396225, 41.193565>,  <37.936977, 41.255020, 41.160282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.745789, 41.396225, 41.193565>,  <37.427139, 41.631569, 41.249035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745789, 41.396225, 41.193565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228137, -0.080188, -0.970321,
		0.559777, 0.804614, -0.198105,
		0.796620, -0.588359, -0.138675,
		37.984776, 41.219719, 41.151962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633930, 41.768070, 40.580227>,  <37.427139, 41.631569, 41.249035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633930, 41.768070, 40.580227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.846088, 41.437569, 40.656101>,  <37.973381, 41.239265, 40.701626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.846088, 41.437569, 40.656101>,  <37.633930, 41.768070, 40.580227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846088, 41.437569, 40.656101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067088, -0.263959, -0.962198,
		0.845093, 0.497618, -0.195434,
		0.530394, -0.826258, 0.189686,
		38.005207, 41.189690, 40.713005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.599123, 30.701853, 27.734390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531225, 30.450315, 28.037901>,  <26.490486, 30.299393, 28.220007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.531225, 30.450315, 28.037901>,  <26.599123, 30.701853, 27.734390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531225, 30.450315, 28.037901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218245, 0.726844, 0.651205,
		-0.961018, 0.276137, 0.013865,
		-0.169744, -0.628846, 0.758776,
		26.480303, 30.261662, 28.265533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345806, 31.132978, 28.179203>,  <26.599123, 30.701853, 27.734390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345806, 31.132978, 28.179203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401945, 30.805868, 28.402466>,  <26.435629, 30.609602, 28.536425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401945, 30.805868, 28.402466>,  <26.345806, 31.132978, 28.179203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401945, 30.805868, 28.402466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101600, 0.572658, 0.813474,
		-0.984876, -0.057461, 0.163457,
		0.140348, -0.817778, 0.558159,
		26.444050, 30.560535, 28.569914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873262, 31.107586, 28.792423>,  <26.345806, 31.132978, 28.179203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873262, 31.107586, 28.792423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.193987, 30.889864, 28.891075>,  <26.386421, 30.759232, 28.950266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.193987, 30.889864, 28.891075>,  <25.873262, 31.107586, 28.792423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.193987, 30.889864, 28.891075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109639, 0.539712, 0.834680,
		-0.587431, -0.642217, 0.492425,
		0.801813, -0.544306, 0.246632,
		26.434530, 30.726572, 28.965065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818878, 30.860641, 29.549026>,  <25.873262, 31.107586, 28.792423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818878, 30.860641, 29.549026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.210859, 30.840208, 29.471996>,  <26.446047, 30.827948, 29.425779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.210859, 30.840208, 29.471996>,  <25.818878, 30.860641, 29.549026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.210859, 30.840208, 29.471996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192225, 0.496535, 0.846464,
		0.052381, -0.866512, 0.496400,
		0.979952, -0.051082, -0.192574,
		26.504845, 30.824884, 29.414225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100092, 30.596994, 30.120041>,  <25.818878, 30.860641, 29.549026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100092, 30.596994, 30.120041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.408905, 30.748005, 29.915516>,  <26.594193, 30.838612, 29.792801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.408905, 30.748005, 29.915516>,  <26.100092, 30.596994, 30.120041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408905, 30.748005, 29.915516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300908, 0.491499, 0.817241,
		0.559844, -0.784793, 0.265850,
		0.772030, 0.377531, -0.511312,
		26.640514, 30.861263, 29.762123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734961, 30.456144, 30.513887>,  <26.100092, 30.596994, 30.120041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734961, 30.456144, 30.513887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796740, 30.771894, 30.276222>,  <26.833807, 30.961346, 30.133623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.796740, 30.771894, 30.276222>,  <26.734961, 30.456144, 30.513887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796740, 30.771894, 30.276222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457720, 0.475783, 0.751081,
		0.875579, -0.387962, -0.287831,
		0.154446, 0.789377, -0.594164,
		26.843073, 31.008707, 30.097973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342413, 30.607216, 30.802376>,  <26.734961, 30.456144, 30.513887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342413, 30.607216, 30.802376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.223925, 30.916594, 30.578220>,  <27.152832, 31.102221, 30.443727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.223925, 30.916594, 30.578220>,  <27.342413, 30.607216, 30.802376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223925, 30.916594, 30.578220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367821, 0.633848, 0.680400,
		0.881453, -0.004573, -0.472249,
		-0.296223, 0.773444, -0.560389,
		27.135057, 31.148626, 30.410103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900789, 31.072256, 30.835211>,  <27.342413, 30.607216, 30.802376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900789, 31.072256, 30.835211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.583055, 31.302893, 30.758715>,  <27.392414, 31.441275, 30.712816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.583055, 31.302893, 30.758715>,  <27.900789, 31.072256, 30.835211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583055, 31.302893, 30.758715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343934, 0.686355, 0.640801,
		0.500740, 0.443237, -0.743506,
		-0.794336, 0.576591, -0.191241,
		27.344755, 31.475870, 30.701342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206745, 31.807981, 30.830294>,  <27.900789, 31.072256, 30.835211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206745, 31.807981, 30.830294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807962, 31.836727, 30.842407>,  <27.568693, 31.853975, 30.849674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807962, 31.836727, 30.842407>,  <28.206745, 31.807981, 30.830294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807962, 31.836727, 30.842407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074289, 0.757069, 0.649098,
		0.023721, 0.649371, -0.760102,
		-0.996955, 0.071864, 0.030283,
		27.508877, 31.858286, 30.851492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029057, 32.454609, 30.604172>,  <28.206745, 31.807981, 30.830294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029057, 32.454609, 30.604172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.759130, 32.311050, 30.862106>,  <27.597176, 32.224915, 31.016867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.759130, 32.311050, 30.862106>,  <28.029057, 32.454609, 30.604172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759130, 32.311050, 30.862106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232372, 0.725998, 0.647248,
		-0.700449, 0.586615, -0.406516,
		-0.674815, -0.358901, 0.644838,
		27.556686, 32.203381, 31.055557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851168, 33.099228, 30.993601>,  <28.029057, 32.454609, 30.604172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851168, 33.099228, 30.993601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699078, 32.807625, 31.221277>,  <27.607824, 32.632664, 31.357883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699078, 32.807625, 31.221277>,  <27.851168, 33.099228, 30.993601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699078, 32.807625, 31.221277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200286, 0.535911, 0.820174,
		-0.902948, 0.425851, -0.057757,
		-0.380224, -0.729006, 0.569192,
		27.585011, 32.588924, 31.392035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406050, 33.448761, 31.531431>,  <27.851168, 33.099228, 30.993601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406050, 33.448761, 31.531431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475035, 33.091679, 31.697964>,  <27.516426, 32.877430, 31.797884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.475035, 33.091679, 31.697964>,  <27.406050, 33.448761, 31.531431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475035, 33.091679, 31.697964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087773, 0.434910, 0.896186,
		-0.981098, -0.118016, 0.153361,
		0.172463, -0.892707, 0.416331,
		27.526773, 32.823868, 31.822863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969685, 33.406731, 32.116833>,  <27.406050, 33.448761, 31.531431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969685, 33.406731, 32.116833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239647, 33.122120, 32.195038>,  <27.401625, 32.951351, 32.241962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239647, 33.122120, 32.195038>,  <26.969685, 33.406731, 32.116833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239647, 33.122120, 32.195038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192099, 0.425244, 0.884458,
		-0.712460, -0.559368, 0.423684,
		0.674906, -0.711530, 0.195515,
		27.442120, 32.908661, 32.253693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808804, 33.105835, 32.764599>,  <26.969685, 33.406731, 32.116833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808804, 33.105835, 32.764599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.196878, 33.014301, 32.732670>,  <27.429724, 32.959381, 32.713512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.196878, 33.014301, 32.732670>,  <26.808804, 33.105835, 32.764599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196878, 33.014301, 32.732670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142116, 0.270398, 0.952201,
		-0.196312, -0.935158, 0.294858,
		0.970188, -0.228832, -0.079819,
		27.487934, 32.945652, 32.708725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980000, 32.767456, 33.382305>,  <26.808804, 33.105835, 32.764599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980000, 32.767456, 33.382305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342705, 32.858089, 33.240070>,  <27.560328, 32.912468, 33.154732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.342705, 32.858089, 33.240070>,  <26.980000, 32.767456, 33.382305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342705, 32.858089, 33.240070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214811, 0.477430, 0.852008,
		0.362814, -0.848954, 0.384245,
		0.906765, 0.226580, -0.355583,
		27.614735, 32.926064, 33.133396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403194, 32.649208, 33.914394>,  <26.980000, 32.767456, 33.382305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403194, 32.649208, 33.914394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624632, 32.901459, 33.696827>,  <27.757494, 33.052811, 33.566288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624632, 32.901459, 33.696827>,  <27.403194, 32.649208, 33.914394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624632, 32.901459, 33.696827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254897, 0.493472, 0.831572,
		0.792820, -0.598994, 0.112437,
		0.553591, 0.630627, -0.543917,
		27.790709, 33.090649, 33.533653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190588, 32.690971, 34.190342>,  <27.403194, 32.649208, 33.914394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190588, 32.690971, 34.190342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121708, 33.016998, 33.969070>,  <28.080379, 33.212616, 33.836308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.121708, 33.016998, 33.969070>,  <28.190588, 32.690971, 34.190342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121708, 33.016998, 33.969070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380235, 0.573047, 0.725975,
		0.908718, -0.085327, -0.408596,
		-0.172200, 0.815069, -0.553182,
		28.070047, 33.261520, 33.803116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854889, 33.087757, 34.177094>,  <28.190588, 32.690971, 34.190342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854889, 33.087757, 34.177094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562904, 33.341320, 34.074863>,  <28.387714, 33.493458, 34.013527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562904, 33.341320, 34.074863>,  <28.854889, 33.087757, 34.177094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562904, 33.341320, 34.074863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308248, 0.639063, 0.704685,
		0.610035, 0.435611, -0.661891,
		-0.729959, 0.633910, -0.255574,
		28.343916, 33.531494, 33.998192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151909, 33.735073, 34.242462>,  <28.854889, 33.087757, 34.177094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151909, 33.735073, 34.242462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762850, 33.827866, 34.237747>,  <28.529413, 33.883541, 34.234917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.762850, 33.827866, 34.237747>,  <29.151909, 33.735073, 34.242462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762850, 33.827866, 34.237747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179069, 0.781195, 0.598054,
		0.147943, 0.579586, -0.801369,
		-0.972649, 0.231979, -0.011786,
		28.471054, 33.897461, 34.234211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448936, 34.407867, 34.422451>,  <29.151909, 33.735073, 34.242462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448936, 34.407867, 34.422451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.833765, 34.465878, 34.514870>,  <30.064663, 34.500683, 34.570320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.833765, 34.465878, 34.514870>,  <29.448936, 34.407867, 34.422451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833765, 34.465878, 34.514870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269276, -0.369372, -0.889413,
		-0.043648, 0.917895, -0.394415,
		0.962073, 0.145028, 0.231045,
		30.122387, 34.509384, 34.584183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847414, 34.866241, 34.011276>,  <29.448936, 34.407867, 34.422451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847414, 34.866241, 34.011276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.130796, 34.624290, 34.156723>,  <30.300825, 34.479122, 34.243992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.130796, 34.624290, 34.156723>,  <29.847414, 34.866241, 34.011276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130796, 34.624290, 34.156723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342897, -0.155312, -0.926444,
		0.616856, 0.781029, 0.097378,
		0.708456, -0.604874, 0.363618,
		30.343332, 34.442829, 34.265808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497299, 34.866451, 33.518463>,  <29.847414, 34.866241, 34.011276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497299, 34.866451, 33.518463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519196, 34.533981, 33.739788>,  <30.532333, 34.334499, 33.872585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519196, 34.533981, 33.739788>,  <30.497299, 34.866451, 33.518463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519196, 34.533981, 33.739788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398224, -0.489995, -0.775450,
		0.915654, 0.262791, 0.304170,
		0.054739, -0.831172, 0.553315,
		30.535618, 34.284630, 33.905781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181057, 34.570988, 33.418236>,  <30.497299, 34.866451, 33.518463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181057, 34.570988, 33.418236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.909142, 34.298752, 33.527546>,  <30.745993, 34.135410, 33.593132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.909142, 34.298752, 33.527546>,  <31.181057, 34.570988, 33.418236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909142, 34.298752, 33.527546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147581, -0.491934, -0.858033,
		0.718408, -0.542949, 0.434853,
		-0.679787, -0.680594, 0.273280,
		30.705206, 34.094574, 33.609531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358622, 33.936947, 33.061493>,  <31.181057, 34.570988, 33.418236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358622, 33.936947, 33.061493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001186, 33.799007, 33.176441>,  <30.786726, 33.716244, 33.245411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001186, 33.799007, 33.176441>,  <31.358622, 33.936947, 33.061493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001186, 33.799007, 33.176441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042608, -0.572130, -0.819055,
		0.446864, -0.744141, 0.496555,
		-0.893587, -0.344849, 0.287371,
		30.733110, 33.695553, 33.262653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391634, 33.260227, 32.751984>,  <31.358622, 33.936947, 33.061493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391634, 33.260227, 32.751984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010979, 33.336132, 32.848629>,  <30.782585, 33.381676, 32.906616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010979, 33.336132, 32.848629>,  <31.391634, 33.260227, 32.751984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010979, 33.336132, 32.848629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299596, -0.399032, -0.866611,
		-0.068037, -0.897086, 0.436585,
		-0.951637, 0.189760, 0.241614,
		30.725487, 33.393059, 32.921112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959583, 32.559898, 32.818890>,  <31.391634, 33.260227, 32.751984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959583, 32.559898, 32.818890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.718245, 32.867912, 32.735928>,  <30.573441, 33.052719, 32.686150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.718245, 32.867912, 32.735928>,  <30.959583, 32.559898, 32.818890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718245, 32.867912, 32.735928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297240, -0.458479, -0.837523,
		-0.740014, -0.443668, 0.505507,
		-0.603347, 0.770036, -0.207405,
		30.537241, 33.098923, 32.673706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355188, 32.237072, 32.607182>,  <30.959583, 32.559898, 32.818890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355188, 32.237072, 32.607182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.319942, 32.613045, 32.475262>,  <30.298796, 32.838627, 32.396111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.319942, 32.613045, 32.475262>,  <30.355188, 32.237072, 32.607182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319942, 32.613045, 32.475262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355717, -0.338950, -0.870964,
		-0.930431, 0.040571, 0.364216,
		-0.088115, 0.939929, -0.329802,
		30.293509, 32.895023, 32.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821796, 32.233883, 32.118729>,  <30.355188, 32.237072, 32.607182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821796, 32.233883, 32.118729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.983042, 32.588760, 32.028938>,  <30.079788, 32.801685, 31.975063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.983042, 32.588760, 32.028938>,  <29.821796, 32.233883, 32.118729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983042, 32.588760, 32.028938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250107, -0.129151, -0.959565,
		-0.880311, 0.442957, 0.169831,
		0.403112, 0.887192, -0.224480,
		30.103975, 32.854919, 31.961594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279593, 32.728821, 31.891760>,  <29.821796, 32.233883, 32.118729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279593, 32.728821, 31.891760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630924, 32.841393, 31.737183>,  <29.841722, 32.908936, 31.644436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630924, 32.841393, 31.737183>,  <29.279593, 32.728821, 31.891760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630924, 32.841393, 31.737183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339185, -0.202797, -0.918600,
		-0.336889, 0.937908, -0.082667,
		0.878327, 0.281427, -0.386445,
		29.894423, 32.925819, 31.621248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105968, 33.098423, 31.299318>,  <29.279593, 32.728821, 31.891760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105968, 33.098423, 31.299318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.483395, 32.994267, 31.217459>,  <29.709850, 32.931770, 31.168343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.483395, 32.994267, 31.217459>,  <29.105968, 33.098423, 31.299318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483395, 32.994267, 31.217459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258838, -0.194294, -0.946178,
		0.206618, 0.945751, -0.250729,
		0.943563, -0.260396, -0.204651,
		29.766464, 32.916149, 31.156063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289715, 33.283058, 30.488678>,  <29.105968, 33.098423, 31.299318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289715, 33.283058, 30.488678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583620, 33.024601, 30.571255>,  <29.759964, 32.869526, 30.620800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.583620, 33.024601, 30.571255>,  <29.289715, 33.283058, 30.488678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583620, 33.024601, 30.571255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237142, -0.529824, -0.814279,
		0.635519, 0.549348, -0.542524,
		0.734765, -0.646145, 0.206440,
		29.804049, 32.830757, 30.633186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668951, 33.229469, 29.890854>,  <29.289715, 33.283058, 30.488678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668951, 33.229469, 29.890854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.739897, 32.898930, 30.104650>,  <29.782465, 32.700603, 30.232929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.739897, 32.898930, 30.104650>,  <29.668951, 33.229469, 29.890854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739897, 32.898930, 30.104650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095799, -0.555021, -0.826302,
		0.979471, 0.095353, -0.177605,
		0.177364, -0.826353, 0.534492,
		29.793106, 32.651024, 30.264997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162966, 32.888737, 29.540974>,  <29.668951, 33.229469, 29.890854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162966, 32.888737, 29.540974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953438, 32.628914, 29.761404>,  <29.827721, 32.473019, 29.893661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.953438, 32.628914, 29.761404>,  <30.162966, 32.888737, 29.540974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953438, 32.628914, 29.761404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034181, -0.630383, -0.775531,
		0.851143, -0.425075, 0.308004,
		-0.523819, -0.649560, 0.551076,
		29.796291, 32.434044, 29.926727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407804, 32.220581, 29.320807>,  <30.162966, 32.888737, 29.540974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407804, 32.220581, 29.320807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067822, 32.141808, 29.516272>,  <29.863832, 32.094543, 29.633551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.067822, 32.141808, 29.516272>,  <30.407804, 32.220581, 29.320807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067822, 32.141808, 29.516272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199935, -0.737569, -0.644995,
		0.487442, -0.645918, 0.587528,
		-0.849957, -0.196930, 0.488664,
		29.812834, 32.082729, 29.662870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521538, 31.483425, 29.440950>,  <30.407804, 32.220581, 29.320807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521538, 31.483425, 29.440950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142546, 31.598103, 29.497648>,  <29.915152, 31.666910, 29.531666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142546, 31.598103, 29.497648>,  <30.521538, 31.483425, 29.440950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142546, 31.598103, 29.497648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301189, -0.650806, -0.696948,
		-0.107564, -0.703035, 0.702973,
		-0.947478, 0.286694, 0.141743,
		29.858303, 31.684111, 29.540171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114672, 30.886539, 29.509655>,  <30.521538, 31.483425, 29.440950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114672, 30.886539, 29.509655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818602, 31.132305, 29.400377>,  <29.640959, 31.279764, 29.334810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.818602, 31.132305, 29.400377>,  <30.114672, 30.886539, 29.509655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818602, 31.132305, 29.400377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345319, -0.695952, -0.629607,
		-0.576969, -0.371682, 0.727296,
		-0.740177, 0.614412, -0.273194,
		29.596548, 31.316629, 29.318419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605175, 30.393028, 29.181438>,  <30.114672, 30.886539, 29.509655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605175, 30.393028, 29.181438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448093, 30.751122, 29.097204>,  <29.353846, 30.965977, 29.046663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448093, 30.751122, 29.097204>,  <29.605175, 30.393028, 29.181438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448093, 30.751122, 29.097204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376547, -0.365424, -0.851280,
		-0.839046, -0.255004, 0.480599,
		-0.392702, 0.895231, -0.210586,
		29.330282, 31.019691, 29.034029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839096, 30.344154, 29.090639>,  <29.605175, 30.393028, 29.181438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839096, 30.344154, 29.090639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.003124, 30.638361, 28.874914>,  <29.101542, 30.814884, 28.745480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.003124, 30.638361, 28.874914>,  <28.839096, 30.344154, 29.090639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003124, 30.638361, 28.874914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138890, -0.534062, -0.833959,
		-0.901416, 0.416888, -0.116848,
		0.410072, 0.735515, -0.539313,
		29.126146, 30.859016, 28.713120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448311, 30.417078, 28.587814>,  <28.839096, 30.344154, 29.090639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448311, 30.417078, 28.587814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786106, 30.591988, 28.464121>,  <28.988783, 30.696934, 28.389904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.786106, 30.591988, 28.464121>,  <28.448311, 30.417078, 28.587814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786106, 30.591988, 28.464121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216840, -0.248791, -0.943972,
		-0.489711, 0.864230, -0.115282,
		0.844490, 0.437276, -0.309235,
		29.039454, 30.723171, 28.371351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260435, 30.811989, 27.989286>,  <28.448311, 30.417078, 28.587814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260435, 30.811989, 27.989286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656607, 30.756905, 27.992989>,  <28.894310, 30.723854, 27.995211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656607, 30.756905, 27.992989>,  <28.260435, 30.811989, 27.989286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656607, 30.756905, 27.992989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006580, -0.114096, -0.993448,
		0.137866, 0.983879, -0.113910,
		0.990429, -0.137712, 0.009256,
		28.953735, 30.715591, 27.995766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627047, 31.316843, 27.425413>,  <28.260435, 30.811989, 27.989286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627047, 31.316843, 27.425413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789661, 30.960552, 27.506741>,  <28.887230, 30.746778, 27.555538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789661, 30.960552, 27.506741>,  <28.627047, 31.316843, 27.425413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789661, 30.960552, 27.506741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082183, -0.257288, -0.962834,
		0.909931, 0.374716, -0.177799,
		0.406535, -0.890725, 0.203319,
		28.911621, 30.693335, 27.567736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118509, 31.241901, 26.899597>,  <28.627047, 31.316843, 27.425413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118509, 31.241901, 26.899597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982695, 30.888151, 27.027718>,  <28.901207, 30.675901, 27.104589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.982695, 30.888151, 27.027718>,  <29.118509, 31.241901, 26.899597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982695, 30.888151, 27.027718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040767, -0.326376, -0.944361,
		0.939710, -0.333701, 0.074762,
		-0.339535, -0.884377, 0.320303,
		28.880835, 30.622839, 27.123808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.606419, 39.719460, 46.460228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.330608, 39.437428, 46.526459>,  <41.165123, 39.268208, 46.566196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.330608, 39.437428, 46.526459>,  <41.606419, 39.719460, 46.460228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330608, 39.437428, 46.526459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034292, 0.260141, 0.964962,
		-0.723452, 0.659685, -0.203552,
		-0.689523, -0.705083, 0.165577,
		41.123753, 39.225903, 46.576134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154072, 40.019905, 46.929623>,  <41.606419, 39.719460, 46.460228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154072, 40.019905, 46.929623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.093021, 39.626232, 46.965603>,  <41.056393, 39.390030, 46.987190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.093021, 39.626232, 46.965603>,  <41.154072, 40.019905, 46.929623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093021, 39.626232, 46.965603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064322, 0.100712, 0.992834,
		-0.986189, 0.145748, -0.078676,
		-0.152627, -0.984182, 0.089946,
		41.047234, 39.330978, 46.992588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587502, 39.972851, 47.387375>,  <41.154072, 40.019905, 46.929623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587502, 39.972851, 47.387375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.787647, 39.626869, 47.402870>,  <40.907734, 39.419281, 47.412167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.787647, 39.626869, 47.402870>,  <40.587502, 39.972851, 47.387375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787647, 39.626869, 47.402870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095768, -0.010826, 0.995345,
		-0.860504, -0.501742, -0.088251,
		0.500361, -0.864950, 0.038735,
		40.937756, 39.367386, 47.414490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173561, 39.632763, 47.818752>,  <40.587502, 39.972851, 47.387375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173561, 39.632763, 47.818752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.520275, 39.433319, 47.822083>,  <40.728306, 39.313652, 47.824081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.520275, 39.433319, 47.822083>,  <40.173561, 39.632763, 47.818752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520275, 39.433319, 47.822083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128712, 0.239830, 0.962245,
		-0.481777, -0.832991, 0.272058,
		0.866789, -0.498605, 0.008329,
		40.780312, 39.283737, 47.824581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138702, 39.153896, 48.362572>,  <40.173561, 39.632763, 47.818752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138702, 39.153896, 48.362572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.529091, 39.183121, 48.280464>,  <40.763325, 39.200657, 48.231201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.529091, 39.183121, 48.280464>,  <40.138702, 39.153896, 48.362572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529091, 39.183121, 48.280464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200793, 0.064181, 0.977529,
		0.084597, -0.995260, 0.047968,
		0.975974, 0.073064, -0.205270,
		40.821884, 39.205040, 48.218884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466534, 38.700966, 48.775661>,  <40.138702, 39.153896, 48.362572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466534, 38.700966, 48.775661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.735435, 38.984070, 48.688801>,  <40.896778, 39.153931, 48.636684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.735435, 38.984070, 48.688801>,  <40.466534, 38.700966, 48.775661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735435, 38.984070, 48.688801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063489, 0.237123, 0.969403,
		0.737593, -0.665472, 0.114472,
		0.672254, 0.707757, -0.217151,
		40.937111, 39.196396, 48.623657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831581, 38.653484, 49.308392>,  <40.466534, 38.700966, 48.775661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831581, 38.653484, 49.308392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.925259, 39.021599, 49.183033>,  <40.981464, 39.242470, 49.107819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.925259, 39.021599, 49.183033>,  <40.831581, 38.653484, 49.308392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925259, 39.021599, 49.183033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108989, 0.345185, 0.932185,
		0.966061, -0.184156, 0.181143,
		0.234195, 0.920290, -0.313399,
		40.995518, 39.297688, 49.089012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330479, 38.876011, 49.711533>,  <40.831581, 38.653484, 49.308392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330479, 38.876011, 49.711533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.214489, 39.228809, 49.562939>,  <41.144897, 39.440491, 49.473782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.214489, 39.228809, 49.562939>,  <41.330479, 38.876011, 49.711533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214489, 39.228809, 49.562939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074829, 0.366074, 0.927572,
		0.954106, 0.296766, -0.040152,
		-0.289970, 0.881998, -0.371480,
		41.127499, 39.493408, 49.451496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871063, 39.346966, 50.005871>,  <41.330479, 38.876011, 49.711533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871063, 39.346966, 50.005871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.564602, 39.579113, 49.895466>,  <41.380726, 39.718403, 49.829224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.564602, 39.579113, 49.895466>,  <41.871063, 39.346966, 50.005871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564602, 39.579113, 49.895466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020872, 0.451734, 0.891909,
		0.642322, 0.677576, -0.358210,
		-0.766151, 0.580369, -0.276016,
		41.334755, 39.753223, 49.812660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963680, 40.033779, 50.213734>,  <41.871063, 39.346966, 50.005871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963680, 40.033779, 50.213734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.565929, 40.000130, 50.188004>,  <41.327278, 39.979939, 50.172565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.565929, 40.000130, 50.188004>,  <41.963680, 40.033779, 50.213734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565929, 40.000130, 50.188004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092304, 0.390766, 0.915850,
		-0.051912, 0.916638, -0.396334,
		-0.994377, -0.084126, -0.064324,
		41.267616, 39.974892, 50.168705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849922, 40.616604, 50.389236>,  <41.963680, 40.033779, 50.213734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849922, 40.616604, 50.389236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.523392, 40.399330, 50.467785>,  <41.327473, 40.268967, 50.514912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.523392, 40.399330, 50.467785>,  <41.849922, 40.616604, 50.389236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523392, 40.399330, 50.467785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076933, 0.439206, 0.895086,
		-0.572440, 0.715578, -0.400326,
		-0.816329, -0.543181, 0.196367,
		41.278492, 40.236374, 50.526695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200382, 40.968933, 50.488163>,  <41.849922, 40.616604, 50.389236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200382, 40.968933, 50.488163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.218994, 40.626888, 50.694702>,  <41.230160, 40.421661, 50.818626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.218994, 40.626888, 50.694702>,  <41.200382, 40.968933, 50.488163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218994, 40.626888, 50.694702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155067, 0.504462, 0.849395,
		-0.986808, -0.119589, -0.109129,
		0.046526, -0.855112, 0.516352,
		41.232952, 40.370354, 50.849609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690880, 41.013493, 51.062115>,  <41.200382, 40.968933, 50.488163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690880, 41.013493, 51.062115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.947102, 40.729729, 51.179710>,  <41.100834, 40.559471, 51.250267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.947102, 40.729729, 51.179710>,  <40.690880, 41.013493, 51.062115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947102, 40.729729, 51.179710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151545, 0.258533, 0.954041,
		-0.752809, -0.655670, 0.058098,
		0.640557, -0.709406, 0.293990,
		41.139267, 40.516907, 51.267906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263168, 40.675022, 51.471127>,  <40.690880, 41.013493, 51.062115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263168, 40.675022, 51.471127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.638237, 40.569393, 51.561485>,  <40.863277, 40.506016, 51.615700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.638237, 40.569393, 51.561485>,  <40.263168, 40.675022, 51.471127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638237, 40.569393, 51.561485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179989, 0.187010, 0.965728,
		-0.297272, -0.946198, 0.127824,
		0.937674, -0.264077, 0.225898,
		40.919540, 40.490170, 51.629253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560223, 41.155422, 51.533508>,  <40.263168, 40.675022, 51.471127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560223, 41.155422, 51.533508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.168049, 41.216087, 51.483315>,  <38.932743, 41.252487, 51.453197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.168049, 41.216087, 51.483315>,  <39.560223, 41.155422, 51.533508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168049, 41.216087, 51.483315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125272, -0.010997, -0.992061,
		-0.151839, -0.988371, -0.008217,
		-0.980435, 0.151663, -0.125485,
		38.873917, 41.261585, 51.445667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262764, 40.635044, 51.054527>,  <39.560223, 41.155422, 51.533508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262764, 40.635044, 51.054527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026089, 40.957420, 51.046993>,  <38.884083, 41.150848, 51.042473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.026089, 40.957420, 51.046993>,  <39.262764, 40.635044, 51.054527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026089, 40.957420, 51.046993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088332, -0.088036, -0.992193,
		-0.801310, -0.585409, 0.123281,
		-0.591692, 0.805944, -0.018834,
		38.848579, 41.199203, 51.041344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706535, 40.473698, 50.684540>,  <39.262764, 40.635044, 51.054527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706535, 40.473698, 50.684540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753704, 40.870247, 50.661644>,  <38.782005, 41.108177, 50.647907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.753704, 40.870247, 50.661644>,  <38.706535, 40.473698, 50.684540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753704, 40.870247, 50.661644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173067, -0.036245, -0.984243,
		-0.977825, 0.125972, 0.167300,
		0.117923, 0.991371, -0.057243,
		38.789082, 41.167660, 50.644470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163555, 40.660583, 50.315418>,  <38.706535, 40.473698, 50.684540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163555, 40.660583, 50.315418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400692, 40.982414, 50.301647>,  <38.542976, 41.175514, 50.293385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.400692, 40.982414, 50.301647>,  <38.163555, 40.660583, 50.315418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400692, 40.982414, 50.301647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105624, 0.035308, -0.993779,
		-0.798360, 0.592793, 0.105915,
		0.592845, 0.804581, -0.034425,
		38.578545, 41.223789, 50.291321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906021, 41.160065, 49.734825>,  <38.163555, 40.660583, 50.315418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906021, 41.160065, 49.734825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.280731, 41.289925, 49.787056>,  <38.505558, 41.367840, 49.818394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.280731, 41.289925, 49.787056>,  <37.906021, 41.160065, 49.734825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280731, 41.289925, 49.787056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131513, 0.019154, -0.991129,
		-0.324274, 0.945639, -0.024753,
		0.936777, 0.324653, 0.130575,
		38.561764, 41.387321, 49.826229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941708, 41.734447, 49.467106>,  <37.906021, 41.160065, 49.734825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941708, 41.734447, 49.467106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306232, 41.569855, 49.461559>,  <38.524948, 41.471100, 49.458233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306232, 41.569855, 49.461559>,  <37.941708, 41.734447, 49.467106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306232, 41.569855, 49.461559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011180, 0.058390, -0.998231,
		0.411567, 0.909544, 0.057812,
		0.911311, -0.411485, -0.013863,
		38.579624, 41.446407, 49.457401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254036, 42.129116, 48.911732>,  <37.941708, 41.734447, 49.467106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254036, 42.129116, 48.911732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.483669, 41.805458, 48.961884>,  <38.621449, 41.611263, 48.991974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.483669, 41.805458, 48.961884>,  <38.254036, 42.129116, 48.911732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483669, 41.805458, 48.961884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160883, -0.038673, -0.986216,
		0.802838, 0.586339, 0.107975,
		0.574080, -0.809143, 0.125380,
		38.655895, 41.562714, 48.999496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754951, 42.209953, 48.324421>,  <38.254036, 42.129116, 48.911732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754951, 42.209953, 48.324421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822933, 41.834213, 48.443573>,  <38.863724, 41.608768, 48.515064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.822933, 41.834213, 48.443573>,  <38.754951, 42.209953, 48.324421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822933, 41.834213, 48.443573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198319, -0.263489, -0.944057,
		0.965290, 0.219523, 0.141510,
		0.169956, -0.939353, 0.297879,
		38.873920, 41.552406, 48.532936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306793, 42.042999, 47.932201>,  <38.754951, 42.209953, 48.324421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306793, 42.042999, 47.932201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163139, 41.686970, 48.044487>,  <39.076946, 41.473354, 48.111858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.163139, 41.686970, 48.044487>,  <39.306793, 42.042999, 47.932201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163139, 41.686970, 48.044487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061304, -0.322624, -0.944540,
		0.931271, -0.322007, 0.170429,
		-0.359133, -0.890071, 0.280710,
		39.055401, 41.419949, 48.128700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712788, 41.526653, 47.661888>,  <39.306793, 42.042999, 47.932201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712788, 41.526653, 47.661888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358700, 41.346111, 47.706902>,  <39.146248, 41.237785, 47.733910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358700, 41.346111, 47.706902>,  <39.712788, 41.526653, 47.661888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358700, 41.346111, 47.706902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048525, -0.330192, -0.942666,
		0.462633, -0.829007, 0.314194,
		-0.885220, -0.451355, 0.112530,
		39.093132, 41.210705, 47.740662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803764, 40.931236, 47.252289>,  <39.712788, 41.526653, 47.661888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803764, 40.931236, 47.252289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406357, 40.953945, 47.291668>,  <39.167912, 40.967571, 47.315296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.406357, 40.953945, 47.291668>,  <39.803764, 40.931236, 47.252289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406357, 40.953945, 47.291668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111037, -0.300541, -0.947283,
		-0.024188, -0.952078, 0.304898,
		-0.993522, 0.056768, 0.098446,
		39.108299, 40.970978, 47.321201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547409, 40.304134, 46.905369>,  <39.803764, 40.931236, 47.252289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547409, 40.304134, 46.905369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246811, 40.567459, 46.922684>,  <39.066452, 40.725452, 46.933075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.246811, 40.567459, 46.922684>,  <39.547409, 40.304134, 46.905369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246811, 40.567459, 46.922684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255851, -0.230329, -0.938877,
		-0.608103, -0.716641, 0.341521,
		-0.751499, 0.658312, 0.043289,
		39.021362, 40.764954, 46.935669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008751, 40.031342, 46.482265>,  <39.547409, 40.304134, 46.905369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008751, 40.031342, 46.482265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.911388, 40.418701, 46.504040>,  <38.852970, 40.651115, 46.517105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.911388, 40.418701, 46.504040>,  <39.008751, 40.031342, 46.482265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911388, 40.418701, 46.504040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276553, -0.015500, -0.960874,
		-0.929662, -0.248938, 0.271585,
		-0.243408, 0.968395, 0.054435,
		38.838367, 40.709221, 46.520370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428310, 40.011898, 46.113121>,  <39.008751, 40.031342, 46.482265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428310, 40.011898, 46.113121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.539448, 40.396084, 46.106079>,  <38.606129, 40.626595, 46.101852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.539448, 40.396084, 46.106079>,  <38.428310, 40.011898, 46.113121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539448, 40.396084, 46.106079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256312, 0.056457, -0.964944,
		-0.925802, 0.272613, 0.261865,
		0.277840, 0.960466, -0.017606,
		38.622799, 40.684223, 46.100796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732639, 40.295300, 46.441051>,  <38.428310, 40.011898, 46.113121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732639, 40.295300, 46.441051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361286, 40.152630, 46.482777>,  <37.138474, 40.067028, 46.507812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.361286, 40.152630, 46.482777>,  <37.732639, 40.295300, 46.441051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361286, 40.152630, 46.482777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028585, 0.211337, 0.976995,
		-0.370513, 0.910012, -0.186007,
		-0.928387, -0.356673, 0.104315,
		37.082771, 40.045628, 46.514072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409973, 40.620899, 47.028873>,  <37.732639, 40.295300, 46.441051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409973, 40.620899, 47.028873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169514, 40.303867, 46.988022>,  <37.025238, 40.113647, 46.963509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169514, 40.303867, 46.988022>,  <37.409973, 40.620899, 47.028873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169514, 40.303867, 46.988022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140473, -0.021008, 0.989862,
		-0.786693, 0.609403, -0.098707,
		-0.601151, -0.792583, -0.102132,
		36.989170, 40.066093, 46.957382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822311, 40.794193, 47.354385>,  <37.409973, 40.620899, 47.028873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822311, 40.794193, 47.354385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798157, 40.395321, 47.336567>,  <36.783665, 40.155998, 47.325874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.798157, 40.395321, 47.336567>,  <36.822311, 40.794193, 47.354385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798157, 40.395321, 47.336567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373024, -0.018850, 0.927630,
		-0.925855, 0.072630, -0.370834,
		-0.060383, -0.997181, -0.044545,
		36.780041, 40.096169, 47.323204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282825, 40.634369, 47.839886>,  <36.822311, 40.794193, 47.354385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282825, 40.634369, 47.839886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490986, 40.296150, 47.792152>,  <36.615883, 40.093220, 47.763512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490986, 40.296150, 47.792152>,  <36.282825, 40.634369, 47.839886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490986, 40.296150, 47.792152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114792, -0.207745, 0.971424,
		-0.846174, -0.491828, -0.205172,
		0.520397, -0.845546, -0.119331,
		36.647106, 40.042488, 47.756351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896027, 40.120228, 48.240318>,  <36.282825, 40.634369, 47.839886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896027, 40.120228, 48.240318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276016, 40.000790, 48.203663>,  <36.504009, 39.929127, 48.181671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.276016, 40.000790, 48.203663>,  <35.896027, 40.120228, 48.240318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276016, 40.000790, 48.203663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042098, -0.168297, 0.984837,
		-0.309492, -0.939423, -0.147306,
		0.949970, -0.298598, -0.091634,
		36.561008, 39.911209, 48.176174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835060, 39.438744, 48.465595>,  <35.896027, 40.120228, 48.240318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835060, 39.438744, 48.465595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226082, 39.515926, 48.499413>,  <36.460697, 39.562237, 48.519703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226082, 39.515926, 48.499413>,  <35.835060, 39.438744, 48.465595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226082, 39.515926, 48.499413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039038, -0.228458, 0.972771,
		0.207019, -0.954240, -0.215798,
		0.977558, 0.192957, 0.084547,
		36.519348, 39.573814, 48.524776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092358, 38.899849, 48.881649>,  <35.835060, 39.438744, 48.465595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092358, 38.899849, 48.881649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355019, 39.201527, 48.881542>,  <36.512615, 39.382534, 48.881477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355019, 39.201527, 48.881542>,  <36.092358, 38.899849, 48.881649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355019, 39.201527, 48.881542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100432, -0.087097, 0.991124,
		0.747478, -0.650849, -0.132937,
		0.656651, 0.754195, -0.000263,
		36.552013, 39.427784, 48.881462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965729, 38.255672, 49.111473>,  <36.092358, 38.899849, 48.881649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965729, 38.255672, 49.111473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595505, 38.178379, 49.241707>,  <35.373371, 38.132004, 49.319847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595505, 38.178379, 49.241707>,  <35.965729, 38.255672, 49.111473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595505, 38.178379, 49.241707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297326, -0.161439, -0.941029,
		0.234403, -0.967780, 0.091967,
		-0.925555, -0.193235, 0.325588,
		35.317837, 38.120407, 49.339382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698982, 37.928471, 48.649601>,  <35.965729, 38.255672, 49.111473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698982, 37.928471, 48.649601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353092, 37.973553, 48.845375>,  <35.145557, 38.000603, 48.962841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353092, 37.973553, 48.845375>,  <35.698982, 37.928471, 48.649601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353092, 37.973553, 48.845375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487103, 0.049317, -0.871951,
		-0.122408, -0.992404, 0.012252,
		-0.864724, 0.112702, 0.489440,
		35.093674, 38.007362, 48.992207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253147, 37.366398, 48.467068>,  <35.698982, 37.928471, 48.649601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253147, 37.366398, 48.467068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015049, 37.678768, 48.542793>,  <34.872189, 37.866192, 48.588226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015049, 37.678768, 48.542793>,  <35.253147, 37.366398, 48.467068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015049, 37.678768, 48.542793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300901, 0.001827, -0.953654,
		-0.745077, -0.624623, 0.233893,
		-0.595247, 0.780924, 0.189310,
		34.836475, 37.913044, 48.599586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625416, 37.224983, 48.091873>,  <35.253147, 37.366398, 48.467068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625416, 37.224983, 48.091873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610722, 37.613052, 48.187725>,  <34.601906, 37.845894, 48.245235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610722, 37.613052, 48.187725>,  <34.625416, 37.224983, 48.091873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610722, 37.613052, 48.187725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528182, 0.184713, -0.828797,
		-0.848336, -0.157018, 0.505640,
		-0.036737, 0.970168, 0.239633,
		34.599701, 37.904102, 48.259617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943005, 37.432449, 47.962582>,  <34.625416, 37.224983, 48.091873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943005, 37.432449, 47.962582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170826, 37.759163, 47.925762>,  <34.307518, 37.955193, 47.903671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170826, 37.759163, 47.925762>,  <33.943005, 37.432449, 47.962582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170826, 37.759163, 47.925762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410286, 0.185475, -0.892897,
		-0.712230, 0.546320, 0.440753,
		0.569556, 0.816782, -0.092046,
		34.341694, 38.004196, 47.898148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489597, 37.908669, 47.774685>,  <33.943005, 37.432449, 47.962582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489597, 37.908669, 47.774685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847744, 38.048031, 47.663742>,  <34.062634, 38.131649, 47.597176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847744, 38.048031, 47.663742>,  <33.489597, 37.908669, 47.774685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847744, 38.048031, 47.663742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395896, 0.337555, -0.854004,
		-0.203914, 0.874454, 0.440169,
		0.895369, 0.348405, -0.277361,
		34.116356, 38.152554, 47.580532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373974, 38.588249, 47.477524>,  <33.489597, 37.908669, 47.774685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373974, 38.588249, 47.477524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740265, 38.501919, 47.341953>,  <33.960037, 38.450123, 47.260612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740265, 38.501919, 47.341953>,  <33.373974, 38.588249, 47.477524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740265, 38.501919, 47.341953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245054, 0.368500, -0.896747,
		0.318433, 0.904228, 0.284556,
		0.915723, -0.215823, -0.338927,
		34.014980, 38.437172, 47.240276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.205200, 37.368710, 51.876991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.388840, 37.627934, 51.633930>,  <39.499023, 37.783470, 51.488094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.388840, 37.627934, 51.633930>,  <39.205200, 37.368710, 51.876991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388840, 37.627934, 51.633930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097527, -0.716630, -0.690601,
		-0.883017, 0.257790, -0.392206,
		0.459097, 0.648063, -0.607655,
		39.526569, 37.822353, 51.451633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884258, 37.406597, 51.243530>,  <39.205200, 37.368710, 51.876991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884258, 37.406597, 51.243530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.266834, 37.513050, 51.195545>,  <39.496380, 37.576920, 51.166756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.266834, 37.513050, 51.195545>,  <38.884258, 37.406597, 51.243530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266834, 37.513050, 51.195545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078912, -0.631359, -0.771465,
		-0.281050, 0.728396, -0.624860,
		0.956443, 0.266129, -0.119964,
		39.553768, 37.592888, 51.159557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022507, 37.515324, 50.553349>,  <38.884258, 37.406597, 51.243530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022507, 37.515324, 50.553349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.397732, 37.474529, 50.685799>,  <39.622868, 37.450054, 50.765266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.397732, 37.474529, 50.685799>,  <39.022507, 37.515324, 50.553349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397732, 37.474529, 50.685799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240387, -0.496673, -0.833984,
		0.249513, 0.861925, -0.441394,
		0.938060, -0.101984, 0.331122,
		39.679150, 37.443935, 50.785137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382656, 37.870831, 50.109722>,  <39.022507, 37.515324, 50.553349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382656, 37.870831, 50.109722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.636314, 37.604336, 50.266689>,  <39.788509, 37.444439, 50.360870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.636314, 37.604336, 50.266689>,  <39.382656, 37.870831, 50.109722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636314, 37.604336, 50.266689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160909, -0.382689, -0.909757,
		0.756289, 0.640057, -0.135474,
		0.634141, -0.666240, 0.392414,
		39.826557, 37.404465, 50.384415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095974, 37.973537, 49.842987>,  <39.382656, 37.870831, 50.109722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095974, 37.973537, 49.842987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.101784, 37.591465, 49.961254>,  <40.105270, 37.362221, 50.032215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.101784, 37.591465, 49.961254>,  <40.095974, 37.973537, 49.842987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101784, 37.591465, 49.961254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278270, -0.280157, -0.918737,
		0.960393, 0.095623, 0.261728,
		0.014527, -0.955179, 0.295670,
		40.106140, 37.304913, 50.049953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636051, 37.679817, 49.486797>,  <40.095974, 37.973537, 49.842987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636051, 37.679817, 49.486797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.421551, 37.359402, 49.593212>,  <40.292850, 37.167152, 49.657059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.421551, 37.359402, 49.593212>,  <40.636051, 37.679817, 49.486797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421551, 37.359402, 49.593212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057623, -0.349192, -0.935278,
		0.842090, -0.486212, 0.233412,
		-0.536249, -0.801039, 0.266034,
		40.260677, 37.119091, 49.673023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899811, 37.179848, 49.174210>,  <40.636051, 37.679817, 49.486797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899811, 37.179848, 49.174210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.532822, 37.037277, 49.244865>,  <40.312626, 36.951736, 49.287258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.532822, 37.037277, 49.244865>,  <40.899811, 37.179848, 49.174210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532822, 37.037277, 49.244865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005053, -0.433561, -0.901110,
		0.397762, -0.827638, 0.395980,
		-0.917475, -0.356426, 0.176636,
		40.257580, 36.930351, 49.297855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023857, 36.512314, 48.938801>,  <40.899811, 37.179848, 49.174210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023857, 36.512314, 48.938801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.626202, 36.511272, 48.982044>,  <40.387608, 36.510647, 49.007992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.626202, 36.511272, 48.982044>,  <41.023857, 36.512314, 48.938801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626202, 36.511272, 48.982044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096767, -0.424950, -0.900030,
		0.048285, -0.905213, 0.422206,
		-0.994135, -0.002602, 0.108113,
		40.327961, 36.510490, 49.014477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768383, 35.758904, 48.890228>,  <41.023857, 36.512314, 48.938801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768383, 35.758904, 48.890228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.467957, 36.007645, 48.801510>,  <40.287701, 36.156891, 48.748280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.467957, 36.007645, 48.801510>,  <40.768383, 35.758904, 48.890228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467957, 36.007645, 48.801510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001262, -0.334592, -0.942362,
		-0.660225, -0.708057, 0.250516,
		-0.751067, 0.621855, -0.221800,
		40.242638, 36.194202, 48.734970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.266766, 35.311214, 48.653938>,  <40.768383, 35.758904, 48.890228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.266766, 35.311214, 48.653938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.150784, 35.664589, 48.506714>,  <40.081192, 35.876614, 48.418381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.150784, 35.664589, 48.506714>,  <40.266766, 35.311214, 48.653938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150784, 35.664589, 48.506714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049232, -0.397843, -0.916132,
		-0.955772, -0.247520, 0.158852,
		-0.289959, 0.883433, -0.368061,
		40.063797, 35.929619, 48.396297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745335, 35.145981, 48.240219>,  <40.266766, 35.311214, 48.653938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745335, 35.145981, 48.240219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.807117, 35.518154, 48.107288>,  <39.844185, 35.741459, 48.027531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.807117, 35.518154, 48.107288>,  <39.745335, 35.145981, 48.240219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807117, 35.518154, 48.107288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107611, -0.318519, -0.941789,
		-0.982122, 0.181225, 0.050929,
		0.154453, 0.930432, -0.332327,
		39.853455, 35.797283, 48.007591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214672, 35.310444, 47.731522>,  <39.745335, 35.145981, 48.240219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214672, 35.310444, 47.731522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.522243, 35.556622, 47.662277>,  <39.706787, 35.704330, 47.620731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.522243, 35.556622, 47.662277>,  <39.214672, 35.310444, 47.731522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522243, 35.556622, 47.662277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023583, -0.243284, -0.969668,
		-0.638896, 0.749691, -0.172555,
		0.768931, 0.615448, -0.173114,
		39.752922, 35.741257, 47.610344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656620, 35.504391, 48.179165>,  <39.214672, 35.310444, 47.731522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656620, 35.504391, 48.179165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.297146, 35.588261, 48.025070>,  <38.081463, 35.638584, 47.932613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.297146, 35.588261, 48.025070>,  <38.656620, 35.504391, 48.179165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297146, 35.588261, 48.025070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368815, 0.114093, 0.922474,
		0.237375, 0.971091, -0.025201,
		-0.898682, 0.209677, -0.385236,
		38.027542, 35.651165, 47.909500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405109, 35.871441, 48.678650>,  <38.656620, 35.504391, 48.179165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405109, 35.871441, 48.678650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.080391, 35.767250, 48.469601>,  <37.885559, 35.704735, 48.344170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.080391, 35.767250, 48.469601>,  <38.405109, 35.871441, 48.678650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080391, 35.767250, 48.469601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530007, -0.046990, 0.846690,
		-0.245100, 0.964336, -0.099907,
		-0.811800, -0.260475, -0.522622,
		37.836849, 35.689106, 48.312813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824718, 36.349224, 48.806087>,  <38.405109, 35.871441, 48.678650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824718, 36.349224, 48.806087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.657917, 36.002125, 48.697929>,  <37.557835, 35.793865, 48.633034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.657917, 36.002125, 48.697929>,  <37.824718, 36.349224, 48.806087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657917, 36.002125, 48.697929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506895, -0.024900, 0.861648,
		-0.754430, 0.496374, -0.429475,
		-0.417006, -0.867752, -0.270395,
		37.532814, 35.741798, 48.616810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151844, 36.415909, 48.843853>,  <37.824718, 36.349224, 48.806087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151844, 36.415909, 48.843853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.162159, 36.016045, 48.844948>,  <37.168350, 35.776127, 48.845604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.162159, 36.016045, 48.844948>,  <37.151844, 36.415909, 48.843853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162159, 36.016045, 48.844948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685156, -0.015687, 0.728228,
		-0.727940, -0.020654, -0.685330,
		0.025791, -0.999664, 0.002732,
		37.169895, 35.716145, 48.845768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442921, 36.151165, 49.011635>,  <37.151844, 36.415909, 48.843853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442921, 36.151165, 49.011635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686909, 35.843700, 49.088673>,  <36.833302, 35.659222, 49.134895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686909, 35.843700, 49.088673>,  <36.442921, 36.151165, 49.011635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686909, 35.843700, 49.088673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566379, -0.252913, 0.784378,
		-0.554213, -0.587529, -0.589625,
		0.609969, -0.768664, 0.192597,
		36.869900, 35.613102, 49.146450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957272, 35.695248, 49.290810>,  <36.442921, 36.151165, 49.011635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957272, 35.695248, 49.290810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300354, 35.531330, 49.415012>,  <36.506203, 35.432980, 49.489532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300354, 35.531330, 49.415012>,  <35.957272, 35.695248, 49.290810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300354, 35.531330, 49.415012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466123, -0.364920, 0.805955,
		-0.216969, -0.836002, -0.504008,
		0.857703, -0.409797, 0.310503,
		36.557667, 35.408390, 49.508163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717888, 35.106739, 49.551365>,  <35.957272, 35.695248, 49.290810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717888, 35.106739, 49.551365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086880, 35.169548, 49.692432>,  <36.308273, 35.207233, 49.777073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086880, 35.169548, 49.692432>,  <35.717888, 35.106739, 49.551365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086880, 35.169548, 49.692432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252993, -0.444142, 0.859496,
		0.291596, -0.882090, -0.369986,
		0.922478, 0.157022, 0.352673,
		36.363625, 35.216656, 49.798233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975346, 34.443768, 49.727085>,  <35.717888, 35.106739, 49.551365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975346, 34.443768, 49.727085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.147434, 34.726608, 49.951553>,  <36.250687, 34.896313, 50.086235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.147434, 34.726608, 49.951553>,  <35.975346, 34.443768, 49.727085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147434, 34.726608, 49.951553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436096, -0.381500, 0.815033,
		0.790401, -0.595368, 0.144237,
		0.430218, 0.707104, 0.561175,
		36.276501, 34.938740, 50.119907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076900, 34.148899, 50.343346>,  <35.975346, 34.443768, 49.727085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076900, 34.148899, 50.343346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.151047, 34.526527, 50.452431>,  <36.195534, 34.753105, 50.517879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.151047, 34.526527, 50.452431>,  <36.076900, 34.148899, 50.343346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151047, 34.526527, 50.452431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356023, -0.194143, 0.914088,
		0.915907, -0.266533, 0.300123,
		0.185368, 0.944070, 0.272709,
		36.206657, 34.809750, 50.534245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536991, 34.115356, 51.023399>,  <36.076900, 34.148899, 50.343346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536991, 34.115356, 51.023399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.346752, 34.465279, 50.986485>,  <36.232609, 34.675232, 50.964336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.346752, 34.465279, 50.986485>,  <36.536991, 34.115356, 51.023399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346752, 34.465279, 50.986485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208513, -0.010192, 0.977967,
		0.854591, 0.484365, 0.187256,
		-0.475602, 0.874807, -0.092286,
		36.204071, 34.727722, 50.958797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690411, 34.486458, 51.622650>,  <36.536991, 34.115356, 51.023399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690411, 34.486458, 51.622650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.358303, 34.662693, 51.486099>,  <36.159039, 34.768433, 51.404167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.358303, 34.662693, 51.486099>,  <36.690411, 34.486458, 51.622650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358303, 34.662693, 51.486099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289156, 0.183124, 0.939603,
		0.476490, 0.878834, -0.024644,
		-0.830269, 0.440585, -0.341377,
		36.109222, 34.794868, 51.383686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671127, 35.104809, 52.010738>,  <36.690411, 34.486458, 51.622650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671127, 35.104809, 52.010738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300770, 35.026722, 51.881359>,  <36.078556, 34.979870, 51.803730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.300770, 35.026722, 51.881359>,  <36.671127, 35.104809, 52.010738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300770, 35.026722, 51.881359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363039, 0.222819, 0.904740,
		-0.104549, 0.955114, -0.277177,
		-0.925890, -0.195216, -0.323448,
		36.023003, 34.968159, 51.784325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269005, 35.714249, 52.307011>,  <36.671127, 35.104809, 52.010738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269005, 35.714249, 52.307011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.005398, 35.429958, 52.208576>,  <35.847233, 35.259384, 52.149517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.005398, 35.429958, 52.208576>,  <36.269005, 35.714249, 52.307011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005398, 35.429958, 52.208576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528011, 0.204183, 0.824326,
		-0.535625, 0.673184, -0.509833,
		-0.659022, -0.710727, -0.246083,
		35.807690, 35.216740, 52.134750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637127, 36.074200, 52.425461>,  <36.269005, 35.714249, 52.307011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637127, 36.074200, 52.425461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520927, 35.691906, 52.406754>,  <35.451206, 35.462532, 52.395527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.520927, 35.691906, 52.406754>,  <35.637127, 36.074200, 52.425461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520927, 35.691906, 52.406754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767364, 0.203490, 0.608066,
		-0.571630, 0.212536, -0.792507,
		-0.290503, -0.955731, -0.046771,
		35.433777, 35.405186, 52.392723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372299, 36.744190, 52.054573>,  <35.637127, 36.074200, 52.425461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372299, 36.744190, 52.054573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.482056, 37.128513, 52.070324>,  <35.547909, 37.359108, 52.079773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.482056, 37.128513, 52.070324>,  <35.372299, 36.744190, 52.054573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482056, 37.128513, 52.070324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404832, 0.152561, -0.901574,
		-0.872251, 0.231440, 0.430828,
		0.274388, 0.960813, 0.039377,
		35.564373, 37.416756, 52.082138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833973, 37.208477, 51.813236>,  <35.372299, 36.744190, 52.054573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833973, 37.208477, 51.813236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.158939, 37.434742, 51.756653>,  <35.353920, 37.570503, 51.722702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.158939, 37.434742, 51.756653>,  <34.833973, 37.208477, 51.813236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158939, 37.434742, 51.756653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245647, 0.112017, -0.962865,
		-0.528815, 0.816991, 0.229958,
		0.812411, 0.565666, -0.141455,
		35.402664, 37.604443, 51.714218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578175, 37.709427, 51.393124>,  <34.833973, 37.208477, 51.813236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578175, 37.709427, 51.393124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.975197, 37.735561, 51.352024>,  <35.213409, 37.751244, 51.327366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.975197, 37.735561, 51.352024>,  <34.578175, 37.709427, 51.393124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975197, 37.735561, 51.352024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115445, 0.236658, -0.964710,
		-0.038716, 0.969394, 0.242440,
		0.992559, 0.065338, -0.102750,
		35.272964, 37.755161, 51.321198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619564, 38.249302, 50.933289>,  <34.578175, 37.709427, 51.393124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619564, 38.249302, 50.933289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974461, 38.064835, 50.928947>,  <35.187401, 37.954155, 50.926342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.974461, 38.064835, 50.928947>,  <34.619564, 38.249302, 50.933289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974461, 38.064835, 50.928947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070058, 0.157963, -0.984957,
		0.455947, 0.873138, 0.172460,
		0.887245, -0.461171, -0.010853,
		35.240635, 37.926483, 50.925694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144699, 38.790451, 50.723549>,  <34.619564, 38.249302, 50.933289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144699, 38.790451, 50.723549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.261662, 38.415718, 50.646759>,  <35.331837, 38.190880, 50.600685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.261662, 38.415718, 50.646759>,  <35.144699, 38.790451, 50.723549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261662, 38.415718, 50.646759> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065093, 0.219776, -0.973376,
		0.954077, 0.272122, 0.125244,
		0.292403, -0.936829, -0.191970,
		35.349380, 38.134670, 50.589169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708042, 38.845310, 50.314369>,  <35.144699, 38.790451, 50.723549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708042, 38.845310, 50.314369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.562778, 38.479225, 50.244514>,  <35.475620, 38.259575, 50.202602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.562778, 38.479225, 50.244514>,  <35.708042, 38.845310, 50.314369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562778, 38.479225, 50.244514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062736, 0.211032, -0.975464,
		0.929613, -0.343292, -0.134055,
		-0.363159, -0.915214, -0.174641,
		35.453831, 38.204662, 50.192123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861965, 38.768341, 49.601368>,  <35.708042, 38.845310, 50.314369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861965, 38.768341, 49.601368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605629, 38.472095, 49.682178>,  <35.451828, 38.294346, 49.730663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.605629, 38.472095, 49.682178>,  <35.861965, 38.768341, 49.601368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605629, 38.472095, 49.682178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238011, -0.058514, -0.969498,
		0.729848, -0.669375, -0.138777,
		-0.640838, -0.740616, 0.202025,
		35.413376, 38.249912, 49.742786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587177, 38.674973, 49.391815>,  <35.861965, 38.768341, 49.601368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587177, 38.674973, 49.391815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.645329, 39.068710, 49.351967>,  <36.680218, 39.304955, 49.328060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.645329, 39.068710, 49.351967>,  <36.587177, 38.674973, 49.391815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645329, 39.068710, 49.351967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049529, 0.093321, 0.994403,
		0.988136, -0.149495, -0.035188,
		0.145375, 0.984349, -0.099618,
		36.688942, 39.364014, 49.322083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043339, 38.719650, 49.933197>,  <36.587177, 38.674973, 49.391815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043339, 38.719650, 49.933197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.912052, 39.084583, 49.835289>,  <36.833279, 39.303543, 49.776543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.912052, 39.084583, 49.835289>,  <37.043339, 38.719650, 49.933197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912052, 39.084583, 49.835289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202099, 0.320950, 0.925282,
		0.922728, 0.254228, -0.289725,
		-0.328220, 0.912337, -0.244771,
		36.813587, 39.358284, 49.761856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541912, 39.197998, 50.220394>,  <37.043339, 38.719650, 49.933197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541912, 39.197998, 50.220394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215443, 39.415936, 50.143436>,  <37.019562, 39.546696, 50.097263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215443, 39.415936, 50.143436>,  <37.541912, 39.197998, 50.220394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215443, 39.415936, 50.143436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065521, 0.418093, 0.906038,
		0.574085, 0.726875, -0.376934,
		-0.816170, 0.544840, -0.192395,
		36.970592, 39.579388, 50.085716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752113, 39.922096, 50.362522>,  <37.541912, 39.197998, 50.220394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752113, 39.922096, 50.362522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.357849, 39.863091, 50.395283>,  <37.121288, 39.827686, 50.414940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.357849, 39.863091, 50.395283>,  <37.752113, 39.922096, 50.362522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357849, 39.863091, 50.395283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028357, 0.333710, 0.942249,
		-0.166324, 0.931063, -0.324743,
		-0.985663, -0.147510, 0.081906,
		37.062149, 39.818836, 50.419853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521763, 40.538055, 50.765026>,  <37.752113, 39.922096, 50.362522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521763, 40.538055, 50.765026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.211899, 40.288013, 50.803284>,  <37.025982, 40.137989, 50.826237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.211899, 40.288013, 50.803284>,  <37.521763, 40.538055, 50.765026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211899, 40.288013, 50.803284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095416, 0.265045, 0.959504,
		-0.625141, 0.734161, -0.264964,
		-0.774658, -0.625107, 0.095639,
		36.979500, 40.100483, 50.831974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979172, 40.943619, 51.012249>,  <37.521763, 40.538055, 50.765026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979172, 40.943619, 51.012249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896244, 40.563503, 51.105167>,  <36.846485, 40.335434, 51.160919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896244, 40.563503, 51.105167>,  <36.979172, 40.943619, 51.012249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896244, 40.563503, 51.105167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073706, 0.251952, 0.964929,
		-0.975492, 0.182928, -0.122278,
		-0.207321, -0.950293, 0.232294,
		36.834049, 40.278416, 51.174854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310017, 41.013222, 51.408745>,  <36.979172, 40.943619, 51.012249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310017, 41.013222, 51.408745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.442398, 40.648129, 51.504566>,  <36.521828, 40.429073, 51.562057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.442398, 40.648129, 51.504566>,  <36.310017, 41.013222, 51.408745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442398, 40.648129, 51.504566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090318, 0.222051, 0.970843,
		-0.939315, -0.342939, -0.008948,
		0.330953, -0.912736, 0.239550,
		36.541683, 40.374310, 51.576431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850204, 40.730373, 52.036373>,  <36.310017, 41.013222, 51.408745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850204, 40.730373, 52.036373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205784, 40.550102, 52.003723>,  <36.419132, 40.441940, 51.984135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.205784, 40.550102, 52.003723>,  <35.850204, 40.730373, 52.036373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205784, 40.550102, 52.003723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160574, 0.139771, 0.977077,
		-0.428936, -0.881678, 0.196616,
		0.888949, -0.450675, -0.081622,
		36.472469, 40.414902, 51.979237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861980, 40.263931, 52.562458>,  <35.850204, 40.730373, 52.036373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861980, 40.263931, 52.562458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.241261, 40.328056, 52.452755>,  <36.468830, 40.366531, 52.386932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.241261, 40.328056, 52.452755>,  <35.861980, 40.263931, 52.562458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241261, 40.328056, 52.452755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247227, 0.169743, 0.953974,
		0.199493, -0.972361, 0.121315,
		0.948199, 0.160319, -0.274256,
		36.525723, 40.376148, 52.370480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.047367, 38.153687, 36.134827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393326, 38.308353, 36.262852>,  <35.600903, 38.401154, 36.339668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393326, 38.308353, 36.262852>,  <35.047367, 38.153687, 36.134827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393326, 38.308353, 36.262852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145941, -0.416383, 0.897400,
		0.480267, -0.822868, -0.303697,
		0.864896, 0.386670, 0.320065,
		35.652794, 38.424355, 36.358871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302860, 37.765919, 36.587902>,  <35.047367, 38.153687, 36.134827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302860, 37.765919, 36.587902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531693, 38.072311, 36.705196>,  <35.668991, 38.256149, 36.775574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531693, 38.072311, 36.705196>,  <35.302860, 37.765919, 36.587902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531693, 38.072311, 36.705196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141746, -0.259807, 0.955201,
		0.807855, -0.588019, -0.040056,
		0.572083, 0.765986, 0.293236,
		35.703316, 38.302109, 36.793167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558949, 37.536743, 37.267338>,  <35.302860, 37.765919, 36.587902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558949, 37.536743, 37.267338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651443, 37.925842, 37.260540>,  <35.706940, 38.159302, 37.256462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651443, 37.925842, 37.260540>,  <35.558949, 37.536743, 37.267338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651443, 37.925842, 37.260540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074429, 0.035104, 0.996608,
		0.970046, -0.229188, 0.080518,
		0.231237, 0.972749, -0.016995,
		35.720814, 38.217667, 37.255440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060585, 37.644077, 37.828697>,  <35.558949, 37.536743, 37.267338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060585, 37.644077, 37.828697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912010, 38.007858, 37.753941>,  <35.822865, 38.226128, 37.709087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912010, 38.007858, 37.753941>,  <36.060585, 37.644077, 37.828697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912010, 38.007858, 37.753941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113782, 0.244363, 0.962985,
		0.921462, 0.336419, -0.194244,
		-0.371433, 0.909455, -0.186892,
		35.800579, 38.280693, 37.697872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590065, 38.131180, 38.055187>,  <36.060585, 37.644077, 37.828697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590065, 38.131180, 38.055187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235725, 38.316563, 38.063885>,  <36.023121, 38.427792, 38.069103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235725, 38.316563, 38.063885>,  <36.590065, 38.131180, 38.055187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235725, 38.316563, 38.063885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186090, 0.311983, 0.931685,
		0.425017, 0.829379, -0.362616,
		-0.885850, 0.463461, 0.021741,
		35.969971, 38.455601, 38.070408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674084, 38.690193, 38.478237>,  <36.590065, 38.131180, 38.055187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674084, 38.690193, 38.478237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275303, 38.714401, 38.458538>,  <36.036034, 38.728924, 38.446720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275303, 38.714401, 38.458538>,  <36.674084, 38.690193, 38.478237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275303, 38.714401, 38.458538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017682, 0.439495, 0.898071,
		0.075990, 0.896204, -0.437085,
		-0.996952, 0.060516, -0.049244,
		35.976219, 38.732555, 38.443764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476883, 39.360889, 38.533051>,  <36.674084, 38.690193, 38.478237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476883, 39.360889, 38.533051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164482, 39.141262, 38.652084>,  <35.977043, 39.009487, 38.723507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164482, 39.141262, 38.652084>,  <36.476883, 39.360889, 38.533051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164482, 39.141262, 38.652084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126543, 0.327487, 0.936344,
		-0.611573, 0.768944, -0.186288,
		-0.781003, -0.549069, 0.297587,
		35.930180, 38.976540, 38.741360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224632, 39.780624, 39.118587>,  <36.476883, 39.360889, 38.533051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224632, 39.780624, 39.118587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002033, 39.454178, 39.180885>,  <35.868473, 39.258308, 39.218266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002033, 39.454178, 39.180885>,  <36.224632, 39.780624, 39.118587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002033, 39.454178, 39.180885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238216, 0.336310, 0.911125,
		-0.795966, 0.469940, -0.381569,
		-0.556500, -0.816120, 0.155744,
		35.835083, 39.209343, 39.227608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611244, 40.004486, 39.499584>,  <36.224632, 39.780624, 39.118587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611244, 40.004486, 39.499584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666721, 39.613220, 39.561497>,  <35.700008, 39.378460, 39.598644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666721, 39.613220, 39.561497>,  <35.611244, 40.004486, 39.499584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666721, 39.613220, 39.561497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094901, 0.142445, 0.985243,
		-0.985778, -0.151332, -0.073073,
		0.138690, -0.978166, 0.154780,
		35.708328, 39.319771, 39.607929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025867, 39.882874, 39.932659>,  <35.611244, 40.004486, 39.499584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025867, 39.882874, 39.932659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275124, 39.575203, 39.989315>,  <35.424679, 39.390602, 40.023308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275124, 39.575203, 39.989315>,  <35.025867, 39.882874, 39.932659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275124, 39.575203, 39.989315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176845, 0.037839, 0.983511,
		-0.761852, -0.637916, -0.112446,
		0.623143, -0.769176, 0.141640,
		35.462067, 39.344452, 40.031807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592915, 39.355747, 40.357124>,  <35.025867, 39.882874, 39.932659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592915, 39.355747, 40.357124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984043, 39.293602, 40.413296>,  <35.218719, 39.256313, 40.446999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984043, 39.293602, 40.413296>,  <34.592915, 39.355747, 40.357124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984043, 39.293602, 40.413296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130152, 0.074498, 0.988691,
		-0.164070, -0.985044, 0.052625,
		0.977825, -0.155366, 0.140428,
		35.277390, 39.246994, 40.455425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621391, 38.891861, 40.885002>,  <34.592915, 39.355747, 40.357124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621391, 38.891861, 40.885002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983501, 39.059933, 40.859932>,  <35.200768, 39.160774, 40.844891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983501, 39.059933, 40.859932>,  <34.621391, 38.891861, 40.885002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983501, 39.059933, 40.859932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060968, 0.017502, 0.997986,
		0.420429, -0.907273, -0.009773,
		0.905275, 0.420179, -0.062673,
		35.255085, 39.185986, 40.841129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600243, 38.114132, 41.023735>,  <34.621391, 38.891861, 40.885002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600243, 38.114132, 41.023735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228806, 38.020432, 41.138863>,  <34.005943, 37.964211, 41.207939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228806, 38.020432, 41.138863>,  <34.600243, 38.114132, 41.023735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228806, 38.020432, 41.138863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235392, -0.227785, -0.944831,
		0.286892, -0.945113, 0.156378,
		-0.928592, -0.234254, 0.287821,
		33.950230, 37.950153, 41.225208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426819, 37.453495, 40.678970>,  <34.600243, 38.114132, 41.023735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426819, 37.453495, 40.678970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095421, 37.656116, 40.774464>,  <33.896580, 37.777687, 40.831760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095421, 37.656116, 40.774464>,  <34.426819, 37.453495, 40.678970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095421, 37.656116, 40.774464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333537, -0.103918, -0.936992,
		-0.449825, -0.855925, 0.255049,
		-0.828499, 0.506551, 0.238738,
		33.846870, 37.808083, 40.846085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899704, 36.931316, 40.521641>,  <34.426819, 37.453495, 40.678970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899704, 36.931316, 40.521641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765579, 37.307980, 40.533218>,  <33.685104, 37.533978, 40.540165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765579, 37.307980, 40.533218>,  <33.899704, 36.931316, 40.521641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765579, 37.307980, 40.533218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336962, -0.091188, -0.937092,
		-0.879785, -0.323972, 0.347880,
		-0.335314, 0.941662, 0.028940,
		33.664986, 37.590477, 40.541901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248470, 36.876392, 40.487720>,  <33.899704, 36.931316, 40.521641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248470, 36.876392, 40.487720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305649, 37.259003, 40.386028>,  <33.339954, 37.488567, 40.325012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305649, 37.259003, 40.386028>,  <33.248470, 36.876392, 40.487720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305649, 37.259003, 40.386028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461775, -0.162741, -0.871939,
		-0.875403, 0.242035, 0.418436,
		0.142943, 0.956522, -0.254230,
		33.348530, 37.545959, 40.309761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608517, 37.015755, 40.193813>,  <33.248470, 36.876392, 40.487720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608517, 37.015755, 40.193813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823246, 37.325935, 40.060844>,  <32.952084, 37.512043, 39.981064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823246, 37.325935, 40.060844>,  <32.608517, 37.015755, 40.193813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823246, 37.325935, 40.060844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461991, -0.059514, -0.884886,
		-0.705966, 0.628601, 0.326301,
		0.536820, 0.775448, -0.332422,
		32.984291, 37.558571, 39.961117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179588, 37.446312, 39.817749>,  <32.608517, 37.015755, 40.193813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179588, 37.446312, 39.817749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541862, 37.533081, 39.672050>,  <32.759228, 37.585144, 39.584633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541862, 37.533081, 39.672050>,  <32.179588, 37.446312, 39.817749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541862, 37.533081, 39.672050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346421, -0.116601, -0.930804,
		-0.244384, 0.969200, -0.030458,
		0.905687, 0.216922, -0.364246,
		32.813568, 37.598156, 39.562778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070553, 37.906651, 39.280479>,  <32.179588, 37.446312, 39.817749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070553, 37.906651, 39.280479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430450, 37.740776, 39.226078>,  <32.646389, 37.641251, 39.193436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430450, 37.740776, 39.226078>,  <32.070553, 37.906651, 39.280479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430450, 37.740776, 39.226078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272433, -0.290237, -0.917356,
		0.340943, 0.862437, -0.374113,
		0.899743, -0.414687, -0.136002,
		32.700375, 37.616371, 39.185276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009007, 37.786751, 38.576618>,  <32.070553, 37.906651, 39.280479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009007, 37.786751, 38.576618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356487, 37.612480, 38.670891>,  <32.564976, 37.507919, 38.727455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356487, 37.612480, 38.670891>,  <32.009007, 37.786751, 38.576618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356487, 37.612480, 38.670891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000007, -0.475817, -0.879545,
		0.495336, 0.764060, -0.413346,
		0.868701, -0.435673, 0.235684,
		32.617096, 37.481777, 38.741596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405571, 37.773212, 37.935474>,  <32.009007, 37.786751, 38.576618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405571, 37.773212, 37.935474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531628, 37.485889, 38.183575>,  <32.607262, 37.313496, 38.332436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531628, 37.485889, 38.183575>,  <32.405571, 37.773212, 37.935474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531628, 37.485889, 38.183575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174653, -0.686291, -0.706046,
		0.932835, 0.114176, -0.341735,
		0.315144, -0.718309, 0.620255,
		32.626171, 37.270397, 38.369652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716404, 37.358719, 37.563053>,  <32.405571, 37.773212, 37.935474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716404, 37.358719, 37.563053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646858, 37.135460, 37.887581>,  <32.605129, 37.001503, 38.082298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646858, 37.135460, 37.887581>,  <32.716404, 37.358719, 37.563053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646858, 37.135460, 37.887581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138372, -0.801850, -0.581283,
		0.974999, -0.213330, 0.062182,
		-0.173866, -0.558147, 0.811322,
		32.594700, 36.968018, 38.130978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230221, 36.729729, 37.618839>,  <32.716404, 37.358719, 37.563053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230221, 36.729729, 37.618839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915115, 36.633904, 37.845833>,  <32.726051, 36.576408, 37.982029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915115, 36.633904, 37.845833>,  <33.230221, 36.729729, 37.618839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915115, 36.633904, 37.845833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279068, -0.682500, -0.675511,
		0.549135, -0.690509, 0.470795,
		-0.787764, -0.239563, 0.567484,
		32.678787, 36.562035, 38.016079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267120, 35.940029, 37.775379>,  <33.230221, 36.729729, 37.618839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267120, 35.940029, 37.775379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884079, 36.044510, 37.823997>,  <32.654255, 36.107197, 37.853168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884079, 36.044510, 37.823997>,  <33.267120, 35.940029, 37.775379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884079, 36.044510, 37.823997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268585, -0.656770, -0.704638,
		-0.104222, -0.707409, 0.699078,
		-0.957601, 0.261201, 0.121550,
		32.596798, 36.122871, 37.860462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933243, 35.392788, 37.831448>,  <33.267120, 35.940029, 37.775379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933243, 35.392788, 37.831448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644505, 35.648861, 37.726295>,  <32.471260, 35.802505, 37.663204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644505, 35.648861, 37.726295>,  <32.933243, 35.392788, 37.831448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644505, 35.648861, 37.726295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326470, -0.649931, -0.686299,
		-0.610207, -0.409583, 0.678152,
		-0.721849, 0.640181, -0.262876,
		32.427952, 35.840916, 37.647430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350441, 34.984863, 37.704548>,  <32.933243, 35.392788, 37.831448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350441, 34.984863, 37.704548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280602, 35.321480, 37.500069>,  <32.238697, 35.523449, 37.377380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280602, 35.321480, 37.500069>,  <32.350441, 34.984863, 37.704548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280602, 35.321480, 37.500069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301229, -0.539929, -0.785963,
		-0.937431, 0.016758, 0.347768,
		-0.174598, 0.841544, -0.511194,
		32.228222, 35.573944, 37.346710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745434, 34.368813, 37.871639>,  <32.350441, 34.984863, 37.704548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745434, 34.368813, 37.871639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953770, 34.105392, 37.654373>,  <33.078773, 33.947338, 37.524014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.953770, 34.105392, 37.654373>,  <32.745434, 34.368813, 37.871639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953770, 34.105392, 37.654373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845412, 0.486126, 0.221268,
		0.118332, -0.574447, 0.809943,
		0.520842, -0.658553, -0.543169,
		33.110023, 33.907825, 37.491421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202278, 34.045006, 38.357040>,  <32.745434, 34.368813, 37.871639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202278, 34.045006, 38.357040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318554, 34.088436, 37.976788>,  <33.388321, 34.114494, 37.748634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318554, 34.088436, 37.976788>,  <33.202278, 34.045006, 38.357040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318554, 34.088436, 37.976788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779342, 0.549527, 0.301076,
		0.555088, -0.828391, 0.075130,
		0.290694, 0.108572, -0.950636,
		33.405762, 34.121010, 37.691597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731213, 34.574718, 38.569355>,  <33.202278, 34.045006, 38.357040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731213, 34.574718, 38.569355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914139, 34.629707, 38.920803>,  <34.023895, 34.662701, 39.131672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914139, 34.629707, 38.920803>,  <33.731213, 34.574718, 38.569355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914139, 34.629707, 38.920803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702920, 0.549336, -0.451812,
		-0.544766, 0.824216, 0.154587,
		0.457311, 0.137469, 0.878618,
		34.051331, 34.670948, 39.184387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711086, 33.983665, 38.988846>,  <33.731213, 34.574718, 38.569355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711086, 33.983665, 38.988846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030933, 34.081734, 38.769573>,  <34.222843, 34.140575, 38.638008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030933, 34.081734, 38.769573>,  <33.711086, 33.983665, 38.988846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030933, 34.081734, 38.769573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447683, 0.365045, 0.816286,
		0.400242, -0.898127, 0.182137,
		0.799617, 0.245172, -0.548182,
		34.270817, 34.155285, 38.605118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343216, 33.556351, 39.168800>,  <33.711086, 33.983665, 38.988846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343216, 33.556351, 39.168800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410381, 33.932594, 39.050781>,  <34.450680, 34.158340, 38.979969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410381, 33.932594, 39.050781>,  <34.343216, 33.556351, 39.168800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410381, 33.932594, 39.050781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384271, 0.213172, 0.898273,
		0.907822, -0.264210, -0.325656,
		0.167912, 0.940612, -0.295050,
		34.460754, 34.214779, 38.962265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122581, 33.816414, 39.262211>,  <34.343216, 33.556351, 39.168800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122581, 33.816414, 39.262211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891701, 34.141705, 39.291882>,  <34.753170, 34.336880, 39.309685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891701, 34.141705, 39.291882>,  <35.122581, 33.816414, 39.262211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891701, 34.141705, 39.291882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376997, 0.184803, 0.907591,
		0.724366, 0.551830, -0.413252,
		-0.577206, 0.813223, 0.074173,
		34.718540, 34.385670, 39.314133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530983, 34.233162, 39.607712>,  <35.122581, 33.816414, 39.262211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530983, 34.233162, 39.607712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158131, 34.369118, 39.657688>,  <34.934418, 34.450691, 39.687672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158131, 34.369118, 39.657688>,  <35.530983, 34.233162, 39.607712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158131, 34.369118, 39.657688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248501, 0.349429, 0.903409,
		0.263401, 0.873142, -0.410175,
		-0.932130, 0.339888, 0.124936,
		34.878490, 34.471085, 39.695168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633991, 34.861931, 39.927242>,  <35.530983, 34.233162, 39.607712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633991, 34.861931, 39.927242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247150, 34.783157, 39.991650>,  <35.015045, 34.735893, 40.030296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247150, 34.783157, 39.991650>,  <35.633991, 34.861931, 39.927242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247150, 34.783157, 39.991650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034325, 0.526178, 0.849681,
		-0.252052, 0.827258, -0.502109,
		-0.967105, -0.196929, 0.161020,
		34.957020, 34.724079, 40.039955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356171, 35.484924, 39.938171>,  <35.633991, 34.861931, 39.927242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356171, 35.484924, 39.938171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117142, 35.242382, 40.148026>,  <34.973724, 35.096855, 40.273937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117142, 35.242382, 40.148026>,  <35.356171, 35.484924, 39.938171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117142, 35.242382, 40.148026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012997, 0.646892, 0.762470,
		-0.801712, 0.462448, -0.378682,
		-0.597570, -0.606360, 0.524632,
		34.937870, 35.060474, 40.305416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920425, 35.903530, 40.366974>,  <35.356171, 35.484924, 39.938171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920425, 35.903530, 40.366974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905720, 35.560795, 40.572681>,  <34.896896, 35.355152, 40.696106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905720, 35.560795, 40.572681>,  <34.920425, 35.903530, 40.366974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905720, 35.560795, 40.572681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183800, 0.500036, 0.846275,
		-0.982276, 0.125637, 0.139103,
		-0.036767, -0.856842, 0.514266,
		34.894691, 35.303741, 40.726963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559471, 36.011665, 40.985729>,  <34.920425, 35.903530, 40.366974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559471, 36.011665, 40.985729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702782, 35.654827, 41.095852>,  <34.788769, 35.440723, 41.161926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702782, 35.654827, 41.095852>,  <34.559471, 36.011665, 40.985729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702782, 35.654827, 41.095852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017763, 0.301347, 0.953349,
		-0.933446, -0.336673, 0.123812,
		0.358277, -0.892099, 0.275311,
		34.810265, 35.387196, 41.178444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185875, 35.761536, 41.557133>,  <34.559471, 36.011665, 40.985729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185875, 35.761536, 41.557133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544464, 35.584309, 41.558929>,  <34.759617, 35.477970, 41.560009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544464, 35.584309, 41.558929>,  <34.185875, 35.761536, 41.557133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544464, 35.584309, 41.558929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135322, 0.283425, 0.949399,
		-0.421925, -0.850505, 0.314040,
		0.896475, -0.443072, 0.004492,
		34.813408, 35.451385, 41.560276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306572, 35.367920, 42.225967>,  <34.185875, 35.761536, 41.557133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306572, 35.367920, 42.225967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682117, 35.412415, 42.095638>,  <34.907444, 35.439110, 42.017441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682117, 35.412415, 42.095638>,  <34.306572, 35.367920, 42.225967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682117, 35.412415, 42.095638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283608, 0.286653, 0.915094,
		0.195186, -0.951555, 0.237582,
		0.938866, 0.111233, -0.325819,
		34.963776, 35.445786, 41.997894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723568, 35.176533, 42.756706>,  <34.306572, 35.367920, 42.225967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723568, 35.176533, 42.756706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987785, 35.386635, 42.542122>,  <35.146317, 35.512695, 42.413372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987785, 35.386635, 42.542122>,  <34.723568, 35.176533, 42.756706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987785, 35.386635, 42.542122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482882, 0.249912, 0.839267,
		0.574897, -0.813419, -0.088558,
		0.660544, 0.525255, -0.536459,
		35.185947, 35.544212, 42.381184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361580, 35.094406, 43.139812>,  <34.723568, 35.176533, 42.756706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361580, 35.094406, 43.139812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433857, 35.394600, 42.885532>,  <35.477222, 35.574718, 42.732964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433857, 35.394600, 42.885532>,  <35.361580, 35.094406, 43.139812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433857, 35.394600, 42.885532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515868, 0.477983, 0.710923,
		0.837394, -0.456399, -0.300784,
		0.180695, 0.750488, -0.635702,
		35.488064, 35.619747, 42.694820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052685, 35.057877, 42.994568>,  <35.361580, 35.094406, 43.139812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052685, 35.057877, 42.994568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925262, 35.435055, 42.955830>,  <35.848808, 35.661362, 42.932587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925262, 35.435055, 42.955830>,  <36.052685, 35.057877, 42.994568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925262, 35.435055, 42.955830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656037, 0.293062, 0.695507,
		0.684206, 0.158020, -0.711963,
		-0.318554, 0.942944, -0.096848,
		35.829697, 35.717937, 42.926777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601994, 35.374023, 42.962482>,  <36.052685, 35.057877, 42.994568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601994, 35.374023, 42.962482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348743, 35.668415, 43.058392>,  <36.196793, 35.845051, 43.115936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348743, 35.668415, 43.058392>,  <36.601994, 35.374023, 42.962482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348743, 35.668415, 43.058392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583059, 0.249704, 0.773104,
		0.509113, 0.629275, -0.587212,
		-0.633124, 0.735976, 0.239777,
		36.158806, 35.889210, 43.130325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946205, 35.912853, 43.093094>,  <36.601994, 35.374023, 42.962482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946205, 35.912853, 43.093094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620277, 36.027565, 43.294621>,  <36.424721, 36.096390, 43.415535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620277, 36.027565, 43.294621>,  <36.946205, 35.912853, 43.093094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620277, 36.027565, 43.294621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575862, 0.500435, 0.646488,
		-0.066728, 0.816899, -0.572909,
		-0.814819, 0.286777, 0.503814,
		36.375832, 36.113598, 43.445766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992691, 36.719025, 43.270599>,  <36.946205, 35.912853, 43.093094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992691, 36.719025, 43.270599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746147, 36.534046, 43.525547>,  <36.598221, 36.423058, 43.678516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746147, 36.534046, 43.525547>,  <36.992691, 36.719025, 43.270599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746147, 36.534046, 43.525547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505704, 0.387985, 0.770540,
		-0.603625, 0.797251, -0.005276,
		-0.616360, -0.462449, 0.637370,
		36.561237, 36.395313, 43.716759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997219, 37.152390, 43.893223>,  <36.992691, 36.719025, 43.270599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997219, 37.152390, 43.893223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824360, 36.814354, 44.019123>,  <36.720646, 36.611530, 44.094666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824360, 36.814354, 44.019123>,  <36.997219, 37.152390, 43.893223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824360, 36.814354, 44.019123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498585, 0.066934, 0.864252,
		-0.751441, 0.530413, 0.392426,
		-0.432144, -0.845093, 0.314753,
		36.694717, 36.560825, 44.113548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745758, 37.279690, 44.645290>,  <36.997219, 37.152390, 43.893223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745758, 37.279690, 44.645290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789406, 36.885563, 44.592762>,  <36.815594, 36.649086, 44.561245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789406, 36.885563, 44.592762>,  <36.745758, 37.279690, 44.645290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789406, 36.885563, 44.592762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280933, -0.096153, 0.954899,
		-0.953504, -0.141092, 0.266315,
		0.109121, -0.985316, -0.131319,
		36.822144, 36.589970, 44.553368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520866, 37.069603, 45.252438>,  <36.745758, 37.279690, 44.645290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520866, 37.069603, 45.252438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700768, 36.748367, 45.096096>,  <36.808708, 36.555626, 45.002293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700768, 36.748367, 45.096096>,  <36.520866, 37.069603, 45.252438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700768, 36.748367, 45.096096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298348, -0.277387, 0.913261,
		-0.841851, -0.527349, 0.114847,
		0.449750, -0.803094, -0.390852,
		36.835693, 36.507439, 44.978840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343906, 36.575535, 45.738266>,  <36.520866, 37.069603, 45.252438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343906, 36.575535, 45.738266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650723, 36.436447, 45.522587>,  <36.834812, 36.352993, 45.393177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650723, 36.436447, 45.522587>,  <36.343906, 36.575535, 45.738266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650723, 36.436447, 45.522587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400972, -0.396269, 0.825949,
		-0.500870, -0.849741, -0.164527,
		0.767040, -0.347722, -0.539202,
		36.880836, 36.332130, 45.360825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347477, 35.848816, 45.783226>,  <36.343906, 36.575535, 45.738266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347477, 35.848816, 45.783226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703735, 36.021458, 45.726013>,  <36.917492, 36.125042, 45.691685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703735, 36.021458, 45.726013>,  <36.347477, 35.848816, 45.783226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703735, 36.021458, 45.726013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344631, -0.435591, 0.831559,
		0.296605, -0.789921, -0.536704,
		0.890649, 0.431609, -0.143033,
		36.970928, 36.150940, 45.683102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671570, 35.457886, 46.238888>,  <36.347477, 35.848816, 45.783226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671570, 35.457886, 46.238888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949585, 35.730732, 46.147984>,  <37.116394, 35.894440, 46.093441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949585, 35.730732, 46.147984>,  <36.671570, 35.457886, 46.238888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949585, 35.730732, 46.147984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517768, -0.255555, 0.816461,
		0.498844, -0.685135, -0.530797,
		0.695034, 0.682116, -0.227259,
		37.158096, 35.935368, 46.079807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247032, 35.073772, 46.347710>,  <36.671570, 35.457886, 46.238888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247032, 35.073772, 46.347710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349525, 35.460239, 46.359531>,  <37.411022, 35.692120, 46.366623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349525, 35.460239, 46.359531>,  <37.247032, 35.073772, 46.347710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349525, 35.460239, 46.359531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533492, -0.166845, 0.829185,
		0.806059, -0.196698, -0.558192,
		0.256230, 0.966164, 0.029550,
		37.426395, 35.750088, 46.368397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035305, 35.091152, 46.393326>,  <37.247032, 35.073772, 46.347710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035305, 35.091152, 46.393326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867290, 35.407391, 46.571552>,  <37.766479, 35.597134, 46.678490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867290, 35.407391, 46.571552>,  <38.035305, 35.091152, 46.393326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867290, 35.407391, 46.571552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530213, -0.184671, 0.827509,
		0.736506, 0.583831, -0.341614,
		-0.420039, 0.790593, 0.445566,
		37.741280, 35.644569, 46.705223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536091, 35.261646, 46.796665>,  <38.035305, 35.091152, 46.393326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536091, 35.261646, 46.796665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220917, 35.461487, 46.940636>,  <38.031811, 35.581390, 47.027020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220917, 35.461487, 46.940636>,  <38.536091, 35.261646, 46.796665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220917, 35.461487, 46.940636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229482, -0.304164, 0.924566,
		0.571395, 0.811098, 0.125012,
		-0.787938, 0.499604, 0.359930,
		37.984535, 35.611366, 47.048615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999180, 35.699036, 47.180805>,  <38.536091, 35.261646, 46.796665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999180, 35.699036, 47.180805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397701, 35.724346, 47.157539>,  <39.636814, 35.739532, 47.143578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397701, 35.724346, 47.157539>,  <38.999180, 35.699036, 47.180805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397701, 35.724346, 47.157539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042767, -0.222081, -0.974090,
		-0.074555, 0.972973, -0.218553,
		0.996300, 0.063276, -0.058168,
		39.696590, 35.743328, 47.140087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178768, 36.101654, 46.544064>,  <38.999180, 35.699036, 47.180805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178768, 36.101654, 46.544064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512444, 35.902397, 46.638718>,  <39.712646, 35.782845, 46.695511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512444, 35.902397, 46.638718>,  <39.178768, 36.101654, 46.544064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512444, 35.902397, 46.638718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150110, -0.207789, -0.966587,
		0.530663, 0.841833, -0.098559,
		0.834184, -0.498138, 0.236633,
		39.762699, 35.752956, 46.709709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637093, 36.375103, 46.059341>,  <39.178768, 36.101654, 46.544064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637093, 36.375103, 46.059341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799332, 36.034958, 46.193428>,  <39.896675, 35.830872, 46.273880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799332, 36.034958, 46.193428>,  <39.637093, 36.375103, 46.059341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799332, 36.034958, 46.193428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104248, -0.321306, -0.941220,
		0.908087, 0.416702, -0.041672,
		0.405598, -0.850365, 0.335215,
		39.921013, 35.779850, 46.293991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253601, 36.163429, 45.547367>,  <39.637093, 36.375103, 46.059341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253601, 36.163429, 45.547367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101875, 35.830109, 45.708229>,  <40.010841, 35.630116, 45.804749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101875, 35.830109, 45.708229>,  <40.253601, 36.163429, 45.547367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101875, 35.830109, 45.708229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132257, -0.381348, -0.914922,
		0.915767, -0.400230, 0.034440,
		-0.379312, -0.833301, 0.402159,
		39.988083, 35.580120, 45.828876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757095, 35.568096, 45.363613>,  <40.253601, 36.163429, 45.547367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757095, 35.568096, 45.363613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417747, 35.383148, 45.466751>,  <40.214138, 35.272179, 45.528633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417747, 35.383148, 45.466751>,  <40.757095, 35.568096, 45.363613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417747, 35.383148, 45.466751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023898, -0.519997, -0.853834,
		0.528863, -0.718206, 0.452200,
		-0.848371, -0.462368, 0.257843,
		40.163235, 35.244438, 45.544106>
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
