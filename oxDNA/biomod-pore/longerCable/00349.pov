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
	<24.534235, 35.041504, 35.443848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223272, 35.042652, 35.192249>,  <24.036695, 35.043339, 35.041290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223272, 35.042652, 35.192249>,  <24.534235, 35.041504, 35.443848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223272, 35.042652, 35.192249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612274, 0.232522, -0.755681,
		0.144089, -0.972587, -0.182519,
		-0.777406, 0.002867, -0.628994,
		23.990051, 35.043510, 35.003551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.261456, 35.025047, 35.292557>,  <24.534235, 35.041504, 35.443848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.261456, 35.025047, 35.292557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595148, 34.817730, 35.217262>,  <25.795364, 34.693340, 35.172085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.595148, 34.817730, 35.217262>,  <25.261456, 35.025047, 35.292557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.595148, 34.817730, 35.217262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435836, 0.410639, 0.800889,
		-0.337794, -0.750168, 0.568457,
		0.834231, -0.518290, -0.188239,
		25.845417, 34.662243, 35.160789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532013, 34.856094, 35.992874>,  <25.261456, 35.025047, 35.292557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532013, 34.856094, 35.992874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842258, 34.823017, 35.742565>,  <26.028406, 34.803169, 35.592381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842258, 34.823017, 35.742565>,  <25.532013, 34.856094, 35.992874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842258, 34.823017, 35.742565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595614, 0.424098, 0.682192,
		0.208972, -0.901833, 0.378191,
		0.775613, -0.082697, -0.625769,
		26.074942, 34.798206, 35.554836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103518, 34.547226, 36.380665>,  <25.532013, 34.856094, 35.992874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103518, 34.547226, 36.380665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238033, 34.726883, 36.049561>,  <26.318743, 34.834675, 35.850899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238033, 34.726883, 36.049561>,  <26.103518, 34.547226, 36.380665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238033, 34.726883, 36.049561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730119, 0.430829, 0.530388,
		0.594841, -0.782726, -0.183042,
		0.336288, 0.449139, -0.827759,
		26.338921, 34.861626, 35.801231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853842, 34.399479, 36.164631>,  <26.103518, 34.547226, 36.380665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853842, 34.399479, 36.164631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725430, 34.765953, 36.068672>,  <26.648382, 34.985836, 36.011097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725430, 34.765953, 36.068672>,  <26.853842, 34.399479, 36.164631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725430, 34.765953, 36.068672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689675, 0.399757, 0.603773,
		0.649065, 0.028382, -0.760203,
		-0.321033, 0.916181, -0.239895,
		26.629120, 35.040806, 35.996704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479027, 34.839405, 36.059578>,  <26.853842, 34.399479, 36.164631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479027, 34.839405, 36.059578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168447, 35.064819, 36.172398>,  <26.982100, 35.200069, 36.240089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168447, 35.064819, 36.172398>,  <27.479027, 34.839405, 36.059578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168447, 35.064819, 36.172398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607881, 0.551768, 0.570993,
		0.166153, 0.614798, -0.770984,
		-0.776450, 0.563539, 0.282046,
		26.935513, 35.233879, 36.257011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689106, 35.631645, 36.110718>,  <27.479027, 34.839405, 36.059578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689106, 35.631645, 36.110718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354132, 35.627083, 36.329285>,  <27.153147, 35.624344, 36.460426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354132, 35.627083, 36.329285>,  <27.689106, 35.631645, 36.110718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354132, 35.627083, 36.329285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430721, 0.601656, 0.672674,
		-0.336428, 0.798674, -0.498934,
		-0.837434, -0.011405, 0.546420,
		27.102901, 35.623661, 36.493210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382307, 36.372364, 36.291313>,  <27.689106, 35.631645, 36.110718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382307, 36.372364, 36.291313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320005, 36.090874, 36.568592>,  <27.282625, 35.921982, 36.734959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320005, 36.090874, 36.568592>,  <27.382307, 36.372364, 36.291313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320005, 36.090874, 36.568592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501717, 0.548140, 0.669196,
		-0.850895, 0.452016, 0.267695,
		-0.155753, -0.703722, 0.693193,
		27.273279, 35.879757, 36.776550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229486, 36.764385, 36.919952>,  <27.382307, 36.372364, 36.291313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229486, 36.764385, 36.919952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341709, 36.399220, 37.038532>,  <27.409042, 36.180122, 37.109680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341709, 36.399220, 37.038532>,  <27.229486, 36.764385, 36.919952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341709, 36.399220, 37.038532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533287, 0.405052, 0.742656,
		-0.798056, -0.050264, 0.600483,
		0.280555, -0.912911, 0.296449,
		27.425877, 36.125347, 37.127468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952435, 36.558998, 37.580124>,  <27.229486, 36.764385, 36.919952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952435, 36.558998, 37.580124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280743, 36.339439, 37.516815>,  <27.477728, 36.207703, 37.478832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280743, 36.339439, 37.516815>,  <26.952435, 36.558998, 37.580124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280743, 36.339439, 37.516815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461186, 0.473184, 0.750603,
		-0.337116, -0.689062, 0.641519,
		0.820768, -0.548900, -0.158268,
		27.526974, 36.174770, 37.469334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221672, 36.455090, 38.232578>,  <26.952435, 36.558998, 37.580124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221672, 36.455090, 38.232578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525782, 36.399975, 37.978649>,  <27.708248, 36.366905, 37.826290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.525782, 36.399975, 37.978649>,  <27.221672, 36.455090, 38.232578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.525782, 36.399975, 37.978649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579038, 0.586697, 0.566129,
		0.294445, -0.797999, 0.525832,
		0.760274, -0.137782, -0.634822,
		27.753864, 36.358639, 37.788204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854181, 36.063381, 38.580917>,  <27.221672, 36.455090, 38.232578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854181, 36.063381, 38.580917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900494, 36.322666, 38.279873>,  <27.928280, 36.478237, 38.099247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900494, 36.322666, 38.279873>,  <27.854181, 36.063381, 38.580917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900494, 36.322666, 38.279873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492288, 0.620649, 0.610285,
		0.862698, -0.441160, -0.247247,
		0.115780, 0.648208, -0.752610,
		27.935228, 36.517128, 38.054089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479584, 36.337944, 38.674637>,  <27.854181, 36.063381, 38.580917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479584, 36.337944, 38.674637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288046, 36.616581, 38.460922>,  <28.173122, 36.783764, 38.332695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.288046, 36.616581, 38.460922>,  <28.479584, 36.337944, 38.674637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288046, 36.616581, 38.460922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483951, 0.717225, 0.501378,
		0.732461, -0.018484, -0.680559,
		-0.478846, 0.696596, -0.534284,
		28.144392, 36.825562, 38.300636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880423, 36.752312, 38.164536>,  <28.479584, 36.337944, 38.674637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880423, 36.752312, 38.164536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589354, 36.997425, 38.287819>,  <28.414711, 37.144493, 38.361790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589354, 36.997425, 38.287819>,  <28.880423, 36.752312, 38.164536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589354, 36.997425, 38.287819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684206, 0.680225, 0.262975,
		-0.048505, 0.402238, -0.914249,
		-0.727674, 0.612779, 0.308208,
		28.371052, 37.181259, 38.380280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915388, 37.270481, 37.635967>,  <28.880423, 36.752312, 38.164536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915388, 37.270481, 37.635967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803183, 37.379440, 38.004124>,  <28.735859, 37.444817, 38.225018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.803183, 37.379440, 38.004124>,  <28.915388, 37.270481, 37.635967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803183, 37.379440, 38.004124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717257, 0.696699, 0.012407,
		-0.637853, 0.663634, -0.390811,
		-0.280512, 0.272398, 0.920387,
		28.719028, 37.461159, 38.280239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629339, 36.834881, 37.150391>,  <28.915388, 37.270481, 37.635967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629339, 36.834881, 37.150391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508972, 36.642857, 37.479996>,  <28.436752, 36.527641, 37.677757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.508972, 36.642857, 37.479996>,  <28.629339, 36.834881, 37.150391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508972, 36.642857, 37.479996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366795, -0.739327, -0.564674,
		0.880289, -0.472163, 0.046394,
		-0.300918, -0.480059, 0.824009,
		28.418697, 36.498840, 37.727200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762379, 36.181873, 37.043598>,  <28.629339, 36.834881, 37.150391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762379, 36.181873, 37.043598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453512, 36.187271, 37.297710>,  <28.268192, 36.190510, 37.450176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453512, 36.187271, 37.297710>,  <28.762379, 36.181873, 37.043598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453512, 36.187271, 37.297710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483578, -0.661048, -0.573732,
		0.412205, -0.750222, 0.516966,
		-0.772166, 0.013498, 0.635278,
		28.221863, 36.191322, 37.488293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586279, 35.461266, 37.333889>,  <28.762379, 36.181873, 37.043598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586279, 35.461266, 37.333889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258442, 35.689880, 37.349953>,  <28.061741, 35.827049, 37.359589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258442, 35.689880, 37.349953>,  <28.586279, 35.461266, 37.333889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258442, 35.689880, 37.349953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526514, -0.723674, -0.446183,
		-0.225950, -0.386831, 0.894040,
		-0.819591, 0.571540, 0.040158,
		28.012564, 35.861343, 37.362000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964359, 35.022594, 37.445694>,  <28.586279, 35.461266, 37.333889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964359, 35.022594, 37.445694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781513, 35.367134, 37.357037>,  <27.671806, 35.573856, 37.303841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781513, 35.367134, 37.357037>,  <27.964359, 35.022594, 37.445694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781513, 35.367134, 37.357037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683451, -0.499656, -0.532203,
		-0.569158, -0.091793, 0.817088,
		-0.457115, 0.861347, -0.221647,
		27.644379, 35.625538, 37.290543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308220, 35.123806, 37.806686>,  <27.964359, 35.022594, 37.445694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308220, 35.123806, 37.806686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296375, 35.346474, 37.474602>,  <27.289268, 35.480076, 37.275352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296375, 35.346474, 37.474602>,  <27.308220, 35.123806, 37.806686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296375, 35.346474, 37.474602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783933, -0.528230, -0.326225,
		-0.620139, 0.641166, 0.452032,
		-0.029612, 0.556668, -0.830207,
		27.287491, 35.513474, 37.225540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780643, 34.871876, 37.426414>,  <27.308220, 35.123806, 37.806686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780643, 34.871876, 37.426414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853432, 35.236069, 37.277874>,  <26.897104, 35.454586, 37.188751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853432, 35.236069, 37.277874>,  <26.780643, 34.871876, 37.426414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853432, 35.236069, 37.277874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807358, -0.077234, -0.584985,
		-0.561302, 0.406262, 0.721034,
		0.181969, 0.910487, -0.371350,
		26.908022, 35.509216, 37.166470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210707, 35.422199, 37.355499>,  <26.780643, 34.871876, 37.426414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210707, 35.422199, 37.355499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486607, 35.496929, 37.075687>,  <26.652147, 35.541767, 36.907803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486607, 35.496929, 37.075687>,  <26.210707, 35.422199, 37.355499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486607, 35.496929, 37.075687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665975, -0.215406, -0.714197,
		-0.284112, 0.958487, -0.024156,
		0.689752, 0.186824, -0.699528,
		26.693533, 35.552975, 36.865829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922855, 35.938965, 36.707451>,  <26.210707, 35.422199, 37.355499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922855, 35.938965, 36.707451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225395, 35.705826, 36.588638>,  <26.406919, 35.565945, 36.517349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.225395, 35.705826, 36.588638>,  <25.922855, 35.938965, 36.707451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225395, 35.705826, 36.588638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489629, -0.203277, -0.847905,
		0.433816, 0.786748, -0.439125,
		0.756351, -0.582843, -0.297030,
		26.452301, 35.530972, 36.499531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858614, 36.183834, 36.050663>,  <25.922855, 35.938965, 36.707451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858614, 36.183834, 36.050663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019684, 35.820580, 36.096504>,  <26.116325, 35.602627, 36.124008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019684, 35.820580, 36.096504>,  <25.858614, 36.183834, 36.050663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019684, 35.820580, 36.096504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442421, -0.302704, -0.844176,
		0.801322, 0.289225, -0.523672,
		0.402674, -0.908140, 0.114604,
		26.140486, 35.548138, 36.130886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531450, 36.246521, 35.762241>,  <25.858614, 36.183834, 36.050663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531450, 36.246521, 35.762241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805187, 35.957100, 35.798347>,  <26.969429, 35.783447, 35.820011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805187, 35.957100, 35.798347>,  <26.531450, 36.246521, 35.762241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805187, 35.957100, 35.798347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526370, -0.575881, -0.625536,
		0.504590, 0.380569, -0.774956,
		0.684342, -0.723553, 0.090264,
		27.010490, 35.740036, 35.825428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.794493, 35.908310, 35.134266>,  <26.531450, 36.246521, 35.762241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.794493, 35.908310, 35.134266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796528, 35.621025, 35.412586>,  <26.797749, 35.448654, 35.579578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796528, 35.621025, 35.412586>,  <26.794493, 35.908310, 35.134266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796528, 35.621025, 35.412586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465787, -0.617424, -0.633901,
		0.884882, -0.320872, -0.337676,
		0.005088, -0.718212, 0.695805,
		26.798054, 35.405560, 35.621326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952169, 35.400475, 34.754707>,  <26.794493, 35.908310, 35.134266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952169, 35.400475, 34.754707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791702, 35.226822, 35.077347>,  <26.695423, 35.122631, 35.270931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.791702, 35.226822, 35.077347>,  <26.952169, 35.400475, 34.754707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791702, 35.226822, 35.077347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403158, -0.707002, -0.581043,
		0.822514, -0.558280, 0.108601,
		-0.401166, -0.434133, 0.806595,
		26.671352, 35.096581, 35.319324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097950, 34.631458, 34.732014>,  <26.952169, 35.400475, 34.754707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097950, 34.631458, 34.732014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784668, 34.683559, 34.975201>,  <26.596699, 34.714821, 35.121113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784668, 34.683559, 34.975201>,  <27.097950, 34.631458, 34.732014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784668, 34.683559, 34.975201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508810, -0.696253, -0.506304,
		0.357351, -0.705880, 0.611583,
		-0.783207, 0.130252, 0.607965,
		26.549706, 34.722633, 35.157589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860437, 33.954880, 34.934509>,  <27.097950, 34.631458, 34.732014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860437, 33.954880, 34.934509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545187, 34.193989, 34.993191>,  <26.356037, 34.337456, 35.028400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545187, 34.193989, 34.993191>,  <26.860437, 33.954880, 34.934509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545187, 34.193989, 34.993191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601503, -0.697432, -0.389593,
		-0.130576, -0.395289, 0.909229,
		-0.788127, 0.597775, 0.146700,
		26.308748, 34.373322, 35.037201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420061, 33.530460, 35.157272>,  <26.860437, 33.954880, 34.934509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420061, 33.530460, 35.157272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209394, 33.833149, 35.002357>,  <26.082994, 34.014763, 34.909409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209394, 33.833149, 35.002357>,  <26.420061, 33.530460, 35.157272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209394, 33.833149, 35.002357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573150, -0.652568, -0.495635,
		-0.627789, -0.039062, 0.777403,
		-0.526669, 0.756723, -0.387287,
		26.051395, 34.060165, 34.886169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683619, 33.258961, 35.698017>,  <26.420061, 33.530460, 35.157272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683619, 33.258961, 35.698017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826233, 32.908714, 35.567673>,  <26.911800, 32.698566, 35.489464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826233, 32.908714, 35.567673>,  <26.683619, 33.258961, 35.698017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826233, 32.908714, 35.567673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794131, 0.467759, -0.388018,
		0.492178, -0.120436, 0.862123,
		0.356535, -0.875612, -0.325863,
		26.933193, 32.646030, 35.469913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233461, 32.958462, 36.086102>,  <26.683619, 33.258961, 35.698017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233461, 32.958462, 36.086102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218935, 32.884636, 35.693241>,  <27.210220, 32.840340, 35.457527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218935, 32.884636, 35.693241>,  <27.233461, 32.958462, 36.086102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218935, 32.884636, 35.693241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794525, 0.590778, -0.140396,
		0.606144, -0.785441, 0.125189,
		-0.036314, -0.184566, -0.982149,
		27.208040, 32.829266, 35.398598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785555, 32.476883, 35.755333>,  <27.233461, 32.958462, 36.086102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785555, 32.476883, 35.755333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671482, 32.764050, 35.501320>,  <27.603039, 32.936348, 35.348911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671482, 32.764050, 35.501320>,  <27.785555, 32.476883, 35.755333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671482, 32.764050, 35.501320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896061, 0.434872, 0.089222,
		0.340212, -0.543584, -0.767315,
		-0.285184, 0.717916, -0.635033,
		27.585926, 32.979424, 35.310810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274517, 32.539902, 35.083237>,  <27.785555, 32.476883, 35.755333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274517, 32.539902, 35.083237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091257, 32.867756, 35.220818>,  <27.981300, 33.064468, 35.303364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091257, 32.867756, 35.220818>,  <28.274517, 32.539902, 35.083237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091257, 32.867756, 35.220818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879355, 0.474415, 0.040798,
		-0.129735, 0.321145, -0.938102,
		-0.458152, 0.819632, 0.343949,
		27.953812, 33.113644, 35.324001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916943, 32.862236, 35.304142>,  <28.274517, 32.539902, 35.083237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916943, 32.862236, 35.304142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179916, 33.120667, 35.149033>,  <29.337700, 33.275723, 35.055965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179916, 33.120667, 35.149033>,  <28.916943, 32.862236, 35.304142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179916, 33.120667, 35.149033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743342, 0.471824, -0.474157,
		-0.123380, 0.599975, 0.790448,
		0.657435, 0.646074, -0.387772,
		29.377148, 33.314487, 35.032700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633131, 33.568218, 35.384842>,  <28.916943, 32.862236, 35.304142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633131, 33.568218, 35.384842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913275, 33.562740, 35.099377>,  <29.081362, 33.559452, 34.928097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913275, 33.562740, 35.099377>,  <28.633131, 33.568218, 35.384842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913275, 33.562740, 35.099377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570896, 0.589394, -0.571570,
		0.428456, 0.807729, 0.404967,
		0.700359, -0.013698, -0.713660,
		29.123383, 33.558632, 34.885281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879126, 34.250443, 35.249836>,  <28.633131, 33.568218, 35.384842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879126, 34.250443, 35.249836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936983, 34.041531, 34.913666>,  <28.971697, 33.916183, 34.711964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936983, 34.041531, 34.913666>,  <28.879126, 34.250443, 35.249836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936983, 34.041531, 34.913666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265949, 0.797579, -0.541423,
		0.953074, 0.301822, -0.023535,
		0.144642, -0.522275, -0.840421,
		28.980375, 33.884850, 34.661541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099865, 34.664913, 34.812363>,  <28.879126, 34.250443, 35.249836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099865, 34.664913, 34.812363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968189, 34.385635, 34.558071>,  <28.889183, 34.218067, 34.405495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968189, 34.385635, 34.558071>,  <29.099865, 34.664913, 34.812363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968189, 34.385635, 34.558071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355982, 0.715342, -0.601300,
		0.874592, 0.028368, -0.484028,
		-0.329188, -0.698198, -0.635732,
		28.869432, 34.176174, 34.367352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280266, 34.864910, 34.072712>,  <29.099865, 34.664913, 34.812363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280266, 34.864910, 34.072712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949669, 34.639866, 34.080463>,  <28.751310, 34.504837, 34.085114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949669, 34.639866, 34.080463>,  <29.280266, 34.864910, 34.072712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949669, 34.639866, 34.080463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490373, 0.702608, -0.515632,
		0.276485, -0.435669, -0.856591,
		-0.826492, -0.562614, 0.019380,
		28.701721, 34.471081, 34.086277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897713, 34.865002, 33.336353>,  <29.280266, 34.864910, 34.072712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897713, 34.865002, 33.336353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632765, 34.800762, 33.629059>,  <28.473797, 34.762218, 33.804680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632765, 34.800762, 33.629059>,  <28.897713, 34.865002, 33.336353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632765, 34.800762, 33.629059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593917, 0.707933, -0.382223,
		-0.456653, -0.687778, -0.564296,
		-0.662368, -0.160602, 0.731762,
		28.434055, 34.752583, 33.848587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428028, 35.458374, 33.692833>,  <28.897713, 34.865002, 33.336353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428028, 35.458374, 33.692833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124794, 35.273495, 33.508797>,  <27.942854, 35.162567, 33.398376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124794, 35.273495, 33.508797>,  <28.428028, 35.458374, 33.692833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124794, 35.273495, 33.508797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230494, -0.849845, 0.473958,
		-0.610064, 0.253254, 0.750790,
		-0.758086, -0.462197, -0.460086,
		27.897367, 35.134834, 33.370770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988739, 35.070873, 34.187828>,  <28.428028, 35.458374, 33.692833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988739, 35.070873, 34.187828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019461, 34.926163, 33.816189>,  <28.037893, 34.839336, 33.593204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019461, 34.926163, 33.816189>,  <27.988739, 35.070873, 34.187828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019461, 34.926163, 33.816189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441311, -0.823265, 0.357044,
		-0.894062, -0.437443, 0.096424,
		0.076804, -0.361772, -0.929098,
		28.042501, 34.817631, 33.537460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764673, 34.455326, 34.106014>,  <27.988739, 35.070873, 34.187828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764673, 34.455326, 34.106014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073322, 34.465775, 33.851795>,  <28.258512, 34.472046, 33.699265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073322, 34.465775, 33.851795>,  <27.764673, 34.455326, 34.106014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073322, 34.465775, 33.851795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467374, -0.701030, 0.538627,
		-0.431464, -0.712653, -0.553140,
		0.771622, 0.026125, -0.635545,
		28.304810, 34.473614, 33.661133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851433, 33.744499, 33.779575>,  <27.764673, 34.455326, 34.106014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851433, 33.744499, 33.779575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193016, 33.948299, 33.821842>,  <28.397966, 34.070580, 33.847202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193016, 33.948299, 33.821842>,  <27.851433, 33.744499, 33.779575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193016, 33.948299, 33.821842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422175, -0.797125, 0.431695,
		0.304181, -0.324037, -0.895809,
		0.853957, 0.509502, 0.105670,
		28.449203, 34.101151, 33.853542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391130, 33.346100, 33.556473>,  <27.851433, 33.744499, 33.779575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391130, 33.346100, 33.556473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563229, 33.602650, 33.810570>,  <28.666487, 33.756580, 33.963028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563229, 33.602650, 33.810570>,  <28.391130, 33.346100, 33.556473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563229, 33.602650, 33.810570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519261, -0.751462, 0.407030,
		0.738416, 0.154732, -0.656353,
		0.430244, 0.641376, 0.635238,
		28.692303, 33.795063, 34.001141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059750, 33.194386, 33.594563>,  <28.391130, 33.346100, 33.556473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059750, 33.194386, 33.594563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021687, 33.407246, 33.931076>,  <28.998848, 33.534962, 34.132984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.021687, 33.407246, 33.931076>,  <29.059750, 33.194386, 33.594563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021687, 33.407246, 33.931076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710366, -0.555748, 0.431884,
		0.697370, 0.638718, -0.325137,
		-0.095158, 0.532149, 0.841286,
		28.993139, 33.566891, 34.183460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706381, 33.285423, 33.760303>,  <29.059750, 33.194386, 33.594563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706381, 33.285423, 33.760303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482420, 33.357967, 34.083691>,  <29.348043, 33.401493, 34.277721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482420, 33.357967, 34.083691>,  <29.706381, 33.285423, 33.760303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482420, 33.357967, 34.083691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680964, -0.455142, 0.573702,
		0.472016, 0.871753, 0.131332,
		-0.559901, 0.181364, 0.808466,
		29.314449, 33.412376, 34.326229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021757, 33.715149, 34.347038>,  <29.706381, 33.285423, 33.760303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021757, 33.715149, 34.347038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765512, 33.436798, 34.476883>,  <29.611765, 33.269787, 34.554790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765512, 33.436798, 34.476883>,  <30.021757, 33.715149, 34.347038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765512, 33.436798, 34.476883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671608, -0.302847, 0.676185,
		-0.372232, 0.651186, 0.661363,
		-0.640614, -0.695874, 0.324612,
		29.573328, 33.228035, 34.574268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717964, 33.817165, 34.022930>,  <30.021757, 33.715149, 34.347038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717964, 33.817165, 34.022930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883873, 34.122238, 34.221436>,  <30.983418, 34.305283, 34.340538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883873, 34.122238, 34.221436>,  <30.717964, 33.817165, 34.022930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883873, 34.122238, 34.221436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807175, -0.056633, -0.587589,
		-0.420040, 0.644287, -0.639109,
		0.414771, 0.762684, 0.496264,
		31.008305, 34.351044, 34.370316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027887, 34.371742, 33.560764>,  <30.717964, 33.817165, 34.022930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027887, 34.371742, 33.560764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181894, 34.243103, 33.906792>,  <31.274298, 34.165920, 34.114407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181894, 34.243103, 33.906792>,  <31.027887, 34.371742, 33.560764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181894, 34.243103, 33.906792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869603, -0.187532, -0.456752,
		0.309116, 0.928121, 0.207457,
		0.385016, -0.321595, 0.865066,
		31.297400, 34.146626, 34.166313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718493, 34.746429, 33.802734>,  <31.027887, 34.371742, 33.560764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718493, 34.746429, 33.802734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679386, 34.350548, 33.844543>,  <31.655922, 34.113018, 33.869629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679386, 34.350548, 33.844543>,  <31.718493, 34.746429, 33.802734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679386, 34.350548, 33.844543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846763, -0.137908, -0.513784,
		0.522909, 0.038273, 0.851529,
		-0.097768, -0.989705, 0.104522,
		31.650055, 34.053635, 33.875900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360027, 34.362812, 34.029579>,  <31.718493, 34.746429, 33.802734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360027, 34.362812, 34.029579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138828, 34.125629, 33.795452>,  <32.006107, 33.983318, 33.654976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138828, 34.125629, 33.795452>,  <32.360027, 34.362812, 34.029579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138828, 34.125629, 33.795452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789679, -0.148974, -0.595159,
		0.265709, -0.791332, 0.550630,
		-0.552997, -0.592960, -0.585314,
		31.972929, 33.947742, 33.619858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817123, 33.719666, 33.940605>,  <32.360027, 34.362812, 34.029579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817123, 33.719666, 33.940605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534950, 33.727669, 33.657207>,  <32.365646, 33.732471, 33.487167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534950, 33.727669, 33.657207>,  <32.817123, 33.719666, 33.940605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534950, 33.727669, 33.657207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686818, -0.227594, -0.690277,
		-0.175063, -0.973550, 0.146807,
		-0.705431, 0.020012, -0.708495,
		32.323322, 33.733673, 33.444660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734222, 33.055161, 33.572441>,  <32.817123, 33.719666, 33.940605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734222, 33.055161, 33.572441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696312, 33.404388, 33.381123>,  <32.673565, 33.613926, 33.266331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696312, 33.404388, 33.381123>,  <32.734222, 33.055161, 33.572441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696312, 33.404388, 33.381123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732394, -0.264264, -0.627506,
		-0.674253, -0.409776, -0.614384,
		-0.094777, 0.873068, -0.478298,
		32.667877, 33.666309, 33.237633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616917, 32.963825, 32.952953>,  <32.734222, 33.055161, 33.572441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616917, 32.963825, 32.952953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789986, 33.323765, 32.930794>,  <32.893826, 33.539730, 32.917496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789986, 33.323765, 32.930794>,  <32.616917, 32.963825, 32.952953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789986, 33.323765, 32.930794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670435, -0.362231, -0.647538,
		-0.602755, 0.243026, -0.760016,
		0.432670, 0.899848, -0.055403,
		32.919788, 33.593719, 32.914173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584579, 33.242283, 32.228237>,  <32.616917, 32.963825, 32.952953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584579, 33.242283, 32.228237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895283, 33.395294, 32.428368>,  <33.081703, 33.487099, 32.548447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895283, 33.395294, 32.428368>,  <32.584579, 33.242283, 32.228237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895283, 33.395294, 32.428368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628600, -0.519946, -0.578375,
		0.038900, 0.763761, -0.644326,
		0.776755, 0.382524, 0.500326,
		33.128311, 33.510052, 32.578465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120094, 33.116070, 31.886917>,  <32.584579, 33.242283, 32.228237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120094, 33.116070, 31.886917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350067, 33.285534, 32.166908>,  <33.488049, 33.387215, 32.334904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350067, 33.285534, 32.166908>,  <33.120094, 33.116070, 31.886917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350067, 33.285534, 32.166908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816248, -0.237888, -0.526448,
		-0.056520, 0.874025, -0.482583,
		0.574930, 0.423662, 0.699976,
		33.522545, 33.412632, 32.376900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841351, 33.145332, 31.170465>,  <33.120094, 33.116070, 31.886917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841351, 33.145332, 31.170465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528282, 33.126591, 30.922195>,  <32.340443, 33.115345, 30.773233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528282, 33.126591, 30.922195>,  <32.841351, 33.145332, 31.170465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528282, 33.126591, 30.922195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388041, 0.742939, -0.545405,
		0.486678, -0.667717, -0.563292,
		-0.782668, -0.046856, -0.620674,
		32.293484, 33.112534, 30.735992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060867, 33.124676, 30.391712>,  <32.841351, 33.145332, 31.170465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060867, 33.124676, 30.391712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702164, 33.292297, 30.448580>,  <32.486942, 33.392872, 30.482700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702164, 33.292297, 30.448580>,  <33.060867, 33.124676, 30.391712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702164, 33.292297, 30.448580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142852, 0.578224, -0.803275,
		-0.418822, -0.700037, -0.578391,
		-0.896762, 0.419054, 0.142171,
		32.433136, 33.418015, 30.491232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631428, 32.980679, 29.801540>,  <33.060867, 33.124676, 30.391712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631428, 32.980679, 29.801540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558773, 33.327675, 29.986786>,  <32.515179, 33.535873, 30.097933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558773, 33.327675, 29.986786>,  <32.631428, 32.980679, 29.801540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558773, 33.327675, 29.986786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381974, 0.496208, -0.779662,
		-0.906148, 0.035284, -0.421487,
		-0.181635, 0.867486, 0.463116,
		32.504284, 33.587921, 30.125721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174816, 33.554951, 29.401646>,  <32.631428, 32.980679, 29.801540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174816, 33.554951, 29.401646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475220, 33.737312, 29.592697>,  <32.655464, 33.846729, 29.707329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475220, 33.737312, 29.592697>,  <32.174816, 33.554951, 29.401646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475220, 33.737312, 29.592697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196432, 0.536351, -0.820818,
		-0.630391, 0.710267, 0.313253,
		0.751014, 0.455903, 0.477630,
		32.700523, 33.874084, 29.735987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073364, 34.253017, 29.438164>,  <32.174816, 33.554951, 29.401646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073364, 34.253017, 29.438164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454140, 34.131432, 29.423077>,  <32.682606, 34.058479, 29.414024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454140, 34.131432, 29.423077>,  <32.073364, 34.253017, 29.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454140, 34.131432, 29.423077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114597, 0.467646, -0.876456,
		0.284050, 0.830008, 0.480003,
		0.951937, -0.303964, -0.037718,
		32.739719, 34.040241, 29.411760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488029, 34.783905, 29.449705>,  <32.073364, 34.253017, 29.438164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488029, 34.783905, 29.449705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676689, 34.498398, 29.242599>,  <32.789886, 34.327091, 29.118336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676689, 34.498398, 29.242599>,  <32.488029, 34.783905, 29.449705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676689, 34.498398, 29.242599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085920, 0.621583, -0.778622,
		0.877591, 0.322750, 0.354496,
		0.471649, -0.713770, -0.517764,
		32.818184, 34.284267, 29.087271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146500, 35.449986, 29.801302>,  <32.488029, 34.783905, 29.449705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146500, 35.449986, 29.801302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508713, 35.354366, 29.941509>,  <32.726040, 35.296993, 30.025635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508713, 35.354366, 29.941509>,  <32.146500, 35.449986, 29.801302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508713, 35.354366, 29.941509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324639, -0.141522, -0.935190,
		0.273160, 0.960639, -0.050549,
		0.905535, -0.239047, 0.350519,
		32.780373, 35.282654, 30.046665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802975, 35.866180, 29.529381>,  <32.146500, 35.449986, 29.801302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802975, 35.866180, 29.529381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901505, 35.490562, 29.625307>,  <32.960621, 35.265190, 29.682863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901505, 35.490562, 29.625307>,  <32.802975, 35.866180, 29.529381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901505, 35.490562, 29.625307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345370, -0.146148, -0.927017,
		0.905563, 0.311170, 0.288320,
		0.246323, -0.939049, 0.239815,
		32.975403, 35.208847, 29.697252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545998, 35.719143, 29.301537>,  <32.802975, 35.866180, 29.529381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545998, 35.719143, 29.301537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346500, 35.375313, 29.346041>,  <33.226803, 35.169014, 29.372744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346500, 35.375313, 29.346041>,  <33.545998, 35.719143, 29.301537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346500, 35.375313, 29.346041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267686, -0.274847, -0.923473,
		0.824377, -0.430795, 0.367176,
		-0.498745, -0.859578, 0.111260,
		33.196877, 35.117439, 29.379419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010082, 35.017986, 29.223999>,  <33.545998, 35.719143, 29.301537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010082, 35.017986, 29.223999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624458, 35.009758, 29.118044>,  <33.393085, 35.004822, 29.054472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624458, 35.009758, 29.118044>,  <34.010082, 35.017986, 29.223999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624458, 35.009758, 29.118044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260687, -0.265676, -0.928148,
		-0.051283, -0.963843, 0.261489,
		-0.964060, -0.020568, -0.264886,
		33.335239, 35.003590, 29.038578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952099, 34.327408, 28.878109>,  <34.010082, 35.017986, 29.223999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952099, 34.327408, 28.878109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688877, 34.597530, 28.744888>,  <33.530945, 34.759605, 28.664955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688877, 34.597530, 28.744888>,  <33.952099, 34.327408, 28.878109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688877, 34.597530, 28.744888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148580, -0.317163, -0.936660,
		-0.738165, -0.665859, 0.108373,
		-0.658055, 0.675307, -0.333052,
		33.491459, 34.800121, 28.644972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564346, 33.992329, 28.416550>,  <33.952099, 34.327408, 28.878109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564346, 33.992329, 28.416550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559559, 34.384872, 28.339828>,  <33.556686, 34.620399, 28.293797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559559, 34.384872, 28.339828>,  <33.564346, 33.992329, 28.416550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559559, 34.384872, 28.339828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224790, -0.184266, -0.956825,
		-0.974334, -0.054565, -0.218395,
		-0.011966, 0.981361, -0.191802,
		33.555969, 34.679279, 28.282288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956211, 34.052414, 27.960964>,  <33.564346, 33.992329, 28.416550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956211, 34.052414, 27.960964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145630, 34.389606, 27.858879>,  <33.259281, 34.591923, 27.797628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145630, 34.389606, 27.858879>,  <32.956211, 34.052414, 27.960964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145630, 34.389606, 27.858879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143792, -0.359867, -0.921857,
		-0.868952, 0.399845, -0.291628,
		0.473547, 0.842982, -0.255213,
		33.287693, 34.642502, 27.782316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760880, 34.227463, 27.226116>,  <32.956211, 34.052414, 27.960964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760880, 34.227463, 27.226116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084755, 34.443512, 27.317919>,  <33.279079, 34.573143, 27.372999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084755, 34.443512, 27.317919>,  <32.760880, 34.227463, 27.226116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084755, 34.443512, 27.317919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336041, -0.106095, -0.935853,
		-0.481130, 0.834869, -0.267408,
		0.809685, 0.540127, 0.229505,
		33.327660, 34.605549, 27.386770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827953, 34.947586, 26.755135>,  <32.760880, 34.227463, 27.226116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827953, 34.947586, 26.755135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184151, 34.821377, 26.886259>,  <33.397869, 34.745651, 26.964933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184151, 34.821377, 26.886259>,  <32.827953, 34.947586, 26.755135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184151, 34.821377, 26.886259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370784, 0.085673, -0.924759,
		0.263702, 0.945041, 0.193284,
		0.890495, -0.315527, 0.327814,
		33.451298, 34.726719, 26.984604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381565, 35.292465, 26.322714>,  <32.827953, 34.947586, 26.755135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381565, 35.292465, 26.322714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590385, 34.985046, 26.470655>,  <33.715679, 34.800594, 26.559420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590385, 34.985046, 26.470655>,  <33.381565, 35.292465, 26.322714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590385, 34.985046, 26.470655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438578, -0.130022, -0.889238,
		0.731514, 0.626437, 0.269192,
		0.522051, -0.768551, 0.369854,
		33.747002, 34.754482, 26.581612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128189, 35.435760, 26.155832>,  <33.381565, 35.292465, 26.322714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128189, 35.435760, 26.155832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108952, 35.042194, 26.224659>,  <34.097408, 34.806057, 26.265955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108952, 35.042194, 26.224659>,  <34.128189, 35.435760, 26.155832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108952, 35.042194, 26.224659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634958, -0.163097, -0.755134,
		0.771048, 0.072934, 0.632587,
		-0.048098, -0.983911, 0.172066,
		34.094521, 34.747021, 26.276279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824154, 35.268253, 26.246918>,  <34.128189, 35.435760, 26.155832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824154, 35.268253, 26.246918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660206, 34.909286, 26.181614>,  <34.561836, 34.693909, 26.142431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660206, 34.909286, 26.181614>,  <34.824154, 35.268253, 26.246918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660206, 34.909286, 26.181614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711075, -0.202259, -0.673396,
		0.571295, -0.392096, 0.721029,
		-0.409870, -0.897414, -0.163260,
		34.537243, 34.640060, 26.132635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365814, 34.759102, 26.262411>,  <34.824154, 35.268253, 26.246918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365814, 34.759102, 26.262411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082142, 34.579655, 26.044859>,  <34.911938, 34.471989, 25.914328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082142, 34.579655, 26.044859>,  <35.365814, 34.759102, 26.262411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082142, 34.579655, 26.044859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672659, -0.199493, -0.712553,
		0.211162, -0.871176, 0.443242,
		-0.709183, -0.448615, -0.543879,
		34.869389, 34.445072, 25.881695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687714, 34.224174, 26.003708>,  <35.365814, 34.759102, 26.262411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687714, 34.224174, 26.003708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371445, 34.295902, 25.769552>,  <35.181683, 34.338940, 25.629059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371445, 34.295902, 25.769552>,  <35.687714, 34.224174, 26.003708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371445, 34.295902, 25.769552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551527, -0.206503, -0.808192,
		-0.265809, -0.961874, 0.064377,
		-0.790673, 0.179319, -0.585390,
		35.134243, 34.349697, 25.593935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705124, 33.771492, 25.482323>,  <35.687714, 34.224174, 26.003708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705124, 33.771492, 25.482323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440304, 34.024738, 25.321898>,  <35.281414, 34.176685, 25.225643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440304, 34.024738, 25.321898>,  <35.705124, 33.771492, 25.482323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440304, 34.024738, 25.321898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343339, -0.219467, -0.913210,
		-0.666192, -0.742289, -0.072078,
		-0.662047, 0.633121, -0.401063,
		35.241688, 34.214676, 25.201578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552017, 33.421650, 24.909594>,  <35.705124, 33.771492, 25.482323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552017, 33.421650, 24.909594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446533, 33.804104, 24.858574>,  <35.383244, 34.033577, 24.827961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446533, 33.804104, 24.858574>,  <35.552017, 33.421650, 24.909594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446533, 33.804104, 24.858574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185431, -0.079516, -0.979435,
		-0.946611, -0.281940, -0.156327,
		-0.263712, 0.956131, -0.127551,
		35.367420, 34.090942, 24.820309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196510, 33.401222, 24.257414>,  <35.552017, 33.421650, 24.909594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196510, 33.401222, 24.257414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286125, 33.789364, 24.293701>,  <35.339893, 34.022247, 24.315474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286125, 33.789364, 24.293701>,  <35.196510, 33.401222, 24.257414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286125, 33.789364, 24.293701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310823, 0.017082, -0.950314,
		-0.923687, 0.241101, -0.297780,
		0.224035, 0.970350, 0.090718,
		35.353336, 34.080467, 24.320917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779190, 33.875683, 23.858910>,  <35.196510, 33.401222, 24.257414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779190, 33.875683, 23.858910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133938, 34.059448, 23.878508>,  <35.346786, 34.169708, 23.890266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133938, 34.059448, 23.878508>,  <34.779190, 33.875683, 23.858910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133938, 34.059448, 23.878508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164162, -0.214216, -0.962893,
		-0.431872, 0.862003, -0.265400,
		0.886869, 0.459415, 0.048994,
		35.399998, 34.197273, 23.893206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909527, 34.052990, 23.216530>,  <34.779190, 33.875683, 23.858910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909527, 34.052990, 23.216530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277885, 34.116558, 23.358904>,  <35.498901, 34.154701, 23.444328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277885, 34.116558, 23.358904>,  <34.909527, 34.052990, 23.216530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277885, 34.116558, 23.358904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368703, -0.058764, -0.927688,
		-0.126514, 0.985541, -0.112711,
		0.920898, 0.158923, 0.355937,
		35.554153, 34.164234, 23.465685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117237, 34.534679, 22.710239>,  <34.909527, 34.052990, 23.216530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117237, 34.534679, 22.710239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432053, 34.376003, 22.899216>,  <35.620941, 34.280796, 23.012602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432053, 34.376003, 22.899216>,  <35.117237, 34.534679, 22.710239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432053, 34.376003, 22.899216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429395, -0.197583, -0.881238,
		0.442927, 0.896435, 0.014832,
		0.787042, -0.396693, 0.472439,
		35.668167, 34.256996, 23.040947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775272, 34.919239, 22.472105>,  <35.117237, 34.534679, 22.710239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775272, 34.919239, 22.472105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899036, 34.573902, 22.631559>,  <35.973293, 34.366699, 22.727232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899036, 34.573902, 22.631559>,  <35.775272, 34.919239, 22.472105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899036, 34.573902, 22.631559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660649, -0.106357, -0.743122,
		0.683965, 0.493287, 0.537457,
		0.309410, -0.863340, 0.398634,
		35.991859, 34.314899, 22.751150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485188, 34.986961, 22.527012>,  <35.775272, 34.919239, 22.472105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485188, 34.986961, 22.527012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386124, 34.601208, 22.489876>,  <36.326683, 34.369755, 22.467594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386124, 34.601208, 22.489876>,  <36.485188, 34.986961, 22.527012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386124, 34.601208, 22.489876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621266, -0.084552, -0.779024,
		0.743432, -0.250613, 0.620082,
		-0.247663, -0.964388, -0.092838,
		36.311825, 34.311890, 22.462025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999870, 34.658634, 22.256474>,  <36.485188, 34.986961, 22.527012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999870, 34.658634, 22.256474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730724, 34.377743, 22.163416>,  <36.569237, 34.209206, 22.107580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730724, 34.377743, 22.163416>,  <36.999870, 34.658634, 22.256474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730724, 34.377743, 22.163416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462136, -0.153446, -0.873433,
		0.577653, -0.695216, 0.427775,
		-0.672865, -0.702231, -0.232646,
		36.528866, 34.167072, 22.093622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483109, 34.237732, 21.875425>,  <36.999870, 34.658634, 22.256474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483109, 34.237732, 21.875425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114342, 34.113728, 21.782501>,  <36.893082, 34.039326, 21.726746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114342, 34.113728, 21.782501>,  <37.483109, 34.237732, 21.875425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114342, 34.113728, 21.782501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244834, -0.001531, -0.969564,
		0.300220, -0.950732, 0.077312,
		-0.921913, -0.310011, -0.232312,
		36.837769, 34.020725, 21.712807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513302, 33.539398, 21.424820>,  <37.483109, 34.237732, 21.875425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513302, 33.539398, 21.424820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152149, 33.705032, 21.378611>,  <36.935459, 33.804413, 21.350885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152149, 33.705032, 21.378611>,  <37.513302, 33.539398, 21.424820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152149, 33.705032, 21.378611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128590, 0.003713, -0.991691,
		-0.410212, -0.910232, -0.056599,
		-0.902879, 0.414082, -0.115524,
		36.881287, 33.829258, 21.343954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294189, 33.228176, 20.851377>,  <37.513302, 33.539398, 21.424820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294189, 33.228176, 20.851377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050430, 33.543816, 20.882261>,  <36.904175, 33.733200, 20.900791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050430, 33.543816, 20.882261>,  <37.294189, 33.228176, 20.851377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050430, 33.543816, 20.882261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143969, 0.205891, -0.967927,
		-0.779682, -0.578739, -0.239075,
		-0.609400, 0.789094, 0.077209,
		36.867611, 33.780544, 20.905424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869148, 33.134151, 20.333029>,  <37.294189, 33.228176, 20.851377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869148, 33.134151, 20.333029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888138, 33.523354, 20.423367>,  <36.899532, 33.756874, 20.477570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888138, 33.523354, 20.423367>,  <36.869148, 33.134151, 20.333029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888138, 33.523354, 20.423367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055327, 0.223190, -0.973204,
		-0.997339, 0.058694, -0.043239,
		0.047471, 0.973006, 0.225844,
		36.902378, 33.815254, 20.491119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359612, 33.409290, 19.801126>,  <36.869148, 33.134151, 20.333029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359612, 33.409290, 19.801126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578854, 33.700756, 19.965385>,  <36.710400, 33.875633, 20.063940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578854, 33.700756, 19.965385>,  <36.359612, 33.409290, 19.801126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578854, 33.700756, 19.965385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118417, 0.418415, -0.900503,
		-0.827984, 0.542199, 0.143050,
		0.548106, 0.728662, 0.410646,
		36.743286, 33.919353, 20.088579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998913, 33.985783, 19.579655>,  <36.359612, 33.409290, 19.801126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998913, 33.985783, 19.579655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375328, 34.079422, 19.677341>,  <36.601177, 34.135605, 19.735954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375328, 34.079422, 19.677341>,  <35.998913, 33.985783, 19.579655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375328, 34.079422, 19.677341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147374, 0.366116, -0.918825,
		-0.304506, 0.900643, 0.310030,
		0.941040, 0.234097, 0.244216,
		36.657639, 34.149651, 19.750607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987610, 34.721992, 19.402502>,  <35.998913, 33.985783, 19.579655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987610, 34.721992, 19.402502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366497, 34.593845, 19.407423>,  <36.593830, 34.516956, 19.410376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366497, 34.593845, 19.407423>,  <35.987610, 34.721992, 19.402502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366497, 34.593845, 19.407423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230074, 0.652527, -0.721993,
		0.223275, 0.686712, 0.691791,
		0.947214, -0.320366, 0.012302,
		36.650661, 34.497734, 19.411114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346466, 35.348305, 19.361401>,  <35.987610, 34.721992, 19.402502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346466, 35.348305, 19.361401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616234, 35.065254, 19.277088>,  <36.778095, 34.895424, 19.226500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616234, 35.065254, 19.277088>,  <36.346466, 35.348305, 19.361401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616234, 35.065254, 19.277088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423680, 0.604693, -0.674420,
		0.604693, 0.365538, 0.707622,
		0.674420, -0.707622, -0.210782,
		36.818562, 34.852966, 19.213854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048130, 35.744923, 19.320803>,  <36.346466, 35.348305, 19.361401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048130, 35.744923, 19.320803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051243, 35.408028, 19.105185>,  <37.053108, 35.205891, 18.975813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051243, 35.408028, 19.105185>,  <37.048130, 35.744923, 19.320803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051243, 35.408028, 19.105185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206660, 0.528779, -0.823216,
		0.978382, -0.104995, 0.178170,
		0.007779, -0.842240, -0.539046,
		37.053577, 35.155357, 18.943470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677841, 35.640854, 19.084208>,  <37.048130, 35.744923, 19.320803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677841, 35.640854, 19.084208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454445, 35.424942, 18.832260>,  <37.320408, 35.295395, 18.681091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454445, 35.424942, 18.832260>,  <37.677841, 35.640854, 19.084208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454445, 35.424942, 18.832260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477269, 0.411956, -0.776213,
		0.678460, -0.734120, 0.027547,
		-0.558486, -0.539777, -0.629869,
		37.286900, 35.263008, 18.643299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201550, 35.324440, 18.662582>,  <37.677841, 35.640854, 19.084208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201550, 35.324440, 18.662582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856628, 35.311047, 18.460466>,  <37.649677, 35.303013, 18.339197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856628, 35.311047, 18.460466>,  <38.201550, 35.324440, 18.662582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856628, 35.311047, 18.460466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463444, 0.349989, -0.814081,
		0.204098, -0.936156, -0.286281,
		-0.862301, -0.033478, -0.505287,
		37.597939, 35.301003, 18.308880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433308, 35.184254, 18.021847>,  <38.201550, 35.324440, 18.662582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433308, 35.184254, 18.021847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076111, 35.337749, 17.927773>,  <37.861794, 35.429848, 17.871328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076111, 35.337749, 17.927773>,  <38.433308, 35.184254, 18.021847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076111, 35.337749, 17.927773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366695, 0.317332, -0.874549,
		-0.260968, -0.867205, -0.424090,
		-0.892990, 0.383740, -0.235186,
		37.808212, 35.452873, 17.857216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177280, 34.970200, 17.340279>,  <38.433308, 35.184254, 18.021847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177280, 34.970200, 17.340279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964336, 35.298733, 17.422256>,  <37.836571, 35.495853, 17.471443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964336, 35.298733, 17.422256>,  <38.177280, 34.970200, 17.340279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964336, 35.298733, 17.422256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232073, 0.374432, -0.897743,
		-0.814083, -0.430364, -0.389943,
		-0.532363, 0.821333, 0.204943,
		37.804626, 35.545132, 17.483740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681614, 35.191628, 16.728922>,  <38.177280, 34.970200, 17.340279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681614, 35.191628, 16.728922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738354, 35.514301, 16.958403>,  <37.772400, 35.707905, 17.096090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738354, 35.514301, 16.958403>,  <37.681614, 35.191628, 16.728922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738354, 35.514301, 16.958403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078272, 0.568607, -0.818877,
		-0.986789, 0.161064, 0.017517,
		0.141852, 0.806687, 0.573702,
		37.780910, 35.756306, 17.130514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275032, 35.778111, 16.464754>,  <37.681614, 35.191628, 16.728922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275032, 35.778111, 16.464754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547455, 35.948032, 16.703320>,  <37.710907, 36.049984, 16.846458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547455, 35.948032, 16.703320>,  <37.275032, 35.778111, 16.464754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547455, 35.948032, 16.703320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220080, 0.658097, -0.720051,
		-0.698376, 0.621652, 0.354709,
		0.681055, 0.424802, 0.596412,
		37.751770, 36.075474, 16.882244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049084, 36.436329, 16.447884>,  <37.275032, 35.778111, 16.464754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049084, 36.436329, 16.447884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436195, 36.438564, 16.548580>,  <37.668461, 36.439907, 16.608999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436195, 36.438564, 16.548580>,  <37.049084, 36.436329, 16.447884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436195, 36.438564, 16.548580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157708, 0.765926, -0.623285,
		-0.196301, 0.642904, 0.740365,
		0.967778, 0.005590, 0.251743,
		37.726528, 36.440243, 16.624104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208672, 37.086933, 16.388920>,  <37.049084, 36.436329, 16.447884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208672, 37.086933, 16.388920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558281, 36.892929, 16.400501>,  <37.768047, 36.776527, 16.407450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558281, 36.892929, 16.400501>,  <37.208672, 37.086933, 16.388920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558281, 36.892929, 16.400501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373964, 0.633474, -0.677394,
		0.310203, 0.602888, 0.735051,
		0.874028, -0.485012, 0.028953,
		37.820488, 36.747425, 16.409187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634720, 37.580482, 16.438047>,  <37.208672, 37.086933, 16.388920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634720, 37.580482, 16.438047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875973, 37.291542, 16.302731>,  <38.020725, 37.118176, 16.221540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875973, 37.291542, 16.302731>,  <37.634720, 37.580482, 16.438047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875973, 37.291542, 16.302731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275355, 0.586596, -0.761633,
		0.748609, 0.366212, 0.552697,
		0.603129, -0.722353, -0.338293,
		38.056911, 37.074837, 16.201242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236767, 37.893349, 16.296677>,  <37.634720, 37.580482, 16.438047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236767, 37.893349, 16.296677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244808, 37.560440, 16.075075>,  <38.249634, 37.360695, 15.942114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244808, 37.560440, 16.075075>,  <38.236767, 37.893349, 16.296677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244808, 37.560440, 16.075075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368003, 0.521377, -0.769896,
		0.929607, -0.188396, 0.316761,
		0.020107, -0.832270, -0.554006,
		38.250839, 37.310760, 15.908874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863449, 37.878647, 15.915465>,  <38.236767, 37.893349, 16.296677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863449, 37.878647, 15.915465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608513, 37.654770, 15.703599>,  <38.455551, 37.520443, 15.576479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608513, 37.654770, 15.703599>,  <38.863449, 37.878647, 15.915465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608513, 37.654770, 15.703599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296608, 0.456215, -0.838983,
		0.711214, -0.691818, -0.124754,
		-0.637337, -0.559693, -0.529665,
		38.417313, 37.486862, 15.544700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161583, 37.899025, 15.293757>,  <38.863449, 37.878647, 15.915465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161583, 37.899025, 15.293757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824371, 37.710110, 15.190801>,  <38.622044, 37.596760, 15.129026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824371, 37.710110, 15.190801>,  <39.161583, 37.899025, 15.293757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824371, 37.710110, 15.190801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261373, 0.058531, -0.963462,
		0.470094, -0.879501, 0.074100,
		-0.843028, -0.472285, -0.257393,
		38.571465, 37.568424, 15.113583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266907, 37.401997, 14.692029>,  <39.161583, 37.899025, 15.293757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266907, 37.401997, 14.692029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875385, 37.483433, 14.683155>,  <38.640472, 37.532295, 14.677831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875385, 37.483433, 14.683155>,  <39.266907, 37.401997, 14.692029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875385, 37.483433, 14.683155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052507, 0.144766, -0.988072,
		-0.197948, -0.968295, -0.152387,
		-0.978805, 0.203588, -0.022186,
		38.581745, 37.544510, 14.676499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080482, 37.082581, 14.013714>,  <39.266907, 37.401997, 14.692029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080482, 37.082581, 14.013714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790878, 37.341187, 14.109910>,  <38.617115, 37.496349, 14.167627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790878, 37.341187, 14.109910>,  <39.080482, 37.082581, 14.013714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790878, 37.341187, 14.109910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104495, 0.241822, -0.964678,
		-0.681831, -0.723564, -0.107523,
		-0.724007, 0.646512, 0.240490,
		38.573677, 37.535141, 14.182057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620300, 36.940372, 13.536181>,  <39.080482, 37.082581, 14.013714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620300, 36.940372, 13.536181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537727, 37.315495, 13.647834>,  <38.488182, 37.540565, 13.714825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537727, 37.315495, 13.647834>,  <38.620300, 36.940372, 13.536181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537727, 37.315495, 13.647834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030386, 0.278993, -0.959812,
		-0.977989, -0.206619, -0.029098,
		-0.206434, 0.937801, 0.279130,
		38.475796, 37.596836, 13.731573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966908, 37.194763, 13.117418>,  <38.620300, 36.940372, 13.536181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966908, 37.194763, 13.117418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198959, 37.495838, 13.241948>,  <38.338188, 37.676483, 13.316666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198959, 37.495838, 13.241948>,  <37.966908, 37.194763, 13.117418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198959, 37.495838, 13.241948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200048, 0.502169, -0.841313,
		-0.789579, 0.425787, 0.441893,
		0.580125, 0.752683, 0.311324,
		38.372997, 37.721642, 13.335345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539951, 37.710327, 13.284243>,  <37.966908, 37.194763, 13.117418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539951, 37.710327, 13.284243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904850, 37.837589, 13.181031>,  <38.123791, 37.913948, 13.119104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904850, 37.837589, 13.181031>,  <37.539951, 37.710327, 13.284243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904850, 37.837589, 13.181031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379961, 0.421812, -0.823228,
		-0.153076, 0.849029, 0.505685,
		0.912249, 0.318157, -0.258028,
		38.178524, 37.933037, 13.103622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769279, 38.372822, 13.117193>,  <37.539951, 37.710327, 13.284243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769279, 38.372822, 13.117193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056549, 38.193844, 12.904020>,  <38.228912, 38.086456, 12.776116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056549, 38.193844, 12.904020>,  <37.769279, 38.372822, 13.117193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056549, 38.193844, 12.904020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142714, 0.654871, -0.742143,
		0.681070, 0.609046, 0.406456,
		0.718176, -0.447444, -0.532932,
		38.272003, 38.059612, 12.744141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197227, 38.890503, 12.883801>,  <37.769279, 38.372822, 13.117193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197227, 38.890503, 12.883801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242691, 38.592564, 12.620809>,  <38.269970, 38.413799, 12.463013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242691, 38.592564, 12.620809>,  <38.197227, 38.890503, 12.883801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242691, 38.592564, 12.620809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042020, 0.657574, -0.752217,
		0.992631, 0.113125, 0.043443,
		0.113662, -0.744848, -0.657482,
		38.276791, 38.369110, 12.423564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767708, 39.042751, 12.478607>,  <38.197227, 38.890503, 12.883801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767708, 39.042751, 12.478607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490406, 38.837063, 12.276627>,  <38.324024, 38.713650, 12.155438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490406, 38.837063, 12.276627>,  <38.767708, 39.042751, 12.478607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490406, 38.837063, 12.276627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244513, 0.826908, -0.506396,
		0.677948, -0.227593, -0.698991,
		-0.693253, -0.514223, -0.504951,
		38.282429, 38.682796, 12.125141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106632, 39.460789, 12.960155>,  <38.767708, 39.042751, 12.478607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106632, 39.460789, 12.960155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045429, 39.819038, 13.127221>,  <39.008709, 40.033989, 13.227461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045429, 39.819038, 13.127221>,  <39.106632, 39.460789, 12.960155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045429, 39.819038, 13.127221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298855, 0.360918, -0.883416,
		-0.941953, -0.259988, 0.212440,
		-0.153004, 0.895625, 0.417667,
		38.999527, 40.087727, 13.252522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442337, 39.723812, 12.603758>,  <39.106632, 39.460789, 12.960155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442337, 39.723812, 12.603758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729279, 39.978153, 12.717665>,  <38.901443, 40.130756, 12.786009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.729279, 39.978153, 12.717665>,  <38.442337, 39.723812, 12.603758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729279, 39.978153, 12.717665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024170, 0.385773, -0.922277,
		-0.696289, 0.668483, 0.261368,
		0.717355, 0.635854, 0.284766,
		38.944485, 40.168911, 12.803095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119640, 40.365852, 12.634911>,  <38.442337, 39.723812, 12.603758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119640, 40.365852, 12.634911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511871, 40.414139, 12.573072>,  <38.747208, 40.443111, 12.535970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511871, 40.414139, 12.573072>,  <38.119640, 40.365852, 12.634911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511871, 40.414139, 12.573072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194192, 0.486524, -0.851812,
		-0.027615, 0.865287, 0.500515,
		0.980575, 0.120719, -0.154596,
		38.806046, 40.450356, 12.526693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230831, 40.749950, 13.238945>,  <38.119640, 40.365852, 12.634911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230831, 40.749950, 13.238945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865936, 40.595829, 13.183283>,  <37.646999, 40.503357, 13.149885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865936, 40.595829, 13.183283>,  <38.230831, 40.749950, 13.238945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865936, 40.595829, 13.183283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063222, -0.203204, 0.977093,
		-0.404755, 0.900138, 0.161010,
		-0.912237, -0.385304, -0.139157,
		37.592266, 40.480236, 13.141536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857571, 41.036976, 13.734895>,  <38.230831, 40.749950, 13.238945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857571, 41.036976, 13.734895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650509, 40.713894, 13.622010>,  <37.526272, 40.520042, 13.554279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650509, 40.713894, 13.622010>,  <37.857571, 41.036976, 13.734895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650509, 40.713894, 13.622010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249979, -0.172672, 0.952730,
		-0.818256, 0.563733, -0.112525,
		-0.517655, -0.807707, -0.282211,
		37.495213, 40.471581, 13.537347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140572, 41.059872, 13.967885>,  <37.857571, 41.036976, 13.734895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140572, 41.059872, 13.967885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291595, 40.689983, 13.948524>,  <37.382210, 40.468052, 13.936907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291595, 40.689983, 13.948524>,  <37.140572, 41.059872, 13.967885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291595, 40.689983, 13.948524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221082, -0.140781, 0.965041,
		-0.899208, -0.353655, -0.257592,
		0.377555, -0.924721, -0.048404,
		37.404861, 40.412567, 13.934002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811447, 40.742168, 14.439423>,  <37.140572, 41.059872, 13.967885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811447, 40.742168, 14.439423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141212, 40.517914, 14.408376>,  <37.339073, 40.383362, 14.389748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141212, 40.517914, 14.408376>,  <36.811447, 40.742168, 14.439423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141212, 40.517914, 14.408376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080319, -0.251638, 0.964483,
		-0.560256, -0.788901, -0.252484,
		0.824416, -0.560636, -0.077618,
		37.388538, 40.349724, 14.385090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658195, 40.061249, 14.655433>,  <36.811447, 40.742168, 14.439423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658195, 40.061249, 14.655433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051281, 40.108753, 14.712254>,  <37.287132, 40.137257, 14.746346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051281, 40.108753, 14.712254>,  <36.658195, 40.061249, 14.655433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051281, 40.108753, 14.712254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111774, -0.231133, 0.966480,
		0.147614, -0.965646, -0.213862,
		0.982709, 0.118762, 0.142053,
		37.346092, 40.144382, 14.754869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852058, 39.501450, 15.037028>,  <36.658195, 40.061249, 14.655433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852058, 39.501450, 15.037028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144669, 39.770985, 15.078623>,  <37.320236, 39.932705, 15.103580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144669, 39.770985, 15.078623>,  <36.852058, 39.501450, 15.037028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144669, 39.770985, 15.078623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067272, -0.223103, 0.972471,
		0.678487, -0.704392, -0.208536,
		0.731526, 0.673837, 0.103987,
		37.364128, 39.973137, 15.109818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294441, 39.171936, 15.441950>,  <36.852058, 39.501450, 15.037028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294441, 39.171936, 15.441950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370308, 39.563110, 15.476966>,  <37.415829, 39.797817, 15.497975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370308, 39.563110, 15.476966>,  <37.294441, 39.171936, 15.441950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370308, 39.563110, 15.476966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044992, -0.097722, 0.994196,
		0.980817, -0.184631, -0.062534,
		0.189670, 0.977938, 0.087540,
		37.427208, 39.856491, 15.503228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866680, 39.179253, 15.871972>,  <37.294441, 39.171936, 15.441950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866680, 39.179253, 15.871972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712440, 39.548191, 15.881679>,  <37.619896, 39.769554, 15.887503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712440, 39.548191, 15.881679>,  <37.866680, 39.179253, 15.871972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712440, 39.548191, 15.881679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029328, -0.038540, 0.998827,
		0.922199, 0.384437, 0.041912,
		-0.385601, 0.922346, 0.024267,
		37.596760, 39.824894, 15.888959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106441, 39.416134, 16.448988>,  <37.866680, 39.179253, 15.871972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106441, 39.416134, 16.448988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796726, 39.656891, 16.370813>,  <37.610897, 39.801346, 16.323910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796726, 39.656891, 16.370813>,  <38.106441, 39.416134, 16.448988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796726, 39.656891, 16.370813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212642, 0.043413, 0.976165,
		0.596032, 0.797395, 0.094373,
		-0.774293, 0.601894, -0.195435,
		37.564438, 39.837460, 16.312183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146370, 39.817688, 17.019135>,  <38.106441, 39.416134, 16.448988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146370, 39.817688, 17.019135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787273, 39.901363, 16.864059>,  <37.571815, 39.951569, 16.771015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787273, 39.901363, 16.864059>,  <38.146370, 39.817688, 17.019135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787273, 39.901363, 16.864059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392278, 0.020830, 0.919611,
		0.200444, 0.977654, 0.063358,
		-0.897742, 0.209184, -0.387687,
		37.517952, 39.964119, 16.747753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747501, 40.371845, 17.422222>,  <38.146370, 39.817688, 17.019135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747501, 40.371845, 17.422222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485817, 40.143021, 17.224333>,  <37.328808, 40.005726, 17.105598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485817, 40.143021, 17.224333>,  <37.747501, 40.371845, 17.422222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485817, 40.143021, 17.224333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450329, -0.230896, 0.862491,
		-0.607631, 0.787038, -0.106563,
		-0.654208, -0.572065, -0.494725,
		37.289555, 39.971401, 17.075914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166786, 40.592361, 17.718245>,  <37.747501, 40.371845, 17.422222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166786, 40.592361, 17.718245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083702, 40.230473, 17.569468>,  <37.033852, 40.013340, 17.480202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.083702, 40.230473, 17.569468>,  <37.166786, 40.592361, 17.718245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083702, 40.230473, 17.569468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348400, -0.286879, 0.892366,
		-0.914044, 0.314934, -0.255618,
		-0.207706, -0.904719, -0.371943,
		37.021389, 39.959057, 17.457884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471405, 40.345345, 18.033609>,  <37.166786, 40.592361, 17.718245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471405, 40.345345, 18.033609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614399, 39.990292, 17.917459>,  <36.700195, 39.777260, 17.847769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614399, 39.990292, 17.917459>,  <36.471405, 40.345345, 18.033609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614399, 39.990292, 17.917459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302523, -0.404218, 0.863184,
		-0.883564, -0.220729, -0.413030,
		0.357484, -0.887630, -0.290377,
		36.721645, 39.724003, 17.830347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897655, 39.870895, 18.032692>,  <36.471405, 40.345345, 18.033609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897655, 39.870895, 18.032692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228271, 39.648941, 18.070486>,  <36.426640, 39.515766, 18.093163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228271, 39.648941, 18.070486>,  <35.897655, 39.870895, 18.032692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228271, 39.648941, 18.070486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394540, -0.451408, 0.800355,
		-0.401455, -0.698807, -0.592033,
		0.826542, -0.554887, 0.094487,
		36.476234, 39.482475, 18.098831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686714, 39.188564, 18.312422>,  <35.897655, 39.870895, 18.032692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686714, 39.188564, 18.312422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078762, 39.192600, 18.391678>,  <36.313992, 39.195023, 18.439232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078762, 39.192600, 18.391678>,  <35.686714, 39.188564, 18.312422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078762, 39.192600, 18.391678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153534, -0.593964, 0.789705,
		0.125657, -0.804428, -0.580608,
		0.980121, 0.010089, 0.198143,
		36.372799, 39.195625, 18.451120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900055, 38.509727, 18.209534>,  <35.686714, 39.188564, 18.312422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900055, 38.509727, 18.209534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144356, 38.705391, 18.458597>,  <36.290936, 38.822788, 18.608036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144356, 38.705391, 18.458597>,  <35.900055, 38.509727, 18.209534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144356, 38.705391, 18.458597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244758, -0.631228, 0.735965,
		0.753044, -0.601894, -0.265799,
		0.610753, 0.489158, 0.622660,
		36.327583, 38.852139, 18.645395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187561, 37.965714, 18.449879>,  <35.900055, 38.509727, 18.209534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187561, 37.965714, 18.449879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209080, 38.273876, 18.703989>,  <36.221992, 38.458775, 18.856455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209080, 38.273876, 18.703989>,  <36.187561, 37.965714, 18.449879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209080, 38.273876, 18.703989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320487, -0.589215, 0.741696,
		0.945724, -0.243500, 0.215207,
		0.053800, 0.770411, 0.635274,
		36.225220, 38.505001, 18.894571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484715, 37.634693, 19.088326>,  <36.187561, 37.965714, 18.449879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484715, 37.634693, 19.088326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351101, 37.994148, 19.202080>,  <36.270931, 38.209820, 19.270332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351101, 37.994148, 19.202080>,  <36.484715, 37.634693, 19.088326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351101, 37.994148, 19.202080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528616, -0.428404, 0.732827,
		0.780376, 0.094458, 0.618135,
		-0.334033, 0.898637, 0.284384,
		36.250893, 38.263741, 19.287395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619106, 37.625881, 19.866806>,  <36.484715, 37.634693, 19.088326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619106, 37.625881, 19.866806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367496, 37.931278, 19.808285>,  <36.216530, 38.114517, 19.773172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367496, 37.931278, 19.808285>,  <36.619106, 37.625881, 19.866806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367496, 37.931278, 19.808285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483957, -0.237319, 0.842297,
		0.608369, 0.600630, 0.518778,
		-0.629025, 0.763494, -0.146301,
		36.178787, 38.160328, 19.764395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610458, 38.131409, 20.490467>,  <36.619106, 37.625881, 19.866806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610458, 38.131409, 20.490467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268620, 38.184525, 20.289654>,  <36.063519, 38.216393, 20.169167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268620, 38.184525, 20.289654>,  <36.610458, 38.131409, 20.490467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268620, 38.184525, 20.289654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478104, 0.176164, 0.860455,
		0.202696, 0.975364, -0.087063,
		-0.854594, 0.132786, -0.502033,
		36.012241, 38.224361, 20.139044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317509, 38.714973, 20.805777>,  <36.610458, 38.131409, 20.490467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317509, 38.714973, 20.805777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042595, 38.499641, 20.610701>,  <35.877647, 38.370441, 20.493656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042595, 38.499641, 20.610701>,  <36.317509, 38.714973, 20.805777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042595, 38.499641, 20.610701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579794, 0.002107, 0.814761,
		-0.437584, 0.842730, -0.313569,
		-0.687284, -0.538332, -0.487688,
		35.836411, 38.338142, 20.464394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670189, 39.090878, 20.905735>,  <36.317509, 38.714973, 20.805777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670189, 39.090878, 20.905735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562271, 38.720501, 20.800028>,  <35.497520, 38.498276, 20.736605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562271, 38.720501, 20.800028>,  <35.670189, 39.090878, 20.905735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562271, 38.720501, 20.800028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521066, -0.090400, 0.848715,
		-0.809753, 0.366680, -0.458089,
		-0.269796, -0.925944, -0.264266,
		35.481331, 38.442719, 20.720747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980389, 39.068855, 20.954983>,  <35.670189, 39.090878, 20.905735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980389, 39.068855, 20.954983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113159, 38.693909, 20.997252>,  <35.192822, 38.468941, 21.022614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113159, 38.693909, 20.997252>,  <34.980389, 39.068855, 20.954983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113159, 38.693909, 20.997252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474856, -0.069246, 0.877335,
		-0.815068, -0.341390, -0.468099,
		0.331928, -0.937367, 0.105671,
		35.212738, 38.412697, 21.028954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521809, 38.706898, 21.360157>,  <34.980389, 39.068855, 20.954983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521809, 38.706898, 21.360157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777687, 38.399460, 21.363052>,  <34.931213, 38.214996, 21.364790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777687, 38.399460, 21.363052>,  <34.521809, 38.706898, 21.360157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777687, 38.399460, 21.363052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303403, -0.243846, 0.921133,
		-0.706214, -0.591439, -0.389181,
		0.639694, -0.768596, 0.007236,
		34.969597, 38.168880, 21.365223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205986, 38.188728, 21.545847>,  <34.521809, 38.706898, 21.360157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205986, 38.188728, 21.545847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575466, 38.062237, 21.632357>,  <34.797153, 37.986343, 21.684263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575466, 38.062237, 21.632357>,  <34.205986, 38.188728, 21.545847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575466, 38.062237, 21.632357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273700, -0.149684, 0.950096,
		-0.268074, -0.936800, -0.224815,
		0.923701, -0.316228, 0.216276,
		34.852577, 37.967369, 21.697239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161785, 37.469837, 21.710634>,  <34.205986, 38.188728, 21.545847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161785, 37.469837, 21.710634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485920, 37.618309, 21.891994>,  <34.680401, 37.707394, 22.000811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485920, 37.618309, 21.891994>,  <34.161785, 37.469837, 21.710634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485920, 37.618309, 21.891994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268107, -0.453155, 0.850158,
		0.521025, -0.810477, -0.267693,
		0.810340, 0.371184, 0.453400,
		34.729023, 37.729664, 22.028015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608089, 36.894363, 22.092903>,  <34.161785, 37.469837, 21.710634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608089, 36.894363, 22.092903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700890, 37.237968, 22.275450>,  <34.756569, 37.444134, 22.384977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700890, 37.237968, 22.275450>,  <34.608089, 36.894363, 22.092903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700890, 37.237968, 22.275450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199266, -0.417248, 0.886677,
		0.952088, -0.296644, 0.074373,
		0.231996, 0.859015, 0.456368,
		34.770489, 37.495674, 22.412361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679424, 36.693485, 22.766930>,  <34.608089, 36.894363, 22.092903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679424, 36.693485, 22.766930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744568, 37.083736, 22.825766>,  <34.783653, 37.317886, 22.861067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744568, 37.083736, 22.825766>,  <34.679424, 36.693485, 22.766930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744568, 37.083736, 22.825766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201247, -0.113100, 0.972989,
		0.965907, -0.188062, 0.177922,
		0.162859, 0.975623, 0.147091,
		34.793427, 37.376423, 22.869892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197220, 36.686905, 23.232992>,  <34.679424, 36.693485, 22.766930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197220, 36.686905, 23.232992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006279, 37.036240, 23.271816>,  <34.891712, 37.245838, 23.295111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006279, 37.036240, 23.271816>,  <35.197220, 36.686905, 23.232992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006279, 37.036240, 23.271816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015490, -0.118805, 0.992797,
		0.878574, 0.472413, 0.070240,
		-0.477355, 0.873333, 0.097061,
		34.863071, 37.298241, 23.300934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639126, 37.126610, 23.580790>,  <35.197220, 36.686905, 23.232992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639126, 37.126610, 23.580790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264992, 37.245632, 23.657331>,  <35.040512, 37.317047, 23.703257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264992, 37.245632, 23.657331>,  <35.639126, 37.126610, 23.580790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264992, 37.245632, 23.657331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173352, -0.086015, 0.981097,
		0.308392, 0.950821, 0.028870,
		-0.935331, 0.297557, 0.191353,
		34.984394, 37.334900, 23.714737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666668, 37.371807, 24.314259>,  <35.639126, 37.126610, 23.580790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666668, 37.371807, 24.314259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277985, 37.421143, 24.233698>,  <35.044773, 37.450745, 24.185362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277985, 37.421143, 24.233698>,  <35.666668, 37.371807, 24.314259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277985, 37.421143, 24.233698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193230, 0.075103, 0.978275,
		0.135784, 0.989519, -0.049146,
		-0.971713, 0.123337, -0.201402,
		34.986469, 37.458145, 24.173277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358540, 37.920158, 24.729561>,  <35.666668, 37.371807, 24.314259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358540, 37.920158, 24.729561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046494, 37.678646, 24.663996>,  <34.859264, 37.533737, 24.624657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046494, 37.678646, 24.663996>,  <35.358540, 37.920158, 24.729561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046494, 37.678646, 24.663996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257487, 0.071071, 0.963665,
		-0.570191, 0.793977, -0.210909,
		-0.780117, -0.603779, -0.163915,
		34.812458, 37.497513, 24.614820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921654, 38.178173, 25.092779>,  <35.358540, 37.920158, 24.729561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921654, 38.178173, 25.092779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783192, 37.804058, 25.063330>,  <34.700115, 37.579590, 25.045660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783192, 37.804058, 25.063330>,  <34.921654, 38.178173, 25.092779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783192, 37.804058, 25.063330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264333, 0.021933, 0.964182,
		-0.900169, 0.353217, -0.254819,
		-0.346155, -0.935284, -0.073623,
		34.679344, 37.523472, 25.041243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192474, 38.127598, 25.310806>,  <34.921654, 38.178173, 25.092779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192474, 38.127598, 25.310806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271862, 37.735916, 25.327616>,  <34.319492, 37.500908, 25.337702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271862, 37.735916, 25.327616>,  <34.192474, 38.127598, 25.310806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271862, 37.735916, 25.327616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386611, -0.038815, 0.921426,
		-0.900635, -0.199117, -0.386275,
		0.198465, -0.979207, 0.042023,
		34.331402, 37.442154, 25.340223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533859, 37.802242, 25.492661>,  <34.192474, 38.127598, 25.310806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533859, 37.802242, 25.492661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840839, 37.576698, 25.614700>,  <34.025028, 37.441372, 25.687923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840839, 37.576698, 25.614700>,  <33.533859, 37.802242, 25.492661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840839, 37.576698, 25.614700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430145, -0.099986, 0.897206,
		-0.475395, -0.819794, -0.319276,
		0.767447, -0.563862, 0.305098,
		34.071075, 37.407539, 25.706230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187378, 37.312523, 25.892397>,  <33.533859, 37.802242, 25.492661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187378, 37.312523, 25.892397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564705, 37.288780, 26.023008>,  <33.791103, 37.274536, 26.101376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564705, 37.288780, 26.023008>,  <33.187378, 37.312523, 25.892397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564705, 37.288780, 26.023008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331373, -0.114048, 0.936582,
		-0.018349, -0.991701, -0.127252,
		0.943322, -0.059353, 0.326530,
		33.847702, 37.270973, 26.120968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143795, 36.867298, 26.500008>,  <33.187378, 37.312523, 25.892397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143795, 36.867298, 26.500008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487167, 37.072212, 26.510296>,  <33.693192, 37.195160, 26.516470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487167, 37.072212, 26.510296>,  <33.143795, 36.867298, 26.500008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487167, 37.072212, 26.510296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109673, 0.134328, 0.984849,
		0.501069, -0.848245, 0.171495,
		0.858430, 0.512285, 0.025722,
		33.744698, 37.225899, 26.518013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549931, 36.447906, 26.913151>,  <33.143795, 36.867298, 26.500008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549931, 36.447906, 26.913151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646439, 36.835907, 26.901266>,  <33.704342, 37.068707, 26.894135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646439, 36.835907, 26.901266>,  <33.549931, 36.447906, 26.913151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646439, 36.835907, 26.901266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019721, 0.035512, 0.999175,
		0.970258, -0.240485, 0.027697,
		0.241270, 0.970003, -0.029713,
		33.718819, 37.126907, 26.892353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905231, 36.522282, 27.516214>,  <33.549931, 36.447906, 26.913151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905231, 36.522282, 27.516214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820091, 36.900597, 27.418091>,  <33.769009, 37.127586, 27.359217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820091, 36.900597, 27.418091>,  <33.905231, 36.522282, 27.516214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820091, 36.900597, 27.418091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093962, 0.269712, 0.958346,
		0.972557, 0.180932, -0.146276,
		-0.212848, 0.945790, -0.245309,
		33.756237, 37.184334, 27.344498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468029, 36.939434, 27.785885>,  <33.905231, 36.522282, 27.516214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468029, 36.939434, 27.785885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135231, 37.152508, 27.723864>,  <33.935555, 37.280350, 27.686651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135231, 37.152508, 27.723864>,  <34.468029, 36.939434, 27.785885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135231, 37.152508, 27.723864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021042, 0.248982, 0.968279,
		0.554391, 0.808862, -0.195943,
		-0.831990, 0.532682, -0.155053,
		33.885635, 37.312313, 27.677347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604527, 37.601223, 28.051636>,  <34.468029, 36.939434, 27.785885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604527, 37.601223, 28.051636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207291, 37.554276, 28.051315>,  <33.968948, 37.526108, 28.051123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207291, 37.554276, 28.051315>,  <34.604527, 37.601223, 28.051636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207291, 37.554276, 28.051315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053678, 0.448114, 0.892363,
		-0.104375, 0.886239, -0.451317,
		-0.993088, -0.117366, -0.000800,
		33.909363, 37.519066, 28.051075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358994, 37.782124, 28.094858>,  <34.604527, 37.601223, 28.051636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358994, 37.782124, 28.094858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704205, 37.757278, 28.295389>,  <35.911331, 37.742371, 28.415709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704205, 37.757278, 28.295389>,  <35.358994, 37.782124, 28.094858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704205, 37.757278, 28.295389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394114, 0.703600, -0.591287,
		-0.316009, 0.707876, 0.631704,
		0.863025, -0.062112, 0.501328,
		35.963112, 37.738644, 28.445787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489563, 38.513420, 28.182615>,  <35.358994, 37.782124, 28.094858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489563, 38.513420, 28.182615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840771, 38.333263, 28.247404>,  <36.051495, 38.225170, 28.286278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840771, 38.333263, 28.247404>,  <35.489563, 38.513420, 28.182615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840771, 38.333263, 28.247404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476532, 0.790923, -0.383872,
		0.044784, 0.414231, 0.909069,
		0.878016, -0.450392, 0.161974,
		36.104176, 38.198147, 28.295996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895462, 38.960632, 28.519424>,  <35.489563, 38.513420, 28.182615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895462, 38.960632, 28.519424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153809, 38.709064, 28.346304>,  <36.308819, 38.558125, 28.242432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.153809, 38.709064, 28.346304>,  <35.895462, 38.960632, 28.519424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153809, 38.709064, 28.346304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495270, 0.776584, -0.389390,
		0.580999, 0.037143, 0.813056,
		0.645870, -0.628917, -0.432799,
		36.347569, 38.520390, 28.216465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601002, 39.283176, 28.523790>,  <35.895462, 38.960632, 28.519424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601002, 39.283176, 28.523790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626583, 38.997597, 28.244881>,  <36.641933, 38.826248, 28.077534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626583, 38.997597, 28.244881>,  <36.601002, 39.283176, 28.523790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626583, 38.997597, 28.244881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643181, 0.563720, -0.518206,
		0.763039, -0.415334, 0.495247,
		0.063953, -0.713945, -0.697275,
		36.645767, 38.783413, 28.035698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247505, 39.362183, 28.209465>,  <36.601002, 39.283176, 28.523790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247505, 39.362183, 28.209465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072124, 39.123108, 27.940979>,  <36.966896, 38.979664, 27.779886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072124, 39.123108, 27.940979>,  <37.247505, 39.362183, 28.209465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072124, 39.123108, 27.940979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569103, 0.393397, -0.722053,
		0.695613, -0.698580, 0.167656,
		-0.438456, -0.597683, -0.671216,
		36.940586, 38.943802, 27.739614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685749, 39.366272, 27.657272>,  <37.247505, 39.362183, 28.209465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685749, 39.366272, 27.657272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342339, 39.246960, 27.490440>,  <37.136292, 39.175373, 27.390341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342339, 39.246960, 27.490440>,  <37.685749, 39.366272, 27.657272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342339, 39.246960, 27.490440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291486, 0.385293, -0.875549,
		0.421853, -0.873259, -0.243842,
		-0.858531, -0.298276, -0.417080,
		37.084778, 39.157478, 27.365316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921539, 39.004387, 27.065674>,  <37.685749, 39.366272, 27.657272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921539, 39.004387, 27.065674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543739, 39.123280, 27.009726>,  <37.317059, 39.194614, 26.976156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543739, 39.123280, 27.009726>,  <37.921539, 39.004387, 27.065674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543739, 39.123280, 27.009726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251599, 0.380783, -0.889776,
		-0.211209, -0.875590, -0.434435,
		-0.944504, 0.297232, -0.139873,
		37.260387, 39.212448, 26.967764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822662, 38.874187, 26.326138>,  <37.921539, 39.004387, 27.065674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822662, 38.874187, 26.326138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483814, 39.077232, 26.389021>,  <37.280506, 39.199059, 26.426750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483814, 39.077232, 26.389021>,  <37.822662, 38.874187, 26.326138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483814, 39.077232, 26.389021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169623, 0.538664, -0.825269,
		-0.503597, -0.672439, -0.542417,
		-0.847123, 0.507610, 0.157208,
		37.229675, 39.229515, 26.436184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400051, 38.742317, 25.773930>,  <37.822662, 38.874187, 26.326138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400051, 38.742317, 25.773930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297058, 39.093838, 25.934635>,  <37.235260, 39.304749, 26.031059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297058, 39.093838, 25.934635>,  <37.400051, 38.742317, 25.773930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297058, 39.093838, 25.934635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254805, 0.462820, -0.849042,
		-0.932081, -0.116244, -0.343091,
		-0.257486, 0.878797, 0.401766,
		37.219810, 39.357475, 26.055164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988056, 39.084301, 25.313471>,  <37.400051, 38.742317, 25.773930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988056, 39.084301, 25.313471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144444, 39.359013, 25.558577>,  <37.238277, 39.523838, 25.705641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144444, 39.359013, 25.558577>,  <36.988056, 39.084301, 25.313471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144444, 39.359013, 25.558577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347977, 0.506049, -0.789194,
		-0.852089, 0.521778, -0.041133,
		0.390969, 0.686777, 0.612765,
		37.261734, 39.565044, 25.742407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794575, 39.681271, 24.992147>,  <36.988056, 39.084301, 25.313471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794575, 39.681271, 24.992147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075489, 39.780861, 25.258923>,  <37.244038, 39.840614, 25.418987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075489, 39.780861, 25.258923>,  <36.794575, 39.681271, 24.992147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075489, 39.780861, 25.258923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521445, 0.457896, -0.720018,
		-0.484657, 0.853429, 0.191745,
		0.702284, 0.248978, 0.666939,
		37.286175, 39.855553, 25.459003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873775, 40.341686, 24.836605>,  <36.794575, 39.681271, 24.992147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873775, 40.341686, 24.836605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196693, 40.202686, 25.027401>,  <37.390446, 40.119286, 25.141878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196693, 40.202686, 25.027401>,  <36.873775, 40.341686, 24.836605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196693, 40.202686, 25.027401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579440, 0.313479, -0.752317,
		0.111903, 0.883728, 0.454425,
		0.807296, -0.347499, 0.476988,
		37.438881, 40.098438, 25.170498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298119, 40.886482, 24.983837>,  <36.873775, 40.341686, 24.836605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298119, 40.886482, 24.983837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567055, 40.590599, 24.995077>,  <37.728416, 40.413067, 25.001822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567055, 40.590599, 24.995077>,  <37.298119, 40.886482, 24.983837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567055, 40.590599, 24.995077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500141, 0.425950, -0.753940,
		0.545728, 0.520957, 0.656342,
		0.672339, -0.739710, 0.028099,
		37.768757, 40.368687, 25.003508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873486, 41.219723, 24.818121>,  <37.298119, 40.886482, 24.983837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873486, 41.219723, 24.818121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949352, 40.830605, 24.764927>,  <37.994873, 40.597134, 24.733011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949352, 40.830605, 24.764927>,  <37.873486, 41.219723, 24.818121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949352, 40.830605, 24.764927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363207, 0.195353, -0.910998,
		0.912198, 0.124489, 0.390381,
		0.189671, -0.972800, -0.132985,
		38.006252, 40.538765, 24.725031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503933, 41.238613, 24.502567>,  <37.873486, 41.219723, 24.818121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503933, 41.238613, 24.502567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414276, 40.857269, 24.421707>,  <38.360481, 40.628464, 24.373190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414276, 40.857269, 24.421707>,  <38.503933, 41.238613, 24.502567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414276, 40.857269, 24.421707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483915, 0.071175, -0.872216,
		0.845924, -0.293323, 0.445392,
		-0.224140, -0.953360, -0.202152,
		38.347034, 40.571262, 24.361061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805347, 41.188381, 23.854849>,  <38.503933, 41.238613, 24.502567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805347, 41.188381, 23.854849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615616, 40.836575, 23.870146>,  <38.501778, 40.625492, 23.879324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615616, 40.836575, 23.870146>,  <38.805347, 41.188381, 23.854849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615616, 40.836575, 23.870146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119820, -0.107536, -0.986954,
		0.872154, -0.463562, 0.156392,
		-0.474332, -0.879514, 0.038244,
		38.473316, 40.572720, 23.881618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262260, 40.551075, 23.625380>,  <38.805347, 41.188381, 23.854849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262260, 40.551075, 23.625380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870426, 40.497292, 23.565598>,  <38.635326, 40.465019, 23.529728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870426, 40.497292, 23.565598>,  <39.262260, 40.551075, 23.625380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870426, 40.497292, 23.565598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155409, -0.034865, -0.987235,
		0.127534, -0.990306, 0.055050,
		-0.979584, -0.134461, -0.149456,
		38.576550, 40.456955, 23.520761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225986, 39.920212, 23.165686>,  <39.262260, 40.551075, 23.625380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225986, 39.920212, 23.165686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878330, 40.115486, 23.134001>,  <38.669739, 40.232651, 23.114990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878330, 40.115486, 23.134001>,  <39.225986, 39.920212, 23.165686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878330, 40.115486, 23.134001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006967, -0.148064, -0.988953,
		-0.494524, -0.860087, 0.125286,
		-0.869136, 0.488188, -0.079214,
		38.617588, 40.261944, 23.110237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831314, 39.496918, 22.753971>,  <39.225986, 39.920212, 23.165686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831314, 39.496918, 22.753971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646149, 39.851479, 22.754416>,  <38.535049, 40.064217, 22.754683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646149, 39.851479, 22.754416>,  <38.831314, 39.496918, 22.753971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646149, 39.851479, 22.754416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232817, -0.120377, -0.965042,
		-0.855280, -0.446993, 0.262094,
		-0.462917, 0.886401, 0.001111,
		38.507275, 40.117397, 22.754749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032871, 39.436367, 22.514744>,  <38.831314, 39.496918, 22.753971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032871, 39.436367, 22.514744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165318, 39.803547, 22.427353>,  <38.244785, 40.023853, 22.374918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165318, 39.803547, 22.427353>,  <38.032871, 39.436367, 22.514744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165318, 39.803547, 22.427353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251316, -0.137382, -0.958105,
		-0.909506, 0.372153, 0.185206,
		0.331117, 0.917948, -0.218478,
		38.264652, 40.078930, 22.361809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616360, 39.663746, 22.004601>,  <38.032871, 39.436367, 22.514744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616360, 39.663746, 22.004601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922081, 39.921688, 22.003923>,  <38.105515, 40.076454, 22.003517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922081, 39.921688, 22.003923>,  <37.616360, 39.663746, 22.004601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922081, 39.921688, 22.003923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027357, 0.029801, -0.999181,
		-0.644280, 0.763721, 0.040418,
		0.764300, 0.644858, -0.001693,
		38.151371, 40.115147, 22.003416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485744, 40.191032, 21.401052>,  <37.616360, 39.663746, 22.004601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485744, 40.191032, 21.401052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877048, 40.202477, 21.483215>,  <38.111832, 40.209343, 21.532513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877048, 40.202477, 21.483215>,  <37.485744, 40.191032, 21.401052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877048, 40.202477, 21.483215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205893, -0.015150, -0.978457,
		-0.024884, 0.999476, -0.020712,
		0.978258, 0.028613, 0.205409,
		38.170525, 40.211060, 21.544838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760971, 40.728783, 21.106930>,  <37.485744, 40.191032, 21.401052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760971, 40.728783, 21.106930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060547, 40.465244, 21.135244>,  <38.240292, 40.307121, 21.152233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.060547, 40.465244, 21.135244>,  <37.760971, 40.728783, 21.106930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060547, 40.465244, 21.135244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065044, -0.033213, -0.997330,
		0.659441, 0.751541, 0.017980,
		0.748937, -0.658850, 0.070785,
		38.285229, 40.267590, 21.156479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302864, 41.015312, 20.729467>,  <37.760971, 40.728783, 21.106930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302864, 41.015312, 20.729467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378498, 40.623386, 20.755402>,  <38.423878, 40.388229, 20.770962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378498, 40.623386, 20.755402>,  <38.302864, 41.015312, 20.729467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378498, 40.623386, 20.755402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222383, -0.021583, -0.974720,
		0.956449, 0.198720, 0.213814,
		0.189082, -0.979819, 0.064835,
		38.435223, 40.329441, 20.774853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882069, 40.872616, 20.200487>,  <38.302864, 41.015312, 20.729467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882069, 40.872616, 20.200487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766342, 40.505348, 20.308750>,  <38.696907, 40.284988, 20.373709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766342, 40.505348, 20.308750>,  <38.882069, 40.872616, 20.200487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766342, 40.505348, 20.308750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286454, -0.352839, -0.890757,
		0.913368, -0.180176, 0.365096,
		-0.289313, -0.918173, 0.270660,
		38.679546, 40.229897, 20.389948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480289, 40.423088, 20.174603>,  <38.882069, 40.872616, 20.200487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480289, 40.423088, 20.174603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138493, 40.230141, 20.097481>,  <38.933414, 40.114372, 20.051208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138493, 40.230141, 20.097481>,  <39.480289, 40.423088, 20.174603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138493, 40.230141, 20.097481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309757, -0.175182, -0.934538,
		0.417015, -0.858274, 0.299107,
		-0.854488, -0.482367, -0.192803,
		38.882145, 40.085430, 20.039640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694233, 39.773949, 20.044100>,  <39.480289, 40.423088, 20.174603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694233, 39.773949, 20.044100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320938, 39.815605, 19.906569>,  <39.096962, 39.840599, 19.824049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320938, 39.815605, 19.906569>,  <39.694233, 39.773949, 20.044100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320938, 39.815605, 19.906569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301851, -0.291679, -0.907639,
		-0.194806, -0.950831, 0.240773,
		-0.933240, 0.104136, -0.343830,
		39.040966, 39.846848, 19.803419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609318, 39.074627, 19.749090>,  <39.694233, 39.773949, 20.044100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609318, 39.074627, 19.749090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335945, 39.329552, 19.606684>,  <39.171921, 39.482506, 19.521240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335945, 39.329552, 19.606684>,  <39.609318, 39.074627, 19.749090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335945, 39.329552, 19.606684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119179, -0.383735, -0.915721,
		-0.720219, -0.668264, 0.186302,
		-0.683433, 0.637316, -0.356016,
		39.130917, 39.520748, 19.499880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255051, 38.633442, 19.417278>,  <39.609318, 39.074627, 19.749090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255051, 38.633442, 19.417278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180901, 38.991982, 19.256189>,  <39.136410, 39.207108, 19.159536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180901, 38.991982, 19.256189>,  <39.255051, 38.633442, 19.417278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180901, 38.991982, 19.256189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345127, -0.324329, -0.880737,
		-0.920066, -0.302260, -0.249232,
		-0.185378, 0.896354, -0.402722,
		39.125286, 39.260887, 19.135372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061523, 38.436493, 18.737143>,  <39.255051, 38.633442, 19.417278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061523, 38.436493, 18.737143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110825, 38.832764, 18.713947>,  <39.140408, 39.070526, 18.700029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110825, 38.832764, 18.713947>,  <39.061523, 38.436493, 18.737143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110825, 38.832764, 18.713947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318976, -0.094882, -0.943001,
		-0.939714, 0.097733, -0.327698,
		0.123255, 0.990679, -0.057988,
		39.147800, 39.129967, 18.696550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807438, 38.683887, 18.108574>,  <39.061523, 38.436493, 18.737143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807438, 38.683887, 18.108574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052193, 38.984364, 18.207621>,  <39.199047, 39.164650, 18.267048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052193, 38.984364, 18.207621>,  <38.807438, 38.683887, 18.108574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052193, 38.984364, 18.207621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328003, 0.043882, -0.943657,
		-0.719729, 0.658629, -0.219541,
		0.611886, 0.751187, 0.247615,
		39.235760, 39.209721, 18.281906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666142, 39.317493, 17.739157>,  <38.807438, 38.683887, 18.108574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666142, 39.317493, 17.739157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049477, 39.273743, 17.844704>,  <39.279476, 39.247490, 17.908031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049477, 39.273743, 17.844704>,  <38.666142, 39.317493, 17.739157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049477, 39.273743, 17.844704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279828, 0.174149, -0.944123,
		0.057317, 0.978625, 0.197502,
		0.958338, -0.109381, 0.263865,
		39.336979, 39.240929, 17.923862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047962, 39.771797, 17.228788>,  <38.666142, 39.317493, 17.739157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047962, 39.771797, 17.228788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358639, 39.582733, 17.395327>,  <39.545044, 39.469296, 17.495249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358639, 39.582733, 17.395327>,  <39.047962, 39.771797, 17.228788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358639, 39.582733, 17.395327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470889, -0.003295, -0.882186,
		0.418347, 0.881238, 0.220012,
		0.776691, -0.472662, 0.416344,
		39.591644, 39.440933, 17.520229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540131, 40.182491, 17.046616>,  <39.047962, 39.771797, 17.228788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540131, 40.182491, 17.046616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706093, 39.830704, 17.139898>,  <39.805672, 39.619633, 17.195868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706093, 39.830704, 17.139898>,  <39.540131, 40.182491, 17.046616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706093, 39.830704, 17.139898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482671, -0.004521, -0.875790,
		0.771284, 0.475936, 0.422618,
		0.414910, -0.879468, 0.233207,
		39.830566, 39.566864, 17.209860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259930, 40.261703, 16.967024>,  <39.540131, 40.182491, 17.046616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259930, 40.261703, 16.967024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193840, 39.867531, 16.950871>,  <40.154186, 39.631027, 16.941177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193840, 39.867531, 16.950871>,  <40.259930, 40.261703, 16.967024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193840, 39.867531, 16.950871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483334, -0.045209, -0.874268,
		0.859704, -0.163967, 0.483761,
		-0.165222, -0.985429, -0.040384,
		40.144272, 39.571903, 16.938755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917812, 39.957180, 16.821142>,  <40.259930, 40.261703, 16.967024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917812, 39.957180, 16.821142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639389, 39.704342, 16.684929>,  <40.472336, 39.552639, 16.603201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639389, 39.704342, 16.684929>,  <40.917812, 39.957180, 16.821142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639389, 39.704342, 16.684929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521905, -0.119723, -0.844560,
		0.493070, -0.765589, 0.413226,
		-0.696058, -0.632092, -0.340533,
		40.430573, 39.514713, 16.582769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291199, 39.357555, 16.505136>,  <40.917812, 39.957180, 16.821142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291199, 39.357555, 16.505136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927776, 39.304951, 16.346523>,  <40.709724, 39.273388, 16.251356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927776, 39.304951, 16.346523>,  <41.291199, 39.357555, 16.505136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927776, 39.304951, 16.346523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414287, -0.161258, -0.895747,
		0.053857, -0.978111, 0.200994,
		-0.908552, -0.131511, -0.396533,
		40.655212, 39.265499, 16.227564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472256, 39.010773, 15.964476>,  <41.291199, 39.357555, 16.505136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472256, 39.010773, 15.964476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092068, 39.112999, 15.893720>,  <40.863953, 39.174335, 15.851266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.092068, 39.112999, 15.893720>,  <41.472256, 39.010773, 15.964476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092068, 39.112999, 15.893720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138370, -0.161686, -0.977093,
		-0.278312, -0.953176, 0.118316,
		-0.950472, 0.255566, -0.176890,
		40.806927, 39.189667, 15.840652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260635, 39.148029, 15.987164>,  <41.472256, 39.010773, 15.964476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260635, 39.148029, 15.987164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607601, 38.976936, 16.088861>,  <42.815781, 38.874283, 16.149879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607601, 38.976936, 16.088861>,  <42.260635, 39.148029, 15.987164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607601, 38.976936, 16.088861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344987, -0.148757, 0.926744,
		-0.358576, -0.891582, -0.276595,
		0.867414, -0.427731, 0.254244,
		42.867825, 38.848618, 16.165134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016220, 38.733486, 16.407663>,  <42.260635, 39.148029, 15.987164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016220, 38.733486, 16.407663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404819, 38.724907, 16.502085>,  <42.637981, 38.719761, 16.558739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404819, 38.724907, 16.502085>,  <42.016220, 38.733486, 16.407663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404819, 38.724907, 16.502085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233433, -0.259360, 0.937146,
		0.041125, -0.965543, -0.256975,
		0.971503, -0.021446, 0.236056,
		42.696270, 38.718472, 16.572901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048061, 38.187462, 16.769552>,  <42.016220, 38.733486, 16.407663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048061, 38.187462, 16.769552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372044, 38.395439, 16.878094>,  <42.566433, 38.520226, 16.943218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372044, 38.395439, 16.878094>,  <42.048061, 38.187462, 16.769552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372044, 38.395439, 16.878094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158330, -0.251648, 0.954780,
		0.564716, -0.816293, -0.121501,
		0.809955, 0.519942, 0.271353,
		42.615028, 38.551422, 16.959499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545055, 37.804935, 17.144508>,  <42.048061, 38.187462, 16.769552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545055, 37.804935, 17.144508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612614, 38.185669, 17.246866>,  <42.653149, 38.414108, 17.308281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612614, 38.185669, 17.246866>,  <42.545055, 37.804935, 17.144508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612614, 38.185669, 17.246866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135978, -0.234641, 0.962525,
		0.976209, -0.197362, 0.089799,
		0.168895, 0.951836, 0.255895,
		42.663280, 38.471218, 17.323635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941231, 37.854172, 17.702217>,  <42.545055, 37.804935, 17.144508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941231, 37.854172, 17.702217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760952, 38.210094, 17.730844>,  <42.652786, 38.423649, 17.748020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760952, 38.210094, 17.730844>,  <42.941231, 37.854172, 17.702217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760952, 38.210094, 17.730844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168751, -0.163652, 0.971978,
		0.876582, 0.425989, 0.223913,
		-0.450696, 0.889804, 0.071569,
		42.625744, 38.477036, 17.752316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077663, 37.921143, 18.413788>,  <42.941231, 37.854172, 17.702217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077663, 37.921143, 18.413788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820152, 38.210640, 18.314398>,  <42.665646, 38.384338, 18.254765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820152, 38.210640, 18.314398>,  <43.077663, 37.921143, 18.413788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820152, 38.210640, 18.314398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309474, 0.050719, 0.949554,
		0.699838, 0.688200, 0.191328,
		-0.643779, 0.723746, -0.248476,
		42.627018, 38.427765, 18.239855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231491, 38.414913, 18.877684>,  <43.077663, 37.921143, 18.413788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231491, 38.414913, 18.877684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857380, 38.423359, 18.736370>,  <42.632912, 38.428429, 18.651581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857380, 38.423359, 18.736370>,  <43.231491, 38.414913, 18.877684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857380, 38.423359, 18.736370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353796, -0.029764, 0.934849,
		0.009227, 0.999334, 0.035309,
		-0.935277, 0.021118, -0.353286,
		42.576797, 38.429695, 18.630384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859753, 38.862839, 19.390596>,  <43.231491, 38.414913, 18.877684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859753, 38.862839, 19.390596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564636, 38.696613, 19.177818>,  <42.387566, 38.596878, 19.050152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564636, 38.696613, 19.177818>,  <42.859753, 38.862839, 19.390596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564636, 38.696613, 19.177818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594067, 0.025531, 0.804010,
		-0.320538, 0.909205, -0.265711,
		-0.737794, -0.415566, -0.531945,
		42.343300, 38.571945, 19.018234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356052, 39.268978, 19.548199>,  <42.859753, 38.862839, 19.390596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356052, 39.268978, 19.548199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190468, 38.930065, 19.415081>,  <42.091118, 38.726719, 19.335211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190468, 38.930065, 19.415081>,  <42.356052, 39.268978, 19.548199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190468, 38.930065, 19.415081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707484, 0.069411, 0.703312,
		-0.572805, 0.526588, -0.628172,
		-0.413958, -0.847282, -0.332794,
		42.066280, 38.675880, 19.315243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679291, 39.515022, 19.291910>,  <42.356052, 39.268978, 19.548199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679291, 39.515022, 19.291910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683266, 39.129265, 19.397619>,  <41.685650, 38.897808, 19.461044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683266, 39.129265, 19.397619>,  <41.679291, 39.515022, 19.291910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683266, 39.129265, 19.397619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643472, 0.196125, 0.739918,
		-0.765405, -0.177407, -0.618613,
		0.009942, -0.964397, 0.264271,
		41.686249, 38.839947, 19.476900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046719, 39.317371, 19.538250>,  <41.679291, 39.515022, 19.291910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046719, 39.317371, 19.538250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243706, 38.997768, 19.676277>,  <41.361897, 38.806007, 19.759094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243706, 38.997768, 19.676277>,  <41.046719, 39.317371, 19.538250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243706, 38.997768, 19.676277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594765, -0.019502, 0.803663,
		-0.635400, -0.601010, -0.484823,
		0.492465, -0.799003, 0.345068,
		41.391445, 38.758068, 19.779797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542595, 39.008446, 20.027630>,  <41.046719, 39.317371, 19.538250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542595, 39.008446, 20.027630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883850, 38.818810, 20.114719>,  <41.088604, 38.705029, 20.166973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883850, 38.818810, 20.114719>,  <40.542595, 39.008446, 20.027630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883850, 38.818810, 20.114719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338760, -0.186043, 0.922296,
		-0.396742, -0.860598, -0.319321,
		0.853134, -0.474087, 0.217725,
		41.139790, 38.676582, 20.180037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387245, 38.364460, 20.319254>,  <40.542595, 39.008446, 20.027630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387245, 38.364460, 20.319254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763062, 38.416588, 20.445923>,  <40.988552, 38.447865, 20.521925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763062, 38.416588, 20.445923>,  <40.387245, 38.364460, 20.319254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763062, 38.416588, 20.445923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309275, -0.074082, 0.948083,
		0.147011, -0.988701, -0.029299,
		0.939541, 0.130317, 0.316672,
		41.044922, 38.455685, 20.540924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765678, 37.771923, 20.697594>,  <40.387245, 38.364460, 20.319254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765678, 37.771923, 20.697594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923546, 38.122757, 20.807108>,  <41.018265, 38.333256, 20.872816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923546, 38.122757, 20.807108>,  <40.765678, 37.771923, 20.697594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923546, 38.122757, 20.807108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206467, -0.205699, 0.956587,
		0.895326, -0.434062, 0.099906,
		0.394668, 0.877085, 0.273787,
		41.041946, 38.385883, 20.889244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906895, 37.627106, 21.390814>,  <40.765678, 37.771923, 20.697594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906895, 37.627106, 21.390814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921841, 38.025646, 21.360109>,  <40.930809, 38.264771, 21.341686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921841, 38.025646, 21.360109>,  <40.906895, 37.627106, 21.390814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921841, 38.025646, 21.360109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304990, 0.084520, 0.948598,
		0.951622, -0.012037, 0.307035,
		0.037369, 0.996349, -0.076760,
		40.933052, 38.324551, 21.337082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296162, 37.736389, 22.072603>,  <40.906895, 37.627106, 21.390814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296162, 37.736389, 22.072603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133373, 38.078743, 21.944952>,  <41.035702, 38.284153, 21.868361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133373, 38.078743, 21.944952>,  <41.296162, 37.736389, 22.072603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133373, 38.078743, 21.944952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389888, 0.153184, 0.908032,
		0.826053, 0.493966, 0.271357,
		-0.406970, 0.855881, -0.319130,
		41.011284, 38.335506, 21.849213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359035, 38.186863, 22.570465>,  <41.296162, 37.736389, 22.072603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359035, 38.186863, 22.570465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055248, 38.363609, 22.379482>,  <40.872974, 38.469658, 22.264893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055248, 38.363609, 22.379482>,  <41.359035, 38.186863, 22.570465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055248, 38.363609, 22.379482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328718, 0.372686, 0.867784,
		0.561384, 0.816003, -0.137794,
		-0.759469, 0.441865, -0.477455,
		40.827408, 38.496170, 22.236246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335812, 38.802887, 22.879395>,  <41.359035, 38.186863, 22.570465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335812, 38.802887, 22.879395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981850, 38.736008, 22.705502>,  <40.769474, 38.695881, 22.601166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.981850, 38.736008, 22.705502>,  <41.335812, 38.802887, 22.879395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981850, 38.736008, 22.705502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453521, 0.096589, 0.885996,
		-0.106146, 0.981180, -0.161300,
		-0.884902, -0.167198, -0.434733,
		40.716377, 38.685848, 22.575081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889957, 39.397129, 23.074797>,  <41.335812, 38.802887, 22.879395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889957, 39.397129, 23.074797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656647, 39.087536, 22.976217>,  <40.516659, 38.901779, 22.917068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656647, 39.087536, 22.976217>,  <40.889957, 39.397129, 23.074797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656647, 39.087536, 22.976217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506752, 0.109613, 0.855095,
		-0.634815, 0.623647, -0.456153,
		-0.583277, -0.773983, -0.246450,
		40.481663, 38.855339, 22.902283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378162, 39.524242, 23.516264>,  <40.889957, 39.397129, 23.074797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378162, 39.524242, 23.516264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303738, 39.146702, 23.407063>,  <40.259083, 38.920177, 23.341541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.303738, 39.146702, 23.407063>,  <40.378162, 39.524242, 23.516264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303738, 39.146702, 23.407063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506710, -0.145879, 0.849685,
		-0.841799, 0.296430, -0.451114,
		-0.186064, -0.943848, -0.273004,
		40.247917, 38.863548, 23.325161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709618, 39.354519, 23.704222>,  <40.378162, 39.524242, 23.516264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709618, 39.354519, 23.704222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889954, 39.000893, 23.654953>,  <39.998154, 38.788715, 23.625391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889954, 39.000893, 23.654953>,  <39.709618, 39.354519, 23.704222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889954, 39.000893, 23.654953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309582, -0.284296, 0.907378,
		-0.837200, -0.370948, -0.401863,
		0.450838, -0.884067, -0.123173,
		40.025204, 38.735672, 23.618002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253731, 38.941608, 23.745888>,  <39.709618, 39.354519, 23.704222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253731, 38.941608, 23.745888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568180, 38.704498, 23.815891>,  <39.756851, 38.562233, 23.857893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568180, 38.704498, 23.815891>,  <39.253731, 38.941608, 23.745888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568180, 38.704498, 23.815891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409120, -0.286826, 0.866228,
		-0.463283, -0.752561, -0.467997,
		0.786123, -0.592776, 0.175006,
		39.804016, 38.526665, 23.868393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945080, 38.365322, 23.980381>,  <39.253731, 38.941608, 23.745888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945080, 38.365322, 23.980381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326660, 38.366653, 24.100365>,  <39.555607, 38.367451, 24.172354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326660, 38.366653, 24.100365>,  <38.945080, 38.365322, 23.980381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326660, 38.366653, 24.100365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274674, -0.392251, 0.877891,
		0.120579, -0.919852, -0.373273,
		0.953947, 0.003327, 0.299957,
		39.612843, 38.367653, 24.190351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997669, 37.821663, 24.408672>,  <38.945080, 38.365322, 23.980381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997669, 37.821663, 24.408672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315865, 38.046585, 24.499008>,  <39.506783, 38.181538, 24.553209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315865, 38.046585, 24.499008>,  <38.997669, 37.821663, 24.408672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315865, 38.046585, 24.499008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166904, -0.154956, 0.973720,
		0.582528, -0.812279, -0.029414,
		0.795490, 0.562310, 0.225839,
		39.554512, 38.215279, 24.566759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337055, 37.356323, 24.917528>,  <38.997669, 37.821663, 24.408672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337055, 37.356323, 24.917528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448437, 37.739132, 24.949938>,  <39.515266, 37.968819, 24.969383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448437, 37.739132, 24.949938>,  <39.337055, 37.356323, 24.917528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448437, 37.739132, 24.949938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004745, -0.085729, 0.996307,
		0.960438, -0.277042, -0.028412,
		0.278455, 0.957025, 0.081023,
		39.531975, 38.026241, 24.974245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832710, 37.461113, 25.505638>,  <39.337055, 37.356323, 24.917528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832710, 37.461113, 25.505638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718342, 37.844406, 25.503065>,  <39.649719, 38.074383, 25.501520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718342, 37.844406, 25.503065>,  <39.832710, 37.461113, 25.505638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718342, 37.844406, 25.503065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215344, 0.070796, 0.973969,
		0.933743, 0.277092, -0.226592,
		-0.285921, 0.958232, -0.006435,
		39.632565, 38.131874, 25.501135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288818, 37.756359, 25.961288>,  <39.832710, 37.461113, 25.505638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288818, 37.756359, 25.961288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991955, 38.022522, 25.929222>,  <39.813835, 38.182220, 25.909983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.991955, 38.022522, 25.929222>,  <40.288818, 37.756359, 25.961288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991955, 38.022522, 25.929222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128732, -0.024141, 0.991385,
		0.657744, 0.746086, 0.103576,
		-0.742159, 0.665412, -0.080167,
		39.769306, 38.222145, 25.905172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377205, 38.267700, 26.432398>,  <40.288818, 37.756359, 25.961288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377205, 38.267700, 26.432398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987339, 38.310268, 26.353704>,  <39.753418, 38.335808, 26.306488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987339, 38.310268, 26.353704>,  <40.377205, 38.267700, 26.432398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987339, 38.310268, 26.353704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193802, 0.037340, 0.980330,
		0.111670, 0.993620, -0.015771,
		-0.974664, 0.106417, -0.196735,
		39.694939, 38.342194, 26.294683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217224, 38.853436, 26.827505>,  <40.377205, 38.267700, 26.432398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217224, 38.853436, 26.827505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880493, 38.663975, 26.723988>,  <39.678455, 38.550297, 26.661877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.880493, 38.663975, 26.723988>,  <40.217224, 38.853436, 26.827505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880493, 38.663975, 26.723988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374898, 0.168186, 0.911683,
		-0.388297, 0.864503, -0.319156,
		-0.841830, -0.473654, -0.258794,
		39.627945, 38.521877, 26.646349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727749, 39.249397, 27.065420>,  <40.217224, 38.853436, 26.827505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727749, 39.249397, 27.065420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553368, 38.890949, 27.032175>,  <39.448738, 38.675880, 27.012228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553368, 38.890949, 27.032175>,  <39.727749, 39.249397, 27.065420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553368, 38.890949, 27.032175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221348, 0.017253, 0.975042,
		-0.872323, 0.443472, -0.205877,
		-0.435956, -0.896122, -0.083112,
		39.422581, 38.622112, 27.007242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048698, 39.292137, 27.328104>,  <39.727749, 39.249397, 27.065420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048698, 39.292137, 27.328104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214439, 38.931557, 27.378235>,  <39.313885, 38.715210, 27.408314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.214439, 38.931557, 27.378235>,  <39.048698, 39.292137, 27.328104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214439, 38.931557, 27.378235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217124, 0.035821, 0.975486,
		-0.883838, -0.431406, -0.180884,
		0.414351, -0.901447, 0.125329,
		39.338745, 38.661121, 27.415834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927711, 39.152203, 27.963158>,  <39.048698, 39.292137, 27.328104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927711, 39.152203, 27.963158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104610, 38.802338, 27.883776>,  <39.210751, 38.592419, 27.836145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104610, 38.802338, 27.883776>,  <38.927711, 39.152203, 27.963158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104610, 38.802338, 27.883776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154028, -0.292050, 0.943919,
		-0.883570, -0.386874, -0.263880,
		0.442244, -0.874663, -0.198457,
		39.237286, 38.539940, 27.824238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422699, 38.598877, 28.248814>,  <38.927711, 39.152203, 27.963158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422699, 38.598877, 28.248814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799156, 38.464535, 28.233639>,  <39.025032, 38.383930, 28.224533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799156, 38.464535, 28.233639>,  <38.422699, 38.598877, 28.248814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799156, 38.464535, 28.233639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082372, -0.336780, 0.937973,
		-0.327789, -0.879652, -0.344626,
		0.941153, -0.335845, -0.037934,
		39.081501, 38.363777, 28.222258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363297, 37.911133, 28.610203>,  <38.422699, 38.598877, 28.248814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363297, 37.911133, 28.610203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758224, 37.974632, 28.610640>,  <38.995182, 38.012733, 28.610901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758224, 37.974632, 28.610640>,  <38.363297, 37.911133, 28.610203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758224, 37.974632, 28.610640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049672, -0.315441, 0.947644,
		0.150785, -0.935572, -0.319326,
		0.987318, 0.158752, 0.001092,
		39.054420, 38.022259, 28.610968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755745, 37.211018, 28.731510>,  <38.363297, 37.911133, 28.610203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755745, 37.211018, 28.731510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020676, 37.490540, 28.839575>,  <39.179634, 37.658253, 28.904413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020676, 37.490540, 28.839575>,  <38.755745, 37.211018, 28.731510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020676, 37.490540, 28.839575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003634, -0.357596, 0.933869,
		0.749205, -0.619510, -0.234306,
		0.662328, 0.698808, 0.270163,
		39.219376, 37.700180, 28.920624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410660, 36.895115, 29.044249>,  <38.755745, 37.211018, 28.731510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410660, 36.895115, 29.044249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406700, 37.262653, 29.202044>,  <39.404324, 37.483177, 29.296721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406700, 37.262653, 29.202044>,  <39.410660, 36.895115, 29.044249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406700, 37.262653, 29.202044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088401, -0.392156, 0.915641,
		0.996036, 0.043936, -0.077346,
		-0.009898, 0.918849, 0.394486,
		39.403732, 37.538307, 29.320389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857319, 36.943714, 29.560896>,  <39.410660, 36.895115, 29.044249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857319, 36.943714, 29.560896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627644, 37.257343, 29.655163>,  <39.489838, 37.445522, 29.711723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627644, 37.257343, 29.655163>,  <39.857319, 36.943714, 29.560896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627644, 37.257343, 29.655163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004265, -0.290707, 0.956803,
		0.818714, 0.548377, 0.170264,
		-0.574185, 0.784074, 0.235667,
		39.455387, 37.492565, 29.725863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077557, 37.177464, 30.227907>,  <39.857319, 36.943714, 29.560896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077557, 37.177464, 30.227907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720455, 37.353226, 30.188076>,  <39.506195, 37.458683, 30.164177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720455, 37.353226, 30.188076>,  <40.077557, 37.177464, 30.227907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720455, 37.353226, 30.188076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184373, -0.154632, 0.970616,
		0.411095, 0.884880, 0.219063,
		-0.892753, 0.439405, -0.099579,
		39.452629, 37.485046, 30.158203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062325, 37.566475, 30.790020>,  <40.077557, 37.177464, 30.227907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062325, 37.566475, 30.790020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680241, 37.545948, 30.673445>,  <39.450989, 37.533630, 30.603498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680241, 37.545948, 30.673445>,  <40.062325, 37.566475, 30.790020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680241, 37.545948, 30.673445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291511, -0.006255, 0.956547,
		-0.050911, 0.998663, -0.008985,
		-0.955212, -0.051318, -0.291439,
		39.393677, 37.530552, 30.586014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680080, 38.043121, 31.237093>,  <40.062325, 37.566475, 30.790020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680080, 38.043121, 31.237093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413570, 37.792698, 31.075037>,  <39.253666, 37.642445, 30.977802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413570, 37.792698, 31.075037>,  <39.680080, 38.043121, 31.237093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413570, 37.792698, 31.075037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506771, -0.018429, 0.861884,
		-0.547053, 0.779561, -0.304987,
		-0.666271, -0.626054, -0.405141,
		39.213688, 37.604881, 30.953495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903152, 38.241295, 31.387342>,  <39.680080, 38.043121, 31.237093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903152, 38.241295, 31.387342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964180, 37.852097, 31.318056>,  <39.000797, 37.618576, 31.276484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964180, 37.852097, 31.318056>,  <38.903152, 38.241295, 31.387342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964180, 37.852097, 31.318056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682766, -0.230488, 0.693329,
		-0.714531, 0.012489, -0.699493,
		0.152566, -0.972995, -0.173218,
		39.009949, 37.560200, 31.266090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270031, 37.981270, 31.405224>,  <38.903152, 38.241295, 31.387342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270031, 37.981270, 31.405224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501873, 37.663925, 31.479662>,  <38.640980, 37.473518, 31.524324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501873, 37.663925, 31.479662>,  <38.270031, 37.981270, 31.405224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501873, 37.663925, 31.479662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657703, -0.320604, 0.681644,
		-0.481129, -0.517480, -0.707622,
		0.579604, -0.793365, 0.186096,
		38.675755, 37.425915, 31.535490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804775, 37.612164, 31.624054>,  <38.270031, 37.981270, 31.405224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804775, 37.612164, 31.624054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137486, 37.424397, 31.742579>,  <38.337112, 37.311737, 31.813694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137486, 37.424397, 31.742579>,  <37.804775, 37.612164, 31.624054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137486, 37.424397, 31.742579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504201, -0.415544, 0.757037,
		-0.232231, -0.779086, -0.582317,
		0.831775, -0.469412, 0.296314,
		38.387016, 37.283573, 31.831472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873394, 36.711231, 31.620821>,  <37.804775, 37.612164, 31.624054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873394, 36.711231, 31.620821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070412, 36.924900, 31.895649>,  <38.188622, 37.053101, 32.060547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070412, 36.924900, 31.895649>,  <37.873394, 36.711231, 31.620821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070412, 36.924900, 31.895649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604534, -0.357916, 0.711642,
		0.626053, -0.765869, 0.146638,
		0.492541, 0.534173, 0.687068,
		38.218174, 37.085152, 32.101768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832661, 36.274055, 32.140881>,  <37.873394, 36.711231, 31.620821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832661, 36.274055, 32.140881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965374, 36.600788, 32.329647>,  <38.045002, 36.796829, 32.442905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965374, 36.600788, 32.329647>,  <37.832661, 36.274055, 32.140881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965374, 36.600788, 32.329647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489771, -0.278398, 0.826208,
		0.806255, -0.505250, 0.307694,
		0.331780, 0.816834, 0.471916,
		38.064907, 36.845837, 32.471222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771603, 36.099220, 32.768978>,  <37.832661, 36.274055, 32.140881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771603, 36.099220, 32.768978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817867, 36.491737, 32.830536>,  <37.845627, 36.727249, 32.867470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817867, 36.491737, 32.830536>,  <37.771603, 36.099220, 32.768978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817867, 36.491737, 32.830536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513753, -0.073502, 0.854784,
		0.850105, -0.177936, 0.495640,
		0.115666, 0.981293, 0.153899,
		37.852566, 36.786125, 32.876705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058285, 36.259724, 33.549976>,  <37.771603, 36.099220, 32.768978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058285, 36.259724, 33.549976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827396, 36.552887, 33.405945>,  <37.688862, 36.728786, 33.319527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827396, 36.552887, 33.405945>,  <38.058285, 36.259724, 33.549976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827396, 36.552887, 33.405945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438569, 0.093720, 0.893797,
		0.688819, 0.673841, 0.267334,
		-0.577222, 0.732909, -0.360082,
		37.654228, 36.772758, 33.297920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054455, 36.807224, 34.006840>,  <38.058285, 36.259724, 33.549976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054455, 36.807224, 34.006840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715363, 36.863792, 33.802353>,  <37.511906, 36.897736, 33.679661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715363, 36.863792, 33.802353>,  <38.054455, 36.807224, 34.006840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715363, 36.863792, 33.802353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487995, 0.169757, 0.856180,
		0.207867, 0.975285, -0.074895,
		-0.847734, 0.141423, -0.511221,
		37.461040, 36.906219, 33.648987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754799, 37.439453, 34.199738>,  <38.054455, 36.807224, 34.006840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754799, 37.439453, 34.199738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437225, 37.229107, 34.077671>,  <37.246681, 37.102898, 34.004433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437225, 37.229107, 34.077671>,  <37.754799, 37.439453, 34.199738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437225, 37.229107, 34.077671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547978, 0.401455, 0.733863,
		-0.263408, 0.749864, -0.606895,
		-0.793938, -0.525870, -0.305162,
		37.199043, 37.071346, 33.986122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132549, 37.907772, 33.975525>,  <37.754799, 37.439453, 34.199738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132549, 37.907772, 33.975525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001404, 37.544662, 34.080170>,  <36.922714, 37.326797, 34.142956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001404, 37.544662, 34.080170>,  <37.132549, 37.907772, 33.975525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001404, 37.544662, 34.080170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546812, 0.408169, 0.731023,
		-0.770389, 0.096626, -0.630209,
		-0.327868, -0.907778, 0.261613,
		36.903042, 37.272327, 34.158653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619522, 38.064266, 34.239582>,  <37.132549, 37.907772, 33.975525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619522, 38.064266, 34.239582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598232, 37.675251, 34.330215>,  <36.585457, 37.441841, 34.384594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598232, 37.675251, 34.330215>,  <36.619522, 38.064266, 34.239582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598232, 37.675251, 34.330215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795040, 0.178565, 0.579678,
		-0.604218, -0.149287, -0.782710,
		-0.053226, -0.972537, 0.226581,
		36.582264, 37.383492, 34.398190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111191, 37.628262, 34.252220>,  <36.619522, 38.064266, 34.239582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111191, 37.628262, 34.252220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134029, 37.475147, 34.621048>,  <36.147732, 37.383278, 34.842346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134029, 37.475147, 34.621048>,  <36.111191, 37.628262, 34.252220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134029, 37.475147, 34.621048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095280, 0.917274, 0.386690,
		-0.993812, -0.109934, 0.015902,
		0.057097, -0.382782, 0.922073,
		36.151157, 37.360313, 34.897671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501591, 37.962715, 34.531395>,  <36.111191, 37.628262, 34.252220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501591, 37.962715, 34.531395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784733, 37.874374, 34.799770>,  <35.954620, 37.821369, 34.960796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784733, 37.874374, 34.799770>,  <35.501591, 37.962715, 34.531395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784733, 37.874374, 34.799770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141322, 0.886377, 0.440867,
		-0.692074, -0.406889, 0.596218,
		0.707858, -0.220854, 0.670941,
		35.997089, 37.808117, 35.001053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298805, 37.889099, 35.198112>,  <35.501591, 37.962715, 34.531395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298805, 37.889099, 35.198112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685387, 37.978600, 35.248550>,  <35.917336, 38.032299, 35.278812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685387, 37.978600, 35.248550>,  <35.298805, 37.889099, 35.198112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685387, 37.978600, 35.248550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256793, 0.832971, 0.490118,
		0.004631, -0.506058, 0.862487,
		0.966456, 0.223751, 0.126094,
		35.975323, 38.045723, 35.286377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479507, 37.927296, 35.962971>,  <35.298805, 37.889099, 35.198112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479507, 37.927296, 35.962971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729557, 38.140034, 35.734459>,  <35.879589, 38.267677, 35.597351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729557, 38.140034, 35.734459>,  <35.479507, 37.927296, 35.962971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729557, 38.140034, 35.734459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328595, 0.843217, 0.425453,
		0.707985, -0.078244, 0.701880,
		0.625126, 0.531848, -0.571274,
		35.917095, 38.299587, 35.563076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826927, 38.323280, 36.403831>,  <35.479507, 37.927296, 35.962971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826927, 38.323280, 36.403831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861225, 38.495903, 36.044632>,  <35.881805, 38.599476, 35.829113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861225, 38.495903, 36.044632>,  <35.826927, 38.323280, 36.403831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861225, 38.495903, 36.044632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417741, 0.833842, 0.360832,
		0.904511, 0.344191, 0.251780,
		0.085749, 0.431556, -0.898002,
		35.886951, 38.625370, 35.775230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019890, 39.005035, 36.577621>,  <35.826927, 38.323280, 36.403831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019890, 39.005035, 36.577621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904243, 39.030151, 36.195530>,  <35.834854, 39.045219, 35.966274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904243, 39.030151, 36.195530>,  <36.019890, 39.005035, 36.577621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904243, 39.030151, 36.195530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477900, 0.855143, 0.200853,
		0.829472, 0.514576, -0.217230,
		-0.289117, 0.062787, -0.955233,
		35.817509, 39.048988, 35.908958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055267, 39.715263, 36.401150>,  <36.019890, 39.005035, 36.577621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055267, 39.715263, 36.401150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820942, 39.573250, 36.109734>,  <35.680347, 39.488041, 35.934883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820942, 39.573250, 36.109734>,  <36.055267, 39.715263, 36.401150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820942, 39.573250, 36.109734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565351, 0.823116, 0.053469,
		0.580689, 0.443204, -0.682913,
		-0.585814, -0.355037, -0.728540,
		35.645199, 39.466740, 35.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870190, 40.369606, 35.969597>,  <36.055267, 39.715263, 36.401150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870190, 40.369606, 35.969597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589699, 40.103771, 35.866367>,  <35.421406, 39.944271, 35.804428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589699, 40.103771, 35.866367>,  <35.870190, 40.369606, 35.969597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589699, 40.103771, 35.866367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710433, 0.681700, 0.174843,
		0.059729, 0.305948, -0.950173,
		-0.701225, -0.664591, -0.258073,
		35.379330, 39.904392, 35.788944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362244, 40.742733, 35.633690>,  <35.870190, 40.369606, 35.969597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362244, 40.742733, 35.633690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185753, 40.412060, 35.773350>,  <35.079857, 40.213654, 35.857143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185753, 40.412060, 35.773350>,  <35.362244, 40.742733, 35.633690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185753, 40.412060, 35.773350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703893, 0.560156, 0.436760,
		-0.556641, -0.053051, -0.829057,
		-0.441231, -0.826687, 0.349148,
		35.053383, 40.164055, 35.878094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615471, 40.654026, 35.440155>,  <35.362244, 40.742733, 35.633690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615471, 40.654026, 35.440155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711681, 40.501469, 35.797184>,  <34.769405, 40.409935, 36.011402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711681, 40.501469, 35.797184>,  <34.615471, 40.654026, 35.440155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711681, 40.501469, 35.797184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414696, 0.791040, 0.449759,
		-0.877597, -0.478323, 0.032099,
		0.240522, -0.381395, 0.892573,
		34.783836, 40.387051, 36.064957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017662, 40.344318, 35.774208>,  <34.615471, 40.654026, 35.440155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017662, 40.344318, 35.774208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306786, 40.527283, 35.981407>,  <34.480259, 40.637062, 36.105728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306786, 40.527283, 35.981407>,  <34.017662, 40.344318, 35.774208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306786, 40.527283, 35.981407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668706, 0.652037, 0.357323,
		-0.174312, -0.604665, 0.777172,
		0.722805, 0.457414, 0.518001,
		34.523628, 40.664509, 36.136806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896988, 40.433971, 36.604202>,  <34.017662, 40.344318, 35.774208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896988, 40.433971, 36.604202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099277, 40.712353, 36.400280>,  <34.220650, 40.879379, 36.277927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099277, 40.712353, 36.400280>,  <33.896988, 40.433971, 36.604202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099277, 40.712353, 36.400280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665856, 0.690623, 0.282267,
		0.548527, 0.196709, 0.812664,
		0.505720, 0.695949, -0.509806,
		34.250992, 40.921139, 36.247337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150784, 39.833633, 36.958374>,  <33.896988, 40.433971, 36.604202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150784, 39.833633, 36.958374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015499, 40.111702, 37.212097>,  <33.934326, 40.278545, 37.364330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015499, 40.111702, 37.212097>,  <34.150784, 39.833633, 36.958374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015499, 40.111702, 37.212097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628929, 0.334424, -0.701861,
		-0.700043, -0.636312, 0.324109,
		-0.338213, 0.695175, 0.634306,
		33.914036, 40.320255, 37.402390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651463, 39.528015, 36.434315>,  <34.150784, 39.833633, 36.958374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651463, 39.528015, 36.434315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309242, 39.557949, 36.229404>,  <33.103909, 39.575909, 36.106457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309242, 39.557949, 36.229404>,  <33.651463, 39.528015, 36.434315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309242, 39.557949, 36.229404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426502, 0.662787, -0.615475,
		0.293469, -0.745058, -0.598969,
		-0.855554, 0.074839, -0.512276,
		33.052574, 39.580402, 36.075722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376629, 39.364239, 36.340965>,  <33.651463, 39.528015, 36.434315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376629, 39.364239, 36.340965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536522, 39.558891, 36.030247>,  <34.632458, 39.675682, 35.843815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536522, 39.558891, 36.030247>,  <34.376629, 39.364239, 36.340965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536522, 39.558891, 36.030247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511435, -0.821675, -0.251563,
		-0.760690, -0.296721, -0.577328,
		0.399732, 0.486627, -0.776794,
		34.656441, 39.704880, 35.797207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441216, 39.057320, 35.597282>,  <34.376629, 39.364239, 36.340965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441216, 39.057320, 35.597282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745560, 39.314548, 35.632042>,  <34.928165, 39.468887, 35.652897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745560, 39.314548, 35.632042>,  <34.441216, 39.057320, 35.597282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745560, 39.314548, 35.632042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644282, -0.732641, -0.219403,
		-0.077423, 0.222924, -0.971756,
		0.760859, 0.643072, 0.086902,
		34.973816, 39.507469, 35.658112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856110, 39.008873, 34.964325>,  <34.441216, 39.057320, 35.597282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856110, 39.008873, 34.964325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085762, 39.144749, 35.262314>,  <35.223553, 39.226273, 35.441109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085762, 39.144749, 35.262314>,  <34.856110, 39.008873, 34.964325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085762, 39.144749, 35.262314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667375, -0.721262, -0.185450,
		0.474326, 0.603649, -0.640798,
		0.574130, 0.339688, 0.744974,
		35.257999, 39.246655, 35.485806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435452, 39.145706, 34.643192>,  <34.856110, 39.008873, 34.964325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435452, 39.145706, 34.643192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533878, 39.100769, 35.028282>,  <35.592934, 39.073807, 35.259335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533878, 39.100769, 35.028282>,  <35.435452, 39.145706, 34.643192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533878, 39.100769, 35.028282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514240, -0.826808, -0.227915,
		0.821590, 0.551151, -0.145678,
		0.246063, -0.112339, 0.962721,
		35.607697, 39.067066, 35.317101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178329, 39.018578, 34.593021>,  <35.435452, 39.145706, 34.643192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178329, 39.018578, 34.593021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061108, 38.924622, 34.963737>,  <35.990776, 38.868248, 35.186169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061108, 38.924622, 34.963737>,  <36.178329, 39.018578, 34.593021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061108, 38.924622, 34.963737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632141, -0.774845, 0.003506,
		0.717298, 0.586892, 0.375555,
		-0.293055, -0.234889, 0.926793,
		35.973190, 38.854156, 35.241776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823540, 38.918713, 34.929150>,  <36.178329, 39.018578, 34.593021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823540, 38.918713, 34.929150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524662, 38.722382, 35.108391>,  <36.345337, 38.604584, 35.215935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524662, 38.722382, 35.108391>,  <36.823540, 38.918713, 34.929150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524662, 38.722382, 35.108391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513190, -0.854513, -0.080266,
		0.422306, 0.169987, 0.890372,
		-0.747190, -0.490827, 0.448102,
		36.300507, 38.575134, 35.242821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217445, 38.510811, 35.289795>,  <36.823540, 38.918713, 34.929150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217445, 38.510811, 35.289795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851700, 38.349003, 35.296757>,  <36.632252, 38.251919, 35.300934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851700, 38.349003, 35.296757>,  <37.217445, 38.510811, 35.289795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851700, 38.349003, 35.296757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393661, -0.898231, -0.195480,
		0.094710, -0.171888, 0.980553,
		-0.914364, -0.404520, 0.017406,
		36.577393, 38.227646, 35.301979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206860, 37.847721, 35.738064>,  <37.217445, 38.510811, 35.289795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206860, 37.847721, 35.738064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924328, 37.857304, 35.455074>,  <36.754807, 37.863052, 35.285278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924328, 37.857304, 35.455074>,  <37.206860, 37.847721, 35.738064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924328, 37.857304, 35.455074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286302, -0.904371, -0.316457,
		-0.647400, -0.426075, 0.631928,
		-0.706331, 0.023952, -0.707476,
		36.712429, 37.864491, 35.242832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851429, 37.145348, 35.726864>,  <37.206860, 37.847721, 35.738064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851429, 37.145348, 35.726864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865734, 37.344509, 35.380264>,  <36.874317, 37.464005, 35.172306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865734, 37.344509, 35.380264>,  <36.851429, 37.145348, 35.726864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865734, 37.344509, 35.380264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292214, -0.834367, -0.467377,
		-0.955684, -0.236488, -0.175332,
		0.035762, 0.497900, -0.866497,
		36.876461, 37.493877, 35.120316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484978, 36.740215, 35.178398>,  <36.851429, 37.145348, 35.726864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484978, 36.740215, 35.178398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775646, 36.973286, 35.032829>,  <36.950047, 37.113129, 34.945488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775646, 36.973286, 35.032829>,  <36.484978, 36.740215, 35.178398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775646, 36.973286, 35.032829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328935, -0.760175, -0.560299,
		-0.603119, 0.287444, -0.744058,
		0.726669, 0.582674, -0.363926,
		36.993649, 37.148087, 34.923653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382751, 36.748390, 34.507153>,  <36.484978, 36.740215, 35.178398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382751, 36.748390, 34.507153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768681, 36.803154, 34.596924>,  <37.000240, 36.836014, 34.650787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768681, 36.803154, 34.596924>,  <36.382751, 36.748390, 34.507153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768681, 36.803154, 34.596924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255901, -0.684690, -0.682433,
		0.060232, 0.715860, -0.695642,
		0.964825, 0.136911, 0.224429,
		37.058128, 36.844227, 34.664253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377026, 36.295082, 33.850719>,  <36.382751, 36.748390, 34.507153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377026, 36.295082, 33.850719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463669, 36.684433, 33.880703>,  <36.515656, 36.918045, 33.898693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463669, 36.684433, 33.880703>,  <36.377026, 36.295082, 33.850719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463669, 36.684433, 33.880703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609297, -0.074801, -0.789406,
		-0.762782, 0.216667, -0.609278,
		0.216613, 0.973376, 0.074957,
		36.528652, 36.976444, 33.903191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409321, 36.675465, 33.192455>,  <36.377026, 36.295082, 33.850719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409321, 36.675465, 33.192455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631504, 36.907238, 33.431026>,  <36.764812, 37.046303, 33.574169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631504, 36.907238, 33.431026>,  <36.409321, 36.675465, 33.192455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631504, 36.907238, 33.431026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689792, 0.079482, -0.719631,
		-0.464384, 0.811134, -0.355540,
		0.555459, 0.579434, 0.596424,
		36.798141, 37.081070, 33.609955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682198, 37.306217, 32.772655>,  <36.409321, 36.675465, 33.192455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682198, 37.306217, 32.772655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915539, 37.191704, 33.076694>,  <37.055542, 37.122993, 33.259117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915539, 37.191704, 33.076694>,  <36.682198, 37.306217, 32.772655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915539, 37.191704, 33.076694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785843, -0.037617, -0.617280,
		0.205311, 0.957406, 0.203032,
		0.583350, -0.286285, 0.760094,
		37.090546, 37.105820, 33.304722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194267, 37.839035, 32.828030>,  <36.682198, 37.306217, 32.772655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194267, 37.839035, 32.828030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353539, 37.519306, 33.008049>,  <37.449100, 37.327469, 33.116062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353539, 37.519306, 33.008049>,  <37.194267, 37.839035, 32.828030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353539, 37.519306, 33.008049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765788, 0.019550, -0.642795,
		0.505000, 0.600590, 0.619893,
		0.398175, -0.799318, 0.450052,
		37.472992, 37.279510, 33.143066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938412, 38.089527, 33.031155>,  <37.194267, 37.839035, 32.828030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938412, 38.089527, 33.031155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966316, 37.691505, 33.059429>,  <37.983059, 37.452694, 33.076393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.966316, 37.691505, 33.059429>,  <37.938412, 38.089527, 33.031155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966316, 37.691505, 33.059429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678086, -0.004671, -0.734968,
		0.731664, 0.099210, 0.674407,
		0.069766, -0.995056, 0.070691,
		37.987247, 37.392990, 33.080635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631256, 37.908699, 32.925720>,  <37.938412, 38.089527, 33.031155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631256, 37.908699, 32.925720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450962, 37.568790, 32.816372>,  <38.342785, 37.364845, 32.750763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450962, 37.568790, 32.816372>,  <38.631256, 37.908699, 32.925720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450962, 37.568790, 32.816372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664602, -0.115016, -0.738292,
		0.595935, -0.514458, 0.616599,
		-0.450739, -0.849767, -0.273368,
		38.315739, 37.313862, 32.734360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286343, 37.430786, 32.748692>,  <38.631256, 37.908699, 32.925720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286343, 37.430786, 32.748692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946941, 37.322407, 32.566864>,  <38.743301, 37.257378, 32.457767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946941, 37.322407, 32.566864>,  <39.286343, 37.430786, 32.748692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946941, 37.322407, 32.566864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465131, 0.027816, -0.884804,
		0.252381, -0.962192, 0.102425,
		-0.848503, -0.270949, -0.454566,
		38.692390, 37.241123, 32.430492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339119, 36.707150, 32.422413>,  <39.286343, 37.430786, 32.748692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339119, 36.707150, 32.422413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066750, 36.916691, 32.217697>,  <38.903328, 37.042416, 32.094868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066750, 36.916691, 32.217697>,  <39.339119, 36.707150, 32.422413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066750, 36.916691, 32.217697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537802, -0.116671, -0.834959,
		-0.497105, -0.843781, -0.202285,
		-0.680922, 0.523852, -0.511785,
		38.862473, 37.073845, 32.064163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573856, 36.553871, 31.849581>,  <39.339119, 36.707150, 32.422413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573856, 36.553871, 31.849581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287022, 36.811058, 31.741964>,  <39.114922, 36.965370, 31.677395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287022, 36.811058, 31.741964>,  <39.573856, 36.553871, 31.849581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287022, 36.811058, 31.741964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409559, 0.076380, -0.909080,
		-0.563961, -0.762074, -0.318105,
		-0.717083, 0.642969, -0.269039,
		39.071896, 37.003948, 31.661253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234383, 36.310482, 31.255217>,  <39.573856, 36.553871, 31.849581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234383, 36.310482, 31.255217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165890, 36.704311, 31.240856>,  <39.124794, 36.940609, 31.232241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165890, 36.704311, 31.240856>,  <39.234383, 36.310482, 31.255217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165890, 36.704311, 31.240856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610562, 0.077448, -0.788172,
		-0.773236, -0.156879, -0.614406,
		-0.171232, 0.984576, -0.035899,
		39.114521, 36.999683, 31.230087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877598, 36.212471, 30.793587>,  <39.234383, 36.310482, 31.255217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877598, 36.212471, 30.793587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708435, 36.573967, 30.820133>,  <39.606937, 36.790863, 30.836061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708435, 36.573967, 30.820133>,  <39.877598, 36.212471, 30.793587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708435, 36.573967, 30.820133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664685, 0.259595, 0.700574,
		0.615909, 0.340389, -0.710487,
		-0.422907, 0.903740, 0.066364,
		39.581562, 36.845089, 30.840042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407009, 36.684650, 30.626291>,  <39.877598, 36.212471, 30.793587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407009, 36.684650, 30.626291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136482, 36.839901, 30.876719>,  <39.974167, 36.933052, 31.026974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136482, 36.839901, 30.876719>,  <40.407009, 36.684650, 30.626291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136482, 36.839901, 30.876719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736040, 0.322569, 0.595142,
		0.029039, 0.863313, -0.503833,
		-0.676314, 0.388124, 0.626066,
		39.933586, 36.956337, 31.064539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839046, 37.055008, 30.983450>,  <40.407009, 36.684650, 30.626291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839046, 37.055008, 30.983450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527935, 37.057636, 31.234850>,  <40.341267, 37.059212, 31.385691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527935, 37.057636, 31.234850>,  <40.839046, 37.055008, 30.983450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527935, 37.057636, 31.234850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604729, 0.280412, 0.745434,
		-0.171343, 0.959857, -0.222071,
		-0.777782, 0.006569, 0.628500,
		40.294601, 37.059608, 31.423401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891106, 37.811512, 30.971689>,  <40.839046, 37.055008, 30.983450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891106, 37.811512, 30.971689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146885, 37.584583, 31.179245>,  <41.300354, 37.448425, 31.303778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146885, 37.584583, 31.179245>,  <40.891106, 37.811512, 30.971689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146885, 37.584583, 31.179245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751387, 0.318193, -0.578075,
		0.162849, 0.759538, 0.629748,
		0.639451, -0.567324, 0.518890,
		41.338718, 37.414387, 31.334911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401543, 38.288284, 31.221539>,  <40.891106, 37.811512, 30.971689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401543, 38.288284, 31.221539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581936, 37.933289, 31.183645>,  <41.690170, 37.720291, 31.160910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581936, 37.933289, 31.183645>,  <41.401543, 38.288284, 31.221539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581936, 37.933289, 31.183645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696706, 0.416389, -0.584141,
		0.557866, 0.197436, 0.806104,
		0.450983, -0.887490, -0.094735,
		41.717232, 37.667042, 31.155224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853172, 38.373165, 30.697866>,  <41.401543, 38.288284, 31.221539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853172, 38.373165, 30.697866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983917, 38.016068, 30.821913>,  <42.062363, 37.801807, 30.896339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983917, 38.016068, 30.821913>,  <41.853172, 38.373165, 30.697866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983917, 38.016068, 30.821913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813510, 0.098769, -0.573102,
		0.481004, 0.439604, 0.758540,
		0.326858, -0.892745, 0.310114,
		42.081974, 37.748245, 30.914948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602917, 38.382599, 30.878822>,  <41.853172, 38.373165, 30.697866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602917, 38.382599, 30.878822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512405, 37.995777, 30.832180>,  <42.458099, 37.763683, 30.804193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512405, 37.995777, 30.832180>,  <42.602917, 38.382599, 30.878822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512405, 37.995777, 30.832180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703254, -0.079364, -0.706495,
		0.673967, -0.241870, 0.698045,
		-0.226279, -0.967058, -0.116608,
		42.444523, 37.705658, 30.797197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225876, 38.027740, 30.839039>,  <42.602917, 38.382599, 30.878822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225876, 38.027740, 30.839039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948402, 37.792355, 30.672905>,  <42.781918, 37.651123, 30.573225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948402, 37.792355, 30.672905>,  <43.225876, 38.027740, 30.839039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948402, 37.792355, 30.672905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643693, -0.247738, -0.724075,
		0.323201, -0.769630, 0.550646,
		-0.693686, -0.588468, -0.415337,
		42.740295, 37.615814, 30.548304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304104, 37.165169, 30.824574>,  <43.225876, 38.027740, 30.839039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304104, 37.165169, 30.824574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178329, 37.392891, 30.520727>,  <43.102863, 37.529526, 30.338419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.178329, 37.392891, 30.520727>,  <43.304104, 37.165169, 30.824574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.178329, 37.392891, 30.520727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594888, -0.505409, -0.625036,
		-0.739756, -0.648420, -0.179756,
		-0.314436, 0.569309, -0.759617,
		43.084000, 37.563683, 30.292843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380947, 36.986713, 31.550941>,  <43.304104, 37.165169, 30.824574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380947, 36.986713, 31.550941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521542, 36.618328, 31.618216>,  <43.605896, 36.397297, 31.658581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521542, 36.618328, 31.618216>,  <43.380947, 36.986713, 31.550941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521542, 36.618328, 31.618216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915979, 0.375429, 0.141550,
		-0.193504, 0.104301, 0.975540,
		0.351482, -0.920964, 0.168185,
		43.626987, 36.342037, 31.668671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792145, 36.931351, 32.233273>,  <43.380947, 36.986713, 31.550941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792145, 36.931351, 32.233273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906914, 36.683891, 31.940712>,  <43.975773, 36.535416, 31.765175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.906914, 36.683891, 31.940712>,  <43.792145, 36.931351, 32.233273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906914, 36.683891, 31.940712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906501, 0.422201, -0.001508,
		0.309732, -0.662584, 0.681945,
		0.286919, -0.618650, -0.731402,
		43.992989, 36.498295, 31.721291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423744, 37.064152, 32.330212>,  <43.792145, 36.931351, 32.233273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423744, 37.064152, 32.330212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419765, 36.865604, 31.982988>,  <44.417377, 36.746475, 31.774654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419765, 36.865604, 31.982988>,  <44.423744, 37.064152, 32.330212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419765, 36.865604, 31.982988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943239, 0.283534, -0.172940,
		0.331965, -0.820504, 0.465373,
		-0.009949, -0.496368, -0.868055,
		44.416782, 36.716694, 31.722572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099323, 37.253750, 32.545826>,  <44.423744, 37.064152, 32.330212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099323, 37.253750, 32.545826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305996, 36.911282, 32.544273>,  <45.430000, 36.705803, 32.543343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.305996, 36.911282, 32.544273>,  <45.099323, 37.253750, 32.545826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305996, 36.911282, 32.544273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472569, 0.281405, 0.835159,
		-0.713945, -0.433346, 0.549996,
		0.516684, -0.856168, -0.003878,
		45.461002, 36.654430, 32.543110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161545, 37.001297, 33.222340>,  <45.099323, 37.253750, 32.545826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161545, 37.001297, 33.222340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465019, 36.809765, 33.045650>,  <45.647102, 36.694847, 32.939636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465019, 36.809765, 33.045650>,  <45.161545, 37.001297, 33.222340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465019, 36.809765, 33.045650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536640, 0.074942, 0.840477,
		-0.369339, -0.874705, 0.313815,
		0.758688, -0.478826, -0.441722,
		45.692627, 36.666119, 32.913136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403297, 36.510811, 33.662971>,  <45.161545, 37.001297, 33.222340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403297, 36.510811, 33.662971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711147, 36.601044, 33.424046>,  <45.895859, 36.655186, 33.280689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.711147, 36.601044, 33.424046>,  <45.403297, 36.510811, 33.662971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711147, 36.601044, 33.424046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633711, -0.155604, 0.757758,
		0.077996, -0.961716, -0.262714,
		0.769627, 0.225587, -0.597314,
		45.942036, 36.668720, 33.244850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870155, 35.976028, 33.301838>,  <45.403297, 36.510811, 33.662971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870155, 35.976028, 33.301838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026886, 36.323620, 33.422726>,  <46.120926, 36.532177, 33.495258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026886, 36.323620, 33.422726>,  <45.870155, 35.976028, 33.301838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026886, 36.323620, 33.422726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634438, -0.493099, 0.595266,
		0.666302, -0.041500, -0.744527,
		0.391829, 0.868983, 0.302224,
		46.144436, 36.584316, 33.513393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658859, 35.964542, 33.342484>,  <45.870155, 35.976028, 33.301838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658859, 35.964542, 33.342484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470474, 36.199356, 33.605873>,  <46.357445, 36.340244, 33.763908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.470474, 36.199356, 33.605873>,  <46.658859, 35.964542, 33.342484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.470474, 36.199356, 33.605873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514855, -0.423211, 0.745531,
		0.716325, 0.690134, -0.102921,
		-0.470959, 0.587032, 0.658476,
		46.329185, 36.375465, 33.803417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.686428, 35.862160, 34.046452>,  <46.658859, 35.964542, 33.342484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.686428, 35.862160, 34.046452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570694, 35.561562, 34.283615>,  <46.501255, 35.381203, 34.425915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.570694, 35.561562, 34.283615>,  <46.686428, 35.862160, 34.046452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.570694, 35.561562, 34.283615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910268, -0.024375, 0.413302,
		-0.296142, 0.659288, 0.691114,
		-0.289331, -0.751495, 0.592910,
		46.483894, 35.336113, 34.461487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019104, 35.964535, 34.739693>,  <46.686428, 35.862160, 34.046452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019104, 35.964535, 34.739693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935165, 35.579426, 34.671539>,  <46.884804, 35.348358, 34.630650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935165, 35.579426, 34.671539>,  <47.019104, 35.964535, 34.739693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935165, 35.579426, 34.671539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941951, -0.245783, 0.228735,
		-0.262097, -0.112491, 0.958463,
		-0.209844, -0.962775, -0.170380,
		46.872211, 35.290592, 34.620426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096119, 35.454739, 35.345638>,  <47.019104, 35.964535, 34.739693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096119, 35.454739, 35.345638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192257, 35.304951, 34.987419>,  <47.249939, 35.215076, 34.772488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192257, 35.304951, 34.987419>,  <47.096119, 35.454739, 35.345638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192257, 35.304951, 34.987419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917774, -0.212782, 0.335284,
		-0.316110, -0.902494, 0.292537,
		0.240345, -0.374470, -0.895548,
		47.264362, 35.192612, 34.718754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.347183, 34.761562, 35.393238>,  <47.096119, 35.454739, 35.345638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.347183, 34.761562, 35.393238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498322, 34.924843, 35.060829>,  <47.589005, 35.022812, 34.861382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498322, 34.924843, 35.060829>,  <47.347183, 34.761562, 35.393238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498322, 34.924843, 35.060829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919440, -0.271015, 0.284923,
		-0.108916, -0.871736, -0.477717,
		0.377846, 0.408200, -0.831027,
		47.611675, 35.047302, 34.811520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.085396, 33.757763, 22.033171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763084, 33.843277, 21.812256>,  <39.569698, 33.894585, 21.679707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.763084, 33.843277, 21.812256>,  <40.085396, 33.757763, 22.033171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763084, 33.843277, 21.812256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551388, 0.069452, 0.831353,
		0.216091, 0.974408, 0.061918,
		-0.805776, 0.213789, -0.552285,
		39.521351, 33.907413, 21.646570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.834236, 34.277050, 22.305994>,  <40.085396, 33.757763, 22.033171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.834236, 34.277050, 22.305994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.521282, 34.120007, 22.112610>,  <39.333511, 34.025780, 21.996578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.521282, 34.120007, 22.112610>,  <39.834236, 34.277050, 22.305994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521282, 34.120007, 22.112610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552813, 0.080266, 0.829431,
		-0.286837, 0.916196, -0.279838,
		-0.782383, -0.392609, -0.483462,
		39.286568, 34.002224, 21.967571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351921, 34.670567, 22.362358>,  <39.834236, 34.277050, 22.305994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351921, 34.670567, 22.362358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132553, 34.345779, 22.282415>,  <39.000935, 34.150906, 22.234449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132553, 34.345779, 22.282415>,  <39.351921, 34.670567, 22.362358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132553, 34.345779, 22.282415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578413, 0.195751, 0.791909,
		-0.603884, 0.549896, -0.577007,
		-0.548418, -0.811970, -0.199856,
		38.968029, 34.102188, 22.222458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625946, 34.805191, 22.548668>,  <39.351921, 34.670567, 22.362358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625946, 34.805191, 22.548668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626804, 34.405655, 22.529438>,  <38.627319, 34.165932, 22.517900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626804, 34.405655, 22.529438>,  <38.625946, 34.805191, 22.548668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626804, 34.405655, 22.529438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739413, -0.033951, 0.672395,
		-0.673249, 0.034107, -0.738629,
		0.002144, -0.998841, -0.048077,
		38.627449, 34.106003, 22.515015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895885, 34.631073, 22.600195>,  <38.625946, 34.805191, 22.548668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895885, 34.631073, 22.600195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.114883, 34.306953, 22.683784>,  <38.246284, 34.112484, 22.733938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.114883, 34.306953, 22.683784>,  <37.895885, 34.631073, 22.600195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114883, 34.306953, 22.683784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510504, -0.125554, 0.850660,
		-0.663048, -0.572415, -0.482399,
		0.547498, -0.810294, 0.208972,
		38.279133, 34.063866, 22.746475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449574, 34.117218, 22.767855>,  <37.895885, 34.631073, 22.600195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449574, 34.117218, 22.767855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794685, 34.011292, 22.940125>,  <38.001751, 33.947735, 23.043488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794685, 34.011292, 22.940125>,  <37.449574, 34.117218, 22.767855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794685, 34.011292, 22.940125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467343, -0.092767, 0.879196,
		-0.192878, -0.959825, -0.203800,
		0.862779, -0.264822, 0.430674,
		38.053520, 33.931847, 23.069326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290703, 33.535198, 23.169233>,  <37.449574, 34.117218, 22.767855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290703, 33.535198, 23.169233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638325, 33.659111, 23.323524>,  <37.846897, 33.733459, 23.416100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.638325, 33.659111, 23.323524>,  <37.290703, 33.535198, 23.169233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638325, 33.659111, 23.323524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378824, -0.084768, 0.921579,
		0.318188, -0.947021, 0.043687,
		0.869051, 0.309785, 0.385726,
		37.899040, 33.752045, 23.439241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451466, 33.073200, 23.692041>,  <37.290703, 33.535198, 23.169233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451466, 33.073200, 23.692041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679138, 33.388077, 23.787006>,  <37.815742, 33.577003, 23.843985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679138, 33.388077, 23.787006>,  <37.451466, 33.073200, 23.692041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679138, 33.388077, 23.787006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310811, -0.061328, 0.948491,
		0.761204, -0.613653, 0.209761,
		0.569180, 0.787191, 0.237413,
		37.849892, 33.624233, 23.858231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744606, 32.930405, 24.368071>,  <37.451466, 33.073200, 23.692041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744606, 32.930405, 24.368071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776955, 33.327827, 24.336296>,  <37.796364, 33.566280, 24.317232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776955, 33.327827, 24.336296>,  <37.744606, 32.930405, 24.368071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776955, 33.327827, 24.336296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321349, 0.101431, 0.941513,
		0.943501, -0.050618, 0.327481,
		0.080874, 0.993554, -0.079434,
		37.801216, 33.625893, 24.312466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169575, 33.164551, 24.914598>,  <37.744606, 32.930405, 24.368071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169575, 33.164551, 24.914598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950260, 33.488243, 24.830193>,  <37.818672, 33.682457, 24.779549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950260, 33.488243, 24.830193>,  <38.169575, 33.164551, 24.914598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950260, 33.488243, 24.830193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012908, 0.244104, 0.969663,
		0.836191, 0.534378, -0.123394,
		-0.548287, 0.809230, -0.211015,
		37.785774, 33.731010, 24.766888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258484, 33.685349, 25.448694>,  <38.169575, 33.164551, 24.914598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258484, 33.685349, 25.448694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939117, 33.844940, 25.268318>,  <37.747498, 33.940697, 25.160091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939117, 33.844940, 25.268318>,  <38.258484, 33.685349, 25.448694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939117, 33.844940, 25.268318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241166, 0.474328, 0.846671,
		0.551700, 0.784746, -0.282490,
		-0.798415, 0.398982, -0.450941,
		37.699593, 33.964634, 25.133036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230537, 34.350239, 25.686693>,  <38.258484, 33.685349, 25.448694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230537, 34.350239, 25.686693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860935, 34.310783, 25.538914>,  <37.639175, 34.287109, 25.450245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860935, 34.310783, 25.538914>,  <38.230537, 34.350239, 25.686693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860935, 34.310783, 25.538914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369774, 0.476605, 0.797568,
		0.097414, 0.873567, -0.476856,
		-0.924001, -0.098634, -0.369450,
		37.583736, 34.281193, 25.428080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800781, 34.947678, 25.889355>,  <38.230537, 34.350239, 25.686693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800781, 34.947678, 25.889355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543285, 34.649734, 25.819180>,  <37.388786, 34.470970, 25.777075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543285, 34.649734, 25.819180>,  <37.800781, 34.947678, 25.889355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543285, 34.649734, 25.819180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466661, 0.200419, 0.861429,
		-0.606483, 0.636410, -0.476615,
		-0.643744, -0.744859, -0.175437,
		37.350163, 34.426277, 25.766548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124100, 35.217091, 26.119701>,  <37.800781, 34.947678, 25.889355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124100, 35.217091, 26.119701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054794, 34.823223, 26.111650>,  <37.013210, 34.586903, 26.106821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054794, 34.823223, 26.111650>,  <37.124100, 35.217091, 26.119701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054794, 34.823223, 26.111650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528404, 0.075697, 0.845611,
		-0.831124, 0.157150, -0.533419,
		-0.173266, -0.984669, -0.020126,
		37.002815, 34.527821, 26.105614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488655, 35.093418, 26.455776>,  <37.124100, 35.217091, 26.119701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488655, 35.093418, 26.455776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654552, 34.730038, 26.476622>,  <36.754089, 34.512009, 26.489128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654552, 34.730038, 26.476622>,  <36.488655, 35.093418, 26.455776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654552, 34.730038, 26.476622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446139, -0.153096, 0.881772,
		-0.793065, -0.388955, -0.468788,
		0.414739, -0.908447, 0.052113,
		36.778973, 34.457504, 26.492256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008961, 34.650383, 26.682726>,  <36.488655, 35.093418, 26.455776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008961, 34.650383, 26.682726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336109, 34.433296, 26.759192>,  <36.532398, 34.303043, 26.805071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.336109, 34.433296, 26.759192>,  <36.008961, 34.650383, 26.682726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336109, 34.433296, 26.759192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411966, -0.320366, 0.853024,
		-0.401704, -0.776420, -0.485598,
		0.817874, -0.542713, 0.191166,
		36.581470, 34.270481, 26.816542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761528, 33.994652, 27.022402>,  <36.008961, 34.650383, 26.682726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761528, 33.994652, 27.022402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148418, 34.055641, 27.103622>,  <36.380550, 34.092236, 27.152355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.148418, 34.055641, 27.103622>,  <35.761528, 33.994652, 27.022402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148418, 34.055641, 27.103622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098363, -0.512250, 0.853185,
		0.234099, -0.845194, -0.480463,
		0.967224, 0.152470, 0.203054,
		36.438587, 34.101383, 27.164539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966515, 33.361511, 27.334518>,  <35.761528, 33.994652, 27.022402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966515, 33.361511, 27.334518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218262, 33.649109, 27.452459>,  <36.369312, 33.821667, 27.523224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.218262, 33.649109, 27.452459>,  <35.966515, 33.361511, 27.334518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218262, 33.649109, 27.452459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153197, -0.257183, 0.954142,
		0.761855, -0.645680, -0.051716,
		0.629371, 0.718996, 0.294853,
		36.407074, 33.864807, 27.540915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223866, 33.103622, 27.886776>,  <35.966515, 33.361511, 27.334518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223866, 33.103622, 27.886776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310314, 33.490440, 27.940603>,  <36.362183, 33.722530, 27.972900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310314, 33.490440, 27.940603>,  <36.223866, 33.103622, 27.886776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310314, 33.490440, 27.940603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164104, -0.099886, 0.981373,
		0.962476, -0.234182, 0.137109,
		0.216124, 0.967048, 0.134568,
		36.375153, 33.780556, 27.980974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659939, 33.064945, 28.389248>,  <36.223866, 33.103622, 27.886776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659939, 33.064945, 28.389248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536308, 33.445168, 28.377214>,  <36.462128, 33.673302, 28.369993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536308, 33.445168, 28.377214>,  <36.659939, 33.064945, 28.389248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536308, 33.445168, 28.377214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051975, 0.014704, 0.998540,
		0.949615, 0.310191, 0.044861,
		-0.309079, 0.950560, -0.030085,
		36.443584, 33.730335, 28.368189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081318, 33.364777, 28.810293>,  <36.659939, 33.064945, 28.389248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081318, 33.364777, 28.810293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777565, 33.624981, 28.804955>,  <36.595314, 33.781105, 28.801750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.777565, 33.624981, 28.804955>,  <37.081318, 33.364777, 28.810293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777565, 33.624981, 28.804955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114747, -0.113699, 0.986867,
		0.640450, 0.750938, 0.160985,
		-0.759380, 0.650511, -0.013349,
		36.549751, 33.820133, 28.800949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230968, 33.987717, 29.245892>,  <37.081318, 33.364777, 28.810293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230968, 33.987717, 29.245892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835197, 33.931900, 29.230068>,  <36.597736, 33.898411, 29.220575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.835197, 33.931900, 29.230068>,  <37.230968, 33.987717, 29.245892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835197, 33.931900, 29.230068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021712, -0.127160, 0.991645,
		-0.143404, 0.982018, 0.122785,
		-0.989426, -0.139540, -0.039556,
		36.538368, 33.890038, 29.218201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815670, 34.030727, 29.764330>,  <37.230968, 33.987717, 29.245892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815670, 34.030727, 29.764330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041451, 34.336483, 29.888985>,  <38.176918, 34.519936, 29.963778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041451, 34.336483, 29.888985>,  <37.815670, 34.030727, 29.764330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041451, 34.336483, 29.888985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315401, 0.149172, -0.937160,
		-0.762838, 0.627267, -0.156888,
		0.564447, 0.764385, 0.311635,
		38.210785, 34.565800, 29.982475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662624, 34.612141, 29.265974>,  <37.815670, 34.030727, 29.764330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662624, 34.612141, 29.265974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.005798, 34.688602, 29.456720>,  <38.211704, 34.734482, 29.571169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.005798, 34.688602, 29.456720>,  <37.662624, 34.612141, 29.265974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005798, 34.688602, 29.456720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454671, 0.149650, -0.877997,
		-0.239198, 0.970084, 0.041477,
		0.857939, 0.191157, 0.476865,
		38.263180, 34.745949, 29.599779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898434, 35.312241, 28.991360>,  <37.662624, 34.612141, 29.265974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898434, 35.312241, 28.991360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210308, 35.116573, 29.147720>,  <38.397434, 34.999172, 29.241537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210308, 35.116573, 29.147720>,  <37.898434, 35.312241, 28.991360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210308, 35.116573, 29.147720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503152, 0.117829, -0.856128,
		0.372733, 0.864192, 0.337997,
		0.779685, -0.489171, 0.390901,
		38.444214, 34.969822, 29.264990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412819, 35.730022, 28.901243>,  <37.898434, 35.312241, 28.991360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412819, 35.730022, 28.901243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589588, 35.372185, 28.927788>,  <38.695648, 35.157482, 28.943714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.589588, 35.372185, 28.927788>,  <38.412819, 35.730022, 28.901243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589588, 35.372185, 28.927788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434580, 0.148788, -0.888258,
		0.784757, 0.421382, 0.454526,
		0.441924, -0.894594, 0.066362,
		38.722164, 35.103806, 28.947697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152542, 35.875275, 28.515026>,  <38.412819, 35.730022, 28.901243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152542, 35.875275, 28.515026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082447, 35.482399, 28.542147>,  <39.040390, 35.246674, 28.558418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.082447, 35.482399, 28.542147>,  <39.152542, 35.875275, 28.515026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082447, 35.482399, 28.542147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266374, -0.113597, -0.957152,
		0.947806, -0.149669, 0.281536,
		-0.175238, -0.982189, 0.067800,
		39.029877, 35.187744, 28.562487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754333, 35.588615, 28.216526>,  <39.152542, 35.875275, 28.515026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754333, 35.588615, 28.216526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552334, 35.243393, 28.212315>,  <39.431133, 35.036259, 28.209787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.552334, 35.243393, 28.212315>,  <39.754333, 35.588615, 28.216526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552334, 35.243393, 28.212315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261910, -0.141605, -0.954647,
		0.822425, -0.484850, 0.297553,
		-0.504996, -0.863058, -0.010528,
		39.400833, 34.984474, 28.209156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169445, 34.985928, 28.111877>,  <39.754333, 35.588615, 28.216526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169445, 34.985928, 28.111877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.805157, 34.878490, 27.986376>,  <39.586582, 34.814026, 27.911076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.805157, 34.878490, 27.986376>,  <40.169445, 34.985928, 28.111877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805157, 34.878490, 27.986376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348773, -0.093228, -0.932559,
		0.221232, -0.958730, 0.178584,
		-0.910722, -0.268597, -0.313754,
		39.531940, 34.797913, 27.892250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177322, 34.383537, 27.700247>,  <40.169445, 34.985928, 28.111877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177322, 34.383537, 27.700247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.839642, 34.564137, 27.584677>,  <39.637032, 34.672497, 27.515335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.839642, 34.564137, 27.584677>,  <40.177322, 34.383537, 27.700247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839642, 34.564137, 27.584677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308731, -0.031082, -0.950641,
		-0.438189, -0.891733, -0.113151,
		-0.844201, 0.451494, -0.288926,
		39.586380, 34.699585, 27.497999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975483, 34.027592, 27.104622>,  <40.177322, 34.383537, 27.700247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975483, 34.027592, 27.104622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.786175, 34.378189, 27.069338>,  <39.672592, 34.588547, 27.048168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.786175, 34.378189, 27.069338>,  <39.975483, 34.027592, 27.104622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786175, 34.378189, 27.069338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167663, -0.008679, -0.985806,
		-0.864816, -0.481340, -0.142847,
		-0.473268, 0.876491, -0.088209,
		39.644196, 34.641136, 27.042875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469265, 33.906483, 26.555586>,  <39.975483, 34.027592, 27.104622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469265, 33.906483, 26.555586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486217, 34.305340, 26.580610>,  <39.496391, 34.544655, 26.595625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486217, 34.305340, 26.580610>,  <39.469265, 33.906483, 26.555586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486217, 34.305340, 26.580610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164923, 0.054776, -0.984784,
		-0.985395, 0.052058, -0.162130,
		0.042385, 0.997141, 0.062562,
		39.498932, 34.604481, 26.599379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421124, 34.056145, 25.957668>,  <39.469265, 33.906483, 26.555586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421124, 34.056145, 25.957668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.534973, 34.415627, 26.091122>,  <39.603283, 34.631317, 26.171194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.534973, 34.415627, 26.091122>,  <39.421124, 34.056145, 25.957668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534973, 34.415627, 26.091122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296825, 0.248308, -0.922083,
		-0.911529, 0.361477, -0.196085,
		0.284623, 0.898709, 0.333635,
		39.620361, 34.685238, 26.191212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104610, 34.490475, 25.499893>,  <39.421124, 34.056145, 25.957668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104610, 34.490475, 25.499893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.435356, 34.640762, 25.667282>,  <39.633804, 34.730934, 25.767715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.435356, 34.640762, 25.667282>,  <39.104610, 34.490475, 25.499893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435356, 34.640762, 25.667282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352330, 0.233897, -0.906176,
		-0.438352, 0.896730, 0.061023,
		0.826868, 0.375724, 0.418474,
		39.683418, 34.753479, 25.792824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228111, 35.146084, 25.191137>,  <39.104610, 34.490475, 25.499893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228111, 35.146084, 25.191137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.563499, 34.984871, 25.337851>,  <39.764732, 34.888142, 25.425879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.563499, 34.984871, 25.337851>,  <39.228111, 35.146084, 25.191137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563499, 34.984871, 25.337851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516727, 0.374221, -0.770034,
		0.173092, 0.835178, 0.522032,
		0.838470, -0.403034, 0.366784,
		39.815041, 34.863960, 25.447886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670177, 35.703377, 25.087811>,  <39.228111, 35.146084, 25.191137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670177, 35.703377, 25.087811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.904316, 35.382645, 25.135885>,  <40.044800, 35.190205, 25.164730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.904316, 35.382645, 25.135885>,  <39.670177, 35.703377, 25.087811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904316, 35.382645, 25.135885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665996, 0.390961, -0.635294,
		0.462406, 0.451913, 0.762860,
		0.585346, -0.801826, 0.120189,
		40.079918, 35.142097, 25.171942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305916, 35.958584, 25.112192>,  <39.670177, 35.703377, 25.087811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305916, 35.958584, 25.112192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.357529, 35.567364, 25.046755>,  <40.388496, 35.332630, 25.007492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.357529, 35.567364, 25.046755>,  <40.305916, 35.958584, 25.112192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357529, 35.567364, 25.046755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654609, 0.207929, -0.726810,
		0.744874, -0.013309, 0.667072,
		0.129030, -0.978053, -0.163594,
		40.396236, 35.273949, 24.997677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989964, 35.850620, 25.052094>,  <40.305916, 35.958584, 25.112192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989964, 35.850620, 25.052094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837158, 35.532650, 24.863558>,  <40.745476, 35.341869, 24.750437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.837158, 35.532650, 24.863558>,  <40.989964, 35.850620, 25.052094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837158, 35.532650, 24.863558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703827, 0.080267, -0.705822,
		0.598908, -0.601376, 0.528825,
		-0.382018, -0.794924, -0.471337,
		40.722553, 35.294174, 24.722157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540066, 35.544033, 24.778437>,  <40.989964, 35.850620, 25.052094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540066, 35.544033, 24.778437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248398, 35.361759, 24.574217>,  <41.073399, 35.252396, 24.451685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.248398, 35.361759, 24.574217>,  <41.540066, 35.544033, 24.778437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248398, 35.361759, 24.574217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601569, -0.071164, -0.795645,
		0.326231, -0.887291, 0.326017,
		-0.729169, -0.455686, -0.510551,
		41.029648, 35.225052, 24.421051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825428, 34.887932, 24.437687>,  <41.540066, 35.544033, 24.778437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825428, 34.887932, 24.437687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.520092, 35.040691, 24.229279>,  <41.336891, 35.132347, 24.104233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.520092, 35.040691, 24.229279>,  <41.825428, 34.887932, 24.437687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520092, 35.040691, 24.229279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519817, -0.115727, -0.846403,
		-0.383532, -0.916932, -0.110176,
		-0.763344, 0.381894, -0.521021,
		41.291088, 35.155258, 24.072971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.382446, 34.050888, 23.612488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.308884, 34.434216, 23.525034>,  <41.264748, 34.664211, 23.472563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.308884, 34.434216, 23.525034>,  <41.382446, 34.050888, 23.612488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308884, 34.434216, 23.525034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267009, -0.165358, -0.949401,
		-0.945984, -0.232974, -0.225470,
		-0.183903, 0.958321, -0.218632,
		41.253712, 34.721710, 23.459444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104279, 34.124660, 22.968487>,  <41.382446, 34.050888, 23.612488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104279, 34.124660, 22.968487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191326, 34.512138, 23.016275>,  <41.243553, 34.744625, 23.044949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.191326, 34.512138, 23.016275>,  <41.104279, 34.124660, 22.968487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191326, 34.512138, 23.016275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135321, 0.091278, -0.986588,
		-0.966608, 0.230865, -0.111221,
		0.217617, 0.968695, 0.119471,
		41.256611, 34.802746, 23.052116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739830, 34.481728, 22.377476>,  <41.104279, 34.124660, 22.968487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739830, 34.481728, 22.377476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012360, 34.743053, 22.509523>,  <41.175877, 34.899849, 22.588753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012360, 34.743053, 22.509523>,  <40.739830, 34.481728, 22.377476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012360, 34.743053, 22.509523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255187, 0.210703, -0.943655,
		-0.686063, 0.727173, -0.023162,
		0.681320, 0.653317, 0.330120,
		41.216755, 34.939049, 22.608559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595558, 35.182968, 21.984335>,  <40.739830, 34.481728, 22.377476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595558, 35.182968, 21.984335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974037, 35.167831, 22.112883>,  <41.201126, 35.158749, 22.190012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.974037, 35.167831, 22.112883>,  <40.595558, 35.182968, 21.984335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974037, 35.167831, 22.112883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307770, 0.411954, -0.857654,
		-0.099937, 0.910419, 0.401436,
		0.946198, -0.037838, 0.321369,
		41.257896, 35.156479, 22.209293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923016, 35.599468, 21.551340>,  <40.595558, 35.182968, 21.984335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923016, 35.599468, 21.551340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.234795, 35.422661, 21.728918>,  <41.421860, 35.316578, 21.835464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.234795, 35.422661, 21.728918>,  <40.923016, 35.599468, 21.551340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234795, 35.422661, 21.728918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560865, 0.176651, -0.808842,
		0.279100, 0.879439, 0.385602,
		0.779445, -0.442019, 0.443943,
		41.468628, 35.290054, 21.862101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513851, 36.059734, 21.316891>,  <40.923016, 35.599468, 21.551340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513851, 36.059734, 21.316891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.658688, 35.705009, 21.431751>,  <41.745590, 35.492176, 21.500668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.658688, 35.705009, 21.431751>,  <41.513851, 36.059734, 21.316891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658688, 35.705009, 21.431751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508307, -0.070372, -0.858296,
		0.781353, 0.456744, 0.425291,
		0.362093, -0.886810, 0.287152,
		41.767315, 35.438965, 21.517897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271328, 36.162777, 21.302757>,  <41.513851, 36.059734, 21.316891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271328, 36.162777, 21.302757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.140354, 35.787956, 21.254219>,  <42.061771, 35.563065, 21.225096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.140354, 35.787956, 21.254219>,  <42.271328, 36.162777, 21.302757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140354, 35.787956, 21.254219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531543, -0.076497, -0.843570,
		0.781185, -0.340713, 0.523130,
		-0.327433, -0.937050, -0.121345,
		42.042126, 35.506840, 21.217815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892467, 35.736076, 21.075537>,  <42.271328, 36.162777, 21.302757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892467, 35.736076, 21.075537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573849, 35.511288, 20.986357>,  <42.382679, 35.376415, 20.932850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573849, 35.511288, 20.986357>,  <42.892467, 35.736076, 21.075537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573849, 35.511288, 20.986357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383307, -0.184244, -0.905058,
		0.467539, -0.806377, 0.362165,
		-0.796545, -0.561970, -0.222949,
		42.334885, 35.342697, 20.919472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156334, 35.185188, 20.744457>,  <42.892467, 35.736076, 21.075537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156334, 35.185188, 20.744457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781879, 35.229416, 20.610935>,  <42.557205, 35.255951, 20.530823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.781879, 35.229416, 20.610935>,  <43.156334, 35.185188, 20.744457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781879, 35.229416, 20.610935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344384, 0.096444, -0.933862,
		-0.071062, -0.989178, -0.128362,
		-0.936136, 0.110568, -0.333804,
		42.501038, 35.262585, 20.510794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204857, 34.711323, 20.265226>,  <43.156334, 35.185188, 20.744457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204857, 34.711323, 20.265226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.866306, 34.895634, 20.158400>,  <42.663174, 35.006222, 20.094303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.866306, 34.895634, 20.158400>,  <43.204857, 34.711323, 20.265226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866306, 34.895634, 20.158400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228076, -0.139560, -0.963589,
		-0.481275, -0.876473, 0.013028,
		-0.846378, 0.460780, -0.267069,
		42.612392, 35.033867, 20.078279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036827, 34.361954, 19.714157>,  <43.204857, 34.711323, 20.265226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036827, 34.361954, 19.714157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.827209, 34.698654, 19.662268>,  <42.701439, 34.900677, 19.631134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.827209, 34.698654, 19.662268>,  <43.036827, 34.361954, 19.714157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827209, 34.698654, 19.662268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264982, 0.016384, -0.964114,
		-0.809423, -0.539610, -0.231636,
		-0.524041, 0.841756, -0.129726,
		42.669998, 34.951180, 19.623350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564365, 34.224655, 19.118759>,  <43.036827, 34.361954, 19.714157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564365, 34.224655, 19.118759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.598648, 34.619289, 19.174324>,  <42.619217, 34.856071, 19.207663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.598648, 34.619289, 19.174324>,  <42.564365, 34.224655, 19.118759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598648, 34.619289, 19.174324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123003, 0.127879, -0.984133,
		-0.988698, 0.101433, -0.110393,
		0.085707, 0.986589, 0.138910,
		42.624359, 34.915268, 19.215998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367603, 34.424850, 18.531958>,  <42.564365, 34.224655, 19.118759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367603, 34.424850, 18.531958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.516857, 34.763832, 18.683001>,  <42.606411, 34.967220, 18.773626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.516857, 34.763832, 18.683001>,  <42.367603, 34.424850, 18.531958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516857, 34.763832, 18.683001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193357, 0.327030, -0.925021,
		-0.907403, 0.418174, -0.041834,
		0.373138, 0.847456, 0.377605,
		42.628799, 35.018070, 18.796282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142830, 34.963516, 18.106714>,  <42.367603, 34.424850, 18.531958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142830, 34.963516, 18.106714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.471802, 35.104836, 18.285057>,  <42.669186, 35.189625, 18.392063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.471802, 35.104836, 18.285057>,  <42.142830, 34.963516, 18.106714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471802, 35.104836, 18.285057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329912, 0.342271, -0.879778,
		-0.463424, 0.870651, 0.164938,
		0.822433, 0.353295, 0.445855,
		42.718533, 35.210823, 18.418814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191692, 35.684345, 18.035904>,  <42.142830, 34.963516, 18.106714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191692, 35.684345, 18.035904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573177, 35.567593, 18.064863>,  <42.802067, 35.497540, 18.082239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573177, 35.567593, 18.064863>,  <42.191692, 35.684345, 18.035904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573177, 35.567593, 18.064863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176570, 0.348620, -0.920482,
		0.243432, 0.890657, 0.384020,
		0.953711, -0.291882, 0.072398,
		42.859291, 35.480026, 18.086582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487087, 36.218060, 17.772455>,  <42.191692, 35.684345, 18.035904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487087, 36.218060, 17.772455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.777866, 35.943665, 17.760012>,  <42.952332, 35.779026, 17.752546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.777866, 35.943665, 17.760012>,  <42.487087, 36.218060, 17.772455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777866, 35.943665, 17.760012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240859, 0.297136, -0.923957,
		0.643069, 0.664173, 0.381228,
		0.726945, -0.685991, -0.031107,
		42.995949, 35.737865, 17.750679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981422, 36.565437, 17.595285>,  <42.487087, 36.218060, 17.772455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981422, 36.565437, 17.595285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.103806, 36.204155, 17.474876>,  <43.177235, 35.987385, 17.402632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.103806, 36.204155, 17.474876>,  <42.981422, 36.565437, 17.595285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103806, 36.204155, 17.474876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254268, 0.382218, -0.888402,
		0.917464, 0.195269, 0.346597,
		0.305953, -0.903205, -0.301020,
		43.195591, 35.933193, 17.384571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579338, 36.670128, 17.299192>,  <42.981422, 36.565437, 17.595285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579338, 36.670128, 17.299192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.455093, 36.315937, 17.160946>,  <43.380547, 36.103424, 17.077999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.455093, 36.315937, 17.160946>,  <43.579338, 36.670128, 17.299192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455093, 36.315937, 17.160946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327347, 0.241710, -0.913466,
		0.892392, -0.396870, 0.214781,
		-0.310612, -0.885478, -0.345614,
		43.361908, 36.050293, 17.057262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086918, 36.471771, 16.904917>,  <43.579338, 36.670128, 17.299192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086918, 36.471771, 16.904917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.791096, 36.235989, 16.774933>,  <43.613602, 36.094521, 16.696943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.791096, 36.235989, 16.774933>,  <44.086918, 36.471771, 16.904917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791096, 36.235989, 16.774933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270374, 0.181965, -0.945403,
		0.616401, -0.787041, 0.024799,
		-0.739559, -0.589453, -0.324959,
		43.569229, 36.059155, 16.677444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285080, 36.551174, 16.268780>,  <44.086918, 36.471771, 16.904917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285080, 36.551174, 16.268780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.940639, 36.347809, 16.270248>,  <43.733974, 36.225788, 16.271130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.940639, 36.347809, 16.270248>,  <44.285080, 36.551174, 16.268780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940639, 36.347809, 16.270248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098312, 0.159419, -0.982304,
		0.498836, -0.846225, -0.187260,
		-0.861102, -0.508419, 0.003670,
		43.682308, 36.195282, 16.271349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300701, 35.925121, 15.779107>,  <44.285080, 36.551174, 16.268780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300701, 35.925121, 15.779107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.936905, 36.085331, 15.823671>,  <43.718628, 36.181458, 15.850410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.936905, 36.085331, 15.823671>,  <44.300701, 35.925121, 15.779107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936905, 36.085331, 15.823671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049926, 0.160820, -0.985720,
		-0.412718, -0.902064, -0.126268,
		-0.909489, 0.400521, 0.111410,
		43.664059, 36.205486, 15.857094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013203, 35.684322, 15.277484>,  <44.300701, 35.925121, 15.779107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013203, 35.684322, 15.277484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.763206, 35.979908, 15.378140>,  <43.613209, 36.157257, 15.438535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.763206, 35.979908, 15.378140>,  <44.013203, 35.684322, 15.277484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.763206, 35.979908, 15.378140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176594, 0.180161, -0.967655,
		-0.760394, -0.649215, 0.017897,
		-0.624992, 0.738960, 0.251641,
		43.575710, 36.201595, 15.453632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346066, 35.635082, 14.968531>,  <44.013203, 35.684322, 15.277484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346066, 35.635082, 14.968531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.385098, 36.027290, 15.036719>,  <43.408516, 36.262615, 15.077633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.385098, 36.027290, 15.036719>,  <43.346066, 35.635082, 14.968531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385098, 36.027290, 15.036719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301449, 0.192362, -0.933876,
		-0.948476, 0.039737, 0.314347,
		0.097578, 0.980519, 0.170472,
		43.414371, 36.321445, 15.087861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828796, 36.080891, 14.606143>,  <43.346066, 35.635082, 14.968531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828796, 36.080891, 14.606143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.480450, 36.235561, 14.484773>,  <42.271442, 36.328365, 14.411951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.480450, 36.235561, 14.484773>,  <42.828796, 36.080891, 14.606143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480450, 36.235561, 14.484773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481508, -0.547258, 0.684586,
		0.098661, 0.742287, 0.662779,
		-0.870871, 0.386675, -0.303425,
		42.219189, 36.351562, 14.393745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407616, 36.269569, 15.182131>,  <42.828796, 36.080891, 14.606143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407616, 36.269569, 15.182131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147682, 36.241840, 14.879366>,  <41.991722, 36.225204, 14.697707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.147682, 36.241840, 14.879366>,  <42.407616, 36.269569, 15.182131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147682, 36.241840, 14.879366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724829, -0.243236, 0.644561,
		-0.228789, 0.967487, 0.107817,
		-0.649829, -0.069320, -0.756913,
		41.952732, 36.221043, 14.652292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871380, 36.721264, 15.367460>,  <42.407616, 36.269569, 15.182131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871380, 36.721264, 15.367460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.698483, 36.490299, 15.090401>,  <41.594742, 36.351723, 14.924165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.698483, 36.490299, 15.090401>,  <41.871380, 36.721264, 15.367460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698483, 36.490299, 15.090401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787296, -0.132885, 0.602085,
		-0.439692, 0.805569, -0.397153,
		-0.432245, -0.577408, -0.692650,
		41.568810, 36.317078, 14.882606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121052, 36.887806, 15.323850>,  <41.871380, 36.721264, 15.367460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121052, 36.887806, 15.323850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.187931, 36.517307, 15.188725>,  <41.228058, 36.295010, 15.107651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.187931, 36.517307, 15.188725>,  <41.121052, 36.887806, 15.323850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187931, 36.517307, 15.188725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808565, -0.324877, 0.490589,
		-0.564153, 0.191116, -0.803247,
		0.167197, -0.926245, -0.337810,
		41.238091, 36.239433, 15.087382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414314, 36.752705, 15.272239>,  <41.121052, 36.887806, 15.323850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414314, 36.752705, 15.272239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638920, 36.421741, 15.276364>,  <40.773682, 36.223164, 15.278840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638920, 36.421741, 15.276364>,  <40.414314, 36.752705, 15.272239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638920, 36.421741, 15.276364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601867, -0.399836, 0.691294,
		-0.567857, -0.394377, -0.722500,
		0.561512, -0.827404, 0.010313,
		40.807373, 36.173519, 15.279459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963608, 36.255558, 15.386461>,  <40.414314, 36.752705, 15.272239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963608, 36.255558, 15.386461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.293167, 36.038479, 15.451786>,  <40.490902, 35.908230, 15.490981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.293167, 36.038479, 15.451786>,  <39.963608, 36.255558, 15.386461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293167, 36.038479, 15.451786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470993, -0.495393, 0.729898,
		-0.315210, -0.678281, -0.663760,
		0.823898, -0.542698, 0.163312,
		40.540337, 35.875671, 15.500780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708347, 35.603943, 15.425889>,  <39.963608, 36.255558, 15.386461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708347, 35.603943, 15.425889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047703, 35.662670, 15.629330>,  <40.251316, 35.697906, 15.751394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.047703, 35.662670, 15.629330>,  <39.708347, 35.603943, 15.425889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047703, 35.662670, 15.629330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402968, -0.443934, 0.800337,
		0.343288, -0.883950, -0.317468,
		0.848393, 0.146816, 0.508600,
		40.302219, 35.706715, 15.781910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709026, 35.011986, 15.953634>,  <39.708347, 35.603943, 15.425889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709026, 35.011986, 15.953634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979256, 35.270844, 16.094942>,  <40.141396, 35.426159, 16.179728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979256, 35.270844, 16.094942>,  <39.709026, 35.011986, 15.953634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979256, 35.270844, 16.094942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291867, -0.205266, 0.934173,
		0.677059, -0.734214, 0.050207,
		0.675577, 0.647144, 0.353270,
		40.181931, 35.464985, 16.200924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091900, 34.631329, 16.415792>,  <39.709026, 35.011986, 15.953634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091900, 34.631329, 16.415792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118092, 35.017639, 16.516180>,  <40.133808, 35.249428, 16.576412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.118092, 35.017639, 16.516180>,  <40.091900, 34.631329, 16.415792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118092, 35.017639, 16.516180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184386, -0.235466, 0.954231,
		0.980670, -0.108757, 0.162658,
		0.065479, 0.965778, 0.250968,
		40.137733, 35.307373, 16.591471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619648, 34.689220, 16.916363>,  <40.091900, 34.631329, 16.415792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619648, 34.689220, 16.916363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.397961, 35.017498, 16.971922>,  <40.264946, 35.214466, 17.005257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.397961, 35.017498, 16.971922>,  <40.619648, 34.689220, 16.916363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397961, 35.017498, 16.971922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126040, -0.247690, 0.960606,
		0.822771, 0.514882, 0.240716,
		-0.554222, 0.820699, 0.138897,
		40.231693, 35.263706, 17.013592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059399, 35.080696, 17.380175>,  <40.619648, 34.689220, 16.916363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059399, 35.080696, 17.380175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.675629, 35.192696, 17.393488>,  <40.445366, 35.259895, 17.401476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.675629, 35.192696, 17.393488>,  <41.059399, 35.080696, 17.380175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675629, 35.192696, 17.393488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009839, -0.084731, 0.996355,
		0.281798, 0.956254, 0.078538,
		-0.959423, 0.279998, 0.033285,
		40.387802, 35.276695, 17.403473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088535, 35.421059, 17.999115>,  <41.059399, 35.080696, 17.380175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088535, 35.421059, 17.999115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.698555, 35.377892, 17.921318>,  <40.464565, 35.351990, 17.874640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.698555, 35.377892, 17.921318>,  <41.088535, 35.421059, 17.999115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698555, 35.377892, 17.921318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198043, 0.023105, 0.979921,
		-0.101257, 0.993891, -0.043898,
		-0.974949, -0.107917, -0.194494,
		40.406071, 35.345516, 17.862970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725689, 35.858578, 18.545834>,  <41.088535, 35.421059, 17.999115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725689, 35.858578, 18.545834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.473148, 35.580742, 18.407883>,  <40.321625, 35.414040, 18.325111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.473148, 35.580742, 18.407883>,  <40.725689, 35.858578, 18.545834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473148, 35.580742, 18.407883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208247, -0.276532, 0.938170,
		-0.747015, 0.664133, 0.029941,
		-0.631349, -0.694592, -0.344877,
		40.283745, 35.372364, 18.304419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142471, 35.932556, 18.932770>,  <40.725689, 35.858578, 18.545834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142471, 35.932556, 18.932770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.137924, 35.556515, 18.796488>,  <40.135197, 35.330891, 18.714718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.137924, 35.556515, 18.796488>,  <40.142471, 35.932556, 18.932770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137924, 35.556515, 18.796488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319330, -0.319471, 0.892170,
		-0.947575, 0.118943, -0.296570,
		-0.011372, -0.940101, -0.340705,
		40.134514, 35.274483, 18.694277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607113, 35.655273, 19.253479>,  <40.142471, 35.932556, 18.932770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607113, 35.655273, 19.253479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802757, 35.322647, 19.148209>,  <39.920143, 35.123070, 19.085047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802757, 35.322647, 19.148209>,  <39.607113, 35.655273, 19.253479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802757, 35.322647, 19.148209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266893, -0.429948, 0.862504,
		-0.830385, -0.351620, -0.432232,
		0.489111, -0.831570, -0.263177,
		39.949490, 35.073177, 19.069256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125320, 35.124306, 19.264751>,  <39.607113, 35.655273, 19.253479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125320, 35.124306, 19.264751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479691, 34.941013, 19.293497>,  <39.692310, 34.831036, 19.310743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479691, 34.941013, 19.293497>,  <39.125320, 35.124306, 19.264751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479691, 34.941013, 19.293497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317755, -0.486716, 0.813720,
		-0.337897, -0.743727, -0.576798,
		0.885922, -0.458233, 0.071863,
		39.745468, 34.803543, 19.315056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958424, 34.415298, 19.410126>,  <39.125320, 35.124306, 19.264751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958424, 34.415298, 19.410126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345963, 34.435272, 19.507158>,  <39.578484, 34.447258, 19.565378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345963, 34.435272, 19.507158>,  <38.958424, 34.415298, 19.410126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345963, 34.435272, 19.507158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151338, -0.655965, 0.739464,
		0.196052, -0.753137, -0.627971,
		0.968845, 0.049937, 0.242581,
		39.636616, 34.450253, 19.579933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264370, 33.801064, 19.492605>,  <38.958424, 34.415298, 19.410126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264370, 33.801064, 19.492605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518848, 34.034855, 19.694056>,  <39.671535, 34.175129, 19.814926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.518848, 34.034855, 19.694056>,  <39.264370, 33.801064, 19.492605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518848, 34.034855, 19.694056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162583, -0.536545, 0.828061,
		0.754204, -0.608689, -0.246320,
		0.636194, 0.584480, 0.503627,
		39.709705, 34.210197, 19.845144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590927, 33.352890, 19.840864>,  <39.264370, 33.801064, 19.492605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590927, 33.352890, 19.840864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661976, 33.690742, 20.042870>,  <39.704605, 33.893456, 20.164074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661976, 33.690742, 20.042870>,  <39.590927, 33.352890, 19.840864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661976, 33.690742, 20.042870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304170, -0.440926, 0.844432,
		0.935911, -0.303602, 0.178593,
		0.177625, 0.844636, 0.505015,
		39.715263, 33.944134, 20.194374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932892, 33.100372, 20.533875>,  <39.590927, 33.352890, 19.840864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932892, 33.100372, 20.533875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824223, 33.477066, 20.613201>,  <39.759022, 33.703083, 20.660797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.824223, 33.477066, 20.613201>,  <39.932892, 33.100372, 20.533875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824223, 33.477066, 20.613201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366452, -0.291768, 0.883507,
		0.889892, 0.167350, 0.424366,
		-0.271672, 0.941735, 0.198316,
		39.742722, 33.759586, 20.672695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110996, 33.242073, 21.178410>,  <39.932892, 33.100372, 20.533875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110996, 33.242073, 21.178410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.812263, 33.496796, 21.101763>,  <39.633022, 33.649628, 21.055775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.812263, 33.496796, 21.101763>,  <40.110996, 33.242073, 21.178410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812263, 33.496796, 21.101763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510743, -0.364728, 0.778534,
		0.425885, 0.679304, 0.597635,
		-0.746836, 0.636804, -0.191618,
		39.588211, 33.687836, 21.044277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.720161, 35.261181, 26.399658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397396, 35.142624, 26.195288>,  <40.203739, 35.071487, 26.072664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397396, 35.142624, 26.195288>,  <40.720161, 35.261181, 26.399658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397396, 35.142624, 26.195288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510654, -0.084689, 0.855605,
		-0.296868, 0.951303, -0.083020,
		-0.806909, -0.296396, -0.510928,
		40.155323, 35.053703, 26.042009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207802, 35.810127, 26.406189>,  <40.720161, 35.261181, 26.399658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207802, 35.810127, 26.406189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.028198, 35.457054, 26.350676>,  <39.920437, 35.245209, 26.317368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.028198, 35.457054, 26.350676>,  <40.207802, 35.810127, 26.406189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028198, 35.457054, 26.350676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477513, 0.105766, 0.872235,
		-0.755229, 0.457913, -0.468983,
		-0.449010, -0.882683, -0.138782,
		39.893494, 35.192249, 26.309040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600700, 35.866543, 26.725447>,  <40.207802, 35.810127, 26.406189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600700, 35.866543, 26.725447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537151, 35.473614, 26.685831>,  <39.499020, 35.237858, 26.662062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537151, 35.473614, 26.685831>,  <39.600700, 35.866543, 26.725447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537151, 35.473614, 26.685831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400491, -0.027566, 0.915886,
		-0.902422, 0.185174, -0.389031,
		-0.158874, -0.982319, -0.099037,
		39.489491, 35.178917, 26.656120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931774, 35.745583, 26.927109>,  <39.600700, 35.866543, 26.725447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931774, 35.745583, 26.927109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.123840, 35.397682, 26.972666>,  <39.239082, 35.188942, 27.000000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.123840, 35.397682, 26.972666>,  <38.931774, 35.745583, 26.927109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123840, 35.397682, 26.972666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337317, -0.063231, 0.939265,
		-0.809726, -0.489422, -0.323743,
		0.480167, -0.869752, 0.113890,
		39.267891, 35.136757, 27.006832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452488, 35.237892, 27.209064>,  <38.931774, 35.745583, 26.927109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452488, 35.237892, 27.209064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803486, 35.066074, 27.294380>,  <39.014084, 34.962982, 27.345570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803486, 35.066074, 27.294380>,  <38.452488, 35.237892, 27.209064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803486, 35.066074, 27.294380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288966, -0.118616, 0.949962,
		-0.382754, -0.895220, -0.228210,
		0.877495, -0.429547, 0.213287,
		39.066734, 34.937210, 27.358366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302124, 34.691166, 27.588717>,  <38.452488, 35.237892, 27.209064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302124, 34.691166, 27.588717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688736, 34.703995, 27.690533>,  <38.920704, 34.711693, 27.751623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.688736, 34.703995, 27.690533>,  <38.302124, 34.691166, 27.588717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688736, 34.703995, 27.690533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245734, -0.169368, 0.954426,
		0.073719, -0.985031, -0.155818,
		0.966530, 0.032070, 0.254542,
		38.978695, 34.713615, 27.766895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403126, 34.166443, 28.050812>,  <38.302124, 34.691166, 27.588717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403126, 34.166443, 28.050812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697872, 34.429848, 28.111990>,  <38.874718, 34.587891, 28.148697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697872, 34.429848, 28.111990>,  <38.403126, 34.166443, 28.050812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697872, 34.429848, 28.111990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133408, -0.080146, 0.987815,
		0.662748, -0.748289, 0.028794,
		0.736863, 0.658514, 0.152944,
		38.918930, 34.627403, 28.157873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861801, 33.957443, 28.538435>,  <38.403126, 34.166443, 28.050812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861801, 33.957443, 28.538435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.941013, 34.349056, 28.557543>,  <38.988541, 34.584023, 28.569008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.941013, 34.349056, 28.557543>,  <38.861801, 33.957443, 28.538435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941013, 34.349056, 28.557543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057523, -0.037044, 0.997657,
		0.978507, -0.200314, 0.048981,
		0.198030, 0.979031, 0.047770,
		39.000423, 34.642765, 28.571875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413029, 34.002129, 29.080795>,  <38.861801, 33.957443, 28.538435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413029, 34.002129, 29.080795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184853, 34.328754, 29.045418>,  <39.047947, 34.524731, 29.024191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.184853, 34.328754, 29.045418>,  <39.413029, 34.002129, 29.080795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184853, 34.328754, 29.045418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167464, -0.010214, 0.985825,
		0.804083, 0.577169, 0.142571,
		-0.570444, 0.816561, -0.088442,
		39.013718, 34.573723, 29.018885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448647, 34.307510, 29.779074>,  <39.413029, 34.002129, 29.080795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448647, 34.307510, 29.779074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.152420, 34.513412, 29.606291>,  <38.974682, 34.636955, 29.502621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.152420, 34.513412, 29.606291>,  <39.448647, 34.307510, 29.779074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152420, 34.513412, 29.606291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292855, 0.331321, 0.896918,
		0.604808, 0.790730, -0.094617,
		-0.740569, 0.514755, -0.431955,
		38.930248, 34.667839, 29.476704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472176, 34.967014, 30.050308>,  <39.448647, 34.307510, 29.779074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472176, 34.967014, 30.050308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.100716, 34.888737, 29.924253>,  <38.877838, 34.841770, 29.848621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.100716, 34.888737, 29.924253>,  <39.472176, 34.967014, 30.050308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100716, 34.888737, 29.924253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351232, 0.190531, 0.916697,
		-0.119350, 0.961978, -0.245671,
		-0.928650, -0.195695, -0.315138,
		38.822121, 34.830029, 29.829712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109043, 35.422451, 30.459141>,  <39.472176, 34.967014, 30.050308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109043, 35.422451, 30.459141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862038, 35.137432, 30.325895>,  <38.713837, 34.966423, 30.245949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.862038, 35.137432, 30.325895>,  <39.109043, 35.422451, 30.459141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862038, 35.137432, 30.325895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556589, 0.096596, 0.825153,
		-0.555780, 0.694947, -0.456242,
		-0.617509, -0.712543, -0.333114,
		38.676785, 34.923668, 30.225962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442970, 35.712959, 30.401060>,  <39.109043, 35.422451, 30.459141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442970, 35.712959, 30.401060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449921, 35.318665, 30.468025>,  <38.454090, 35.082088, 30.508204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449921, 35.318665, 30.468025>,  <38.442970, 35.712959, 30.401060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449921, 35.318665, 30.468025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582961, 0.126041, 0.802665,
		-0.812314, -0.111544, -0.572454,
		0.017380, -0.985734, 0.167411,
		38.455135, 35.022945, 30.518248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692993, 36.303833, 30.767057>,  <38.442970, 35.712959, 30.401060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692993, 36.303833, 30.767057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.730694, 36.680485, 30.896334>,  <38.753315, 36.906475, 30.973900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.730694, 36.680485, 30.896334>,  <38.692993, 36.303833, 30.767057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730694, 36.680485, 30.896334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378486, 0.266367, -0.886452,
		-0.920796, 0.205872, -0.331288,
		0.094252, 0.941629, 0.323189,
		38.758968, 36.962975, 30.993290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400021, 36.813210, 30.346550>,  <38.692993, 36.303833, 30.767057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400021, 36.813210, 30.346550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.661144, 37.029690, 30.558565>,  <38.817818, 37.159580, 30.685776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.661144, 37.029690, 30.558565>,  <38.400021, 36.813210, 30.346550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661144, 37.029690, 30.558565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230555, 0.524559, -0.819562,
		-0.721587, 0.657219, 0.217658,
		0.652806, 0.541204, 0.530040,
		38.856987, 37.192051, 30.717577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202431, 37.374191, 29.980736>,  <38.400021, 36.813210, 30.346550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202431, 37.374191, 29.980736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551750, 37.417076, 30.170832>,  <38.761341, 37.442806, 30.284889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551750, 37.417076, 30.170832>,  <38.202431, 37.374191, 29.980736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551750, 37.417076, 30.170832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365693, 0.500262, -0.784861,
		-0.321894, 0.859210, 0.397671,
		0.873300, 0.107216, 0.475239,
		38.813740, 37.449242, 30.313404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299316, 38.001465, 29.922440>,  <38.202431, 37.374191, 29.980736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299316, 38.001465, 29.922440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.661411, 37.852039, 30.003420>,  <38.878670, 37.762383, 30.052008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.661411, 37.852039, 30.003420>,  <38.299316, 38.001465, 29.922440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661411, 37.852039, 30.003420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380526, 0.500783, -0.777442,
		0.189043, 0.780810, 0.595482,
		0.905242, -0.373566, 0.202448,
		38.932983, 37.739971, 30.064154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737709, 38.580364, 29.912586>,  <38.299316, 38.001465, 29.922440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737709, 38.580364, 29.912586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939407, 38.242130, 29.842468>,  <39.060425, 38.039188, 29.800398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.939407, 38.242130, 29.842468>,  <38.737709, 38.580364, 29.912586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939407, 38.242130, 29.842468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377553, 0.398430, -0.835887,
		0.776656, 0.355305, 0.520158,
		0.504241, -0.845584, -0.175296,
		39.090679, 37.988457, 29.789879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414307, 38.805916, 29.685385>,  <38.737709, 38.580364, 29.912586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414307, 38.805916, 29.685385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396420, 38.421009, 29.578022>,  <39.385689, 38.190063, 29.513603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.396420, 38.421009, 29.578022>,  <39.414307, 38.805916, 29.685385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396420, 38.421009, 29.578022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409840, 0.227354, -0.883369,
		0.911061, -0.149507, 0.384208,
		-0.044719, -0.962267, -0.268408,
		39.383003, 38.132328, 29.497499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973869, 38.711391, 29.296444>,  <39.414307, 38.805916, 29.685385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973869, 38.711391, 29.296444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.746521, 38.404259, 29.178202>,  <39.610111, 38.219978, 29.107256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.746521, 38.404259, 29.178202>,  <39.973869, 38.711391, 29.296444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746521, 38.404259, 29.178202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284005, 0.154108, -0.946357,
		0.772199, -0.621839, 0.130477,
		-0.568374, -0.767832, -0.295608,
		39.576008, 38.173908, 29.089520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271515, 38.376190, 28.720272>,  <39.973869, 38.711391, 29.296444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271515, 38.376190, 28.720272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.889160, 38.264164, 28.684841>,  <39.659748, 38.196949, 28.663582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.889160, 38.264164, 28.684841>,  <40.271515, 38.376190, 28.720272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889160, 38.264164, 28.684841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082809, 0.032385, -0.996039,
		0.281829, -0.959433, -0.007764,
		-0.955885, -0.280070, -0.088577,
		39.602394, 38.180141, 28.658268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212009, 37.799183, 28.222799>,  <40.271515, 38.376190, 28.720272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212009, 37.799183, 28.222799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861324, 37.991531, 28.227602>,  <39.650913, 38.106941, 28.230484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861324, 37.991531, 28.227602>,  <40.212009, 37.799183, 28.222799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861324, 37.991531, 28.227602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012430, 0.047602, -0.998789,
		-0.480862, -0.875498, -0.047711,
		-0.876709, 0.480872, 0.012007,
		39.598312, 38.135792, 28.231205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724640, 37.391739, 27.858774>,  <40.212009, 37.799183, 28.222799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724640, 37.391739, 27.858774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635761, 37.781506, 27.845240>,  <39.582436, 38.015366, 27.837118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.635761, 37.781506, 27.845240>,  <39.724640, 37.391739, 27.858774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635761, 37.781506, 27.845240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113378, -0.060291, -0.991721,
		-0.968388, -0.216519, 0.123873,
		-0.222195, 0.974415, -0.033837,
		39.569103, 38.073830, 27.835089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703751, 37.390926, 27.181221>,  <39.724640, 37.391739, 27.858774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703751, 37.390926, 27.181221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.584476, 37.758514, 27.284441>,  <39.512913, 37.979065, 27.346373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.584476, 37.758514, 27.284441>,  <39.703751, 37.390926, 27.181221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584476, 37.758514, 27.284441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185815, 0.209290, -0.960037,
		-0.936248, -0.334214, 0.108352,
		-0.298181, 0.918966, 0.258050,
		39.495022, 38.034203, 27.361856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955791, 37.424244, 26.876713>,  <39.703751, 37.390926, 27.181221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955791, 37.424244, 26.876713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.106918, 37.791862, 26.921633>,  <39.197594, 38.012432, 26.948586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.106918, 37.791862, 26.921633>,  <38.955791, 37.424244, 26.876713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106918, 37.791862, 26.921633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148783, 0.179979, -0.972353,
		-0.913849, 0.350661, 0.204737,
		0.377815, 0.919045, 0.112301,
		39.220264, 38.067577, 26.955322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520363, 37.849903, 26.393963>,  <38.955791, 37.424244, 26.876713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520363, 37.849903, 26.393963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.852558, 38.053688, 26.484062>,  <39.051876, 38.175961, 26.538122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.852558, 38.053688, 26.484062>,  <38.520363, 37.849903, 26.393963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852558, 38.053688, 26.484062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105994, 0.252449, -0.961787,
		-0.546859, 0.822628, 0.155655,
		0.830488, 0.509464, 0.225247,
		39.101704, 38.206528, 26.551636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440121, 38.489574, 26.090971>,  <38.520363, 37.849903, 26.393963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440121, 38.489574, 26.090971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832859, 38.432644, 26.141134>,  <39.068501, 38.398487, 26.171232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.832859, 38.432644, 26.141134>,  <38.440121, 38.489574, 26.090971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832859, 38.432644, 26.141134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165081, 0.315389, -0.934494,
		0.093451, 0.938229, 0.333158,
		0.981843, -0.142327, 0.125410,
		39.127411, 38.389946, 26.178757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765820, 39.102665, 25.824858>,  <38.440121, 38.489574, 26.090971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765820, 39.102665, 25.824858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052219, 38.823566, 25.816057>,  <39.224060, 38.656105, 25.810778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052219, 38.823566, 25.816057>,  <38.765820, 39.102665, 25.824858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052219, 38.823566, 25.816057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251002, 0.286720, -0.924548,
		0.651412, 0.656457, 0.380429,
		0.716003, -0.697750, -0.022001,
		39.267021, 38.614243, 25.809458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566444, 39.865482, 25.885487>,  <38.765820, 39.102665, 25.824858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566444, 39.865482, 25.885487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.229733, 39.935337, 25.681166>,  <38.027706, 39.977249, 25.558573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.229733, 39.935337, 25.681166>,  <38.566444, 39.865482, 25.885487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229733, 39.935337, 25.681166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539269, -0.315109, 0.780958,
		-0.024577, 0.932850, 0.359425,
		-0.841775, 0.174633, -0.510801,
		37.977200, 39.987728, 25.527925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204308, 40.348766, 26.281763>,  <38.566444, 39.865482, 25.885487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204308, 40.348766, 26.281763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927254, 40.194336, 26.038057>,  <37.761021, 40.101677, 25.891834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.927254, 40.194336, 26.038057>,  <38.204308, 40.348766, 26.281763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927254, 40.194336, 26.038057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579486, -0.205105, 0.788751,
		-0.429482, 0.899376, -0.081664,
		-0.692634, -0.386077, -0.609264,
		37.719463, 40.078514, 25.855278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568825, 40.482452, 26.611940>,  <38.204308, 40.348766, 26.281763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568825, 40.482452, 26.611940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.459053, 40.205696, 26.344814>,  <37.393192, 40.039642, 26.184538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.459053, 40.205696, 26.344814>,  <37.568825, 40.482452, 26.611940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459053, 40.205696, 26.344814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681712, -0.349823, 0.642568,
		-0.678203, 0.631595, -0.375669,
		-0.274425, -0.691890, -0.667817,
		37.376724, 39.998131, 26.144468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882080, 40.491032, 26.595228>,  <37.568825, 40.482452, 26.611940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882080, 40.491032, 26.595228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.986347, 40.134365, 26.447184>,  <37.048908, 39.920364, 26.358356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.986347, 40.134365, 26.447184>,  <36.882080, 40.491032, 26.595228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986347, 40.134365, 26.447184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565083, -0.451752, 0.690363,
		-0.782772, 0.029187, -0.621624,
		0.260671, -0.891666, -0.370112,
		37.064548, 39.866867, 26.336149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283176, 40.093636, 26.760809>,  <36.882080, 40.491032, 26.595228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283176, 40.093636, 26.760809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.577229, 39.840641, 26.663198>,  <36.753658, 39.688843, 26.604631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.577229, 39.840641, 26.663198>,  <36.283176, 40.093636, 26.760809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577229, 39.840641, 26.663198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290177, -0.618882, 0.729920,
		-0.612675, -0.465784, -0.638494,
		0.735138, -0.632480, -0.244014,
		36.797768, 39.650894, 26.589991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047024, 39.394741, 26.574429>,  <36.283176, 40.093636, 26.760809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047024, 39.394741, 26.574429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417717, 39.388092, 26.724566>,  <36.640133, 39.384102, 26.814648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417717, 39.388092, 26.724566>,  <36.047024, 39.394741, 26.574429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417717, 39.388092, 26.724566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301425, -0.629268, 0.716355,
		0.224281, -0.777010, -0.588178,
		0.926736, -0.016627, 0.375344,
		36.695740, 39.383102, 26.837168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089756, 38.632385, 26.709642>,  <36.047024, 39.394741, 26.574429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089756, 38.632385, 26.709642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.387432, 38.791931, 26.923967>,  <36.566036, 38.887657, 27.052563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.387432, 38.791931, 26.923967>,  <36.089756, 38.632385, 26.709642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387432, 38.791931, 26.923967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160600, -0.671781, 0.723131,
		0.648377, -0.624196, -0.435874,
		0.744187, 0.398860, 0.535813,
		36.610687, 38.911591, 27.084711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348984, 38.033234, 26.979527>,  <36.089756, 38.632385, 26.709642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348984, 38.033234, 26.979527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.524323, 38.324314, 27.190544>,  <36.629524, 38.498962, 27.317154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.524323, 38.324314, 27.190544>,  <36.348984, 38.033234, 26.979527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524323, 38.324314, 27.190544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110216, -0.538990, 0.835070,
		0.892023, -0.424194, -0.156060,
		0.438346, 0.727701, 0.527544,
		36.655827, 38.542625, 27.348808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982594, 37.828205, 27.269371>,  <36.348984, 38.033234, 26.979527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982594, 37.828205, 27.269371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916744, 38.112793, 27.542635>,  <36.877235, 38.283546, 27.706593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.916744, 38.112793, 27.542635>,  <36.982594, 37.828205, 27.269371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916744, 38.112793, 27.542635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363612, -0.687605, 0.628479,
		0.916888, -0.144940, 0.371898,
		-0.164627, 0.711472, 0.683159,
		36.867355, 38.326233, 27.747583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147911, 37.534248, 27.850481>,  <36.982594, 37.828205, 27.269371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147911, 37.534248, 27.850481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908443, 37.836842, 27.955801>,  <36.764763, 38.018398, 28.018993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908443, 37.836842, 27.955801>,  <37.147911, 37.534248, 27.850481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908443, 37.836842, 27.955801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431834, -0.581674, 0.689329,
		0.674621, 0.298979, 0.674906,
		-0.598670, 0.756483, 0.263300,
		36.728844, 38.063786, 28.034792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154533, 37.456055, 28.540686>,  <37.147911, 37.534248, 27.850481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154533, 37.456055, 28.540686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.839329, 37.683849, 28.447107>,  <36.650208, 37.820526, 28.390961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.839329, 37.683849, 28.447107>,  <37.154533, 37.456055, 28.540686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839329, 37.683849, 28.447107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527085, -0.427656, 0.734365,
		0.318161, 0.701995, 0.637163,
		-0.788007, 0.569485, -0.233948,
		36.602928, 37.854694, 28.376923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985626, 37.752872, 29.185057>,  <37.154533, 37.456055, 28.540686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985626, 37.752872, 29.185057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.673199, 37.739788, 28.935623>,  <36.485741, 37.731937, 28.785963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.673199, 37.739788, 28.935623>,  <36.985626, 37.752872, 29.185057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673199, 37.739788, 28.935623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526525, -0.502377, 0.685849,
		-0.335707, 0.864030, 0.375171,
		-0.781071, -0.032708, -0.623585,
		36.438877, 37.729977, 28.748549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.202045, 40.820763, 22.027487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870617, 40.597507, 22.009794>,  <38.671761, 40.463554, 21.999178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870617, 40.597507, 22.009794>,  <39.202045, 40.820763, 22.027487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870617, 40.597507, 22.009794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168509, 0.173256, 0.970354,
		-0.533924, 0.811461, -0.237606,
		-0.828571, -0.558134, -0.044233,
		38.622047, 40.430069, 21.996525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694496, 41.313660, 22.201271>,  <39.202045, 40.820763, 22.027487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694496, 41.313660, 22.201271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610466, 40.928604, 22.269617>,  <38.560047, 40.697571, 22.310625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610466, 40.928604, 22.269617>,  <38.694496, 41.313660, 22.201271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610466, 40.928604, 22.269617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331419, 0.234534, 0.913868,
		-0.919798, 0.135356, -0.368307,
		-0.210078, -0.962638, 0.170864,
		38.547443, 40.639812, 22.320877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986450, 41.282791, 22.581995>,  <38.694496, 41.313660, 22.201271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986450, 41.282791, 22.581995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155800, 40.925934, 22.645031>,  <38.257408, 40.711819, 22.682852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155800, 40.925934, 22.645031>,  <37.986450, 41.282791, 22.581995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155800, 40.925934, 22.645031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197863, 0.078693, 0.977066,
		-0.884085, -0.444844, -0.143206,
		0.423372, -0.892145, 0.157589,
		38.282810, 40.658291, 22.692308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563454, 41.003372, 23.085218>,  <37.986450, 41.282791, 22.581995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563454, 41.003372, 23.085218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892075, 40.775440, 23.077835>,  <38.089249, 40.638680, 23.073406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892075, 40.775440, 23.077835>,  <37.563454, 41.003372, 23.085218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892075, 40.775440, 23.077835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079557, -0.146638, 0.985986,
		-0.564550, -0.808574, -0.165805,
		0.821556, -0.569829, -0.018457,
		38.138542, 40.604492, 23.072298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314251, 40.361580, 23.355684>,  <37.563454, 41.003372, 23.085218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314251, 40.361580, 23.355684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708988, 40.396847, 23.409889>,  <37.945831, 40.418007, 23.442411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708988, 40.396847, 23.409889>,  <37.314251, 40.361580, 23.355684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708988, 40.396847, 23.409889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117775, -0.182153, 0.976191,
		0.110753, -0.979309, -0.169373,
		0.986845, 0.088168, 0.135512,
		38.005043, 40.423298, 23.450542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576679, 39.705029, 23.575642>,  <37.314251, 40.361580, 23.355684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576679, 39.705029, 23.575642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836231, 39.979168, 23.707850>,  <37.991962, 40.143654, 23.787174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836231, 39.979168, 23.707850>,  <37.576679, 39.705029, 23.575642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836231, 39.979168, 23.707850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080902, -0.369778, 0.925591,
		0.756575, -0.627340, -0.184497,
		0.648883, 0.685352, 0.330518,
		38.030895, 40.184772, 23.807005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943089, 39.325459, 24.176733>,  <37.576679, 39.705029, 23.575642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943089, 39.325459, 24.176733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069679, 39.700092, 24.236933>,  <38.145634, 39.924873, 24.273052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069679, 39.700092, 24.236933>,  <37.943089, 39.325459, 24.176733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069679, 39.700092, 24.236933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092784, -0.188457, 0.977689,
		0.944052, -0.295450, -0.146542,
		0.316475, 0.936586, 0.150500,
		38.164623, 39.981068, 24.282084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399834, 39.308117, 24.727312>,  <37.943089, 39.325459, 24.176733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399834, 39.308117, 24.727312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296902, 39.694088, 24.706541>,  <38.235142, 39.925671, 24.694078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296902, 39.694088, 24.706541>,  <38.399834, 39.308117, 24.727312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296902, 39.694088, 24.706541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057407, 0.038378, 0.997613,
		0.964617, 0.259697, 0.045518,
		-0.257331, 0.964927, -0.051928,
		38.219704, 39.983566, 24.690962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724659, 39.575039, 25.235527>,  <38.399834, 39.308117, 24.727312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724659, 39.575039, 25.235527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429821, 39.836018, 25.165092>,  <38.252918, 39.992603, 25.122831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429821, 39.836018, 25.165092>,  <38.724659, 39.575039, 25.235527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429821, 39.836018, 25.165092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190399, 0.049508, 0.980458,
		0.648411, 0.756218, 0.087732,
		-0.737097, 0.652444, -0.176084,
		38.208691, 40.031750, 25.112267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398258, 39.442863, 25.413094>,  <38.724659, 39.575039, 25.235527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398258, 39.442863, 25.413094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453903, 39.046955, 25.425735>,  <39.487289, 38.809410, 25.433321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453903, 39.046955, 25.425735>,  <39.398258, 39.442863, 25.413094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453903, 39.046955, 25.425735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535997, 0.048419, -0.842830,
		0.832680, 0.134184, 0.537251,
		0.139108, -0.989773, 0.031605,
		39.495636, 38.750023, 25.435217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031021, 39.254635, 25.149414>,  <39.398258, 39.442863, 25.413094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031021, 39.254635, 25.149414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879990, 38.887226, 25.102510>,  <39.789371, 38.666779, 25.074369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879990, 38.887226, 25.102510>,  <40.031021, 39.254635, 25.149414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879990, 38.887226, 25.102510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415866, -0.055066, -0.907757,
		0.827340, -0.391511, 0.402774,
		-0.377576, -0.918524, -0.117258,
		39.766716, 38.611668, 25.067333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579426, 38.841274, 24.986628>,  <40.031021, 39.254635, 25.149414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579426, 38.841274, 24.986628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265022, 38.648033, 24.832331>,  <40.076378, 38.532089, 24.739752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265022, 38.648033, 24.832331>,  <40.579426, 38.841274, 24.986628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265022, 38.648033, 24.832331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501431, -0.133238, -0.854877,
		0.361595, -0.865368, 0.346969,
		-0.786012, -0.483100, -0.385744,
		40.029217, 38.503101, 24.716608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939228, 38.393032, 24.492096>,  <40.579426, 38.841274, 24.986628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939228, 38.393032, 24.492096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549747, 38.376312, 24.402508>,  <40.316059, 38.366280, 24.348755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549747, 38.376312, 24.402508>,  <40.939228, 38.393032, 24.492096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549747, 38.376312, 24.402508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218869, 0.101466, -0.970464,
		0.063283, -0.993961, -0.089650,
		-0.973700, -0.041792, -0.223968,
		40.257637, 38.363773, 24.335318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866901, 37.844521, 24.046530>,  <40.939228, 38.393032, 24.492096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866901, 37.844521, 24.046530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537010, 38.063454, 23.989594>,  <40.339077, 38.194813, 23.955431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537010, 38.063454, 23.989594>,  <40.866901, 37.844521, 24.046530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537010, 38.063454, 23.989594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138446, -0.048637, -0.989175,
		-0.548327, -0.835503, -0.035663,
		-0.824724, 0.547329, -0.142341,
		40.289593, 38.227654, 23.946892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542500, 37.546574, 23.506388>,  <40.866901, 37.844521, 24.046530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542500, 37.546574, 23.506388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388607, 37.914379, 23.538572>,  <40.296272, 38.135063, 23.557882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388607, 37.914379, 23.538572>,  <40.542500, 37.546574, 23.506388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388607, 37.914379, 23.538572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002317, 0.088132, -0.996106,
		-0.923026, -0.383046, -0.036037,
		-0.384731, 0.919515, 0.080461,
		40.273190, 38.190235, 23.562710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149925, 37.596607, 22.981150>,  <40.542500, 37.546574, 23.506388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149925, 37.596607, 22.981150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143639, 37.987045, 23.067862>,  <40.139866, 38.221306, 23.119888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143639, 37.987045, 23.067862>,  <40.149925, 37.596607, 22.981150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143639, 37.987045, 23.067862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032205, 0.217190, -0.975598,
		-0.999358, -0.008355, -0.034849,
		-0.015720, 0.976094, 0.216781,
		40.138924, 38.279873, 23.132896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700996, 37.845379, 22.544359>,  <40.149925, 37.596607, 22.981150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700996, 37.845379, 22.544359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923653, 38.163536, 22.640276>,  <40.057247, 38.354431, 22.697826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923653, 38.163536, 22.640276>,  <39.700996, 37.845379, 22.544359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923653, 38.163536, 22.640276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273839, 0.096839, -0.956888,
		-0.784321, 0.598311, -0.163904,
		0.556644, 0.795391, 0.239794,
		40.090645, 38.402153, 22.712214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656654, 38.420990, 21.965460>,  <39.700996, 37.845379, 22.544359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656654, 38.420990, 21.965460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983166, 38.546341, 22.159563>,  <40.179073, 38.621552, 22.276026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983166, 38.546341, 22.159563>,  <39.656654, 38.420990, 21.965460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983166, 38.546341, 22.159563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497932, 0.044119, -0.866093,
		-0.292825, 0.948603, -0.120028,
		0.816283, 0.313380, 0.485259,
		40.228050, 38.640354, 22.305141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854439, 38.991337, 21.549089>,  <39.656654, 38.420990, 21.965460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854439, 38.991337, 21.549089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168098, 38.864460, 21.762447>,  <40.356293, 38.788334, 21.890461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168098, 38.864460, 21.762447>,  <39.854439, 38.991337, 21.549089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168098, 38.864460, 21.762447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574535, 0.046160, -0.817177,
		0.234578, 0.947238, 0.218432,
		0.784145, -0.317189, 0.533393,
		40.403343, 38.769302, 21.922466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337139, 39.464184, 21.349604>,  <39.854439, 38.991337, 21.549089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337139, 39.464184, 21.349604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522152, 39.136314, 21.484779>,  <40.633160, 38.939594, 21.565886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522152, 39.136314, 21.484779>,  <40.337139, 39.464184, 21.349604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522152, 39.136314, 21.484779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634883, 0.040153, -0.771564,
		0.618859, 0.571427, 0.538966,
		0.462534, -0.819670, 0.337940,
		40.660912, 38.890415, 21.586161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137482, 39.573036, 21.416866>,  <40.337139, 39.464184, 21.349604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137482, 39.573036, 21.416866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095051, 39.175331, 21.411386>,  <41.069592, 38.936707, 21.408098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095051, 39.175331, 21.411386>,  <41.137482, 39.573036, 21.416866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095051, 39.175331, 21.411386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513238, -0.042943, -0.857171,
		0.851666, -0.097956, 0.514849,
		-0.106074, -0.994264, -0.013702,
		41.063229, 38.877052, 21.407276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862434, 39.234188, 21.302372>,  <41.137482, 39.573036, 21.416866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862434, 39.234188, 21.302372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590973, 38.968697, 21.176584>,  <41.428097, 38.809402, 21.101110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590973, 38.968697, 21.176584>,  <41.862434, 39.234188, 21.302372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590973, 38.968697, 21.176584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463131, -0.054420, -0.884617,
		0.570034, -0.745989, 0.344326,
		-0.678653, -0.663731, -0.314470,
		41.387379, 38.769577, 21.082243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211815, 38.833412, 20.914207>,  <41.862434, 39.234188, 21.302372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211815, 38.833412, 20.914207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849453, 38.720772, 20.787687>,  <41.632038, 38.653187, 20.711775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849453, 38.720772, 20.787687>,  <42.211815, 38.833412, 20.914207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849453, 38.720772, 20.787687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351816, -0.084682, -0.932231,
		0.235729, -0.955789, 0.175784,
		-0.905902, -0.281597, -0.316299,
		41.577682, 38.636292, 20.692797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.147156, 34.067017, 18.202522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.126003, 34.396019, 18.429041>,  <37.113312, 34.593422, 18.564951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.126003, 34.396019, 18.429041>,  <37.147156, 34.067017, 18.202522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126003, 34.396019, 18.429041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117082, -0.568284, 0.814460,
		0.991713, -0.023230, 0.126354,
		-0.052884, 0.822505, 0.566295,
		37.110138, 34.642769, 18.598928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573559, 33.875549, 18.736414>,  <37.147156, 34.067017, 18.202522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573559, 33.875549, 18.736414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.358589, 34.176659, 18.888468>,  <37.229607, 34.357323, 18.979700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.358589, 34.176659, 18.888468>,  <37.573559, 33.875549, 18.736414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358589, 34.176659, 18.888468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076708, -0.492534, 0.866906,
		0.839814, 0.436739, 0.322445,
		-0.537427, 0.752775, 0.380135,
		37.197361, 34.402493, 19.002508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836487, 34.002754, 19.344385>,  <37.573559, 33.875549, 18.736414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836487, 34.002754, 19.344385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472656, 34.162350, 19.390831>,  <37.254360, 34.258106, 19.418699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.472656, 34.162350, 19.390831>,  <37.836487, 34.002754, 19.344385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472656, 34.162350, 19.390831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001723, -0.283047, 0.959105,
		0.415542, 0.872175, 0.258139,
		-0.909572, 0.398993, 0.116115,
		37.199783, 34.282047, 19.425665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889111, 34.480694, 19.850683>,  <37.836487, 34.002754, 19.344385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889111, 34.480694, 19.850683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503792, 34.374432, 19.835236>,  <37.272602, 34.310677, 19.825966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503792, 34.374432, 19.835236>,  <37.889111, 34.480694, 19.850683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503792, 34.374432, 19.835236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064971, 0.091127, 0.993717,
		-0.260466, 0.959752, -0.105042,
		-0.963295, -0.265654, -0.038621,
		37.214802, 34.294735, 19.823650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555111, 34.913570, 20.308702>,  <37.889111, 34.480694, 19.850683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555111, 34.913570, 20.308702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.284908, 34.620556, 20.275047>,  <37.122787, 34.444748, 20.254854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.284908, 34.620556, 20.275047>,  <37.555111, 34.913570, 20.308702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284908, 34.620556, 20.275047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103272, -0.018990, 0.994472,
		-0.730085, 0.680463, -0.062823,
		-0.675508, -0.732537, -0.084137,
		37.082256, 34.400795, 20.249805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934929, 35.051716, 20.786278>,  <37.555111, 34.913570, 20.308702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934929, 35.051716, 20.786278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926876, 34.659576, 20.707771>,  <36.922047, 34.424294, 20.660667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926876, 34.659576, 20.707771>,  <36.934929, 35.051716, 20.786278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926876, 34.659576, 20.707771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364497, -0.175601, 0.914498,
		-0.930987, 0.089946, -0.353798,
		-0.020128, -0.980344, -0.196267,
		36.920837, 34.365475, 20.648891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242882, 34.906738, 20.938211>,  <36.934929, 35.051716, 20.786278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242882, 34.906738, 20.938211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434204, 34.555470, 20.940451>,  <36.549000, 34.344707, 20.941793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434204, 34.555470, 20.940451>,  <36.242882, 34.906738, 20.938211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434204, 34.555470, 20.940451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367678, -0.194464, 0.909393,
		-0.797518, -0.437028, -0.415899,
		0.478308, -0.878174, 0.005597,
		36.577698, 34.292019, 20.942129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744888, 34.432613, 21.118097>,  <36.242882, 34.906738, 20.938211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744888, 34.432613, 21.118097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095936, 34.260189, 21.201973>,  <36.306564, 34.156734, 21.252298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.095936, 34.260189, 21.201973>,  <35.744888, 34.432613, 21.118097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095936, 34.260189, 21.201973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286871, -0.121836, 0.950190,
		-0.384043, -0.894059, -0.230585,
		0.877619, -0.431062, 0.209689,
		36.359222, 34.130871, 21.264879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666084, 33.720387, 21.380331>,  <35.744888, 34.432613, 21.118097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666084, 33.720387, 21.380331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023472, 33.844769, 21.509958>,  <36.237904, 33.919399, 21.587734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.023472, 33.844769, 21.509958>,  <35.666084, 33.720387, 21.380331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023472, 33.844769, 21.509958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239180, -0.281286, 0.929339,
		0.380138, -0.907847, -0.176947,
		0.893470, 0.310955, 0.324066,
		36.291512, 33.938053, 21.607178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830608, 33.173744, 21.819504>,  <35.666084, 33.720387, 21.380331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830608, 33.173744, 21.819504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027672, 33.506897, 21.920378>,  <36.145912, 33.706787, 21.980902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027672, 33.506897, 21.920378>,  <35.830608, 33.173744, 21.819504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027672, 33.506897, 21.920378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274538, -0.126241, 0.953253,
		0.825781, -0.538865, 0.166463,
		0.492661, 0.832879, 0.252187,
		36.175468, 33.756760, 21.996035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934196, 33.061573, 22.557783>,  <35.830608, 33.173744, 21.819504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934196, 33.061573, 22.557783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055458, 33.440285, 22.514511>,  <36.128216, 33.667511, 22.488548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.055458, 33.440285, 22.514511>,  <35.934196, 33.061573, 22.557783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055458, 33.440285, 22.514511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234699, 0.184205, 0.954455,
		0.923587, -0.263958, 0.278051,
		0.303154, 0.946781, -0.108179,
		36.146404, 33.724319, 22.482058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396255, 33.127338, 23.185173>,  <35.934196, 33.061573, 22.557783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396255, 33.127338, 23.185173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.260265, 33.477982, 23.048956>,  <36.178669, 33.688370, 22.967226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.260265, 33.477982, 23.048956>,  <36.396255, 33.127338, 23.185173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260265, 33.477982, 23.048956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125305, 0.316658, 0.940227,
		0.932047, 0.362329, 0.002187,
		-0.339979, 0.876610, -0.340542,
		36.158272, 33.740963, 22.946793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700306, 33.738369, 23.576683>,  <36.396255, 33.127338, 23.185173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700306, 33.738369, 23.576683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.351135, 33.869770, 23.432413>,  <36.141632, 33.948612, 23.345852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.351135, 33.869770, 23.432413>,  <36.700306, 33.738369, 23.576683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351135, 33.869770, 23.432413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191880, 0.448533, 0.872926,
		0.448533, 0.831207, -0.328503,
		-0.872926, 0.328503, -0.360674,
		36.089256, 33.968323, 23.324211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734375, 34.303608, 23.931955>,  <36.700306, 33.738369, 23.576683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734375, 34.303608, 23.931955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363495, 34.268150, 23.786385>,  <36.140968, 34.246876, 23.699041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.363495, 34.268150, 23.786385>,  <36.734375, 34.303608, 23.931955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363495, 34.268150, 23.786385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371060, 0.350057, 0.860101,
		0.051151, 0.932525, -0.357466,
		-0.927199, -0.088646, -0.363929,
		36.085335, 34.241558, 23.677206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167824, 34.726048, 24.235285>,  <36.734375, 34.303608, 23.931955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167824, 34.726048, 24.235285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349510, 34.418682, 24.415611>,  <37.458523, 34.234264, 24.523808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349510, 34.418682, 24.415611>,  <37.167824, 34.726048, 24.235285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349510, 34.418682, 24.415611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554770, -0.151986, -0.818004,
		0.697080, 0.621648, 0.357257,
		0.454213, -0.768410, 0.450818,
		37.485775, 34.188160, 24.550858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895531, 34.871571, 24.302681>,  <37.167824, 34.726048, 24.235285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895531, 34.871571, 24.302681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.847687, 34.474529, 24.294373>,  <37.818981, 34.236305, 24.289387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.847687, 34.474529, 24.294373>,  <37.895531, 34.871571, 24.302681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847687, 34.474529, 24.294373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513902, -0.043998, -0.856720,
		0.849470, -0.113145, 0.515363,
		-0.119609, -0.992604, -0.020770,
		37.811806, 34.176746, 24.288141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626038, 34.633396, 24.108234>,  <37.895531, 34.871571, 24.302681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626038, 34.633396, 24.108234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.401859, 34.308987, 24.041134>,  <38.267353, 34.114342, 24.000874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.401859, 34.308987, 24.041134>,  <38.626038, 34.633396, 24.108234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401859, 34.308987, 24.041134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579992, -0.239761, -0.778540,
		0.591197, -0.533620, 0.604761,
		-0.560443, -0.811027, -0.167749,
		38.233727, 34.065678, 23.990808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052280, 34.140518, 23.863777>,  <38.626038, 34.633396, 24.108234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052280, 34.140518, 23.863777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.702713, 34.009544, 23.720079>,  <38.492973, 33.930958, 23.633860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.702713, 34.009544, 23.720079>,  <39.052280, 34.140518, 23.863777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702713, 34.009544, 23.720079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419037, -0.132959, -0.898181,
		0.246333, -0.935471, 0.253404,
		-0.873915, -0.327438, -0.359245,
		38.440540, 33.911312, 23.612307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248455, 33.532162, 23.586853>,  <39.052280, 34.140518, 23.863777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248455, 33.532162, 23.586853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903957, 33.660145, 23.428925>,  <38.697258, 33.736935, 23.334167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903957, 33.660145, 23.428925>,  <39.248455, 33.532162, 23.586853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903957, 33.660145, 23.428925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276493, -0.356837, -0.892311,
		-0.426392, -0.877663, 0.218856,
		-0.861245, 0.319962, -0.394820,
		38.645584, 33.756134, 23.310478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052216, 33.030487, 23.005419>,  <39.248455, 33.532162, 23.586853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052216, 33.030487, 23.005419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813549, 33.340740, 22.923075>,  <38.670349, 33.526894, 22.873669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.813549, 33.340740, 22.923075>,  <39.052216, 33.030487, 23.005419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813549, 33.340740, 22.923075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175928, -0.123860, -0.976580,
		-0.782966, -0.618911, -0.062552,
		-0.596669, 0.775633, -0.205861,
		38.634548, 33.573429, 22.861317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709034, 32.817730, 22.509785>,  <39.052216, 33.030487, 23.005419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709034, 32.817730, 22.509785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684666, 33.216366, 22.487537>,  <38.670044, 33.455547, 22.474190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.684666, 33.216366, 22.487537>,  <38.709034, 32.817730, 22.509785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684666, 33.216366, 22.487537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337407, -0.031879, -0.940819,
		-0.939386, -0.076079, -0.334315,
		-0.060919, 0.996592, -0.055616,
		38.666389, 33.515343, 22.470852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352097, 33.042000, 21.803337>,  <38.709034, 32.817730, 22.509785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352097, 33.042000, 21.803337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.552071, 33.362396, 21.935081>,  <38.672054, 33.554634, 22.014128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.552071, 33.362396, 21.935081>,  <38.352097, 33.042000, 21.803337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552071, 33.362396, 21.935081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374306, 0.143109, -0.916196,
		-0.780999, 0.581321, -0.228270,
		0.499936, 0.800991, 0.329360,
		38.702053, 33.602692, 22.033890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388309, 33.404102, 21.235123>,  <38.352097, 33.042000, 21.803337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388309, 33.404102, 21.235123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.630787, 33.631386, 21.457714>,  <38.776272, 33.767757, 21.591269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.630787, 33.631386, 21.457714>,  <38.388309, 33.404102, 21.235123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630787, 33.631386, 21.457714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531403, 0.231203, -0.814958,
		-0.591728, 0.789734, -0.161796,
		0.606193, 0.568212, 0.556476,
		38.812645, 33.801849, 21.624657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370872, 34.038799, 20.962288>,  <38.388309, 33.404102, 21.235123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370872, 34.038799, 20.962288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.720268, 33.999699, 21.153061>,  <38.929905, 33.976238, 21.267525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.720268, 33.999699, 21.153061>,  <38.370872, 34.038799, 20.962288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720268, 33.999699, 21.153061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486806, 0.162697, -0.858225,
		0.006302, 0.981821, 0.189702,
		0.873487, -0.097756, 0.476931,
		38.982315, 33.970371, 21.296141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705063, 34.563194, 20.715364>,  <38.370872, 34.038799, 20.962288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705063, 34.563194, 20.715364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983238, 34.301277, 20.833761>,  <39.150143, 34.144127, 20.904800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.983238, 34.301277, 20.833761>,  <38.705063, 34.563194, 20.715364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983238, 34.301277, 20.833761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637437, 0.371991, -0.674757,
		0.331717, 0.657931, 0.676085,
		0.695441, -0.654790, 0.295994,
		39.191872, 34.104839, 20.922560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240906, 34.885422, 20.995390>,  <38.705063, 34.563194, 20.715364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240906, 34.885422, 20.995390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.414852, 34.543335, 20.882610>,  <39.519222, 34.338081, 20.814943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.414852, 34.543335, 20.882610>,  <39.240906, 34.885422, 20.995390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414852, 34.543335, 20.882610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420055, 0.469606, -0.776546,
		0.796520, 0.219261, 0.563454,
		0.434868, -0.855216, -0.281948,
		39.545311, 34.286770, 20.798025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906174, 35.035435, 20.876654>,  <39.240906, 34.885422, 20.995390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906174, 35.035435, 20.876654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828003, 34.711742, 20.655039>,  <39.781101, 34.517529, 20.522070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.828003, 34.711742, 20.655039>,  <39.906174, 35.035435, 20.876654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828003, 34.711742, 20.655039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446415, 0.429610, -0.784951,
		0.873225, -0.400731, 0.277294,
		-0.195426, -0.809228, -0.554039,
		39.769375, 34.468975, 20.488827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570671, 34.832897, 20.546186>,  <39.906174, 35.035435, 20.876654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570671, 34.832897, 20.546186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.280602, 34.660717, 20.331213>,  <40.106560, 34.557411, 20.202229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.280602, 34.660717, 20.331213>,  <40.570671, 34.832897, 20.546186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280602, 34.660717, 20.331213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545210, 0.117758, -0.829988,
		0.420553, -0.894901, 0.149289,
		-0.725177, -0.430448, -0.537432,
		40.063049, 34.531582, 20.169983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315586, 34.562077, 20.532310>,  <40.570671, 34.832897, 20.546186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315586, 34.562077, 20.532310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.623451, 34.796116, 20.634501>,  <41.808170, 34.936539, 20.695814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.623451, 34.796116, 20.634501>,  <41.315586, 34.562077, 20.532310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623451, 34.796116, 20.634501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340890, 0.038278, 0.939323,
		0.539821, -0.810056, 0.228917,
		0.769667, 0.585102, 0.255477,
		41.854351, 34.971645, 20.711143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611618, 34.258533, 21.162699>,  <41.315586, 34.562077, 20.532310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611618, 34.258533, 21.162699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.747005, 34.634918, 21.160604>,  <41.828239, 34.860748, 21.159348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.747005, 34.634918, 21.160604>,  <41.611618, 34.258533, 21.162699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747005, 34.634918, 21.160604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147473, 0.058542, 0.987332,
		0.929348, -0.333412, 0.158582,
		0.338472, 0.940962, -0.005236,
		41.848549, 34.917206, 21.159033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084270, 34.268085, 21.754892>,  <41.611618, 34.258533, 21.162699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084270, 34.268085, 21.754892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.993515, 34.651138, 21.683935>,  <41.939060, 34.880970, 21.641361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.993515, 34.651138, 21.683935>,  <42.084270, 34.268085, 21.754892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993515, 34.651138, 21.683935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254010, 0.117652, 0.960019,
		0.940212, 0.262881, 0.216553,
		-0.226893, 0.957628, -0.177392,
		41.925446, 34.938427, 21.630718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553898, 34.730473, 22.254646>,  <42.084270, 34.268085, 21.754892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553898, 34.730473, 22.254646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.231480, 34.940723, 22.145828>,  <42.038029, 35.066872, 22.080538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.231480, 34.940723, 22.145828>,  <42.553898, 34.730473, 22.254646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231480, 34.940723, 22.145828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304333, 0.026136, 0.952207,
		0.507612, 0.850316, 0.138897,
		-0.806047, 0.525623, -0.272046,
		41.989666, 35.098412, 22.064215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489540, 35.266052, 22.663916>,  <42.553898, 34.730473, 22.254646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489540, 35.266052, 22.663916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.121555, 35.244099, 22.508659>,  <41.900764, 35.230927, 22.415504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.121555, 35.244099, 22.508659>,  <42.489540, 35.266052, 22.663916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121555, 35.244099, 22.508659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391710, 0.090412, 0.915636,
		-0.015164, 0.994391, -0.104676,
		-0.919964, -0.054887, -0.388142,
		41.845566, 35.227634, 22.392218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103321, 35.789288, 22.986984>,  <42.489540, 35.266052, 22.663916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103321, 35.789288, 22.986984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.818146, 35.530727, 22.878258>,  <41.647041, 35.375591, 22.813023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.818146, 35.530727, 22.878258>,  <42.103321, 35.789288, 22.986984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818146, 35.530727, 22.878258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423749, 0.088298, 0.901465,
		-0.558705, 0.757873, -0.336862,
		-0.712941, -0.646399, -0.271815,
		41.604263, 35.336807, 22.796713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405437, 36.054607, 23.198751>,  <42.103321, 35.789288, 22.986984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405437, 36.054607, 23.198751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388939, 35.656956, 23.158754>,  <41.379040, 35.418365, 23.134756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.388939, 35.656956, 23.158754>,  <41.405437, 36.054607, 23.198751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388939, 35.656956, 23.158754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532797, -0.062776, 0.843911,
		-0.845237, 0.088089, -0.527082,
		-0.041251, -0.994133, -0.099994,
		41.376564, 35.358715, 23.128756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675541, 35.914684, 23.349874>,  <41.405437, 36.054607, 23.198751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675541, 35.914684, 23.349874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897579, 35.584320, 23.389357>,  <41.030804, 35.386101, 23.413046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.897579, 35.584320, 23.389357>,  <40.675541, 35.914684, 23.349874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897579, 35.584320, 23.389357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563412, -0.286043, 0.775078,
		-0.611910, -0.485855, -0.624108,
		0.555097, -0.825908, 0.098704,
		41.064110, 35.336548, 23.418968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203506, 35.459839, 23.433739>,  <40.675541, 35.914684, 23.349874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203506, 35.459839, 23.433739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542675, 35.331802, 23.602770>,  <40.746178, 35.254982, 23.704187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.542675, 35.331802, 23.602770>,  <40.203506, 35.459839, 23.433739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542675, 35.331802, 23.602770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518822, -0.337385, 0.785490,
		-0.108855, -0.885277, -0.452145,
		0.847923, -0.320087, 0.422575,
		40.797050, 35.235775, 23.729542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197994, 34.721230, 23.653687>,  <40.203506, 35.459839, 23.433739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197994, 34.721230, 23.653687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.441151, 34.909027, 23.909822>,  <40.587044, 35.021706, 24.063505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.441151, 34.909027, 23.909822>,  <40.197994, 34.721230, 23.653687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441151, 34.909027, 23.909822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422876, -0.491139, 0.761550,
		0.672040, -0.733728, -0.100023,
		0.607896, 0.469495, 0.640342,
		40.623520, 35.049877, 24.101925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372177, 34.219219, 24.127052>,  <40.197994, 34.721230, 23.653687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372177, 34.219219, 24.127052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.480343, 34.559898, 24.306599>,  <40.545242, 34.764305, 24.414328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.480343, 34.559898, 24.306599>,  <40.372177, 34.219219, 24.127052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480343, 34.559898, 24.306599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221272, -0.398773, 0.889954,
		0.936970, -0.339980, 0.080622,
		0.270417, 0.851700, 0.448867,
		40.561466, 34.815407, 24.441259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636482, 34.013123, 24.819506>,  <40.372177, 34.219219, 24.127052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636482, 34.013123, 24.819506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.562828, 34.402035, 24.877148>,  <40.518635, 34.635384, 24.911734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.562828, 34.402035, 24.877148>,  <40.636482, 34.013123, 24.819506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562828, 34.402035, 24.877148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407687, -0.208958, 0.888891,
		0.894362, 0.104929, 0.434863,
		-0.184139, 0.972279, 0.144105,
		40.507587, 34.693718, 24.920380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875992, 34.116089, 25.451540>,  <40.636482, 34.013123, 24.819506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875992, 34.116089, 25.451540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647186, 34.439114, 25.394070>,  <40.509903, 34.632927, 25.359587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.647186, 34.439114, 25.394070>,  <40.875992, 34.116089, 25.451540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647186, 34.439114, 25.394070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467906, -0.177391, 0.865792,
		0.673695, 0.562472, 0.479334,
		-0.572013, 0.807563, -0.143676,
		40.475582, 34.681381, 25.350967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986168, 34.572411, 25.934530>,  <40.875992, 34.116089, 25.451540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986168, 34.572411, 25.934530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.615669, 34.642467, 25.801027>,  <40.393372, 34.684502, 25.720926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.615669, 34.642467, 25.801027>,  <40.986168, 34.572411, 25.934530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615669, 34.642467, 25.801027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376440, -0.385241, 0.842545,
		0.018989, 0.906044, 0.422759,
		-0.926247, 0.175142, -0.333755,
		40.337795, 34.695011, 25.700901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.281101, 38.227406, 20.513426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.923496, 38.361637, 20.394674>,  <41.708935, 38.442177, 20.323423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.923496, 38.361637, 20.394674>,  <42.281101, 38.227406, 20.513426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923496, 38.361637, 20.394674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201456, -0.290782, -0.935340,
		-0.400207, -0.896010, 0.192357,
		-0.894008, 0.335578, -0.296880,
		41.655293, 38.462311, 20.305611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998119, 37.701752, 20.213785>,  <42.281101, 38.227406, 20.513426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998119, 37.701752, 20.213785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.800732, 38.016212, 20.064949>,  <41.682301, 38.204887, 19.975647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.800732, 38.016212, 20.064949>,  <41.998119, 37.701752, 20.213785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800732, 38.016212, 20.064949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269504, -0.268542, -0.924799,
		-0.826955, -0.556640, -0.079354,
		-0.493470, 0.786154, -0.372089,
		41.652691, 38.252060, 19.953321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737301, 37.467838, 19.648279>,  <41.998119, 37.701752, 20.213785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737301, 37.467838, 19.648279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.671692, 37.857449, 19.585827>,  <41.632328, 38.091213, 19.548355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.671692, 37.857449, 19.585827>,  <41.737301, 37.467838, 19.648279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671692, 37.857449, 19.585827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165448, -0.128869, -0.977763,
		-0.972484, -0.186203, -0.140013,
		-0.164019, 0.974023, -0.156130,
		41.622486, 38.149654, 19.538988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451332, 37.485107, 18.963606>,  <41.737301, 37.467838, 19.648279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451332, 37.485107, 18.963606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.600891, 37.847641, 19.042356>,  <41.690624, 38.065163, 19.089607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.600891, 37.847641, 19.042356>,  <41.451332, 37.485107, 18.963606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600891, 37.847641, 19.042356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436066, 0.015559, -0.899780,
		-0.818566, 0.422273, -0.389404,
		0.373894, 0.906335, 0.196876,
		41.713058, 38.119541, 19.101419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297485, 38.001228, 18.455374>,  <41.451332, 37.485107, 18.963606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297485, 38.001228, 18.455374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.615704, 38.178715, 18.620409>,  <41.806633, 38.285206, 18.719431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.615704, 38.178715, 18.620409>,  <41.297485, 38.001228, 18.455374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615704, 38.178715, 18.620409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302221, 0.299596, -0.904934,
		-0.525142, 0.844606, 0.104241,
		0.795543, 0.443715, 0.412588,
		41.854366, 38.311829, 18.744184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362236, 38.569820, 18.163836>,  <41.297485, 38.001228, 18.455374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362236, 38.569820, 18.163836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.731815, 38.540272, 18.313959>,  <41.953564, 38.522541, 18.404034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.731815, 38.540272, 18.313959>,  <41.362236, 38.569820, 18.163836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731815, 38.540272, 18.313959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374710, 0.371964, -0.849256,
		-0.076864, 0.925303, 0.371358,
		0.923950, -0.073875, 0.375311,
		42.008999, 38.518108, 18.426552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663338, 39.319698, 18.139048>,  <41.362236, 38.569820, 18.163836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663338, 39.319698, 18.139048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.953846, 39.044739, 18.140543>,  <42.128151, 38.879761, 18.141439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.953846, 39.044739, 18.140543>,  <41.663338, 39.319698, 18.139048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953846, 39.044739, 18.140543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280430, 0.291315, -0.914601,
		0.627609, 0.665294, 0.404341,
		0.726269, -0.687400, 0.003736,
		42.171726, 38.838520, 18.141665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221046, 39.693569, 17.872896>,  <41.663338, 39.319698, 18.139048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221046, 39.693569, 17.872896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.335087, 39.313679, 17.821154>,  <42.403511, 39.085743, 17.790108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.335087, 39.313679, 17.821154>,  <42.221046, 39.693569, 17.872896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335087, 39.313679, 17.821154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372399, 0.234111, -0.898060,
		0.883198, 0.207862, 0.420423,
		0.285098, -0.949729, -0.129358,
		42.420616, 39.028759, 17.782347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801975, 39.762241, 17.469673>,  <42.221046, 39.693569, 17.872896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801975, 39.762241, 17.469673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.729549, 39.370026, 17.439301>,  <42.686096, 39.134697, 17.421078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.729549, 39.370026, 17.439301>,  <42.801975, 39.762241, 17.469673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729549, 39.370026, 17.439301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594561, -0.047633, -0.802638,
		0.783399, -0.190473, 0.591613,
		-0.181061, -0.980536, -0.075932,
		42.675232, 39.075867, 17.416521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416603, 39.536602, 17.319336>,  <42.801975, 39.762241, 17.469673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416603, 39.536602, 17.319336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.187145, 39.223190, 17.223822>,  <43.049473, 39.035145, 17.166513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.187145, 39.223190, 17.223822>,  <43.416603, 39.536602, 17.319336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187145, 39.223190, 17.223822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569657, -0.172141, -0.803653,
		0.588581, -0.597034, 0.545090,
		-0.573641, -0.783529, -0.238786,
		43.015053, 38.988132, 17.152185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923615, 39.062996, 16.949562>,  <43.416603, 39.536602, 17.319336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923615, 39.062996, 16.949562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.555687, 38.943645, 16.847652>,  <43.334930, 38.872036, 16.786507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.555687, 38.943645, 16.847652>,  <43.923615, 39.062996, 16.949562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555687, 38.943645, 16.847652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314814, -0.173729, -0.933119,
		0.234155, -0.938505, 0.253731,
		-0.919817, -0.298373, -0.254775,
		43.279743, 38.854134, 16.771219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114326, 38.538326, 16.471033>,  <43.923615, 39.062996, 16.949562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114326, 38.538326, 16.471033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.732212, 38.631180, 16.397776>,  <43.502941, 38.686890, 16.353821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.732212, 38.631180, 16.397776>,  <44.114326, 38.538326, 16.471033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732212, 38.631180, 16.397776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141637, -0.184454, -0.972582,
		-0.259550, -0.955035, 0.143327,
		-0.955287, 0.232133, -0.183143,
		43.445625, 38.700817, 16.342833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845211, 37.976036, 16.388460>,  <44.114326, 38.538326, 16.471033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845211, 37.976036, 16.388460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.643158, 38.264061, 16.198153>,  <43.521927, 38.436874, 16.083969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.643158, 38.264061, 16.198153>,  <43.845211, 37.976036, 16.388460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643158, 38.264061, 16.198153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110884, -0.492552, -0.863190,
		-0.855888, -0.488782, 0.168962,
		-0.505134, 0.720059, -0.475767,
		43.491619, 38.480080, 16.055422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499641, 37.641079, 15.903614>,  <43.845211, 37.976036, 16.388460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499641, 37.641079, 15.903614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.475658, 38.019375, 15.775876>,  <43.461269, 38.246353, 15.699233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.475658, 38.019375, 15.775876>,  <43.499641, 37.641079, 15.903614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475658, 38.019375, 15.775876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024349, -0.318439, -0.947631,
		-0.997904, -0.064593, -0.003935,
		-0.059957, 0.945740, -0.319344,
		43.457672, 38.303097, 15.680073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827679, 37.248264, 15.635069>,  <43.499641, 37.641079, 15.903614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827679, 37.248264, 15.635069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.036270, 36.909504, 15.593458>,  <43.161423, 36.706249, 15.568492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.036270, 36.909504, 15.593458>,  <42.827679, 37.248264, 15.635069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036270, 36.909504, 15.593458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112419, -0.189046, 0.975512,
		-0.845829, -0.497010, -0.193790,
		0.521475, -0.846902, -0.104027,
		43.192711, 36.655434, 15.562250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485760, 36.751038, 16.113466>,  <42.827679, 37.248264, 15.635069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485760, 36.751038, 16.113466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.829590, 36.574013, 16.011284>,  <43.035889, 36.467796, 15.949974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.829590, 36.574013, 16.011284>,  <42.485760, 36.751038, 16.113466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829590, 36.574013, 16.011284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008263, -0.487813, 0.872909,
		-0.510937, -0.752444, -0.415656,
		0.859578, -0.442567, -0.255459,
		43.087463, 36.441242, 15.934647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429935, 36.021275, 16.279085>,  <42.485760, 36.751038, 16.113466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429935, 36.021275, 16.279085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.828102, 36.006828, 16.243660>,  <43.067001, 35.998161, 16.222404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.828102, 36.006828, 16.243660>,  <42.429935, 36.021275, 16.279085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828102, 36.006828, 16.243660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044715, -0.642844, 0.764691,
		-0.084549, -0.765146, -0.638282,
		0.995416, -0.036113, -0.088565,
		43.126728, 35.995995, 16.217091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520809, 35.344059, 16.353777>,  <42.429935, 36.021275, 16.279085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520809, 35.344059, 16.353777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856037, 35.539291, 16.451277>,  <43.057175, 35.656433, 16.509777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.856037, 35.539291, 16.451277>,  <42.520809, 35.344059, 16.353777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856037, 35.539291, 16.451277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074280, -0.544704, 0.835332,
		0.540483, -0.681961, -0.492755,
		0.838069, 0.488085, 0.243748,
		43.107456, 35.685719, 16.524401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034138, 34.871883, 16.598898>,  <42.520809, 35.344059, 16.353777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034138, 34.871883, 16.598898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.153271, 35.223610, 16.747549>,  <43.224751, 35.434647, 16.836740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.153271, 35.223610, 16.747549>,  <43.034138, 34.871883, 16.598898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153271, 35.223610, 16.747549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198675, -0.437865, 0.876814,
		0.933716, -0.187309, -0.305107,
		0.297831, 0.879312, 0.371628,
		43.242619, 35.487404, 16.859037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680187, 34.808319, 17.020565>,  <43.034138, 34.871883, 16.598898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680187, 34.808319, 17.020565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.524200, 35.154556, 17.146212>,  <43.430607, 35.362301, 17.221600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.524200, 35.154556, 17.146212>,  <43.680187, 34.808319, 17.020565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524200, 35.154556, 17.146212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056410, -0.362939, 0.930104,
		0.919099, 0.344991, 0.190362,
		-0.389967, 0.865596, 0.314116,
		43.407211, 35.414234, 17.240446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990170, 34.905209, 17.686737>,  <43.680187, 34.808319, 17.020565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990170, 34.905209, 17.686737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.698387, 35.176620, 17.721361>,  <43.523319, 35.339466, 17.742136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.698387, 35.176620, 17.721361>,  <43.990170, 34.905209, 17.686737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698387, 35.176620, 17.721361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147416, -0.279516, 0.948757,
		0.667954, 0.679316, 0.303921,
		-0.729456, 0.678528, 0.086562,
		43.479549, 35.380180, 17.747330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088356, 35.320206, 18.350052>,  <43.990170, 34.905209, 17.686737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088356, 35.320206, 18.350052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.695557, 35.339634, 18.277031>,  <43.459877, 35.351292, 18.233219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.695557, 35.339634, 18.277031>,  <44.088356, 35.320206, 18.350052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695557, 35.339634, 18.277031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188623, -0.199607, 0.961550,
		0.010267, 0.978672, 0.205175,
		-0.981996, 0.048573, -0.182551,
		43.400959, 35.354206, 18.222265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830261, 35.443745, 19.011213>,  <44.088356, 35.320206, 18.350052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830261, 35.443745, 19.011213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482517, 35.391216, 18.820650>,  <43.273869, 35.359699, 18.706312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482517, 35.391216, 18.820650>,  <43.830261, 35.443745, 19.011213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482517, 35.391216, 18.820650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455873, -0.159020, 0.875724,
		-0.190758, 0.978503, 0.078381,
		-0.869363, -0.131320, -0.476407,
		43.221710, 35.351822, 18.677729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323425, 35.967339, 19.233492>,  <43.830261, 35.443745, 19.011213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323425, 35.967339, 19.233492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.075165, 35.699905, 19.069643>,  <42.926208, 35.539448, 18.971333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.075165, 35.699905, 19.069643>,  <43.323425, 35.967339, 19.233492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075165, 35.699905, 19.069643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533823, -0.022339, 0.845301,
		-0.574301, 0.743306, -0.343037,
		-0.620654, -0.668578, -0.409623,
		42.888969, 35.499332, 18.946756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731758, 36.247704, 19.415951>,  <43.323425, 35.967339, 19.233492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731758, 36.247704, 19.415951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.687054, 35.854179, 19.359903>,  <42.660233, 35.618065, 19.326275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.687054, 35.854179, 19.359903>,  <42.731758, 36.247704, 19.415951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687054, 35.854179, 19.359903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513448, -0.063555, 0.855764,
		-0.850812, 0.167587, -0.498030,
		-0.111762, -0.983807, -0.140121,
		42.653526, 35.559036, 19.317867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.077900, 36.149330, 19.558971>,  <42.731758, 36.247704, 19.415951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.077900, 36.149330, 19.558971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250580, 35.789108, 19.579506>,  <42.354187, 35.572975, 19.591825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.250580, 35.789108, 19.579506>,  <42.077900, 36.149330, 19.558971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250580, 35.789108, 19.579506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393875, -0.137002, 0.908897,
		-0.811479, -0.412590, -0.413850,
		0.431700, -0.900556, 0.051335,
		42.380089, 35.518940, 19.594906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555702, 35.698742, 19.720016>,  <42.077900, 36.149330, 19.558971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555702, 35.698742, 19.720016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.887299, 35.504799, 19.831505>,  <42.086258, 35.388432, 19.898397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.887299, 35.504799, 19.831505>,  <41.555702, 35.698742, 19.720016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887299, 35.504799, 19.831505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404273, -0.175156, 0.897710,
		-0.386445, -0.856872, -0.341218,
		0.828989, -0.484861, 0.278722,
		42.135994, 35.359341, 19.915121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330376, 35.131016, 19.954784>,  <41.555702, 35.698742, 19.720016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330376, 35.131016, 19.954784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.692677, 35.147930, 20.123459>,  <41.910057, 35.158077, 20.224663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.692677, 35.147930, 20.123459>,  <41.330376, 35.131016, 19.954784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692677, 35.147930, 20.123459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384744, -0.335166, 0.860021,
		0.177702, -0.941210, -0.287308,
		0.905756, 0.042287, 0.421685,
		41.964405, 35.160618, 20.249964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866158, 34.550457, 19.947727>,  <41.330376, 35.131016, 19.954784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866158, 34.550457, 19.947727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.486458, 34.530457, 19.823515>,  <40.258636, 34.518456, 19.748987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.486458, 34.530457, 19.823515>,  <40.866158, 34.550457, 19.947727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486458, 34.530457, 19.823515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286785, 0.267830, -0.919794,
		0.129159, -0.962168, -0.239897,
		-0.949248, -0.050001, -0.310528,
		40.201683, 34.515457, 19.730356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880600, 34.116356, 19.339638>,  <40.866158, 34.550457, 19.947727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880600, 34.116356, 19.339638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.542477, 34.330063, 19.340763>,  <40.339603, 34.458286, 19.341438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.542477, 34.330063, 19.340763>,  <40.880600, 34.116356, 19.339638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542477, 34.330063, 19.340763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178029, 0.286633, -0.941354,
		-0.503743, -0.795235, -0.337409,
		-0.845310, 0.534269, 0.002815,
		40.288883, 34.490345, 19.341608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603848, 34.054375, 18.698912>,  <40.880600, 34.116356, 19.339638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603848, 34.054375, 18.698912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405148, 34.381149, 18.816120>,  <40.285927, 34.577213, 18.886446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.405148, 34.381149, 18.816120>,  <40.603848, 34.054375, 18.698912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405148, 34.381149, 18.816120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015351, 0.345843, -0.938167,
		-0.867761, -0.461532, -0.184336,
		-0.496745, 0.816934, 0.293024,
		40.256123, 34.626228, 18.904028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073467, 34.070465, 18.139929>,  <40.603848, 34.054375, 18.698912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073467, 34.070465, 18.139929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.087299, 34.424812, 18.324987>,  <40.095600, 34.637421, 18.436022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.087299, 34.424812, 18.324987>,  <40.073467, 34.070465, 18.139929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087299, 34.424812, 18.324987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011340, 0.462546, -0.886523,
		-0.999338, 0.035902, 0.005949,
		0.034580, 0.885868, 0.462646,
		40.097672, 34.690575, 18.463781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445972, 34.507641, 17.888783>,  <40.073467, 34.070465, 18.139929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445972, 34.507641, 17.888783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.723511, 34.765930, 18.016298>,  <39.890034, 34.920902, 18.092808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.723511, 34.765930, 18.016298>,  <39.445972, 34.507641, 17.888783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723511, 34.765930, 18.016298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119220, 0.539577, -0.833452,
		-0.710188, 0.540280, 0.451365,
		0.693844, 0.645720, 0.318789,
		39.931664, 34.959644, 18.111935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129936, 35.219246, 17.695282>,  <39.445972, 34.507641, 17.888783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129936, 35.219246, 17.695282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528316, 35.217007, 17.731176>,  <39.767345, 35.215664, 17.752712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.528316, 35.217007, 17.731176>,  <39.129936, 35.219246, 17.695282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528316, 35.217007, 17.731176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082124, 0.462949, -0.882572,
		-0.036599, 0.886367, 0.461534,
		0.995950, -0.005602, 0.089736,
		39.827103, 35.215324, 17.758097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214840, 35.880169, 17.349579>,  <39.129936, 35.219246, 17.695282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214840, 35.880169, 17.349579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.569870, 35.697475, 17.373585>,  <39.782890, 35.587860, 17.387989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.569870, 35.697475, 17.373585>,  <39.214840, 35.880169, 17.349579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569870, 35.697475, 17.373585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201844, 0.268480, -0.941901,
		0.414084, 0.848124, 0.330485,
		0.887577, -0.456733, 0.060015,
		39.836143, 35.560455, 17.391590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963779, 36.526440, 17.079433>,  <39.214840, 35.880169, 17.349579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963779, 36.526440, 17.079433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.588135, 36.469746, 16.954229>,  <38.362747, 36.435730, 16.879107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.588135, 36.469746, 16.954229>,  <38.963779, 36.526440, 17.079433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588135, 36.469746, 16.954229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255054, -0.322871, 0.911428,
		-0.230245, 0.935770, 0.267062,
		-0.939114, -0.141736, -0.313011,
		38.306400, 36.427223, 16.860327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557243, 36.669014, 17.747587>,  <38.963779, 36.526440, 17.079433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557243, 36.669014, 17.747587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.306919, 36.505955, 17.481600>,  <38.156723, 36.408119, 17.322008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.306919, 36.505955, 17.481600>,  <38.557243, 36.669014, 17.747587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306919, 36.505955, 17.481600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493446, -0.453328, 0.742297,
		-0.604043, 0.792665, 0.082547,
		-0.625813, -0.407647, -0.664967,
		38.119175, 36.383659, 17.282110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902988, 36.716446, 17.997345>,  <38.557243, 36.669014, 17.747587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902988, 36.716446, 17.997345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.859982, 36.427948, 17.723631>,  <37.834179, 36.254848, 17.559402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.859982, 36.427948, 17.723631>,  <37.902988, 36.716446, 17.997345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859982, 36.427948, 17.723631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555655, -0.527150, 0.642931,
		-0.824432, 0.449353, -0.344086,
		-0.107518, -0.721245, -0.684284,
		37.827724, 36.211575, 17.518345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219086, 36.567928, 17.904613>,  <37.902988, 36.716446, 17.997345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219086, 36.567928, 17.904613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400314, 36.234116, 17.779213>,  <37.509052, 36.033829, 17.703972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400314, 36.234116, 17.779213>,  <37.219086, 36.567928, 17.904613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400314, 36.234116, 17.779213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568391, -0.541333, 0.619588,
		-0.686776, -0.102525, -0.719603,
		0.453068, -0.834534, -0.313501,
		37.536236, 35.983757, 17.685163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649178, 36.064877, 17.817848>,  <37.219086, 36.567928, 17.904613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649178, 36.064877, 17.817848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.972420, 35.830490, 17.793802>,  <37.166367, 35.689857, 17.779375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.972420, 35.830490, 17.793802>,  <36.649178, 36.064877, 17.817848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972420, 35.830490, 17.793802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343949, -0.552255, 0.759417,
		-0.478186, -0.593014, -0.647821,
		0.808107, -0.585960, -0.060114,
		37.214851, 35.654701, 17.775768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511715, 35.180428, 17.633387>,  <36.649178, 36.064877, 17.817848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511715, 35.180428, 17.633387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850563, 35.233395, 17.839243>,  <37.053871, 35.265175, 17.962757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850563, 35.233395, 17.839243>,  <36.511715, 35.180428, 17.633387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850563, 35.233395, 17.839243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272579, -0.723063, 0.634729,
		0.456168, -0.677971, -0.576425,
		0.847120, 0.132421, 0.514639,
		37.104698, 35.273121, 17.993635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691669, 34.467796, 17.801502>,  <36.511715, 35.180428, 17.633387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691669, 34.467796, 17.801502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.867252, 34.727413, 18.050039>,  <36.972603, 34.883183, 18.199162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.867252, 34.727413, 18.050039>,  <36.691669, 34.467796, 17.801502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867252, 34.727413, 18.050039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118984, -0.643447, 0.756187,
		0.890595, -0.405864, -0.205221,
		0.438957, 0.649038, 0.621342,
		36.998940, 34.922123, 18.236443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.762146, 39.894062, 15.436450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.045258, 39.643005, 15.566139>,  <40.215122, 39.492371, 15.643952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.045258, 39.643005, 15.566139>,  <39.762146, 39.894062, 15.436450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045258, 39.643005, 15.566139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536277, -0.178609, 0.824928,
		-0.459851, -0.757736, -0.463005,
		0.707774, -0.627643, 0.324223,
		40.257591, 39.454712, 15.663406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456924, 39.205311, 15.684958>,  <39.762146, 39.894062, 15.436450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456924, 39.205311, 15.684958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814545, 39.259819, 15.855655>,  <40.029118, 39.292522, 15.958073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814545, 39.259819, 15.855655>,  <39.456924, 39.205311, 15.684958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814545, 39.259819, 15.855655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405031, -0.161082, 0.900001,
		0.191384, -0.977488, -0.088821,
		0.894048, 0.136271, 0.426741,
		40.082760, 39.300701, 15.983677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489052, 38.733322, 16.243595>,  <39.456924, 39.205311, 15.684958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489052, 38.733322, 16.243595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785908, 38.983788, 16.339214>,  <39.964024, 39.134068, 16.396585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785908, 38.983788, 16.339214>,  <39.489052, 38.733322, 16.243595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785908, 38.983788, 16.339214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203878, -0.128854, 0.970479,
		0.638481, -0.768970, 0.032033,
		0.742142, 0.626164, 0.239047,
		40.008549, 39.171638, 16.410929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912498, 38.335445, 16.761835>,  <39.489052, 38.733322, 16.243595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912498, 38.335445, 16.761835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.998917, 38.721394, 16.821621>,  <40.050770, 38.952965, 16.857492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.998917, 38.721394, 16.821621>,  <39.912498, 38.335445, 16.761835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998917, 38.721394, 16.821621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121226, -0.125388, 0.984673,
		0.968828, -0.230855, 0.089879,
		0.216047, 0.964875, 0.149465,
		40.063732, 39.010857, 16.866461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295231, 38.374577, 17.349190>,  <39.912498, 38.335445, 16.761835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295231, 38.374577, 17.349190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.169804, 38.752556, 17.311783>,  <40.094547, 38.979343, 17.289339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.169804, 38.752556, 17.311783>,  <40.295231, 38.374577, 17.349190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169804, 38.752556, 17.311783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002914, 0.099441, 0.995039,
		0.949560, 0.311743, -0.033935,
		-0.313571, 0.944949, -0.093517,
		40.075733, 39.036041, 17.283728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591766, 38.774399, 17.952446>,  <40.295231, 38.374577, 17.349190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591766, 38.774399, 17.952446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.275803, 38.990589, 17.836569>,  <40.086224, 39.120304, 17.767042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.275803, 38.990589, 17.836569>,  <40.591766, 38.774399, 17.952446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275803, 38.990589, 17.836569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164054, 0.268935, 0.949084,
		0.590866, 0.797220, -0.123768,
		-0.789914, 0.540476, -0.289692,
		40.038830, 39.152733, 17.749660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530811, 39.285366, 18.467140>,  <40.591766, 38.774399, 17.952446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530811, 39.285366, 18.467140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.172916, 39.309334, 18.290119>,  <39.958179, 39.323715, 18.183907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.172916, 39.309334, 18.290119>,  <40.530811, 39.285366, 18.467140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172916, 39.309334, 18.290119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398871, 0.338472, 0.852255,
		0.200861, 0.939066, -0.278943,
		-0.894738, 0.059923, -0.442552,
		39.904495, 39.327312, 18.157354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217129, 40.012077, 18.581451>,  <40.530811, 39.285366, 18.467140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217129, 40.012077, 18.581451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.923473, 39.755192, 18.493267>,  <39.747280, 39.601063, 18.440357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.923473, 39.755192, 18.493267>,  <40.217129, 40.012077, 18.581451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923473, 39.755192, 18.493267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407196, 0.156595, 0.899816,
		-0.543348, 0.750363, -0.376468,
		-0.734142, -0.642210, -0.220460,
		39.703232, 39.562531, 18.427130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581398, 40.438137, 18.669533>,  <40.217129, 40.012077, 18.581451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581398, 40.438137, 18.669533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.466198, 40.055553, 18.688507>,  <39.397079, 39.826004, 18.699892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.466198, 40.055553, 18.688507>,  <39.581398, 40.438137, 18.669533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466198, 40.055553, 18.688507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362846, 0.154831, 0.918896,
		-0.886227, 0.247429, -0.391637,
		-0.287999, -0.956455, 0.047437,
		39.379799, 39.768616, 18.702738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819561, 40.455627, 18.706417>,  <39.581398, 40.438137, 18.669533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819561, 40.455627, 18.706417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.893696, 40.079544, 18.820723>,  <38.938175, 39.853893, 18.889305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.893696, 40.079544, 18.820723>,  <38.819561, 40.455627, 18.706417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893696, 40.079544, 18.820723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474261, 0.169110, 0.863990,
		-0.860656, -0.295652, -0.414562,
		0.185333, -0.940208, 0.285762,
		38.949295, 39.797482, 18.906450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223774, 40.221981, 18.919060>,  <38.819561, 40.455627, 18.706417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223774, 40.221981, 18.919060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.514862, 40.012592, 19.096327>,  <38.689514, 39.886959, 19.202686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.514862, 40.012592, 19.096327>,  <38.223774, 40.221981, 18.919060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514862, 40.012592, 19.096327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429107, 0.156573, 0.889580,
		-0.535059, -0.837533, -0.110685,
		0.727722, -0.523473, 0.443167,
		38.733177, 39.855549, 19.229277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920937, 39.615170, 19.289772>,  <38.223774, 40.221981, 18.919060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920937, 39.615170, 19.289772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.267242, 39.721634, 19.459299>,  <38.475025, 39.785511, 19.561014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.267242, 39.721634, 19.459299>,  <37.920937, 39.615170, 19.289772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267242, 39.721634, 19.459299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433485, -0.024396, 0.900831,
		0.250101, -0.963621, 0.094253,
		0.865760, 0.266156, 0.423816,
		38.526970, 39.801479, 19.586445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661861, 39.188057, 18.725876>,  <37.920937, 39.615170, 19.289772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661861, 39.188057, 18.725876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.274239, 39.165295, 18.629799>,  <37.041664, 39.151638, 18.572153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.274239, 39.165295, 18.629799>,  <37.661861, 39.188057, 18.725876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274239, 39.165295, 18.629799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216251, 0.273478, -0.937254,
		0.119019, -0.960194, -0.252711,
		-0.969056, -0.056902, -0.240192,
		36.983521, 39.148224, 18.557741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492504, 38.698254, 18.196676>,  <37.661861, 39.188057, 18.725876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492504, 38.698254, 18.196676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.186462, 38.952095, 18.153057>,  <37.002838, 39.104401, 18.126884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.186462, 38.952095, 18.153057>,  <37.492504, 38.698254, 18.196676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186462, 38.952095, 18.153057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229421, 0.110426, -0.967043,
		-0.601645, -0.764910, -0.230079,
		-0.765107, 0.634602, -0.109049,
		36.956932, 39.142475, 18.120342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135330, 38.538010, 17.470882>,  <37.492504, 38.698254, 18.196676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135330, 38.538010, 17.470882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.003098, 38.900414, 17.576605>,  <36.923759, 39.117855, 17.640038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.003098, 38.900414, 17.576605>,  <37.135330, 38.538010, 17.470882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003098, 38.900414, 17.576605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143093, 0.324927, -0.934851,
		-0.932868, -0.271222, -0.237058,
		-0.330578, 0.906014, 0.264304,
		36.903923, 39.172218, 17.655895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746975, 38.848213, 16.864222>,  <37.135330, 38.538010, 17.470882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746975, 38.848213, 16.864222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823013, 39.184196, 17.067526>,  <36.868637, 39.385788, 17.189508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823013, 39.184196, 17.067526>,  <36.746975, 38.848213, 16.864222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823013, 39.184196, 17.067526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018677, 0.514515, -0.857278,
		-0.981588, 0.172459, 0.082119,
		0.190097, 0.839960, 0.508263,
		36.880043, 39.436184, 17.220005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366077, 39.322147, 16.574038>,  <36.746975, 38.848213, 16.864222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366077, 39.322147, 16.574038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.649971, 39.538357, 16.754751>,  <36.820309, 39.668083, 16.863178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.649971, 39.538357, 16.754751>,  <36.366077, 39.322147, 16.574038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649971, 39.538357, 16.754751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214721, 0.444811, -0.869504,
		-0.670944, 0.714128, 0.199638,
		0.709738, 0.540522, 0.451782,
		36.862892, 39.700512, 16.890285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265152, 39.989452, 16.276030>,  <36.366077, 39.322147, 16.574038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265152, 39.989452, 16.276030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.643959, 39.973724, 16.403542>,  <36.871243, 39.964287, 16.480049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.643959, 39.973724, 16.403542>,  <36.265152, 39.989452, 16.276030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643959, 39.973724, 16.403542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311908, 0.349491, -0.883498,
		-0.076674, 0.936114, 0.343236,
		0.947013, -0.039317, 0.318779,
		36.928062, 39.961929, 16.499176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549118, 40.666782, 16.192995>,  <36.265152, 39.989452, 16.276030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549118, 40.666782, 16.192995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840843, 40.395042, 16.225473>,  <37.015877, 40.231998, 16.244961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.840843, 40.395042, 16.225473>,  <36.549118, 40.666782, 16.192995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840843, 40.395042, 16.225473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378179, 0.301371, -0.875304,
		0.570166, 0.669074, 0.476708,
		0.729309, -0.679349, 0.081198,
		37.059635, 40.191238, 16.249832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062160, 41.018253, 15.945230>,  <36.549118, 40.666782, 16.192995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062160, 41.018253, 15.945230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224598, 40.653393, 15.923092>,  <37.322060, 40.434475, 15.909809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224598, 40.653393, 15.923092>,  <37.062160, 41.018253, 15.945230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224598, 40.653393, 15.923092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333085, 0.204146, -0.920532,
		0.850965, 0.355388, 0.386727,
		0.406095, -0.912153, -0.055346,
		37.346428, 40.379745, 15.906488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802715, 41.131832, 15.672976>,  <37.062160, 41.018253, 15.945230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802715, 41.131832, 15.672976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.703423, 40.745708, 15.640568>,  <37.643845, 40.514034, 15.621123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.703423, 40.745708, 15.640568>,  <37.802715, 41.131832, 15.672976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703423, 40.745708, 15.640568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324688, -0.004113, -0.945812,
		0.912664, -0.261091, 0.314444,
		-0.248236, -0.965306, -0.081020,
		37.628952, 40.456116, 15.616261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311466, 40.830677, 15.383364>,  <37.802715, 41.131832, 15.672976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311466, 40.830677, 15.383364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.007523, 40.580677, 15.311810>,  <37.825157, 40.430679, 15.268879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.007523, 40.580677, 15.311810>,  <38.311466, 40.830677, 15.383364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007523, 40.580677, 15.311810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190663, 0.048814, -0.980441,
		0.621504, -0.779101, 0.082072,
		-0.759856, -0.624996, -0.178883,
		37.779564, 40.393177, 15.258145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640995, 40.323494, 14.944352>,  <38.311466, 40.830677, 15.383364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640995, 40.323494, 14.944352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250462, 40.263020, 14.882495>,  <38.016140, 40.226734, 14.845381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.250462, 40.263020, 14.882495>,  <38.640995, 40.323494, 14.944352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250462, 40.263020, 14.882495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143083, 0.084624, -0.986086,
		0.162173, -0.984876, -0.060989,
		-0.976333, -0.151190, -0.154643,
		37.957561, 40.217663, 14.836102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498302, 39.597153, 14.451838>,  <38.640995, 40.323494, 14.944352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498302, 39.597153, 14.451838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.188221, 39.848824, 14.429215>,  <38.002171, 39.999825, 14.415642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.188221, 39.848824, 14.429215>,  <38.498302, 39.597153, 14.451838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188221, 39.848824, 14.429215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156351, 0.104352, -0.982174,
		-0.612057, -0.770227, -0.179266,
		-0.775204, 0.629175, -0.056556,
		37.955662, 40.037575, 14.412249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229683, 39.496040, 13.872996>,  <38.498302, 39.597153, 14.451838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229683, 39.496040, 13.872996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.087269, 39.856369, 13.972406>,  <38.001820, 40.072567, 14.032052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.087269, 39.856369, 13.972406>,  <38.229683, 39.496040, 13.872996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087269, 39.856369, 13.972406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195223, 0.331785, -0.922934,
		-0.913852, -0.280079, -0.293988,
		-0.356036, 0.900818, 0.248525,
		37.980457, 40.126614, 14.046964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180977, 38.823334, 14.074222>,  <38.229683, 39.496040, 13.872996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180977, 38.823334, 14.074222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226334, 38.438793, 13.973867>,  <38.253548, 38.208069, 13.913655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.226334, 38.438793, 13.973867>,  <38.180977, 38.823334, 14.074222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226334, 38.438793, 13.973867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314164, -0.274252, 0.908893,
		-0.942572, -0.024246, -0.333121,
		0.113396, -0.961352, -0.250885,
		38.260353, 38.150387, 13.898602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627628, 38.391876, 14.403624>,  <38.180977, 38.823334, 14.074222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627628, 38.391876, 14.403624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.903088, 38.110432, 14.333553>,  <38.068363, 37.941566, 14.291512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.903088, 38.110432, 14.333553>,  <37.627628, 38.391876, 14.403624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903088, 38.110432, 14.333553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178939, -0.399032, 0.899308,
		-0.702665, -0.587965, -0.400698,
		0.688652, -0.703613, -0.175176,
		38.109684, 37.899349, 14.281000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355110, 37.677834, 14.448508>,  <37.627628, 38.391876, 14.403624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355110, 37.677834, 14.448508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.741726, 37.631401, 14.540013>,  <37.973694, 37.603542, 14.594916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.741726, 37.631401, 14.540013>,  <37.355110, 37.677834, 14.448508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741726, 37.631401, 14.540013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256172, -0.483761, 0.836870,
		0.013521, -0.867468, -0.497309,
		0.966537, -0.116081, 0.228762,
		38.031689, 37.596577, 14.608642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493690, 37.009365, 14.648374>,  <37.355110, 37.677834, 14.448508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493690, 37.009365, 14.648374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801735, 37.201111, 14.816724>,  <37.986561, 37.316158, 14.917734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.801735, 37.201111, 14.816724>,  <37.493690, 37.009365, 14.648374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801735, 37.201111, 14.816724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090138, -0.571381, 0.815720,
		0.631509, -0.666132, -0.396818,
		0.770111, 0.479366, 0.420876,
		38.032768, 37.344921, 14.942986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729218, 36.530293, 14.972177>,  <37.493690, 37.009365, 14.648374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729218, 36.530293, 14.972177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.939301, 36.830578, 15.132467>,  <38.065350, 37.010750, 15.228642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.939301, 36.830578, 15.132467>,  <37.729218, 36.530293, 14.972177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939301, 36.830578, 15.132467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200630, -0.566865, 0.799007,
		0.826986, -0.339246, -0.448337,
		0.525206, 0.750717, 0.400727,
		38.096863, 37.055794, 15.252686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357662, 36.220814, 15.214839>,  <37.729218, 36.530293, 14.972177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357662, 36.220814, 15.214839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.325977, 36.558804, 15.426405>,  <38.306969, 36.761597, 15.553345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.325977, 36.558804, 15.426405>,  <38.357662, 36.220814, 15.214839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325977, 36.558804, 15.426405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016793, -0.531638, 0.846805,
		0.996717, 0.058192, 0.056300,
		-0.079209, 0.844970, 0.528915,
		38.302216, 36.812294, 15.585079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779503, 36.044220, 15.785214>,  <38.357662, 36.220814, 15.214839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779503, 36.044220, 15.785214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559330, 36.348717, 15.922347>,  <38.427227, 36.531414, 16.004627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559330, 36.348717, 15.922347>,  <38.779503, 36.044220, 15.785214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559330, 36.348717, 15.922347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048841, -0.439295, 0.897014,
		0.833450, 0.477002, 0.278982,
		-0.550433, 0.761242, 0.342833,
		38.394199, 36.577091, 16.025196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028721, 36.271862, 16.414986>,  <38.779503, 36.044220, 15.785214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028721, 36.271862, 16.414986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.662285, 36.432251, 16.415838>,  <38.442425, 36.528484, 16.416349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.662285, 36.432251, 16.415838>,  <39.028721, 36.271862, 16.414986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662285, 36.432251, 16.415838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105562, -0.246299, 0.963428,
		0.386837, 0.882358, 0.267959,
		-0.916086, 0.400976, 0.002134,
		38.387459, 36.552544, 16.416479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650677, 36.325626, 16.938370>,  <39.028721, 36.271862, 16.414986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650677, 36.325626, 16.938370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888874, 36.012531, 17.010717>,  <40.031792, 35.824673, 17.054125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.888874, 36.012531, 17.010717>,  <39.650677, 36.325626, 16.938370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888874, 36.012531, 17.010717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507646, 0.192136, -0.839868,
		0.622646, 0.591949, 0.511769,
		0.595489, -0.782739, 0.180868,
		40.067520, 35.777710, 17.064978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431343, 36.528141, 16.869215>,  <39.650677, 36.325626, 16.938370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431343, 36.528141, 16.869215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348209, 36.147743, 16.777645>,  <40.298328, 35.919502, 16.722702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348209, 36.147743, 16.777645>,  <40.431343, 36.528141, 16.869215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348209, 36.147743, 16.777645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448653, 0.115286, -0.886239,
		0.869204, -0.286900, 0.402708,
		-0.207835, -0.950998, -0.228926,
		40.285858, 35.862442, 16.708967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071011, 36.303795, 16.643230>,  <40.431343, 36.528141, 16.869215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071011, 36.303795, 16.643230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.834026, 36.009193, 16.512657>,  <40.691833, 35.832432, 16.434313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.834026, 36.009193, 16.512657>,  <41.071011, 36.303795, 16.643230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834026, 36.009193, 16.512657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482050, 0.000550, -0.876144,
		0.645459, -0.676438, 0.354704,
		-0.592462, -0.736499, -0.326432,
		40.656288, 35.788242, 16.414728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.461864, 35.731594, 16.397779>,  <41.071011, 36.303795, 16.643230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.461864, 35.731594, 16.397779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106098, 35.726200, 16.215021>,  <40.892639, 35.722965, 16.105366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.106098, 35.726200, 16.215021>,  <41.461864, 35.731594, 16.397779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106098, 35.726200, 16.215021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456772, 0.011329, -0.889512,
		0.017169, -0.999845, -0.003918,
		-0.889418, -0.013482, -0.456895,
		40.839272, 35.722153, 16.077953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680611, 35.496510, 15.828016>,  <41.461864, 35.731594, 16.397779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680611, 35.496510, 15.828016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309254, 35.598274, 15.719679>,  <41.086437, 35.659332, 15.654676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309254, 35.598274, 15.719679>,  <41.680611, 35.496510, 15.828016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309254, 35.598274, 15.719679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342975, 0.306182, -0.888043,
		-0.143002, -0.917347, -0.371516,
		-0.928395, 0.254413, -0.270843,
		41.030735, 35.674599, 15.638426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568256, 35.118496, 15.269776>,  <41.680611, 35.496510, 15.828016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568256, 35.118496, 15.269776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336361, 35.444405, 15.272409>,  <41.197224, 35.639950, 15.273989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336361, 35.444405, 15.272409>,  <41.568256, 35.118496, 15.269776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336361, 35.444405, 15.272409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301442, 0.221978, -0.927286,
		-0.756988, -0.535603, -0.374297,
		-0.579743, 0.814773, 0.006582,
		41.162437, 35.688835, 15.274384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213860, 35.056633, 14.633912>,  <41.568256, 35.118496, 15.269776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213860, 35.056633, 14.633912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198421, 35.441639, 14.741294>,  <41.189159, 35.672642, 14.805723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.198421, 35.441639, 14.741294>,  <41.213860, 35.056633, 14.633912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198421, 35.441639, 14.741294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404624, 0.260699, -0.876536,
		-0.913668, 0.074791, -0.399521,
		-0.038598, 0.962519, 0.268454,
		41.186844, 35.730396, 14.821830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070827, 35.365631, 14.064300>,  <41.213860, 35.056633, 14.633912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070827, 35.365631, 14.064300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230713, 35.655113, 14.289325>,  <41.326645, 35.828804, 14.424339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230713, 35.655113, 14.289325>,  <41.070827, 35.365631, 14.064300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230713, 35.655113, 14.289325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432379, 0.392294, -0.811883,
		-0.808254, 0.567764, -0.156108,
		0.399717, 0.723706, 0.562562,
		41.350628, 35.872227, 14.458094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002003, 36.035423, 13.776981>,  <41.070827, 35.365631, 14.064300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002003, 36.035423, 13.776981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312767, 36.087555, 14.023370>,  <41.499226, 36.118832, 14.171203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312767, 36.087555, 14.023370>,  <41.002003, 36.035423, 13.776981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312767, 36.087555, 14.023370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442874, 0.582265, -0.681784,
		-0.447514, 0.802485, 0.394651,
		0.776913, 0.130327, 0.615972,
		41.545841, 36.126652, 14.208161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.443958, 34.065311, 29.325249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833382, 34.118919, 29.251257>,  <36.067036, 34.151085, 29.206861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833382, 34.118919, 29.251257>,  <35.443958, 34.065311, 29.325249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833382, 34.118919, 29.251257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180864, -0.042356, -0.982596,
		-0.139520, 0.990073, -0.016997,
		0.973562, 0.134018, -0.184978,
		36.125450, 34.159126, 29.195763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491867, 34.572750, 28.793224>,  <35.443958, 34.065311, 29.325249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491867, 34.572750, 28.793224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839981, 34.376461, 28.776247>,  <36.048847, 34.258690, 28.766060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839981, 34.376461, 28.776247>,  <35.491867, 34.572750, 28.793224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839981, 34.376461, 28.776247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114051, -0.116936, -0.986569,
		0.479166, 0.863435, -0.157735,
		0.870283, -0.490720, -0.042444,
		36.101067, 34.229244, 28.763514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907467, 34.934319, 28.379536>,  <35.491867, 34.572750, 28.793224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907467, 34.934319, 28.379536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068905, 34.568382, 28.374315>,  <36.165768, 34.348820, 28.371183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068905, 34.568382, 28.374315>,  <35.907467, 34.934319, 28.379536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068905, 34.568382, 28.374315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165837, 0.087176, -0.982292,
		0.899781, 0.394287, 0.186899,
		0.403599, -0.914843, -0.013052,
		36.189983, 34.293930, 28.370399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488312, 35.030060, 28.053417>,  <35.907467, 34.934319, 28.379536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488312, 35.030060, 28.053417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449390, 34.632252, 28.038118>,  <36.426037, 34.393566, 28.028938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449390, 34.632252, 28.038118>,  <36.488312, 35.030060, 28.053417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449390, 34.632252, 28.038118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455261, -0.010302, -0.890298,
		0.885025, -0.104041, 0.453768,
		-0.097302, -0.994520, -0.038248,
		36.420200, 34.333897, 28.026644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169090, 34.814735, 28.004328>,  <36.488312, 35.030060, 28.053417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169090, 34.814735, 28.004328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924240, 34.536915, 27.853117>,  <36.777332, 34.370224, 27.762390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924240, 34.536915, 27.853117>,  <37.169090, 34.814735, 28.004328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924240, 34.536915, 27.853117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533450, -0.009809, -0.845775,
		0.583726, -0.719376, 0.376513,
		-0.612123, -0.694551, -0.378026,
		36.740604, 34.328548, 27.739710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560215, 34.322956, 27.632874>,  <37.169090, 34.814735, 28.004328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560215, 34.322956, 27.632874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195847, 34.258675, 27.480875>,  <36.977226, 34.220104, 27.389677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.195847, 34.258675, 27.480875>,  <37.560215, 34.322956, 27.632874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195847, 34.258675, 27.480875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394466, -0.069328, -0.916291,
		0.120909, -0.984564, 0.126546,
		-0.910921, -0.160706, -0.379995,
		36.922569, 34.210464, 27.366877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719700, 33.778969, 27.155704>,  <37.560215, 34.322956, 27.632874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719700, 33.778969, 27.155704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357265, 33.922047, 27.065315>,  <37.139805, 34.007893, 27.011082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357265, 33.922047, 27.065315>,  <37.719700, 33.778969, 27.155704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357265, 33.922047, 27.065315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215294, -0.069982, -0.974039,
		-0.364222, -0.931213, -0.013600,
		-0.906086, 0.357694, -0.225973,
		37.085442, 34.029354, 26.997524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462410, 33.370281, 26.672447>,  <37.719700, 33.778969, 27.155704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462410, 33.370281, 26.672447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240986, 33.694660, 26.596615>,  <37.108131, 33.889286, 26.551115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240986, 33.694660, 26.596615>,  <37.462410, 33.370281, 26.672447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240986, 33.694660, 26.596615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075935, -0.177545, -0.981179,
		-0.829342, -0.557535, 0.036702,
		-0.553558, 0.810945, -0.189581,
		37.074917, 33.937943, 26.539740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932072, 33.221481, 26.142387>,  <37.462410, 33.370281, 26.672447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932072, 33.221481, 26.142387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967102, 33.619541, 26.124430>,  <36.988121, 33.858376, 26.113655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967102, 33.619541, 26.124430>,  <36.932072, 33.221481, 26.142387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967102, 33.619541, 26.124430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060974, -0.039629, -0.997352,
		-0.994290, 0.090078, 0.057208,
		0.087572, 0.995146, -0.044895,
		36.993374, 33.918083, 26.110962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473866, 33.494186, 25.695927>,  <36.932072, 33.221481, 26.142387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473866, 33.494186, 25.695927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762146, 33.771271, 25.706757>,  <36.935116, 33.937523, 25.713255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762146, 33.771271, 25.706757>,  <36.473866, 33.494186, 25.695927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762146, 33.771271, 25.706757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011318, 0.050806, -0.998644,
		-0.693149, 0.719422, 0.044456,
		0.720705, 0.692713, 0.027074,
		36.978359, 33.979084, 25.714878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362720, 33.918354, 25.141685>,  <36.473866, 33.494186, 25.695927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362720, 33.918354, 25.141685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740082, 34.018448, 25.228752>,  <36.966499, 34.078506, 25.280993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740082, 34.018448, 25.228752>,  <36.362720, 33.918354, 25.141685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740082, 34.018448, 25.228752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227516, -0.010766, -0.973715,
		-0.241315, 0.968125, -0.067089,
		0.943400, 0.250236, 0.217666,
		37.023102, 34.093517, 25.294052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613483, 34.384548, 24.639027>,  <36.362720, 33.918354, 25.141685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613483, 34.384548, 24.639027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953899, 34.253036, 24.802801>,  <37.158150, 34.174129, 24.901066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.953899, 34.253036, 24.802801>,  <36.613483, 34.384548, 24.639027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953899, 34.253036, 24.802801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453994, 0.068879, -0.888339,
		0.263866, 0.941892, 0.207882,
		0.851037, -0.328779, 0.409438,
		37.209209, 34.154404, 24.925632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398277, 34.897865, 24.140882>,  <36.613483, 34.384548, 24.639027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398277, 34.897865, 24.140882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071003, 34.677284, 24.075806>,  <35.874638, 34.544933, 24.036760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071003, 34.677284, 24.075806>,  <36.398277, 34.897865, 24.140882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071003, 34.677284, 24.075806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391977, 0.327992, 0.859521,
		-0.420625, 0.767020, -0.484516,
		-0.818187, -0.551454, -0.162692,
		35.825546, 34.511848, 24.026999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785221, 35.315845, 24.479082>,  <36.398277, 34.897865, 24.140882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785221, 35.315845, 24.479082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655415, 34.940331, 24.432835>,  <35.577530, 34.715023, 24.405087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.655415, 34.940331, 24.432835>,  <35.785221, 35.315845, 24.479082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655415, 34.940331, 24.432835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436475, 0.040179, 0.898819,
		-0.839155, 0.342144, -0.422796,
		-0.324513, -0.938788, -0.115621,
		35.558060, 34.658695, 24.398148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011211, 35.355816, 24.579109>,  <35.785221, 35.315845, 24.479082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011211, 35.355816, 24.579109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127277, 34.979179, 24.647480>,  <35.196918, 34.753197, 24.688503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127277, 34.979179, 24.647480>,  <35.011211, 35.355816, 24.579109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127277, 34.979179, 24.647480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604712, -0.041971, 0.795337,
		-0.741706, -0.334141, -0.581568,
		0.290163, -0.941588, 0.170929,
		35.214325, 34.696701, 24.698759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366116, 34.998959, 24.635090>,  <35.011211, 35.355816, 24.579109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366116, 34.998959, 24.635090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645981, 34.777206, 24.815369>,  <34.813900, 34.644154, 24.923536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645981, 34.777206, 24.815369>,  <34.366116, 34.998959, 24.635090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645981, 34.777206, 24.815369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627390, -0.174920, 0.758805,
		-0.341832, -0.813673, -0.470199,
		0.699666, -0.554382, 0.450698,
		34.855881, 34.610893, 24.950579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043259, 34.424255, 24.877728>,  <34.366116, 34.998959, 24.635090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043259, 34.424255, 24.877728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384697, 34.392483, 25.083668>,  <34.589558, 34.373421, 25.207232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.384697, 34.392483, 25.083668>,  <34.043259, 34.424255, 24.877728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384697, 34.392483, 25.083668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520629, -0.095908, 0.848379,
		-0.018004, -0.992216, -0.123217,
		0.853593, -0.079425, 0.514850,
		34.640774, 34.368656, 25.238123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041683, 33.762329, 25.228252>,  <34.043259, 34.424255, 24.877728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041683, 33.762329, 25.228252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301651, 33.991039, 25.428522>,  <34.457630, 34.128265, 25.548685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301651, 33.991039, 25.428522>,  <34.041683, 33.762329, 25.228252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301651, 33.991039, 25.428522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505307, -0.166987, 0.846629,
		0.567691, -0.803233, 0.180396,
		0.649917, 0.571779, 0.500676,
		34.496628, 34.162575, 25.578726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917522, 33.492245, 25.944977>,  <34.041683, 33.762329, 25.228252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917522, 33.492245, 25.944977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106392, 33.842106, 25.988861>,  <34.219715, 34.052021, 26.015192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.106392, 33.842106, 25.988861>,  <33.917522, 33.492245, 25.944977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106392, 33.842106, 25.988861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401874, 0.102817, 0.909905,
		0.784568, -0.473725, 0.400047,
		0.472176, 0.874651, 0.109710,
		34.248043, 34.104500, 26.021774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192516, 33.472076, 26.617470>,  <33.917522, 33.492245, 25.944977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192516, 33.472076, 26.617470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159229, 33.857750, 26.516733>,  <34.139256, 34.089153, 26.456291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.159229, 33.857750, 26.516733>,  <34.192516, 33.472076, 26.617470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159229, 33.857750, 26.516733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386915, 0.201629, 0.899801,
		0.918353, 0.172320, 0.356279,
		-0.083218, 0.964184, -0.251840,
		34.134262, 34.147007, 26.441181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433842, 33.837307, 27.154219>,  <34.192516, 33.472076, 26.617470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433842, 33.837307, 27.154219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213745, 34.123322, 26.981731>,  <34.081688, 34.294930, 26.878239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213745, 34.123322, 26.981731>,  <34.433842, 33.837307, 27.154219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213745, 34.123322, 26.981731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202653, 0.386629, 0.899694,
		0.810039, 0.582440, -0.067835,
		-0.550245, 0.715040, -0.431217,
		34.048672, 34.337833, 26.852365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605591, 34.425667, 27.404793>,  <34.433842, 33.837307, 27.154219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605591, 34.425667, 27.404793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244686, 34.530163, 27.267580>,  <34.028141, 34.592861, 27.185253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244686, 34.530163, 27.267580>,  <34.605591, 34.425667, 27.404793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244686, 34.530163, 27.267580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171196, 0.513122, 0.841069,
		0.395742, 0.817592, -0.418248,
		-0.902264, 0.261244, -0.343032,
		33.974007, 34.608536, 27.164671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508415, 35.167580, 27.655071>,  <34.605591, 34.425667, 27.404793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508415, 35.167580, 27.655071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.149635, 35.012333, 27.570354>,  <33.934368, 34.919186, 27.519526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.149635, 35.012333, 27.570354>,  <34.508415, 35.167580, 27.655071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149635, 35.012333, 27.570354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337316, 0.291000, 0.895286,
		-0.285842, 0.874464, -0.391928,
		-0.896946, -0.388113, -0.211791,
		33.880550, 34.895901, 27.506817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979095, 35.736767, 27.630241>,  <34.508415, 35.167580, 27.655071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979095, 35.736767, 27.630241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788502, 35.390877, 27.693758>,  <33.674145, 35.183342, 27.731867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788502, 35.390877, 27.693758>,  <33.979095, 35.736767, 27.630241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788502, 35.390877, 27.693758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344353, 0.349740, 0.871265,
		-0.808938, 0.360467, -0.464417,
		-0.476487, -0.864723, 0.158790,
		33.645557, 35.131458, 27.741394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345787, 35.899693, 27.881926>,  <33.979095, 35.736767, 27.630241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345787, 35.899693, 27.881926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404346, 35.526421, 28.013224>,  <33.439484, 35.302460, 28.092003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.404346, 35.526421, 28.013224>,  <33.345787, 35.899693, 27.881926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404346, 35.526421, 28.013224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472988, 0.225401, 0.851749,
		-0.868821, -0.279953, -0.408383,
		0.146399, -0.933178, 0.328247,
		33.448265, 35.246468, 28.111698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768841, 35.743313, 28.249081>,  <33.345787, 35.899693, 27.881926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768841, 35.743313, 28.249081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014103, 35.449299, 28.364847>,  <33.161263, 35.272892, 28.434307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.014103, 35.449299, 28.364847>,  <32.768841, 35.743313, 28.249081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014103, 35.449299, 28.364847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367096, 0.059282, 0.928292,
		-0.699484, -0.675433, -0.233480,
		0.613157, -0.735035, 0.289415,
		33.198051, 35.228790, 28.451672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922195, 36.277187, 28.669891>,  <32.768841, 35.743313, 28.249081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922195, 36.277187, 28.669891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583672, 36.207069, 28.871101>,  <32.380558, 36.164997, 28.991827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583672, 36.207069, 28.871101>,  <32.922195, 36.277187, 28.669891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583672, 36.207069, 28.871101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048902, 0.914751, 0.401047,
		-0.530443, 0.364008, -0.765590,
		-0.846309, -0.175294, 0.503024,
		32.329781, 36.154480, 29.022009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852173, 36.903778, 28.460623>,  <32.922195, 36.277187, 28.669891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852173, 36.903778, 28.460623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152508, 37.167366, 28.442764>,  <33.332710, 37.325520, 28.432049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152508, 37.167366, 28.442764>,  <32.852173, 36.903778, 28.460623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152508, 37.167366, 28.442764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064853, 0.006287, -0.997875,
		-0.657290, 0.752142, 0.047457,
		0.750842, 0.658971, -0.044647,
		33.377762, 37.365059, 28.429371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637650, 37.503384, 27.964102>,  <32.852173, 36.903778, 28.460623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637650, 37.503384, 27.964102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035404, 37.488091, 28.003582>,  <33.274055, 37.478916, 28.027269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035404, 37.488091, 28.003582>,  <32.637650, 37.503384, 27.964102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035404, 37.488091, 28.003582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102733, 0.124141, -0.986932,
		0.025481, 0.991528, 0.127372,
		0.994383, -0.038234, 0.098699,
		33.333717, 37.476620, 28.033192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867580, 38.105446, 27.529989>,  <32.637650, 37.503384, 27.964102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867580, 38.105446, 27.529989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181725, 37.862694, 27.578817>,  <33.370213, 37.717041, 27.608114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181725, 37.862694, 27.578817>,  <32.867580, 38.105446, 27.529989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181725, 37.862694, 27.578817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183204, 0.039505, -0.982281,
		0.591308, 0.793808, 0.142209,
		0.785361, -0.606883, 0.122069,
		33.417332, 37.680630, 27.615438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411751, 38.448952, 27.118046>,  <32.867580, 38.105446, 27.529989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411751, 38.448952, 27.118046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521130, 38.069267, 27.180298>,  <33.586758, 37.841457, 27.217649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521130, 38.069267, 27.180298>,  <33.411751, 38.448952, 27.118046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521130, 38.069267, 27.180298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225721, -0.093956, -0.969651,
		0.935029, 0.300273, 0.188566,
		0.273443, -0.949214, 0.155629,
		33.603161, 37.784504, 27.226986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140911, 38.346645, 26.815062>,  <33.411751, 38.448952, 27.118046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140911, 38.346645, 26.815062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031731, 37.964821, 26.862913>,  <33.966225, 37.735725, 26.891624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031731, 37.964821, 26.862913>,  <34.140911, 38.346645, 26.815062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031731, 37.964821, 26.862913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349837, -0.214321, -0.911965,
		0.896166, -0.207068, 0.392440,
		-0.272947, -0.954562, 0.119628,
		33.949848, 37.678452, 26.898802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811466, 37.856617, 26.682226>,  <34.140911, 38.346645, 26.815062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811466, 37.856617, 26.682226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477390, 37.648808, 26.610060>,  <34.276943, 37.524120, 26.566761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477390, 37.648808, 26.610060>,  <34.811466, 37.856617, 26.682226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477390, 37.648808, 26.610060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374635, -0.297291, -0.878218,
		0.402619, -0.801070, 0.442927,
		-0.835192, -0.519523, -0.180414,
		34.226833, 37.492950, 26.555935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037270, 37.106968, 26.532501>,  <34.811466, 37.856617, 26.682226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037270, 37.106968, 26.532501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673584, 37.192013, 26.389326>,  <34.455372, 37.243042, 26.303421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673584, 37.192013, 26.389326>,  <35.037270, 37.106968, 26.532501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673584, 37.192013, 26.389326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226308, -0.469237, -0.853581,
		-0.349443, -0.857094, 0.378521,
		-0.909216, 0.212615, -0.357939,
		34.400818, 37.255798, 26.281944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894329, 36.483177, 26.165712>,  <35.037270, 37.106968, 26.532501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894329, 36.483177, 26.165712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667046, 36.779907, 26.023254>,  <34.530674, 36.957943, 25.937780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667046, 36.779907, 26.023254>,  <34.894329, 36.483177, 26.165712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667046, 36.779907, 26.023254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255329, -0.252499, -0.933301,
		-0.782268, -0.621246, -0.045936,
		-0.568211, 0.741821, -0.356144,
		34.496582, 37.002453, 25.916410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821800, 36.262192, 25.417297>,  <34.894329, 36.483177, 26.165712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821800, 36.262192, 25.417297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656437, 36.626263, 25.406929>,  <34.557220, 36.844704, 25.400707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.656437, 36.626263, 25.406929>,  <34.821800, 36.262192, 25.417297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656437, 36.626263, 25.406929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015877, -0.035670, -0.999237,
		-0.910409, -0.412678, 0.029197,
		-0.413405, 0.910178, -0.025922,
		34.532413, 36.899315, 25.399153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269707, 36.316032, 24.893976>,  <34.821800, 36.262192, 25.417297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269707, 36.316032, 24.893976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389366, 36.694698, 24.941870>,  <34.461163, 36.921898, 24.970606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389366, 36.694698, 24.941870>,  <34.269707, 36.316032, 24.893976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389366, 36.694698, 24.941870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066374, 0.145819, -0.987082,
		-0.951895, 0.287340, 0.106456,
		0.299151, 0.946664, 0.119732,
		34.479111, 36.978699, 24.977789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887016, 36.672871, 24.323118>,  <34.269707, 36.316032, 24.893976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887016, 36.672871, 24.323118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190521, 36.916397, 24.415737>,  <34.372623, 37.062511, 24.471308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.190521, 36.916397, 24.415737>,  <33.887016, 36.672871, 24.323118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190521, 36.916397, 24.415737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052168, 0.411140, -0.910078,
		-0.649270, 0.678458, 0.343721,
		0.758767, 0.608818, 0.231547,
		34.418152, 37.099041, 24.485201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659237, 37.303467, 24.050188>,  <33.887016, 36.672871, 24.323118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659237, 37.303467, 24.050188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056335, 37.343300, 24.077112>,  <34.294594, 37.367199, 24.093267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056335, 37.343300, 24.077112>,  <33.659237, 37.303467, 24.050188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056335, 37.343300, 24.077112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017349, 0.435408, -0.900066,
		-0.118942, 0.894708, 0.430523,
		0.992750, 0.099586, 0.067311,
		34.354160, 37.373177, 24.097305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835850, 37.964615, 23.754917>,  <33.659237, 37.303467, 24.050188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835850, 37.964615, 23.754917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184559, 37.768818, 23.746775>,  <34.393784, 37.651340, 23.741890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184559, 37.768818, 23.746775>,  <33.835850, 37.964615, 23.754917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184559, 37.768818, 23.746775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192292, 0.380094, -0.904738,
		0.450596, 0.784812, 0.425481,
		0.871772, -0.489488, -0.020355,
		34.446091, 37.621971, 23.740667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210094, 38.412346, 23.456724>,  <33.835850, 37.964615, 23.754917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210094, 38.412346, 23.456724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432533, 38.083961, 23.404903>,  <34.565998, 37.886932, 23.373812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432533, 38.083961, 23.404903>,  <34.210094, 38.412346, 23.456724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432533, 38.083961, 23.404903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143295, 0.248249, -0.958039,
		0.818670, 0.514200, 0.255690,
		0.556098, -0.820957, -0.129552,
		34.599361, 37.837673, 23.366037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844311, 38.651749, 23.177481>,  <34.210094, 38.412346, 23.456724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844311, 38.651749, 23.177481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823608, 38.267090, 23.069736>,  <34.811188, 38.036293, 23.005091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823608, 38.267090, 23.069736>,  <34.844311, 38.651749, 23.177481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823608, 38.267090, 23.069736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278082, 0.245177, -0.928740,
		0.959162, -0.122973, 0.254727,
		-0.051757, -0.961648, -0.269361,
		34.808083, 37.978596, 22.988928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390522, 38.593967, 22.831974>,  <34.844311, 38.651749, 23.177481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390522, 38.593967, 22.831974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173050, 38.277416, 22.720167>,  <35.042564, 38.087486, 22.653084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173050, 38.277416, 22.720167>,  <35.390522, 38.593967, 22.831974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173050, 38.277416, 22.720167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403684, 0.045414, -0.913771,
		0.735833, -0.609637, 0.294776,
		-0.543682, -0.791378, -0.279518,
		35.009945, 38.040001, 22.636312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818882, 38.259064, 22.488522>,  <35.390522, 38.593967, 22.831974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818882, 38.259064, 22.488522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471146, 38.106670, 22.362610>,  <35.262505, 38.015232, 22.287064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471146, 38.106670, 22.362610>,  <35.818882, 38.259064, 22.488522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471146, 38.106670, 22.362610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344142, -0.009556, -0.938869,
		0.354690, -0.924531, 0.139422,
		-0.869345, -0.380988, -0.314780,
		35.210342, 37.992374, 22.268175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088158, 37.656727, 22.013300>,  <35.818882, 38.259064, 22.488522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088158, 37.656727, 22.013300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713928, 37.763409, 21.920723>,  <35.489391, 37.827415, 21.865177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713928, 37.763409, 21.920723>,  <36.088158, 37.656727, 22.013300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713928, 37.763409, 21.920723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232936, -0.026479, -0.972131,
		-0.265397, -0.963415, -0.037351,
		-0.935578, 0.266701, -0.231442,
		35.433254, 37.843418, 21.851290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922237, 37.326096, 21.428328>,  <36.088158, 37.656727, 22.013300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922237, 37.326096, 21.428328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605667, 37.570473, 21.420370>,  <35.415726, 37.717098, 21.415596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.605667, 37.570473, 21.420370>,  <35.922237, 37.326096, 21.428328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605667, 37.570473, 21.420370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162513, 0.178924, -0.970348,
		-0.589267, -0.771191, -0.240891,
		-0.791425, 0.610943, -0.019895,
		35.368240, 37.753754, 21.414402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541241, 37.125488, 20.802290>,  <35.922237, 37.326096, 21.428328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541241, 37.125488, 20.802290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446022, 37.498333, 20.911470>,  <35.388889, 37.722038, 20.976978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.446022, 37.498333, 20.911470>,  <35.541241, 37.125488, 20.802290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446022, 37.498333, 20.911470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024738, 0.275119, -0.961092,
		-0.970939, -0.235535, -0.042433,
		-0.238045, 0.932112, 0.272951,
		35.374607, 37.777966, 20.993355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989063, 37.330196, 20.258753>,  <35.541241, 37.125488, 20.802290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989063, 37.330196, 20.258753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166916, 37.648350, 20.423515>,  <35.273628, 37.839241, 20.522373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.166916, 37.648350, 20.423515>,  <34.989063, 37.330196, 20.258753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166916, 37.648350, 20.423515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313837, 0.292372, -0.903341,
		-0.838931, 0.530928, -0.119622,
		0.444635, 0.795383, 0.411905,
		35.300308, 37.886963, 20.547087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845173, 37.748913, 19.744205>,  <34.989063, 37.330196, 20.258753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845173, 37.748913, 19.744205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136814, 37.914265, 19.962389>,  <35.311798, 38.013477, 20.093298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136814, 37.914265, 19.962389>,  <34.845173, 37.748913, 19.744205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136814, 37.914265, 19.962389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407955, 0.377421, -0.831340,
		-0.549525, 0.828656, 0.106539,
		0.729105, 0.413379, 0.545457,
		35.355545, 38.038277, 20.126026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894039, 38.486286, 19.626768>,  <34.845173, 37.748913, 19.744205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894039, 38.486286, 19.626768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.256687, 38.394737, 19.768557>,  <35.474277, 38.339809, 19.853630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.256687, 38.394737, 19.768557>,  <34.894039, 38.486286, 19.626768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256687, 38.394737, 19.768557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420139, 0.412181, -0.808449,
		0.038925, 0.881887, 0.469851,
		0.906625, -0.228872, 0.354471,
		35.528675, 38.326077, 19.874897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314999, 39.149719, 19.654570>,  <34.894039, 38.486286, 19.626768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314999, 39.149719, 19.654570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582767, 38.854370, 19.687277>,  <35.743427, 38.677162, 19.706902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.582767, 38.854370, 19.687277>,  <35.314999, 39.149719, 19.654570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582767, 38.854370, 19.687277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613355, 0.487243, -0.621602,
		0.419130, 0.466268, 0.779054,
		0.669422, -0.738369, 0.081770,
		35.783592, 38.632858, 19.711807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880554, 39.498619, 19.665812>,  <35.314999, 39.149719, 19.654570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880554, 39.498619, 19.665812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997368, 39.125961, 19.579323>,  <36.067455, 38.902367, 19.527430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.997368, 39.125961, 19.579323>,  <35.880554, 39.498619, 19.665812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997368, 39.125961, 19.579323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541179, 0.347369, -0.765807,
		0.788569, 0.106627, 0.605631,
		0.292033, -0.931647, -0.216220,
		36.084976, 38.846466, 19.514456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625244, 39.358170, 19.785856>,  <35.880554, 39.498619, 19.665812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625244, 39.358170, 19.785856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519196, 39.097908, 19.501223>,  <36.455566, 38.941750, 19.330442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.519196, 39.097908, 19.501223>,  <36.625244, 39.358170, 19.785856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519196, 39.097908, 19.501223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711550, 0.366009, -0.599779,
		0.650698, -0.665343, 0.365939,
		-0.265121, -0.650658, -0.711586,
		36.439659, 38.902710, 19.287746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207996, 39.241470, 19.485626>,  <36.625244, 39.358170, 19.785856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207996, 39.241470, 19.485626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928757, 39.139721, 19.217911>,  <36.761211, 39.078671, 19.057281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.928757, 39.139721, 19.217911>,  <37.207996, 39.241470, 19.485626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928757, 39.139721, 19.217911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593634, 0.316992, -0.739672,
		0.400316, -0.913678, -0.070284,
		-0.698101, -0.254380, -0.669287,
		36.719326, 39.063408, 19.017124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745285, 39.400417, 19.949236>,  <37.207996, 39.241470, 19.485626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745285, 39.400417, 19.949236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091858, 39.597095, 19.983961>,  <38.299801, 39.715103, 20.004797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.091858, 39.597095, 19.983961>,  <37.745285, 39.400417, 19.949236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091858, 39.597095, 19.983961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119315, 0.035058, 0.992237,
		0.484833, -0.870062, 0.089041,
		0.866430, 0.491694, 0.086815,
		38.351788, 39.744602, 20.010006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202019, 38.966530, 20.458090>,  <37.745285, 39.400417, 19.949236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202019, 38.966530, 20.458090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349213, 39.337971, 20.438925>,  <38.437527, 39.560833, 20.427425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349213, 39.337971, 20.438925>,  <38.202019, 38.966530, 20.458090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349213, 39.337971, 20.438925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001319, 0.052048, 0.998644,
		0.929833, -0.367418, 0.020377,
		0.367980, 0.928598, -0.047911,
		38.459606, 39.616550, 20.424551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753273, 39.031975, 20.853533>,  <38.202019, 38.966530, 20.458090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753273, 39.031975, 20.853533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.635490, 39.413494, 20.829655>,  <38.564823, 39.642406, 20.815329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.635490, 39.413494, 20.829655>,  <38.753273, 39.031975, 20.853533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635490, 39.413494, 20.829655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074751, 0.085259, 0.993551,
		0.952738, 0.288092, -0.096402,
		-0.294453, 0.953800, -0.059695,
		38.547153, 39.699635, 20.811747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179405, 39.367352, 21.242323>,  <38.753273, 39.031975, 20.853533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179405, 39.367352, 21.242323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876286, 39.627308, 21.219055>,  <38.694412, 39.783283, 21.205095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876286, 39.627308, 21.219055>,  <39.179405, 39.367352, 21.242323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876286, 39.627308, 21.219055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058945, 0.156972, 0.985843,
		0.649821, 0.743641, -0.157261,
		-0.757799, 0.649890, -0.058170,
		38.648945, 39.822273, 21.201605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442860, 39.887371, 21.706409>,  <39.179405, 39.367352, 21.242323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442860, 39.887371, 21.706409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.057655, 39.983574, 21.657793>,  <38.826534, 40.041294, 21.628622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.057655, 39.983574, 21.657793>,  <39.442860, 39.887371, 21.706409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057655, 39.983574, 21.657793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028354, 0.358101, 0.933252,
		0.267977, 0.902176, -0.338034,
		-0.963008, 0.240505, -0.121543,
		38.768753, 40.055725, 21.621330>
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
