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
	<24.321035, 35.211750, 35.436951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288427, 35.271839, 35.042835>,  <24.268862, 35.307892, 34.806366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.288427, 35.271839, 35.042835>,  <24.321035, 35.211750, 35.436951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.288427, 35.271839, 35.042835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268258, -0.948787, -0.166856,
		-0.959892, -0.277913, 0.037046,
		-0.081520, 0.150226, -0.985285,
		24.263971, 35.316906, 34.747250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.559551, 34.633884, 35.038162>,  <24.321035, 35.211750, 35.436951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.559551, 34.633884, 35.038162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599091, 34.770298, 34.664227>,  <24.622814, 34.852146, 34.439865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599091, 34.770298, 34.664227>,  <24.559551, 34.633884, 35.038162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.599091, 34.770298, 34.664227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654571, -0.729870, -0.197047,
		-0.749511, -0.592440, -0.295378,
		0.098849, 0.341035, -0.934839,
		24.628746, 34.872608, 34.383774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313780, 34.204529, 34.399704>,  <24.559551, 34.633884, 35.038162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.313780, 34.204529, 34.399704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650372, 34.417908, 34.365425>,  <24.852327, 34.545937, 34.344860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650372, 34.417908, 34.365425>,  <24.313780, 34.204529, 34.399704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650372, 34.417908, 34.365425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534206, -0.845207, -0.015793,
		-0.080855, -0.032489, -0.996196,
		0.841479, 0.533451, -0.085695,
		24.902815, 34.577942, 34.339718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.653206, 33.936893, 33.815689>,  <24.313780, 34.204529, 34.399704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.653206, 33.936893, 33.815689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937330, 34.120502, 34.029140>,  <25.107805, 34.230667, 34.157211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.937330, 34.120502, 34.029140>,  <24.653206, 33.936893, 33.815689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.937330, 34.120502, 34.029140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534771, -0.844866, 0.014907,
		0.457688, 0.274781, -0.845587,
		0.710311, 0.459018, 0.533630,
		25.150423, 34.258209, 34.189228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309116, 33.815075, 33.444729>,  <24.653206, 33.936893, 33.815689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309116, 33.815075, 33.444729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372269, 33.908833, 33.828423>,  <25.410160, 33.965088, 34.058640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372269, 33.908833, 33.828423>,  <25.309116, 33.815075, 33.444729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372269, 33.908833, 33.828423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540647, -0.833399, 0.114657,
		0.826302, 0.500507, -0.258298,
		0.157879, 0.234389, 0.959237,
		25.419632, 33.979149, 34.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007652, 33.773270, 33.545822>,  <25.309116, 33.815075, 33.444729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007652, 33.773270, 33.545822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841967, 33.717300, 33.905567>,  <25.742556, 33.683720, 34.121414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841967, 33.717300, 33.905567>,  <26.007652, 33.773270, 33.545822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841967, 33.717300, 33.905567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264684, -0.963927, -0.028060,
		0.870843, 0.226423, 0.436309,
		-0.414216, -0.139920, 0.899360,
		25.717701, 33.675323, 34.175377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559488, 33.451694, 33.950493>,  <26.007652, 33.773270, 33.545822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559488, 33.451694, 33.950493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219156, 33.379131, 34.147747>,  <26.014957, 33.335594, 34.266098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.219156, 33.379131, 34.147747>,  <26.559488, 33.451694, 33.950493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.219156, 33.379131, 34.147747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282989, -0.948973, 0.139166,
		0.442725, 0.257958, 0.858751,
		-0.850830, -0.181405, 0.493133,
		25.963907, 33.324711, 34.295689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761461, 33.006985, 34.460442>,  <26.559488, 33.451694, 33.950493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761461, 33.006985, 34.460442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366179, 32.966743, 34.414265>,  <26.129009, 32.942600, 34.386559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366179, 32.966743, 34.414265>,  <26.761461, 33.006985, 34.460442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366179, 32.966743, 34.414265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042246, -0.903768, 0.425933,
		-0.147183, 0.416033, 0.897359,
		-0.988207, -0.100600, -0.115443,
		26.069717, 32.936562, 34.379631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434330, 32.818474, 35.081726>,  <26.761461, 33.006985, 34.460442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434330, 32.818474, 35.081726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187813, 32.677105, 34.800220>,  <26.039904, 32.592285, 34.631317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187813, 32.677105, 34.800220>,  <26.434330, 32.818474, 35.081726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187813, 32.677105, 34.800220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096005, -0.853262, 0.512569,
		-0.781644, 0.383457, 0.491928,
		-0.616292, -0.353419, -0.703761,
		26.002926, 32.571079, 34.589092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068439, 32.369362, 35.464310>,  <26.434330, 32.818474, 35.081726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068439, 32.369362, 35.464310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990036, 32.259090, 35.087887>,  <25.942993, 32.192928, 34.862034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.990036, 32.259090, 35.087887>,  <26.068439, 32.369362, 35.464310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990036, 32.259090, 35.087887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062745, -0.954177, 0.292589,
		-0.978592, 0.116398, 0.169732,
		-0.196011, -0.275675, -0.941054,
		25.931232, 32.176388, 34.805569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469200, 31.805387, 35.470058>,  <26.068439, 32.369362, 35.464310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469200, 31.805387, 35.470058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704176, 31.761677, 35.149315>,  <25.845161, 31.735451, 34.956867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704176, 31.761677, 35.149315>,  <25.469200, 31.805387, 35.470058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704176, 31.761677, 35.149315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012041, -0.991912, 0.126356,
		-0.809180, -0.064571, -0.584002,
		0.587438, -0.109276, -0.801858,
		25.880407, 31.728893, 34.908756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243040, 31.331347, 34.921906>,  <25.469200, 31.805387, 35.470058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243040, 31.331347, 34.921906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642729, 31.336184, 34.936913>,  <25.882542, 31.339087, 34.945915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642729, 31.336184, 34.936913>,  <25.243040, 31.331347, 34.921906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642729, 31.336184, 34.936913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002355, -0.968374, 0.249490,
		0.039345, -0.249208, -0.967651,
		0.999223, 0.012095, 0.037514,
		25.942495, 31.339811, 34.948166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474815, 30.751842, 34.483532>,  <25.243040, 31.331347, 34.921906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474815, 30.751842, 34.483532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763390, 30.853018, 34.741386>,  <25.936533, 30.913723, 34.896099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763390, 30.853018, 34.741386>,  <25.474815, 30.751842, 34.483532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763390, 30.853018, 34.741386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253993, -0.962678, 0.093479,
		0.644222, 0.096294, -0.758753,
		0.721433, 0.252939, 0.644636,
		25.979820, 30.928900, 34.934776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015690, 30.288721, 34.436195>,  <25.474815, 30.751842, 34.483532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015690, 30.288721, 34.436195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097292, 30.473701, 34.781338>,  <26.146254, 30.584690, 34.988422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097292, 30.473701, 34.781338>,  <26.015690, 30.288721, 34.436195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097292, 30.473701, 34.781338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551147, -0.782695, 0.289180,
		0.809086, 0.416568, -0.414549,
		0.204003, 0.462449, 0.862858,
		26.158493, 30.612436, 35.040195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813845, 30.462105, 34.553337>,  <26.015690, 30.288721, 34.436195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813845, 30.462105, 34.553337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628508, 30.315725, 34.876175>,  <26.517305, 30.227898, 35.069878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628508, 30.315725, 34.876175>,  <26.813845, 30.462105, 34.553337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628508, 30.315725, 34.876175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749540, -0.647708, 0.136617,
		0.472764, 0.668247, 0.574404,
		-0.463340, -0.365951, 0.807091,
		26.489506, 30.205940, 35.118301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991688, 31.263592, 34.502968>,  <26.813845, 30.462105, 34.553337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991688, 31.263592, 34.502968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600761, 31.272966, 34.587162>,  <26.366205, 31.278591, 34.637680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600761, 31.272966, 34.587162>,  <26.991688, 31.263592, 34.502968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600761, 31.272966, 34.587162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105939, 0.806489, -0.581681,
		-0.183387, -0.590785, -0.785711,
		-0.977315, 0.023435, 0.210487,
		26.307568, 31.279997, 34.650307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700504, 31.444096, 33.924126>,  <26.991688, 31.263592, 34.502968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700504, 31.444096, 33.924126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441019, 31.553728, 34.208111>,  <26.285328, 31.619509, 34.378502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441019, 31.553728, 34.208111>,  <26.700504, 31.444096, 33.924126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441019, 31.553728, 34.208111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223526, 0.823129, -0.522011,
		-0.727467, -0.497331, -0.472709,
		-0.648712, 0.274083, 0.709965,
		26.246405, 31.635954, 34.421101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009373, 31.697704, 33.602848>,  <26.700504, 31.444096, 33.924126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009373, 31.697704, 33.602848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985889, 31.851812, 33.971222>,  <25.971800, 31.944277, 34.192245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985889, 31.851812, 33.971222>,  <26.009373, 31.697704, 33.602848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985889, 31.851812, 33.971222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230248, 0.892427, -0.388020,
		-0.971360, -0.234823, 0.036316,
		-0.058707, 0.385269, 0.920935,
		25.968277, 31.967394, 34.247501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429243, 32.040871, 33.627232>,  <26.009373, 31.697704, 33.602848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429243, 32.040871, 33.627232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643507, 32.203911, 33.923050>,  <25.772066, 32.301735, 34.100540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.643507, 32.203911, 33.923050>,  <25.429243, 32.040871, 33.627232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.643507, 32.203911, 33.923050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215805, 0.912788, -0.346767,
		-0.816391, 0.026151, 0.576907,
		0.535662, 0.407597, 0.739548,
		25.804205, 32.326191, 34.144913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943287, 32.489697, 33.984455>,  <25.429243, 32.040871, 33.627232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943287, 32.489697, 33.984455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298344, 32.646004, 34.081940>,  <25.511377, 32.739788, 34.140430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298344, 32.646004, 34.081940>,  <24.943287, 32.489697, 33.984455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298344, 32.646004, 34.081940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383886, 0.920150, -0.077175,
		-0.254404, -0.025052, 0.966774,
		0.887643, 0.390764, 0.243707,
		25.564636, 32.763233, 34.155052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127655, 32.320362, 34.665916>,  <24.943287, 32.489697, 33.984455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127655, 32.320362, 34.665916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420980, 32.591419, 34.687992>,  <25.596975, 32.754055, 34.701237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420980, 32.591419, 34.687992>,  <25.127655, 32.320362, 34.665916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420980, 32.591419, 34.687992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609579, 0.691255, -0.388048,
		-0.301107, 0.250921, 0.919986,
		0.733314, 0.677647, 0.055186,
		25.640974, 32.794712, 34.704548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.768087, 33.041466, 34.859028>,  <25.127655, 32.320362, 34.665916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.768087, 33.041466, 34.859028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137735, 33.132401, 34.736179>,  <25.359524, 33.186962, 34.662472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137735, 33.132401, 34.736179>,  <24.768087, 33.041466, 34.859028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137735, 33.132401, 34.736179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303381, 0.925186, -0.228014,
		0.232306, 0.303887, 0.923952,
		0.924118, 0.227340, -0.307120,
		25.414970, 33.200603, 34.644043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102053, 33.583035, 35.315891>,  <24.768087, 33.041466, 34.859028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102053, 33.583035, 35.315891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302240, 33.590630, 34.969673>,  <25.422354, 33.595188, 34.761944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302240, 33.590630, 34.969673>,  <25.102053, 33.583035, 35.315891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302240, 33.590630, 34.969673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189008, 0.978040, -0.087827,
		0.844871, 0.207550, 0.493068,
		0.500469, 0.018991, -0.865546,
		25.452381, 33.596329, 34.710011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816189, 33.671696, 35.346916>,  <25.102053, 33.583035, 35.315891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816189, 33.671696, 35.346916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858559, 33.753605, 34.957691>,  <25.883980, 33.802750, 34.724155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.858559, 33.753605, 34.957691>,  <25.816189, 33.671696, 35.346916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858559, 33.753605, 34.957691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410207, 0.900419, 0.144832,
		0.905820, 0.383815, 0.179377,
		0.105926, 0.204774, -0.973061,
		25.890335, 33.815037, 34.665771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947189, 34.430336, 35.277927>,  <25.816189, 33.671696, 35.346916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947189, 34.430336, 35.277927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796057, 34.316448, 34.925522>,  <25.705378, 34.248116, 34.714081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796057, 34.316448, 34.925522>,  <25.947189, 34.430336, 35.277927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796057, 34.316448, 34.925522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250761, 0.947448, -0.198649,
		0.891270, 0.145867, -0.429373,
		-0.377832, -0.284720, -0.881009,
		25.682707, 34.231033, 34.661221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034517, 34.984921, 34.794804>,  <25.947189, 34.430336, 35.277927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034517, 34.984921, 34.794804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752569, 34.775066, 34.603840>,  <25.583401, 34.649155, 34.489262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752569, 34.775066, 34.603840>,  <26.034517, 34.984921, 34.794804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752569, 34.775066, 34.603840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455091, 0.850732, -0.262960,
		0.544103, 0.031911, -0.838411,
		-0.704872, -0.524631, -0.477408,
		25.541107, 34.617676, 34.460617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991060, 35.258427, 34.197517>,  <26.034517, 34.984921, 34.794804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991060, 35.258427, 34.197517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646946, 35.059486, 34.242336>,  <25.440477, 34.940125, 34.269226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646946, 35.059486, 34.242336>,  <25.991060, 35.258427, 34.197517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646946, 35.059486, 34.242336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499998, 0.780176, -0.375935,
		0.099554, -0.379436, -0.919847,
		-0.860286, -0.497348, 0.112048,
		25.388861, 34.910282, 34.275951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.573639, 35.452679, 33.667648>,  <25.991060, 35.258427, 34.197517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.573639, 35.452679, 33.667648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320227, 35.307339, 33.940884>,  <25.168179, 35.220135, 34.104824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320227, 35.307339, 33.940884>,  <25.573639, 35.452679, 33.667648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320227, 35.307339, 33.940884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690397, 0.664022, -0.287102,
		-0.349269, -0.653492, -0.671535,
		-0.633533, -0.363350, 0.683091,
		25.130167, 35.198334, 34.145809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766802, 36.181110, 33.627609>,  <25.573639, 35.452679, 33.667648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766802, 36.181110, 33.627609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121767, 36.091862, 33.788960>,  <26.334745, 36.038311, 33.885769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.121767, 36.091862, 33.788960>,  <25.766802, 36.181110, 33.627609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121767, 36.091862, 33.788960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194979, -0.974604, -0.110141,
		0.417710, 0.019091, -0.908380,
		0.887413, -0.223122, 0.403379,
		26.387991, 36.024925, 33.909973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477896, 36.027409, 33.378780>,  <25.766802, 36.181110, 33.627609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477896, 36.027409, 33.378780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851830, 36.051300, 33.238773>,  <27.076191, 36.065636, 33.154770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851830, 36.051300, 33.238773>,  <26.477896, 36.027409, 33.378780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851830, 36.051300, 33.238773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253987, -0.801343, 0.541608,
		-0.248138, -0.595215, -0.764295,
		0.934836, 0.059727, -0.350021,
		27.132280, 36.069218, 33.133766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667345, 35.300056, 33.210293>,  <26.477896, 36.027409, 33.378780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667345, 35.300056, 33.210293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007774, 35.503368, 33.262947>,  <27.212032, 35.625355, 33.294540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007774, 35.503368, 33.262947>,  <26.667345, 35.300056, 33.210293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007774, 35.503368, 33.262947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321179, -0.702318, 0.635290,
		0.415356, -0.498399, -0.760972,
		0.851072, 0.508280, 0.131636,
		27.263096, 35.655853, 33.302437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202040, 34.840488, 33.086113>,  <26.667345, 35.300056, 33.210293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202040, 34.840488, 33.086113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340124, 35.125057, 33.330967>,  <27.422974, 35.295799, 33.477879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340124, 35.125057, 33.330967>,  <27.202040, 34.840488, 33.086113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340124, 35.125057, 33.330967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269268, -0.699885, 0.661555,
		0.899069, -0.063547, -0.433171,
		0.345210, 0.711423, 0.612134,
		27.443687, 35.338486, 33.514606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833851, 34.587227, 33.352524>,  <27.202040, 34.840488, 33.086113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833851, 34.587227, 33.352524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738764, 34.884365, 33.602859>,  <27.681711, 35.062649, 33.753059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738764, 34.884365, 33.602859>,  <27.833851, 34.587227, 33.352524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738764, 34.884365, 33.602859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327127, -0.545444, 0.771673,
		0.914592, 0.388168, -0.113343,
		-0.237717, 0.742843, 0.625839,
		27.667448, 35.107220, 33.790611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406998, 34.805614, 33.814980>,  <27.833851, 34.587227, 33.352524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406998, 34.805614, 33.814980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063761, 34.873726, 34.008755>,  <27.857819, 34.914593, 34.125019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063761, 34.873726, 34.008755>,  <28.406998, 34.805614, 33.814980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063761, 34.873726, 34.008755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278551, -0.638188, 0.717722,
		0.431376, 0.750814, 0.500193,
		-0.858093, 0.170279, 0.484439,
		27.806334, 34.924809, 34.154087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432531, 35.245182, 34.467308>,  <28.406998, 34.805614, 33.814980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432531, 35.245182, 34.467308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170240, 34.943279, 34.474991>,  <28.012865, 34.762138, 34.479599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170240, 34.943279, 34.474991>,  <28.432531, 35.245182, 34.467308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170240, 34.943279, 34.474991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651386, -0.552693, 0.519833,
		-0.381731, 0.353380, 0.854052,
		-0.655727, -0.754754, 0.019206,
		27.973522, 34.716854, 34.480751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482704, 35.030117, 35.061523>,  <28.432531, 35.245182, 34.467308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482704, 35.030117, 35.061523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353159, 34.707397, 34.863857>,  <28.275433, 34.513767, 34.745258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353159, 34.707397, 34.863857>,  <28.482704, 35.030117, 35.061523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353159, 34.707397, 34.863857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493841, -0.589668, 0.639071,
		-0.806990, -0.037065, 0.589401,
		-0.323864, -0.806795, -0.494161,
		28.256001, 34.465359, 34.715611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064402, 34.809334, 35.749397>,  <28.482704, 35.030117, 35.061523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064402, 34.809334, 35.749397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826134, 34.671825, 35.459019>,  <27.683172, 34.589321, 35.284790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826134, 34.671825, 35.459019>,  <28.064402, 34.809334, 35.749397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826134, 34.671825, 35.459019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472084, -0.581373, 0.662678,
		-0.649856, 0.737445, 0.184016,
		-0.595670, -0.343775, -0.725945,
		27.647432, 34.568691, 35.241234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335449, 34.766197, 36.007965>,  <28.064402, 34.809334, 35.749397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335449, 34.766197, 36.007965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360424, 34.510159, 35.701664>,  <27.375408, 34.356533, 35.517883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360424, 34.510159, 35.701664>,  <27.335449, 34.766197, 36.007965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360424, 34.510159, 35.701664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402877, -0.718125, 0.567439,
		-0.913122, 0.273075, -0.302717,
		0.062436, -0.640099, -0.765751,
		27.379154, 34.318130, 35.471939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762770, 34.373672, 36.100075>,  <27.335449, 34.766197, 36.007965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762770, 34.373672, 36.100075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056229, 34.180679, 35.908672>,  <27.232304, 34.064884, 35.793831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056229, 34.180679, 35.908672>,  <26.762770, 34.373672, 36.100075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056229, 34.180679, 35.908672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079715, -0.760416, 0.644525,
		-0.674836, -0.434711, -0.596341,
		0.733649, -0.482486, -0.478503,
		27.276323, 34.035934, 35.765121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542139, 33.682819, 36.285683>,  <26.762770, 34.373672, 36.100075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542139, 33.682819, 36.285683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724361, 33.331123, 36.229973>,  <26.833694, 33.120106, 36.196548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724361, 33.331123, 36.229973>,  <26.542139, 33.682819, 36.285683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724361, 33.331123, 36.229973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294481, 0.296484, -0.908503,
		0.840088, 0.372863, 0.393986,
		0.455558, -0.879244, -0.139271,
		26.861029, 33.067348, 36.188190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324751, 33.735783, 36.286518>,  <26.542139, 33.682819, 36.285683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324751, 33.735783, 36.286518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171047, 33.435867, 36.071053>,  <27.078825, 33.255917, 35.941772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171047, 33.435867, 36.071053>,  <27.324751, 33.735783, 36.286518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171047, 33.435867, 36.071053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360548, 0.415254, -0.835206,
		0.849911, -0.515151, 0.110770,
		-0.384259, -0.749789, -0.538666,
		27.055769, 33.210930, 35.909454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823467, 33.186749, 35.941387>,  <27.324751, 33.735783, 36.286518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823467, 33.186749, 35.941387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483803, 33.311504, 35.770905>,  <27.280005, 33.386360, 35.668613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483803, 33.311504, 35.770905>,  <27.823467, 33.186749, 35.941387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483803, 33.311504, 35.770905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524708, 0.590036, -0.613627,
		0.060090, -0.744701, -0.664688,
		-0.849159, 0.311895, -0.426206,
		27.229055, 33.405071, 35.643044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717754, 33.090881, 35.104935>,  <27.823467, 33.186749, 35.941387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717754, 33.090881, 35.104935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534033, 33.420631, 35.237263>,  <27.423800, 33.618481, 35.316658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534033, 33.420631, 35.237263>,  <27.717754, 33.090881, 35.104935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534033, 33.420631, 35.237263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345892, 0.509017, -0.788201,
		-0.818169, -0.247594, -0.518938,
		-0.459302, 0.824378, 0.330822,
		27.396242, 33.667946, 35.336510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568327, 33.480881, 34.509148>,  <27.717754, 33.090881, 35.104935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568327, 33.480881, 34.509148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506544, 33.753433, 34.795326>,  <27.469475, 33.916965, 34.967033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506544, 33.753433, 34.795326>,  <27.568327, 33.480881, 34.509148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506544, 33.753433, 34.795326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172847, 0.731606, -0.659452,
		-0.972763, 0.021807, -0.230776,
		-0.154456, 0.681379, 0.715448,
		27.460207, 33.957848, 35.009960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956093, 34.000790, 34.323292>,  <27.568327, 33.480881, 34.509148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956093, 34.000790, 34.323292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178078, 34.189503, 34.597355>,  <27.311268, 34.302731, 34.761791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178078, 34.189503, 34.597355>,  <26.956093, 34.000790, 34.323292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178078, 34.189503, 34.597355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099227, 0.780208, -0.617599,
		-0.825936, 0.410730, 0.386173,
		0.554963, 0.471779, 0.685158,
		27.344566, 34.331036, 34.802902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675993, 34.606052, 34.546387>,  <26.956093, 34.000790, 34.323292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675993, 34.606052, 34.546387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072742, 34.642567, 34.581844>,  <27.310791, 34.664474, 34.603119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072742, 34.642567, 34.581844>,  <26.675993, 34.606052, 34.546387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072742, 34.642567, 34.581844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027681, 0.834776, -0.549893,
		-0.124195, 0.542970, 0.830518,
		0.991872, 0.091283, 0.088645,
		27.370304, 34.669952, 34.608437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824551, 35.302471, 34.853680>,  <26.675993, 34.606052, 34.546387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824551, 35.302471, 34.853680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145506, 35.198013, 34.639027>,  <27.338079, 35.135338, 34.510235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145506, 35.198013, 34.639027>,  <26.824551, 35.302471, 34.853680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145506, 35.198013, 34.639027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029050, 0.881025, -0.472178,
		0.596098, 0.394458, 0.699336,
		0.802386, -0.261148, -0.536636,
		27.386221, 35.119667, 34.478035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127289, 35.888294, 34.623684>,  <26.824551, 35.302471, 34.853680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127289, 35.888294, 34.623684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342125, 35.668198, 34.367943>,  <27.471027, 35.536140, 34.214500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342125, 35.668198, 34.367943>,  <27.127289, 35.888294, 34.623684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342125, 35.668198, 34.367943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174242, 0.669235, -0.722333,
		0.825332, 0.499361, 0.263566,
		0.537092, -0.550240, -0.639350,
		27.503252, 35.503124, 34.176136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623444, 36.323662, 34.333218>,  <27.127289, 35.888294, 34.623684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623444, 36.323662, 34.333218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574434, 36.014267, 34.084476>,  <27.545029, 35.828629, 33.935230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574434, 36.014267, 34.084476>,  <27.623444, 36.323662, 34.333218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574434, 36.014267, 34.084476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133200, 0.633722, -0.762007,
		0.983487, -0.010531, -0.180673,
		-0.122521, -0.773490, -0.621854,
		27.537678, 35.782219, 33.897919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099131, 36.488693, 33.817883>,  <27.623444, 36.323662, 34.333218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099131, 36.488693, 33.817883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793428, 36.255749, 33.707054>,  <27.610006, 36.115982, 33.640556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793428, 36.255749, 33.707054>,  <28.099131, 36.488693, 33.817883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793428, 36.255749, 33.707054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194882, 0.618090, -0.761568,
		0.614760, -0.528039, -0.585872,
		-0.764259, -0.582357, -0.277072,
		27.564152, 36.081043, 33.623932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739086, 36.231560, 34.008339>,  <28.099131, 36.488693, 33.817883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739086, 36.231560, 34.008339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122307, 36.135521, 34.070938>,  <29.352240, 36.077900, 34.108498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122307, 36.135521, 34.070938>,  <28.739086, 36.231560, 34.008339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122307, 36.135521, 34.070938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283173, 0.877158, -0.387823,
		-0.044157, 0.415870, 0.908351,
		0.958052, -0.240095, 0.156496,
		29.409723, 36.063492, 34.117886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196297, 36.602264, 34.601139>,  <28.739086, 36.231560, 34.008339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196297, 36.602264, 34.601139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415096, 36.474121, 34.291775>,  <29.546377, 36.397236, 34.106155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415096, 36.474121, 34.291775>,  <29.196297, 36.602264, 34.601139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415096, 36.474121, 34.291775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075051, 0.938924, -0.335840,
		0.833761, 0.125660, 0.537636,
		0.547001, -0.320360, -0.773407,
		29.579197, 36.378014, 34.059753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779839, 36.986679, 34.643330>,  <29.196297, 36.602264, 34.601139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779839, 36.986679, 34.643330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703445, 36.861191, 34.271286>,  <29.657610, 36.785900, 34.048058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703445, 36.861191, 34.271286>,  <29.779839, 36.986679, 34.643330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703445, 36.861191, 34.271286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189185, 0.941552, -0.278729,
		0.963190, 0.122732, -0.239168,
		-0.190980, -0.313716, -0.930112,
		29.646151, 36.767075, 33.992252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307835, 36.610809, 34.164993>,  <29.779839, 36.986679, 34.643330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307835, 36.610809, 34.164993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700754, 36.632187, 34.093185>,  <30.936506, 36.645016, 34.050098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700754, 36.632187, 34.093185>,  <30.307835, 36.610809, 34.164993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700754, 36.632187, 34.093185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170182, 0.145737, 0.974576,
		0.078249, -0.987879, 0.134062,
		0.982301, 0.053445, -0.179523,
		30.995445, 36.648220, 34.039330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638302, 36.131454, 34.746132>,  <30.307835, 36.610809, 34.164993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638302, 36.131454, 34.746132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911198, 36.393532, 34.616352>,  <31.074936, 36.550777, 34.538486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911198, 36.393532, 34.616352>,  <30.638302, 36.131454, 34.746132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911198, 36.393532, 34.616352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322133, 0.128990, 0.937866,
		0.656338, -0.744364, -0.123059,
		0.682240, 0.655198, -0.324445,
		31.115870, 36.590092, 34.519020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392248, 35.987476, 35.075623>,  <30.638302, 36.131454, 34.746132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392248, 35.987476, 35.075623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311913, 36.376320, 35.027164>,  <31.263712, 36.609627, 34.998089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311913, 36.376320, 35.027164>,  <31.392248, 35.987476, 35.075623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311913, 36.376320, 35.027164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186689, 0.159376, 0.969405,
		0.961671, 0.172078, -0.213490,
		-0.200838, 0.972105, -0.121142,
		31.251661, 36.667950, 34.990822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029182, 36.012222, 35.371635>,  <31.392248, 35.987476, 35.075623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029182, 36.012222, 35.371635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269848, 35.961067, 35.056259>,  <32.414249, 35.930374, 34.867031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269848, 35.961067, 35.056259>,  <32.029182, 36.012222, 35.371635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269848, 35.961067, 35.056259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738210, 0.465993, 0.487746,
		0.305033, -0.875497, 0.374781,
		0.601666, -0.127888, -0.788444,
		32.450348, 35.922703, 34.819725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688965, 35.704601, 35.488995>,  <32.029182, 36.012222, 35.371635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688965, 35.704601, 35.488995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752781, 35.904877, 35.148674>,  <32.791069, 36.025040, 34.944481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752781, 35.904877, 35.148674>,  <32.688965, 35.704601, 35.488995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752781, 35.904877, 35.148674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582529, 0.648052, 0.490600,
		0.797000, -0.573885, -0.188275,
		0.159535, 0.500684, -0.850802,
		32.800640, 36.055080, 34.893433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436581, 35.817097, 35.366230>,  <32.688965, 35.704601, 35.488995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436581, 35.817097, 35.366230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187069, 36.091049, 35.215584>,  <33.037361, 36.255421, 35.125198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187069, 36.091049, 35.215584>,  <33.436581, 35.817097, 35.366230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187069, 36.091049, 35.215584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366569, 0.681915, 0.632945,
		0.690311, 0.256762, -0.676419,
		-0.623777, 0.684884, -0.376612,
		32.999935, 36.296513, 35.102600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831734, 36.325108, 34.971848>,  <33.436581, 35.817097, 35.366230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831734, 36.325108, 34.971848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502640, 36.471119, 35.146137>,  <33.305183, 36.558727, 35.250713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502640, 36.471119, 35.146137>,  <33.831734, 36.325108, 34.971848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502640, 36.471119, 35.146137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553932, 0.686868, 0.470502,
		-0.127540, 0.628462, -0.767313,
		-0.822735, 0.365032, 0.435728,
		33.255821, 36.580627, 35.276855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618187, 37.000401, 34.822830>,  <33.831734, 36.325108, 34.971848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618187, 37.000401, 34.822830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465260, 36.943237, 35.187996>,  <33.373505, 36.908939, 35.407097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465260, 36.943237, 35.187996>,  <33.618187, 37.000401, 34.822830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465260, 36.943237, 35.187996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523834, 0.780354, 0.341534,
		-0.761204, 0.608789, -0.223482,
		-0.382318, -0.142910, 0.912913,
		33.350563, 36.900364, 35.461868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366909, 37.718163, 35.176472>,  <33.618187, 37.000401, 34.822830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366909, 37.718163, 35.176472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462738, 37.438168, 35.445583>,  <33.520237, 37.270172, 35.607048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462738, 37.438168, 35.445583>,  <33.366909, 37.718163, 35.176472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462738, 37.438168, 35.445583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532335, 0.674213, 0.511915,
		-0.811926, 0.235500, 0.534150,
		0.239575, -0.699983, 0.672776,
		33.534611, 37.228172, 35.647415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185177, 37.907867, 35.863239>,  <33.366909, 37.718163, 35.176472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185177, 37.907867, 35.863239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498520, 37.659508, 35.874844>,  <33.686523, 37.510494, 35.881805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498520, 37.659508, 35.874844>,  <33.185177, 37.907867, 35.863239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498520, 37.659508, 35.874844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450314, 0.599077, 0.662060,
		-0.428452, -0.505564, 0.748888,
		0.783356, -0.620896, 0.029013,
		33.733528, 37.473240, 35.883549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526009, 38.121815, 36.454327>,  <33.185177, 37.907867, 35.863239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526009, 38.121815, 36.454327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801266, 37.888374, 36.281879>,  <33.966419, 37.748310, 36.178410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801266, 37.888374, 36.281879>,  <33.526009, 38.121815, 36.454327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801266, 37.888374, 36.281879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712500, 0.431248, 0.553506,
		-0.137110, -0.688064, 0.712579,
		0.688145, -0.583604, -0.431118,
		34.007710, 37.713295, 36.152546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090027, 37.935352, 36.996376>,  <33.526009, 38.121815, 36.454327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090027, 37.935352, 36.996376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247478, 37.895691, 36.630814>,  <34.341949, 37.871895, 36.411476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247478, 37.895691, 36.630814>,  <34.090027, 37.935352, 36.996376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247478, 37.895691, 36.630814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774539, 0.571231, 0.271633,
		0.495119, -0.814779, 0.301650,
		0.393633, -0.099149, -0.913906,
		34.365570, 37.865948, 36.356644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835823, 37.744831, 37.078918>,  <34.090027, 37.935352, 36.996376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835823, 37.744831, 37.078918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791191, 37.948528, 36.737576>,  <34.764412, 38.070747, 36.532768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791191, 37.948528, 36.737576>,  <34.835823, 37.744831, 37.078918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791191, 37.948528, 36.737576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750683, 0.605882, 0.263404,
		0.651172, -0.611212, -0.449884,
		-0.111581, 0.509241, -0.853360,
		34.757717, 38.101299, 36.481567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570839, 37.643131, 36.980560>,  <34.835823, 37.744831, 37.078918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570839, 37.643131, 36.980560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865875, 37.911827, 37.008057>,  <36.042896, 38.073044, 37.024555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865875, 37.911827, 37.008057>,  <35.570839, 37.643131, 36.980560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865875, 37.911827, 37.008057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237307, -0.162565, -0.957736,
		-0.632173, 0.722731, -0.279315,
		0.737592, 0.671738, 0.068740,
		36.087154, 38.113350, 37.028679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593872, 38.172733, 36.359573>,  <35.570839, 37.643131, 36.980560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593872, 38.172733, 36.359573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957203, 38.195042, 36.525379>,  <36.175201, 38.208427, 36.624863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957203, 38.195042, 36.525379>,  <35.593872, 38.172733, 36.359573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957203, 38.195042, 36.525379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411731, 0.055100, -0.909638,
		-0.073574, 0.996922, 0.027085,
		0.908331, 0.055774, 0.414517,
		36.229702, 38.211773, 36.649734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852516, 38.839447, 36.082745>,  <35.593872, 38.172733, 36.359573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852516, 38.839447, 36.082745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150444, 38.590076, 36.177898>,  <36.329201, 38.440453, 36.234989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150444, 38.590076, 36.177898>,  <35.852516, 38.839447, 36.082745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150444, 38.590076, 36.177898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456722, 0.216399, -0.862889,
		0.486469, 0.751341, 0.445909,
		0.744818, -0.623425, 0.237882,
		36.373890, 38.403049, 36.249264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421806, 39.164726, 35.764122>,  <35.852516, 38.839447, 36.082745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421806, 39.164726, 35.764122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520340, 38.786358, 35.848557>,  <36.579460, 38.559338, 35.899216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520340, 38.786358, 35.848557>,  <36.421806, 39.164726, 35.764122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520340, 38.786358, 35.848557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439303, -0.085159, -0.894293,
		0.863905, 0.313027, 0.394567,
		0.246337, -0.945919, 0.211083,
		36.594242, 38.502583, 35.911880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054634, 39.125565, 35.559509>,  <36.421806, 39.164726, 35.764122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054634, 39.125565, 35.559509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941662, 38.742943, 35.588455>,  <36.873878, 38.513371, 35.605824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941662, 38.742943, 35.588455>,  <37.054634, 39.125565, 35.559509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941662, 38.742943, 35.588455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275413, -0.153110, -0.949055,
		0.918903, -0.248109, 0.306690,
		-0.282426, -0.956556, 0.072361,
		36.856934, 38.455975, 35.610165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639599, 38.672070, 35.463856>,  <37.054634, 39.125565, 35.559509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639599, 38.672070, 35.463856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302773, 38.482185, 35.361427>,  <37.100677, 38.368256, 35.299969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302773, 38.482185, 35.361427>,  <37.639599, 38.672070, 35.463856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302773, 38.482185, 35.361427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375071, -0.174179, -0.910485,
		0.387614, -0.862736, 0.324720,
		-0.842067, -0.474710, -0.256073,
		37.050152, 38.339771, 35.284607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993111, 38.155453, 35.042488>,  <37.639599, 38.672070, 35.463856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993111, 38.155453, 35.042488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600536, 38.130089, 34.970074>,  <37.364994, 38.114872, 34.926624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600536, 38.130089, 34.970074>,  <37.993111, 38.155453, 35.042488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600536, 38.130089, 34.970074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191535, -0.374954, -0.907041,
		-0.010366, -0.924872, 0.380137,
		-0.981431, -0.063407, -0.181032,
		37.306107, 38.111069, 34.915764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988430, 37.613613, 34.671463>,  <37.993111, 38.155453, 35.042488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988430, 37.613613, 34.671463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632038, 37.773029, 34.584454>,  <37.418201, 37.868679, 34.532249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632038, 37.773029, 34.584454>,  <37.988430, 37.613613, 34.671463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632038, 37.773029, 34.584454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173133, -0.144669, -0.974216,
		-0.419732, -0.905670, 0.059897,
		-0.890983, 0.398539, -0.217523,
		37.364742, 37.892590, 34.519196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700043, 37.090992, 34.102116>,  <37.988430, 37.613613, 34.671463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700043, 37.090992, 34.102116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511395, 37.443497, 34.089794>,  <37.398205, 37.654999, 34.082401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511395, 37.443497, 34.089794>,  <37.700043, 37.090992, 34.102116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511395, 37.443497, 34.089794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110945, 0.024644, -0.993521,
		-0.874795, -0.471980, -0.109394,
		-0.471618, 0.881265, -0.030805,
		37.369907, 37.707874, 34.080551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069870, 37.093704, 33.714645>,  <37.700043, 37.090992, 34.102116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069870, 37.093704, 33.714645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195004, 37.473431, 33.702423>,  <37.270084, 37.701267, 33.695091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.195004, 37.473431, 33.702423>,  <37.069870, 37.093704, 33.714645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195004, 37.473431, 33.702423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014249, -0.027474, -0.999521,
		-0.949702, 0.313117, 0.004932,
		0.312832, 0.949317, -0.030554,
		37.288853, 37.758224, 33.693256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657909, 37.479427, 33.100250>,  <37.069870, 37.093704, 33.714645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657909, 37.479427, 33.100250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971329, 37.710297, 33.192276>,  <37.159378, 37.848816, 33.247494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971329, 37.710297, 33.192276>,  <36.657909, 37.479427, 33.100250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971329, 37.710297, 33.192276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058458, 0.300155, -0.952097,
		-0.618579, 0.759460, 0.201445,
		0.783545, 0.577171, 0.230067,
		37.206390, 37.883450, 33.261295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569141, 38.085361, 32.720734>,  <36.657909, 37.479427, 33.100250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569141, 38.085361, 32.720734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959911, 38.078903, 32.805920>,  <37.194374, 38.075027, 32.857029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959911, 38.078903, 32.805920>,  <36.569141, 38.085361, 32.720734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959911, 38.078903, 32.805920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210300, 0.246625, -0.946018,
		-0.037249, 0.968976, 0.244330,
		0.976927, -0.016144, 0.212962,
		37.252991, 38.074059, 32.869808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772209, 38.688904, 32.352234>,  <36.569141, 38.085361, 32.720734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772209, 38.688904, 32.352234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102150, 38.490032, 32.459881>,  <37.300114, 38.370708, 32.524471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102150, 38.490032, 32.459881>,  <36.772209, 38.688904, 32.352234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102150, 38.490032, 32.459881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416164, 0.211783, -0.884283,
		0.382654, 0.841402, 0.381599,
		0.824853, -0.497182, 0.269122,
		37.349606, 38.340878, 32.540619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319984, 39.026695, 32.034657>,  <36.772209, 38.688904, 32.352234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319984, 39.026695, 32.034657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480373, 38.666504, 32.102013>,  <37.576607, 38.450390, 32.142426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480373, 38.666504, 32.102013>,  <37.319984, 39.026695, 32.034657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480373, 38.666504, 32.102013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521128, 0.073034, -0.850348,
		0.753423, 0.428720, 0.498550,
		0.400973, -0.900480, 0.168393,
		37.600666, 38.396358, 32.152531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095444, 39.114033, 31.901112>,  <37.319984, 39.026695, 32.034657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095444, 39.114033, 31.901112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994286, 38.730011, 31.853228>,  <37.933590, 38.499596, 31.824497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994286, 38.730011, 31.853228>,  <38.095444, 39.114033, 31.901112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994286, 38.730011, 31.853228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544277, -0.038882, -0.838004,
		0.799879, -0.277083, 0.532371,
		-0.252896, -0.960059, -0.119709,
		37.918415, 38.441994, 31.817314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699337, 38.725780, 31.801987>,  <38.095444, 39.114033, 31.901112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699337, 38.725780, 31.801987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418293, 38.488903, 31.644178>,  <38.249668, 38.346775, 31.549494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418293, 38.488903, 31.644178>,  <38.699337, 38.725780, 31.801987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418293, 38.488903, 31.644178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595408, -0.185664, -0.781677,
		0.389656, -0.784114, 0.483046,
		-0.702608, -0.592194, -0.394523,
		38.207512, 38.311245, 31.525822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084572, 38.112667, 31.605865>,  <38.699337, 38.725780, 31.801987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084572, 38.112667, 31.605865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743523, 38.094757, 31.397625>,  <38.538891, 38.084011, 31.272680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743523, 38.094757, 31.397625>,  <39.084572, 38.112667, 31.605865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743523, 38.094757, 31.397625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517905, -0.204592, -0.830612,
		-0.069323, -0.977823, 0.197628,
		-0.852625, -0.044772, -0.520602,
		38.487736, 38.081326, 31.241444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168381, 37.618431, 31.107828>,  <39.084572, 38.112667, 31.605865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168381, 37.618431, 31.107828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856480, 37.819660, 30.958750>,  <38.669338, 37.940395, 30.869303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.856480, 37.819660, 30.958750>,  <39.168381, 37.618431, 31.107828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856480, 37.819660, 30.958750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353619, -0.137359, -0.925249,
		-0.516659, -0.853260, -0.070789,
		-0.779754, 0.503071, -0.372697,
		38.622555, 37.970581, 30.846941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082230, 37.318638, 30.499128>,  <39.168381, 37.618431, 31.107828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082230, 37.318638, 30.499128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886345, 37.661358, 30.434530>,  <38.768814, 37.866989, 30.395771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886345, 37.661358, 30.434530>,  <39.082230, 37.318638, 30.499128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886345, 37.661358, 30.434530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278013, -0.022108, -0.960323,
		-0.826372, -0.515180, -0.227374,
		-0.489713, 0.856797, -0.161496,
		38.739429, 37.918396, 30.386082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745365, 37.283764, 29.776556>,  <39.082230, 37.318638, 30.499128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745365, 37.283764, 29.776556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785973, 37.666767, 29.884541>,  <38.810337, 37.896568, 29.949331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785973, 37.666767, 29.884541>,  <38.745365, 37.283764, 29.776556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785973, 37.666767, 29.884541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478495, 0.190915, -0.857084,
		-0.872201, 0.216187, -0.438780,
		0.101521, 0.957504, 0.269961,
		38.816429, 37.954018, 29.965528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508842, 37.661686, 29.221544>,  <38.745365, 37.283764, 29.776556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508842, 37.661686, 29.221544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746132, 37.929794, 29.399902>,  <38.888508, 38.090660, 29.506918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746132, 37.929794, 29.399902>,  <38.508842, 37.661686, 29.221544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746132, 37.929794, 29.399902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352642, 0.281558, -0.892395,
		-0.723688, 0.686635, -0.069336,
		0.593228, 0.670267, 0.445896,
		38.924099, 38.130875, 29.533670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478527, 38.170757, 28.761810>,  <38.508842, 37.661686, 29.221544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478527, 38.170757, 28.761810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790798, 38.281227, 28.986052>,  <38.978161, 38.347507, 29.120596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790798, 38.281227, 28.986052>,  <38.478527, 38.170757, 28.761810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790798, 38.281227, 28.986052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412419, 0.446297, -0.794185,
		-0.469527, 0.851204, 0.234514,
		0.780676, 0.276174, 0.560601,
		39.025002, 38.364079, 29.154232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604633, 38.770206, 28.503416>,  <38.478527, 38.170757, 28.761810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604633, 38.770206, 28.503416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930714, 38.622055, 28.681526>,  <39.126362, 38.533165, 28.788393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930714, 38.622055, 28.681526>,  <38.604633, 38.770206, 28.503416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930714, 38.622055, 28.681526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543450, 0.223290, -0.809200,
		0.200283, 0.901644, 0.383307,
		0.815199, -0.370377, 0.445277,
		39.175274, 38.510941, 28.815109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053677, 39.235279, 28.451040>,  <38.604633, 38.770206, 28.503416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053677, 39.235279, 28.451040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286137, 38.915810, 28.513493>,  <39.425613, 38.724129, 28.550964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286137, 38.915810, 28.513493>,  <39.053677, 39.235279, 28.451040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286137, 38.915810, 28.513493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479143, 0.180734, -0.858928,
		0.657788, 0.573977, 0.487715,
		0.581152, -0.798677, 0.156132,
		39.460484, 38.676205, 28.560333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711071, 39.519413, 28.222729>,  <39.053677, 39.235279, 28.451040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711071, 39.519413, 28.222729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719296, 39.120518, 28.251282>,  <39.724228, 38.881180, 28.268414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719296, 39.120518, 28.251282>,  <39.711071, 39.519413, 28.222729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719296, 39.120518, 28.251282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681435, -0.038268, -0.730878,
		0.731590, 0.063669, 0.678765,
		0.020559, -0.997237, 0.071382,
		39.725464, 38.821346, 28.272696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491741, 39.245373, 28.256699>,  <39.711071, 39.519413, 28.222729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491741, 39.245373, 28.256699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231342, 38.974903, 28.118723>,  <40.075104, 38.812622, 28.035938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231342, 38.974903, 28.118723>,  <40.491741, 39.245373, 28.256699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231342, 38.974903, 28.118723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551968, -0.109732, -0.826614,
		0.521088, -0.728520, 0.444664,
		-0.650999, -0.676178, -0.344940,
		40.036041, 38.772049, 28.015242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920612, 38.835793, 27.801729>,  <40.491741, 39.245373, 28.256699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920612, 38.835793, 27.801729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551487, 38.733635, 27.686354>,  <40.330013, 38.672340, 27.617128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.551487, 38.733635, 27.686354>,  <40.920612, 38.835793, 27.801729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551487, 38.733635, 27.686354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333504, -0.154749, -0.929961,
		0.192871, -0.954372, 0.227979,
		-0.922809, -0.255394, -0.288440,
		40.274643, 38.657017, 27.599821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867947, 38.059151, 27.437366>,  <40.920612, 38.835793, 27.801729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867947, 38.059151, 27.437366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531322, 38.233074, 27.309174>,  <40.329346, 38.337429, 27.232258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531322, 38.233074, 27.309174>,  <40.867947, 38.059151, 27.437366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531322, 38.233074, 27.309174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212125, -0.279613, -0.936387,
		-0.496763, -0.856011, 0.143077,
		-0.841564, 0.434812, -0.320482,
		40.278854, 38.363518, 27.213030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680771, 37.618671, 27.045240>,  <40.867947, 38.059151, 27.437366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680771, 37.618671, 27.045240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488293, 37.952015, 26.936455>,  <40.372807, 38.152020, 26.871183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488293, 37.952015, 26.936455>,  <40.680771, 37.618671, 27.045240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488293, 37.952015, 26.936455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165636, -0.218220, -0.961740,
		-0.860820, -0.507836, -0.033026,
		-0.481199, 0.833356, -0.271964,
		40.343933, 38.202023, 26.854866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257698, 37.420696, 26.585194>,  <40.680771, 37.618671, 27.045240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257698, 37.420696, 26.585194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257061, 37.808941, 26.488934>,  <40.256680, 38.041889, 26.431177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257061, 37.808941, 26.488934>,  <40.257698, 37.420696, 26.585194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257061, 37.808941, 26.488934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090819, -0.239516, -0.966636,
		-0.995866, -0.023398, -0.087768,
		-0.001596, 0.970610, -0.240650,
		40.256580, 38.100124, 26.416739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923450, 37.406384, 25.964981>,  <40.257698, 37.420696, 26.585194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923450, 37.406384, 25.964981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107208, 37.761612, 25.971802>,  <40.217461, 37.974751, 25.975893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107208, 37.761612, 25.971802>,  <39.923450, 37.406384, 25.964981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107208, 37.761612, 25.971802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294758, -0.134311, -0.946086,
		-0.837901, 0.439649, -0.323467,
		0.459391, 0.888070, 0.017051,
		40.245026, 38.028034, 25.976917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595825, 37.888016, 25.526981>,  <39.923450, 37.406384, 25.964981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595825, 37.888016, 25.526981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962925, 38.041164, 25.569212>,  <40.183186, 38.133053, 25.594551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962925, 38.041164, 25.569212>,  <39.595825, 37.888016, 25.526981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962925, 38.041164, 25.569212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113849, 0.001061, -0.993498,
		-0.380490, 0.923802, -0.042615,
		0.917750, 0.382868, 0.105578,
		40.238251, 38.156025, 25.600885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566628, 38.295750, 24.929260>,  <39.595825, 37.888016, 25.526981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566628, 38.295750, 24.929260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942043, 38.255856, 25.061443>,  <40.167294, 38.231918, 25.140753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942043, 38.255856, 25.061443>,  <39.566628, 38.295750, 24.929260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942043, 38.255856, 25.061443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332647, 0.005697, -0.943034,
		0.092174, 0.994997, 0.038525,
		0.938536, -0.099738, 0.330457,
		40.223602, 38.225933, 25.160580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946415, 38.881168, 24.612675>,  <39.566628, 38.295750, 24.929260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946415, 38.881168, 24.612675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226311, 38.611923, 24.708418>,  <40.394249, 38.450378, 24.765863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226311, 38.611923, 24.708418>,  <39.946415, 38.881168, 24.612675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226311, 38.611923, 24.708418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360987, 0.044013, -0.931531,
		0.616488, 0.738231, 0.273782,
		0.699736, -0.673110, 0.239359,
		40.436230, 38.409988, 24.780226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557724, 39.137848, 24.354618>,  <39.946415, 38.881168, 24.612675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557724, 39.137848, 24.354618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666637, 38.757671, 24.414652>,  <40.731987, 38.529568, 24.450672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666637, 38.757671, 24.414652>,  <40.557724, 39.137848, 24.354618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666637, 38.757671, 24.414652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484346, 0.000604, -0.874877,
		0.831426, 0.310909, 0.460506,
		0.272285, -0.950439, 0.150085,
		40.748322, 38.472538, 24.459677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284279, 39.065842, 24.296251>,  <40.557724, 39.137848, 24.354618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284279, 39.065842, 24.296251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140305, 38.705471, 24.199278>,  <41.053921, 38.489246, 24.141094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140305, 38.705471, 24.199278>,  <41.284279, 39.065842, 24.296251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140305, 38.705471, 24.199278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722657, -0.104865, -0.683206,
		0.590097, -0.421106, 0.688807,
		-0.359933, -0.900929, -0.242434,
		41.032326, 38.435192, 24.126547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957718, 38.617809, 24.246582>,  <41.284279, 39.065842, 24.296251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957718, 38.617809, 24.246582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650742, 38.471905, 24.035686>,  <41.466557, 38.384361, 23.909149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.650742, 38.471905, 24.035686>,  <41.957718, 38.617809, 24.246582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650742, 38.471905, 24.035686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611682, -0.170258, -0.772566,
		0.192039, -0.915401, 0.353783,
		-0.767442, -0.364765, -0.527238,
		41.420509, 38.362476, 23.877516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206024, 37.979488, 24.019444>,  <41.957718, 38.617809, 24.246582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206024, 37.979488, 24.019444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894737, 38.050682, 23.778545>,  <41.707966, 38.093399, 23.634007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894737, 38.050682, 23.778545>,  <42.206024, 37.979488, 24.019444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894737, 38.050682, 23.778545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576036, -0.179646, -0.797439,
		-0.250121, -0.967497, 0.037280,
		-0.778217, 0.177982, -0.602246,
		41.661270, 38.104076, 23.597872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286846, 37.528095, 23.479586>,  <42.206024, 37.979488, 24.019444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286846, 37.528095, 23.479586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031761, 37.786186, 23.311293>,  <41.878712, 37.941040, 23.210318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031761, 37.786186, 23.311293>,  <42.286846, 37.528095, 23.479586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031761, 37.786186, 23.311293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541406, -0.013071, -0.840660,
		-0.547912, -0.763882, -0.340992,
		-0.637708, 0.645223, -0.420732,
		41.840450, 37.979752, 23.185074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194283, 37.264862, 22.840906>,  <42.286846, 37.528095, 23.479586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194283, 37.264862, 22.840906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077381, 37.645672, 22.804609>,  <42.007240, 37.874157, 22.782831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077381, 37.645672, 22.804609>,  <42.194283, 37.264862, 22.840906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077381, 37.645672, 22.804609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644638, 0.126024, -0.754029,
		-0.706418, -0.278867, -0.650543,
		-0.292257, 0.952025, -0.090743,
		41.989704, 37.931278, 22.777386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945213, 37.297813, 22.140419>,  <42.194283, 37.264862, 22.840906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945213, 37.297813, 22.140419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026470, 37.669403, 22.264183>,  <42.075226, 37.892357, 22.338442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026470, 37.669403, 22.264183>,  <41.945213, 37.297813, 22.140419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026470, 37.669403, 22.264183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561579, 0.148321, -0.814021,
		-0.802099, 0.339120, -0.491564,
		0.203142, 0.928977, 0.309411,
		42.087414, 37.948097, 22.357006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857956, 37.670086, 21.596272>,  <41.945213, 37.297813, 22.140419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857956, 37.670086, 21.596272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091137, 37.897289, 21.828663>,  <42.231045, 38.033611, 21.968098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.091137, 37.897289, 21.828663>,  <41.857956, 37.670086, 21.596272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.091137, 37.897289, 21.828663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702608, 0.006704, -0.711546,
		-0.408056, 0.822997, -0.395177,
		0.582951, 0.568005, 0.580980,
		42.266022, 38.067692, 22.002956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977764, 38.170605, 21.235647>,  <41.857956, 37.670086, 21.596272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977764, 38.170605, 21.235647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289906, 38.205738, 21.483301>,  <42.477192, 38.226818, 21.631893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289906, 38.205738, 21.483301>,  <41.977764, 38.170605, 21.235647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289906, 38.205738, 21.483301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612329, 0.093547, -0.785049,
		-0.126869, 0.991733, 0.019220,
		0.780358, 0.087830, 0.619135,
		42.524014, 38.232086, 21.669043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351559, 38.697044, 20.988085>,  <41.977764, 38.170605, 21.235647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351559, 38.697044, 20.988085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604084, 38.478779, 21.208517>,  <42.755600, 38.347820, 21.340776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604084, 38.478779, 21.208517>,  <42.351559, 38.697044, 20.988085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604084, 38.478779, 21.208517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676684, 0.040441, -0.735162,
		0.378868, 0.837025, 0.394776,
		0.631314, -0.545668, 0.551080,
		42.793480, 38.315079, 21.373840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969738, 38.964184, 21.082188>,  <42.351559, 38.697044, 20.988085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969738, 38.964184, 21.082188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062866, 38.578323, 21.131563>,  <43.118744, 38.346806, 21.161188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.062866, 38.578323, 21.131563>,  <42.969738, 38.964184, 21.082188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.062866, 38.578323, 21.131563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777772, 0.108491, -0.619113,
		0.583838, 0.240148, 0.775540,
		0.232818, -0.964655, 0.123439,
		43.132713, 38.288925, 21.168594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724644, 38.912022, 21.261782>,  <42.969738, 38.964184, 21.082188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724644, 38.912022, 21.261782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093483, 39.024319, 21.368307>,  <44.314785, 39.091698, 21.432222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093483, 39.024319, 21.368307>,  <43.724644, 38.912022, 21.261782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093483, 39.024319, 21.368307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360023, -0.370136, -0.856378,
		-0.141851, 0.885541, -0.442375,
		0.922096, 0.280743, 0.266311,
		44.370113, 39.108543, 21.448200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989754, 39.382233, 20.728788>,  <43.724644, 38.912022, 21.261782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989754, 39.382233, 20.728788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286377, 39.205082, 20.930363>,  <44.464352, 39.098793, 21.051308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.286377, 39.205082, 20.930363>,  <43.989754, 39.382233, 20.728788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.286377, 39.205082, 20.930363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329544, -0.413821, -0.848618,
		0.584373, 0.795369, -0.160925,
		0.741558, -0.442878, 0.503934,
		44.508846, 39.072220, 21.081543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499393, 39.504608, 20.368610>,  <43.989754, 39.382233, 20.728788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499393, 39.504608, 20.368610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580879, 39.170277, 20.572531>,  <44.629772, 38.969677, 20.694883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580879, 39.170277, 20.572531>,  <44.499393, 39.504608, 20.368610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580879, 39.170277, 20.572531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257743, -0.456564, -0.851538,
		0.944494, 0.304867, 0.122420,
		0.203714, -0.835826, 0.509800,
		44.641994, 38.919529, 20.725471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091866, 39.287971, 20.169380>,  <44.499393, 39.504608, 20.368610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091866, 39.287971, 20.169380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851967, 38.988968, 20.283594>,  <44.708027, 38.809566, 20.352123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.851967, 38.988968, 20.283594>,  <45.091866, 39.287971, 20.169380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851967, 38.988968, 20.283594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272506, -0.526304, -0.805447,
		0.752358, -0.405255, 0.519351,
		-0.599748, -0.747511, 0.285535,
		44.672043, 38.764713, 20.369255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551407, 38.691902, 20.250036>,  <45.091866, 39.287971, 20.169380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551407, 38.691902, 20.250036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185738, 38.689541, 20.087927>,  <44.966335, 38.688126, 19.990662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.185738, 38.689541, 20.087927>,  <45.551407, 38.691902, 20.250036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.185738, 38.689541, 20.087927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398144, -0.200360, -0.895174,
		-0.075917, -0.979705, 0.185514,
		-0.914176, -0.005902, -0.405275,
		44.911484, 38.687771, 19.966345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786259, 38.986774, 20.881817>,  <45.551407, 38.691902, 20.250036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786259, 38.986774, 20.881817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511833, 39.276283, 20.911406>,  <45.347179, 39.449989, 20.929159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511833, 39.276283, 20.911406>,  <45.786259, 38.986774, 20.881817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511833, 39.276283, 20.911406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696807, 0.682913, -0.219295,
		-0.209236, -0.098906, -0.972850,
		-0.686061, 0.723773, 0.073972,
		45.306015, 39.493416, 20.933598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619865, 38.338577, 21.083654>,  <45.786259, 38.986774, 20.881817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619865, 38.338577, 21.083654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373493, 38.639660, 20.990648>,  <45.225670, 38.820309, 20.934845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373493, 38.639660, 20.990648>,  <45.619865, 38.338577, 21.083654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373493, 38.639660, 20.990648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094711, 0.222256, 0.970377,
		0.782086, 0.619708, -0.065606,
		-0.615932, 0.752705, -0.232516,
		45.188713, 38.865471, 20.920893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594242, 38.608925, 21.667067>,  <45.619865, 38.338577, 21.083654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594242, 38.608925, 21.667067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333656, 38.837921, 21.467932>,  <45.177303, 38.975319, 21.348452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.333656, 38.837921, 21.467932>,  <45.594242, 38.608925, 21.667067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.333656, 38.837921, 21.467932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295630, 0.412765, 0.861526,
		0.698707, 0.708433, -0.099658,
		-0.651469, 0.572492, -0.497836,
		45.138214, 39.009670, 21.318581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612690, 39.273014, 21.919035>,  <45.594242, 38.608925, 21.667067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612690, 39.273014, 21.919035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245316, 39.228680, 21.767141>,  <45.024891, 39.202080, 21.676004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245316, 39.228680, 21.767141>,  <45.612690, 39.273014, 21.919035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245316, 39.228680, 21.767141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392321, 0.378156, 0.838500,
		0.050666, 0.919083, -0.390793,
		-0.918432, -0.110833, -0.379735,
		44.969788, 39.195431, 21.653221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279079, 39.864536, 22.031534>,  <45.612690, 39.273014, 21.919035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279079, 39.864536, 22.031534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973503, 39.615711, 21.962910>,  <44.790157, 39.466415, 21.921734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973503, 39.615711, 21.962910>,  <45.279079, 39.864536, 22.031534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973503, 39.615711, 21.962910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533139, 0.458675, 0.710901,
		-0.363532, 0.634553, -0.682046,
		-0.763942, -0.622061, -0.171562,
		44.744320, 39.429092, 21.911442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724022, 40.295513, 22.055838>,  <45.279079, 39.864536, 22.031534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724022, 40.295513, 22.055838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574764, 39.930290, 22.121666>,  <44.485210, 39.711155, 22.161163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574764, 39.930290, 22.121666>,  <44.724022, 40.295513, 22.055838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574764, 39.930290, 22.121666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541327, 0.358326, 0.760636,
		-0.753477, 0.194741, -0.627972,
		-0.373145, -0.913060, 0.164572,
		44.462822, 39.656372, 22.171038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938644, 40.346622, 22.188900>,  <44.724022, 40.295513, 22.055838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938644, 40.346622, 22.188900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121098, 40.032459, 22.356274>,  <44.230568, 39.843964, 22.456697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121098, 40.032459, 22.356274>,  <43.938644, 40.346622, 22.188900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121098, 40.032459, 22.356274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282309, 0.318203, 0.905013,
		-0.843948, -0.530930, -0.076586,
		0.456128, -0.785405, 0.418433,
		44.257935, 39.796837, 22.481804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440777, 40.092892, 22.738585>,  <43.938644, 40.346622, 22.188900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440777, 40.092892, 22.738585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790230, 39.921440, 22.830704>,  <43.999901, 39.818569, 22.885975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790230, 39.921440, 22.830704>,  <43.440777, 40.092892, 22.738585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790230, 39.921440, 22.830704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188156, 0.138895, 0.972268,
		-0.448727, -0.892742, 0.040695,
		0.873637, -0.428626, 0.230300,
		44.052322, 39.792850, 22.899794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246979, 39.594219, 23.145287>,  <43.440777, 40.092892, 22.738585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246979, 39.594219, 23.145287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633389, 39.629520, 23.242456>,  <43.865234, 39.650703, 23.300758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633389, 39.629520, 23.242456>,  <43.246979, 39.594219, 23.145287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633389, 39.629520, 23.242456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230842, -0.128127, 0.964518,
		0.116250, -0.987823, -0.103401,
		0.966022, 0.088256, 0.242925,
		43.923195, 39.655998, 23.315334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440025, 39.110931, 23.607361>,  <43.246979, 39.594219, 23.145287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440025, 39.110931, 23.607361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718067, 39.390144, 23.676165>,  <43.884892, 39.557671, 23.717447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.718067, 39.390144, 23.676165>,  <43.440025, 39.110931, 23.607361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.718067, 39.390144, 23.676165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151319, -0.091849, 0.984208,
		0.702805, -0.710154, 0.041780,
		0.695103, 0.698029, 0.172012,
		43.926598, 39.599552, 23.727768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779175, 38.870743, 24.123569>,  <43.440025, 39.110931, 23.607361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779175, 38.870743, 24.123569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915428, 39.245487, 24.155237>,  <43.997181, 39.470333, 24.174238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915428, 39.245487, 24.155237>,  <43.779175, 38.870743, 24.123569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915428, 39.245487, 24.155237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106171, -0.045340, 0.993314,
		0.934183, -0.346761, 0.084023,
		0.340633, 0.936857, 0.079171,
		44.017616, 39.526543, 24.178989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438656, 38.877457, 24.539036>,  <43.779175, 38.870743, 24.123569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438656, 38.877457, 24.539036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277195, 39.243374, 24.545031>,  <44.180317, 39.462925, 24.548628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277195, 39.243374, 24.545031>,  <44.438656, 38.877457, 24.539036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277195, 39.243374, 24.545031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119415, -0.068919, 0.990450,
		0.907086, 0.398006, 0.137059,
		-0.403651, 0.914790, 0.014988,
		44.156101, 39.517811, 24.549526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762016, 39.328968, 25.094549>,  <44.438656, 38.877457, 24.539036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762016, 39.328968, 25.094549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419617, 39.529137, 25.042625>,  <44.214176, 39.649239, 25.011471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419617, 39.529137, 25.042625>,  <44.762016, 39.328968, 25.094549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419617, 39.529137, 25.042625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149700, 0.000412, 0.988731,
		0.494835, 0.865782, 0.074560,
		-0.855995, 0.500421, -0.129811,
		44.162819, 39.679264, 25.003681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777706, 39.935898, 25.641026>,  <44.762016, 39.328968, 25.094549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777706, 39.935898, 25.641026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412846, 39.832886, 25.513494>,  <44.193928, 39.771080, 25.436975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412846, 39.832886, 25.513494>,  <44.777706, 39.935898, 25.641026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412846, 39.832886, 25.513494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307946, -0.082675, 0.947805,
		-0.270445, 0.962727, -0.003893,
		-0.912156, -0.257528, -0.318827,
		44.139198, 39.755627, 25.417847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364052, 40.172188, 26.129599>,  <44.777706, 39.935898, 25.641026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364052, 40.172188, 26.129599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096878, 39.931324, 25.954659>,  <43.936573, 39.786808, 25.849693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096878, 39.931324, 25.954659>,  <44.364052, 40.172188, 26.129599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096878, 39.931324, 25.954659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577755, 0.049117, 0.814731,
		-0.469114, 0.796866, -0.380705,
		-0.667931, -0.602156, -0.437351,
		43.896500, 39.750679, 25.823454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829212, 40.405067, 26.390497>,  <44.364052, 40.172188, 26.129599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829212, 40.405067, 26.390497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675861, 40.077446, 26.219767>,  <43.583851, 39.880875, 26.117329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675861, 40.077446, 26.219767>,  <43.829212, 40.405067, 26.390497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675861, 40.077446, 26.219767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627561, -0.108058, 0.771032,
		-0.677635, 0.563456, -0.472576,
		-0.383377, -0.819049, -0.426827,
		43.560848, 39.831730, 26.091719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132401, 40.449215, 26.453276>,  <43.829212, 40.405067, 26.390497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132401, 40.449215, 26.453276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149311, 40.053268, 26.399063>,  <43.159458, 39.815701, 26.366535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.149311, 40.053268, 26.399063>,  <43.132401, 40.449215, 26.453276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149311, 40.053268, 26.399063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612728, -0.132839, 0.779050,
		-0.789162, 0.050106, -0.612138,
		0.042281, -0.989871, -0.135532,
		43.161995, 39.756306, 26.358404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435490, 40.178108, 26.370018>,  <43.132401, 40.449215, 26.453276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435490, 40.178108, 26.370018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679646, 39.892662, 26.507528>,  <42.826138, 39.721394, 26.590034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679646, 39.892662, 26.507528>,  <42.435490, 40.178108, 26.370018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679646, 39.892662, 26.507528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671168, -0.235459, 0.702917,
		-0.420669, -0.659780, -0.622678,
		0.610386, -0.713617, 0.343773,
		42.862762, 39.678577, 26.610661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203606, 39.451382, 26.319204>,  <42.435490, 40.178108, 26.370018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203606, 39.451382, 26.319204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463295, 39.477875, 26.622288>,  <42.619110, 39.493771, 26.804138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463295, 39.477875, 26.622288>,  <42.203606, 39.451382, 26.319204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463295, 39.477875, 26.622288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731353, -0.219220, 0.645806,
		0.208880, -0.973424, -0.093882,
		0.649225, 0.066235, 0.757708,
		42.658062, 39.497746, 26.849600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895569, 38.969749, 26.824341>,  <42.203606, 39.451382, 26.319204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895569, 38.969749, 26.824341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161934, 39.144089, 27.066530>,  <42.321754, 39.248692, 27.211843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161934, 39.144089, 27.066530>,  <41.895569, 38.969749, 26.824341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161934, 39.144089, 27.066530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461016, -0.397671, 0.793298,
		0.586538, -0.807399, -0.063880,
		0.665911, 0.435850, 0.605473,
		42.361706, 39.274845, 27.248173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032322, 38.440094, 27.413822>,  <41.895569, 38.969749, 26.824341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032322, 38.440094, 27.413822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178268, 38.780361, 27.565208>,  <42.265839, 38.984520, 27.656040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178268, 38.780361, 27.565208>,  <42.032322, 38.440094, 27.413822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178268, 38.780361, 27.565208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302642, -0.276052, 0.912251,
		0.880498, -0.447393, 0.156725,
		0.364870, 0.850667, 0.378463,
		42.287731, 39.035561, 27.678747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370255, 38.243519, 27.972008>,  <42.032322, 38.440094, 27.413822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370255, 38.243519, 27.972008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303844, 38.630047, 28.050663>,  <42.264000, 38.861961, 28.097857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303844, 38.630047, 28.050663>,  <42.370255, 38.243519, 27.972008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303844, 38.630047, 28.050663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285976, -0.238018, 0.928205,
		0.943745, 0.097870, 0.315860,
		-0.166024, 0.966317, 0.196639,
		42.254036, 38.919941, 28.109655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698650, 38.340187, 28.589487>,  <42.370255, 38.243519, 27.972008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698650, 38.340187, 28.589487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463249, 38.663136, 28.572414>,  <42.322010, 38.856903, 28.562172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.463249, 38.663136, 28.572414>,  <42.698650, 38.340187, 28.589487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463249, 38.663136, 28.572414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250932, -0.132217, 0.958933,
		0.768568, 0.575044, 0.280405,
		-0.588503, 0.807368, -0.042679,
		42.286697, 38.905346, 28.559610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894707, 38.650188, 29.148144>,  <42.698650, 38.340187, 28.589487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894707, 38.650188, 29.148144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534313, 38.790451, 29.045958>,  <42.318077, 38.874607, 28.984646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534313, 38.790451, 29.045958>,  <42.894707, 38.650188, 29.148144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534313, 38.790451, 29.045958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305410, -0.094422, 0.947528,
		0.308134, 0.931733, 0.192167,
		-0.900988, 0.350655, -0.255466,
		42.264015, 38.895649, 28.969318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810238, 39.198154, 29.480339>,  <42.894707, 38.650188, 29.148144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810238, 39.198154, 29.480339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448307, 39.047230, 29.401419>,  <42.231148, 38.956676, 29.354067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.448307, 39.047230, 29.401419>,  <42.810238, 39.198154, 29.480339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448307, 39.047230, 29.401419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251382, 0.099386, 0.962772,
		-0.343656, 0.920738, -0.184776,
		-0.904825, -0.377311, -0.197302,
		42.176861, 38.934036, 29.342228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.341145, 39.673447, 29.816511>,  <42.810238, 39.198154, 29.480339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.341145, 39.673447, 29.816511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111893, 39.351116, 29.756952>,  <41.974342, 39.157719, 29.721218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111893, 39.351116, 29.756952>,  <42.341145, 39.673447, 29.816511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111893, 39.351116, 29.756952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439260, 0.148710, 0.885966,
		-0.691793, 0.573173, -0.439198,
		-0.573125, -0.805827, -0.148895,
		41.939957, 39.109367, 29.712284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677120, 39.893631, 30.089489>,  <42.341145, 39.673447, 29.816511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677120, 39.893631, 30.089489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678581, 39.493660, 30.084850>,  <41.679459, 39.253677, 30.082067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678581, 39.493660, 30.084850>,  <41.677120, 39.893631, 30.089489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678581, 39.493660, 30.084850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428483, -0.012044, 0.903470,
		-0.903543, 0.001668, -0.428495,
		0.003654, -0.999926, -0.011597,
		41.679676, 39.193684, 30.081371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910591, 39.739090, 30.253561>,  <41.677120, 39.893631, 30.089489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910591, 39.739090, 30.253561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132183, 39.416035, 30.334393>,  <41.265137, 39.222202, 30.382891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132183, 39.416035, 30.334393>,  <40.910591, 39.739090, 30.253561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132183, 39.416035, 30.334393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414982, -0.057452, 0.908014,
		-0.721733, -0.586878, -0.366981,
		0.553977, -0.807635, 0.202078,
		41.298378, 39.173744, 30.395016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477295, 39.261230, 30.579365>,  <40.910591, 39.739090, 30.253561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477295, 39.261230, 30.579365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834610, 39.108906, 30.674883>,  <41.049000, 39.017513, 30.732193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834610, 39.108906, 30.674883>,  <40.477295, 39.261230, 30.579365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834610, 39.108906, 30.674883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325857, -0.182720, 0.927594,
		-0.309606, -0.906420, -0.287312,
		0.893287, -0.380811, 0.238792,
		41.102596, 38.994663, 30.746521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340755, 38.663258, 31.148394>,  <40.477295, 39.261230, 30.579365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340755, 38.663258, 31.148394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736294, 38.711128, 31.183846>,  <40.973618, 38.739853, 31.205116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736294, 38.711128, 31.183846>,  <40.340755, 38.663258, 31.148394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736294, 38.711128, 31.183846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071390, -0.141351, 0.987382,
		0.130698, -0.982699, -0.131230,
		0.988848, 0.119681, 0.088629,
		41.032948, 38.747032, 31.210434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727478, 37.946461, 31.391113>,  <40.340755, 38.663258, 31.148394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727478, 37.946461, 31.391113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899616, 38.289055, 31.505121>,  <41.002899, 38.494610, 31.573526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899616, 38.289055, 31.505121>,  <40.727478, 37.946461, 31.391113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899616, 38.289055, 31.505121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010260, -0.311092, 0.950324,
		0.902604, -0.411895, -0.125091,
		0.430349, 0.856484, 0.285019,
		41.028721, 38.546001, 31.590628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238464, 37.820389, 31.935925>,  <40.727478, 37.946461, 31.391113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238464, 37.820389, 31.935925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165455, 38.210358, 31.986866>,  <41.121651, 38.444340, 32.017429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165455, 38.210358, 31.986866>,  <41.238464, 37.820389, 31.935925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165455, 38.210358, 31.986866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017877, -0.126218, 0.991841,
		0.983039, 0.183310, 0.005609,
		-0.182522, 0.974918, 0.127355,
		41.110699, 38.502834, 32.025074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677422, 37.968239, 32.516872>,  <41.238464, 37.820389, 31.935925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677422, 37.968239, 32.516872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390812, 38.241840, 32.462120>,  <41.218845, 38.406002, 32.429268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390812, 38.241840, 32.462120>,  <41.677422, 37.968239, 32.516872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390812, 38.241840, 32.462120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151901, 0.038524, 0.987645,
		0.680827, 0.728460, 0.076298,
		-0.716520, 0.684004, -0.136882,
		41.175858, 38.447041, 32.421055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792389, 38.616711, 32.901020>,  <41.677422, 37.968239, 32.516872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792389, 38.616711, 32.901020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399147, 38.574612, 32.841114>,  <41.163200, 38.549351, 32.805172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399147, 38.574612, 32.841114>,  <41.792389, 38.616711, 32.901020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399147, 38.574612, 32.841114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169950, 0.220898, 0.960375,
		-0.067994, 0.969602, -0.235052,
		-0.983104, -0.105247, -0.149764,
		41.104218, 38.543037, 32.796185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603905, 38.951683, 33.439545>,  <41.792389, 38.616711, 32.901020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603905, 38.951683, 33.439545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260422, 38.799667, 33.302029>,  <41.054333, 38.708458, 33.219517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260422, 38.799667, 33.302029>,  <41.603905, 38.951683, 33.439545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260422, 38.799667, 33.302029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423459, 0.148362, 0.893684,
		-0.288631, 0.912993, -0.288332,
		-0.858705, -0.380042, -0.343793,
		41.002811, 38.685654, 33.198891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008488, 39.473034, 33.547703>,  <41.603905, 38.951683, 33.439545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008488, 39.473034, 33.547703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871670, 39.097961, 33.523197>,  <40.789577, 38.872917, 33.508492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871670, 39.097961, 33.523197>,  <41.008488, 39.473034, 33.547703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871670, 39.097961, 33.523197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454317, 0.107949, 0.884275,
		-0.822557, 0.330299, -0.462929,
		-0.342048, -0.937683, -0.061266,
		40.769054, 38.816658, 33.504818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213898, 39.381634, 33.584354>,  <41.008488, 39.473034, 33.547703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213898, 39.381634, 33.584354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334831, 39.014870, 33.688557>,  <40.407391, 38.794811, 33.751080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334831, 39.014870, 33.688557>,  <40.213898, 39.381634, 33.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334831, 39.014870, 33.688557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700186, -0.028179, 0.713404,
		-0.646790, -0.398089, -0.650529,
		0.302330, -0.916914, 0.260510,
		40.425529, 38.739796, 33.766708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669010, 38.962086, 33.885258>,  <40.213898, 39.381634, 33.584354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669010, 38.962086, 33.885258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975376, 38.736153, 34.008110>,  <40.159195, 38.600594, 34.081821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.975376, 38.736153, 34.008110>,  <39.669010, 38.962086, 33.885258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975376, 38.736153, 34.008110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534171, -0.293189, 0.792907,
		-0.357814, -0.771363, -0.526277,
		0.765918, -0.564836, 0.307133,
		40.205151, 38.566700, 34.100250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339630, 38.245148, 33.910328>,  <39.669010, 38.962086, 33.885258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339630, 38.245148, 33.910328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672447, 38.245979, 34.132214>,  <39.872135, 38.246479, 34.265343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672447, 38.245979, 34.132214>,  <39.339630, 38.245148, 33.910328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672447, 38.245979, 34.132214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518183, -0.353996, 0.778571,
		0.197981, -0.935245, -0.293463,
		0.832040, 0.002075, 0.554712,
		39.922058, 38.246601, 34.298626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318375, 37.591469, 34.282280>,  <39.339630, 38.245148, 33.910328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318375, 37.591469, 34.282280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562794, 37.821999, 34.499344>,  <39.709446, 37.960316, 34.629581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562794, 37.821999, 34.499344>,  <39.318375, 37.591469, 34.282280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562794, 37.821999, 34.499344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457142, -0.302744, 0.836282,
		0.646256, -0.759075, 0.078473,
		0.611043, 0.576326, 0.542655,
		39.746105, 37.994896, 34.662140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396709, 37.184124, 34.870190>,  <39.318375, 37.591469, 34.282280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396709, 37.184124, 34.870190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538364, 37.544575, 34.970230>,  <39.623356, 37.760845, 35.030254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538364, 37.544575, 34.970230>,  <39.396709, 37.184124, 34.870190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538364, 37.544575, 34.970230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286678, -0.149955, 0.946218,
		0.890171, -0.406787, 0.205231,
		0.354134, 0.901131, 0.250103,
		39.644604, 37.814915, 35.045261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869015, 37.151897, 35.418854>,  <39.396709, 37.184124, 34.870190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869015, 37.151897, 35.418854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720356, 37.522018, 35.449017>,  <39.631161, 37.744091, 35.467113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720356, 37.522018, 35.449017>,  <39.869015, 37.151897, 35.418854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720356, 37.522018, 35.449017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330920, -0.207927, 0.920467,
		0.867393, 0.317134, 0.383478,
		-0.371646, 0.925307, 0.075408,
		39.608864, 37.799610, 35.471638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027950, 37.337780, 36.063770>,  <39.869015, 37.151897, 35.418854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027950, 37.337780, 36.063770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726933, 37.585743, 35.974869>,  <39.546322, 37.734520, 35.921528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726933, 37.585743, 35.974869>,  <40.027950, 37.337780, 36.063770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726933, 37.585743, 35.974869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422048, -0.194923, 0.885370,
		0.505524, 0.760081, 0.408318,
		-0.752543, 0.619905, -0.222252,
		39.501171, 37.771713, 35.908192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625275, 36.848866, 35.859352>,  <40.027950, 37.337780, 36.063770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625275, 36.848866, 35.859352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569237, 36.500389, 36.047562>,  <40.535614, 36.291302, 36.160488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.569237, 36.500389, 36.047562>,  <40.625275, 36.848866, 35.859352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569237, 36.500389, 36.047562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265387, -0.490861, -0.829835,
		0.953909, 0.008612, 0.299973,
		-0.140099, -0.871195, 0.470522,
		40.527206, 36.239029, 36.188717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263947, 36.489449, 35.697128>,  <40.625275, 36.848866, 35.859352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263947, 36.489449, 35.697128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971558, 36.228676, 35.777794>,  <40.796124, 36.072212, 35.826195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971558, 36.228676, 35.777794>,  <41.263947, 36.489449, 35.697128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971558, 36.228676, 35.777794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272577, -0.549854, -0.789533,
		0.625610, -0.522154, 0.579627,
		-0.730968, -0.651932, 0.201667,
		40.752266, 36.033096, 35.838295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516239, 35.803940, 35.564491>,  <41.263947, 36.489449, 35.697128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516239, 35.803940, 35.564491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120930, 35.743622, 35.554825>,  <40.883743, 35.707432, 35.549023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120930, 35.743622, 35.554825>,  <41.516239, 35.803940, 35.564491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120930, 35.743622, 35.554825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078299, -0.364422, -0.927936,
		0.131121, -0.918944, 0.371954,
		-0.988269, -0.150795, -0.024169,
		40.824448, 35.698383, 35.547573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400551, 35.112782, 35.432362>,  <41.516239, 35.803940, 35.564491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400551, 35.112782, 35.432362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055401, 35.270359, 35.305706>,  <40.848312, 35.364906, 35.229713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055401, 35.270359, 35.305706>,  <41.400551, 35.112782, 35.432362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055401, 35.270359, 35.305706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153111, -0.393303, -0.906571,
		-0.481675, -0.830734, 0.279052,
		-0.862871, 0.393947, -0.316638,
		40.796539, 35.388542, 35.210716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240158, 34.708553, 34.895149>,  <41.400551, 35.112782, 35.432362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240158, 34.708553, 34.895149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991230, 35.018021, 34.847565>,  <40.841873, 35.203701, 34.819016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991230, 35.018021, 34.847565>,  <41.240158, 34.708553, 34.895149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991230, 35.018021, 34.847565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035124, -0.124220, -0.991633,
		-0.781976, -0.621289, 0.050130,
		-0.622318, 0.773672, -0.118959,
		40.804535, 35.250122, 34.811878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704502, 34.463341, 34.470676>,  <41.240158, 34.708553, 34.895149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704502, 34.463341, 34.470676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715870, 34.860916, 34.428207>,  <40.722691, 35.099461, 34.402725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715870, 34.860916, 34.428207>,  <40.704502, 34.463341, 34.470676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715870, 34.860916, 34.428207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165688, -0.109434, -0.980087,
		-0.985769, 0.010259, -0.167794,
		0.028418, 0.993941, -0.106177,
		40.724396, 35.159100, 34.396355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469692, 34.563248, 33.894661>,  <40.704502, 34.463341, 34.470676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469692, 34.563248, 33.894661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632133, 34.927052, 33.930153>,  <40.729599, 35.145332, 33.951447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632133, 34.927052, 33.930153>,  <40.469692, 34.563248, 33.894661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632133, 34.927052, 33.930153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221787, -0.003901, -0.975087,
		-0.886505, 0.415666, -0.203302,
		0.406104, 0.909509, 0.088731,
		40.753963, 35.199905, 33.956772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234829, 34.856773, 33.292122>,  <40.469692, 34.563248, 33.894661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234829, 34.856773, 33.292122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548836, 35.077381, 33.404949>,  <40.737240, 35.209747, 33.472645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548836, 35.077381, 33.404949>,  <40.234829, 34.856773, 33.292122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548836, 35.077381, 33.404949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308889, 0.046191, -0.949976,
		-0.536962, 0.832880, -0.134098,
		0.785022, 0.551523, 0.282071,
		40.784344, 35.242840, 33.489571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301796, 35.470055, 32.794445>,  <40.234829, 34.856773, 33.292122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301796, 35.470055, 32.794445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659996, 35.419369, 32.965099>,  <40.874916, 35.388958, 33.067493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659996, 35.419369, 32.965099>,  <40.301796, 35.470055, 32.794445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659996, 35.419369, 32.965099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441380, 0.129926, -0.887864,
		0.057074, 0.983393, 0.172279,
		0.895503, -0.126715, 0.426635,
		40.928646, 35.381355, 33.093090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600346, 36.044655, 32.615398>,  <40.301796, 35.470055, 32.794445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600346, 36.044655, 32.615398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882229, 35.777351, 32.710743>,  <41.051357, 35.616970, 32.767952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882229, 35.777351, 32.710743>,  <40.600346, 36.044655, 32.615398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882229, 35.777351, 32.710743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548847, 0.300552, -0.780023,
		0.449616, 0.680513, 0.578573,
		0.704707, -0.668259, 0.238364,
		41.093639, 35.576874, 32.782253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307266, 36.407799, 32.591045>,  <40.600346, 36.044655, 32.615398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307266, 36.407799, 32.591045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409286, 36.024990, 32.535824>,  <41.470501, 35.795303, 32.502689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.409286, 36.024990, 32.535824>,  <41.307266, 36.407799, 32.591045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409286, 36.024990, 32.535824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497840, 0.252372, -0.829737,
		0.828916, 0.142900, 0.540811,
		0.255055, -0.957020, -0.138054,
		41.485802, 35.737885, 32.494408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094883, 36.398926, 32.417374>,  <41.307266, 36.407799, 32.591045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094883, 36.398926, 32.417374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941502, 36.060966, 32.268185>,  <41.849472, 35.858192, 32.178669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941502, 36.060966, 32.268185>,  <42.094883, 36.398926, 32.417374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941502, 36.060966, 32.268185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447918, 0.183040, -0.875137,
		0.807672, -0.502635, 0.308259,
		-0.383451, -0.844899, -0.372976,
		41.826466, 35.807495, 32.156292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675846, 36.114677, 32.073013>,  <42.094883, 36.398926, 32.417374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675846, 36.114677, 32.073013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330967, 35.967644, 31.933594>,  <42.124039, 35.879421, 31.849941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330967, 35.967644, 31.933594>,  <42.675846, 36.114677, 32.073013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330967, 35.967644, 31.933594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282774, 0.221638, -0.933228,
		0.420296, -0.903192, -0.087152,
		-0.862201, -0.367588, -0.348553,
		42.072308, 35.857368, 31.829027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817154, 35.768456, 31.373913>,  <42.675846, 36.114677, 32.073013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817154, 35.768456, 31.373913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420444, 35.817665, 31.359772>,  <42.182419, 35.847191, 31.351288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420444, 35.817665, 31.359772>,  <42.817154, 35.768456, 31.373913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420444, 35.817665, 31.359772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054808, 0.158571, -0.985825,
		-0.115672, -0.979653, -0.164010,
		-0.991774, 0.123021, -0.035350,
		42.122913, 35.854572, 31.349167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596294, 35.332962, 30.858118>,  <42.817154, 35.768456, 31.373913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596294, 35.332962, 30.858118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301525, 35.598495, 30.909142>,  <42.124664, 35.757816, 30.939756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.301525, 35.598495, 30.909142>,  <42.596294, 35.332962, 30.858118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.301525, 35.598495, 30.909142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026116, 0.216522, -0.975928,
		-0.675477, -0.715848, -0.176896,
		-0.736919, 0.663837, 0.127561,
		42.080448, 35.797646, 30.947411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155766, 35.171768, 30.260357>,  <42.596294, 35.332962, 30.858118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155766, 35.171768, 30.260357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085052, 35.541992, 30.394268>,  <42.042625, 35.764130, 30.474615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085052, 35.541992, 30.394268>,  <42.155766, 35.171768, 30.260357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085052, 35.541992, 30.394268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265488, 0.372371, -0.889301,
		-0.947768, -0.068333, -0.311555,
		-0.176783, 0.925565, 0.334780,
		42.032017, 35.819660, 30.494701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711617, 35.389492, 29.779484>,  <42.155766, 35.171768, 30.260357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711617, 35.389492, 29.779484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833260, 35.725185, 29.959799>,  <41.906246, 35.926601, 30.067987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833260, 35.725185, 29.959799>,  <41.711617, 35.389492, 29.779484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833260, 35.725185, 29.959799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105215, 0.440717, -0.891459,
		-0.946809, 0.318531, 0.045727,
		0.304110, 0.839230, 0.450789,
		41.924492, 35.976955, 30.095036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515213, 36.009407, 29.383972>,  <41.711617, 35.389492, 29.779484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515213, 36.009407, 29.383972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817589, 36.169186, 29.591433>,  <41.999016, 36.265053, 29.715908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817589, 36.169186, 29.591433>,  <41.515213, 36.009407, 29.383972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817589, 36.169186, 29.591433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251111, 0.554732, -0.793231,
		-0.604563, 0.729875, 0.319041,
		0.755941, 0.399443, 0.518650,
		42.044373, 36.289021, 29.747028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401207, 36.678730, 29.341349>,  <41.515213, 36.009407, 29.383972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401207, 36.678730, 29.341349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784252, 36.606094, 29.430786>,  <42.014080, 36.562511, 29.484449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784252, 36.606094, 29.430786>,  <41.401207, 36.678730, 29.341349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784252, 36.606094, 29.430786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286062, 0.690435, -0.664431,
		-0.033725, 0.700232, 0.713118,
		0.957618, -0.181588, 0.223595,
		42.071537, 36.551617, 29.497864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746895, 37.321232, 29.188211>,  <41.401207, 36.678730, 29.341349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746895, 37.321232, 29.188211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049259, 37.059433, 29.194353>,  <42.230679, 36.902355, 29.198038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049259, 37.059433, 29.194353>,  <41.746895, 37.321232, 29.188211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049259, 37.059433, 29.194353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429555, 0.478144, -0.766068,
		0.494047, 0.585673, 0.642576,
		0.755910, -0.654496, 0.015353,
		42.276031, 36.863083, 29.198959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310730, 37.658623, 29.187071>,  <41.746895, 37.321232, 29.188211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310730, 37.658623, 29.187071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414391, 37.302158, 29.038118>,  <42.476589, 37.088280, 28.948748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414391, 37.302158, 29.038118>,  <42.310730, 37.658623, 29.187071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414391, 37.302158, 29.038118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459787, 0.452893, -0.763861,
		0.849373, 0.026743, 0.527114,
		0.259154, -0.891164, -0.372379,
		42.492138, 37.034809, 28.926405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018600, 37.698425, 28.905382>,  <42.310730, 37.658623, 29.187071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018600, 37.698425, 28.905382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862286, 37.378719, 28.722750>,  <42.768497, 37.186897, 28.613171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862286, 37.378719, 28.722750>,  <43.018600, 37.698425, 28.905382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862286, 37.378719, 28.722750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585407, 0.166980, -0.793358,
		0.710340, -0.577320, 0.402639,
		-0.390789, -0.799262, -0.456580,
		42.745049, 37.138943, 28.585775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579479, 37.464294, 28.518478>,  <43.018600, 37.698425, 28.905382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579479, 37.464294, 28.518478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286968, 37.247726, 28.352543>,  <43.111462, 37.117786, 28.252981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286968, 37.247726, 28.352543>,  <43.579479, 37.464294, 28.518478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286968, 37.247726, 28.352543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439852, 0.090506, -0.893498,
		0.521307, -0.835864, 0.171962,
		-0.731279, -0.541425, -0.414838,
		43.067585, 37.085300, 28.228092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915672, 36.867905, 28.123447>,  <43.579479, 37.464294, 28.518478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915672, 36.867905, 28.123447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549187, 36.934982, 27.977880>,  <43.329296, 36.975231, 27.890541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549187, 36.934982, 27.977880>,  <43.915672, 36.867905, 28.123447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549187, 36.934982, 27.977880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392525, 0.193153, -0.899231,
		-0.080506, -0.966731, -0.242794,
		-0.916211, 0.167697, -0.363916,
		43.274323, 36.985291, 27.868706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719513, 36.393856, 27.637753>,  <43.915672, 36.867905, 28.123447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719513, 36.393856, 27.637753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507175, 36.715488, 27.530680>,  <43.379772, 36.908470, 27.466436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507175, 36.715488, 27.530680>,  <43.719513, 36.393856, 27.637753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507175, 36.715488, 27.530680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468153, 0.014944, -0.883521,
		-0.706425, -0.594329, -0.384367,
		-0.530846, 0.804084, -0.267680,
		43.347923, 36.956715, 27.450377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479748, 36.248207, 26.995409>,  <43.719513, 36.393856, 27.637753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479748, 36.248207, 26.995409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418320, 36.643410, 26.988941>,  <43.381462, 36.880531, 26.985060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418320, 36.643410, 26.988941>,  <43.479748, 36.248207, 26.995409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418320, 36.643410, 26.988941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373332, 0.042860, -0.926707,
		-0.914899, -0.148351, -0.375436,
		-0.153569, 0.988006, -0.016171,
		43.372250, 36.939812, 26.984089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087101, 36.463573, 26.430418>,  <43.479748, 36.248207, 26.995409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087101, 36.463573, 26.430418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218437, 36.831955, 26.514360>,  <43.297237, 37.052982, 26.564726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218437, 36.831955, 26.514360>,  <43.087101, 36.463573, 26.430418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218437, 36.831955, 26.514360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286679, 0.114532, -0.951156,
		-0.900005, 0.372461, -0.226413,
		0.328337, 0.920953, 0.209857,
		43.316936, 37.108242, 26.577318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798798, 36.850391, 25.908274>,  <43.087101, 36.463573, 26.430418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798798, 36.850391, 25.908274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122051, 37.035137, 26.054478>,  <43.316002, 37.145985, 26.142200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122051, 37.035137, 26.054478>,  <42.798798, 36.850391, 25.908274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122051, 37.035137, 26.054478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380910, 0.063506, -0.922429,
		-0.449249, 0.884674, -0.124607,
		0.808136, 0.461864, 0.365512,
		43.364491, 37.173695, 26.164131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926426, 37.450382, 25.487436>,  <42.798798, 36.850391, 25.908274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926426, 37.450382, 25.487436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288315, 37.398094, 25.649620>,  <43.505447, 37.366722, 25.746931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288315, 37.398094, 25.649620>,  <42.926426, 37.450382, 25.487436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288315, 37.398094, 25.649620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412138, 0.027664, -0.910701,
		0.107829, 0.991033, 0.078902,
		0.904718, -0.130718, 0.405460,
		43.559731, 37.358879, 25.771257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330265, 38.040905, 25.304638>,  <42.926426, 37.450382, 25.487436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330265, 38.040905, 25.304638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564827, 37.725327, 25.378056>,  <43.705563, 37.535980, 25.422106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564827, 37.725327, 25.378056>,  <43.330265, 38.040905, 25.304638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564827, 37.725327, 25.378056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473798, 0.150292, -0.867714,
		0.656996, 0.595796, 0.461934,
		0.586406, -0.788948, 0.183546,
		43.740749, 37.488644, 25.433119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997738, 38.337494, 25.160753>,  <43.330265, 38.040905, 25.304638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997738, 38.337494, 25.160753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018097, 37.938137, 25.150793>,  <44.030312, 37.698524, 25.144817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018097, 37.938137, 25.150793>,  <43.997738, 38.337494, 25.160753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018097, 37.938137, 25.150793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518943, 0.047743, -0.853475,
		0.853292, 0.030518, 0.520539,
		0.050899, -0.998393, -0.024902,
		44.033367, 37.638618, 25.143322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665894, 38.149597, 24.824413>,  <43.997738, 38.337494, 25.160753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665894, 38.149597, 24.824413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449196, 37.814518, 24.796759>,  <44.319180, 37.613472, 24.780165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449196, 37.814518, 24.796759>,  <44.665894, 38.149597, 24.824413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449196, 37.814518, 24.796759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352949, -0.152058, -0.923204,
		0.762853, -0.524539, 0.378041,
		-0.541740, -0.837698, -0.069138,
		44.286674, 37.563210, 24.776018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163700, 37.625744, 24.459782>,  <44.665894, 38.149597, 24.824413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163700, 37.625744, 24.459782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797588, 37.465343, 24.444510>,  <44.577919, 37.369102, 24.435347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.797588, 37.465343, 24.444510>,  <45.163700, 37.625744, 24.459782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.797588, 37.465343, 24.444510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204937, -0.381976, -0.901163,
		0.346780, -0.832644, 0.431795,
		-0.915284, -0.400996, -0.038179,
		44.523003, 37.345043, 24.433056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279163, 37.009136, 24.206089>,  <45.163700, 37.625744, 24.459782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279163, 37.009136, 24.206089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889084, 37.052433, 24.128857>,  <44.655037, 37.078411, 24.082518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.889084, 37.052433, 24.128857>,  <45.279163, 37.009136, 24.206089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889084, 37.052433, 24.128857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164140, -0.231599, -0.958864,
		-0.148502, -0.966772, 0.208088,
		-0.975195, 0.108237, -0.193078,
		44.596527, 37.084904, 24.070932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110207, 36.409748, 23.865364>,  <45.279163, 37.009136, 24.206089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110207, 36.409748, 23.865364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847458, 36.687271, 23.747282>,  <44.689808, 36.853786, 23.676434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847458, 36.687271, 23.747282>,  <45.110207, 36.409748, 23.865364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847458, 36.687271, 23.747282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054673, -0.346656, -0.936397,
		-0.752018, -0.631232, 0.189776,
		-0.656871, 0.693812, -0.295203,
		44.650398, 36.895416, 23.658722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805523, 35.970428, 23.381432>,  <45.110207, 36.409748, 23.865364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805523, 35.970428, 23.381432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734123, 36.356312, 23.303989>,  <44.691284, 36.587841, 23.257524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734123, 36.356312, 23.303989>,  <44.805523, 35.970428, 23.381432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734123, 36.356312, 23.303989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090350, -0.179864, -0.979533,
		-0.979782, -0.192341, -0.055054,
		-0.178502, 0.964704, -0.193606,
		44.680573, 36.645721, 23.245907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352905, 35.905323, 22.890261>,  <44.805523, 35.970428, 23.381432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352905, 35.905323, 22.890261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502842, 36.274895, 22.859674>,  <44.592804, 36.496639, 22.841324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502842, 36.274895, 22.859674>,  <44.352905, 35.905323, 22.890261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502842, 36.274895, 22.859674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041251, -0.099017, -0.994230,
		-0.926172, 0.369521, -0.075228,
		0.374838, 0.923932, -0.076464,
		44.615292, 36.552074, 22.836735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961796, 36.059673, 22.323410>,  <44.352905, 35.905323, 22.890261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961796, 36.059673, 22.323410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266628, 36.315220, 22.365515>,  <44.449528, 36.468548, 22.390778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266628, 36.315220, 22.365515>,  <43.961796, 36.059673, 22.323410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266628, 36.315220, 22.365515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237606, -0.124713, -0.963322,
		-0.602305, 0.759143, -0.246840,
		0.762084, 0.638865, 0.105262,
		44.495255, 36.506878, 22.397093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544010, 35.445667, 22.527761>,  <43.961796, 36.059673, 22.323410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544010, 35.445667, 22.527761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319248, 35.439987, 22.196930>,  <43.184391, 35.436581, 21.998430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319248, 35.439987, 22.196930>,  <43.544010, 35.445667, 22.527761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319248, 35.439987, 22.196930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799385, -0.247790, 0.547343,
		-0.212712, 0.968710, 0.127886,
		-0.561905, -0.014196, -0.827080,
		43.150677, 35.435730, 21.948807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009010, 35.989574, 22.616121>,  <43.544010, 35.445667, 22.527761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009010, 35.989574, 22.616121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896595, 35.676231, 22.394356>,  <42.829147, 35.488228, 22.261295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896595, 35.676231, 22.394356>,  <43.009010, 35.989574, 22.616121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896595, 35.676231, 22.394356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771551, -0.159131, 0.615943,
		-0.570727, 0.600861, -0.559676,
		-0.281035, -0.783354, -0.554415,
		42.812286, 35.441227, 22.228031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204502, 36.025990, 22.538898>,  <43.009010, 35.989574, 22.616121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204502, 36.025990, 22.538898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285057, 35.655571, 22.411228>,  <42.333389, 35.433319, 22.334625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285057, 35.655571, 22.411228>,  <42.204502, 36.025990, 22.538898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285057, 35.655571, 22.411228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673504, -0.367518, 0.641344,
		-0.711220, 0.085805, -0.697713,
		0.201392, -0.926049, -0.319176,
		42.345474, 35.377754, 22.315475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560493, 35.747623, 22.366314>,  <42.204502, 36.025990, 22.538898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560493, 35.747623, 22.366314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801476, 35.434418, 22.428198>,  <41.946064, 35.246494, 22.465328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801476, 35.434418, 22.428198>,  <41.560493, 35.747623, 22.366314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801476, 35.434418, 22.428198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623233, -0.340409, 0.704061,
		-0.498624, -0.520588, -0.693081,
		0.602457, -0.783013, 0.154711,
		41.982212, 35.199512, 22.474611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156345, 35.109604, 22.485075>,  <41.560493, 35.747623, 22.366314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156345, 35.109604, 22.485075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519497, 35.057110, 22.644342>,  <41.737389, 35.025616, 22.739902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519497, 35.057110, 22.644342>,  <41.156345, 35.109604, 22.485075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519497, 35.057110, 22.644342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407933, -0.495587, 0.766801,
		0.096698, -0.858587, -0.503466,
		0.907877, -0.131232, 0.398168,
		41.791859, 35.017738, 22.763792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124634, 34.412426, 22.723337>,  <41.156345, 35.109604, 22.485075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124634, 34.412426, 22.723337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438919, 34.547302, 22.930780>,  <41.627491, 34.628227, 23.055246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438919, 34.547302, 22.930780>,  <41.124634, 34.412426, 22.723337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438919, 34.547302, 22.930780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385058, -0.389543, 0.836652,
		0.484130, -0.857065, -0.176234,
		0.785716, 0.337188, 0.518609,
		41.674633, 34.648457, 23.086363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288731, 33.904396, 23.233210>,  <41.124634, 34.412426, 22.723337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288731, 33.904396, 23.233210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491108, 34.216290, 23.380739>,  <41.612534, 34.403427, 23.469257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491108, 34.216290, 23.380739>,  <41.288731, 33.904396, 23.233210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491108, 34.216290, 23.380739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348823, -0.206107, 0.914244,
		0.788888, -0.591210, 0.167711,
		0.505944, 0.779737, 0.368823,
		41.642891, 34.450211, 23.491386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574490, 33.681328, 23.855488>,  <41.288731, 33.904396, 23.233210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574490, 33.681328, 23.855488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557953, 34.080029, 23.883125>,  <41.548031, 34.319248, 23.899708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.557953, 34.080029, 23.883125>,  <41.574490, 33.681328, 23.855488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557953, 34.080029, 23.883125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380843, -0.079654, 0.921202,
		0.923715, 0.011769, 0.382899,
		-0.041341, 0.996753, 0.069095,
		41.545551, 34.379055, 23.903854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058479, 33.828442, 24.456017>,  <41.574490, 33.681328, 23.855488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058479, 33.828442, 24.456017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803974, 34.132267, 24.402004>,  <41.651272, 34.314560, 24.369596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803974, 34.132267, 24.402004>,  <42.058479, 33.828442, 24.456017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803974, 34.132267, 24.402004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251017, -0.038323, 0.967224,
		0.729491, 0.649307, 0.215046,
		-0.636266, 0.759561, -0.135031,
		41.613094, 34.360134, 24.361494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148544, 34.185375, 25.093857>,  <42.058479, 33.828442, 24.456017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148544, 34.185375, 25.093857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807198, 34.338371, 24.952173>,  <41.602390, 34.430168, 24.867163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807198, 34.338371, 24.952173>,  <42.148544, 34.185375, 25.093857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807198, 34.338371, 24.952173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390769, -0.019606, 0.920280,
		0.345057, 0.923750, 0.166198,
		-0.853367, 0.382494, -0.354207,
		41.551186, 34.453121, 24.845911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986477, 34.708302, 25.576136>,  <42.148544, 34.185375, 25.093857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986477, 34.708302, 25.576136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641747, 34.635300, 25.386847>,  <41.434906, 34.591499, 25.273273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.641747, 34.635300, 25.386847>,  <41.986477, 34.708302, 25.576136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.641747, 34.635300, 25.386847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478454, -0.017092, 0.877946,
		-0.168316, 0.983057, -0.072589,
		-0.861830, -0.182503, -0.473224,
		41.383198, 34.580547, 25.244879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462463, 35.237804, 25.692268>,  <41.986477, 34.708302, 25.576136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462463, 35.237804, 25.692268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266533, 34.896225, 25.622013>,  <41.148975, 34.691277, 25.579861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266533, 34.896225, 25.622013>,  <41.462463, 35.237804, 25.692268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266533, 34.896225, 25.622013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507819, 0.115710, 0.853658,
		-0.708653, 0.507337, -0.490327,
		-0.489828, -0.853944, -0.175637,
		41.119583, 34.640041, 25.569323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801933, 35.445843, 25.909800>,  <41.462463, 35.237804, 25.692268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801933, 35.445843, 25.909800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813423, 35.047024, 25.881338>,  <40.820316, 34.807732, 25.864262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.813423, 35.047024, 25.881338>,  <40.801933, 35.445843, 25.909800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813423, 35.047024, 25.881338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672601, -0.071936, 0.736501,
		-0.739448, 0.026705, -0.672683,
		0.028722, -0.997052, -0.071154,
		40.822041, 34.747910, 25.859991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143143, 35.250774, 25.995342>,  <40.801933, 35.445843, 25.909800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143143, 35.250774, 25.995342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365044, 34.942253, 26.120140>,  <40.498184, 34.757141, 26.195019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365044, 34.942253, 26.120140>,  <40.143143, 35.250774, 25.995342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365044, 34.942253, 26.120140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359787, 0.115725, 0.925830,
		-0.750201, -0.625858, -0.213306,
		0.554753, -0.771304, 0.311993,
		40.531471, 34.710861, 26.213737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622749, 34.798988, 26.318159>,  <40.143143, 35.250774, 25.995342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622749, 34.798988, 26.318159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969448, 34.656322, 26.457613>,  <40.177467, 34.570721, 26.541285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969448, 34.656322, 26.457613>,  <39.622749, 34.798988, 26.318159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969448, 34.656322, 26.457613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381475, -0.023770, 0.924073,
		-0.321302, -0.933928, -0.156663,
		0.866742, -0.356670, 0.348633,
		40.229469, 34.549320, 26.562202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437717, 34.248539, 26.713465>,  <39.622749, 34.798988, 26.318159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437717, 34.248539, 26.713465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803032, 34.350555, 26.840494>,  <40.022221, 34.411766, 26.916712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803032, 34.350555, 26.840494>,  <39.437717, 34.248539, 26.713465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803032, 34.350555, 26.840494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297313, -0.115488, 0.947770,
		0.278400, -0.960008, -0.029646,
		0.913290, 0.255045, 0.317575,
		40.077019, 34.427067, 26.935766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629139, 33.694977, 27.214081>,  <39.437717, 34.248539, 26.713465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629139, 33.694977, 27.214081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888180, 33.992260, 27.281311>,  <40.043606, 34.170631, 27.321650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888180, 33.992260, 27.281311>,  <39.629139, 33.694977, 27.214081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888180, 33.992260, 27.281311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052268, -0.176731, 0.982870,
		0.760184, -0.645294, -0.075605,
		0.647602, 0.743210, 0.168077,
		40.082462, 34.215221, 27.331734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205235, 33.406235, 27.530165>,  <39.629139, 33.694977, 27.214081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205235, 33.406235, 27.530165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193012, 33.789803, 27.642979>,  <40.185680, 34.019943, 27.710667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193012, 33.789803, 27.642979>,  <40.205235, 33.406235, 27.530165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193012, 33.789803, 27.642979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167238, -0.273283, 0.947284,
		0.985443, 0.076110, -0.152018,
		-0.030554, 0.958918, 0.282033,
		40.183846, 34.077477, 27.727589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708385, 33.427872, 28.087385>,  <40.205235, 33.406235, 27.530165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708385, 33.427872, 28.087385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486439, 33.760281, 28.103041>,  <40.353271, 33.959724, 28.112434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486439, 33.760281, 28.103041>,  <40.708385, 33.427872, 28.087385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486439, 33.760281, 28.103041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140758, 0.047406, 0.988908,
		0.819946, 0.554220, -0.143276,
		-0.554865, 0.831019, 0.039140,
		40.319981, 34.009586, 28.114782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132771, 33.871605, 28.461941>,  <40.708385, 33.427872, 28.087385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132771, 33.871605, 28.461941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761173, 34.016907, 28.490286>,  <40.538216, 34.104088, 28.507294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761173, 34.016907, 28.490286>,  <41.132771, 33.871605, 28.461941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761173, 34.016907, 28.490286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168879, 0.245680, 0.954527,
		0.329329, 0.898713, -0.289580,
		-0.928990, 0.363258, 0.070864,
		40.482475, 34.125885, 28.511545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214138, 34.393177, 28.889154>,  <41.132771, 33.871605, 28.461941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214138, 34.393177, 28.889154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819695, 34.326950, 28.883686>,  <40.583031, 34.287216, 28.880405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819695, 34.326950, 28.883686>,  <41.214138, 34.393177, 28.889154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819695, 34.326950, 28.883686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062301, 0.292261, 0.954307,
		-0.154004, 0.941898, -0.298515,
		-0.986104, -0.165565, -0.013672,
		40.523865, 34.277279, 28.879585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858788, 34.979313, 29.207438>,  <41.214138, 34.393177, 28.889154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858788, 34.979313, 29.207438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604687, 34.672813, 29.246061>,  <40.452225, 34.488914, 29.269236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604687, 34.672813, 29.246061>,  <40.858788, 34.979313, 29.207438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604687, 34.672813, 29.246061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181901, 0.269955, 0.945535,
		-0.750578, 0.583089, -0.310871,
		-0.635252, -0.766245, 0.096558,
		40.414112, 34.442940, 29.275028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331760, 35.273052, 29.698484>,  <40.858788, 34.979313, 29.207438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331760, 35.273052, 29.698484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253330, 34.881088, 29.683895>,  <40.206272, 34.645908, 29.675142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253330, 34.881088, 29.683895>,  <40.331760, 35.273052, 29.698484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253330, 34.881088, 29.683895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350502, 0.035298, 0.935897,
		-0.915808, 0.196286, -0.350382,
		-0.196072, -0.979911, -0.036472,
		40.194508, 34.587116, 29.672953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634323, 35.128654, 29.921085>,  <40.331760, 35.273052, 29.698484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634323, 35.128654, 29.921085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861397, 34.802830, 29.968781>,  <39.997643, 34.607334, 29.997396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861397, 34.802830, 29.968781>,  <39.634323, 35.128654, 29.921085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861397, 34.802830, 29.968781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373519, -0.125782, 0.919055,
		-0.733632, -0.566271, -0.375660,
		0.567686, -0.814564, 0.119236,
		40.031704, 34.558460, 30.004551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251080, 34.672691, 30.294146>,  <39.634323, 35.128654, 29.921085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251080, 34.672691, 30.294146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622284, 34.539131, 30.360239>,  <39.845009, 34.458996, 30.399895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622284, 34.539131, 30.360239>,  <39.251080, 34.672691, 30.294146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622284, 34.539131, 30.360239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283112, -0.343786, 0.895354,
		-0.242153, -0.877680, -0.413569,
		0.928014, -0.333899, 0.165233,
		39.900688, 34.438961, 30.409809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084312, 34.006714, 30.824907>,  <39.251080, 34.672691, 30.294146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084312, 34.006714, 30.824907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475723, 34.087299, 30.842329>,  <39.710571, 34.135651, 30.852781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475723, 34.087299, 30.842329>,  <39.084312, 34.006714, 30.824907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475723, 34.087299, 30.842329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050788, -0.440457, 0.896336,
		0.199763, -0.874877, -0.441231,
		0.978527, 0.201464, 0.043554,
		39.769283, 34.147739, 30.855394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285725, 33.340408, 30.858326>,  <39.084312, 34.006714, 30.824907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285725, 33.340408, 30.858326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565094, 33.586395, 31.004761>,  <39.732716, 33.733986, 31.092621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565094, 33.586395, 31.004761>,  <39.285725, 33.340408, 30.858326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565094, 33.586395, 31.004761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105783, -0.594604, 0.797029,
		0.707825, -0.517938, -0.480338,
		0.698423, 0.614969, 0.366086,
		39.774620, 33.770885, 31.114586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740528, 32.925766, 31.149279>,  <39.285725, 33.340408, 30.858326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740528, 32.925766, 31.149279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781857, 33.279785, 31.330835>,  <39.806652, 33.492195, 31.439770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781857, 33.279785, 31.330835>,  <39.740528, 32.925766, 31.149279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781857, 33.279785, 31.330835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058472, -0.450142, 0.891041,
		0.992928, -0.118605, 0.005241,
		0.103322, 0.885045, 0.453894,
		39.812855, 33.545300, 31.467003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093761, 32.707211, 31.728502>,  <39.740528, 32.925766, 31.149279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093761, 32.707211, 31.728502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952259, 33.069813, 31.820679>,  <39.867359, 33.287376, 31.875984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952259, 33.069813, 31.820679>,  <40.093761, 32.707211, 31.728502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952259, 33.069813, 31.820679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197861, -0.313323, 0.928805,
		0.914172, 0.282971, 0.290201,
		-0.353752, 0.906508, 0.230442,
		39.846134, 33.341766, 31.889811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341366, 32.808121, 32.317104>,  <40.093761, 32.707211, 31.728502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341366, 32.808121, 32.317104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057972, 33.089787, 32.298347>,  <39.887936, 33.258785, 32.287094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057972, 33.089787, 32.298347>,  <40.341366, 32.808121, 32.317104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057972, 33.089787, 32.298347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264870, -0.203729, 0.942517,
		0.654131, 0.680184, 0.330851,
		-0.708489, 0.704162, -0.046895,
		39.845425, 33.301037, 32.284279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386162, 33.078438, 32.929752>,  <40.341366, 32.808121, 32.317104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386162, 33.078438, 32.929752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021690, 33.177074, 32.797722>,  <39.803009, 33.236256, 32.718502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021690, 33.177074, 32.797722>,  <40.386162, 33.078438, 32.929752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021690, 33.177074, 32.797722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381995, -0.205376, 0.901055,
		0.154402, 0.947108, 0.281330,
		-0.911175, 0.246592, -0.330080,
		39.748337, 33.251053, 32.698696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138859, 33.449032, 33.428070>,  <40.386162, 33.078438, 32.929752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138859, 33.449032, 33.428070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828453, 33.304417, 33.221348>,  <39.642208, 33.217648, 33.097313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828453, 33.304417, 33.221348>,  <40.138859, 33.449032, 33.428070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828453, 33.304417, 33.221348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310392, -0.494394, 0.811931,
		-0.549050, 0.790484, 0.271440,
		-0.776016, -0.361538, -0.516807,
		39.595650, 33.195957, 33.066307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634930, 33.658031, 33.753929>,  <40.138859, 33.449032, 33.428070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634930, 33.658031, 33.753929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470867, 33.365124, 33.536469>,  <39.372429, 33.189381, 33.405991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470867, 33.365124, 33.536469>,  <39.634930, 33.658031, 33.753929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470867, 33.365124, 33.536469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248914, -0.483587, 0.839157,
		-0.877392, 0.479505, 0.016072,
		-0.410152, -0.732270, -0.543651,
		39.347820, 33.145443, 33.373375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908768, 33.604095, 33.835602>,  <39.634930, 33.658031, 33.753929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908768, 33.604095, 33.835602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985687, 33.237099, 33.696331>,  <39.031837, 33.016899, 33.612766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985687, 33.237099, 33.696331>,  <38.908768, 33.604095, 33.835602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985687, 33.237099, 33.696331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708147, -0.375364, 0.598022,
		-0.679375, 0.131564, -0.721901,
		0.192298, -0.917493, -0.348180,
		39.043377, 32.961849, 33.591877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251770, 33.089977, 33.874863>,  <38.908768, 33.604095, 33.835602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251770, 33.089977, 33.874863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569073, 32.846462, 33.870571>,  <38.759457, 32.700352, 33.867996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569073, 32.846462, 33.870571>,  <38.251770, 33.089977, 33.874863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569073, 32.846462, 33.870571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429458, -0.571905, 0.698921,
		-0.431629, -0.549820, -0.715119,
		0.793261, -0.608788, -0.010726,
		38.807053, 32.663826, 33.867352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965652, 32.364002, 33.768101>,  <38.251770, 33.089977, 33.874863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965652, 32.364002, 33.768101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330349, 32.336056, 33.930008>,  <38.549168, 32.319290, 34.027153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330349, 32.336056, 33.930008>,  <37.965652, 32.364002, 33.768101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330349, 32.336056, 33.930008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380501, -0.514835, 0.768222,
		0.154721, -0.854438, -0.495981,
		0.911746, -0.069861, 0.404770,
		38.603874, 32.315098, 34.051437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040722, 31.666477, 33.896412>,  <37.965652, 32.364002, 33.768101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040722, 31.666477, 33.896412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307720, 31.862690, 34.120495>,  <38.467918, 31.980417, 34.254944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307720, 31.862690, 34.120495>,  <38.040722, 31.666477, 33.896412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307720, 31.862690, 34.120495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404379, -0.392928, 0.825885,
		0.625242, -0.777809, -0.063917,
		0.667495, 0.490531, 0.560205,
		38.507969, 32.009850, 34.288555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237957, 31.167040, 34.388027>,  <38.040722, 31.666477, 33.896412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237957, 31.167040, 34.388027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333412, 31.508968, 34.572346>,  <38.390686, 31.714127, 34.682938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333412, 31.508968, 34.572346>,  <38.237957, 31.167040, 34.388027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333412, 31.508968, 34.572346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273002, -0.396315, 0.876587,
		0.931947, -0.334981, 0.138794,
		0.238633, 0.854823, 0.460795,
		38.405003, 31.765415, 34.710583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498779, 30.998230, 35.027077>,  <38.237957, 31.167040, 34.388027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498779, 30.998230, 35.027077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403404, 31.385437, 35.058300>,  <38.346180, 31.617762, 35.077034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403404, 31.385437, 35.058300>,  <38.498779, 30.998230, 35.027077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403404, 31.385437, 35.058300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360598, -0.162876, 0.918390,
		0.901731, 0.190829, 0.387900,
		-0.238435, 0.968017, 0.078058,
		38.331875, 31.675842, 35.081718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874699, 31.163347, 35.645424>,  <38.498779, 30.998230, 35.027077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874699, 31.163347, 35.645424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607487, 31.456419, 35.593388>,  <38.447159, 31.632261, 35.562164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607487, 31.456419, 35.593388>,  <38.874699, 31.163347, 35.645424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607487, 31.456419, 35.593388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305919, -0.111032, 0.945561,
		0.678347, 0.671458, 0.298312,
		-0.668027, 0.732677, -0.130094,
		38.407078, 31.676222, 35.554359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394894, 30.823614, 35.183105>,  <38.874699, 31.163347, 35.645424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394894, 30.823614, 35.183105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584175, 30.794415, 35.534275>,  <39.697742, 30.776894, 35.744976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584175, 30.794415, 35.534275>,  <39.394894, 30.823614, 35.183105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584175, 30.794415, 35.534275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814910, -0.414857, 0.404742,
		0.334666, -0.906954, -0.255800,
		0.473203, -0.073000, 0.877924,
		39.726135, 30.772514, 35.797653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400223, 30.146648, 35.417709>,  <39.394894, 30.823614, 35.183105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400223, 30.146648, 35.417709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472927, 30.329594, 35.765911>,  <39.516548, 30.439362, 35.974831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472927, 30.329594, 35.765911>,  <39.400223, 30.146648, 35.417709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472927, 30.329594, 35.765911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796629, -0.450499, 0.403029,
		0.576493, -0.766725, 0.282467,
		0.181761, 0.457365, 0.870506,
		39.527454, 30.466803, 36.027061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255676, 29.658375, 35.986683>,  <39.400223, 30.146648, 35.417709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255676, 29.658375, 35.986683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287247, 29.995235, 36.200058>,  <39.306187, 30.197351, 36.328083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287247, 29.995235, 36.200058>,  <39.255676, 29.658375, 35.986683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287247, 29.995235, 36.200058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662639, -0.355457, 0.659212,
		0.744769, -0.405501, 0.529988,
		0.078923, 0.842151, 0.533434,
		39.310925, 30.247881, 36.360088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482918, 29.473232, 36.736595>,  <39.255676, 29.658375, 35.986683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482918, 29.473232, 36.736595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278786, 29.816849, 36.720535>,  <39.156307, 30.023018, 36.710899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278786, 29.816849, 36.720535>,  <39.482918, 29.473232, 36.736595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278786, 29.816849, 36.720535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686751, -0.378990, 0.620274,
		0.517626, 0.344114, 0.783357,
		-0.510329, 0.859041, -0.040146,
		39.125687, 30.074562, 36.708492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362751, 29.712152, 37.438026>,  <39.482918, 29.473232, 36.736595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362751, 29.712152, 37.438026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069180, 29.899157, 37.240936>,  <38.893036, 30.011358, 37.122681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069180, 29.899157, 37.240936>,  <39.362751, 29.712152, 37.438026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069180, 29.899157, 37.240936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601199, -0.109562, 0.791553,
		0.316074, 0.877173, 0.361477,
		-0.733933, 0.467509, -0.492725,
		38.848999, 30.039410, 37.093121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085316, 30.195547, 37.893452>,  <39.362751, 29.712152, 37.438026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085316, 30.195547, 37.893452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783714, 30.117085, 37.642693>,  <38.602753, 30.070007, 37.492237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783714, 30.117085, 37.642693>,  <39.085316, 30.195547, 37.893452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783714, 30.117085, 37.642693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622455, -0.091485, 0.777290,
		-0.209822, 0.976295, -0.053119,
		-0.754005, -0.196157, -0.626896,
		38.557514, 30.058237, 37.454624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520889, 30.406590, 38.327808>,  <39.085316, 30.195547, 37.893452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520889, 30.406590, 38.327808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352634, 30.236679, 38.007153>,  <38.251682, 30.134733, 37.814758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352634, 30.236679, 38.007153>,  <38.520889, 30.406590, 38.327808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352634, 30.236679, 38.007153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870566, -0.059676, 0.488420,
		-0.255308, 0.903329, -0.344693,
		-0.420634, -0.424776, -0.801644,
		38.226444, 30.109247, 37.766659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899796, 30.750666, 38.220863>,  <38.520889, 30.406590, 38.327808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899796, 30.750666, 38.220863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853966, 30.392223, 38.049347>,  <37.826466, 30.177158, 37.946438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853966, 30.392223, 38.049347>,  <37.899796, 30.750666, 38.220863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853966, 30.392223, 38.049347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782813, -0.184304, 0.594336,
		-0.611618, 0.403764, -0.680367,
		-0.114577, -0.896106, -0.428795,
		37.819592, 30.123392, 37.920708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193214, 30.638893, 38.187359>,  <37.899796, 30.750666, 38.220863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193214, 30.638893, 38.187359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371784, 30.281551, 38.166866>,  <37.478924, 30.067146, 38.154572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371784, 30.281551, 38.166866>,  <37.193214, 30.638893, 38.187359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371784, 30.281551, 38.166866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701346, -0.384876, 0.599986,
		-0.555717, -0.231918, -0.798368,
		0.446421, -0.893355, -0.051228,
		37.505711, 30.013544, 38.151497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696133, 30.168474, 37.997383>,  <37.193214, 30.638893, 38.187359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696133, 30.168474, 37.997383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983143, 29.995089, 38.215473>,  <37.155350, 29.891056, 38.346329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983143, 29.995089, 38.215473>,  <36.696133, 30.168474, 37.997383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983143, 29.995089, 38.215473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694800, -0.500643, 0.516342,
		0.049148, -0.749310, -0.660393,
		0.717521, -0.433464, 0.545226,
		37.198399, 29.865049, 38.379040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400032, 29.718668, 38.377079>,  <36.696133, 30.168474, 37.997383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400032, 29.718668, 38.377079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745548, 29.630589, 38.558353>,  <36.952858, 29.577742, 38.667118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745548, 29.630589, 38.558353>,  <36.400032, 29.718668, 38.377079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745548, 29.630589, 38.558353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490175, -0.575382, 0.654725,
		0.116584, -0.787685, -0.604946,
		0.863792, -0.220199, 0.453184,
		37.004684, 29.564529, 38.694309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679657, 28.960106, 38.345787>,  <36.400032, 29.718668, 38.377079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679657, 28.960106, 38.345787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809406, 29.110909, 38.692810>,  <36.887257, 29.201391, 38.901024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.809406, 29.110909, 38.692810>,  <36.679657, 28.960106, 38.345787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809406, 29.110909, 38.692810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458180, -0.739756, 0.492781,
		0.827560, -0.557338, -0.067217,
		0.324369, 0.377008, 0.867554,
		36.906715, 29.224010, 38.953075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990833, 28.355310, 38.767456>,  <36.679657, 28.960106, 38.345787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990833, 28.355310, 38.767456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837349, 28.660585, 38.975422>,  <36.745258, 28.843750, 39.100201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837349, 28.660585, 38.975422>,  <36.990833, 28.355310, 38.767456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837349, 28.660585, 38.975422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535361, -0.642587, 0.548151,
		0.752433, -0.068012, 0.655148,
		-0.383709, 0.763188, 0.519915,
		36.722237, 28.889542, 39.131397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624332, 27.930975, 39.293415>,  <36.990833, 28.355310, 38.767456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624332, 27.930975, 39.293415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547279, 28.307093, 39.405659>,  <36.501049, 28.532763, 39.473003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547279, 28.307093, 39.405659>,  <36.624332, 27.930975, 39.293415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547279, 28.307093, 39.405659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498016, -0.340078, 0.797700,
		0.845501, 0.013916, 0.533792,
		-0.192632, 0.940294, 0.280606,
		36.489491, 28.589180, 39.489841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828262, 28.020836, 39.968872>,  <36.624332, 27.930975, 39.293415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828262, 28.020836, 39.968872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526958, 28.264605, 39.869911>,  <36.346176, 28.410866, 39.810535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526958, 28.264605, 39.869911>,  <36.828262, 28.020836, 39.968872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526958, 28.264605, 39.869911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539742, -0.357783, 0.762017,
		0.375873, 0.707529, 0.598434,
		-0.753258, 0.609421, -0.247402,
		36.300980, 28.447432, 39.795692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705311, 28.275547, 40.664463>,  <36.828262, 28.020836, 39.968872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705311, 28.275547, 40.664463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384056, 28.395145, 40.458332>,  <36.191303, 28.466904, 40.334652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384056, 28.395145, 40.458332>,  <36.705311, 28.275547, 40.664463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384056, 28.395145, 40.458332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582551, -0.212779, 0.784449,
		0.124894, 0.930230, 0.345071,
		-0.803141, 0.298994, -0.515332,
		36.143112, 28.484844, 40.303734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327091, 28.705362, 41.105637>,  <36.705311, 28.275547, 40.664463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327091, 28.705362, 41.105637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059162, 28.549316, 40.852924>,  <35.898407, 28.455688, 40.701298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059162, 28.549316, 40.852924>,  <36.327091, 28.705362, 41.105637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059162, 28.549316, 40.852924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564939, -0.284405, 0.774569,
		-0.481854, 0.875742, -0.029892,
		-0.669821, -0.390117, -0.631782,
		35.858215, 28.432281, 40.663391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696335, 28.799227, 41.318394>,  <36.327091, 28.705362, 41.105637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696335, 28.799227, 41.318394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615406, 28.485569, 41.083725>,  <35.566849, 28.297375, 40.942924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615406, 28.485569, 41.083725>,  <35.696335, 28.799227, 41.318394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615406, 28.485569, 41.083725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583895, -0.384346, 0.715084,
		-0.786214, 0.487230, -0.380097,
		-0.202321, -0.784146, -0.586670,
		35.554710, 28.250324, 40.907722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055901, 28.676233, 41.380806>,  <35.696335, 28.799227, 41.318394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055901, 28.676233, 41.380806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153828, 28.320204, 41.227009>,  <35.212585, 28.106586, 41.134731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153828, 28.320204, 41.227009>,  <35.055901, 28.676233, 41.380806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153828, 28.320204, 41.227009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439801, -0.455361, 0.774094,
		-0.864082, -0.020414, -0.502936,
		0.244820, -0.890073, -0.384491,
		35.227272, 28.053183, 41.111660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456985, 28.088102, 41.265045>,  <35.055901, 28.676233, 41.380806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456985, 28.088102, 41.265045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819187, 27.929585, 41.325726>,  <35.036507, 27.834475, 41.362133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819187, 27.929585, 41.325726>,  <34.456985, 28.088102, 41.265045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819187, 27.929585, 41.325726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344804, -0.478788, 0.807386,
		-0.247330, -0.783398, -0.570189,
		0.905504, -0.396294, 0.151700,
		35.090839, 27.810696, 41.371235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245190, 27.415216, 41.480251>,  <34.456985, 28.088102, 41.265045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245190, 27.415216, 41.480251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620453, 27.495064, 41.593395>,  <34.845612, 27.542973, 41.661282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620453, 27.495064, 41.593395>,  <34.245190, 27.415216, 41.480251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620453, 27.495064, 41.593395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198952, -0.357803, 0.912357,
		0.283334, -0.912211, -0.295961,
		0.938158, 0.199620, 0.282864,
		34.901901, 27.554949, 41.678253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377197, 27.290209, 42.163414>,  <34.245190, 27.415216, 41.480251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377197, 27.290209, 42.163414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761997, 27.390699, 42.120617>,  <34.992878, 27.450994, 42.094940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761997, 27.390699, 42.120617>,  <34.377197, 27.290209, 42.163414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761997, 27.390699, 42.120617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124001, 0.751015, 0.648537,
		0.243282, -0.610623, 0.753626,
		0.961996, 0.251228, -0.106991,
		35.050594, 27.466068, 42.088520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740807, 27.010334, 42.771667>,  <34.377197, 27.290209, 42.163414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740807, 27.010334, 42.771667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828449, 26.757143, 42.474663>,  <34.881035, 26.605228, 42.296459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828449, 26.757143, 42.474663>,  <34.740807, 27.010334, 42.771667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828449, 26.757143, 42.474663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379863, 0.756305, -0.532642,
		0.898719, -0.165348, 0.406158,
		0.219108, -0.632979, -0.742515,
		34.894180, 26.567249, 42.251907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342060, 27.150742, 42.544357>,  <34.740807, 27.010334, 42.771667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342060, 27.150742, 42.544357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182529, 26.981312, 42.219021>,  <35.086811, 26.879654, 42.023819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182529, 26.981312, 42.219021>,  <35.342060, 27.150742, 42.544357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182529, 26.981312, 42.219021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462565, 0.672906, -0.577261,
		0.791814, -0.606450, -0.072443,
		-0.398828, -0.423574, -0.813339,
		35.062881, 26.854240, 41.975018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802952, 27.092096, 42.029648>,  <35.342060, 27.150742, 42.544357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802952, 27.092096, 42.029648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468082, 27.087095, 41.810932>,  <35.267159, 27.084095, 41.679703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468082, 27.087095, 41.810932>,  <35.802952, 27.092096, 42.029648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468082, 27.087095, 41.810932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415848, 0.634821, -0.651209,
		0.355257, -0.772558, -0.526257,
		-0.837175, -0.012504, -0.546792,
		35.216930, 27.083344, 41.646896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954605, 26.938675, 41.260242>,  <35.802952, 27.092096, 42.029648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954605, 26.938675, 41.260242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641647, 27.187737, 41.265354>,  <35.453873, 27.337173, 41.268421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641647, 27.187737, 41.265354>,  <35.954605, 26.938675, 41.260242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641647, 27.187737, 41.265354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383746, 0.498154, -0.777549,
		-0.490512, -0.603443, -0.628693,
		-0.782392, 0.622656, 0.012782,
		35.406929, 27.374533, 41.269188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735184, 26.966108, 40.661266>,  <35.954605, 26.938675, 41.260242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735184, 26.966108, 40.661266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555138, 27.300247, 40.787498>,  <35.447109, 27.500731, 40.863239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555138, 27.300247, 40.787498>,  <35.735184, 26.966108, 40.661266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555138, 27.300247, 40.787498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333159, 0.484986, -0.808575,
		-0.828491, -0.258816, -0.496605,
		-0.450119, 0.835346, 0.315580,
		35.420101, 27.550852, 40.882172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430878, 27.254786, 40.053005>,  <35.735184, 26.966108, 40.661266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430878, 27.254786, 40.053005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435696, 27.567957, 40.301804>,  <35.438587, 27.755859, 40.451080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435696, 27.567957, 40.301804>,  <35.430878, 27.254786, 40.053005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435696, 27.567957, 40.301804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295874, 0.591392, -0.750142,
		-0.955151, 0.193071, -0.224523,
		0.012049, 0.782929, 0.621993,
		35.439312, 27.802835, 40.488403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064007, 27.817917, 39.825092>,  <35.430878, 27.254786, 40.053005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064007, 27.817917, 39.825092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317722, 27.996466, 40.077579>,  <35.469952, 28.103596, 40.229073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317722, 27.996466, 40.077579>,  <35.064007, 27.817917, 39.825092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317722, 27.996466, 40.077579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342524, 0.569710, -0.747066,
		-0.693081, 0.690059, 0.208464,
		0.634284, 0.446373, 0.631217,
		35.508007, 28.130377, 40.266945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076855, 28.462574, 39.481709>,  <35.064007, 27.817917, 39.825092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076855, 28.462574, 39.481709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395340, 28.443014, 39.722923>,  <35.586430, 28.431278, 39.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395340, 28.443014, 39.722923>,  <35.076855, 28.462574, 39.481709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395340, 28.443014, 39.722923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485517, 0.646357, -0.588639,
		-0.360994, 0.761467, 0.538379,
		0.796214, -0.048897, 0.603036,
		35.634205, 28.428345, 39.903835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273205, 29.135128, 39.602146>,  <35.076855, 28.462574, 39.481709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273205, 29.135128, 39.602146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592472, 28.908474, 39.683971>,  <35.784035, 28.772482, 39.733067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592472, 28.908474, 39.683971>,  <35.273205, 29.135128, 39.602146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592472, 28.908474, 39.683971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598250, 0.705615, -0.379742,
		0.070833, 0.425479, 0.902192,
		0.798172, -0.566635, 0.204562,
		35.831924, 28.738483, 39.745338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804222, 29.608940, 39.277424>,  <35.273205, 29.135128, 39.602146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804222, 29.608940, 39.277424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963715, 29.336864, 39.523464>,  <36.059410, 29.173618, 39.671089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963715, 29.336864, 39.523464>,  <35.804222, 29.608940, 39.277424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963715, 29.336864, 39.523464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914984, 0.340240, -0.216890,
		-0.061756, 0.649291, 0.758029,
		0.398736, -0.680190, 0.615103,
		36.083336, 29.132807, 39.707996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273121, 29.816935, 39.846371>,  <35.804222, 29.608940, 39.277424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273121, 29.816935, 39.846371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374187, 29.442572, 39.748199>,  <36.434826, 29.217955, 39.689297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374187, 29.442572, 39.748199>,  <36.273121, 29.816935, 39.846371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374187, 29.442572, 39.748199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887208, 0.325313, -0.327160,
		0.386033, -0.135084, 0.912541,
		0.252667, -0.935908, -0.245429,
		36.449989, 29.161798, 39.674572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950935, 29.687407, 40.058258>,  <36.273121, 29.816935, 39.846371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950935, 29.687407, 40.058258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908428, 29.418163, 39.765511>,  <36.882923, 29.256617, 39.589863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908428, 29.418163, 39.765511>,  <36.950935, 29.687407, 40.058258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908428, 29.418163, 39.765511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868893, 0.295012, -0.397484,
		0.483460, -0.678155, 0.553509,
		-0.106264, -0.673107, -0.731871,
		36.876549, 29.216230, 39.545948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575981, 29.387930, 39.956379>,  <36.950935, 29.687407, 40.058258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575981, 29.387930, 39.956379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375694, 29.373226, 39.610447>,  <37.255520, 29.364405, 39.402889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375694, 29.373226, 39.610447>,  <37.575981, 29.387930, 39.956379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375694, 29.373226, 39.610447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837543, 0.231780, -0.494772,
		0.218635, -0.972074, -0.085274,
		-0.500720, -0.036754, -0.864829,
		37.225479, 29.362200, 39.350998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109207, 29.238560, 39.395935>,  <37.575981, 29.387930, 39.956379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109207, 29.238560, 39.395935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773914, 29.348940, 39.207802>,  <37.572739, 29.415169, 39.094921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773914, 29.348940, 39.207802>,  <38.109207, 29.238560, 39.395935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773914, 29.348940, 39.207802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541554, 0.320223, -0.777288,
		-0.063882, -0.906261, -0.417864,
		-0.838235, 0.275951, -0.470332,
		37.522442, 29.431725, 39.066704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936119, 28.911911, 38.693893>,  <38.109207, 29.238560, 39.395935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936119, 28.911911, 38.693893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761974, 29.271856, 38.704510>,  <37.657486, 29.487823, 38.710880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761974, 29.271856, 38.704510>,  <37.936119, 28.911911, 38.693893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761974, 29.271856, 38.704510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495245, 0.264017, -0.827664,
		-0.751793, -0.347188, -0.560596,
		-0.435361, 0.899864, 0.026543,
		37.631367, 29.541815, 38.712471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038635, 28.879690, 38.039768>,  <37.936119, 28.911911, 38.693893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038635, 28.879690, 38.039768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788784, 29.189625, 38.000858>,  <37.638874, 29.375586, 37.977512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788784, 29.189625, 38.000858>,  <38.038635, 28.879690, 38.039768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788784, 29.189625, 38.000858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538574, 0.337233, -0.772148,
		-0.565485, -0.534698, -0.627953,
		-0.624633, 0.774837, -0.097274,
		37.601395, 29.422075, 37.971676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843586, 28.911684, 37.347813>,  <38.038635, 28.879690, 38.039768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843586, 28.911684, 37.347813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782543, 29.272127, 37.510151>,  <37.745918, 29.488394, 37.607555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782543, 29.272127, 37.510151>,  <37.843586, 28.911684, 37.347813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782543, 29.272127, 37.510151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550615, 0.418540, -0.722252,
		-0.820692, 0.113249, -0.560035,
		-0.152603, 0.901110, 0.405849,
		37.736763, 29.542459, 37.631905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508896, 29.473066, 36.882683>,  <37.843586, 28.911684, 37.347813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508896, 29.473066, 36.882683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742958, 29.659729, 37.147961>,  <37.883396, 29.771727, 37.307129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742958, 29.659729, 37.147961>,  <37.508896, 29.473066, 36.882683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742958, 29.659729, 37.147961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537573, 0.389077, -0.748087,
		-0.607133, 0.794261, -0.023192,
		0.585153, 0.466656, 0.663195,
		37.918503, 29.799726, 37.346920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816982, 30.003994, 36.365063>,  <37.508896, 29.473066, 36.882683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816982, 30.003994, 36.365063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019306, 30.072346, 36.703285>,  <38.140701, 30.113358, 36.906219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019306, 30.072346, 36.703285>,  <37.816982, 30.003994, 36.365063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019306, 30.072346, 36.703285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802323, 0.266914, -0.533886,
		-0.316920, 0.948450, -0.002093,
		0.505806, 0.170879, 0.845554,
		38.171047, 30.123610, 36.956951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092533, 30.786551, 36.444897>,  <37.816982, 30.003994, 36.365063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092533, 30.786551, 36.444897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312595, 30.532187, 36.661396>,  <38.444633, 30.379568, 36.791294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312595, 30.532187, 36.661396>,  <38.092533, 30.786551, 36.444897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312595, 30.532187, 36.661396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816095, 0.272077, -0.509866,
		0.176968, 0.722214, 0.668647,
		0.550155, -0.635910, 0.541247,
		38.477642, 30.341413, 36.823769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577377, 31.236738, 36.756603>,  <38.092533, 30.786551, 36.444897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577377, 31.236738, 36.756603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731232, 30.867540, 36.751995>,  <38.823544, 30.646021, 36.749229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731232, 30.867540, 36.751995>,  <38.577377, 31.236738, 36.756603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731232, 30.867540, 36.751995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846380, 0.357633, -0.394639,
		0.368371, 0.142041, 0.918764,
		0.384635, -0.922997, -0.011521,
		38.846622, 30.590641, 36.748539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192894, 31.373085, 36.937164>,  <38.577377, 31.236738, 36.756603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192894, 31.373085, 36.937164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262383, 31.007130, 36.791397>,  <39.304077, 30.787558, 36.703938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262383, 31.007130, 36.791397>,  <39.192894, 31.373085, 36.937164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262383, 31.007130, 36.791397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798991, 0.347269, -0.490936,
		0.575703, -0.205882, 0.791315,
		0.173725, -0.914886, -0.364421,
		39.314499, 30.732664, 36.682072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794037, 31.181511, 37.076797>,  <39.192894, 31.373085, 36.937164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794037, 31.181511, 37.076797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701103, 30.979401, 36.744362>,  <39.645344, 30.858135, 36.544899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701103, 30.979401, 36.744362>,  <39.794037, 31.181511, 37.076797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701103, 30.979401, 36.744362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874912, 0.264720, -0.405527,
		0.424910, -0.821352, 0.380568,
		-0.232337, -0.505276, -0.831093,
		39.631401, 30.827818, 36.495033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462749, 30.938238, 36.810501>,  <39.794037, 31.181511, 37.076797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462749, 30.938238, 36.810501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210121, 30.901056, 36.502609>,  <40.058544, 30.878748, 36.317875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210121, 30.901056, 36.502609>,  <40.462749, 30.938238, 36.810501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210121, 30.901056, 36.502609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733753, 0.249043, -0.632127,
		0.250496, -0.964015, -0.089030,
		-0.631552, -0.093019, -0.769733,
		40.020649, 30.873171, 36.271690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682472, 30.530701, 36.306419>,  <40.462749, 30.938238, 36.810501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682472, 30.530701, 36.306419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422829, 30.764168, 36.111282>,  <40.267044, 30.904249, 35.994202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.422829, 30.764168, 36.111282>,  <40.682472, 30.530701, 36.306419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422829, 30.764168, 36.111282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716884, 0.254855, -0.648943,
		-0.254439, -0.770960, -0.583851,
		-0.649106, 0.583670, -0.487843,
		40.228096, 30.939268, 35.964928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681553, 30.431473, 35.550190>,  <40.682472, 30.530701, 36.306419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681553, 30.431473, 35.550190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583519, 30.794727, 35.685970>,  <40.524700, 31.012680, 35.767437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583519, 30.794727, 35.685970>,  <40.681553, 30.431473, 35.550190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583519, 30.794727, 35.685970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821907, 0.380321, -0.424058,
		-0.514201, 0.175064, -0.839613,
		-0.245085, 0.908134, 0.339448,
		40.509995, 31.067167, 35.787804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624340, 30.870981, 34.874348>,  <40.681553, 30.431473, 35.550190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624340, 30.870981, 34.874348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768444, 31.054602, 35.199181>,  <40.854904, 31.164774, 35.394081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768444, 31.054602, 35.199181>,  <40.624340, 30.870981, 34.874348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768444, 31.054602, 35.199181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811488, 0.275161, -0.515533,
		-0.460111, 0.844723, -0.273387,
		0.360258, 0.459053, 0.812087,
		40.876522, 31.192318, 35.442806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860996, 31.509933, 34.501373>,  <40.624340, 30.870981, 34.874348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860996, 31.509933, 34.501373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006367, 31.474335, 34.872318>,  <41.093590, 31.452974, 35.094887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.006367, 31.474335, 34.872318>,  <40.860996, 31.509933, 34.501373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006367, 31.474335, 34.872318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863851, 0.404918, -0.299673,
		-0.348836, 0.910012, 0.224037,
		0.363422, -0.088998, 0.927364,
		41.115395, 31.447636, 35.150528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049023, 31.439569, 33.838730>,  <40.860996, 31.509933, 34.501373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049023, 31.439569, 33.838730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315388, 31.412504, 33.541550>,  <41.475208, 31.396265, 33.363243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315388, 31.412504, 33.541550>,  <41.049023, 31.439569, 33.838730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315388, 31.412504, 33.541550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399110, -0.873694, -0.278155,
		-0.630291, 0.481747, -0.608813,
		0.665916, -0.067665, -0.742952,
		41.515163, 31.392204, 33.318665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747467, 31.744284, 33.664307>,  <41.049023, 31.439569, 33.838730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747467, 31.744284, 33.664307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468311, 31.901314, 33.903919>,  <41.300819, 31.995533, 34.047688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468311, 31.901314, 33.903919>,  <41.747467, 31.744284, 33.664307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468311, 31.901314, 33.903919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128935, 0.891593, -0.434094,
		-0.704509, -0.225711, -0.672846,
		-0.697884, 0.392576, 0.599033,
		41.258945, 32.019085, 34.083630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374569, 32.042107, 34.066898>,  <41.747467, 31.744284, 33.664307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374569, 32.042107, 34.066898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199486, 32.380051, 33.943855>,  <42.094437, 32.582817, 33.870029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199486, 32.380051, 33.943855>,  <42.374569, 32.042107, 34.066898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199486, 32.380051, 33.943855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898972, -0.417360, 0.132890,
		-0.016108, 0.334695, 0.942189,
		-0.437709, 0.844861, -0.307604,
		42.068172, 32.633511, 33.851574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839001, 31.939384, 34.629021>,  <42.374569, 32.042107, 34.066898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839001, 31.939384, 34.629021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170132, 31.789165, 34.795715>,  <43.368809, 31.699034, 34.895733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170132, 31.789165, 34.795715>,  <42.839001, 31.939384, 34.629021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170132, 31.789165, 34.795715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334511, 0.926800, 0.170716,
		-0.450345, -0.001919, 0.892853,
		0.827824, -0.375550, 0.416738,
		43.418480, 31.676500, 34.920738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831615, 32.054028, 35.386646>,  <42.839001, 31.939384, 34.629021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831615, 32.054028, 35.386646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190273, 32.085659, 35.212395>,  <43.405468, 32.104637, 35.107845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190273, 32.085659, 35.212395>,  <42.831615, 32.054028, 35.386646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190273, 32.085659, 35.212395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095618, 0.926115, 0.364922,
		0.432300, -0.368860, 0.822837,
		0.896646, 0.079077, -0.435629,
		43.459267, 32.109383, 35.081707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383846, 32.296497, 35.849216>,  <42.831615, 32.054028, 35.386646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383846, 32.296497, 35.849216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514664, 32.374992, 35.479454>,  <43.593155, 32.422089, 35.257595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514664, 32.374992, 35.479454>,  <43.383846, 32.296497, 35.849216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514664, 32.374992, 35.479454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015371, 0.979176, 0.202429,
		0.944883, -0.051995, 0.323253,
		0.327047, 0.196241, -0.924408,
		43.612778, 32.433865, 35.202133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113911, 32.503407, 35.845165>,  <43.383846, 32.296497, 35.849216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113911, 32.503407, 35.845165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478844, 32.389050, 35.962406>,  <44.697803, 32.320435, 36.032753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478844, 32.389050, 35.962406>,  <44.113911, 32.503407, 35.845165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478844, 32.389050, 35.962406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405704, 0.727754, -0.552972,
		-0.055218, 0.623409, 0.779943,
		0.912335, -0.285892, 0.293105,
		44.752544, 32.303284, 36.050339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616154, 32.908653, 36.332497>,  <44.113911, 32.503407, 35.845165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616154, 32.908653, 36.332497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810562, 32.701870, 36.050632>,  <44.927208, 32.577801, 35.881516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810562, 32.701870, 36.050632>,  <44.616154, 32.908653, 36.332497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810562, 32.701870, 36.050632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425725, 0.844202, -0.325701,
		0.763246, -0.141693, 0.630379,
		0.486018, -0.516958, -0.704656,
		44.956367, 32.546783, 35.839237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807438, 33.594955, 36.567688>,  <44.616154, 32.908653, 36.332497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807438, 33.594955, 36.567688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789383, 33.905960, 36.818588>,  <44.778549, 34.092564, 36.969128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789383, 33.905960, 36.818588>,  <44.807438, 33.594955, 36.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789383, 33.905960, 36.818588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727865, 0.455655, -0.512437,
		-0.684234, 0.433423, -0.586489,
		-0.045135, 0.777511, 0.627248,
		44.775841, 34.139214, 37.006763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405888, 34.000893, 36.356785>,  <44.807438, 33.594955, 36.567688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405888, 34.000893, 36.356785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360229, 34.378304, 36.481194>,  <45.332836, 34.604748, 36.555840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360229, 34.378304, 36.481194>,  <45.405888, 34.000893, 36.356785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360229, 34.378304, 36.481194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639011, 0.309437, -0.704211,
		-0.760681, 0.118363, -0.638243,
		-0.114144, 0.943525, 0.311018,
		45.325985, 34.661362, 36.574497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150421, 34.462959, 35.868587>,  <45.405888, 34.000893, 36.356785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150421, 34.462959, 35.868587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388298, 34.669231, 36.115299>,  <45.531025, 34.792995, 36.263325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388298, 34.669231, 36.115299>,  <45.150421, 34.462959, 35.868587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388298, 34.669231, 36.115299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626863, 0.182916, -0.757354,
		-0.503372, 0.837026, -0.214483,
		0.594693, 0.515682, 0.616776,
		45.566708, 34.823936, 36.300331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415714, 35.016491, 35.412697>,  <45.150421, 34.462959, 35.868587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415714, 35.016491, 35.412697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650055, 34.968113, 35.733234>,  <45.790661, 34.939087, 35.925556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.650055, 34.968113, 35.733234>,  <45.415714, 35.016491, 35.412697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.650055, 34.968113, 35.733234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809460, 0.039335, -0.585855,
		0.039335, 0.991880, 0.120945,
		0.585855, -0.120945, 0.801340,
		45.825813, 34.931831, 35.973637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966801, 35.183674, 35.140717>,  <45.415714, 35.016491, 35.412697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966801, 35.183674, 35.140717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123703, 35.108009, 35.500793>,  <46.217846, 35.062611, 35.716839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.123703, 35.108009, 35.500793>,  <45.966801, 35.183674, 35.140717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123703, 35.108009, 35.500793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916433, 0.164707, -0.364723,
		-0.079278, 0.968034, 0.237961,
		0.392258, -0.189161, 0.900196,
		46.241379, 35.051262, 35.770851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374382, 35.800495, 35.427853>,  <45.966801, 35.183674, 35.140717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374382, 35.800495, 35.427853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482094, 35.427635, 35.524670>,  <46.546722, 35.203918, 35.582760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482094, 35.427635, 35.524670>,  <46.374382, 35.800495, 35.427853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482094, 35.427635, 35.524670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821920, 0.091453, -0.562213,
		0.501930, 0.350339, 0.790778,
		0.269284, -0.932148, 0.242047,
		46.562878, 35.147991, 35.597282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144234, 35.802586, 35.771660>,  <46.374382, 35.800495, 35.427853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144234, 35.802586, 35.771660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007389, 35.481323, 35.576561>,  <46.925282, 35.288567, 35.459499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007389, 35.481323, 35.576561>,  <47.144234, 35.802586, 35.771660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007389, 35.481323, 35.576561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720281, 0.109202, -0.685033,
		0.603451, -0.585676, 0.541138,
		-0.342114, -0.803156, -0.487749,
		46.904755, 35.240376, 35.430237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.655506, 35.378902, 35.806591>,  <47.144234, 35.802586, 35.771660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.655506, 35.378902, 35.806591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414581, 35.357098, 35.488033>,  <47.270027, 35.344013, 35.296898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.414581, 35.357098, 35.488033>,  <47.655506, 35.378902, 35.806591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.414581, 35.357098, 35.488033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790086, 0.101672, -0.604506,
		0.113924, -0.993323, -0.018170,
		-0.602317, -0.054512, -0.796393,
		47.233887, 35.340744, 35.249115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.023556, 34.982410, 35.250664>,  <47.655506, 35.378902, 35.806591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.023556, 34.982410, 35.250664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739895, 35.199512, 35.070656>,  <47.569698, 35.329773, 34.962650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.739895, 35.199512, 35.070656>,  <48.023556, 34.982410, 35.250664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.739895, 35.199512, 35.070656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635423, 0.215412, -0.741509,
		-0.305519, -0.811796, -0.497640,
		-0.709152, 0.542757, -0.450021,
		47.527149, 35.362339, 34.935650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.455639, 36.059971, 26.920198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686127, 36.361702, 27.046030>,  <36.824417, 36.542740, 27.121529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686127, 36.361702, 27.046030>,  <36.455639, 36.059971, 26.920198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686127, 36.361702, 27.046030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357417, -0.113571, 0.927014,
		0.735003, -0.646595, 0.204170,
		0.576215, 0.754332, 0.314579,
		36.858990, 36.588001, 27.140404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843670, 35.809212, 27.525995>,  <36.455639, 36.059971, 26.920198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843670, 35.809212, 27.525995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854881, 36.208721, 27.542358>,  <36.861607, 36.448425, 27.552177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854881, 36.208721, 27.542358>,  <36.843670, 35.809212, 27.525995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854881, 36.208721, 27.542358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167341, -0.035661, 0.985254,
		0.985501, -0.034460, 0.166135,
		0.028027, 0.998770, 0.040910,
		36.863289, 36.508350, 27.554632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447186, 35.983097, 28.012636>,  <36.843670, 35.809212, 27.525995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447186, 35.983097, 28.012636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193745, 36.291286, 27.984598>,  <37.041679, 36.476200, 27.967775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.193745, 36.291286, 27.984598>,  <37.447186, 35.983097, 28.012636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193745, 36.291286, 27.984598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055313, 0.045259, 0.997443,
		0.771677, 0.635862, 0.013941,
		-0.633605, 0.770475, -0.070097,
		37.003662, 36.522430, 27.963570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805820, 36.405514, 28.534004>,  <37.447186, 35.983097, 28.012636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805820, 36.405514, 28.534004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435097, 36.535992, 28.459585>,  <37.212662, 36.614281, 28.414934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435097, 36.535992, 28.459585>,  <37.805820, 36.405514, 28.534004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435097, 36.535992, 28.459585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083379, 0.304313, 0.948916,
		0.366150, 0.894980, -0.254843,
		-0.926813, 0.326197, -0.186047,
		37.157051, 36.633850, 28.403770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758255, 37.059666, 28.922625>,  <37.805820, 36.405514, 28.534004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758255, 37.059666, 28.922625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394299, 36.916824, 28.838171>,  <37.175926, 36.831120, 28.787498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.394299, 36.916824, 28.838171>,  <37.758255, 37.059666, 28.922625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394299, 36.916824, 28.838171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253811, 0.076622, 0.964214,
		-0.328148, 0.930917, -0.160355,
		-0.909890, -0.357105, -0.211134,
		37.121330, 36.809692, 28.774832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367466, 37.528049, 29.329439>,  <37.758255, 37.059666, 28.922625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367466, 37.528049, 29.329439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130180, 37.220039, 29.235497>,  <36.987808, 37.035233, 29.179131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130180, 37.220039, 29.235497>,  <37.367466, 37.528049, 29.329439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130180, 37.220039, 29.235497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425773, 0.052501, 0.903305,
		-0.683237, 0.635851, -0.359000,
		-0.593215, -0.770024, -0.234858,
		36.952217, 36.989033, 29.165039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732635, 37.737289, 29.547310>,  <37.367466, 37.528049, 29.329439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732635, 37.737289, 29.547310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727074, 37.337704, 29.529955>,  <36.723736, 37.097954, 29.519541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.727074, 37.337704, 29.529955>,  <36.732635, 37.737289, 29.547310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727074, 37.337704, 29.529955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290526, -0.037484, 0.956133,
		-0.956766, 0.025901, -0.289703,
		-0.013905, -0.998962, -0.043388,
		36.722900, 37.038013, 29.516939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103298, 37.602718, 29.867647>,  <36.732635, 37.737289, 29.547310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103298, 37.602718, 29.867647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.279896, 37.243954, 29.877781>,  <36.385853, 37.028694, 29.883862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.279896, 37.243954, 29.877781>,  <36.103298, 37.602718, 29.867647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279896, 37.243954, 29.877781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305923, -0.123923, 0.943957,
		-0.843503, -0.424498, -0.329095,
		0.441491, -0.896908, 0.025334,
		36.412342, 36.974880, 29.885382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643368, 37.166809, 30.275240>,  <36.103298, 37.602718, 29.867647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643368, 37.166809, 30.275240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981312, 36.952820, 30.274191>,  <36.184078, 36.824425, 30.273561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981312, 36.952820, 30.274191>,  <35.643368, 37.166809, 30.275240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981312, 36.952820, 30.274191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278077, -0.443333, 0.852132,
		-0.457044, -0.719198, -0.523321,
		0.844857, -0.534985, -0.002630,
		36.234772, 36.792328, 30.273403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487213, 36.417332, 30.394407>,  <35.643368, 37.166809, 30.275240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487213, 36.417332, 30.394407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.873184, 36.453815, 30.492880>,  <36.104767, 36.475704, 30.551964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.873184, 36.453815, 30.492880>,  <35.487213, 36.417332, 30.394407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873184, 36.453815, 30.492880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154702, -0.560070, 0.813873,
		0.212110, -0.823409, -0.526315,
		0.964923, 0.091209, 0.246179,
		36.162663, 36.481178, 30.566734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737133, 35.708035, 30.571772>,  <35.487213, 36.417332, 30.394407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737133, 35.708035, 30.571772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942684, 35.996025, 30.758348>,  <36.066013, 36.168819, 30.870295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942684, 35.996025, 30.758348>,  <35.737133, 35.708035, 30.571772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942684, 35.996025, 30.758348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203362, -0.425991, 0.881576,
		0.833413, -0.547876, -0.072490,
		0.513874, 0.719975, 0.466444,
		36.096848, 36.212017, 30.898281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014084, 35.402561, 31.092632>,  <35.737133, 35.708035, 30.571772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014084, 35.402561, 31.092632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104290, 35.764755, 31.236433>,  <36.158413, 35.982071, 31.322714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104290, 35.764755, 31.236433>,  <36.014084, 35.402561, 31.092632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104290, 35.764755, 31.236433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196843, -0.319047, 0.927071,
		0.954147, -0.279831, 0.106290,
		0.225512, 0.905485, 0.359501,
		36.171944, 36.036400, 31.344284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555866, 35.384399, 31.630594>,  <36.014084, 35.402561, 31.092632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555866, 35.384399, 31.630594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361359, 35.730324, 31.680622>,  <36.244656, 35.937878, 31.710638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361359, 35.730324, 31.680622>,  <36.555866, 35.384399, 31.630594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361359, 35.730324, 31.680622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264891, -0.282286, 0.922035,
		0.832692, 0.415227, 0.366347,
		-0.486268, 0.864813, 0.125068,
		36.215477, 35.989769, 31.718142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892704, 35.667419, 32.214725>,  <36.555866, 35.384399, 31.630594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892704, 35.667419, 32.214725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530163, 35.827126, 32.159420>,  <36.312637, 35.922947, 32.126236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.530163, 35.827126, 32.159420>,  <36.892704, 35.667419, 32.214725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530163, 35.827126, 32.159420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224176, -0.177024, 0.958336,
		0.358153, 0.899584, 0.249950,
		-0.906351, 0.399263, -0.138263,
		36.258259, 35.946903, 32.117943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735470, 36.206520, 32.703049>,  <36.892704, 35.667419, 32.214725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735470, 36.206520, 32.703049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.362919, 36.092632, 32.612301>,  <36.139389, 36.024300, 32.557850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.362919, 36.092632, 32.612301>,  <36.735470, 36.206520, 32.703049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362919, 36.092632, 32.612301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202770, -0.111870, 0.972815,
		-0.302355, 0.952062, 0.046461,
		-0.931378, -0.284715, -0.226874,
		36.083504, 36.007217, 32.544239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427570, 36.425591, 33.263680>,  <36.735470, 36.206520, 32.703049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427570, 36.425591, 33.263680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147568, 36.187595, 33.105698>,  <35.979568, 36.044800, 33.010910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147568, 36.187595, 33.105698>,  <36.427570, 36.425591, 33.263680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147568, 36.187595, 33.105698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400801, -0.130415, 0.906835,
		-0.591061, 0.793086, -0.147179,
		-0.700004, -0.594985, -0.394953,
		35.937565, 36.009102, 32.987213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842342, 36.575600, 33.675583>,  <36.427570, 36.425591, 33.263680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842342, 36.575600, 33.675583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751286, 36.230511, 33.494968>,  <35.696651, 36.023457, 33.386600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.751286, 36.230511, 33.494968>,  <35.842342, 36.575600, 33.675583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751286, 36.230511, 33.494968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454500, -0.315959, 0.832826,
		-0.861166, 0.394812, -0.320182,
		-0.227646, -0.862724, -0.451536,
		35.682991, 35.971695, 33.359509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101551, 36.478745, 33.866405>,  <35.842342, 36.575600, 33.675583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101551, 36.478745, 33.866405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.238106, 36.125568, 33.737492>,  <35.320038, 35.913662, 33.660141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.238106, 36.125568, 33.737492>,  <35.101551, 36.478745, 33.866405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238106, 36.125568, 33.737492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549684, -0.465683, 0.693533,
		-0.762434, -0.059603, -0.644315,
		0.341383, -0.882942, -0.322289,
		35.340519, 35.860687, 33.640804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508991, 36.080673, 33.842579>,  <35.101551, 36.478745, 33.866405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508991, 36.080673, 33.842579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823040, 35.834961, 33.874210>,  <35.011467, 35.687534, 33.893188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823040, 35.834961, 33.874210>,  <34.508991, 36.080673, 33.842579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823040, 35.834961, 33.874210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513734, -0.574593, 0.637119,
		-0.345931, -0.540838, -0.766698,
		0.785117, -0.614278, 0.079077,
		35.058575, 35.650677, 33.897934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235649, 35.464504, 33.896805>,  <34.508991, 36.080673, 33.842579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235649, 35.464504, 33.896805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595654, 35.411880, 34.063023>,  <34.811657, 35.380306, 34.162754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595654, 35.411880, 34.063023>,  <34.235649, 35.464504, 33.896805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595654, 35.411880, 34.063023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415056, -0.549778, 0.724895,
		0.133093, -0.824886, -0.549408,
		0.900008, -0.131556, 0.415546,
		34.865658, 35.372414, 34.187687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361713, 34.677277, 34.181744>,  <34.235649, 35.464504, 33.896805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361713, 34.677277, 34.181744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.642040, 34.905308, 34.353264>,  <34.810234, 35.042126, 34.456177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.642040, 34.905308, 34.353264>,  <34.361713, 34.677277, 34.181744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642040, 34.905308, 34.353264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204341, -0.415495, 0.886346,
		0.683451, -0.708785, -0.174694,
		0.700813, 0.570077, 0.428804,
		34.852283, 35.076332, 34.481907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860073, 34.177605, 34.546703>,  <34.361713, 34.677277, 34.181744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860073, 34.177605, 34.546703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873859, 34.549244, 34.693996>,  <34.882130, 34.772228, 34.782372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873859, 34.549244, 34.693996>,  <34.860073, 34.177605, 34.546703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873859, 34.549244, 34.693996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009670, -0.368128, 0.929725,
		0.999359, -0.035601, -0.003702,
		0.034462, 0.929094, 0.368236,
		34.884197, 34.827972, 34.804466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140732, 33.457649, 34.888378>,  <34.860073, 34.177605, 34.546703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140732, 33.457649, 34.888378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367714, 33.135075, 34.821857>,  <35.503902, 32.941528, 34.781944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367714, 33.135075, 34.821857>,  <35.140732, 33.457649, 34.888378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367714, 33.135075, 34.821857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002348, 0.203553, -0.979061,
		0.823401, 0.555182, 0.117401,
		0.567454, -0.806436, -0.166303,
		35.537949, 32.893143, 34.771965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734821, 33.803337, 34.507149>,  <35.140732, 33.457649, 34.888378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734821, 33.803337, 34.507149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712276, 33.411533, 34.429817>,  <35.698750, 33.176449, 34.383419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.712276, 33.411533, 34.429817>,  <35.734821, 33.803337, 34.507149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712276, 33.411533, 34.429817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304624, 0.167532, -0.937623,
		0.950804, -0.111738, 0.288941,
		-0.056362, -0.979514, -0.193328,
		35.695370, 33.117680, 34.371819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425030, 33.677879, 34.114109>,  <35.734821, 33.803337, 34.507149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425030, 33.677879, 34.114109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206863, 33.349358, 34.047195>,  <36.075962, 33.152245, 34.007046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206863, 33.349358, 34.047195>,  <36.425030, 33.677879, 34.114109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206863, 33.349358, 34.047195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324164, -0.022640, -0.945730,
		0.772942, -0.570045, 0.278585,
		-0.545416, -0.821301, -0.167288,
		36.043240, 33.102966, 33.997009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840595, 33.153530, 33.758198>,  <36.425030, 33.677879, 34.114109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840595, 33.153530, 33.758198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465050, 33.061527, 33.655720>,  <36.239723, 33.006325, 33.594234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465050, 33.061527, 33.655720>,  <36.840595, 33.153530, 33.758198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465050, 33.061527, 33.655720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301436, -0.189596, -0.934446,
		0.166355, -0.954542, 0.247336,
		-0.938862, -0.230005, -0.256193,
		36.183392, 32.992527, 33.578861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858955, 32.526470, 33.515339>,  <36.840595, 33.153530, 33.758198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858955, 32.526470, 33.515339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511040, 32.664749, 33.374504>,  <36.302292, 32.747715, 33.290005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511040, 32.664749, 33.374504>,  <36.858955, 32.526470, 33.515339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511040, 32.664749, 33.374504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298787, -0.198853, -0.933372,
		-0.392677, -0.917034, 0.069670,
		-0.869788, 0.345697, -0.352082,
		36.250103, 32.768459, 33.268879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823765, 32.247093, 32.936642>,  <36.858955, 32.526470, 33.515339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823765, 32.247093, 32.936642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512226, 32.486271, 32.860886>,  <36.325302, 32.629776, 32.815434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512226, 32.486271, 32.860886>,  <36.823765, 32.247093, 32.936642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512226, 32.486271, 32.860886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177543, -0.079425, -0.980903,
		-0.601566, -0.797593, -0.044301,
		-0.778843, 0.597944, -0.189387,
		36.278572, 32.665653, 32.804070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453873, 31.924259, 32.342293>,  <36.823765, 32.247093, 32.936642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453873, 31.924259, 32.342293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350254, 32.310604, 32.343189>,  <36.288082, 32.542412, 32.343727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350254, 32.310604, 32.343189>,  <36.453873, 31.924259, 32.342293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350254, 32.310604, 32.343189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295725, 0.081522, -0.951788,
		-0.919480, -0.245892, -0.306748,
		-0.259044, 0.965863, 0.002241,
		36.272541, 32.600365, 32.343861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983292, 31.893505, 31.765638>,  <36.453873, 31.924259, 32.342293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983292, 31.893505, 31.765638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122440, 32.257881, 31.854336>,  <36.205929, 32.476509, 31.907555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.122440, 32.257881, 31.854336>,  <35.983292, 31.893505, 31.765638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122440, 32.257881, 31.854336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267906, 0.130067, -0.954625,
		-0.898450, 0.391493, -0.198800,
		0.347872, 0.910942, 0.221742,
		36.226803, 32.531162, 31.920858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727192, 32.381798, 31.297201>,  <35.983292, 31.893505, 31.765638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727192, 32.381798, 31.297201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025803, 32.587345, 31.466265>,  <36.204967, 32.710674, 31.567703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.025803, 32.587345, 31.466265>,  <35.727192, 32.381798, 31.297201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025803, 32.587345, 31.466265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371858, 0.204536, -0.905476,
		-0.551745, 0.833129, -0.038395,
		0.746525, 0.513869, 0.422657,
		36.249760, 32.741505, 31.593061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668804, 32.958385, 30.936522>,  <35.727192, 32.381798, 31.297201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668804, 32.958385, 30.936522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037090, 32.939312, 31.091444>,  <36.258064, 32.927868, 31.184397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037090, 32.939312, 31.091444>,  <35.668804, 32.958385, 30.936522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037090, 32.939312, 31.091444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388960, 0.192136, -0.900996,
		-0.031450, 0.980209, 0.195451,
		0.920718, -0.047687, 0.387305,
		36.313305, 32.925007, 31.207636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028126, 33.592438, 30.743753>,  <35.668804, 32.958385, 30.936522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028126, 33.592438, 30.743753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300442, 33.306240, 30.806479>,  <36.463833, 33.134521, 30.844114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.300442, 33.306240, 30.806479>,  <36.028126, 33.592438, 30.743753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300442, 33.306240, 30.806479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429378, 0.216383, -0.876819,
		0.593427, 0.664265, 0.454530,
		0.680793, -0.715493, 0.156813,
		36.504681, 33.091591, 30.853523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560112, 33.919758, 30.534718>,  <36.028126, 33.592438, 30.743753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560112, 33.919758, 30.534718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684238, 33.539547, 30.540359>,  <36.758713, 33.311420, 30.543745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684238, 33.539547, 30.540359>,  <36.560112, 33.919758, 30.534718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684238, 33.539547, 30.540359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451863, 0.134431, -0.881900,
		0.836375, 0.280041, 0.471225,
		0.310315, -0.950529, 0.014106,
		36.777332, 33.254387, 30.544592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210152, 33.909122, 30.345728>,  <36.560112, 33.919758, 30.534718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210152, 33.909122, 30.345728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050301, 33.552704, 30.259630>,  <36.954391, 33.338852, 30.207972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.050301, 33.552704, 30.259630>,  <37.210152, 33.909122, 30.345728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050301, 33.552704, 30.259630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123059, 0.180535, -0.975840,
		0.908381, -0.416457, 0.037505,
		-0.399624, -0.891050, -0.215243,
		36.930412, 33.285389, 30.195057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597588, 33.635052, 29.757498>,  <37.210152, 33.909122, 30.345728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597588, 33.635052, 29.757498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269936, 33.405693, 29.751427>,  <37.073345, 33.268078, 29.747784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269936, 33.405693, 29.751427>,  <37.597588, 33.635052, 29.757498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269936, 33.405693, 29.751427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107940, -0.128103, -0.985870,
		0.563355, -0.809198, 0.166827,
		-0.819134, -0.573402, -0.015178,
		37.024197, 33.233673, 29.746874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816093, 32.933392, 29.376699>,  <37.597588, 33.635052, 29.757498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816093, 32.933392, 29.376699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421978, 32.994473, 29.345999>,  <37.185509, 33.031120, 29.327578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.421978, 32.994473, 29.345999>,  <37.816093, 32.933392, 29.376699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421978, 32.994473, 29.345999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056175, -0.134791, -0.989280,
		-0.161419, -0.979036, 0.124229,
		-0.985286, 0.152711, -0.076755,
		37.126392, 33.040283, 29.322973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560677, 32.362858, 29.012186>,  <37.816093, 32.933392, 29.376699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560677, 32.362858, 29.012186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284626, 32.650951, 28.983919>,  <37.118996, 32.823807, 28.966959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.284626, 32.650951, 28.983919>,  <37.560677, 32.362858, 29.012186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284626, 32.650951, 28.983919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007191, -0.104471, -0.994502,
		-0.723655, -0.685822, 0.077277,
		-0.690125, 0.720231, -0.070669,
		37.077587, 32.867020, 28.962719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104046, 32.082020, 28.511522>,  <37.560677, 32.362858, 29.012186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104046, 32.082020, 28.511522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037369, 32.474960, 28.545465>,  <36.997364, 32.710724, 28.565832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.037369, 32.474960, 28.545465>,  <37.104046, 32.082020, 28.511522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037369, 32.474960, 28.545465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062522, 0.096421, -0.993375,
		-0.984025, -0.160283, -0.077491,
		-0.166693, 0.982350, 0.084859,
		36.987362, 32.769665, 28.570923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058323, 32.176022, 27.845701>,  <37.104046, 32.082020, 28.511522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058323, 32.176022, 27.845701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012718, 32.550358, 27.979090>,  <36.985355, 32.774960, 28.059122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012718, 32.550358, 27.979090>,  <37.058323, 32.176022, 27.845701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012718, 32.550358, 27.979090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084603, 0.325294, -0.941820,
		-0.989870, -0.135593, 0.042087,
		-0.114014, 0.935841, 0.333471,
		36.978516, 32.831112, 28.079130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.248375, 33.619400, 27.288876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572395, 33.605888, 27.523029>,  <36.766808, 33.597782, 27.663523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572395, 33.605888, 27.523029>,  <36.248375, 33.619400, 27.288876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572395, 33.605888, 27.523029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474059, 0.625280, -0.619914,
		-0.345089, 0.779669, 0.522522,
		0.810050, -0.033781, 0.585387,
		36.815411, 33.595753, 27.698645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585754, 34.372940, 27.431417>,  <36.248375, 33.619400, 27.288876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585754, 34.372940, 27.431417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875900, 34.098232, 27.450161>,  <37.049988, 33.933407, 27.461407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.875900, 34.098232, 27.450161>,  <36.585754, 34.372940, 27.431417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875900, 34.098232, 27.450161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522955, 0.505524, -0.686268,
		0.447618, 0.522301, 0.725838,
		0.725367, -0.686766, 0.046858,
		37.093510, 33.892204, 27.464218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134548, 34.784790, 27.300398>,  <36.585754, 34.372940, 27.431417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134548, 34.784790, 27.300398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286339, 34.415195, 27.281446>,  <37.377411, 34.193439, 27.270077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286339, 34.415195, 27.281446>,  <37.134548, 34.784790, 27.300398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286339, 34.415195, 27.281446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534518, 0.260743, -0.803931,
		0.755176, 0.279748, 0.592833,
		0.379475, -0.923988, -0.047377,
		37.400181, 34.138000, 27.267233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900826, 34.811390, 27.198099>,  <37.134548, 34.784790, 27.300398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900826, 34.811390, 27.198099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804821, 34.444923, 27.069698>,  <37.747219, 34.225044, 26.992659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.804821, 34.444923, 27.069698>,  <37.900826, 34.811390, 27.198099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804821, 34.444923, 27.069698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275231, 0.252878, -0.927524,
		0.930937, -0.310965, 0.191463,
		-0.240010, -0.916162, -0.321000,
		37.732819, 34.170074, 26.973398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473721, 34.622814, 26.829062>,  <37.900826, 34.811390, 27.198099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473721, 34.622814, 26.829062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162048, 34.401657, 26.710947>,  <37.975044, 34.268963, 26.640078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162048, 34.401657, 26.710947>,  <38.473721, 34.622814, 26.829062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162048, 34.401657, 26.710947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292428, 0.096036, -0.951453,
		0.554407, -0.827702, 0.086851,
		-0.779178, -0.552889, -0.295286,
		37.928295, 34.235790, 26.622360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721432, 34.083271, 26.388985>,  <38.473721, 34.622814, 26.829062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721432, 34.083271, 26.388985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327919, 34.094124, 26.318060>,  <38.091812, 34.100636, 26.275505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327919, 34.094124, 26.318060>,  <38.721432, 34.083271, 26.388985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327919, 34.094124, 26.318060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178435, 0.046900, -0.982833,
		-0.018352, -0.998531, -0.050981,
		-0.983780, 0.027134, -0.177313,
		38.032784, 34.102264, 26.264866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592224, 33.542068, 25.820934>,  <38.721432, 34.083271, 26.388985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592224, 33.542068, 25.820934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271881, 33.781612, 25.820377>,  <38.079674, 33.925339, 25.820044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271881, 33.781612, 25.820377>,  <38.592224, 33.542068, 25.820934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271881, 33.781612, 25.820377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029680, 0.037371, -0.998861,
		-0.598121, -0.799985, -0.047703,
		-0.800856, 0.598855, -0.001391,
		38.031624, 33.961269, 25.819960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167408, 33.234482, 25.288624>,  <38.592224, 33.542068, 25.820934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167408, 33.234482, 25.288624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035786, 33.610149, 25.327995>,  <37.956814, 33.835548, 25.351618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035786, 33.610149, 25.327995>,  <38.167408, 33.234482, 25.288624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035786, 33.610149, 25.327995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016026, 0.098666, -0.994992,
		-0.944174, -0.328985, -0.017415,
		-0.329056, 0.939166, 0.098430,
		37.937069, 33.891899, 25.357525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742523, 33.295547, 24.779440>,  <38.167408, 33.234482, 25.288624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742523, 33.295547, 24.779440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801201, 33.684906, 24.849854>,  <37.836407, 33.918522, 24.892101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801201, 33.684906, 24.849854>,  <37.742523, 33.295547, 24.779440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801201, 33.684906, 24.849854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109358, 0.160912, -0.980892,
		-0.983118, 0.163142, -0.082843,
		0.146694, 0.973392, 0.176036,
		37.845211, 33.976925, 24.902664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268478, 33.698433, 24.298378>,  <37.742523, 33.295547, 24.779440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268478, 33.698433, 24.298378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551197, 33.962105, 24.401079>,  <37.720829, 34.120308, 24.462700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.551197, 33.962105, 24.401079>,  <37.268478, 33.698433, 24.298378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551197, 33.962105, 24.401079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148966, 0.216117, -0.964936,
		-0.691559, 0.720257, 0.054554,
		0.706793, 0.659183, 0.256752,
		37.763233, 34.159859, 24.478106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170105, 34.163059, 23.839928>,  <37.268478, 33.698433, 24.298378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170105, 34.163059, 23.839928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541298, 34.247845, 23.962517>,  <37.764011, 34.298717, 24.036070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541298, 34.247845, 23.962517>,  <37.170105, 34.163059, 23.839928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541298, 34.247845, 23.962517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254023, 0.241883, -0.936464,
		-0.272626, 0.946871, 0.170619,
		0.927980, 0.211964, 0.306471,
		37.819691, 34.311436, 24.054459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322590, 34.825188, 23.504873>,  <37.170105, 34.163059, 23.839928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322590, 34.825188, 23.504873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673565, 34.661755, 23.605400>,  <37.884151, 34.563694, 23.665716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.673565, 34.661755, 23.605400>,  <37.322590, 34.825188, 23.504873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673565, 34.661755, 23.605400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362249, 0.220956, -0.905513,
		0.314448, 0.885572, 0.341885,
		0.877438, -0.408584, 0.251318,
		37.936798, 34.539181, 23.680796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937988, 35.319195, 23.419151>,  <37.322590, 34.825188, 23.504873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937988, 35.319195, 23.419151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092903, 34.950893, 23.400290>,  <38.185852, 34.729912, 23.388973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.092903, 34.950893, 23.400290>,  <37.937988, 35.319195, 23.419151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092903, 34.950893, 23.400290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498341, 0.252090, -0.829522,
		0.775673, 0.297761, 0.556480,
		0.387282, -0.920755, -0.047153,
		38.209087, 34.674667, 23.386143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672489, 35.487411, 23.348700>,  <37.937988, 35.319195, 23.419151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672489, 35.487411, 23.348700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622608, 35.113125, 23.216707>,  <38.592682, 34.888554, 23.137512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622608, 35.113125, 23.216707>,  <38.672489, 35.487411, 23.348700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622608, 35.113125, 23.216707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532118, 0.217632, -0.818222,
		0.837437, -0.277619, 0.470772,
		-0.124699, -0.935716, -0.329979,
		38.585197, 34.832409, 23.117714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290600, 35.314129, 23.034889>,  <38.672489, 35.487411, 23.348700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290600, 35.314129, 23.034889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051971, 35.022327, 22.901066>,  <38.908794, 34.847248, 22.820772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051971, 35.022327, 22.901066>,  <39.290600, 35.314129, 23.034889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051971, 35.022327, 22.901066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440526, 0.050801, -0.896301,
		0.670852, -0.682087, 0.291059,
		-0.596569, -0.729505, -0.334557,
		38.873001, 34.803474, 22.800699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759018, 34.755306, 22.769377>,  <39.290600, 35.314129, 23.034889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759018, 34.755306, 22.769377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417969, 34.709297, 22.565493>,  <39.213341, 34.681690, 22.443163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417969, 34.709297, 22.565493>,  <39.759018, 34.755306, 22.769377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417969, 34.709297, 22.565493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512764, 0.003504, -0.858523,
		0.100537, -0.993356, 0.055993,
		-0.852623, -0.115024, -0.509709,
		39.162182, 34.674789, 22.412580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917831, 34.304146, 22.180902>,  <39.759018, 34.755306, 22.769377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917831, 34.304146, 22.180902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560436, 34.444675, 22.069016>,  <39.345997, 34.528996, 22.001884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.560436, 34.444675, 22.069016>,  <39.917831, 34.304146, 22.180902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560436, 34.444675, 22.069016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308120, 0.026466, -0.950979,
		-0.326701, -0.935879, -0.131898,
		-0.893492, 0.351327, -0.279716,
		39.292389, 34.550072, 21.985100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643543, 33.950531, 21.632671>,  <39.917831, 34.304146, 22.180902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643543, 33.950531, 21.632671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425575, 34.284714, 21.604170>,  <39.294792, 34.485222, 21.587069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425575, 34.284714, 21.604170>,  <39.643543, 33.950531, 21.632671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425575, 34.284714, 21.604170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328727, 0.134688, -0.934771,
		-0.771361, -0.532801, -0.348031,
		-0.544923, 0.835453, -0.071253,
		39.262100, 34.535351, 21.582794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557983, 33.941273, 20.952486>,  <39.643543, 33.950531, 21.632671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557983, 33.941273, 20.952486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428467, 34.307438, 21.048130>,  <39.350758, 34.527138, 21.105516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.428467, 34.307438, 21.048130>,  <39.557983, 33.941273, 20.952486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428467, 34.307438, 21.048130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437600, 0.368966, -0.819982,
		-0.838848, -0.160867, -0.520053,
		-0.323790, 0.915416, 0.239111,
		39.331329, 34.582062, 21.119864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203812, 34.133072, 20.467236>,  <39.557983, 33.941273, 20.952486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203812, 34.133072, 20.467236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325199, 34.467667, 20.649750>,  <39.398033, 34.668423, 20.759258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.325199, 34.467667, 20.649750>,  <39.203812, 34.133072, 20.467236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325199, 34.467667, 20.649750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377545, 0.334113, -0.863613,
		-0.874852, 0.434348, -0.214419,
		0.303469, 0.836486, 0.456286,
		39.416241, 34.718613, 20.786636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934452, 34.791115, 20.067486>,  <39.203812, 34.133072, 20.467236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934452, 34.791115, 20.067486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263462, 34.871780, 20.280193>,  <39.460869, 34.920177, 20.407818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263462, 34.871780, 20.280193>,  <38.934452, 34.791115, 20.067486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263462, 34.871780, 20.280193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453346, 0.332087, -0.827161,
		-0.343399, 0.921440, 0.181730,
		0.822529, 0.201660, 0.531770,
		39.510220, 34.932278, 20.439724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043812, 35.317230, 19.709930>,  <38.934452, 34.791115, 20.067486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043812, 35.317230, 19.709930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.387505, 35.247646, 19.902369>,  <39.593719, 35.205894, 20.017832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.387505, 35.247646, 19.902369>,  <39.043812, 35.317230, 19.709930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387505, 35.247646, 19.902369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511432, 0.269463, -0.815982,
		0.012313, 0.947168, 0.320502,
		0.859235, -0.173962, 0.481095,
		39.645275, 35.195457, 20.046698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472187, 35.992157, 19.617273>,  <39.043812, 35.317230, 19.709930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472187, 35.992157, 19.617273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646542, 35.641033, 19.696733>,  <39.751156, 35.430359, 19.744410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.646542, 35.641033, 19.696733>,  <39.472187, 35.992157, 19.617273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646542, 35.641033, 19.696733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526979, 0.070001, -0.846990,
		0.729587, 0.473875, 0.493098,
		0.435885, -0.877805, 0.198651,
		39.777306, 35.377693, 19.756329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517216, 36.835663, 19.613674>,  <39.472187, 35.992157, 19.617273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517216, 36.835663, 19.613674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.879803, 37.004490, 19.608431>,  <40.097355, 37.105785, 19.605286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.879803, 37.004490, 19.608431>,  <39.517216, 36.835663, 19.613674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879803, 37.004490, 19.608431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040838, -0.056731, 0.997554,
		0.420292, -0.904788, -0.068662,
		0.906470, 0.422068, -0.013106,
		40.151745, 37.131111, 19.604500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939621, 36.446983, 20.084286>,  <39.517216, 36.835663, 19.613674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939621, 36.446983, 20.084286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060272, 36.827793, 20.063585>,  <40.132664, 37.056278, 20.051165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.060272, 36.827793, 20.063585>,  <39.939621, 36.446983, 20.084286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060272, 36.827793, 20.063585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157200, 0.003876, 0.987559,
		0.940378, -0.306008, -0.148488,
		0.301625, 0.952021, -0.051749,
		40.150761, 37.113400, 20.048061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644661, 36.513496, 20.369553>,  <39.939621, 36.446983, 20.084286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644661, 36.513496, 20.369553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.458778, 36.866417, 20.399460>,  <40.347248, 37.078171, 20.417404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.458778, 36.866417, 20.399460>,  <40.644661, 36.513496, 20.369553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458778, 36.866417, 20.399460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001731, -0.083536, 0.996503,
		0.885462, 0.463214, 0.037293,
		-0.464709, 0.882301, 0.074770,
		40.319366, 37.131107, 20.421890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995823, 36.923779, 20.889521>,  <40.644661, 36.513496, 20.369553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995823, 36.923779, 20.889521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634136, 37.092823, 20.864920>,  <40.417122, 37.194252, 20.850159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634136, 37.092823, 20.864920>,  <40.995823, 36.923779, 20.889521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634136, 37.092823, 20.864920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134546, -0.145229, 0.980207,
		0.405317, 0.894599, 0.188180,
		-0.904221, 0.422613, -0.061501,
		40.362869, 37.219608, 20.846470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846367, 37.191303, 21.608728>,  <40.995823, 36.923779, 20.889521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846367, 37.191303, 21.608728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495510, 37.251831, 21.426420>,  <40.284996, 37.288147, 21.317036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.495510, 37.251831, 21.426420>,  <40.846367, 37.191303, 21.608728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495510, 37.251831, 21.426420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463462, -0.018086, 0.885932,
		0.125813, 0.988320, 0.085994,
		-0.877140, 0.151317, -0.455773,
		40.232368, 37.297226, 21.289688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564613, 37.785515, 21.780306>,  <40.846367, 37.191303, 21.608728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564613, 37.785515, 21.780306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.239216, 37.589790, 21.654575>,  <40.043976, 37.472355, 21.579138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.239216, 37.589790, 21.654575>,  <40.564613, 37.785515, 21.780306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239216, 37.589790, 21.654575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443594, 0.172534, 0.879464,
		-0.376099, 0.854873, -0.357410,
		-0.813495, -0.489310, -0.314327,
		39.995167, 37.442997, 21.560278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162899, 38.138332, 22.182293>,  <40.564613, 37.785515, 21.780306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162899, 38.138332, 22.182293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.967144, 37.816013, 22.048906>,  <39.849693, 37.622623, 21.968874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.967144, 37.816013, 22.048906>,  <40.162899, 38.138332, 22.182293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967144, 37.816013, 22.048906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403572, -0.129710, 0.905707,
		-0.773066, 0.577817, -0.261718,
		-0.489385, -0.805793, -0.333465,
		39.820328, 37.574276, 21.948866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453236, 38.202358, 22.295685>,  <40.162899, 38.138332, 22.182293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453236, 38.202358, 22.295685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477207, 37.804253, 22.265051>,  <39.491589, 37.565392, 22.246670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.477207, 37.804253, 22.265051>,  <39.453236, 38.202358, 22.295685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477207, 37.804253, 22.265051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483727, -0.096069, 0.869931,
		-0.873165, -0.015085, -0.487191,
		0.059927, -0.995260, -0.076587,
		39.495186, 37.505676, 22.242075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777218, 37.933109, 22.489817>,  <39.453236, 38.202358, 22.295685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777218, 37.933109, 22.489817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.031757, 37.628269, 22.537592>,  <39.184483, 37.445366, 22.566257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.031757, 37.628269, 22.537592>,  <38.777218, 37.933109, 22.489817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031757, 37.628269, 22.537592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393687, -0.187694, 0.899878,
		-0.663377, -0.619660, -0.419467,
		0.636350, -0.762097, 0.119440,
		39.222664, 37.399639, 22.573423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403328, 37.413078, 22.693302>,  <38.777218, 37.933109, 22.489817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403328, 37.413078, 22.693302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763313, 37.304100, 22.829441>,  <38.979305, 37.238712, 22.911123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763313, 37.304100, 22.829441>,  <38.403328, 37.413078, 22.693302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763313, 37.304100, 22.829441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404674, -0.231647, 0.884635,
		-0.162169, -0.933872, -0.318724,
		0.899967, -0.272440, 0.340347,
		39.033302, 37.222366, 22.931545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411804, 36.681046, 22.967854>,  <38.403328, 37.413078, 22.693302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411804, 36.681046, 22.967854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714447, 36.860432, 23.158190>,  <38.896034, 36.968063, 23.272392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714447, 36.860432, 23.158190>,  <38.411804, 36.681046, 22.967854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714447, 36.860432, 23.158190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364441, -0.314982, 0.876339,
		0.542891, -0.836459, -0.074877,
		0.756606, 0.448468, 0.475840,
		38.941429, 36.994972, 23.300941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677204, 36.210838, 23.555208>,  <38.411804, 36.681046, 22.967854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677204, 36.210838, 23.555208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848347, 36.560219, 23.648174>,  <38.951031, 36.769848, 23.703955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848347, 36.560219, 23.648174>,  <38.677204, 36.210838, 23.555208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848347, 36.560219, 23.648174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177479, -0.170945, 0.969164,
		0.886251, -0.455911, 0.081880,
		0.427856, 0.873455, 0.232415,
		38.976704, 36.822254, 23.717899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915596, 36.044643, 24.124346>,  <38.677204, 36.210838, 23.555208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915596, 36.044643, 24.124346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924114, 36.443985, 24.145658>,  <38.929226, 36.683590, 24.158445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.924114, 36.443985, 24.145658>,  <38.915596, 36.044643, 24.124346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924114, 36.443985, 24.145658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415575, -0.039631, 0.908695,
		0.909310, -0.041495, 0.414046,
		0.021298, 0.998353, 0.053281,
		38.930504, 36.743492, 24.161642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193314, 36.220779, 24.842218>,  <38.915596, 36.044643, 24.124346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193314, 36.220779, 24.842218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001198, 36.529778, 24.676048>,  <38.885929, 36.715176, 24.576345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001198, 36.529778, 24.676048>,  <39.193314, 36.220779, 24.842218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001198, 36.529778, 24.676048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583154, 0.072554, 0.809116,
		0.655177, 0.630866, 0.415635,
		-0.480287, 0.772492, -0.415427,
		38.857113, 36.761524, 24.551420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310581, 36.791279, 25.215244>,  <39.193314, 36.220779, 24.842218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310581, 36.791279, 25.215244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969147, 36.831978, 25.010878>,  <38.764286, 36.856400, 24.888258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969147, 36.831978, 25.010878>,  <39.310581, 36.791279, 25.215244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969147, 36.831978, 25.010878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486817, 0.193362, 0.851834,
		0.185467, 0.975837, -0.115517,
		-0.853588, 0.101751, -0.510916,
		38.713070, 36.862503, 24.857603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962627, 37.243015, 25.631769>,  <39.310581, 36.791279, 25.215244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962627, 37.243015, 25.631769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.696320, 37.074718, 25.385281>,  <38.536533, 36.973740, 25.237387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.696320, 37.074718, 25.385281>,  <38.962627, 37.243015, 25.631769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696320, 37.074718, 25.385281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720465, 0.147628, 0.677596,
		-0.194119, 0.895089, -0.401414,
		-0.665768, -0.420739, -0.616223,
		38.496590, 36.948498, 25.200413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424683, 37.556980, 25.830002>,  <38.962627, 37.243015, 25.631769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424683, 37.556980, 25.830002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242176, 37.262802, 25.629623>,  <38.132671, 37.086296, 25.509398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.242176, 37.262802, 25.629623>,  <38.424683, 37.556980, 25.830002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242176, 37.262802, 25.629623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734495, -0.006538, 0.678582,
		-0.502335, 0.677553, -0.537197,
		-0.456263, -0.735444, -0.500944,
		38.105297, 37.042168, 25.479340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692017, 37.753525, 25.793997>,  <38.424683, 37.556980, 25.830002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692017, 37.753525, 25.793997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747635, 37.357452, 25.788166>,  <37.781006, 37.119808, 25.784668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.747635, 37.357452, 25.788166>,  <37.692017, 37.753525, 25.793997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747635, 37.357452, 25.788166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502391, -0.083217, 0.860627,
		-0.853388, -0.112341, -0.509027,
		0.139044, -0.990179, -0.014577,
		37.789349, 37.060398, 25.783792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021698, 37.507595, 25.653534>,  <37.692017, 37.753525, 25.793997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021698, 37.507595, 25.653534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259796, 37.247074, 25.841784>,  <37.402657, 37.090759, 25.954733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.259796, 37.247074, 25.841784>,  <37.021698, 37.507595, 25.653534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259796, 37.247074, 25.841784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646333, -0.040092, 0.762001,
		-0.477427, -0.757757, -0.444824,
		0.595245, -0.651304, 0.470622,
		37.438370, 37.051682, 25.982971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526752, 37.137074, 26.050388>,  <37.021698, 37.507595, 25.653534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526752, 37.137074, 26.050388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863823, 37.033825, 26.239397>,  <37.066063, 36.971878, 26.352802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863823, 37.033825, 26.239397>,  <36.526752, 37.137074, 26.050388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863823, 37.033825, 26.239397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537000, -0.339119, 0.772418,
		-0.039132, -0.904640, -0.424376,
		0.842674, -0.258116, 0.472521,
		37.116627, 36.956390, 26.381153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272469, 36.727432, 26.473269>,  <36.526752, 37.137074, 26.050388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272469, 36.727432, 26.473269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643135, 36.734879, 26.623434>,  <36.865536, 36.739346, 26.713533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643135, 36.734879, 26.623434>,  <36.272469, 36.727432, 26.473269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643135, 36.734879, 26.623434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349362, -0.325822, 0.878513,
		0.138670, -0.945248, -0.295427,
		0.926669, 0.018612, 0.375416,
		36.921135, 36.740463, 26.736059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.103413, 32.004089, 30.469725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.041939, 32.397896, 30.503445>,  <37.005054, 32.634182, 30.523678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.041939, 32.397896, 30.503445>,  <37.103413, 32.004089, 30.469725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041939, 32.397896, 30.503445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162585, -0.109346, 0.980617,
		0.974653, 0.136997, 0.176872,
		-0.153682, 0.984518, 0.084301,
		36.995834, 32.693253, 30.528734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473656, 32.246674, 31.133570>,  <37.103413, 32.004089, 30.469725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473656, 32.246674, 31.133570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175159, 32.501335, 31.055799>,  <36.996063, 32.654133, 31.009138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175159, 32.501335, 31.055799>,  <37.473656, 32.246674, 31.133570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175159, 32.501335, 31.055799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277699, -0.032289, 0.960125,
		0.604987, 0.770476, 0.200893,
		-0.746240, 0.636651, -0.194426,
		36.951286, 32.692329, 30.997471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499317, 32.732548, 31.745607>,  <37.473656, 32.246674, 31.133570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499317, 32.732548, 31.745607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.147301, 32.774349, 31.560305>,  <36.936092, 32.799431, 31.449123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.147301, 32.774349, 31.560305>,  <37.499317, 32.732548, 31.745607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147301, 32.774349, 31.560305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448678, 0.136670, 0.883181,
		0.155606, 0.985090, -0.073388,
		-0.880042, 0.104500, -0.463255,
		36.883289, 32.805698, 31.421328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313229, 33.407803, 31.980944>,  <37.499317, 32.732548, 31.745607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313229, 33.407803, 31.980944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980106, 33.215561, 31.871063>,  <36.780235, 33.100216, 31.805134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980106, 33.215561, 31.871063>,  <37.313229, 33.407803, 31.980944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980106, 33.215561, 31.871063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401337, 0.182411, 0.897583,
		-0.381271, 0.857758, -0.344796,
		-0.832803, -0.480601, -0.274702,
		36.730267, 33.071381, 31.788652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697124, 33.824219, 32.180897>,  <37.313229, 33.407803, 31.980944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697124, 33.824219, 32.180897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.556530, 33.452526, 32.135303>,  <36.472172, 33.229511, 32.107948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.556530, 33.452526, 32.135303>,  <36.697124, 33.824219, 32.180897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556530, 33.452526, 32.135303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544275, 0.103767, 0.832465,
		-0.761722, 0.354637, -0.542228,
		-0.351488, -0.929228, -0.113978,
		36.451084, 33.173759, 32.101109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984623, 33.849415, 32.299770>,  <36.697124, 33.824219, 32.180897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984623, 33.849415, 32.299770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.079704, 33.462624, 32.336536>,  <36.136753, 33.230549, 32.358597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.079704, 33.462624, 32.336536>,  <35.984623, 33.849415, 32.299770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079704, 33.462624, 32.336536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529543, -0.049676, 0.846828,
		-0.814298, -0.249970, -0.523865,
		0.237705, -0.966979, 0.091919,
		36.151016, 33.172531, 32.364113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410561, 33.542301, 32.493580>,  <35.984623, 33.849415, 32.299770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410561, 33.542301, 32.493580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682827, 33.268223, 32.597279>,  <35.846188, 33.103775, 32.659500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.682827, 33.268223, 32.597279>,  <35.410561, 33.542301, 32.493580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682827, 33.268223, 32.597279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471702, -0.139138, 0.870711,
		-0.560533, -0.714949, -0.417912,
		0.680661, -0.685193, 0.259251,
		35.887024, 33.062664, 32.675053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074963, 33.053905, 32.845917>,  <35.410561, 33.542301, 32.493580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074963, 33.053905, 32.845917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.448364, 32.973408, 32.964622>,  <35.672405, 32.925110, 33.035847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.448364, 32.973408, 32.964622>,  <35.074963, 33.053905, 32.845917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448364, 32.973408, 32.964622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310053, -0.037344, 0.949986,
		-0.180099, -0.978828, -0.097258,
		0.933505, -0.201247, 0.296763,
		35.728416, 32.913033, 33.053650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969013, 32.636200, 33.410187>,  <35.074963, 33.053905, 32.845917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969013, 32.636200, 33.410187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.352333, 32.745224, 33.444523>,  <35.582325, 32.810638, 33.465126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.352333, 32.745224, 33.444523>,  <34.969013, 32.636200, 33.410187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352333, 32.745224, 33.444523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004385, -0.286346, 0.958116,
		0.285722, -0.918541, -0.273211,
		0.958302, 0.272557, 0.085843,
		35.639824, 32.826992, 33.470276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179237, 32.152634, 33.800255>,  <34.969013, 32.636200, 33.410187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179237, 32.152634, 33.800255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.459270, 32.432598, 33.856819>,  <35.627293, 32.600578, 33.890759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.459270, 32.432598, 33.856819>,  <35.179237, 32.152634, 33.800255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459270, 32.432598, 33.856819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016935, -0.214258, 0.976630,
		0.713857, -0.681331, -0.161853,
		0.700087, 0.699915, 0.141412,
		35.669296, 32.642574, 33.899242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796619, 31.815323, 34.148792>,  <35.179237, 32.152634, 33.800255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796619, 31.815323, 34.148792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769932, 32.205978, 34.230499>,  <35.753922, 32.440372, 34.279522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769932, 32.205978, 34.230499>,  <35.796619, 31.815323, 34.148792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769932, 32.205978, 34.230499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204822, -0.186959, 0.960778,
		0.976523, 0.105937, -0.187564,
		-0.066716, 0.976639, 0.204268,
		35.749916, 32.498970, 34.291779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340298, 31.875721, 34.628220>,  <35.796619, 31.815323, 34.148792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340298, 31.875721, 34.628220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.083065, 32.180122, 34.662441>,  <35.928726, 32.362762, 34.682976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.083065, 32.180122, 34.662441>,  <36.340298, 31.875721, 34.628220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083065, 32.180122, 34.662441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213763, 0.071100, 0.974295,
		0.735359, 0.644839, -0.208397,
		-0.643081, 0.761004, 0.085558,
		35.890141, 32.408424, 34.688110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692455, 32.244740, 35.005497>,  <36.340298, 31.875721, 34.628220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692455, 32.244740, 35.005497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.318020, 32.379086, 35.047333>,  <36.093361, 32.459694, 35.072433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.318020, 32.379086, 35.047333>,  <36.692455, 32.244740, 35.005497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318020, 32.379086, 35.047333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036702, -0.202458, 0.978603,
		0.349854, 0.919894, 0.177191,
		-0.936085, 0.335865, 0.104592,
		36.037193, 32.479847, 35.078709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082981, 31.826582, 35.480949>,  <36.692455, 32.244740, 35.005497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082981, 31.826582, 35.480949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463985, 31.853104, 35.599831>,  <37.692589, 31.869017, 35.671158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463985, 31.853104, 35.599831>,  <37.082981, 31.826582, 35.480949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463985, 31.853104, 35.599831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198545, 0.604791, -0.771238,
		-0.230882, 0.793619, 0.562905,
		0.952509, 0.066303, 0.297204,
		37.749737, 31.872995, 35.688992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371582, 32.495495, 35.281395>,  <37.082981, 31.826582, 35.480949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371582, 32.495495, 35.281395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.683174, 32.259571, 35.366547>,  <37.870129, 32.118015, 35.417637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.683174, 32.259571, 35.366547>,  <37.371582, 32.495495, 35.281395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683174, 32.259571, 35.366547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475982, 0.335172, -0.813081,
		0.408214, 0.734698, 0.541831,
		0.778975, -0.589813, 0.212881,
		37.916866, 32.082626, 35.430412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944447, 32.890678, 35.174133>,  <37.371582, 32.495495, 35.281395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944447, 32.890678, 35.174133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079845, 32.514900, 35.152733>,  <38.161083, 32.289433, 35.139893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.079845, 32.514900, 35.152733>,  <37.944447, 32.890678, 35.174133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079845, 32.514900, 35.152733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571842, 0.250528, -0.781174,
		0.747273, 0.233833, 0.622017,
		0.338496, -0.939446, -0.053497,
		38.181393, 32.233067, 35.136684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698475, 32.855442, 35.319633>,  <37.944447, 32.890678, 35.174133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698475, 32.855442, 35.319633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601631, 32.529743, 35.108582>,  <38.543526, 32.334324, 34.981953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601631, 32.529743, 35.108582>,  <38.698475, 32.855442, 35.319633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601631, 32.529743, 35.108582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413785, 0.405223, -0.815215,
		0.877591, -0.415693, 0.238815,
		-0.242106, -0.814244, -0.527628,
		38.528999, 32.285469, 34.950294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315979, 32.601910, 35.058323>,  <38.698475, 32.855442, 35.319633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315979, 32.601910, 35.058323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.065670, 32.404907, 34.816383>,  <38.915485, 32.286705, 34.671219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.065670, 32.404907, 34.816383>,  <39.315979, 32.601910, 35.058323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065670, 32.404907, 34.816383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459103, 0.394332, -0.796070,
		0.630585, -0.775845, -0.020648,
		-0.625769, -0.492510, -0.604852,
		38.877941, 32.257153, 34.634926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767975, 32.205185, 34.573929>,  <39.315979, 32.601910, 35.058323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767975, 32.205185, 34.573929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406025, 32.233669, 34.406059>,  <39.188854, 32.250759, 34.305340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406025, 32.233669, 34.406059>,  <39.767975, 32.205185, 34.573929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406025, 32.233669, 34.406059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417213, 0.343911, -0.841224,
		0.084426, -0.936298, -0.340908,
		-0.904879, 0.071210, -0.419670,
		39.134560, 32.255032, 34.280159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823475, 31.874763, 33.846825>,  <39.767975, 32.205185, 34.573929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823475, 31.874763, 33.846825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517555, 32.132092, 33.860790>,  <39.334003, 32.286488, 33.869171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517555, 32.132092, 33.860790>,  <39.823475, 31.874763, 33.846825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517555, 32.132092, 33.860790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233327, 0.327087, -0.915736,
		-0.600534, -0.692207, -0.400261,
		-0.764799, 0.643322, 0.034916,
		39.288116, 32.325089, 33.871265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511013, 31.858334, 33.186871>,  <39.823475, 31.874763, 33.846825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511013, 31.858334, 33.186871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339607, 32.197010, 33.313042>,  <39.236763, 32.400215, 33.388744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.339607, 32.197010, 33.313042>,  <39.511013, 31.858334, 33.186871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339607, 32.197010, 33.313042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113418, 0.396747, -0.910894,
		-0.896389, -0.354555, -0.266041,
		-0.428513, 0.846690, 0.315427,
		39.211052, 32.451015, 33.407669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933693, 32.119339, 32.711777>,  <39.511013, 31.858334, 33.186871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933693, 32.119339, 32.711777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067490, 32.439548, 32.910679>,  <39.147770, 32.631676, 33.030022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067490, 32.439548, 32.910679>,  <38.933693, 32.119339, 32.711777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067490, 32.439548, 32.910679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052890, 0.510876, -0.858026,
		-0.940912, 0.313306, 0.128546,
		0.334496, 0.800528, 0.497259,
		39.167839, 32.679707, 33.059856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524857, 32.727371, 32.417221>,  <38.933693, 32.119339, 32.711777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524857, 32.727371, 32.417221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.849865, 32.867859, 32.603321>,  <39.044872, 32.952152, 32.714981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.849865, 32.867859, 32.603321>,  <38.524857, 32.727371, 32.417221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849865, 32.867859, 32.603321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222537, 0.550783, -0.804435,
		-0.538779, 0.757157, 0.369366,
		0.812523, 0.351215, 0.465246,
		39.093620, 32.973225, 32.742893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565628, 33.461182, 32.248314>,  <38.524857, 32.727371, 32.417221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565628, 33.461182, 32.248314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935345, 33.388916, 32.382805>,  <39.157173, 33.345558, 32.463501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.935345, 33.388916, 32.382805>,  <38.565628, 33.461182, 32.248314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935345, 33.388916, 32.382805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375887, 0.583886, -0.719574,
		-0.066322, 0.791479, 0.607588,
		0.924289, -0.180661, 0.336231,
		39.212631, 33.334717, 32.483673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833481, 34.072929, 32.168312>,  <38.565628, 33.461182, 32.248314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833481, 34.072929, 32.168312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.143414, 33.822102, 32.200363>,  <39.329372, 33.671604, 32.219593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.143414, 33.822102, 32.200363>,  <38.833481, 34.072929, 32.168312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143414, 33.822102, 32.200363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494438, 0.522154, -0.694900,
		0.393908, 0.578051, 0.714628,
		0.774834, -0.627066, 0.080130,
		39.375862, 33.633984, 32.224403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412247, 34.520760, 32.320564>,  <38.833481, 34.072929, 32.168312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412247, 34.520760, 32.320564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.535824, 34.171432, 32.169903>,  <39.609970, 33.961834, 32.079506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.535824, 34.171432, 32.169903>,  <39.412247, 34.520760, 32.320564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535824, 34.171432, 32.169903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483893, 0.485268, -0.728260,
		0.818782, 0.042728, 0.572512,
		0.308939, -0.873321, -0.376653,
		39.628506, 33.909435, 32.056908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984638, 34.721626, 32.031811>,  <39.412247, 34.520760, 32.320564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984638, 34.721626, 32.031811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915039, 34.370117, 31.854053>,  <39.873280, 34.159214, 31.747398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915039, 34.370117, 31.854053>,  <39.984638, 34.721626, 32.031811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915039, 34.370117, 31.854053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507243, 0.306823, -0.805335,
		0.844055, -0.365545, 0.392363,
		-0.174000, -0.878770, -0.444395,
		39.862839, 34.106487, 31.720736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667423, 34.496754, 31.685003>,  <39.984638, 34.721626, 32.031811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667423, 34.496754, 31.685003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386402, 34.277622, 31.503319>,  <40.217789, 34.146145, 31.394308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386402, 34.277622, 31.503319>,  <40.667423, 34.496754, 31.685003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386402, 34.277622, 31.503319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412775, 0.206218, -0.887181,
		0.579689, -0.810777, 0.081252,
		-0.702550, -0.547828, -0.454211,
		40.175636, 34.113274, 31.367056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276539, 34.714718, 31.723358>,  <40.667423, 34.496754, 31.685003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276539, 34.714718, 31.723358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.460587, 35.042721, 31.859522>,  <41.571014, 35.239521, 31.941221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.460587, 35.042721, 31.859522>,  <41.276539, 34.714718, 31.723358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460587, 35.042721, 31.859522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283579, -0.227595, 0.931549,
		0.841352, -0.525157, 0.127816,
		0.460119, 0.820006, 0.340411,
		41.598621, 35.288723, 31.961645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709023, 34.531910, 32.328125>,  <41.276539, 34.714718, 31.723358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709023, 34.531910, 32.328125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.644520, 34.922901, 32.382580>,  <41.605820, 35.157497, 32.415253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.644520, 34.922901, 32.382580>,  <41.709023, 34.531910, 32.328125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644520, 34.922901, 32.382580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376204, -0.188411, 0.907178,
		0.912396, 0.095072, 0.398113,
		-0.161256, 0.977478, 0.136139,
		41.596142, 35.216145, 32.423420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093597, 34.793755, 32.958584>,  <41.709023, 34.531910, 32.328125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093597, 34.793755, 32.958584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796909, 35.060623, 32.931084>,  <41.618896, 35.220745, 32.914581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796909, 35.060623, 32.931084>,  <42.093597, 34.793755, 32.958584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796909, 35.060623, 32.931084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221014, -0.146345, 0.964228,
		0.633245, 0.730386, 0.256002,
		-0.741723, 0.667173, -0.068753,
		41.574394, 35.260777, 32.910458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146122, 35.328854, 33.530594>,  <42.093597, 34.793755, 32.958584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146122, 35.328854, 33.530594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765713, 35.323582, 33.407055>,  <41.537468, 35.320419, 33.332932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.765713, 35.323582, 33.407055>,  <42.146122, 35.328854, 33.530594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765713, 35.323582, 33.407055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306816, 0.162334, 0.937823,
		0.037773, 0.986648, -0.158428,
		-0.951019, -0.013184, -0.308851,
		41.480408, 35.319626, 33.314400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894451, 35.865398, 33.878872>,  <42.146122, 35.328854, 33.530594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894451, 35.865398, 33.878872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562569, 35.678097, 33.757336>,  <41.363438, 35.565716, 33.684414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562569, 35.678097, 33.757336>,  <41.894451, 35.865398, 33.878872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562569, 35.678097, 33.757336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444541, 0.225101, 0.867014,
		-0.337592, 0.854437, -0.394929,
		-0.829708, -0.468259, -0.303840,
		41.313656, 35.537621, 33.666183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414482, 36.250519, 34.220612>,  <41.894451, 35.865398, 33.878872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414482, 36.250519, 34.220612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210102, 35.922447, 34.117661>,  <41.087475, 35.725605, 34.055889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210102, 35.922447, 34.117661>,  <41.414482, 36.250519, 34.220612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210102, 35.922447, 34.117661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530828, 0.065543, 0.844941,
		-0.676133, 0.568343, -0.468862,
		-0.510947, -0.820177, -0.257376,
		41.056820, 35.676395, 34.040447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695450, 36.453114, 34.255535>,  <41.414482, 36.250519, 34.220612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695450, 36.453114, 34.255535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720108, 36.055721, 34.293907>,  <40.734905, 35.817287, 34.316929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.720108, 36.055721, 34.293907>,  <40.695450, 36.453114, 34.255535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720108, 36.055721, 34.293907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523188, 0.049680, 0.850768,
		-0.849984, -0.102636, -0.516713,
		0.061649, -0.993478, 0.095926,
		40.738602, 35.757679, 34.322685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005238, 36.238972, 34.439430>,  <40.695450, 36.453114, 34.255535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005238, 36.238972, 34.439430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248550, 35.948170, 34.566841>,  <40.394539, 35.773689, 34.643288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.248550, 35.948170, 34.566841>,  <40.005238, 36.238972, 34.439430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248550, 35.948170, 34.566841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436637, 0.028639, 0.899182,
		-0.662832, -0.686035, -0.300017,
		0.608278, -0.727005, 0.318531,
		40.431034, 35.730068, 34.662399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648552, 35.883450, 34.918850>,  <40.005238, 36.238972, 34.439430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648552, 35.883450, 34.918850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.004848, 35.725750, 35.009315>,  <40.218624, 35.631130, 35.063595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.004848, 35.725750, 35.009315>,  <39.648552, 35.883450, 34.918850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004848, 35.725750, 35.009315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258796, -0.030865, 0.965439,
		-0.373646, -0.918483, -0.129523,
		0.890737, -0.394253, 0.226167,
		40.272068, 35.607475, 35.077168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507355, 35.581432, 35.509193>,  <39.648552, 35.883450, 34.918850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507355, 35.581432, 35.509193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.907207, 35.586494, 35.518822>,  <40.147118, 35.589531, 35.524597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.907207, 35.586494, 35.518822>,  <39.507355, 35.581432, 35.509193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907207, 35.586494, 35.518822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025134, 0.091790, 0.995461,
		0.010383, -0.995698, 0.092074,
		0.999630, 0.012650, 0.024073,
		40.207096, 35.590290, 35.526043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765400, 35.164249, 36.130325>,  <39.507355, 35.581432, 35.509193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765400, 35.164249, 36.130325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034248, 35.446136, 36.039433>,  <40.195557, 35.615269, 35.984898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034248, 35.446136, 36.039433>,  <39.765400, 35.164249, 36.130325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034248, 35.446136, 36.039433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102315, 0.215548, 0.971118,
		0.733343, -0.675953, 0.072770,
		0.672116, 0.704717, -0.227230,
		40.235882, 35.657551, 35.971264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117512, 35.125069, 36.736938>,  <39.765400, 35.164249, 36.130325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117512, 35.125069, 36.736938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256546, 35.462849, 36.573921>,  <40.339966, 35.665516, 36.476112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256546, 35.462849, 36.573921>,  <40.117512, 35.125069, 36.736938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256546, 35.462849, 36.573921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420155, 0.248296, 0.872822,
		0.838244, -0.474613, -0.268494,
		0.347587, 0.844447, -0.407544,
		40.360821, 35.716183, 36.451656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.009506, 35.887657, 28.628744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845432, 36.243679, 28.708296>,  <42.746990, 36.457291, 28.756027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845432, 36.243679, 28.708296>,  <43.009506, 35.887657, 28.628744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.845432, 36.243679, 28.708296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102627, -0.261727, 0.959670,
		0.906211, 0.373230, 0.198700,
		-0.410182, 0.890055, 0.198877,
		42.722378, 36.510696, 28.767960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186214, 36.000454, 29.213938>,  <43.009506, 35.887657, 28.628744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186214, 36.000454, 29.213938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892254, 36.271690, 29.218260>,  <42.715878, 36.434433, 29.220854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892254, 36.271690, 29.218260>,  <43.186214, 36.000454, 29.213938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892254, 36.271690, 29.218260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209808, -0.242481, 0.947198,
		0.644907, 0.693827, 0.320468,
		-0.734899, 0.678091, 0.010806,
		42.671783, 36.475117, 29.221502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282398, 36.200569, 29.913918>,  <43.186214, 36.000454, 29.213938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282398, 36.200569, 29.913918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922371, 36.301479, 29.771797>,  <42.706356, 36.362026, 29.686525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922371, 36.301479, 29.771797>,  <43.282398, 36.200569, 29.913918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922371, 36.301479, 29.771797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384294, -0.075161, 0.920146,
		0.205426, 0.964732, 0.164598,
		-0.900066, 0.252276, -0.355300,
		42.652351, 36.377163, 29.665207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016708, 36.704296, 30.420193>,  <43.282398, 36.200569, 29.913918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016708, 36.704296, 30.420193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701614, 36.593330, 30.200186>,  <42.512558, 36.526752, 30.068182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701614, 36.593330, 30.200186>,  <43.016708, 36.704296, 30.420193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701614, 36.593330, 30.200186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565029, -0.030309, 0.824514,
		-0.245401, 0.960272, -0.132870,
		-0.787731, -0.277412, -0.550020,
		42.465294, 36.510105, 30.035179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410103, 37.078739, 30.684183>,  <43.016708, 36.704296, 30.420193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410103, 37.078739, 30.684183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272808, 36.745758, 30.510193>,  <42.190430, 36.545967, 30.405800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272808, 36.745758, 30.510193>,  <42.410103, 37.078739, 30.684183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272808, 36.745758, 30.510193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373026, -0.304200, 0.876535,
		-0.861997, 0.463118, -0.206115,
		-0.343239, -0.832457, -0.434974,
		42.169838, 36.496021, 30.379702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679535, 37.002010, 30.933100>,  <42.410103, 37.078739, 30.684183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679535, 37.002010, 30.933100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766994, 36.637344, 30.793922>,  <41.819469, 36.418545, 30.710415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766994, 36.637344, 30.793922>,  <41.679535, 37.002010, 30.933100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766994, 36.637344, 30.793922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501109, -0.410869, 0.761628,
		-0.837306, 0.007827, -0.546679,
		0.218652, -0.911661, -0.347945,
		41.832588, 36.363846, 30.689539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085091, 36.623352, 31.074726>,  <41.679535, 37.002010, 30.933100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085091, 36.623352, 31.074726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387104, 36.363979, 31.035830>,  <41.568314, 36.208355, 31.012491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387104, 36.363979, 31.035830>,  <41.085091, 36.623352, 31.074726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387104, 36.363979, 31.035830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294053, -0.467419, 0.833698,
		-0.586053, -0.600874, -0.543592,
		0.755032, -0.648436, -0.097244,
		41.613613, 36.169449, 31.006657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857391, 35.949154, 31.184404>,  <41.085091, 36.623352, 31.074726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857391, 35.949154, 31.184404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249325, 35.900024, 31.247442>,  <41.484486, 35.870544, 31.285265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249325, 35.900024, 31.247442>,  <40.857391, 35.949154, 31.184404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249325, 35.900024, 31.247442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198454, -0.506661, 0.838994,
		-0.023205, -0.853351, -0.520820,
		0.979835, -0.122827, 0.157594,
		41.543274, 35.863174, 31.294720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982101, 35.256638, 31.347391>,  <40.857391, 35.949154, 31.184404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982101, 35.256638, 31.347391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290394, 35.469891, 31.486956>,  <41.475368, 35.597843, 31.570694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290394, 35.469891, 31.486956>,  <40.982101, 35.256638, 31.347391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290394, 35.469891, 31.486956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027546, -0.574969, 0.817711,
		0.636564, -0.620625, -0.457833,
		0.770732, 0.533137, 0.348909,
		41.521614, 35.629833, 31.591629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045406, 34.476765, 31.024837>,  <40.982101, 35.256638, 31.347391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045406, 34.476765, 31.024837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669735, 34.354679, 30.961859>,  <40.444332, 34.281429, 30.924072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669735, 34.354679, 30.961859>,  <41.045406, 34.476765, 31.024837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669735, 34.354679, 30.961859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151696, 0.042625, -0.987508,
		0.308113, -0.951329, 0.006267,
		-0.939178, -0.305214, -0.157447,
		40.387981, 34.263115, 30.914625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114872, 33.968689, 30.473660>,  <41.045406, 34.476765, 31.024837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114872, 33.968689, 30.473660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730259, 34.078331, 30.466433>,  <40.499493, 34.144115, 30.462097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730259, 34.078331, 30.466433>,  <41.114872, 33.968689, 30.473660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730259, 34.078331, 30.466433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002617, -0.074901, -0.997188,
		-0.274689, -0.958778, 0.072737,
		-0.961530, 0.274106, -0.018065,
		40.441799, 34.160564, 30.461014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786877, 33.545444, 30.077560>,  <41.114872, 33.968689, 30.473660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786877, 33.545444, 30.077560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530479, 33.852463, 30.078409>,  <40.376640, 34.036674, 30.078918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530479, 33.852463, 30.078409>,  <40.786877, 33.545444, 30.077560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530479, 33.852463, 30.078409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085148, -0.068359, -0.994021,
		-0.762807, -0.637343, 0.109173,
		-0.640995, 0.767542, 0.002124,
		40.338181, 34.082726, 30.079046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106682, 33.268269, 29.780834>,  <40.786877, 33.545444, 30.077560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106682, 33.268269, 29.780834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118015, 33.666328, 29.743145>,  <40.124813, 33.905163, 29.720531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118015, 33.666328, 29.743145>,  <40.106682, 33.268269, 29.780834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118015, 33.666328, 29.743145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248115, -0.084311, -0.965055,
		-0.968316, 0.050719, 0.244523,
		0.028331, 0.995148, -0.094223,
		40.126514, 33.964874, 29.714878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574574, 33.488449, 29.368256>,  <40.106682, 33.268269, 29.780834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574574, 33.488449, 29.368256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836548, 33.789715, 29.343601>,  <39.993732, 33.970474, 29.328808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836548, 33.789715, 29.343601>,  <39.574574, 33.488449, 29.368256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836548, 33.789715, 29.343601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215549, 0.108015, -0.970500,
		-0.724293, 0.648899, 0.233088,
		0.654934, 0.753169, -0.061635,
		40.033028, 34.015667, 29.325111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242447, 34.083694, 29.005503>,  <39.574574, 33.488449, 29.368256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242447, 34.083694, 29.005503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638546, 34.134281, 28.982134>,  <39.876205, 34.164635, 28.968113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638546, 34.134281, 28.982134>,  <39.242447, 34.083694, 29.005503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638546, 34.134281, 28.982134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106437, 0.416264, -0.902993,
		-0.089883, 0.900406, 0.425665,
		0.990249, 0.126470, -0.058422,
		39.935619, 34.172222, 28.964607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250965, 34.613941, 28.617516>,  <39.242447, 34.083694, 29.005503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250965, 34.613941, 28.617516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619228, 34.460926, 28.586412>,  <39.840187, 34.369118, 28.567751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619228, 34.460926, 28.586412>,  <39.250965, 34.613941, 28.617516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619228, 34.460926, 28.586412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006975, 0.183040, -0.983081,
		0.390300, 0.905627, 0.165849,
		0.920661, -0.382540, -0.077757,
		39.895428, 34.346165, 28.563086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559635, 35.076828, 28.146730>,  <39.250965, 34.613941, 28.617516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559635, 35.076828, 28.146730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772797, 34.738422, 28.140179>,  <39.900692, 34.535378, 28.136248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772797, 34.738422, 28.140179>,  <39.559635, 35.076828, 28.146730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772797, 34.738422, 28.140179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242919, 0.171499, -0.954766,
		0.810557, 0.504820, 0.296906,
		0.532904, -0.846017, -0.016379,
		39.932667, 34.484619, 28.135265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130512, 35.321220, 27.930140>,  <39.559635, 35.076828, 28.146730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130512, 35.321220, 27.930140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138237, 34.925571, 27.871807>,  <40.142872, 34.688183, 27.836807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138237, 34.925571, 27.871807>,  <40.130512, 35.321220, 27.930140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138237, 34.925571, 27.871807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259599, 0.145818, -0.954644,
		0.965523, -0.019418, 0.259591,
		0.019316, -0.989121, -0.145832,
		40.144032, 34.628834, 27.828058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838566, 35.252697, 27.624464>,  <40.130512, 35.321220, 27.930140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838566, 35.252697, 27.624464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606579, 34.937218, 27.542894>,  <40.467384, 34.747929, 27.493952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606579, 34.937218, 27.542894>,  <40.838566, 35.252697, 27.624464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606579, 34.937218, 27.542894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317687, 0.011533, -0.948125,
		0.750140, -0.614668, 0.243872,
		-0.579970, -0.788702, -0.203923,
		40.432587, 34.700607, 27.481718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241367, 34.757259, 27.403854>,  <40.838566, 35.252697, 27.624464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241367, 34.757259, 27.403854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889183, 34.631184, 27.262180>,  <40.677872, 34.555538, 27.177176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889183, 34.631184, 27.262180>,  <41.241367, 34.757259, 27.403854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889183, 34.631184, 27.262180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420821, -0.175390, -0.890027,
		0.218405, -0.932682, 0.287062,
		-0.880460, -0.315188, -0.354185,
		40.625046, 34.536629, 27.155924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395290, 34.210052, 26.965477>,  <41.241367, 34.757259, 27.403854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395290, 34.210052, 26.965477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025867, 34.304737, 26.844810>,  <40.804214, 34.361549, 26.772411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025867, 34.304737, 26.844810>,  <41.395290, 34.210052, 26.965477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025867, 34.304737, 26.844810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293193, -0.071091, -0.953406,
		-0.247130, -0.968975, -0.003747,
		-0.923561, 0.236714, -0.301666,
		40.748798, 34.375751, 26.754311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255032, 33.639614, 26.527376>,  <41.395290, 34.210052, 26.965477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255032, 33.639614, 26.527376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041222, 33.957733, 26.412987>,  <40.912937, 34.148605, 26.344353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041222, 33.957733, 26.412987>,  <41.255032, 33.639614, 26.527376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041222, 33.957733, 26.412987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300690, -0.137275, -0.943791,
		-0.789853, -0.590470, -0.165762,
		-0.534525, 0.795299, -0.285975,
		40.880863, 34.196323, 26.327194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925777, 33.410378, 25.836979>,  <41.255032, 33.639614, 26.527376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925777, 33.410378, 25.836979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882706, 33.807369, 25.860289>,  <40.856861, 34.045563, 25.874275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882706, 33.807369, 25.860289>,  <40.925777, 33.410378, 25.836979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882706, 33.807369, 25.860289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180198, 0.077128, -0.980602,
		-0.977719, -0.095089, -0.187147,
		-0.107679, 0.992476, 0.058275,
		40.850403, 34.105114, 25.877771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.544174, 39.179161, 26.436018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780476, 38.885056, 26.568920>,  <39.922256, 38.708591, 26.648663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.780476, 38.885056, 26.568920>,  <39.544174, 39.179161, 26.436018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780476, 38.885056, 26.568920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332469, 0.153384, 0.930558,
		-0.735169, -0.660197, -0.153841,
		0.590754, -0.735265, 0.332258,
		39.957703, 38.664474, 26.668598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182930, 38.997864, 26.974464>,  <39.544174, 39.179161, 26.436018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182930, 38.997864, 26.974464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509068, 38.772114, 27.026159>,  <39.704750, 38.636665, 27.057177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509068, 38.772114, 27.026159>,  <39.182930, 38.997864, 26.974464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509068, 38.772114, 27.026159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201165, -0.066835, 0.977275,
		-0.542909, -0.822811, -0.168025,
		0.815342, -0.564371, 0.129235,
		39.753670, 38.602802, 27.064930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063831, 38.390907, 27.361904>,  <39.182930, 38.997864, 26.974464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063831, 38.390907, 27.361904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.444328, 38.492996, 27.431175>,  <39.672626, 38.554249, 27.472738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.444328, 38.492996, 27.431175>,  <39.063831, 38.390907, 27.361904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444328, 38.492996, 27.431175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165486, -0.051478, 0.984868,
		0.260277, -0.965510, -0.006732,
		0.951247, 0.255225, 0.173177,
		39.729702, 38.569565, 27.483128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344109, 37.760109, 27.615789>,  <39.063831, 38.390907, 27.361904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344109, 37.760109, 27.615789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.551201, 38.081696, 27.732811>,  <39.675457, 38.274647, 27.803024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.551201, 38.081696, 27.732811>,  <39.344109, 37.760109, 27.615789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551201, 38.081696, 27.732811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336889, -0.122746, 0.933509,
		0.786420, -0.581869, 0.207297,
		0.517735, 0.803966, 0.292556,
		39.706520, 38.322884, 27.820578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811489, 37.503101, 28.265553>,  <39.344109, 37.760109, 27.615789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811489, 37.503101, 28.265553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776825, 37.901524, 28.257925>,  <39.756027, 38.140575, 28.253349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776825, 37.901524, 28.257925>,  <39.811489, 37.503101, 28.265553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776825, 37.901524, 28.257925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050472, 0.014725, 0.998617,
		0.994959, 0.087500, 0.048997,
		-0.086658, 0.996056, -0.019067,
		39.750828, 38.200340, 28.252205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186264, 37.631443, 28.867249>,  <39.811489, 37.503101, 28.265553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186264, 37.631443, 28.867249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.964211, 37.951546, 28.776539>,  <39.830978, 38.143608, 28.722113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.964211, 37.951546, 28.776539>,  <40.186264, 37.631443, 28.867249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964211, 37.951546, 28.776539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365263, 0.010398, 0.930846,
		0.747270, 0.599573, 0.286530,
		-0.555131, 0.800252, -0.226772,
		39.797672, 38.191620, 28.708508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331581, 38.049698, 29.400885>,  <40.186264, 37.631443, 28.867249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331581, 38.049698, 29.400885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992561, 38.181355, 29.234352>,  <39.789150, 38.260349, 29.134432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992561, 38.181355, 29.234352>,  <40.331581, 38.049698, 29.400885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992561, 38.181355, 29.234352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412421, 0.085268, 0.906994,
		0.334028, 0.940424, 0.063476,
		-0.847546, 0.329140, -0.416332,
		39.738297, 38.280098, 29.109453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115025, 38.623161, 29.833996>,  <40.331581, 38.049698, 29.400885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115025, 38.623161, 29.833996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793526, 38.509857, 29.624710>,  <39.600624, 38.441875, 29.499138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793526, 38.509857, 29.624710>,  <40.115025, 38.623161, 29.833996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793526, 38.509857, 29.624710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539484, -0.023857, 0.841658,
		-0.250888, 0.958747, -0.133638,
		-0.803749, -0.283257, -0.523214,
		39.552402, 38.424881, 29.467747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566620, 38.994293, 30.195692>,  <40.115025, 38.623161, 29.833996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566620, 38.994293, 30.195692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356277, 38.719620, 29.994919>,  <39.230072, 38.554813, 29.874454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.356277, 38.719620, 29.994919>,  <39.566620, 38.994293, 30.195692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356277, 38.719620, 29.994919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647434, -0.059574, 0.759789,
		-0.551639, 0.724509, -0.413257,
		-0.525855, -0.686686, -0.501935,
		39.198521, 38.513615, 29.844337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897358, 39.211658, 30.121666>,  <39.566620, 38.994293, 30.195692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897358, 39.211658, 30.121666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.839779, 38.821644, 30.054037>,  <38.805229, 38.587635, 30.013460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.839779, 38.821644, 30.054037>,  <38.897358, 39.211658, 30.121666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839779, 38.821644, 30.054037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628375, -0.041921, 0.776780,
		-0.764476, 0.218058, -0.606652,
		-0.143952, -0.975035, -0.169070,
		38.796593, 38.529133, 30.003317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176006, 39.025833, 30.097414>,  <38.897358, 39.211658, 30.121666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176006, 39.025833, 30.097414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350578, 38.678478, 30.191582>,  <38.455322, 38.470066, 30.248083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350578, 38.678478, 30.191582>,  <38.176006, 39.025833, 30.097414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350578, 38.678478, 30.191582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526788, -0.034509, 0.849296,
		-0.729397, -0.494677, -0.472519,
		0.436434, -0.868391, 0.235419,
		38.481510, 38.417961, 30.262207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653927, 38.695641, 30.406103>,  <38.176006, 39.025833, 30.097414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653927, 38.695641, 30.406103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.948856, 38.452629, 30.524261>,  <38.125813, 38.306820, 30.595156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.948856, 38.452629, 30.524261>,  <37.653927, 38.695641, 30.406103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948856, 38.452629, 30.524261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495711, -0.189510, 0.847559,
		-0.458939, -0.771356, -0.440891,
		0.737323, -0.607532, 0.295396,
		38.170052, 38.270370, 30.612881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399246, 38.020947, 30.505228>,  <37.653927, 38.695641, 30.406103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399246, 38.020947, 30.505228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721840, 38.062424, 30.738068>,  <37.915394, 38.087311, 30.877771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.721840, 38.062424, 30.738068>,  <37.399246, 38.020947, 30.505228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721840, 38.062424, 30.738068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528511, -0.314948, 0.788342,
		0.265076, -0.943428, -0.199197,
		0.806480, 0.103693, 0.582097,
		37.963783, 38.093533, 30.912697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321354, 37.492676, 31.078676>,  <37.399246, 38.020947, 30.505228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321354, 37.492676, 31.078676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589180, 37.753628, 31.220709>,  <37.749874, 37.910198, 31.305927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589180, 37.753628, 31.220709>,  <37.321354, 37.492676, 31.078676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589180, 37.753628, 31.220709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419630, -0.062201, 0.905562,
		0.612860, -0.755332, 0.232112,
		0.669562, 0.652384, 0.355080,
		37.790051, 37.949345, 31.327232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321316, 36.690716, 31.019245>,  <37.321354, 37.492676, 31.078676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321316, 36.690716, 31.019245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.954529, 36.603836, 30.885380>,  <36.734459, 36.551708, 30.805059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.954529, 36.603836, 30.885380>,  <37.321316, 36.690716, 31.019245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954529, 36.603836, 30.885380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278531, 0.252075, -0.926757,
		0.285657, -0.943017, -0.170645,
		-0.916963, -0.217205, -0.334666,
		36.679440, 36.538677, 30.784981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412807, 36.206673, 30.447342>,  <37.321316, 36.690716, 31.019245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412807, 36.206673, 30.447342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065659, 36.398575, 30.395761>,  <36.857368, 36.513718, 30.364813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.065659, 36.398575, 30.395761>,  <37.412807, 36.206673, 30.447342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065659, 36.398575, 30.395761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209129, 0.117372, -0.970819,
		-0.450624, -0.869514, -0.202195,
		-0.867872, 0.479759, -0.128950,
		36.805298, 36.542503, 30.357077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111454, 35.861195, 29.936794>,  <37.412807, 36.206673, 30.447342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111454, 35.861195, 29.936794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885757, 36.191109, 29.922037>,  <36.750340, 36.389057, 29.913183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.885757, 36.191109, 29.922037>,  <37.111454, 35.861195, 29.936794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885757, 36.191109, 29.922037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075368, 0.006958, -0.997131,
		-0.822161, -0.565405, -0.066088,
		-0.564243, 0.824784, -0.036893,
		36.716484, 36.438545, 29.910969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421150, 35.754425, 29.505384>,  <37.111454, 35.861195, 29.936794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421150, 35.754425, 29.505384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525150, 36.140621, 29.499353>,  <36.587551, 36.372337, 29.495735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.525150, 36.140621, 29.499353>,  <36.421150, 35.754425, 29.505384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525150, 36.140621, 29.499353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045697, -0.027901, -0.998566,
		-0.964526, 0.258942, -0.051374,
		0.260004, 0.965490, -0.015078,
		36.603153, 36.430267, 29.494829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320511, 35.905006, 28.853661>,  <36.421150, 35.754425, 29.505384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320511, 35.905006, 28.853661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494930, 36.250851, 28.953512>,  <36.599583, 36.458355, 29.013424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494930, 36.250851, 28.953512>,  <36.320511, 35.905006, 28.853661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494930, 36.250851, 28.953512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073581, 0.242208, -0.967430,
		-0.896910, 0.440216, 0.041997,
		0.436050, 0.864607, 0.249630,
		36.625744, 36.510231, 29.028400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973949, 36.358139, 28.468925>,  <36.320511, 35.905006, 28.853661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973949, 36.358139, 28.468925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324326, 36.525101, 28.565680>,  <36.534550, 36.625278, 28.623732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.324326, 36.525101, 28.565680>,  <35.973949, 36.358139, 28.468925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324326, 36.525101, 28.565680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138823, 0.262105, -0.955002,
		-0.462018, 0.870102, 0.171643,
		0.875938, 0.417400, 0.241887,
		36.587109, 36.650322, 28.638247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950981, 37.066219, 28.205824>,  <35.973949, 36.358139, 28.468925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950981, 37.066219, 28.205824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.327374, 36.945080, 28.266264>,  <36.553211, 36.872398, 28.302528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.327374, 36.945080, 28.266264>,  <35.950981, 37.066219, 28.205824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327374, 36.945080, 28.266264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230777, 0.247567, -0.940985,
		0.247567, 0.920323, 0.302847,
		0.940985, -0.302847, 0.151099,
		36.609669, 36.854225, 28.311594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250648, 37.554672, 27.801680>,  <35.950981, 37.066219, 28.205824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250648, 37.554672, 27.801680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506897, 37.255520, 27.871290>,  <36.660645, 37.076031, 27.913057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.506897, 37.255520, 27.871290>,  <36.250648, 37.554672, 27.801680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506897, 37.255520, 27.871290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341348, 0.074361, -0.936991,
		0.687814, 0.659659, 0.302923,
		0.640620, -0.747878, 0.174026,
		36.699081, 37.031158, 27.923498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951015, 37.801750, 27.614086>,  <36.250648, 37.554672, 27.801680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951015, 37.801750, 27.614086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940937, 37.402447, 27.592726>,  <36.934891, 37.162865, 27.579910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.940937, 37.402447, 27.592726>,  <36.951015, 37.801750, 27.614086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940937, 37.402447, 27.592726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348503, 0.041297, -0.936397,
		0.936969, -0.042202, 0.346855,
		-0.025194, -0.998255, -0.053401,
		36.933380, 37.102970, 27.576706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617069, 37.550739, 27.521273>,  <36.951015, 37.801750, 27.614086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617069, 37.550739, 27.521273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.367565, 37.264141, 27.396336>,  <37.217861, 37.092182, 27.321373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.367565, 37.264141, 27.396336>,  <37.617069, 37.550739, 27.521273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367565, 37.264141, 27.396336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509897, -0.070152, -0.857370,
		0.592388, -0.694059, 0.409096,
		-0.623764, -0.716492, -0.312341,
		37.180435, 37.049194, 27.302633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064903, 37.065273, 27.261963>,  <37.617069, 37.550739, 27.521273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064903, 37.065273, 27.261963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711250, 36.959751, 27.107710>,  <37.499058, 36.896439, 27.015158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.711250, 36.959751, 27.107710>,  <38.064903, 37.065273, 27.261963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711250, 36.959751, 27.107710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443514, -0.214224, -0.870289,
		0.146973, -0.940488, 0.306403,
		-0.884135, -0.263803, -0.385635,
		37.446011, 36.880611, 26.992020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170471, 36.412373, 26.883627>,  <38.064903, 37.065273, 27.261963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170471, 36.412373, 26.883627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843311, 36.577957, 26.723791>,  <37.647015, 36.677307, 26.627890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843311, 36.577957, 26.723791>,  <38.170471, 36.412373, 26.883627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843311, 36.577957, 26.723791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374910, -0.143369, -0.915908,
		-0.436442, -0.898932, -0.037938,
		-0.817900, 0.413964, -0.399591,
		37.597942, 36.702145, 26.603914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857121, 35.932087, 26.397078>,  <38.170471, 36.412373, 26.883627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857121, 35.932087, 26.397078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.750034, 36.302101, 26.289276>,  <37.685783, 36.524109, 26.224596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.750034, 36.302101, 26.289276>,  <37.857121, 35.932087, 26.397078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750034, 36.302101, 26.289276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471597, -0.118111, -0.873868,
		-0.840194, -0.361042, -0.404626,
		-0.267712, 0.925040, -0.269503,
		37.669720, 36.579613, 26.208426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767303, 35.748970, 25.712723>,  <37.857121, 35.932087, 26.397078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767303, 35.748970, 25.712723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785172, 36.147903, 25.735777>,  <37.795895, 36.387264, 25.749609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785172, 36.147903, 25.735777>,  <37.767303, 35.748970, 25.712723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785172, 36.147903, 25.735777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453932, 0.031127, -0.890493,
		-0.889916, 0.065944, -0.451333,
		0.044674, 0.997338, 0.057635,
		37.798573, 36.447105, 25.753067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391613, 35.086761, 25.386780>,  <37.767303, 35.748970, 25.712723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391613, 35.086761, 25.386780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.578945, 34.733387, 25.381041>,  <37.691345, 34.521362, 25.377598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.578945, 34.733387, 25.381041>,  <37.391613, 35.086761, 25.386780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578945, 34.733387, 25.381041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354898, -0.202961, 0.912608,
		-0.809145, -0.422308, -0.408583,
		0.468328, -0.883438, -0.014349,
		37.719444, 34.468357, 25.376736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956211, 34.648453, 25.816080>,  <37.391613, 35.086761, 25.386780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956211, 34.648453, 25.816080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281845, 34.416576, 25.802099>,  <37.477226, 34.277451, 25.793711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281845, 34.416576, 25.802099>,  <36.956211, 34.648453, 25.816080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281845, 34.416576, 25.802099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237998, -0.387918, 0.890436,
		-0.529741, -0.716571, -0.453764,
		0.814084, -0.579695, -0.034953,
		37.526070, 34.242668, 25.791613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801727, 34.014095, 26.003483>,  <36.956211, 34.648453, 25.816080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801727, 34.014095, 26.003483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.191719, 34.048370, 26.085527>,  <37.425713, 34.068935, 26.134754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.191719, 34.048370, 26.085527>,  <36.801727, 34.014095, 26.003483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191719, 34.048370, 26.085527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155731, -0.395154, 0.905318,
		0.158623, -0.914610, -0.371924,
		0.974981, 0.085685, 0.205113,
		37.484215, 34.074074, 26.147060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004482, 33.340282, 26.209030>,  <36.801727, 34.014095, 26.003483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004482, 33.340282, 26.209030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287476, 33.589775, 26.341951>,  <37.457272, 33.739471, 26.421703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287476, 33.589775, 26.341951>,  <37.004482, 33.340282, 26.209030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287476, 33.589775, 26.341951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062792, -0.412862, 0.908627,
		0.703937, -0.663702, -0.252926,
		0.707481, 0.623735, 0.332304,
		37.499722, 33.776894, 26.441643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508572, 32.971031, 26.570339>,  <37.004482, 33.340282, 26.209030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508572, 32.971031, 26.570339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.584087, 33.339294, 26.707006>,  <37.629398, 33.560253, 26.789007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.584087, 33.339294, 26.707006>,  <37.508572, 32.971031, 26.570339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584087, 33.339294, 26.707006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304309, -0.275951, 0.911728,
		0.933677, -0.276100, 0.228068,
		0.188792, 0.920663, 0.341669,
		37.640724, 33.615494, 26.809507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849960, 32.910851, 27.180826>,  <37.508572, 32.971031, 26.570339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849960, 32.910851, 27.180826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.718468, 33.286835, 27.217524>,  <37.639572, 33.512424, 27.239542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.718468, 33.286835, 27.217524>,  <37.849960, 32.910851, 27.180826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718468, 33.286835, 27.217524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291914, -0.193514, 0.936664,
		0.898177, 0.281130, 0.338000,
		-0.328732, 0.939957, 0.091744,
		37.619846, 33.568821, 27.245047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049049, 33.101494, 27.819590>,  <37.849960, 32.910851, 27.180826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049049, 33.101494, 27.819590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.772701, 33.371021, 27.714775>,  <37.606892, 33.532738, 27.651886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.772701, 33.371021, 27.714775>,  <38.049049, 33.101494, 27.819590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772701, 33.371021, 27.714775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443939, -0.109310, 0.889365,
		0.570631, 0.730763, 0.374655,
		-0.690868, 0.673823, -0.262038,
		37.565441, 33.573170, 27.636164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899467, 33.494869, 28.421848>,  <38.049049, 33.101494, 27.819590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899467, 33.494869, 28.421848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572033, 33.537636, 28.196108>,  <37.375572, 33.563297, 28.060663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572033, 33.537636, 28.196108>,  <37.899467, 33.494869, 28.421848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572033, 33.537636, 28.196108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569356, -0.280798, 0.772648,
		-0.075861, 0.953793, 0.290730,
		-0.818583, 0.106915, -0.564350,
		37.326458, 33.569710, 28.026802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337509, 34.004543, 28.680042>,  <37.899467, 33.494869, 28.421848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337509, 34.004543, 28.680042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204227, 33.690693, 28.470915>,  <37.124260, 33.502384, 28.345438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.204227, 33.690693, 28.470915>,  <37.337509, 34.004543, 28.680042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204227, 33.690693, 28.470915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315474, -0.429766, 0.846036,
		-0.888511, 0.446838, -0.104330,
		-0.333203, -0.784626, -0.522818,
		37.104267, 33.455307, 28.314070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654751, 34.054165, 28.786669>,  <37.337509, 34.004543, 28.680042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654751, 34.054165, 28.786669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751991, 33.673183, 28.713211>,  <36.810337, 33.444595, 28.669136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751991, 33.673183, 28.713211>,  <36.654751, 34.054165, 28.786669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751991, 33.673183, 28.713211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405316, -0.271746, 0.872853,
		-0.881261, -0.137759, -0.452109,
		0.243102, -0.952458, -0.183643,
		36.824921, 33.387447, 28.658117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011726, 33.659245, 28.928677>,  <36.654751, 34.054165, 28.786669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011726, 33.659245, 28.928677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337788, 33.429085, 28.955349>,  <36.533424, 33.290989, 28.971354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337788, 33.429085, 28.955349>,  <36.011726, 33.659245, 28.928677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337788, 33.429085, 28.955349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286374, -0.300253, 0.909856,
		-0.503510, -0.760764, -0.409531,
		0.815149, -0.575401, 0.066683,
		36.582333, 33.256466, 28.975353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767349, 33.026310, 29.305170>,  <36.011726, 33.659245, 28.928677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767349, 33.026310, 29.305170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.167183, 33.034283, 29.313442>,  <36.407085, 33.039066, 29.318405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.167183, 33.034283, 29.313442>,  <35.767349, 33.026310, 29.305170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167183, 33.034283, 29.313442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012554, -0.344498, 0.938703,
		0.025832, -0.938575, -0.344106,
		0.999587, 0.019929, 0.020682,
		36.467060, 33.040260, 29.319647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967037, 32.486340, 29.778683>,  <35.767349, 33.026310, 29.305170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967037, 32.486340, 29.778683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.293594, 32.716911, 29.764683>,  <36.489529, 32.855255, 29.756283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.293594, 32.716911, 29.764683>,  <35.967037, 32.486340, 29.778683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293594, 32.716911, 29.764683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177750, -0.193155, 0.964933,
		0.549459, -0.793987, -0.260152,
		0.816394, 0.576434, -0.035001,
		36.538513, 32.889843, 29.754183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587299, 32.050465, 29.946930>,  <35.967037, 32.486340, 29.778683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587299, 32.050465, 29.946930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666122, 32.434875, 30.024492>,  <36.713417, 32.665520, 30.071030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666122, 32.434875, 30.024492>,  <36.587299, 32.050465, 29.946930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666122, 32.434875, 30.024492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028978, -0.203406, 0.978666,
		0.979963, -0.187239, -0.067932,
		0.197062, 0.961024, 0.193904,
		36.725243, 32.723183, 30.082663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.371212, 33.681423, 25.226072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.617573, 33.975960, 25.338121>,  <40.765388, 34.152683, 25.405352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.617573, 33.975960, 25.338121>,  <40.371212, 33.681423, 25.226072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617573, 33.975960, 25.338121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194126, 0.202758, -0.959794,
		-0.763533, 0.645516, -0.018064,
		0.615899, 0.736341, 0.280124,
		40.802341, 34.196861, 25.422159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225681, 34.253849, 24.705530>,  <40.371212, 33.681423, 25.226072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225681, 34.253849, 24.705530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.574238, 34.342033, 24.880835>,  <40.783371, 34.394943, 24.986017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.574238, 34.342033, 24.880835>,  <40.225681, 34.253849, 24.705530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574238, 34.342033, 24.880835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376903, 0.271011, -0.885719,
		-0.314044, 0.936989, 0.153062,
		0.871390, 0.220465, 0.438263,
		40.835655, 34.408173, 25.012314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422195, 34.891006, 24.366808>,  <40.225681, 34.253849, 24.705530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422195, 34.891006, 24.366808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.769413, 34.759735, 24.515827>,  <40.977745, 34.680973, 24.605240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.769413, 34.759735, 24.515827>,  <40.422195, 34.891006, 24.366808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769413, 34.759735, 24.515827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446770, 0.189058, -0.874445,
		0.216538, 0.925504, 0.310730,
		0.868048, -0.328175, 0.372549,
		41.029827, 34.661282, 24.627592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893597, 35.400585, 24.172976>,  <40.422195, 34.891006, 24.366808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893597, 35.400585, 24.172976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.090958, 35.056362, 24.223568>,  <41.209373, 34.849827, 24.253923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.090958, 35.056362, 24.223568>,  <40.893597, 35.400585, 24.172976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090958, 35.056362, 24.223568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533809, 0.184778, -0.825170,
		0.686736, 0.474654, 0.550543,
		0.493399, -0.860558, 0.126481,
		41.238976, 34.798195, 24.261513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527863, 35.644154, 24.118809>,  <40.893597, 35.400585, 24.172976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527863, 35.644154, 24.118809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.533215, 35.251080, 24.044895>,  <41.536427, 35.015236, 24.000547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.533215, 35.251080, 24.044895>,  <41.527863, 35.644154, 24.118809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533215, 35.251080, 24.044895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533049, 0.163359, -0.830164,
		0.845979, -0.087394, 0.526006,
		0.013377, -0.982688, -0.184784,
		41.537228, 34.956272, 23.989460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206020, 35.532913, 23.913630>,  <41.527863, 35.644154, 24.118809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206020, 35.532913, 23.913630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.022106, 35.202557, 23.783091>,  <41.911758, 35.004341, 23.704767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.022106, 35.202557, 23.783091>,  <42.206020, 35.532913, 23.913630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022106, 35.202557, 23.783091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536947, 0.034155, -0.842924,
		0.707310, -0.562795, 0.427756,
		-0.459783, -0.825891, -0.326350,
		41.884171, 34.954788, 23.685186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.702667, 35.077999, 23.688366>,  <42.206020, 35.532913, 23.913630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.702667, 35.077999, 23.688366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.384178, 34.932632, 23.494888>,  <42.193085, 34.845413, 23.378801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.384178, 34.932632, 23.494888>,  <42.702667, 35.077999, 23.688366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384178, 34.932632, 23.494888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482896, 0.099894, -0.869961,
		0.364476, -0.926256, 0.095954,
		-0.796221, -0.363416, -0.483694,
		42.145313, 34.823608, 23.349779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996696, 34.738586, 23.138241>,  <42.702667, 35.077999, 23.688366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996696, 34.738586, 23.138241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.619469, 34.829060, 23.040697>,  <42.393131, 34.883343, 22.982170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.619469, 34.829060, 23.040697>,  <42.996696, 34.738586, 23.138241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619469, 34.829060, 23.040697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277829, 0.132616, -0.951432,
		-0.182855, -0.965016, -0.187905,
		-0.943067, 0.226180, -0.243860,
		42.336548, 34.896912, 22.967539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688999, 34.132885, 22.757912>,  <42.996696, 34.738586, 23.138241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688999, 34.132885, 22.757912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.475594, 34.456100, 22.657969>,  <42.347549, 34.650032, 22.598001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.475594, 34.456100, 22.657969>,  <42.688999, 34.132885, 22.757912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475594, 34.456100, 22.657969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474261, 0.041202, -0.879419,
		-0.700314, -0.587681, -0.405205,
		-0.533513, 0.808043, -0.249860,
		42.315540, 34.698513, 22.583010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576172, 34.138756, 21.984550>,  <42.688999, 34.132885, 22.757912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576172, 34.138756, 21.984550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.508705, 34.521172, 22.080496>,  <42.468224, 34.750622, 22.138063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.508705, 34.521172, 22.080496>,  <42.576172, 34.138756, 21.984550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508705, 34.521172, 22.080496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526601, 0.293113, -0.797983,
		-0.833212, -0.008284, -0.552892,
		-0.168670, 0.956042, 0.239863,
		42.458103, 34.807983, 22.152454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475513, 34.456287, 21.412390>,  <42.576172, 34.138756, 21.984550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475513, 34.456287, 21.412390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.596649, 34.742268, 21.664465>,  <42.669331, 34.913857, 21.815710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.596649, 34.742268, 21.664465>,  <42.475513, 34.456287, 21.412390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596649, 34.742268, 21.664465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647534, 0.330818, -0.686483,
		-0.699278, 0.615960, -0.362771,
		0.302836, 0.714949, 0.630189,
		42.687500, 34.956753, 21.853521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469734, 35.141544, 21.115204>,  <42.475513, 34.456287, 21.412390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469734, 35.141544, 21.115204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.752625, 35.118217, 21.397036>,  <42.922359, 35.104221, 21.566133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.752625, 35.118217, 21.397036>,  <42.469734, 35.141544, 21.115204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752625, 35.118217, 21.397036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659895, 0.412086, -0.628271,
		-0.253711, 0.909277, 0.329919,
		0.707227, -0.058313, 0.704578,
		42.964794, 35.100723, 21.608410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976948, 34.886662, 20.603901>,  <42.469734, 35.141544, 21.115204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976948, 34.886662, 20.603901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631992, 34.970589, 20.788191>,  <41.425018, 35.020947, 20.898766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631992, 34.970589, 20.788191>,  <41.976948, 34.886662, 20.603901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631992, 34.970589, 20.788191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379667, 0.870049, 0.314431,
		-0.334879, 0.446083, -0.829980,
		-0.862386, 0.209819, 0.460724,
		41.373276, 35.033535, 20.926409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279194, 34.447300, 20.624475>,  <41.976948, 34.886662, 20.603901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279194, 34.447300, 20.624475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434868, 34.081966, 20.672401>,  <41.528271, 33.862766, 20.701157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.434868, 34.081966, 20.672401>,  <41.279194, 34.447300, 20.624475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434868, 34.081966, 20.672401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386351, -0.043769, 0.921313,
		-0.836224, -0.404849, -0.369902,
		0.389182, -0.913336, 0.119813,
		41.551624, 33.807964, 20.708345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770985, 34.889225, 20.662476>,  <41.279194, 34.447300, 20.624475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770985, 34.889225, 20.662476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430618, 34.980427, 20.473179>,  <40.226398, 35.035149, 20.359602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430618, 34.980427, 20.473179>,  <40.770985, 34.889225, 20.662476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430618, 34.980427, 20.473179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467592, 0.081763, 0.880155,
		0.239375, 0.970220, 0.037041,
		-0.850915, 0.228007, -0.473239,
		40.175343, 35.048828, 20.331207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525185, 35.247063, 21.153557>,  <40.770985, 34.889225, 20.662476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525185, 35.247063, 21.153557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214222, 35.186089, 20.909458>,  <40.027645, 35.149506, 20.762999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.214222, 35.186089, 20.909458>,  <40.525185, 35.247063, 21.153557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214222, 35.186089, 20.909458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625646, 0.087398, 0.775196,
		-0.064830, 0.984442, -0.163312,
		-0.777409, -0.152431, -0.610246,
		39.980999, 35.140358, 20.726385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996933, 35.711510, 21.446644>,  <40.525185, 35.247063, 21.153557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996933, 35.711510, 21.446644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818039, 35.412663, 21.249954>,  <39.710701, 35.233353, 21.131941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818039, 35.412663, 21.249954>,  <39.996933, 35.711510, 21.446644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818039, 35.412663, 21.249954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551161, -0.202773, 0.809386,
		-0.704415, 0.633008, -0.321094,
		-0.447238, -0.747118, -0.491725,
		39.683868, 35.188526, 21.102436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411747, 35.826881, 21.490795>,  <39.996933, 35.711510, 21.446644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411747, 35.826881, 21.490795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368759, 35.447247, 21.372347>,  <39.342964, 35.219467, 21.301279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.368759, 35.447247, 21.372347>,  <39.411747, 35.826881, 21.490795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368759, 35.447247, 21.372347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634416, -0.163857, 0.755425,
		-0.765484, 0.269050, -0.584505,
		-0.107471, -0.949085, -0.296119,
		39.336517, 35.162521, 21.283510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691662, 35.655777, 21.511635>,  <39.411747, 35.826881, 21.490795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691662, 35.655777, 21.511635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826645, 35.279274, 21.516758>,  <38.907635, 35.053371, 21.519831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.826645, 35.279274, 21.516758>,  <38.691662, 35.655777, 21.511635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826645, 35.279274, 21.516758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464037, -0.154500, 0.872238,
		-0.819018, -0.300286, -0.488914,
		0.337458, -0.941253, 0.012806,
		38.927883, 34.996899, 21.520599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178238, 35.193069, 21.606512>,  <38.691662, 35.655777, 21.511635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178238, 35.193069, 21.606512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.500134, 34.977531, 21.706142>,  <38.693272, 34.848209, 21.765921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.500134, 34.977531, 21.706142>,  <38.178238, 35.193069, 21.606512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500134, 34.977531, 21.706142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445283, -0.270455, 0.853567,
		-0.392582, -0.797805, -0.457587,
		0.804737, -0.538851, 0.249073,
		38.741554, 34.815876, 21.780865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941246, 34.558552, 21.890368>,  <38.178238, 35.193069, 21.606512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941246, 34.558552, 21.890368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.316601, 34.559406, 22.028597>,  <38.541813, 34.559917, 22.111534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.316601, 34.559406, 22.028597>,  <37.941246, 34.558552, 21.890368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316601, 34.559406, 22.028597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326959, -0.318347, 0.889805,
		0.111915, -0.947972, -0.298034,
		0.938389, 0.002138, 0.345576,
		38.598118, 34.560047, 22.132269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021572, 33.930073, 22.303366>,  <37.941246, 34.558552, 21.890368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021572, 33.930073, 22.303366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289043, 34.193405, 22.441626>,  <38.449524, 34.351406, 22.524582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289043, 34.193405, 22.441626>,  <38.021572, 33.930073, 22.303366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289043, 34.193405, 22.441626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225526, -0.263396, 0.937956,
		0.708528, -0.705140, -0.027656,
		0.668675, 0.658331, 0.345651,
		38.489647, 34.390903, 22.545321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487881, 33.566387, 22.759073>,  <38.021572, 33.930073, 22.303366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487881, 33.566387, 22.759073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514690, 33.952740, 22.859144>,  <38.530777, 34.184551, 22.919186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514690, 33.952740, 22.859144>,  <38.487881, 33.566387, 22.759073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514690, 33.952740, 22.859144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142955, -0.238856, 0.960475,
		0.987457, -0.100136, 0.122069,
		0.067021, 0.965878, 0.250175,
		38.534798, 34.242504, 22.934196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806671, 33.557137, 23.437191>,  <38.487881, 33.566387, 22.759073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806671, 33.557137, 23.437191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617622, 33.909485, 23.426645>,  <38.504192, 34.120895, 23.420319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617622, 33.909485, 23.426645>,  <38.806671, 33.557137, 23.437191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617622, 33.909485, 23.426645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313039, -0.139842, 0.939389,
		0.823795, 0.452226, 0.341839,
		-0.472619, 0.880872, -0.026363,
		38.475838, 34.173748, 23.418736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035099, 33.877430, 24.023867>,  <38.806671, 33.557137, 23.437191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035099, 33.877430, 24.023867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.698559, 34.065178, 23.916676>,  <38.496635, 34.177826, 23.852360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.698559, 34.065178, 23.916676>,  <39.035099, 33.877430, 24.023867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698559, 34.065178, 23.916676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231404, 0.135247, 0.963411,
		0.488441, 0.872581, -0.005176,
		-0.841354, 0.469371, -0.267980,
		38.446152, 34.205990, 23.836281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024719, 34.502720, 24.478777>,  <39.035099, 33.877430, 24.023867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024719, 34.502720, 24.478777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.645039, 34.463039, 24.359324>,  <38.417233, 34.439232, 24.287651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.645039, 34.463039, 24.359324>,  <39.024719, 34.502720, 24.478777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645039, 34.463039, 24.359324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311433, 0.160145, 0.936676,
		-0.045096, 0.982096, -0.182904,
		-0.949197, -0.099203, -0.298636,
		38.360279, 34.433277, 24.269733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705017, 34.955780, 24.897039>,  <39.024719, 34.502720, 24.478777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705017, 34.955780, 24.897039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.424797, 34.697285, 24.775976>,  <38.256664, 34.542187, 24.703339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.424797, 34.697285, 24.775976>,  <38.705017, 34.955780, 24.897039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424797, 34.697285, 24.775976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378629, -0.022889, 0.925266,
		-0.604870, 0.762792, -0.228650,
		-0.700552, -0.646239, -0.302660,
		38.214630, 34.503414, 24.685179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029099, 35.273445, 25.020691>,  <38.705017, 34.955780, 24.897039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029099, 35.273445, 25.020691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.988167, 34.876003, 25.001558>,  <37.963608, 34.637539, 24.990080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.988167, 34.876003, 25.001558>,  <38.029099, 35.273445, 25.020691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988167, 34.876003, 25.001558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424936, 0.000186, 0.905223,
		-0.899421, 0.112954, -0.422236,
		-0.102327, -0.993600, -0.047831,
		37.957470, 34.577923, 24.987209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654541, 35.988686, 24.962202>,  <38.029099, 35.273445, 25.020691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654541, 35.988686, 24.962202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.793415, 36.319260, 25.139500>,  <37.876740, 36.517605, 25.245878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.793415, 36.319260, 25.139500>,  <37.654541, 35.988686, 24.962202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793415, 36.319260, 25.139500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512703, 0.228485, -0.827605,
		-0.785239, 0.514582, -0.344392,
		0.347183, 0.826438, 0.443243,
		37.897572, 36.567192, 25.272472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573380, 36.464340, 24.408163>,  <37.654541, 35.988686, 24.962202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573380, 36.464340, 24.408163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862095, 36.602646, 24.647987>,  <38.035324, 36.685631, 24.791882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.862095, 36.602646, 24.647987>,  <37.573380, 36.464340, 24.408163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862095, 36.602646, 24.647987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549451, 0.240504, -0.800163,
		-0.420863, 0.906976, -0.016387,
		0.721788, 0.345763, 0.599558,
		38.078632, 36.706375, 24.827854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554600, 37.113342, 24.252964>,  <37.573380, 36.464340, 24.408163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554600, 37.113342, 24.252964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911728, 37.037720, 24.416487>,  <38.126007, 36.992348, 24.514601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.911728, 37.037720, 24.416487>,  <37.554600, 37.113342, 24.252964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911728, 37.037720, 24.416487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450201, 0.347158, -0.822678,
		0.013610, 0.918553, 0.395064,
		0.892823, -0.189055, 0.408809,
		38.179573, 36.981003, 24.539129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030975, 37.635784, 24.064837>,  <37.554600, 37.113342, 24.252964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030975, 37.635784, 24.064837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.282177, 37.363411, 24.215538>,  <38.432899, 37.199986, 24.305958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.282177, 37.363411, 24.215538>,  <38.030975, 37.635784, 24.064837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282177, 37.363411, 24.215538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701396, 0.285535, -0.653080,
		0.337127, 0.674389, 0.656920,
		0.628004, -0.680932, 0.376752,
		38.470577, 37.159130, 24.328564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752781, 38.010269, 24.095459>,  <38.030975, 37.635784, 24.064837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752781, 38.010269, 24.095459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.843414, 37.621387, 24.119076>,  <38.897797, 37.388058, 24.133245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.843414, 37.621387, 24.119076>,  <38.752781, 38.010269, 24.095459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843414, 37.621387, 24.119076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564455, 0.081669, -0.821414,
		0.793757, 0.219449, 0.567268,
		0.226586, -0.972200, 0.059043,
		38.911388, 37.329727, 24.136789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471691, 37.973984, 23.994837>,  <38.752781, 38.010269, 24.095459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471691, 37.973984, 23.994837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.298584, 37.625168, 23.903397>,  <39.194721, 37.415878, 23.848532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.298584, 37.625168, 23.903397>,  <39.471691, 37.973984, 23.994837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298584, 37.625168, 23.903397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538449, -0.046654, -0.841365,
		0.723040, -0.487203, 0.489740,
		-0.432764, -0.872042, -0.228601,
		39.168755, 37.363556, 23.834816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941158, 37.588131, 23.807323>,  <39.471691, 37.973984, 23.994837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941158, 37.588131, 23.807323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.626266, 37.403168, 23.644131>,  <39.437332, 37.292191, 23.546215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.626266, 37.403168, 23.644131>,  <39.941158, 37.588131, 23.807323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626266, 37.403168, 23.644131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473087, -0.028497, -0.880555,
		0.395547, -0.886210, 0.241192,
		-0.787230, -0.462406, -0.407982,
		39.390099, 37.264446, 23.521736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565132, 37.207333, 23.933855>,  <39.941158, 37.588131, 23.807323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565132, 37.207333, 23.933855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706768, 37.578495, 23.980518>,  <40.791748, 37.801193, 24.008516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706768, 37.578495, 23.980518>,  <40.565132, 37.207333, 23.933855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706768, 37.578495, 23.980518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170625, -0.058550, 0.983595,
		0.919517, -0.368181, 0.137592,
		0.354086, 0.927909, 0.116659,
		40.812992, 37.856869, 24.015516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849735, 37.199104, 24.553942>,  <40.565132, 37.207333, 23.933855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849735, 37.199104, 24.553942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.818417, 37.597473, 24.536047>,  <40.799625, 37.836494, 24.525311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.818417, 37.597473, 24.536047>,  <40.849735, 37.199104, 24.553942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818417, 37.597473, 24.536047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133687, 0.033981, 0.990440,
		0.987926, 0.083531, 0.130481,
		-0.078299, 0.995925, -0.044738,
		40.794926, 37.896252, 24.522625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307003, 37.465130, 25.143572>,  <40.849735, 37.199104, 24.553942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307003, 37.465130, 25.143572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.045559, 37.751045, 25.044079>,  <40.888691, 37.922596, 24.984383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.045559, 37.751045, 25.044079>,  <41.307003, 37.465130, 25.143572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045559, 37.751045, 25.044079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214483, 0.140232, 0.966608,
		0.725804, 0.685133, 0.061654,
		-0.653610, 0.714792, -0.248731,
		40.849476, 37.965485, 24.969460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422695, 37.979942, 25.582834>,  <41.307003, 37.465130, 25.143572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422695, 37.979942, 25.582834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.059830, 38.091908, 25.457167>,  <40.842110, 38.159084, 25.381765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.059830, 38.091908, 25.457167>,  <41.422695, 37.979942, 25.582834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059830, 38.091908, 25.457167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265717, 0.197854, 0.943530,
		0.326264, 0.939417, -0.105109,
		-0.907164, 0.279911, -0.314171,
		40.787682, 38.175880, 25.362915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363091, 38.659985, 25.887018>,  <41.422695, 37.979942, 25.582834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363091, 38.659985, 25.887018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.014858, 38.488861, 25.789797>,  <40.805920, 38.386189, 25.731464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.014858, 38.488861, 25.789797>,  <41.363091, 38.659985, 25.887018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014858, 38.488861, 25.789797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395292, 0.313977, 0.863228,
		-0.292984, 0.847583, -0.442451,
		-0.870577, -0.427810, -0.243053,
		40.753685, 38.360519, 25.716881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831799, 39.169033, 25.882187>,  <41.363091, 38.659985, 25.887018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831799, 39.169033, 25.882187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.666332, 38.809727, 25.941515>,  <40.567051, 38.594143, 25.977112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.666332, 38.809727, 25.941515>,  <40.831799, 39.169033, 25.882187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666332, 38.809727, 25.941515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481468, 0.354108, 0.801745,
		-0.772702, 0.260244, -0.578969,
		-0.413667, -0.898265, 0.148321,
		40.542233, 38.540249, 25.986012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250019, 39.409241, 26.256834>,  <40.831799, 39.169033, 25.882187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250019, 39.409241, 26.256834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.262295, 39.010685, 26.288509>,  <40.269661, 38.771553, 26.307514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.262295, 39.010685, 26.288509>,  <40.250019, 39.409241, 26.256834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262295, 39.010685, 26.288509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415502, 0.059338, 0.907655,
		-0.909074, -0.060760, -0.412179,
		0.030691, -0.996387, 0.079189,
		40.271503, 38.711769, 26.312265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.467220, 37.395058, 22.569216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.148170, 37.159622, 22.516529>,  <44.956741, 37.018360, 22.484917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.148170, 37.159622, 22.516529>,  <45.467220, 37.395058, 22.569216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148170, 37.159622, 22.516529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308741, 0.210834, 0.927485,
		-0.518138, 0.780456, -0.349889,
		-0.797629, -0.588590, -0.131718,
		44.908882, 36.983044, 22.477015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906700, 37.829807, 22.629019>,  <45.467220, 37.395058, 22.569216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906700, 37.829807, 22.629019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.807594, 37.452198, 22.716131>,  <44.748131, 37.225632, 22.768398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.807594, 37.452198, 22.716131>,  <44.906700, 37.829807, 22.629019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807594, 37.452198, 22.716131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326994, 0.293083, 0.898430,
		-0.911970, 0.151382, -0.381305,
		-0.247760, -0.944026, 0.217783,
		44.733265, 37.168991, 22.781466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154842, 37.818630, 22.860426>,  <44.906700, 37.829807, 22.629019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154842, 37.818630, 22.860426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.329842, 37.480556, 22.983229>,  <44.434841, 37.277710, 23.056910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.329842, 37.480556, 22.983229>,  <44.154842, 37.818630, 22.860426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329842, 37.480556, 22.983229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463024, 0.080932, 0.882643,
		-0.770844, -0.528309, -0.355934,
		0.437502, -0.845186, 0.307006,
		44.461094, 37.227001, 23.075331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666153, 37.663113, 23.369551>,  <44.154842, 37.818630, 22.860426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666153, 37.663113, 23.369551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.958565, 37.404987, 23.458246>,  <44.134010, 37.250111, 23.511463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.958565, 37.404987, 23.458246>,  <43.666153, 37.663113, 23.369551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958565, 37.404987, 23.458246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273114, 0.021080, 0.961751,
		-0.625308, -0.763624, -0.160835,
		0.731026, -0.645317, 0.221738,
		44.177872, 37.211391, 23.524767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.341633, 37.173626, 23.741371>,  <43.666153, 37.663113, 23.369551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.341633, 37.173626, 23.741371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.728069, 37.151218, 23.842190>,  <43.959930, 37.137775, 23.902681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.728069, 37.151218, 23.842190>,  <43.341633, 37.173626, 23.741371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.728069, 37.151218, 23.842190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257185, -0.122548, 0.958560,
		-0.022807, -0.990881, -0.132799,
		0.966093, -0.056015, 0.252045,
		44.017899, 37.134415, 23.917803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309750, 36.814579, 24.262426>,  <43.341633, 37.173626, 23.741371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309750, 36.814579, 24.262426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.670956, 36.977573, 24.316862>,  <43.887680, 37.075371, 24.349524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.670956, 36.977573, 24.316862>,  <43.309750, 36.814579, 24.262426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670956, 36.977573, 24.316862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119329, -0.066402, 0.990632,
		0.412705, -0.910794, -0.011337,
		0.903014, 0.407485, 0.136089,
		43.941860, 37.099819, 24.357689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539688, 36.492001, 24.756069>,  <43.309750, 36.814579, 24.262426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539688, 36.492001, 24.756069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.751041, 36.831600, 24.754580>,  <43.877853, 37.035358, 24.753687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.751041, 36.831600, 24.754580>,  <43.539688, 36.492001, 24.756069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751041, 36.831600, 24.754580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233575, 0.149583, 0.960764,
		0.816241, -0.506786, 0.277342,
		0.528387, 0.848995, -0.003723,
		43.909557, 37.086300, 24.753462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152256, 36.308338, 25.093115>,  <43.539688, 36.492001, 24.756069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152256, 36.308338, 25.093115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.134830, 36.707188, 25.117924>,  <44.124374, 36.946499, 25.132809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.134830, 36.707188, 25.117924>,  <44.152256, 36.308338, 25.093115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134830, 36.707188, 25.117924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247651, -0.070922, 0.966250,
		0.967869, 0.026737, 0.250028,
		-0.043567, 0.997124, 0.062022,
		44.121761, 37.006325, 25.136530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525684, 36.468189, 25.676292>,  <44.152256, 36.308338, 25.093115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525684, 36.468189, 25.676292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.282471, 36.780136, 25.616819>,  <44.136543, 36.967304, 25.581137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.282471, 36.780136, 25.616819>,  <44.525684, 36.468189, 25.676292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282471, 36.780136, 25.616819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216585, 0.017232, 0.976112,
		0.763799, 0.625709, 0.158429,
		-0.608032, 0.779866, -0.148681,
		44.100060, 37.014095, 25.572216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644314, 36.959145, 26.332287>,  <44.525684, 36.468189, 25.676292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644314, 36.959145, 26.332287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.317112, 37.106953, 26.155962>,  <44.120789, 37.195637, 26.050167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.317112, 37.106953, 26.155962>,  <44.644314, 36.959145, 26.332287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317112, 37.106953, 26.155962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372864, 0.242894, 0.895530,
		0.437988, 0.896915, -0.060908,
		-0.818009, 0.369521, -0.440812,
		44.071709, 37.217808, 26.023718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559238, 37.675522, 26.617311>,  <44.644314, 36.959145, 26.332287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559238, 37.675522, 26.617311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.208839, 37.547985, 26.472549>,  <43.998600, 37.471462, 26.385693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.208839, 37.547985, 26.472549>,  <44.559238, 37.675522, 26.617311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208839, 37.547985, 26.472549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397411, 0.051948, 0.916169,
		-0.273311, 0.946384, -0.172217,
		-0.875994, -0.318840, -0.361905,
		43.946041, 37.452332, 26.363977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056942, 38.132610, 26.877409>,  <44.559238, 37.675522, 26.617311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056942, 38.132610, 26.877409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.862232, 37.788574, 26.816357>,  <43.745407, 37.582153, 26.779724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.862232, 37.788574, 26.816357>,  <44.056942, 38.132610, 26.877409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862232, 37.788574, 26.816357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552783, 0.168004, 0.816214,
		-0.676375, 0.481683, -0.557223,
		-0.486772, -0.860091, -0.152633,
		43.716202, 37.530548, 26.770567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563332, 38.509769, 26.453585>,  <44.056942, 38.132610, 26.877409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563332, 38.509769, 26.453585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.494690, 38.902248, 26.418270>,  <43.453503, 39.137737, 26.397081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.494690, 38.902248, 26.418270>,  <43.563332, 38.509769, 26.453585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494690, 38.902248, 26.418270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375718, -0.017661, -0.926566,
		-0.910707, -0.192177, -0.365624,
		-0.171607, 0.981202, -0.088288,
		43.443207, 39.196609, 26.391785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450134, 38.576397, 25.758236>,  <43.563332, 38.509769, 26.453585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450134, 38.576397, 25.758236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.499367, 38.953888, 25.881020>,  <43.528908, 39.180382, 25.954689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.499367, 38.953888, 25.881020>,  <43.450134, 38.576397, 25.758236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499367, 38.953888, 25.881020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368689, 0.243688, -0.897042,
		-0.921368, 0.223580, -0.317950,
		0.123080, 0.943731, 0.306958,
		43.536289, 39.237007, 25.973106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116909, 38.952682, 25.254604>,  <43.450134, 38.576397, 25.758236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116909, 38.952682, 25.254604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.366447, 39.211906, 25.429340>,  <43.516171, 39.367443, 25.534182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.366447, 39.211906, 25.429340>,  <43.116909, 38.952682, 25.254604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366447, 39.211906, 25.429340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245350, 0.368294, -0.896751,
		-0.742037, 0.666615, 0.070756,
		0.623847, 0.648062, 0.436841,
		43.553600, 39.406326, 25.560392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910484, 39.586319, 25.032745>,  <43.116909, 38.952682, 25.254604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910484, 39.586319, 25.032745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.289108, 39.621265, 25.156933>,  <43.516281, 39.642231, 25.231445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.289108, 39.621265, 25.156933>,  <42.910484, 39.586319, 25.032745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289108, 39.621265, 25.156933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265084, 0.337593, -0.903195,
		-0.183718, 0.937229, 0.296394,
		0.946561, 0.087364, 0.310466,
		43.573078, 39.647476, 25.250072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067841, 40.316891, 24.872461>,  <42.910484, 39.586319, 25.032745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067841, 40.316891, 24.872461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.414913, 40.121090, 24.907135>,  <43.623158, 40.003609, 24.927938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.414913, 40.121090, 24.907135>,  <43.067841, 40.316891, 24.872461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414913, 40.121090, 24.907135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298407, 0.373406, -0.878363,
		0.397593, 0.788007, 0.470069,
		0.867683, -0.489503, 0.086683,
		43.675217, 39.974239, 24.933140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607132, 40.765171, 24.607832>,  <43.067841, 40.316891, 24.872461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607132, 40.765171, 24.607832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.758068, 40.395313, 24.587267>,  <43.848629, 40.173397, 24.574928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.758068, 40.395313, 24.587267>,  <43.607132, 40.765171, 24.607832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758068, 40.395313, 24.587267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405593, 0.214917, -0.888428,
		0.832533, 0.314383, 0.456127,
		0.377336, -0.924648, -0.051414,
		43.871269, 40.117920, 24.571842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254833, 40.818417, 24.192404>,  <43.607132, 40.765171, 24.607832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254833, 40.818417, 24.192404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.218880, 40.420330, 24.177114>,  <44.197308, 40.181477, 24.167940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.218880, 40.420330, 24.177114>,  <44.254833, 40.818417, 24.192404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218880, 40.420330, 24.177114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343429, 0.005055, -0.939165,
		0.934868, -0.097543, 0.341332,
		-0.089883, -0.995219, -0.038225,
		44.191914, 40.121765, 24.165648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895557, 40.413250, 23.890579>,  <44.254833, 40.818417, 24.192404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895557, 40.413250, 23.890579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.579636, 40.172588, 23.842871>,  <44.390083, 40.028191, 23.814245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.579636, 40.172588, 23.842871>,  <44.895557, 40.413250, 23.890579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579636, 40.172588, 23.842871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363912, -0.303125, -0.880729,
		0.493738, -0.739007, 0.458357,
		-0.789805, -0.601651, -0.119269,
		44.342693, 39.992092, 23.807091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220211, 39.754311, 23.677580>,  <44.895557, 40.413250, 23.890579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220211, 39.754311, 23.677580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.843021, 39.729866, 23.546694>,  <44.616707, 39.715199, 23.468163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.843021, 39.729866, 23.546694>,  <45.220211, 39.754311, 23.677580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843021, 39.729866, 23.546694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328851, -0.323346, -0.887302,
		-0.051581, -0.944306, 0.325002,
		-0.942973, -0.061109, -0.327214,
		44.560131, 39.711533, 23.448530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251801, 39.280621, 23.178459>,  <45.220211, 39.754311, 23.677580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251801, 39.280621, 23.178459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.890404, 39.439526, 23.114096>,  <44.673565, 39.534870, 23.075478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.890404, 39.439526, 23.114096>,  <45.251801, 39.280621, 23.178459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890404, 39.439526, 23.114096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023834, -0.421399, -0.906562,
		-0.427988, -0.815216, 0.390191,
		-0.903470, 0.397297, -0.160924,
		44.619358, 39.558704, 23.065825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892502, 38.747124, 22.824682>,  <45.251801, 39.280621, 23.178459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892502, 38.747124, 22.824682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.664623, 39.065239, 22.741777>,  <44.527897, 39.256107, 22.692036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.664623, 39.065239, 22.741777>,  <44.892502, 38.747124, 22.824682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664623, 39.065239, 22.741777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016206, -0.241266, -0.970324,
		-0.821696, -0.556148, 0.124559,
		-0.569696, 0.795293, -0.207261,
		44.493713, 39.303825, 22.679600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225620, 38.434505, 22.486261>,  <44.892502, 38.747124, 22.824682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225620, 38.434505, 22.486261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.257458, 38.818970, 22.380554>,  <44.276562, 39.049648, 22.317131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.257458, 38.818970, 22.380554>,  <44.225620, 38.434505, 22.486261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257458, 38.818970, 22.380554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076131, -0.270195, -0.959791,
		-0.993916, 0.056273, -0.094679,
		0.079593, 0.961160, -0.264267,
		44.281334, 39.107319, 22.301273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666649, 38.550617, 21.987875>,  <44.225620, 38.434505, 22.486261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666649, 38.550617, 21.987875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.972233, 38.805313, 21.946053>,  <44.155582, 38.958130, 21.920959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.972233, 38.805313, 21.946053>,  <43.666649, 38.550617, 21.987875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972233, 38.805313, 21.946053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171711, -0.356804, -0.918263,
		-0.621998, 0.683562, -0.381918,
		0.763960, 0.636737, -0.104556,
		44.201420, 38.996334, 21.914686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635540, 37.803169, 22.217707>,  <43.666649, 38.550617, 21.987875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635540, 37.803169, 22.217707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.395580, 37.968449, 21.943661>,  <43.251602, 38.067616, 21.779234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.395580, 37.968449, 21.943661>,  <43.635540, 37.803169, 22.217707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.395580, 37.968449, 21.943661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653306, 0.241332, 0.717600,
		0.461852, 0.878080, 0.125169,
		-0.599903, 0.413199, -0.685115,
		43.215611, 38.092407, 21.738127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410763, 38.335014, 22.632105>,  <43.635540, 37.803169, 22.217707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410763, 38.335014, 22.632105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.147686, 38.339214, 22.330818>,  <42.989841, 38.341732, 22.150045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.147686, 38.339214, 22.330818>,  <43.410763, 38.335014, 22.632105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147686, 38.339214, 22.330818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751220, 0.064930, 0.656850,
		0.055801, 0.997835, -0.034818,
		-0.657689, 0.010497, -0.753217,
		42.950378, 38.342365, 22.104853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894737, 38.779247, 22.867607>,  <43.410763, 38.335014, 22.632105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894737, 38.779247, 22.867607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.703312, 38.587330, 22.573458>,  <42.588455, 38.472179, 22.396969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.703312, 38.587330, 22.573458>,  <42.894737, 38.779247, 22.867607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703312, 38.587330, 22.573458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822914, -0.047025, 0.566217,
		-0.306247, 0.876122, -0.372322,
		-0.478566, -0.479791, -0.735374,
		42.559742, 38.443394, 22.352846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334469, 39.157444, 22.773867>,  <42.894737, 38.779247, 22.867607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334469, 39.157444, 22.773867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.260437, 38.788910, 22.637112>,  <42.216019, 38.567791, 22.555058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.260437, 38.788910, 22.637112>,  <42.334469, 39.157444, 22.773867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260437, 38.788910, 22.637112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710849, -0.114707, 0.693928,
		-0.678557, 0.371464, -0.633699,
		-0.185080, -0.921334, -0.341890,
		42.204914, 38.512508, 22.534544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614586, 39.185429, 22.681021>,  <42.334469, 39.157444, 22.773867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614586, 39.185429, 22.681021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.726044, 38.802807, 22.715338>,  <41.792919, 38.573235, 22.735928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.726044, 38.802807, 22.715338>,  <41.614586, 39.185429, 22.681021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726044, 38.802807, 22.715338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651324, -0.122572, 0.748834,
		-0.705785, -0.264538, -0.657181,
		0.278647, -0.956554, 0.085791,
		41.809639, 38.515842, 22.741076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998421, 38.909622, 22.827215>,  <41.614586, 39.185429, 22.681021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998421, 38.909622, 22.827215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254143, 38.623787, 22.940815>,  <41.407578, 38.452286, 23.008974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254143, 38.623787, 22.940815>,  <40.998421, 38.909622, 22.827215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254143, 38.623787, 22.940815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606368, -0.241373, 0.757665,
		-0.472866, -0.656589, -0.587613,
		0.639309, -0.714584, 0.283998,
		41.445934, 38.409412, 23.026014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614021, 38.374916, 22.811104>,  <40.998421, 38.909622, 22.827215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614021, 38.374916, 22.811104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931461, 38.286625, 23.037899>,  <41.121925, 38.233650, 23.173977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.931461, 38.286625, 23.037899>,  <40.614021, 38.374916, 22.811104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931461, 38.286625, 23.037899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606822, -0.219266, 0.763996,
		-0.044316, -0.950369, -0.307953,
		0.793601, -0.220730, 0.566988,
		41.169540, 38.220406, 23.207994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449699, 37.749313, 23.187538>,  <40.614021, 38.374916, 22.811104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449699, 37.749313, 23.187538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.730240, 37.951492, 23.388586>,  <40.898563, 38.072800, 23.509214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.730240, 37.951492, 23.388586>,  <40.449699, 37.749313, 23.187538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730240, 37.951492, 23.388586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478424, -0.188913, 0.857567,
		0.528408, -0.841923, 0.109324,
		0.701353, 0.505448, 0.502619,
		40.940647, 38.103127, 23.539371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267189, 37.005241, 23.231848>,  <40.449699, 37.749313, 23.187538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267189, 37.005241, 23.231848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.880482, 37.068764, 23.151712>,  <39.648457, 37.106876, 23.103632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.880482, 37.068764, 23.151712>,  <40.267189, 37.005241, 23.231848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880482, 37.068764, 23.151712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214900, 0.080394, -0.973321,
		-0.138462, -0.984031, -0.111850,
		-0.966771, 0.158805, -0.200336,
		39.590450, 37.116405, 23.091612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115425, 36.419731, 22.793070>,  <40.267189, 37.005241, 23.231848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115425, 36.419731, 22.793070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.822899, 36.682533, 22.719830>,  <39.647385, 36.840214, 22.675884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.822899, 36.682533, 22.719830>,  <40.115425, 36.419731, 22.793070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822899, 36.682533, 22.719830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255009, 0.014401, -0.966832,
		-0.632575, -0.753750, -0.178073,
		-0.731314, 0.657003, -0.183103,
		39.603504, 36.879635, 22.664898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660229, 36.261936, 22.146990>,  <40.115425, 36.419731, 22.793070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660229, 36.261936, 22.146990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597042, 36.656311, 22.168795>,  <39.559132, 36.892937, 22.181877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597042, 36.656311, 22.168795>,  <39.660229, 36.261936, 22.146990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597042, 36.656311, 22.168795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332221, 0.105051, -0.937334,
		-0.929880, -0.129959, -0.344144,
		-0.157967, 0.985939, 0.054510,
		39.549652, 36.952091, 22.185148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144699, 36.466805, 21.679684>,  <39.660229, 36.261936, 22.146990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144699, 36.466805, 21.679684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.359661, 36.798264, 21.742353>,  <39.488636, 36.997139, 21.779955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.359661, 36.798264, 21.742353>,  <39.144699, 36.466805, 21.679684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359661, 36.798264, 21.742353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162781, 0.080363, -0.983384,
		-0.827466, 0.553977, -0.091700,
		0.537403, 0.828644, 0.156674,
		39.520882, 37.046856, 21.789356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930405, 36.863270, 21.061737>,  <39.144699, 36.466805, 21.679684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930405, 36.863270, 21.061737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261448, 37.024406, 21.218084>,  <39.460075, 37.121090, 21.311893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.261448, 37.024406, 21.218084>,  <38.930405, 36.863270, 21.061737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261448, 37.024406, 21.218084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273951, 0.317894, -0.907686,
		-0.489912, 0.858289, 0.152732,
		0.827609, 0.402845, 0.390869,
		39.509731, 37.145260, 21.335344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020634, 37.489777, 20.742212>,  <38.930405, 36.863270, 21.061737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020634, 37.489777, 20.742212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377876, 37.430912, 20.912249>,  <39.592220, 37.395592, 21.014271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.377876, 37.430912, 20.912249>,  <39.020634, 37.489777, 20.742212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377876, 37.430912, 20.912249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446364, 0.407209, -0.796831,
		-0.055835, 0.901401, 0.429370,
		0.893108, -0.147164, 0.425089,
		39.645809, 37.386765, 21.039776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387451, 37.993004, 20.587006>,  <39.020634, 37.489777, 20.742212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387451, 37.993004, 20.587006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.675655, 37.736053, 20.691481>,  <39.848579, 37.581882, 20.754166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.675655, 37.736053, 20.691481>,  <39.387451, 37.993004, 20.587006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675655, 37.736053, 20.691481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504950, 0.227873, -0.832526,
		0.475276, 0.731731, 0.488552,
		0.720512, -0.642374, 0.261185,
		39.891808, 37.543343, 20.769836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005913, 38.383957, 20.537373>,  <39.387451, 37.993004, 20.587006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005913, 38.383957, 20.537373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064804, 37.991249, 20.489271>,  <40.100140, 37.755627, 20.460409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.064804, 37.991249, 20.489271>,  <40.005913, 38.383957, 20.537373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064804, 37.991249, 20.489271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264444, 0.156224, -0.951664,
		0.953097, 0.108307, 0.282622,
		0.147225, -0.981766, -0.120256,
		40.108971, 37.696720, 20.453194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484478, 38.385395, 20.046110>,  <40.005913, 38.383957, 20.537373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484478, 38.385395, 20.046110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.359451, 38.005600, 20.034937>,  <40.284435, 37.777725, 20.028233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.359451, 38.005600, 20.034937>,  <40.484478, 38.385395, 20.046110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359451, 38.005600, 20.034937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134862, -0.015249, -0.990747,
		0.940273, -0.313444, 0.132815,
		-0.312569, -0.949485, -0.027933,
		40.265682, 37.720757, 20.026556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.953335, 36.030174, 35.385960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948780, 35.676495, 35.199169>,  <34.946049, 35.464287, 35.087093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.948780, 35.676495, 35.199169>,  <34.953335, 36.030174, 35.385960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948780, 35.676495, 35.199169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463272, 0.409202, -0.786088,
		0.886143, -0.225287, 0.404964,
		-0.011383, -0.884194, -0.466980,
		34.945366, 35.411236, 35.059074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641212, 35.883934, 35.140450>,  <34.953335, 36.030174, 35.385960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641212, 35.883934, 35.140450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414398, 35.623356, 34.938820>,  <35.278309, 35.467010, 34.817841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.414398, 35.623356, 34.938820>,  <35.641212, 35.883934, 35.140450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414398, 35.623356, 34.938820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547600, 0.159008, -0.821493,
		0.615310, -0.741846, 0.266568,
		-0.567035, -0.651445, -0.504074,
		35.244289, 35.427921, 34.787598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074562, 35.499931, 34.762177>,  <35.641212, 35.883934, 35.140450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074562, 35.499931, 34.762177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.718620, 35.467285, 34.582619>,  <35.505054, 35.447697, 34.474884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.718620, 35.467285, 34.582619>,  <36.074562, 35.499931, 34.762177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718620, 35.467285, 34.582619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428512, 0.188339, -0.883689,
		0.156671, -0.978707, -0.132619,
		-0.889849, -0.081620, -0.448895,
		35.451664, 35.442799, 34.447952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182365, 35.114742, 34.041721>,  <36.074562, 35.499931, 34.762177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182365, 35.114742, 34.041721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805340, 35.236610, 33.986938>,  <35.579124, 35.309731, 33.954071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.805340, 35.236610, 33.986938>,  <36.182365, 35.114742, 34.041721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805340, 35.236610, 33.986938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192531, 0.160465, -0.968082,
		-0.272971, -0.938843, -0.209906,
		-0.942559, 0.304672, -0.136954,
		35.522572, 35.328011, 33.945850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864841, 34.707790, 33.387383>,  <36.182365, 35.114742, 34.041721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864841, 34.707790, 33.387383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714859, 35.071686, 33.458687>,  <35.624870, 35.290024, 33.501469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714859, 35.071686, 33.458687>,  <35.864841, 34.707790, 33.387383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714859, 35.071686, 33.458687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191648, 0.264200, -0.945235,
		-0.907016, -0.320261, -0.273414,
		-0.374958, 0.909743, 0.178257,
		35.602371, 35.344608, 33.512165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463585, 34.788731, 32.910069>,  <35.864841, 34.707790, 33.387383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463585, 34.788731, 32.910069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496593, 35.170715, 33.024082>,  <35.516399, 35.399906, 33.092491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.496593, 35.170715, 33.024082>,  <35.463585, 34.788731, 32.910069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496593, 35.170715, 33.024082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221032, 0.261353, -0.939595,
		-0.971769, 0.140538, -0.189509,
		0.082520, 0.954957, 0.285038,
		35.521351, 35.457203, 33.109592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023773, 35.191162, 32.469685>,  <35.463585, 34.788731, 32.910069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023773, 35.191162, 32.469685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315754, 35.427700, 32.606789>,  <35.490944, 35.569622, 32.689053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315754, 35.427700, 32.606789>,  <35.023773, 35.191162, 32.469685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315754, 35.427700, 32.606789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022177, 0.480728, -0.876589,
		-0.683139, 0.647469, 0.337794,
		0.729951, 0.591341, 0.342763,
		35.534740, 35.605103, 32.709618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957371, 35.759079, 32.044571>,  <35.023773, 35.191162, 32.469685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957371, 35.759079, 32.044571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296886, 35.871769, 32.223541>,  <35.500595, 35.939384, 32.330925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.296886, 35.871769, 32.223541>,  <34.957371, 35.759079, 32.044571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296886, 35.871769, 32.223541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239582, 0.549435, -0.800451,
		-0.471339, 0.786608, 0.398857,
		0.848787, 0.281725, 0.447427,
		35.551521, 35.956287, 32.357769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106598, 36.505138, 31.905811>,  <34.957371, 35.759079, 32.044571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106598, 36.505138, 31.905811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463776, 36.351532, 31.999781>,  <35.678082, 36.259369, 32.056160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463776, 36.351532, 31.999781>,  <35.106598, 36.505138, 31.905811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463776, 36.351532, 31.999781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371918, 0.335275, -0.865602,
		0.253644, 0.860302, 0.442204,
		0.892940, -0.384019, 0.234921,
		35.731659, 36.236328, 32.070255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541214, 37.061501, 31.804937>,  <35.106598, 36.505138, 31.905811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541214, 37.061501, 31.804937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740036, 36.714725, 31.790255>,  <35.859329, 36.506660, 31.781445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740036, 36.714725, 31.790255>,  <35.541214, 37.061501, 31.804937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740036, 36.714725, 31.790255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463166, 0.300850, -0.833646,
		0.733765, 0.397369, 0.551077,
		0.497057, -0.866941, -0.036705,
		35.889153, 36.454643, 31.779243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176659, 37.266636, 31.685894>,  <35.541214, 37.061501, 31.804937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176659, 37.266636, 31.685894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183022, 36.882351, 31.575064>,  <36.186840, 36.651779, 31.508566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183022, 36.882351, 31.575064>,  <36.176659, 37.266636, 31.685894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183022, 36.882351, 31.575064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378474, 0.262280, -0.887674,
		0.925475, -0.090742, 0.367779,
		0.015912, -0.960716, -0.277078,
		36.187794, 36.594135, 31.491940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853439, 37.074825, 31.504221>,  <36.176659, 37.266636, 31.685894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853439, 37.074825, 31.504221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632999, 36.794525, 31.323009>,  <36.500736, 36.626343, 31.214283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632999, 36.794525, 31.323009>,  <36.853439, 37.074825, 31.504221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632999, 36.794525, 31.323009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443026, 0.214361, -0.870504,
		0.707120, -0.680438, 0.192318,
		-0.551099, -0.700753, -0.453030,
		36.467670, 36.584301, 31.187101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526077, 37.243385, 31.784328>,  <36.853439, 37.074825, 31.504221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526077, 37.243385, 31.784328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671204, 37.616070, 31.790924>,  <37.758278, 37.839680, 31.794882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671204, 37.616070, 31.790924>,  <37.526077, 37.243385, 31.784328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671204, 37.616070, 31.790924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186752, 0.055362, 0.980846,
		0.912957, -0.358944, 0.194086,
		0.362814, 0.931716, 0.016491,
		37.780048, 37.895584, 31.795872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064358, 37.192848, 32.297310>,  <37.526077, 37.243385, 31.784328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064358, 37.192848, 32.297310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910313, 37.556236, 32.232361>,  <37.817886, 37.774269, 32.193390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910313, 37.556236, 32.232361>,  <38.064358, 37.192848, 32.297310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910313, 37.556236, 32.232361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295423, 0.045332, 0.954290,
		0.874307, 0.415480, 0.250926,
		-0.385113, 0.908472, -0.162376,
		37.794777, 37.828777, 32.183647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494236, 37.701721, 32.693157>,  <38.064358, 37.192848, 32.297310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494236, 37.701721, 32.693157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.141342, 37.886078, 32.654701>,  <37.929607, 37.996693, 32.631626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.141342, 37.886078, 32.654701>,  <38.494236, 37.701721, 32.693157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141342, 37.886078, 32.654701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098516, 0.018974, 0.994955,
		0.460388, 0.887255, 0.028666,
		-0.882234, 0.460889, -0.096144,
		37.876671, 38.024345, 32.625858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439934, 38.003174, 33.281582>,  <38.494236, 37.701721, 32.693157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439934, 38.003174, 33.281582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.069035, 38.055676, 33.141304>,  <37.846497, 38.087177, 33.057137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.069035, 38.055676, 33.141304>,  <38.439934, 38.003174, 33.281582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069035, 38.055676, 33.141304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354099, -0.002791, 0.935204,
		0.121770, 0.991345, 0.049065,
		-0.927247, 0.131254, -0.350694,
		37.790859, 38.095051, 33.036095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205807, 38.642708, 33.602390>,  <38.439934, 38.003174, 33.281582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205807, 38.642708, 33.602390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.897961, 38.418343, 33.480358>,  <37.713253, 38.283726, 33.407139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.897961, 38.418343, 33.480358>,  <38.205807, 38.642708, 33.602390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897961, 38.418343, 33.480358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444500, 0.127650, 0.886637,
		-0.458380, 0.817977, -0.347566,
		-0.769616, -0.560910, -0.305078,
		37.667076, 38.250069, 33.388836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674076, 39.009670, 33.862064>,  <38.205807, 38.642708, 33.602390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674076, 39.009670, 33.862064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.548714, 38.637028, 33.788437>,  <37.473495, 38.413441, 33.744259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.548714, 38.637028, 33.788437>,  <37.674076, 39.009670, 33.862064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548714, 38.637028, 33.788437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439017, -0.029736, 0.897987,
		-0.842046, 0.362242, -0.399673,
		-0.313404, -0.931610, -0.184069,
		37.454693, 38.357544, 33.733215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916550, 38.969296, 33.993774>,  <37.674076, 39.009670, 33.862064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916550, 38.969296, 33.993774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041698, 38.590424, 34.021969>,  <37.116787, 38.363102, 34.038887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041698, 38.590424, 34.021969>,  <36.916550, 38.969296, 33.993774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041698, 38.590424, 34.021969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415263, -0.069673, 0.907029,
		-0.854206, -0.313053, -0.415126,
		0.312872, -0.947177, 0.070485,
		37.135559, 38.306271, 34.043114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364098, 38.669086, 34.260765>,  <36.916550, 38.969296, 33.993774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364098, 38.669086, 34.260765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645744, 38.393631, 34.330044>,  <36.814732, 38.228355, 34.371613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645744, 38.393631, 34.330044>,  <36.364098, 38.669086, 34.260765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645744, 38.393631, 34.330044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391907, -0.173476, 0.903502,
		-0.592144, -0.704044, -0.392030,
		0.704112, -0.688642, 0.173197,
		36.856979, 38.187038, 34.382004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060574, 38.127651, 34.560780>,  <36.364098, 38.669086, 34.260765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060574, 38.127651, 34.560780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447895, 38.126133, 34.660679>,  <36.680286, 38.125221, 34.720619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447895, 38.126133, 34.660679>,  <36.060574, 38.127651, 34.560780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447895, 38.126133, 34.660679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249477, -0.063743, 0.966281,
		0.012260, -0.997959, -0.062667,
		0.968303, -0.003788, 0.249749,
		36.738384, 38.124996, 34.735603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053307, 37.586132, 34.974945>,  <36.060574, 38.127651, 34.560780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053307, 37.586132, 34.974945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346130, 37.842892, 35.066212>,  <36.521824, 37.996948, 35.120972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346130, 37.842892, 35.066212>,  <36.053307, 37.586132, 34.974945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346130, 37.842892, 35.066212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279486, -0.022453, 0.959887,
		0.621271, -0.766463, 0.162964,
		0.732059, 0.641896, 0.228165,
		36.565746, 38.035461, 35.134663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325451, 37.253712, 35.584797>,  <36.053307, 37.586132, 34.974945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325451, 37.253712, 35.584797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513355, 37.606022, 35.608665>,  <36.626099, 37.817410, 35.622986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.513355, 37.606022, 35.608665>,  <36.325451, 37.253712, 35.584797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513355, 37.606022, 35.608665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234332, 0.059239, 0.970350,
		0.851125, -0.469816, 0.234222,
		0.469761, 0.880774, 0.059673,
		36.654285, 37.870255, 35.626568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814102, 37.243816, 36.205109>,  <36.325451, 37.253712, 35.584797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814102, 37.243816, 36.205109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769165, 37.628399, 36.104725>,  <36.742203, 37.859150, 36.044495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769165, 37.628399, 36.104725>,  <36.814102, 37.243816, 36.205109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769165, 37.628399, 36.104725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163875, 0.231171, 0.959013,
		0.980063, 0.148865, 0.131588,
		-0.112345, 0.961457, -0.250957,
		36.735462, 37.916836, 36.029438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338200, 37.627548, 36.539429>,  <36.814102, 37.243816, 36.205109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338200, 37.627548, 36.539429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025249, 37.863525, 36.459579>,  <36.837479, 38.005112, 36.411671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.025249, 37.863525, 36.459579>,  <37.338200, 37.627548, 36.539429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025249, 37.863525, 36.459579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131302, 0.157084, 0.978818,
		0.608807, 0.792016, -0.045437,
		-0.782377, 0.589945, -0.199627,
		36.790535, 38.040508, 36.399693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446068, 38.208683, 36.939114>,  <37.338200, 37.627548, 36.539429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446068, 38.208683, 36.939114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055233, 38.150074, 36.877365>,  <36.820732, 38.114910, 36.840317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055233, 38.150074, 36.877365>,  <37.446068, 38.208683, 36.939114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055233, 38.150074, 36.877365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187649, 0.250809, 0.949675,
		-0.100431, 0.956884, -0.272557,
		-0.977088, -0.146522, -0.154369,
		36.762108, 38.106117, 36.831055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080505, 38.028145, 36.540066>,  <37.446068, 38.208683, 36.939114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080505, 38.028145, 36.540066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.949856, 38.155930, 36.184254>,  <37.871468, 38.232601, 35.970768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.949856, 38.155930, 36.184254>,  <38.080505, 38.028145, 36.540066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949856, 38.155930, 36.184254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747874, 0.488125, 0.449909,
		0.577930, 0.812206, 0.079484,
		-0.326621, 0.319460, -0.889530,
		37.851868, 38.251766, 35.917397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308784, 37.847439, 35.805687>,  <38.080505, 38.028145, 36.540066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308784, 37.847439, 35.805687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639046, 37.960056, 36.001247>,  <38.837204, 38.027626, 36.118584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.639046, 37.960056, 36.001247>,  <38.308784, 37.847439, 35.805687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639046, 37.960056, 36.001247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378165, 0.366902, -0.849926,
		-0.418668, 0.886633, 0.196466,
		0.825656, 0.281540, 0.488904,
		38.886742, 38.044518, 36.147919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480247, 38.528900, 35.591740>,  <38.308784, 37.847439, 35.805687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480247, 38.528900, 35.591740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803989, 38.321693, 35.702450>,  <38.998234, 38.197369, 35.768875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.803989, 38.321693, 35.702450>,  <38.480247, 38.528900, 35.591740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803989, 38.321693, 35.702450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475487, 0.301294, -0.826519,
		0.344762, 0.800548, 0.490164,
		0.809353, -0.518019, 0.276775,
		39.046795, 38.166286, 35.785480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081043, 39.008728, 35.484715>,  <38.480247, 38.528900, 35.591740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081043, 39.008728, 35.484715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.252953, 38.648518, 35.511124>,  <39.356098, 38.432392, 35.526970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.252953, 38.648518, 35.511124>,  <39.081043, 39.008728, 35.484715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252953, 38.648518, 35.511124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519480, 0.186786, -0.833817,
		0.738538, 0.392647, 0.548078,
		0.429769, -0.900522, 0.066023,
		39.381882, 38.378361, 35.530930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828384, 39.068451, 35.368401>,  <39.081043, 39.008728, 35.484715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828384, 39.068451, 35.368401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.782715, 38.680103, 35.284142>,  <39.755314, 38.447094, 35.233585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.782715, 38.680103, 35.284142>,  <39.828384, 39.068451, 35.368401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782715, 38.680103, 35.284142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706576, 0.069697, -0.704196,
		0.698365, -0.229242, 0.678037,
		-0.114174, -0.970871, -0.210651,
		39.748463, 38.388844, 35.220947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521461, 38.738251, 35.369221>,  <39.828384, 39.068451, 35.368401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521461, 38.738251, 35.369221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.277294, 38.510918, 35.148537>,  <40.130795, 38.374519, 35.016125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.277294, 38.510918, 35.148537>,  <40.521461, 38.738251, 35.369221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277294, 38.510918, 35.148537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661980, 0.016427, -0.749341,
		0.434939, -0.822634, 0.366198,
		-0.610418, -0.568334, -0.551713,
		40.094170, 38.340416, 34.983025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972000, 38.208672, 35.059124>,  <40.521461, 38.738251, 35.369221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972000, 38.208672, 35.059124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.640980, 38.248604, 34.838146>,  <40.442368, 38.272564, 34.705559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.640980, 38.248604, 34.838146>,  <40.972000, 38.208672, 35.059124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640980, 38.248604, 34.838146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549335, -0.058827, -0.833529,
		-0.115710, -0.993264, -0.006158,
		-0.827552, 0.099830, -0.552441,
		40.392715, 38.278553, 34.672413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161972, 37.770344, 34.506119>,  <40.972000, 38.208672, 35.059124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161972, 37.770344, 34.506119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.876179, 38.027206, 34.395020>,  <40.704704, 38.181324, 34.328358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.876179, 38.027206, 34.395020>,  <41.161972, 37.770344, 34.506119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876179, 38.027206, 34.395020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445782, 0.111849, -0.888126,
		-0.539253, -0.758367, -0.366178,
		-0.714482, 0.642160, -0.277751,
		40.661835, 38.219856, 34.311695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845921, 37.512672, 33.888893>,  <41.161972, 37.770344, 34.506119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845921, 37.512672, 33.888893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.711266, 37.888062, 33.858059>,  <40.630474, 38.113297, 33.839558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.711266, 37.888062, 33.858059>,  <40.845921, 37.512672, 33.888893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711266, 37.888062, 33.858059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151709, -0.026744, -0.988063,
		-0.929334, -0.344312, -0.133372,
		-0.336635, 0.938474, -0.077090,
		40.610275, 38.169605, 33.834930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543827, 37.571621, 33.204853>,  <40.845921, 37.512672, 33.888893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543827, 37.571621, 33.204853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.584557, 37.951252, 33.324104>,  <40.608994, 38.179031, 33.395653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.584557, 37.951252, 33.324104>,  <40.543827, 37.571621, 33.204853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584557, 37.951252, 33.324104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128063, 0.284683, -0.950029,
		-0.986525, 0.134913, -0.092555,
		0.101823, 0.949080, 0.298124,
		40.615105, 38.235977, 33.413540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018661, 37.953049, 32.822021>,  <40.543827, 37.571621, 33.204853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018661, 37.953049, 32.822021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.309448, 38.203201, 32.935452>,  <40.483921, 38.353294, 33.003510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.309448, 38.203201, 32.935452>,  <40.018661, 37.953049, 32.822021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309448, 38.203201, 32.935452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130629, 0.279482, -0.951223,
		-0.674137, 0.728548, 0.121479,
		0.726963, 0.625386, 0.283579,
		40.527538, 38.390816, 33.020527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856647, 38.725811, 32.507332>,  <40.018661, 37.953049, 32.822021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856647, 38.725811, 32.507332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239456, 38.647858, 32.593239>,  <40.469143, 38.601086, 32.644783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239456, 38.647858, 32.593239>,  <39.856647, 38.725811, 32.507332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239456, 38.647858, 32.593239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277977, 0.405344, -0.870876,
		0.082659, 0.893151, 0.442096,
		0.957025, -0.194879, 0.214770,
		40.526562, 38.589394, 32.657669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229519, 39.328342, 32.301708>,  <39.856647, 38.725811, 32.507332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229519, 39.328342, 32.301708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.518044, 39.052147, 32.323395>,  <40.691158, 38.886429, 32.336407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.518044, 39.052147, 32.323395>,  <40.229519, 39.328342, 32.301708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518044, 39.052147, 32.323395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464768, 0.424507, -0.777036,
		0.513521, 0.585679, 0.627118,
		0.721309, -0.690488, 0.054212,
		40.734436, 38.845001, 32.339657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800526, 39.673199, 32.062889>,  <40.229519, 39.328342, 32.301708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800526, 39.673199, 32.062889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976929, 39.314529, 32.078335>,  <41.082771, 39.099327, 32.087601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.976929, 39.314529, 32.078335>,  <40.800526, 39.673199, 32.062889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976929, 39.314529, 32.078335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378200, 0.146646, -0.914035,
		0.813929, 0.417698, 0.403793,
		0.441005, -0.896674, 0.038614,
		41.109230, 39.045528, 32.089920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633389, 39.645756, 31.783049>,  <40.800526, 39.673199, 32.062889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633389, 39.645756, 31.783049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.456017, 39.290958, 31.731501>,  <41.349594, 39.078079, 31.700571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.456017, 39.290958, 31.731501>,  <41.633389, 39.645756, 31.783049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456017, 39.290958, 31.731501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420013, -0.078618, -0.904106,
		0.791808, -0.455034, 0.407411,
		-0.443428, -0.886997, -0.128870,
		41.322987, 39.024860, 31.692839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.181728, 39.119274, 31.544838>,  <41.633389, 39.645756, 31.783049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.181728, 39.119274, 31.544838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.812828, 39.028278, 31.419811>,  <41.591488, 38.973682, 31.344795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.812828, 39.028278, 31.419811>,  <42.181728, 39.119274, 31.544838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812828, 39.028278, 31.419811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321374, -0.001763, -0.946951,
		0.214867, -0.973780, 0.074734,
		-0.922253, -0.227486, -0.312568,
		41.536152, 38.960033, 31.326040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247765, 38.487469, 31.086920>,  <42.181728, 39.119274, 31.544838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247765, 38.487469, 31.086920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.904644, 38.669945, 30.992212>,  <41.698772, 38.779430, 30.935389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.904644, 38.669945, 30.992212>,  <42.247765, 38.487469, 31.086920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904644, 38.669945, 30.992212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234176, -0.063175, -0.970139,
		-0.457528, -0.887636, -0.052637,
		-0.857805, 0.456192, -0.236768,
		41.647301, 38.806801, 30.921183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976772, 38.110569, 30.565746>,  <42.247765, 38.487469, 31.086920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976772, 38.110569, 30.565746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.774433, 38.454411, 30.536888>,  <41.653030, 38.660717, 30.519573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.774433, 38.454411, 30.536888>,  <41.976772, 38.110569, 30.565746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774433, 38.454411, 30.536888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161518, 0.012225, -0.986794,
		-0.847369, -0.510816, -0.145026,
		-0.505843, 0.859603, -0.072147,
		41.622681, 38.712292, 30.515244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411171, 37.938023, 30.132801>,  <41.976772, 38.110569, 30.565746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411171, 37.938023, 30.132801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.511517, 38.324387, 30.107260>,  <41.571724, 38.556206, 30.091934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.511517, 38.324387, 30.107260>,  <41.411171, 37.938023, 30.132801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511517, 38.324387, 30.107260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197166, -0.115564, -0.973535,
		-0.947731, 0.231634, -0.219436,
		0.250862, 0.965914, -0.063853,
		41.586777, 38.614162, 30.088104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154453, 38.065090, 29.460623>,  <41.411171, 37.938023, 30.132801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154453, 38.065090, 29.460623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.394905, 38.373299, 29.545420>,  <41.539177, 38.558224, 29.596298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.394905, 38.373299, 29.545420>,  <41.154453, 38.065090, 29.460623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394905, 38.373299, 29.545420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280485, 0.044968, -0.958804,
		-0.748309, 0.635830, -0.189087,
		0.601134, 0.770518, 0.211991,
		41.575245, 38.604454, 29.609016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968231, 38.675083, 28.919312>,  <41.154453, 38.065090, 29.460623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968231, 38.675083, 28.919312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.329098, 38.764362, 29.066975>,  <41.545616, 38.817932, 29.155573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.329098, 38.764362, 29.066975>,  <40.968231, 38.675083, 28.919312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329098, 38.764362, 29.066975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329652, 0.195279, -0.923686,
		-0.278257, 0.955012, 0.102595,
		0.902166, 0.223201, 0.369159,
		41.599747, 38.831322, 29.177723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110561, 39.435608, 28.728706>,  <40.968231, 38.675083, 28.919312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110561, 39.435608, 28.728706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.461578, 39.254978, 28.793211>,  <41.672188, 39.146603, 28.831913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.461578, 39.254978, 28.793211>,  <41.110561, 39.435608, 28.728706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461578, 39.254978, 28.793211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246332, 0.136021, -0.959593,
		0.411389, 0.881806, 0.230600,
		0.877542, -0.451570, 0.161260,
		41.724842, 39.119507, 28.841589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536079, 39.934170, 28.497597>,  <41.110561, 39.435608, 28.728706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536079, 39.934170, 28.497597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.762997, 39.604931, 28.508070>,  <41.899147, 39.407387, 28.514355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.762997, 39.604931, 28.508070>,  <41.536079, 39.934170, 28.497597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762997, 39.604931, 28.508070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256554, 0.146429, -0.955373,
		0.782533, 0.548695, 0.294238,
		0.567293, -0.823099, 0.026184,
		41.933186, 39.358002, 28.515924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117672, 40.177113, 28.403231>,  <41.536079, 39.934170, 28.497597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117672, 40.177113, 28.403231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.153454, 39.793228, 28.296684>,  <42.174923, 39.562897, 28.232756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.153454, 39.793228, 28.296684>,  <42.117672, 40.177113, 28.403231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153454, 39.793228, 28.296684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406061, 0.279344, -0.870104,
		0.909457, -0.030327, 0.414691,
		0.089454, -0.959712, -0.266366,
		42.180290, 39.505314, 28.216774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624779, 40.254696, 28.012571>,  <42.117672, 40.177113, 28.403231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624779, 40.254696, 28.012571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.543495, 39.870934, 27.934343>,  <42.494724, 39.640675, 27.887407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.543495, 39.870934, 27.934343>,  <42.624779, 40.254696, 28.012571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543495, 39.870934, 27.934343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471177, 0.079271, -0.878469,
		0.858310, -0.270664, 0.435941,
		-0.203213, -0.959404, -0.195570,
		42.482533, 39.583111, 27.875673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243015, 40.018559, 27.909330>,  <42.624779, 40.254696, 28.012571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243015, 40.018559, 27.909330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.991001, 39.765724, 27.728876>,  <42.839794, 39.614025, 27.620604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.991001, 39.765724, 27.728876>,  <43.243015, 40.018559, 27.909330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991001, 39.765724, 27.728876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616083, -0.053182, -0.785883,
		0.472754, -0.773071, 0.422925,
		-0.630035, -0.632087, -0.451134,
		42.801991, 39.576099, 27.593536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529850, 39.289177, 27.744291>,  <43.243015, 40.018559, 27.909330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529850, 39.289177, 27.744291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.250866, 39.366516, 27.468273>,  <43.083473, 39.412922, 27.302662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.250866, 39.366516, 27.468273>,  <43.529850, 39.289177, 27.744291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250866, 39.366516, 27.468273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684761, -0.104108, -0.721293,
		-0.211304, -0.975590, -0.059790,
		-0.697462, 0.193354, -0.690044,
		43.041626, 39.424522, 27.261259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634209, 38.792976, 27.174662>,  <43.529850, 39.289177, 27.744291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634209, 38.792976, 27.174662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.410900, 39.074039, 26.998207>,  <43.276913, 39.242676, 26.892334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.410900, 39.074039, 26.998207>,  <43.634209, 38.792976, 27.174662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410900, 39.074039, 26.998207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703987, 0.119846, -0.700028,
		-0.439013, -0.701361, -0.561570,
		-0.558275, 0.702659, -0.441135,
		43.243420, 39.284836, 26.865866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177570, 38.202744, 27.066248>,  <43.634209, 38.792976, 27.174662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177570, 38.202744, 27.066248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.230263, 37.807472, 27.034866>,  <43.261879, 37.570309, 27.016037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.230263, 37.807472, 27.034866>,  <43.177570, 38.202744, 27.066248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230263, 37.807472, 27.034866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550296, -0.138727, 0.823364,
		-0.824512, -0.065291, -0.562064,
		0.131732, -0.988176, -0.078452,
		43.269783, 37.511021, 27.011330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458691, 37.855457, 27.098871>,  <43.177570, 38.202744, 27.066248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458691, 37.855457, 27.098871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.732887, 37.582821, 27.201273>,  <42.897404, 37.419239, 27.262714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.732887, 37.582821, 27.201273>,  <42.458691, 37.855457, 27.098871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732887, 37.582821, 27.201273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620177, -0.362411, 0.695729,
		-0.381434, -0.635673, -0.671140,
		0.685484, -0.681600, 0.255994,
		42.938534, 37.378345, 27.278074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108814, 37.254230, 27.360693>,  <42.458691, 37.855457, 27.098871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108814, 37.254230, 27.360693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.461239, 37.147896, 27.517187>,  <42.672695, 37.084095, 27.611084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.461239, 37.147896, 27.517187>,  <42.108814, 37.254230, 27.360693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461239, 37.147896, 27.517187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461536, -0.302146, 0.834082,
		-0.103514, -0.915446, -0.388900,
		0.881061, -0.265831, 0.391235,
		42.725555, 37.068146, 27.634558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053574, 36.568737, 27.577423>,  <42.108814, 37.254230, 27.360693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053574, 36.568737, 27.577423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.353352, 36.721813, 27.793526>,  <42.533218, 36.813660, 27.923187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.353352, 36.721813, 27.793526>,  <42.053574, 36.568737, 27.577423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353352, 36.721813, 27.793526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445613, -0.311942, 0.839119,
		0.489650, -0.869622, -0.063254,
		0.749447, 0.382688, 0.540258,
		42.578186, 36.836620, 27.955603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335770, 36.055893, 28.089699>,  <42.053574, 36.568737, 27.577423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335770, 36.055893, 28.089699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.411846, 36.418289, 28.240963>,  <42.457493, 36.635727, 28.331722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.411846, 36.418289, 28.240963>,  <42.335770, 36.055893, 28.089699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411846, 36.418289, 28.240963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165167, -0.350174, 0.922008,
		0.967754, -0.237818, 0.083040,
		0.190192, 0.905992, 0.378162,
		42.468903, 36.690086, 28.354412>
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
