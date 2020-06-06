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
	<24.402136, 35.170795, 34.798370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228430, 34.940563, 35.075535>,  <24.124207, 34.802425, 35.241833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228430, 34.940563, 35.075535>,  <24.402136, 35.170795, 34.798370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228430, 34.940563, 35.075535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678648, 0.714874, 0.168499,
		-0.592327, -0.397068, -0.701061,
		-0.434265, -0.575580, 0.692908,
		24.098150, 34.767891, 35.283409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109673, 35.135662, 34.994358>,  <24.402136, 35.170795, 34.798370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109673, 35.135662, 34.994358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248043, 34.833771, 34.771393>,  <25.331066, 34.652634, 34.637611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248043, 34.833771, 34.771393>,  <25.109673, 35.135662, 34.994358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248043, 34.833771, 34.771393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160970, -0.633026, 0.757210,
		-0.924351, -0.172212, -0.340469,
		0.345926, -0.754733, -0.557417,
		25.351822, 34.607349, 34.604168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678923, 34.580902, 35.053371>,  <25.109673, 35.135662, 34.994358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678923, 34.580902, 35.053371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013680, 34.397026, 34.934513>,  <25.214535, 34.286701, 34.863197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.013680, 34.397026, 34.934513>,  <24.678923, 34.580902, 35.053371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013680, 34.397026, 34.934513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133574, -0.697963, 0.703566,
		-0.530816, -0.549120, -0.645524,
		0.836894, -0.459690, -0.297142,
		25.264748, 34.259121, 34.845371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538565, 33.878536, 35.098930>,  <24.678923, 34.580902, 35.053371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538565, 33.878536, 35.098930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935545, 33.838917, 35.070000>,  <25.173733, 33.815147, 35.052643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.935545, 33.838917, 35.070000>,  <24.538565, 33.878536, 35.098930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.935545, 33.838917, 35.070000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029273, -0.763995, 0.644557,
		-0.119099, -0.637574, -0.761127,
		0.992451, -0.099047, -0.072327,
		25.233280, 33.809204, 35.048302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.666697, 33.174690, 34.974705>,  <24.538565, 33.878536, 35.098930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.666697, 33.174690, 34.974705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992336, 33.336391, 35.141472>,  <25.187721, 33.433411, 35.241531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992336, 33.336391, 35.141472>,  <24.666697, 33.174690, 34.974705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992336, 33.336391, 35.141472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055752, -0.769018, 0.636792,
		0.578042, -0.495168, -0.648595,
		0.814100, 0.404253, 0.416918,
		25.236567, 33.457668, 35.266548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233822, 32.765720, 34.893215>,  <24.666697, 33.174690, 34.974705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233822, 32.765720, 34.893215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289318, 32.924118, 35.256298>,  <25.322617, 33.019157, 35.474148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289318, 32.924118, 35.256298>,  <25.233822, 32.765720, 34.893215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289318, 32.924118, 35.256298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197682, -0.887056, 0.417196,
		0.970398, -0.237321, -0.044792,
		0.138743, 0.395992, 0.907712,
		25.330940, 33.042915, 35.528610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778522, 32.371964, 35.237438>,  <25.233822, 32.765720, 34.893215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778522, 32.371964, 35.237438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565376, 32.550018, 35.525303>,  <25.437489, 32.656849, 35.698021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565376, 32.550018, 35.525303>,  <25.778522, 32.371964, 35.237438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565376, 32.550018, 35.525303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078978, -0.872910, 0.481446,
		0.842507, 0.199709, 0.500299,
		-0.532865, 0.445134, 0.719660,
		25.405518, 32.683559, 35.741199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112354, 32.211502, 35.900700>,  <25.778522, 32.371964, 35.237438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112354, 32.211502, 35.900700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722548, 32.288754, 35.946346>,  <25.488665, 32.335102, 35.973732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.722548, 32.288754, 35.946346>,  <26.112354, 32.211502, 35.900700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.722548, 32.288754, 35.946346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101678, -0.833742, 0.542712,
		0.199954, 0.517278, 0.832131,
		-0.974515, 0.193126, 0.114114,
		25.430193, 32.346691, 35.980579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013508, 31.963665, 36.555996>,  <26.112354, 32.211502, 35.900700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013508, 31.963665, 36.555996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671947, 31.977654, 36.348289>,  <25.467012, 31.986048, 36.223667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671947, 31.977654, 36.348289>,  <26.013508, 31.963665, 36.555996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671947, 31.977654, 36.348289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430278, -0.608721, 0.666573,
		-0.292774, 0.792613, 0.534835,
		-0.853899, 0.034972, -0.519262,
		25.415777, 31.988146, 36.192513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506834, 32.132790, 37.063057>,  <26.013508, 31.963665, 36.555996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506834, 32.132790, 37.063057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320503, 31.959864, 36.754227>,  <25.208704, 31.856108, 36.568928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320503, 31.959864, 36.754227>,  <25.506834, 32.132790, 37.063057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320503, 31.959864, 36.754227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408798, -0.668697, 0.621071,
		-0.784785, 0.604938, 0.134769,
		-0.465829, -0.432314, -0.772080,
		25.180754, 31.830170, 36.522602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760756, 32.098331, 37.249180>,  <25.506834, 32.132790, 37.063057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760756, 32.098331, 37.249180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832121, 31.815496, 36.975479>,  <24.874941, 31.645796, 36.811260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.832121, 31.815496, 36.975479>,  <24.760756, 32.098331, 37.249180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832121, 31.815496, 36.975479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445165, -0.678173, 0.584731,
		-0.877495, 0.200280, -0.435765,
		0.178415, -0.707085, -0.684251,
		24.885645, 31.603371, 36.770203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149494, 31.621077, 37.135754>,  <24.760756, 32.098331, 37.249180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149494, 31.621077, 37.135754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486986, 31.421509, 37.056561>,  <24.689482, 31.301767, 37.009045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486986, 31.421509, 37.056561>,  <24.149494, 31.621077, 37.135754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.486986, 31.421509, 37.056561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279676, -0.723442, 0.631200,
		-0.458148, -0.477191, -0.749925,
		0.843731, -0.498919, -0.197985,
		24.740105, 31.271833, 36.997166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032545, 30.906944, 36.957317>,  <24.149494, 31.621077, 37.135754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.032545, 30.906944, 36.957317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409412, 30.917206, 37.090981>,  <24.635532, 30.923363, 37.171177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.409412, 30.917206, 37.090981>,  <24.032545, 30.906944, 36.957317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.409412, 30.917206, 37.090981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136084, -0.881886, 0.451396,
		0.306269, -0.470765, -0.827394,
		0.942168, 0.025653, 0.334158,
		24.692062, 30.924902, 37.191227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332310, 30.199570, 36.927715>,  <24.032545, 30.906944, 36.957317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.332310, 30.199570, 36.927715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538460, 30.414230, 37.194965>,  <24.662149, 30.543026, 37.355316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538460, 30.414230, 37.194965>,  <24.332310, 30.199570, 36.927715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538460, 30.414230, 37.194965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066796, -0.802428, 0.592998,
		0.854356, -0.260989, -0.449399,
		0.515377, 0.536650, 0.668127,
		24.693073, 30.575226, 37.395405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077549, 30.065102, 37.075699>,  <24.332310, 30.199570, 36.927715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077549, 30.065102, 37.075699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951561, 30.224924, 37.420059>,  <24.875967, 30.320818, 37.626675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.951561, 30.224924, 37.420059>,  <25.077549, 30.065102, 37.075699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.951561, 30.224924, 37.420059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415122, -0.757708, 0.503540,
		0.853503, 0.515979, 0.072793,
		-0.314972, 0.399555, 0.860900,
		24.857069, 30.344791, 37.678329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337511, 30.509224, 36.559002>,  <25.077549, 30.065102, 37.075699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337511, 30.509224, 36.559002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019814, 30.751072, 36.583038>,  <24.829195, 30.896181, 36.597458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.019814, 30.751072, 36.583038>,  <25.337511, 30.509224, 36.559002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.019814, 30.751072, 36.583038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449212, 0.650917, -0.611977,
		-0.409124, -0.459069, -0.788589,
		-0.794246, 0.604619, 0.060087,
		24.781540, 30.932457, 36.601063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122908, 30.718292, 35.838562>,  <25.337511, 30.509224, 36.559002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.122908, 30.718292, 35.838562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999569, 30.990202, 36.104744>,  <24.925566, 31.153347, 36.264454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999569, 30.990202, 36.104744>,  <25.122908, 30.718292, 35.838562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999569, 30.990202, 36.104744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335656, 0.732294, -0.592520,
		-0.890088, 0.040661, -0.453972,
		-0.308348, 0.679774, 0.665454,
		24.907064, 31.194134, 36.304379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562969, 31.243982, 35.541409>,  <25.122908, 30.718292, 35.838562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562969, 31.243982, 35.541409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740433, 31.435030, 35.844734>,  <24.846910, 31.549660, 36.026730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740433, 31.435030, 35.844734>,  <24.562969, 31.243982, 35.541409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740433, 31.435030, 35.844734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195321, 0.774279, -0.601948,
		-0.874653, 0.415175, 0.250225,
		0.443658, 0.477621, 0.758318,
		24.873529, 31.578316, 36.072231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.219362, 31.945938, 35.656445>,  <24.562969, 31.243982, 35.541409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.219362, 31.945938, 35.656445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599316, 31.947624, 35.781475>,  <24.827288, 31.948635, 35.856491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.599316, 31.947624, 35.781475>,  <24.219362, 31.945938, 35.656445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.599316, 31.947624, 35.781475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191285, 0.783016, -0.591859,
		-0.247244, 0.621988, 0.742968,
		0.949884, 0.004215, 0.312573,
		24.884281, 31.948889, 35.875248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.496527, 32.670376, 35.664883>,  <24.219362, 31.945938, 35.656445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.496527, 32.670376, 35.664883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826925, 32.445198, 35.653419>,  <25.025164, 32.310089, 35.646542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826925, 32.445198, 35.653419>,  <24.496527, 32.670376, 35.664883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826925, 32.445198, 35.653419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434914, 0.668830, -0.602924,
		0.358580, 0.485549, 0.797284,
		0.825997, -0.562946, -0.028657,
		25.074724, 32.276314, 35.644821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355856, 32.831043, 36.420818>,  <24.496527, 32.670376, 35.664883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355856, 32.831043, 36.420818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742702, 32.730034, 36.408714>,  <24.974810, 32.669426, 36.401451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742702, 32.730034, 36.408714>,  <24.355856, 32.831043, 36.420818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.742702, 32.730034, 36.408714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192223, 0.803646, -0.563208,
		0.166541, 0.538871, 0.825761,
		0.967116, -0.252527, -0.030256,
		25.032837, 32.654274, 36.399639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.890215, 33.316059, 36.762482>,  <24.355856, 32.831043, 36.420818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.890215, 33.316059, 36.762482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073174, 33.120144, 36.465595>,  <25.182949, 33.002594, 36.287464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.073174, 33.120144, 36.465595>,  <24.890215, 33.316059, 36.762482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.073174, 33.120144, 36.465595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283743, 0.871404, -0.400182,
		0.842779, -0.027557, 0.537553,
		0.457398, -0.489792, -0.742220,
		25.210392, 32.973206, 36.242928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545666, 33.587055, 36.678085>,  <24.890215, 33.316059, 36.762482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545666, 33.587055, 36.678085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518623, 33.387302, 36.332588>,  <25.502398, 33.267452, 36.125290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518623, 33.387302, 36.332588>,  <25.545666, 33.587055, 36.678085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518623, 33.387302, 36.332588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437809, 0.763070, -0.475443,
		0.896523, -0.410296, 0.167046,
		-0.067604, -0.499380, -0.863742,
		25.498343, 33.237488, 36.073467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731079, 34.075474, 36.199738>,  <25.545666, 33.587055, 36.678085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731079, 34.075474, 36.199738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704971, 33.740631, 35.982487>,  <25.689306, 33.539726, 35.852135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704971, 33.740631, 35.982487>,  <25.731079, 34.075474, 36.199738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704971, 33.740631, 35.982487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259583, 0.511304, -0.819259,
		0.963512, -0.194460, 0.183926,
		-0.065271, -0.837110, -0.543126,
		25.685390, 33.489498, 35.819550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350275, 33.943790, 35.677071>,  <25.731079, 34.075474, 36.199738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350275, 33.943790, 35.677071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009939, 33.779442, 35.546070>,  <25.805738, 33.680832, 35.467468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009939, 33.779442, 35.546070>,  <26.350275, 33.943790, 35.677071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009939, 33.779442, 35.546070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134071, 0.432910, -0.891411,
		0.508032, -0.802357, -0.313251,
		-0.850840, -0.410867, -0.327505,
		25.754686, 33.656181, 35.447819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543856, 33.768986, 35.044003>,  <26.350275, 33.943790, 35.677071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543856, 33.768986, 35.044003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144115, 33.782566, 35.039143>,  <25.904272, 33.790714, 35.036224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144115, 33.782566, 35.039143>,  <26.543856, 33.768986, 35.044003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144115, 33.782566, 35.039143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021601, 0.293700, -0.955654,
		-0.028875, -0.955295, -0.294242,
		-0.999350, 0.033950, -0.012154,
		25.844311, 33.792751, 35.035496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342396, 33.507374, 34.508667>,  <26.543856, 33.768986, 35.044003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342396, 33.507374, 34.508667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030413, 33.735516, 34.611706>,  <25.843222, 33.872402, 34.673531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030413, 33.735516, 34.611706>,  <26.342396, 33.507374, 34.508667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030413, 33.735516, 34.611706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084671, 0.504000, -0.859544,
		-0.620076, -0.648598, -0.441392,
		-0.779959, 0.570356, 0.257601,
		25.796425, 33.906624, 34.688988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942099, 33.675163, 33.952854>,  <26.342396, 33.507374, 34.508667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942099, 33.675163, 33.952854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831337, 33.987762, 34.176491>,  <25.764879, 34.175323, 34.310673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831337, 33.987762, 34.176491>,  <25.942099, 33.675163, 33.952854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831337, 33.987762, 34.176491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015769, 0.585460, -0.810548,
		-0.960768, -0.215628, -0.174440,
		-0.276904, 0.781499, 0.559091,
		25.748266, 34.222214, 34.344219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293097, 33.989323, 33.787811>,  <25.942099, 33.675163, 33.952854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293097, 33.989323, 33.787811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513763, 34.275932, 33.958576>,  <25.646164, 34.447899, 34.061035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513763, 34.275932, 33.958576>,  <25.293097, 33.989323, 33.787811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513763, 34.275932, 33.958576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012330, 0.518800, -0.854807,
		-0.833972, 0.466307, 0.295041,
		0.551669, 0.716523, 0.426914,
		25.679264, 34.490891, 34.086651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076406, 34.590870, 33.441231>,  <25.293097, 33.989323, 33.787811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076406, 34.590870, 33.441231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391020, 34.700100, 33.662788>,  <25.579788, 34.765636, 33.795723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.391020, 34.700100, 33.662788>,  <25.076406, 34.590870, 33.441231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391020, 34.700100, 33.662788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255109, 0.673144, -0.694115,
		-0.562394, 0.687248, 0.459786,
		0.786531, 0.273071, 0.553896,
		25.626980, 34.782021, 33.828957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026390, 35.311451, 33.562927>,  <25.076406, 34.590870, 33.441231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026390, 35.311451, 33.562927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403870, 35.180424, 33.581406>,  <25.630358, 35.101807, 33.592491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403870, 35.180424, 33.581406>,  <25.026390, 35.311451, 33.562927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403870, 35.180424, 33.581406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283763, 0.729782, -0.622011,
		0.170039, 0.600099, 0.781645,
		0.943698, -0.327568, 0.046195,
		25.686979, 35.082153, 33.595264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.617983, 35.828548, 33.842812>,  <25.026390, 35.311451, 33.562927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.617983, 35.828548, 33.842812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766199, 35.561882, 33.584122>,  <25.855129, 35.401882, 33.428909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766199, 35.561882, 33.584122>,  <25.617983, 35.828548, 33.842812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766199, 35.561882, 33.584122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399588, 0.742979, -0.536947,
		0.838469, -0.059464, 0.541696,
		0.370540, -0.666668, -0.646725,
		25.877361, 35.361881, 33.390102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232635, 36.117405, 33.668739>,  <25.617983, 35.828548, 33.842812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232635, 36.117405, 33.668739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168068, 35.837334, 33.390549>,  <26.129328, 35.669292, 33.223633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168068, 35.837334, 33.390549>,  <26.232635, 36.117405, 33.668739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168068, 35.837334, 33.390549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464724, 0.567768, -0.679464,
		0.870618, -0.432884, 0.233742,
		-0.161417, -0.700179, -0.695481,
		26.119642, 35.627281, 33.181904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928114, 36.022243, 33.212982>,  <26.232635, 36.117405, 33.668739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928114, 36.022243, 33.212982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579203, 35.931057, 33.039936>,  <26.369856, 35.876343, 32.936108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579203, 35.931057, 33.039936>,  <26.928114, 36.022243, 33.212982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579203, 35.931057, 33.039936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244588, 0.562675, -0.789667,
		0.423442, -0.794624, -0.435051,
		-0.872280, -0.227970, -0.432616,
		26.317518, 35.862667, 32.910152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110479, 35.910561, 32.634476>,  <26.928114, 36.022243, 33.212982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110479, 35.910561, 32.634476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720299, 35.987740, 32.592022>,  <26.486191, 36.034046, 32.566547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720299, 35.987740, 32.592022>,  <27.110479, 35.910561, 32.634476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720299, 35.987740, 32.592022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177022, 0.400375, -0.899090,
		-0.130980, -0.895808, -0.424702,
		-0.975453, 0.192944, -0.106137,
		26.427664, 36.045624, 32.560181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961081, 36.071644, 31.941463>,  <27.110479, 35.910561, 32.634476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961081, 36.071644, 31.941463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599825, 35.949245, 32.061935>,  <26.383072, 35.875805, 32.134220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.599825, 35.949245, 32.061935>,  <26.961081, 36.071644, 31.941463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599825, 35.949245, 32.061935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389351, 0.288035, -0.874895,
		0.180962, -0.907416, -0.379274,
		-0.903139, -0.305993, 0.301180,
		26.328884, 35.857445, 32.152290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.584969, 35.629971, 31.407387>,  <26.961081, 36.071644, 31.941463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.584969, 35.629971, 31.407387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310120, 35.804276, 31.639929>,  <26.145210, 35.908859, 31.779455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310120, 35.804276, 31.639929>,  <26.584969, 35.629971, 31.407387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310120, 35.804276, 31.639929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364759, 0.485116, -0.794741,
		-0.628341, -0.758140, -0.174388,
		-0.687124, 0.435758, 0.581357,
		26.103983, 35.935001, 31.814337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023617, 35.737217, 30.924520>,  <26.584969, 35.629971, 31.407387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023617, 35.737217, 30.924520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948919, 35.979446, 31.233946>,  <25.904100, 36.124786, 31.419601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948919, 35.979446, 31.233946>,  <26.023617, 35.737217, 30.924520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948919, 35.979446, 31.233946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567318, 0.576378, -0.588166,
		-0.802046, -0.548693, 0.235921,
		-0.186743, 0.605578, 0.773565,
		25.892897, 36.161121, 31.466015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267162, 35.903034, 31.028986>,  <26.023617, 35.737217, 30.924520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267162, 35.903034, 31.028986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511356, 36.196201, 31.149075>,  <25.657873, 36.372101, 31.221128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511356, 36.196201, 31.149075>,  <25.267162, 35.903034, 31.028986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511356, 36.196201, 31.149075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418584, 0.620356, -0.663285,
		-0.672381, 0.279256, 0.685507,
		0.610484, 0.732922, 0.300224,
		25.694502, 36.416077, 31.239141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.004217, 36.254410, 30.477930>,  <25.267162, 35.903034, 31.028986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.004217, 36.254410, 30.477930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919298, 36.645260, 30.482975>,  <24.868347, 36.879768, 30.486002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919298, 36.645260, 30.482975>,  <25.004217, 36.254410, 30.477930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919298, 36.645260, 30.482975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441055, 0.084295, 0.893513,
		0.872009, 0.195254, -0.448861,
		-0.212299, 0.977123, 0.012611,
		24.855608, 36.938396, 30.486759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621023, 36.556244, 30.525606>,  <25.004217, 36.254410, 30.477930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621023, 36.556244, 30.525606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324684, 36.767834, 30.691174>,  <25.146881, 36.894787, 30.790514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.324684, 36.767834, 30.691174>,  <25.621023, 36.556244, 30.525606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.324684, 36.767834, 30.691174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458329, -0.052356, 0.887239,
		0.490998, 0.847021, -0.203657,
		-0.740848, 0.528975, 0.413921,
		25.102430, 36.926525, 30.815350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045359, 37.050789, 31.013840>,  <25.621023, 36.556244, 30.525606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045359, 37.050789, 31.013840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668810, 36.973652, 31.124569>,  <25.442881, 36.927368, 31.191006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668810, 36.973652, 31.124569>,  <26.045359, 37.050789, 31.013840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668810, 36.973652, 31.124569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320498, -0.254923, 0.912302,
		-0.105365, 0.947536, 0.301784,
		-0.941371, -0.192846, 0.276824,
		25.386398, 36.915798, 31.207617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822634, 37.412865, 31.698435>,  <26.045359, 37.050789, 31.013840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822634, 37.412865, 31.698435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692425, 37.048874, 31.595694>,  <25.614300, 36.830479, 31.534048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692425, 37.048874, 31.595694>,  <25.822634, 37.412865, 31.698435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692425, 37.048874, 31.595694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348770, -0.368052, 0.861915,
		-0.878860, 0.190991, 0.437182,
		-0.325524, -0.909978, -0.256855,
		25.594769, 36.775879, 31.518637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413578, 37.170750, 32.227234>,  <25.822634, 37.412865, 31.698435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413578, 37.170750, 32.227234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568798, 36.861935, 32.025890>,  <25.661930, 36.676643, 31.905083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568798, 36.861935, 32.025890>,  <25.413578, 37.170750, 32.227234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568798, 36.861935, 32.025890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401538, -0.349978, 0.846335,
		-0.829570, -0.530537, 0.174195,
		0.388048, -0.772040, -0.503362,
		25.685213, 36.630322, 31.874882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.323908, 36.581715, 32.661217>,  <25.413578, 37.170750, 32.227234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.323908, 36.581715, 32.661217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568262, 36.401100, 32.401085>,  <25.714874, 36.292732, 32.245007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568262, 36.401100, 32.401085>,  <25.323908, 36.581715, 32.661217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568262, 36.401100, 32.401085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259310, -0.661999, 0.703218,
		-0.748049, -0.598224, -0.287317,
		0.610885, -0.451537, -0.650333,
		25.751528, 36.265640, 32.205986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183155, 35.835823, 32.600723>,  <25.323908, 36.581715, 32.661217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183155, 35.835823, 32.600723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565369, 35.880489, 32.491558>,  <25.794697, 35.907288, 32.426060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565369, 35.880489, 32.491558>,  <25.183155, 35.835823, 32.600723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565369, 35.880489, 32.491558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263963, -0.736453, 0.622864,
		-0.131438, -0.667209, -0.733183,
		0.955535, 0.111665, -0.272916,
		25.852030, 35.913990, 32.409683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373188, 35.213596, 32.382885>,  <25.183155, 35.835823, 32.600723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373188, 35.213596, 32.382885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684914, 35.420029, 32.525059>,  <25.871948, 35.543888, 32.610363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684914, 35.420029, 32.525059>,  <25.373188, 35.213596, 32.382885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684914, 35.420029, 32.525059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288421, -0.798968, 0.527697,
		0.556314, -0.308726, -0.771494,
		0.779312, 0.516081, 0.355434,
		25.918707, 35.574852, 32.631687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916372, 34.727577, 32.202900>,  <25.373188, 35.213596, 32.382885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916372, 34.727577, 32.202900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985685, 34.976685, 32.508091>,  <26.027273, 35.126148, 32.691204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985685, 34.976685, 32.508091>,  <25.916372, 34.727577, 32.202900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985685, 34.976685, 32.508091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153547, -0.782303, 0.603677,
		0.972830, 0.012547, -0.231183,
		0.173280, 0.622772, 0.762974,
		26.037670, 35.163517, 32.736984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456856, 34.382408, 32.646214>,  <25.916372, 34.727577, 32.202900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456856, 34.382408, 32.646214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293921, 34.671188, 32.869949>,  <26.196159, 34.844456, 33.004192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293921, 34.671188, 32.869949>,  <26.456856, 34.382408, 32.646214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293921, 34.671188, 32.869949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070723, -0.585681, 0.807451,
		0.910534, 0.368465, 0.187513,
		-0.407340, 0.721950, 0.559341,
		26.171719, 34.887772, 33.037750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723951, 34.464294, 33.280251>,  <26.456856, 34.382408, 32.646214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723951, 34.464294, 33.280251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354759, 34.605091, 33.342491>,  <26.133244, 34.689568, 33.379833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354759, 34.605091, 33.342491>,  <26.723951, 34.464294, 33.280251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354759, 34.605091, 33.342491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098171, -0.606276, 0.789172,
		0.372115, 0.713115, 0.594136,
		-0.922980, 0.351990, 0.155598,
		26.077866, 34.710690, 33.389172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260267, 34.165356, 33.595257>,  <26.723951, 34.464294, 33.280251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260267, 34.165356, 33.595257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358931, 34.034252, 33.960056>,  <27.418129, 33.955589, 34.178936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.358931, 34.034252, 33.960056>,  <27.260267, 34.165356, 33.595257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358931, 34.034252, 33.960056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115397, 0.944310, 0.308160,
		-0.962207, 0.029231, 0.270745,
		0.246659, -0.327757, 0.911995,
		27.432928, 33.935925, 34.233654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790911, 34.356434, 34.349831>,  <27.260267, 34.165356, 33.595257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790911, 34.356434, 34.349831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184965, 34.297852, 34.385735>,  <27.421398, 34.262703, 34.407276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.184965, 34.297852, 34.385735>,  <26.790911, 34.356434, 34.349831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.184965, 34.297852, 34.385735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121874, 0.964173, 0.235620,
		-0.121048, -0.221180, 0.967692,
		0.985137, -0.146458, 0.089755,
		27.480507, 34.253914, 34.412663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997995, 34.958649, 34.674877>,  <26.790911, 34.356434, 34.349831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997995, 34.958649, 34.674877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361263, 34.863140, 34.537346>,  <27.579224, 34.805836, 34.454826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361263, 34.863140, 34.537346>,  <26.997995, 34.958649, 34.674877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361263, 34.863140, 34.537346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287677, 0.952673, 0.098260,
		0.304092, -0.188148, 0.933878,
		0.908168, -0.238775, -0.343826,
		27.633715, 34.791508, 34.434196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474714, 35.150169, 35.124435>,  <26.997995, 34.958649, 34.674877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474714, 35.150169, 35.124435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734985, 35.165131, 34.821064>,  <27.891148, 35.174107, 34.639042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734985, 35.165131, 34.821064>,  <27.474714, 35.150169, 35.124435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734985, 35.165131, 34.821064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066864, 0.992085, 0.106289,
		0.756404, -0.119872, 0.643027,
		0.650678, 0.037402, -0.758432,
		27.930189, 35.176350, 34.593533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173956, 35.225586, 35.261635>,  <27.474714, 35.150169, 35.124435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173956, 35.225586, 35.261635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007427, 35.399914, 34.942451>,  <27.907511, 35.504509, 34.750942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007427, 35.399914, 34.942451>,  <28.173956, 35.225586, 35.261635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007427, 35.399914, 34.942451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210158, 0.899993, 0.381898,
		0.884596, -0.008705, -0.466277,
		-0.416322, 0.435817, -0.797960,
		27.882530, 35.530659, 34.703064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682442, 35.630634, 34.857937>,  <28.173956, 35.225586, 35.261635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682442, 35.630634, 34.857937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308931, 35.770248, 34.826336>,  <28.084826, 35.854015, 34.807373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308931, 35.770248, 34.826336>,  <28.682442, 35.630634, 34.857937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308931, 35.770248, 34.826336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251529, 0.797161, 0.548878,
		0.254558, 0.492655, -0.832160,
		-0.933774, 0.349034, -0.079006,
		28.028799, 35.874958, 34.802635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071875, 35.279476, 34.404057>,  <28.682442, 35.630634, 34.857937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071875, 35.279476, 34.404057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114296, 34.904247, 34.272141>,  <29.139750, 34.679108, 34.192989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114296, 34.904247, 34.272141>,  <29.071875, 35.279476, 34.404057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114296, 34.904247, 34.272141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776440, 0.285324, -0.561900,
		0.621203, -0.196474, 0.758620,
		0.106054, -0.938077, -0.329794,
		29.146112, 34.622826, 34.173203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792154, 35.113514, 34.547573>,  <29.071875, 35.279476, 34.404057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792154, 35.113514, 34.547573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646427, 34.867794, 34.267597>,  <29.558990, 34.720364, 34.099613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646427, 34.867794, 34.267597>,  <29.792154, 35.113514, 34.547573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646427, 34.867794, 34.267597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784252, 0.202940, -0.586314,
		0.502215, -0.762533, 0.407828,
		-0.364319, -0.614295, -0.699938,
		29.537130, 34.683506, 34.057617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390547, 34.891933, 34.209595>,  <29.792154, 35.113514, 34.547573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390547, 34.891933, 34.209595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122726, 34.745121, 33.951298>,  <29.962034, 34.657032, 33.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122726, 34.745121, 33.951298>,  <30.390547, 34.891933, 34.209595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122726, 34.745121, 33.951298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730568, -0.168503, -0.661723,
		0.134065, -0.914818, 0.380965,
		-0.669550, -0.367034, -0.645747,
		29.921862, 34.635010, 33.757572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688646, 34.281544, 34.010796>,  <30.390547, 34.891933, 34.209595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688646, 34.281544, 34.010796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443562, 34.405827, 33.720131>,  <30.296511, 34.480396, 33.545731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443562, 34.405827, 33.720131>,  <30.688646, 34.281544, 34.010796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443562, 34.405827, 33.720131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711913, -0.182260, -0.678205,
		-0.343166, -0.932868, -0.109524,
		-0.612713, 0.310709, -0.726665,
		30.259747, 34.499039, 33.502132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727360, 33.793514, 33.516193>,  <30.688646, 34.281544, 34.010796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727360, 33.793514, 33.516193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652256, 34.137989, 33.327255>,  <30.607193, 34.344673, 33.213894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652256, 34.137989, 33.327255>,  <30.727360, 33.793514, 33.516193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652256, 34.137989, 33.327255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807502, -0.138435, -0.573390,
		-0.559183, -0.489077, -0.669416,
		-0.187761, 0.861185, -0.472341,
		30.595928, 34.396343, 33.185555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599426, 33.705063, 32.765381>,  <30.727360, 33.793514, 33.516193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599426, 33.705063, 32.765381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804932, 34.034904, 32.860107>,  <30.928234, 34.232807, 32.916943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804932, 34.034904, 32.860107>,  <30.599426, 33.705063, 32.765381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804932, 34.034904, 32.860107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720664, -0.265023, -0.640629,
		-0.465501, 0.499797, -0.730419,
		0.513762, 0.824601, 0.236817,
		30.959061, 34.282284, 32.931152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796886, 34.181683, 32.135784>,  <30.599426, 33.705063, 32.765381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796886, 34.181683, 32.135784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034061, 34.197906, 32.457474>,  <31.176367, 34.207642, 32.650490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034061, 34.197906, 32.457474>,  <30.796886, 34.181683, 32.135784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034061, 34.197906, 32.457474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775979, -0.295603, -0.557203,
		0.215133, 0.954450, -0.206746,
		0.592937, 0.040558, 0.804227,
		31.211943, 34.210075, 32.698742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402843, 34.617229, 32.043026>,  <30.796886, 34.181683, 32.135784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402843, 34.617229, 32.043026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638901, 34.389099, 32.271572>,  <31.780535, 34.252220, 32.408699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.638901, 34.389099, 32.271572>,  <31.402843, 34.617229, 32.043026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638901, 34.389099, 32.271572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423347, -0.384002, -0.820560,
		0.687394, 0.726134, 0.014830,
		0.590142, -0.570326, 0.571367,
		31.815943, 34.218002, 32.442982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139542, 34.734795, 31.916981>,  <31.402843, 34.617229, 32.043026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139542, 34.734795, 31.916981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108292, 34.364384, 32.064693>,  <32.089542, 34.142136, 32.153320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108292, 34.364384, 32.064693>,  <32.139542, 34.734795, 31.916981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108292, 34.364384, 32.064693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421745, -0.366333, -0.829417,
		0.903343, 0.090948, 0.419166,
		-0.078121, -0.926029, 0.369281,
		32.084854, 34.086575, 32.175476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430645, 35.077625, 31.290691>,  <32.139542, 34.734795, 31.916981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430645, 35.077625, 31.290691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237591, 35.287819, 31.010427>,  <32.121758, 35.413937, 30.842268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237591, 35.287819, 31.010427>,  <32.430645, 35.077625, 31.290691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237591, 35.287819, 31.010427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797576, -0.066816, -0.599506,
		-0.361848, -0.848174, -0.386868,
		-0.482637, 0.525486, -0.700661,
		32.092800, 35.445465, 30.800230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538036, 34.709320, 30.669027>,  <32.430645, 35.077625, 31.290691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538036, 34.709320, 30.669027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461666, 35.095051, 30.595680>,  <32.415844, 35.326488, 30.551672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461666, 35.095051, 30.595680>,  <32.538036, 34.709320, 30.669027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461666, 35.095051, 30.595680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787921, 0.039145, -0.614531,
		-0.585430, -0.261808, -0.767286,
		-0.190925, 0.964326, -0.183367,
		32.404388, 35.384350, 30.540670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376217, 34.897610, 29.959076>,  <32.538036, 34.709320, 30.669027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376217, 34.897610, 29.959076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524643, 35.231270, 30.122297>,  <32.613697, 35.431465, 30.220230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524643, 35.231270, 30.122297>,  <32.376217, 34.897610, 29.959076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524643, 35.231270, 30.122297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728275, 0.011218, -0.685193,
		-0.576130, 0.551426, -0.603327,
		0.371065, 0.834148, 0.408053,
		32.635963, 35.481514, 30.244713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695038, 35.372696, 29.387562>,  <32.376217, 34.897610, 29.959076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695038, 35.372696, 29.387562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878448, 35.509022, 29.715853>,  <32.988495, 35.590816, 29.912828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878448, 35.509022, 29.715853>,  <32.695038, 35.372696, 29.387562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878448, 35.509022, 29.715853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888611, -0.164486, -0.428152,
		-0.010922, 0.925630, -0.378273,
		0.458531, 0.340814, 0.820729,
		33.016006, 35.611267, 29.962070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347385, 35.516422, 29.123070>,  <32.695038, 35.372696, 29.387562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347385, 35.516422, 29.123070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424057, 35.570866, 29.511860>,  <33.470058, 35.603531, 29.745134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424057, 35.570866, 29.511860>,  <33.347385, 35.516422, 29.123070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424057, 35.570866, 29.511860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967741, -0.191206, -0.164065,
		0.163518, 0.972068, -0.168363,
		0.191675, 0.136105, 0.971976,
		33.481560, 35.611698, 29.803453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944386, 35.987144, 29.096737>,  <33.347385, 35.516422, 29.123070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944386, 35.987144, 29.096737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939831, 35.805874, 29.453276>,  <33.937096, 35.697113, 29.667200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939831, 35.805874, 29.453276>,  <33.944386, 35.987144, 29.096737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939831, 35.805874, 29.453276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911603, -0.371020, -0.176983,
		0.410913, 0.810541, 0.417341,
		-0.011390, -0.453175, 0.891349,
		33.936413, 35.669922, 29.720680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631058, 36.067661, 29.413206>,  <33.944386, 35.987144, 29.096737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631058, 36.067661, 29.413206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466179, 35.745766, 29.584084>,  <34.367252, 35.552628, 29.686609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466179, 35.745766, 29.584084>,  <34.631058, 36.067661, 29.413206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466179, 35.745766, 29.584084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861508, -0.496839, -0.104668,
		0.296476, 0.324885, 0.898082,
		-0.412197, -0.804736, 0.427192,
		34.342518, 35.504345, 29.712240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075981, 35.917904, 29.910677>,  <34.631058, 36.067661, 29.413206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075981, 35.917904, 29.910677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882557, 35.576305, 29.833883>,  <34.766502, 35.371346, 29.787807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882557, 35.576305, 29.833883>,  <35.075981, 35.917904, 29.910677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882557, 35.576305, 29.833883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875037, -0.466182, -0.130325,
		0.021796, -0.231015, 0.972706,
		-0.483565, -0.853994, -0.191985,
		34.737488, 35.320107, 29.776287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463207, 35.601189, 30.310446>,  <35.075981, 35.917904, 29.910677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463207, 35.601189, 30.310446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269951, 35.330235, 30.088554>,  <35.153996, 35.167664, 29.955420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269951, 35.330235, 30.088554>,  <35.463207, 35.601189, 30.310446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269951, 35.330235, 30.088554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872284, -0.427000, -0.238310,
		-0.075441, -0.599018, 0.797174,
		-0.483145, -0.677384, -0.554728,
		35.125008, 35.127018, 29.922136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882008, 34.931686, 30.335573>,  <35.463207, 35.601189, 30.310446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882008, 34.931686, 30.335573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660290, 34.888424, 30.005468>,  <35.527260, 34.862469, 29.807405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660290, 34.888424, 30.005468>,  <35.882008, 34.931686, 30.335573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660290, 34.888424, 30.005468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789645, -0.381744, -0.480346,
		-0.263087, -0.917918, 0.297004,
		-0.554298, -0.108155, -0.825261,
		35.493999, 34.855976, 29.757891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181873, 34.380402, 30.066137>,  <35.882008, 34.931686, 30.335573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181873, 34.380402, 30.066137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950104, 34.500206, 29.762939>,  <35.811043, 34.572090, 29.581020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950104, 34.500206, 29.762939>,  <36.181873, 34.380402, 30.066137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950104, 34.500206, 29.762939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631980, -0.422162, -0.649908,
		-0.514654, -0.855611, 0.055324,
		-0.579425, 0.299514, -0.757996,
		35.776276, 34.590061, 29.535542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103180, 33.764076, 29.602497>,  <36.181873, 34.380402, 30.066137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103180, 33.764076, 29.602497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024052, 34.083530, 29.375149>,  <35.976574, 34.275204, 29.238739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024052, 34.083530, 29.375149>,  <36.103180, 33.764076, 29.602497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024052, 34.083530, 29.375149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666290, -0.315735, -0.675551,
		-0.718974, -0.512341, -0.469663,
		-0.197823, 0.798635, -0.568373,
		35.964706, 34.323120, 29.204638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988201, 33.462109, 28.932682>,  <36.103180, 33.764076, 29.602497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988201, 33.462109, 28.932682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103165, 33.843758, 28.899120>,  <36.172142, 34.072746, 28.878984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103165, 33.843758, 28.899120>,  <35.988201, 33.462109, 28.932682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103165, 33.843758, 28.899120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548995, -0.235887, -0.801850,
		-0.784856, 0.184399, -0.591606,
		0.287413, 0.954125, -0.083903,
		36.189388, 34.129993, 28.873949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968342, 33.542473, 28.217852>,  <35.988201, 33.462109, 28.932682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968342, 33.542473, 28.217852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181149, 33.859535, 28.336945>,  <36.308834, 34.049774, 28.408401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181149, 33.859535, 28.336945>,  <35.968342, 33.542473, 28.217852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181149, 33.859535, 28.336945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627864, -0.133386, -0.766809,
		-0.568105, 0.594893, -0.568647,
		0.532019, 0.792660, 0.297734,
		36.340755, 34.097332, 28.426266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074345, 33.933002, 27.634560>,  <35.968342, 33.542473, 28.217852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074345, 33.933002, 27.634560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351891, 34.082035, 27.881052>,  <36.518417, 34.171455, 28.028948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351891, 34.082035, 27.881052>,  <36.074345, 33.933002, 27.634560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351891, 34.082035, 27.881052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670250, -0.021259, -0.741831,
		-0.263291, 0.927756, -0.264472,
		0.693861, 0.372580, 0.616231,
		36.560047, 34.193810, 28.065922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305504, 34.551380, 27.286016>,  <36.074345, 33.933002, 27.634560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305504, 34.551380, 27.286016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579453, 34.414700, 27.543446>,  <36.743820, 34.332691, 27.697903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579453, 34.414700, 27.543446>,  <36.305504, 34.551380, 27.286016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579453, 34.414700, 27.543446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705799, 0.091578, -0.702468,
		0.181098, 0.935336, 0.303893,
		0.684873, -0.341703, 0.643574,
		36.784916, 34.312187, 27.736519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822117, 35.020821, 27.444170>,  <36.305504, 34.551380, 27.286016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822117, 35.020821, 27.444170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986580, 34.660645, 27.500957>,  <37.085258, 34.444538, 27.535030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986580, 34.660645, 27.500957>,  <36.822117, 35.020821, 27.444170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986580, 34.660645, 27.500957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775092, 0.263368, -0.574344,
		0.479771, 0.346187, 0.806210,
		0.411160, -0.900440, 0.141970,
		37.109928, 34.390514, 27.543549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513554, 35.121387, 27.605928>,  <36.822117, 35.020821, 27.444170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513554, 35.121387, 27.605928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482605, 34.741394, 27.484903>,  <37.464035, 34.513397, 27.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482605, 34.741394, 27.484903>,  <37.513554, 35.121387, 27.605928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482605, 34.741394, 27.484903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764362, 0.138327, -0.629775,
		0.640129, -0.279995, 0.715429,
		-0.077371, -0.949983, -0.302565,
		37.459393, 34.456398, 27.394135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200516, 34.934814, 27.499643>,  <37.513554, 35.121387, 27.605928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200516, 34.934814, 27.499643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999641, 34.663296, 27.285337>,  <37.879116, 34.500385, 27.156754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999641, 34.663296, 27.285337>,  <38.200516, 34.934814, 27.499643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999641, 34.663296, 27.285337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638645, 0.126600, -0.759016,
		0.583044, -0.723332, 0.369932,
		-0.502187, -0.678795, -0.535766,
		37.848984, 34.459656, 27.124607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678802, 34.602314, 27.211565>,  <38.200516, 34.934814, 27.499643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678802, 34.602314, 27.211565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366238, 34.545677, 26.968468>,  <38.178699, 34.511696, 26.822609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366238, 34.545677, 26.968468>,  <38.678802, 34.602314, 27.211565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366238, 34.545677, 26.968468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597473, 0.111281, -0.794130,
		0.180070, -0.983651, -0.002361,
		-0.781410, -0.141589, -0.607743,
		38.131813, 34.503201, 26.786144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948784, 34.139576, 26.705791>,  <38.678802, 34.602314, 27.211565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948784, 34.139576, 26.705791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611343, 34.301296, 26.564442>,  <38.408878, 34.398327, 26.479631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611343, 34.301296, 26.564442>,  <38.948784, 34.139576, 26.705791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611343, 34.301296, 26.564442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447364, 0.165207, -0.878961,
		-0.296985, -0.899582, -0.320239,
		-0.843603, 0.404302, -0.353377,
		38.358261, 34.422588, 26.458429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731506, 33.778912, 26.044619>,  <38.948784, 34.139576, 26.705791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731506, 33.778912, 26.044619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566612, 34.142723, 26.065861>,  <38.467674, 34.361012, 26.078606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566612, 34.142723, 26.065861>,  <38.731506, 33.778912, 26.044619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566612, 34.142723, 26.065861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241176, 0.165147, -0.956327,
		-0.878576, -0.381425, -0.287436,
		-0.412236, 0.909528, 0.053103,
		38.442940, 34.415581, 26.081791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501877, 33.921139, 25.457859>,  <38.731506, 33.778912, 26.044619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501877, 33.921139, 25.457859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484165, 34.298489, 25.589363>,  <38.473537, 34.524899, 25.668266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.484165, 34.298489, 25.589363>,  <38.501877, 33.921139, 25.457859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484165, 34.298489, 25.589363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340057, 0.323666, -0.882951,
		-0.939362, 0.072701, -0.335132,
		-0.044280, 0.943374, 0.328762,
		38.470882, 34.581501, 25.687992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140045, 34.273960, 25.014544>,  <38.501877, 33.921139, 25.457859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140045, 34.273960, 25.014544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334106, 34.572563, 25.196688>,  <38.450542, 34.751724, 25.305975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.334106, 34.572563, 25.196688>,  <38.140045, 34.273960, 25.014544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334106, 34.572563, 25.196688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124612, 0.456415, -0.880998,
		-0.865505, 0.484162, 0.128407,
		0.485153, 0.746507, 0.455361,
		38.479652, 34.796516, 25.333296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908703, 34.944733, 24.702206>,  <38.140045, 34.273960, 25.014544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908703, 34.944733, 24.702206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286049, 34.976265, 24.831104>,  <38.512459, 34.995186, 24.908443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286049, 34.976265, 24.831104>,  <37.908703, 34.944733, 24.702206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286049, 34.976265, 24.831104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267557, 0.393500, -0.879529,
		-0.196140, 0.915938, 0.350122,
		0.943367, 0.078833, 0.322247,
		38.569057, 34.999916, 24.927778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142189, 35.571152, 24.351593>,  <37.908703, 34.944733, 24.702206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142189, 35.571152, 24.351593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483036, 35.406540, 24.480925>,  <38.687546, 35.307774, 24.558523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483036, 35.406540, 24.480925>,  <38.142189, 35.571152, 24.351593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483036, 35.406540, 24.480925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451304, 0.264991, -0.852118,
		0.264991, 0.872023, 0.411528,
		0.852118, -0.411528, 0.323327,
		38.738670, 35.283081, 24.577923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659988, 36.065891, 24.164726>,  <38.142189, 35.571152, 24.351593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659988, 36.065891, 24.164726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867729, 35.726349, 24.204157>,  <38.992374, 35.522625, 24.227816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867729, 35.726349, 24.204157>,  <38.659988, 36.065891, 24.164726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867729, 35.726349, 24.204157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336640, 0.097199, -0.936603,
		0.785459, 0.519613, 0.336239,
		0.519353, -0.848855, 0.098576,
		39.023537, 35.471691, 24.233730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348999, 36.195152, 23.969179>,  <38.659988, 36.065891, 24.164726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348999, 36.195152, 23.969179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323509, 35.796352, 23.951574>,  <39.308216, 35.557072, 23.941011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323509, 35.796352, 23.951574>,  <39.348999, 36.195152, 23.969179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323509, 35.796352, 23.951574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466366, 0.009240, -0.884544,
		0.882294, -0.076891, 0.464376,
		-0.063723, -0.996997, -0.044012,
		39.304394, 35.497253, 23.938372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095455, 35.966869, 23.883825>,  <39.348999, 36.195152, 23.969179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095455, 35.966869, 23.883825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841557, 35.688332, 23.749842>,  <39.689217, 35.521210, 23.669451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841557, 35.688332, 23.749842>,  <40.095455, 35.966869, 23.883825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841557, 35.688332, 23.749842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366102, 0.110733, -0.923963,
		0.680486, -0.709116, 0.184644,
		-0.634751, -0.696342, -0.334961,
		39.651131, 35.479427, 23.649353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447811, 35.685909, 23.356247>,  <40.095455, 35.966869, 23.883825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447811, 35.685909, 23.356247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079735, 35.556366, 23.268276>,  <39.858891, 35.478642, 23.215494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079735, 35.556366, 23.268276>,  <40.447811, 35.685909, 23.356247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079735, 35.556366, 23.268276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200380, 0.092968, -0.975297,
		0.336303, -0.941527, -0.020654,
		-0.920189, -0.323857, -0.219929,
		39.803677, 35.459209, 23.202297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456821, 35.179195, 22.759134>,  <40.447811, 35.685909, 23.356247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456821, 35.179195, 22.759134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078640, 35.308475, 22.742872>,  <39.851730, 35.386044, 22.733116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078640, 35.308475, 22.742872>,  <40.456821, 35.179195, 22.759134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078640, 35.308475, 22.742872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053672, 0.031465, -0.998063,
		-0.321297, -0.945807, -0.047096,
		-0.945456, 0.323202, -0.040654,
		39.795002, 35.405437, 22.730677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140903, 34.689754, 22.380133>,  <40.456821, 35.179195, 22.759134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140903, 34.689754, 22.380133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921375, 35.021076, 22.335033>,  <39.789658, 35.219868, 22.307974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921375, 35.021076, 22.335033>,  <40.140903, 34.689754, 22.380133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921375, 35.021076, 22.335033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001326, -0.134015, -0.990978,
		-0.835939, -0.544019, 0.072452,
		-0.548821, 0.828301, -0.112750,
		39.756729, 35.269566, 22.301208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532589, 34.528557, 22.047676>,  <40.140903, 34.689754, 22.380133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532589, 34.528557, 22.047676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609638, 34.914986, 21.978863>,  <39.655869, 35.146843, 21.937574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609638, 34.914986, 21.978863>,  <39.532589, 34.528557, 22.047676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609638, 34.914986, 21.978863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227037, -0.214435, -0.949985,
		-0.954648, 0.143927, -0.260639,
		0.192619, 0.966076, -0.172034,
		39.667423, 35.204807, 21.927252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398586, 34.486244, 21.363316>,  <39.532589, 34.528557, 22.047676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398586, 34.486244, 21.363316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525867, 34.864201, 21.394136>,  <39.602238, 35.090973, 21.412628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525867, 34.864201, 21.394136>,  <39.398586, 34.486244, 21.363316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525867, 34.864201, 21.394136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460503, -0.083014, -0.883768,
		-0.828664, 0.316700, -0.461539,
		0.318203, 0.944886, 0.077050,
		39.621330, 35.147667, 21.417252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315990, 34.746590, 20.713652>,  <39.398586, 34.486244, 21.363316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315990, 34.746590, 20.713652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589947, 34.991257, 20.872038>,  <39.754322, 35.138058, 20.967070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589947, 34.991257, 20.872038>,  <39.315990, 34.746590, 20.713652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589947, 34.991257, 20.872038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448509, 0.074383, -0.890678,
		-0.574248, 0.787613, -0.223392,
		0.684893, 0.611663, 0.395966,
		39.795414, 35.174755, 20.990828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395203, 35.297535, 20.255764>,  <39.315990, 34.746590, 20.713652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395203, 35.297535, 20.255764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735794, 35.242897, 20.458279>,  <39.940147, 35.210114, 20.579788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735794, 35.242897, 20.458279>,  <39.395203, 35.297535, 20.255764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735794, 35.242897, 20.458279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524221, 0.197034, -0.828475,
		0.013412, 0.970834, 0.239378,
		0.851477, -0.136598, 0.506289,
		39.991238, 35.201916, 20.610165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747803, 35.731899, 19.921232>,  <39.395203, 35.297535, 20.255764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747803, 35.731899, 19.921232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031887, 35.526134, 20.113474>,  <40.202339, 35.402676, 20.228819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031887, 35.526134, 20.113474>,  <39.747803, 35.731899, 19.921232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031887, 35.526134, 20.113474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642147, 0.193579, -0.741738,
		0.288520, 0.835411, 0.467808,
		0.710214, -0.514408, 0.480605,
		40.244949, 35.371811, 20.257656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400349, 36.178562, 20.016296>,  <39.747803, 35.731899, 19.921232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400349, 36.178562, 20.016296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504482, 35.792534, 20.028038>,  <40.566963, 35.560917, 20.035084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504482, 35.792534, 20.028038>,  <40.400349, 36.178562, 20.016296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504482, 35.792534, 20.028038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676736, 0.160702, -0.718473,
		0.688660, 0.206911, 0.694936,
		0.260337, -0.965071, 0.029355,
		40.582584, 35.503014, 20.036844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087223, 36.201519, 20.168657>,  <40.400349, 36.178562, 20.016296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087223, 36.201519, 20.168657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004734, 35.854923, 19.986816>,  <40.955238, 35.646965, 19.877712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004734, 35.854923, 19.986816>,  <41.087223, 36.201519, 20.168657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004734, 35.854923, 19.986816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687365, 0.202375, -0.697549,
		0.696420, -0.456330, 0.553861,
		-0.206225, -0.866491, -0.454604,
		40.942867, 35.594975, 19.850435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765835, 35.942173, 19.974478>,  <41.087223, 36.201519, 20.168657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765835, 35.942173, 19.974478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513767, 35.738594, 19.739922>,  <41.362526, 35.616447, 19.599188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513767, 35.738594, 19.739922>,  <41.765835, 35.942173, 19.974478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513767, 35.738594, 19.739922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596668, 0.165850, -0.785163,
		0.496859, -0.844670, 0.199158,
		-0.630173, -0.508946, -0.586392,
		41.324715, 35.585911, 19.564005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251427, 35.630287, 19.537294>,  <41.765835, 35.942173, 19.974478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251427, 35.630287, 19.537294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892593, 35.575031, 19.369410>,  <41.677292, 35.541878, 19.268679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892593, 35.575031, 19.369410>,  <42.251427, 35.630287, 19.537294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892593, 35.575031, 19.369410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406793, 0.112655, -0.906548,
		0.172510, -0.983985, -0.044868,
		-0.897084, -0.138137, -0.419712,
		41.623466, 35.533592, 19.243496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330620, 35.108753, 19.010334>,  <42.251427, 35.630287, 19.537294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330620, 35.108753, 19.010334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022152, 35.342770, 18.909925>,  <41.837070, 35.483181, 18.849680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022152, 35.342770, 18.909925>,  <42.330620, 35.108753, 19.010334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022152, 35.342770, 18.909925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440736, 0.206098, -0.873657,
		-0.459394, -0.784376, -0.416788,
		-0.771174, 0.585046, -0.251022,
		41.790798, 35.518284, 18.834620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230255, 35.035583, 18.252359>,  <42.330620, 35.108753, 19.010334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230255, 35.035583, 18.252359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041126, 35.374844, 18.347929>,  <41.927650, 35.578400, 18.405272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.041126, 35.374844, 18.347929>,  <42.230255, 35.035583, 18.252359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041126, 35.374844, 18.347929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263382, 0.394783, -0.880214,
		-0.840877, -0.353253, -0.410048,
		-0.472818, 0.848150, 0.238923,
		41.899281, 35.629288, 18.419605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951492, 35.186897, 17.668581>,  <42.230255, 35.035583, 18.252359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951492, 35.186897, 17.668581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906773, 35.537521, 17.855833>,  <41.879940, 35.747894, 17.968184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906773, 35.537521, 17.855833>,  <41.951492, 35.186897, 17.668581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906773, 35.537521, 17.855833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205280, 0.481293, -0.852184,
		-0.972296, 0.000821, -0.233750,
		-0.111803, 0.876559, 0.468128,
		41.873230, 35.800488, 17.996271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469658, 35.633766, 17.207439>,  <41.951492, 35.186897, 17.668581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469658, 35.633766, 17.207439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682907, 35.882046, 17.437397>,  <41.810856, 36.031013, 17.575373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682907, 35.882046, 17.437397>,  <41.469658, 35.633766, 17.207439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682907, 35.882046, 17.437397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178692, 0.581576, -0.793624,
		-0.826950, 0.525831, 0.199139,
		0.533127, 0.620703, 0.574895,
		41.842846, 36.068256, 17.609865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213112, 36.395782, 17.149166>,  <41.469658, 35.633766, 17.207439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213112, 36.395782, 17.149166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595562, 36.405956, 17.265911>,  <41.825031, 36.412060, 17.335958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595562, 36.405956, 17.265911>,  <41.213112, 36.395782, 17.149166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595562, 36.405956, 17.265911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232232, 0.541530, -0.807969,
		-0.178605, 0.840296, 0.511861,
		0.956122, 0.025437, 0.291864,
		41.882397, 36.413586, 17.353470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734318, 36.994453, 17.101938>,  <41.213112, 36.395782, 17.149166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734318, 36.994453, 17.101938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777401, 37.391022, 17.131559>,  <41.803253, 37.628963, 17.149332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777401, 37.391022, 17.131559>,  <41.734318, 36.994453, 17.101938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777401, 37.391022, 17.131559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243168, 0.045953, -0.968895,
		-0.963985, 0.122368, -0.236132,
		0.107710, 0.991420, 0.074054,
		41.809715, 37.688446, 17.153776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356983, 37.371155, 16.521812>,  <41.734318, 36.994453, 17.101938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356983, 37.371155, 16.521812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634640, 37.635315, 16.636387>,  <41.801231, 37.793812, 16.705132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634640, 37.635315, 16.636387>,  <41.356983, 37.371155, 16.521812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634640, 37.635315, 16.636387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389870, -0.010405, -0.920811,
		-0.605122, 0.750844, -0.264692,
		0.694139, 0.660398, 0.286435,
		41.842880, 37.833435, 16.722317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523037, 37.710972, 15.930156>,  <41.356983, 37.371155, 16.521812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523037, 37.710972, 15.930156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842197, 37.735138, 16.170057>,  <42.033695, 37.749638, 16.313999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842197, 37.735138, 16.170057>,  <41.523037, 37.710972, 15.930156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842197, 37.735138, 16.170057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602730, -0.093893, -0.792402,
		0.008443, 0.993748, -0.111329,
		0.797900, 0.060411, 0.599755,
		42.081566, 37.753262, 16.349983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964249, 38.262516, 15.715185>,  <41.523037, 37.710972, 15.930156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964249, 38.262516, 15.715185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164375, 37.978165, 15.912907>,  <42.284451, 37.807556, 16.031540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164375, 37.978165, 15.912907>,  <41.964249, 38.262516, 15.715185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164375, 37.978165, 15.912907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514123, -0.215444, -0.830218,
		0.696675, 0.669508, 0.257686,
		0.500321, -0.710874, 0.494304,
		42.314472, 37.764904, 16.061197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753326, 38.410198, 15.969562>,  <41.964249, 38.262516, 15.715185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753326, 38.410198, 15.969562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622883, 38.786880, 15.936470>,  <42.544617, 39.012890, 15.916615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622883, 38.786880, 15.936470>,  <42.753326, 38.410198, 15.969562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622883, 38.786880, 15.936470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314245, -0.025452, 0.949000,
		0.891573, 0.335474, 0.304227,
		-0.326109, 0.941706, -0.082728,
		42.525051, 39.069393, 15.911652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043961, 38.783089, 16.530872>,  <42.753326, 38.410198, 15.969562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043961, 38.783089, 16.530872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682224, 38.913261, 16.420404>,  <42.465183, 38.991364, 16.354124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682224, 38.913261, 16.420404>,  <43.043961, 38.783089, 16.530872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682224, 38.913261, 16.420404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320281, -0.089720, 0.943065,
		0.282122, 0.941301, 0.185366,
		-0.904338, 0.325428, -0.276168,
		42.410923, 39.010891, 16.337555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850204, 39.388920, 16.734074>,  <43.043961, 38.783089, 16.530872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850204, 39.388920, 16.734074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534634, 39.146336, 16.694481>,  <42.345291, 39.000786, 16.670725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534634, 39.146336, 16.694481>,  <42.850204, 39.388920, 16.734074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534634, 39.146336, 16.694481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089153, -0.046412, 0.994936,
		-0.607987, 0.793755, -0.017453,
		-0.788926, -0.606464, -0.098984,
		42.297955, 38.964397, 16.664785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608589, 38.806885, 17.120739>,  <42.850204, 39.388920, 16.734074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608589, 38.806885, 17.120739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368011, 38.510159, 17.002104>,  <42.223663, 38.332123, 16.930923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368011, 38.510159, 17.002104>,  <42.608589, 38.806885, 17.120739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368011, 38.510159, 17.002104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522823, 0.084767, 0.848216,
		-0.604084, 0.665220, -0.438823,
		-0.601448, -0.741820, -0.296586,
		42.187576, 38.287613, 16.913128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856197, 38.924492, 17.328388>,  <42.608589, 38.806885, 17.120739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856197, 38.924492, 17.328388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843914, 38.529770, 17.264793>,  <41.836544, 38.292938, 17.226637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.843914, 38.529770, 17.264793>,  <41.856197, 38.924492, 17.328388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843914, 38.529770, 17.264793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631583, -0.104126, 0.768284,
		-0.774700, 0.124010, -0.620050,
		-0.030711, -0.986803, -0.158989,
		41.834702, 38.233730, 17.217096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133823, 38.785908, 17.282198>,  <41.856197, 38.924492, 17.328388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133823, 38.785908, 17.282198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362404, 38.472240, 17.378958>,  <41.499554, 38.284039, 17.437014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362404, 38.472240, 17.378958>,  <41.133823, 38.785908, 17.282198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362404, 38.472240, 17.378958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421294, -0.027376, 0.906511,
		-0.704237, -0.619941, -0.346011,
		0.571455, -0.784171, 0.241898,
		41.533840, 38.236988, 17.451527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706345, 38.431808, 17.702457>,  <41.133823, 38.785908, 17.282198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706345, 38.431808, 17.702457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066780, 38.269661, 17.764057>,  <41.283043, 38.172375, 17.801016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.066780, 38.269661, 17.764057>,  <40.706345, 38.431808, 17.702457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066780, 38.269661, 17.764057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282717, -0.279914, 0.917453,
		-0.328805, -0.870242, -0.366833,
		0.901087, -0.405373, 0.153995,
		41.337109, 38.148052, 17.810257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613045, 37.773285, 17.948338>,  <40.706345, 38.431808, 17.702457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613045, 37.773285, 17.948338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959286, 37.921856, 18.082666>,  <41.167030, 38.010998, 18.163263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959286, 37.921856, 18.082666>,  <40.613045, 37.773285, 17.948338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959286, 37.921856, 18.082666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327599, -0.087148, 0.940789,
		0.378700, -0.924363, 0.046244,
		0.865601, 0.371427, 0.335823,
		41.218967, 38.033283, 18.183413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652107, 37.505108, 18.585096>,  <40.613045, 37.773285, 17.948338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652107, 37.505108, 18.585096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903721, 37.815960, 18.592937>,  <41.054688, 38.002472, 18.597641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.903721, 37.815960, 18.592937>,  <40.652107, 37.505108, 18.585096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903721, 37.815960, 18.592937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195529, 0.133764, 0.971533,
		0.752386, -0.614959, 0.236093,
		0.629033, 0.777131, 0.019600,
		41.092430, 38.049099, 18.598818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111504, 37.361603, 19.174927>,  <40.652107, 37.505108, 18.585096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111504, 37.361603, 19.174927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113831, 37.755440, 19.105011>,  <41.115227, 37.991741, 19.063061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113831, 37.755440, 19.105011>,  <41.111504, 37.361603, 19.174927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113831, 37.755440, 19.105011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123389, 0.174164, 0.976955,
		0.992341, 0.015888, 0.122500,
		0.005814, 0.984589, -0.174791,
		41.115574, 38.050816, 19.052574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543015, 37.606087, 19.594271>,  <41.111504, 37.361603, 19.174927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543015, 37.606087, 19.594271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350883, 37.951862, 19.534903>,  <41.235603, 38.159328, 19.499281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350883, 37.951862, 19.534903>,  <41.543015, 37.606087, 19.594271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350883, 37.951862, 19.534903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027991, 0.154025, 0.987670,
		0.876641, 0.478562, -0.049786,
		-0.480330, 0.864439, -0.148420,
		41.206783, 38.211193, 19.490377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815556, 38.097122, 20.047733>,  <41.543015, 37.606087, 19.594271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815556, 38.097122, 20.047733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454285, 38.243397, 19.957798>,  <41.237522, 38.331161, 19.903837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454285, 38.243397, 19.957798>,  <41.815556, 38.097122, 20.047733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454285, 38.243397, 19.957798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144956, 0.233192, 0.961566,
		0.404061, 0.901052, -0.157605,
		-0.903173, 0.365686, -0.224836,
		41.183334, 38.353104, 19.890347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833584, 38.740643, 20.456274>,  <41.815556, 38.097122, 20.047733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833584, 38.740643, 20.456274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451797, 38.655716, 20.372446>,  <41.222725, 38.604759, 20.322149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451797, 38.655716, 20.372446>,  <41.833584, 38.740643, 20.456274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451797, 38.655716, 20.372446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254262, 0.211528, 0.943719,
		-0.156039, 0.954032, -0.255881,
		-0.954464, -0.212318, -0.209568,
		41.165459, 38.592022, 20.309576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442810, 39.177223, 20.902849>,  <41.833584, 38.740643, 20.456274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442810, 39.177223, 20.902849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159664, 38.917942, 20.790596>,  <40.989777, 38.762371, 20.723244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159664, 38.917942, 20.790596>,  <41.442810, 39.177223, 20.902849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159664, 38.917942, 20.790596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387166, 0.023759, 0.921704,
		-0.590786, 0.761095, -0.267781,
		-0.707866, -0.648206, -0.280633,
		40.947304, 38.723480, 20.706406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756905, 39.294327, 21.145304>,  <41.442810, 39.177223, 20.902849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756905, 39.294327, 21.145304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716049, 38.911823, 21.035666>,  <40.691536, 38.682320, 20.969883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716049, 38.911823, 21.035666>,  <40.756905, 39.294327, 21.145304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716049, 38.911823, 21.035666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432308, -0.205488, 0.878000,
		-0.895923, 0.208170, -0.392412,
		-0.102137, -0.956263, -0.274095,
		40.685410, 38.624943, 20.953438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041454, 39.168018, 21.231180>,  <40.756905, 39.294327, 21.145304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041454, 39.168018, 21.231180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240883, 38.821995, 21.253437>,  <40.360538, 38.614380, 21.266792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240883, 38.821995, 21.253437>,  <40.041454, 39.168018, 21.231180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240883, 38.821995, 21.253437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524823, -0.250141, 0.813628,
		-0.689920, -0.434852, -0.578718,
		0.498569, -0.865063, 0.055643,
		40.390453, 38.562477, 21.270130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488636, 38.709721, 21.301592>,  <40.041454, 39.168018, 21.231180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488636, 38.709721, 21.301592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827782, 38.531437, 21.416464>,  <40.031269, 38.424469, 21.485386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827782, 38.531437, 21.416464>,  <39.488636, 38.709721, 21.301592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827782, 38.531437, 21.416464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408628, -0.204158, 0.889574,
		-0.337859, -0.871588, -0.355226,
		0.847865, -0.445706, 0.287179,
		40.082142, 38.397724, 21.502617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293877, 37.983017, 21.482475>,  <39.488636, 38.709721, 21.301592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293877, 37.983017, 21.482475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624920, 38.100922, 21.673548>,  <39.823547, 38.171665, 21.788191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624920, 38.100922, 21.673548>,  <39.293877, 37.983017, 21.482475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624920, 38.100922, 21.673548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422651, -0.232763, 0.875892,
		0.369366, -0.926789, -0.068056,
		0.827608, 0.294761, 0.477683,
		39.873203, 38.189350, 21.816853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371651, 37.533741, 21.979048>,  <39.293877, 37.983017, 21.482475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371651, 37.533741, 21.979048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585117, 37.851643, 22.094671>,  <39.713200, 38.042385, 22.164045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585117, 37.851643, 22.094671>,  <39.371651, 37.533741, 21.979048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585117, 37.851643, 22.094671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320236, -0.126438, 0.938862,
		0.782716, -0.593611, 0.187034,
		0.533671, 0.794757, 0.289061,
		39.745220, 38.090069, 22.181389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718086, 37.350182, 22.611712>,  <39.371651, 37.533741, 21.979048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718086, 37.350182, 22.611712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706306, 37.749706, 22.596180>,  <39.699238, 37.989422, 22.586861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706306, 37.749706, 22.596180>,  <39.718086, 37.350182, 22.611712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706306, 37.749706, 22.596180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277413, 0.029153, 0.960308,
		0.960299, 0.039053, 0.276225,
		-0.029450, 0.998812, -0.038830,
		39.697472, 38.049351, 22.584532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988331, 37.516460, 23.186024>,  <39.718086, 37.350182, 22.611712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988331, 37.516460, 23.186024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797169, 37.852303, 23.082743>,  <39.682472, 38.053806, 23.020773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797169, 37.852303, 23.082743>,  <39.988331, 37.516460, 23.186024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797169, 37.852303, 23.082743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415081, 0.043203, 0.908758,
		0.774152, 0.541479, 0.327856,
		-0.477909, 0.839603, -0.258204,
		39.653797, 38.104183, 23.005281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090233, 37.934155, 23.779043>,  <39.988331, 37.516460, 23.186024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090233, 37.934155, 23.779043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778877, 38.056530, 23.559769>,  <39.592064, 38.129955, 23.428204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778877, 38.056530, 23.559769>,  <40.090233, 37.934155, 23.779043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778877, 38.056530, 23.559769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531272, 0.144190, 0.834841,
		0.334456, 0.941068, 0.050302,
		-0.778389, 0.305942, -0.548188,
		39.545361, 38.148312, 23.395311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772442, 38.263130, 24.337372>,  <40.090233, 37.934155, 23.779043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772442, 38.263130, 24.337372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502338, 38.234535, 24.043728>,  <39.340279, 38.217377, 23.867540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502338, 38.234535, 24.043728>,  <39.772442, 38.263130, 24.337372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502338, 38.234535, 24.043728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736591, 0.116995, 0.666142,
		0.038264, 0.990556, -0.131662,
		-0.675255, -0.071492, -0.734111,
		39.299763, 38.213089, 23.823494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359806, 38.794094, 24.360138>,  <39.772442, 38.263130, 24.337372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359806, 38.794094, 24.360138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129265, 38.517063, 24.186626>,  <38.990940, 38.350845, 24.082520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129265, 38.517063, 24.186626>,  <39.359806, 38.794094, 24.360138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129265, 38.517063, 24.186626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717602, 0.174960, 0.674119,
		-0.390983, 0.699808, -0.597830,
		-0.576350, -0.692573, -0.433777,
		38.956360, 38.309292, 24.056494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644905, 39.118942, 24.366409>,  <39.359806, 38.794094, 24.360138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644905, 39.118942, 24.366409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594330, 38.725517, 24.314842>,  <38.563984, 38.489464, 24.283903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594330, 38.725517, 24.314842>,  <38.644905, 39.118942, 24.366409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594330, 38.725517, 24.314842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771216, 0.015732, 0.636379,
		-0.623890, 0.179887, -0.760527,
		-0.126441, -0.983561, -0.128917,
		38.556396, 38.430450, 24.276167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900993, 38.943695, 24.244661>,  <38.644905, 39.118942, 24.366409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900993, 38.943695, 24.244661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042309, 38.581680, 24.339403>,  <38.127098, 38.364471, 24.396248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042309, 38.581680, 24.339403>,  <37.900993, 38.943695, 24.244661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042309, 38.581680, 24.339403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798749, -0.160013, 0.579996,
		-0.487017, -0.394092, -0.779427,
		0.353290, -0.905035, 0.236852,
		38.148296, 38.310169, 24.410460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389973, 38.428173, 24.114456>,  <37.900993, 38.943695, 24.244661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389973, 38.428173, 24.114456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627213, 38.263542, 24.391247>,  <37.769558, 38.164764, 24.557322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627213, 38.263542, 24.391247>,  <37.389973, 38.428173, 24.114456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627213, 38.263542, 24.391247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805125, -0.305551, 0.508342,
		0.002211, -0.858627, -0.512597,
		0.593100, -0.411581, 0.691978,
		37.805141, 38.140068, 24.598841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041542, 37.758438, 24.247543>,  <37.389973, 38.428173, 24.114456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041542, 37.758438, 24.247543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293137, 37.805161, 24.554979>,  <37.444092, 37.833195, 24.739441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293137, 37.805161, 24.554979>,  <37.041542, 37.758438, 24.247543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293137, 37.805161, 24.554979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738388, -0.219547, 0.637638,
		0.243222, -0.968584, -0.051843,
		0.628988, 0.116807, 0.768590,
		37.481834, 37.840202, 24.785557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881153, 37.149254, 24.632734>,  <37.041542, 37.758438, 24.247543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881153, 37.149254, 24.632734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053440, 37.413418, 24.878773>,  <37.156811, 37.571915, 25.026396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053440, 37.413418, 24.878773>,  <36.881153, 37.149254, 24.632734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053440, 37.413418, 24.878773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660203, -0.234120, 0.713666,
		0.615319, -0.713475, 0.335166,
		0.430715, 0.660410, 0.615097,
		37.182655, 37.611542, 25.063301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833477, 36.864372, 25.193523>,  <36.881153, 37.149254, 24.632734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833477, 36.864372, 25.193523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870705, 37.246231, 25.306658>,  <36.893040, 37.475346, 25.374538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870705, 37.246231, 25.306658>,  <36.833477, 36.864372, 25.193523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870705, 37.246231, 25.306658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660107, -0.153501, 0.735321,
		0.745384, -0.255137, 0.615880,
		0.093069, 0.954643, 0.282834,
		36.898624, 37.532623, 25.391508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765728, 36.867027, 25.906334>,  <36.833477, 36.864372, 25.193523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765728, 36.867027, 25.906334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738518, 37.264214, 25.867569>,  <36.722191, 37.502525, 25.844309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.738518, 37.264214, 25.867569>,  <36.765728, 36.867027, 25.906334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738518, 37.264214, 25.867569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362417, 0.065909, 0.929683,
		0.929530, 0.098368, 0.355384,
		-0.068028, 0.992965, -0.096915,
		36.718109, 37.562103, 25.838495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008015, 37.103630, 26.522171>,  <36.765728, 36.867027, 25.906334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008015, 37.103630, 26.522171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805134, 37.409550, 26.363262>,  <36.683407, 37.593102, 26.267918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805134, 37.409550, 26.363262>,  <37.008015, 37.103630, 26.522171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805134, 37.409550, 26.363262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516360, 0.099391, 0.850585,
		0.690015, 0.636551, 0.344503,
		-0.507200, 0.764803, -0.397271,
		36.652973, 37.638992, 26.244081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938354, 37.666306, 27.044672>,  <37.008015, 37.103630, 26.522171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938354, 37.666306, 27.044672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642014, 37.728973, 26.783413>,  <36.464211, 37.766575, 26.626657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642014, 37.728973, 26.783413>,  <36.938354, 37.666306, 27.044672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642014, 37.728973, 26.783413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657395, 0.030299, 0.752937,
		0.137749, 0.987187, 0.080544,
		-0.740849, 0.156666, -0.653145,
		36.419758, 37.775974, 26.587469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583954, 38.142742, 27.382376>,  <36.938354, 37.666306, 27.044672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583954, 38.142742, 27.382376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345840, 37.995361, 27.096750>,  <36.202972, 37.906933, 26.925375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345840, 37.995361, 27.096750>,  <36.583954, 38.142742, 27.382376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345840, 37.995361, 27.096750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786922, 0.087635, 0.610798,
		-0.162472, 0.925508, -0.342109,
		-0.595279, -0.368451, -0.714064,
		36.167255, 37.884827, 26.882530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049683, 38.688049, 27.281881>,  <36.583954, 38.142742, 27.382376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049683, 38.688049, 27.281881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948124, 38.310139, 27.199001>,  <35.887188, 38.083393, 27.149273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948124, 38.310139, 27.199001>,  <36.049683, 38.688049, 27.281881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948124, 38.310139, 27.199001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737028, 0.050253, 0.673991,
		-0.626359, 0.323839, -0.709086,
		-0.253898, -0.944777, -0.207202,
		35.871956, 38.026707, 27.136841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327980, 38.672081, 27.278921>,  <36.049683, 38.688049, 27.281881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327980, 38.672081, 27.278921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418770, 38.282856, 27.295107>,  <35.473244, 38.049320, 27.304817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418770, 38.282856, 27.295107>,  <35.327980, 38.672081, 27.278921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418770, 38.282856, 27.295107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700328, -0.134205, 0.701091,
		-0.676773, -0.187467, -0.711923,
		0.226975, -0.973060, 0.040462,
		35.486862, 37.990936, 27.307245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646076, 38.303574, 27.205172>,  <35.327980, 38.672081, 27.278921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646076, 38.303574, 27.205172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921337, 38.092339, 27.404196>,  <35.086494, 37.965599, 27.523609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921337, 38.092339, 27.404196>,  <34.646076, 38.303574, 27.205172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921337, 38.092339, 27.404196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644897, -0.130927, 0.752972,
		-0.332491, -0.839036, -0.430660,
		0.688156, -0.528087, 0.497559,
		35.127785, 37.933910, 27.553463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255974, 37.856533, 27.523848>,  <34.646076, 38.303574, 27.205172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255974, 37.856533, 27.523848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606018, 37.788433, 27.705042>,  <34.816044, 37.747574, 27.813759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606018, 37.788433, 27.705042>,  <34.255974, 37.856533, 27.523848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606018, 37.788433, 27.705042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483866, -0.322206, 0.813669,
		0.007428, -0.931235, -0.364344,
		0.875111, -0.170250, 0.452986,
		34.868553, 37.737358, 27.840937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245747, 37.163074, 27.889540>,  <34.255974, 37.856533, 27.523848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245747, 37.163074, 27.889540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530666, 37.348343, 28.100483>,  <34.701618, 37.459503, 28.227049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530666, 37.348343, 28.100483>,  <34.245747, 37.163074, 27.889540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530666, 37.348343, 28.100483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555286, -0.087680, 0.827025,
		0.429290, -0.881923, 0.194736,
		0.712298, 0.463168, 0.527359,
		34.744354, 37.487293, 28.258690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388210, 36.797016, 28.525049>,  <34.245747, 37.163074, 27.889540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388210, 36.797016, 28.525049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525158, 37.169537, 28.574787>,  <34.607327, 37.393047, 28.604630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525158, 37.169537, 28.574787>,  <34.388210, 36.797016, 28.525049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525158, 37.169537, 28.574787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540119, 0.086795, 0.837101,
		0.768800, -0.353759, 0.532730,
		0.342370, 0.931301, 0.124344,
		34.627869, 37.448925, 28.612091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693970, 36.828915, 29.194151>,  <34.388210, 36.797016, 28.525049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693970, 36.828915, 29.194151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598221, 37.210190, 29.120253>,  <34.540771, 37.438953, 29.075914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598221, 37.210190, 29.120253>,  <34.693970, 36.828915, 29.194151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598221, 37.210190, 29.120253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301404, 0.107926, 0.947369,
		0.922960, 0.282461, 0.261460,
		-0.239376, 0.953188, -0.184746,
		34.526409, 37.496147, 29.064829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872261, 37.220547, 29.846611>,  <34.693970, 36.828915, 29.194151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872261, 37.220547, 29.846611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635281, 37.466202, 29.638060>,  <34.493092, 37.613594, 29.512928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635281, 37.466202, 29.638060>,  <34.872261, 37.220547, 29.846611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635281, 37.466202, 29.638060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344867, 0.391550, 0.853086,
		0.728060, 0.685217, -0.020177,
		-0.592449, 0.614139, -0.521380,
		34.457546, 37.650444, 29.481646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680923, 37.818584, 30.295208>,  <34.872261, 37.220547, 29.846611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680923, 37.818584, 30.295208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403454, 37.894634, 30.017313>,  <34.236973, 37.940266, 29.850576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403454, 37.894634, 30.017313>,  <34.680923, 37.818584, 30.295208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403454, 37.894634, 30.017313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524484, 0.527768, 0.668115,
		0.493687, 0.827836, -0.266383,
		-0.693678, 0.190126, -0.694739,
		34.195351, 37.951672, 29.808891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461819, 38.553883, 30.401167>,  <34.680923, 37.818584, 30.295208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461819, 38.553883, 30.401167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168251, 38.333019, 30.242937>,  <33.992111, 38.200500, 30.147999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168251, 38.333019, 30.242937>,  <34.461819, 38.553883, 30.401167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168251, 38.333019, 30.242937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638448, 0.362017, 0.679211,
		-0.231827, 0.751042, -0.618217,
		-0.733921, -0.552159, -0.395576,
		33.948074, 38.167370, 30.124264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090656, 38.948212, 30.249384>,  <34.461819, 38.553883, 30.401167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090656, 38.948212, 30.249384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309834, 38.803513, 30.551085>,  <35.441341, 38.716694, 30.732105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309834, 38.803513, 30.551085>,  <35.090656, 38.948212, 30.249384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309834, 38.803513, 30.551085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831342, 0.335597, -0.442995,
		-0.092872, 0.869778, 0.484625,
		0.547946, -0.361747, 0.754251,
		35.474216, 38.694988, 30.777359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555275, 39.496120, 30.636457>,  <35.090656, 38.948212, 30.249384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555275, 39.496120, 30.636457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676617, 39.114971, 30.636122>,  <35.749420, 38.886280, 30.635920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676617, 39.114971, 30.636122>,  <35.555275, 39.496120, 30.636457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676617, 39.114971, 30.636122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799901, 0.255131, -0.543201,
		0.517818, 0.164111, 0.839602,
		0.303354, -0.952878, -0.000839,
		35.767624, 38.829109, 30.635870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230827, 39.658173, 30.550642>,  <35.555275, 39.496120, 30.636457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230827, 39.658173, 30.550642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210278, 39.263897, 30.486408>,  <36.197948, 39.027332, 30.447868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210278, 39.263897, 30.486408>,  <36.230827, 39.658173, 30.550642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210278, 39.263897, 30.486408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857290, 0.038954, -0.513358,
		0.512264, -0.164038, 0.843017,
		-0.051371, -0.985685, -0.160583,
		36.194866, 38.968193, 30.438234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992363, 39.469776, 30.673841>,  <36.230827, 39.658173, 30.550642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992363, 39.469776, 30.673841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829525, 39.180576, 30.450575>,  <36.731823, 39.007057, 30.316616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829525, 39.180576, 30.450575>,  <36.992363, 39.469776, 30.673841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829525, 39.180576, 30.450575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876366, -0.136974, -0.461757,
		0.257395, -0.677137, 0.689371,
		-0.407099, -0.722996, -0.558164,
		36.707394, 38.963676, 30.283125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577576, 38.916691, 30.660454>,  <36.992363, 39.469776, 30.673841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577576, 38.916691, 30.660454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344864, 38.834694, 30.345617>,  <37.205238, 38.785496, 30.156715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344864, 38.834694, 30.345617>,  <37.577576, 38.916691, 30.660454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344864, 38.834694, 30.345617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803874, 0.002341, -0.594795,
		0.123769, -0.978762, 0.163424,
		-0.581780, -0.204989, -0.787091,
		37.170330, 38.773197, 30.109489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793385, 38.330925, 30.388132>,  <37.577576, 38.916691, 30.660454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793385, 38.330925, 30.388132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619499, 38.543037, 30.096977>,  <37.515167, 38.670303, 29.922283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619499, 38.543037, 30.096977>,  <37.793385, 38.330925, 30.388132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619499, 38.543037, 30.096977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858089, -0.001402, -0.513499,
		-0.273320, -0.847820, -0.454420,
		-0.434717, 0.530282, -0.727888,
		37.489082, 38.702122, 29.878611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032520, 37.999584, 29.757488>,  <37.793385, 38.330925, 30.388132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032520, 37.999584, 29.757488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898212, 38.360535, 29.649431>,  <37.817627, 38.577103, 29.584597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.898212, 38.360535, 29.649431>,  <38.032520, 37.999584, 29.757488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898212, 38.360535, 29.649431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712333, 0.055610, -0.699635,
		-0.616310, -0.427350, -0.661463,
		-0.335773, 0.902375, -0.270142,
		37.797482, 38.631248, 29.568388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874260, 37.912899, 29.058603>,  <38.032520, 37.999584, 29.757488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874260, 37.912899, 29.058603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977421, 38.291042, 29.138391>,  <38.039318, 38.517929, 29.186264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977421, 38.291042, 29.138391>,  <37.874260, 37.912899, 29.058603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977421, 38.291042, 29.138391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663253, -0.023107, -0.748038,
		-0.702553, 0.325224, -0.632969,
		0.257906, 0.945355, 0.199472,
		38.054794, 38.574650, 29.198233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977596, 38.193916, 28.408915>,  <37.874260, 37.912899, 29.058603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977596, 38.193916, 28.408915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159134, 38.447388, 28.659506>,  <38.268055, 38.599472, 28.809860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159134, 38.447388, 28.659506>,  <37.977596, 38.193916, 28.408915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159134, 38.447388, 28.659506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717408, 0.157171, -0.678692,
		-0.528540, 0.757458, -0.383278,
		0.453841, 0.633683, 0.626478,
		38.295284, 38.637493, 28.847448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338753, 38.624897, 27.947567>,  <37.977596, 38.193916, 28.408915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338753, 38.624897, 27.947567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526848, 38.723427, 28.286554>,  <38.639706, 38.782543, 28.489946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526848, 38.723427, 28.286554>,  <38.338753, 38.624897, 27.947567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526848, 38.723427, 28.286554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731396, 0.428625, -0.530415,
		-0.493899, 0.869256, 0.021396,
		0.470238, 0.246322, 0.847468,
		38.667919, 38.797325, 28.540794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563278, 39.340374, 27.874111>,  <38.338753, 38.624897, 27.947567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563278, 39.340374, 27.874111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798611, 39.177380, 28.153486>,  <38.939812, 39.079582, 28.321112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798611, 39.177380, 28.153486>,  <38.563278, 39.340374, 27.874111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798611, 39.177380, 28.153486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804031, 0.386657, -0.451697,
		-0.085997, 0.827317, 0.555114,
		0.588336, -0.407484, 0.698440,
		38.975113, 39.055134, 28.363018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018925, 39.913391, 28.161160>,  <38.563278, 39.340374, 27.874111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018925, 39.913391, 28.161160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199360, 39.564316, 28.235912>,  <39.307621, 39.354870, 28.280764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199360, 39.564316, 28.235912>,  <39.018925, 39.913391, 28.161160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199360, 39.564316, 28.235912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855947, 0.363738, -0.367490,
		0.252729, 0.325734, 0.911057,
		0.451090, -0.872692, 0.186884,
		39.334686, 39.302509, 28.291977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729240, 40.046215, 28.294882>,  <39.018925, 39.913391, 28.161160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729240, 40.046215, 28.294882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729691, 39.662727, 28.181135>,  <39.729961, 39.432636, 28.112888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729691, 39.662727, 28.181135>,  <39.729240, 40.046215, 28.294882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729691, 39.662727, 28.181135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726418, 0.196216, -0.658648,
		0.687253, -0.205826, 0.696649,
		0.001127, -0.958715, -0.284365,
		39.730030, 39.375114, 28.095825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364300, 39.974461, 28.060663>,  <39.729240, 40.046215, 28.294882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364300, 39.974461, 28.060663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190952, 39.650143, 27.903288>,  <40.086945, 39.455551, 27.808863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190952, 39.650143, 27.903288>,  <40.364300, 39.974461, 28.060663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190952, 39.650143, 27.903288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691134, -0.018828, -0.722481,
		0.578378, -0.585023, 0.568529,
		-0.433372, -0.810798, -0.393440,
		40.060940, 39.406902, 27.785255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887814, 39.645580, 27.852547>,  <40.364300, 39.974461, 28.060663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887814, 39.645580, 27.852547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597229, 39.453094, 27.656309>,  <40.422878, 39.337605, 27.538567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597229, 39.453094, 27.656309>,  <40.887814, 39.645580, 27.852547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597229, 39.453094, 27.656309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623807, -0.162273, -0.764547,
		0.288302, -0.861451, 0.418071,
		-0.726462, -0.481216, -0.490596,
		40.379292, 39.308731, 27.509130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150620, 39.039799, 27.462254>,  <40.887814, 39.645580, 27.852547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150620, 39.039799, 27.462254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815395, 39.136890, 27.266813>,  <40.614262, 39.195145, 27.149549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815395, 39.136890, 27.266813>,  <41.150620, 39.039799, 27.462254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815395, 39.136890, 27.266813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443838, -0.217463, -0.869320,
		-0.317260, -0.945406, 0.074517,
		-0.838066, 0.242727, -0.488600,
		40.563976, 39.209709, 27.120234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070343, 38.651756, 26.971989>,  <41.150620, 39.039799, 27.462254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070343, 38.651756, 26.971989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823006, 38.921795, 26.811043>,  <40.674603, 39.083817, 26.714476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.823006, 38.921795, 26.811043>,  <41.070343, 38.651756, 26.971989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.823006, 38.921795, 26.811043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317698, -0.253559, -0.913661,
		-0.718833, -0.692785, -0.057691,
		-0.618342, 0.675098, -0.402363,
		40.637505, 39.124325, 26.690334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682526, 38.374962, 26.403042>,  <41.070343, 38.651756, 26.971989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682526, 38.374962, 26.403042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645813, 38.762047, 26.309135>,  <40.623787, 38.994297, 26.252790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645813, 38.762047, 26.309135>,  <40.682526, 38.374962, 26.403042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645813, 38.762047, 26.309135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076758, -0.228187, -0.970587,
		-0.992817, -0.107099, -0.053337,
		-0.091779, 0.967709, -0.234768,
		40.618279, 39.052361, 26.238705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241333, 38.385723, 25.727219>,  <40.682526, 38.374962, 26.403042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241333, 38.385723, 25.727219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426605, 38.735085, 25.787399>,  <40.537769, 38.944702, 25.823507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426605, 38.735085, 25.787399>,  <40.241333, 38.385723, 25.727219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426605, 38.735085, 25.787399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200975, 0.061827, -0.977643,
		-0.863176, 0.483062, -0.146894,
		0.463180, 0.873401, 0.150451,
		40.565559, 38.997105, 25.832535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986423, 38.807629, 25.292763>,  <40.241333, 38.385723, 25.727219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986423, 38.807629, 25.292763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337139, 38.987656, 25.360508>,  <40.547569, 39.095673, 25.401155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337139, 38.987656, 25.360508>,  <39.986423, 38.807629, 25.292763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337139, 38.987656, 25.360508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195000, -0.010828, -0.980743,
		-0.439568, 0.892928, -0.097257,
		0.876787, 0.450069, 0.169361,
		40.600174, 39.122677, 25.411316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066425, 39.348240, 24.658070>,  <39.986423, 38.807629, 25.292763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066425, 39.348240, 24.658070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408520, 39.276058, 24.852394>,  <40.613777, 39.232750, 24.968988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408520, 39.276058, 24.852394>,  <40.066425, 39.348240, 24.658070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408520, 39.276058, 24.852394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485962, -0.046433, -0.872746,
		0.180048, 0.982487, 0.047983,
		0.855233, -0.180454, 0.485812,
		40.665089, 39.221924, 24.998138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548824, 39.684933, 24.232609>,  <40.066425, 39.348240, 24.658070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548824, 39.684933, 24.232609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782276, 39.443031, 24.449368>,  <40.922348, 39.297890, 24.579422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.782276, 39.443031, 24.449368>,  <40.548824, 39.684933, 24.232609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782276, 39.443031, 24.449368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625927, -0.090082, -0.774661,
		0.517293, 0.791303, 0.325957,
		0.583629, -0.604753, 0.541897,
		40.957363, 39.261604, 24.611937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147327, 39.921066, 24.033875>,  <40.548824, 39.684933, 24.232609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147327, 39.921066, 24.033875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217655, 39.551704, 24.170351>,  <41.259850, 39.330086, 24.252237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217655, 39.551704, 24.170351>,  <41.147327, 39.921066, 24.033875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217655, 39.551704, 24.170351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645013, -0.153769, -0.748541,
		0.743671, 0.351678, 0.568573,
		0.175816, -0.923405, 0.341191,
		41.270401, 39.274681, 24.272709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882660, 39.789330, 24.248240>,  <41.147327, 39.921066, 24.033875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882660, 39.789330, 24.248240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750809, 39.420361, 24.167763>,  <41.671700, 39.198978, 24.119476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750809, 39.420361, 24.167763>,  <41.882660, 39.789330, 24.248240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750809, 39.420361, 24.167763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783320, -0.148250, -0.603682,
		0.527025, -0.356586, 0.771422,
		-0.329628, -0.922425, -0.201190,
		41.651920, 39.143635, 24.107407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446178, 39.341717, 24.166258>,  <41.882660, 39.789330, 24.248240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446178, 39.341717, 24.166258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153584, 39.125092, 24.000544>,  <41.978027, 38.995117, 23.901115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153584, 39.125092, 24.000544>,  <42.446178, 39.341717, 24.166258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153584, 39.125092, 24.000544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648191, -0.363754, -0.668977,
		0.211598, -0.757884, 0.617121,
		-0.731488, -0.541566, -0.414284,
		41.934135, 38.962620, 23.876259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686749, 38.710533, 23.964357>,  <42.446178, 39.341717, 24.166258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686749, 38.710533, 23.964357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358955, 38.710545, 23.735117>,  <42.162277, 38.710552, 23.597572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358955, 38.710545, 23.735117>,  <42.686749, 38.710533, 23.964357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358955, 38.710545, 23.735117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523420, -0.407219, -0.748468,
		-0.233401, -0.913331, 0.333693,
		-0.819485, 0.000032, -0.573101,
		42.113110, 38.710556, 23.563187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625885, 38.003922, 23.679482>,  <42.686749, 38.710533, 23.964357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625885, 38.003922, 23.679482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391392, 38.234840, 23.452131>,  <42.250694, 38.373390, 23.315722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391392, 38.234840, 23.452131>,  <42.625885, 38.003922, 23.679482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391392, 38.234840, 23.452131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382170, -0.421547, -0.822341,
		-0.714333, -0.699303, 0.026501,
		-0.586237, 0.577298, -0.568378,
		42.215519, 38.408028, 23.281618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602146, 37.592503, 23.072788>,  <42.625885, 38.003922, 23.679482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602146, 37.592503, 23.072788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485680, 37.949356, 22.934612>,  <42.415802, 38.163467, 22.851707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485680, 37.949356, 22.934612>,  <42.602146, 37.592503, 23.072788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485680, 37.949356, 22.934612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302192, -0.256829, -0.917997,
		-0.907692, -0.371676, -0.194816,
		-0.291163, 0.892130, -0.345439,
		42.398331, 38.216995, 22.830980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332150, 37.401493, 22.476385>,  <42.602146, 37.592503, 23.072788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332150, 37.401493, 22.476385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388008, 37.796326, 22.444950>,  <42.421524, 38.033226, 22.426088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.388008, 37.796326, 22.444950>,  <42.332150, 37.401493, 22.476385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388008, 37.796326, 22.444950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316125, -0.119656, -0.941141,
		-0.938383, 0.106587, -0.328750,
		0.139650, 0.987077, -0.078589,
		42.429905, 38.092449, 22.421373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126217, 37.532539, 21.837860>,  <42.332150, 37.401493, 22.476385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126217, 37.532539, 21.837860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359795, 37.853268, 21.888603>,  <42.499943, 38.045704, 21.919048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359795, 37.853268, 21.888603>,  <42.126217, 37.532539, 21.837860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359795, 37.853268, 21.888603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429883, -0.172866, -0.886181,
		-0.688629, 0.572014, -0.445634,
		0.583944, 0.801821, 0.126859,
		42.534977, 38.093815, 21.926661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234188, 37.942635, 21.166929>,  <42.126217, 37.532539, 21.837860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234188, 37.942635, 21.166929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541622, 38.083847, 21.380337>,  <42.726082, 38.168575, 21.508381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541622, 38.083847, 21.380337>,  <42.234188, 37.942635, 21.166929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541622, 38.083847, 21.380337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575241, -0.016435, -0.817819,
		-0.279949, 0.935466, -0.215711,
		0.768587, 0.353033, 0.533517,
		42.772198, 38.189758, 21.540392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513382, 38.505661, 20.802559>,  <42.234188, 37.942635, 21.166929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513382, 38.505661, 20.802559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806599, 38.370117, 21.038467>,  <42.982529, 38.288792, 21.180012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806599, 38.370117, 21.038467>,  <42.513382, 38.505661, 20.802559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806599, 38.370117, 21.038467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589692, -0.115529, -0.799322,
		0.338991, 0.933718, 0.115134,
		0.733040, -0.338857, 0.589770,
		43.026512, 38.268459, 21.215399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153271, 38.683285, 20.520559>,  <42.513382, 38.505661, 20.802559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.153271, 38.683285, 20.520559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262188, 38.372627, 20.747782>,  <43.327538, 38.186234, 20.884115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262188, 38.372627, 20.747782>,  <43.153271, 38.683285, 20.520559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262188, 38.372627, 20.747782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535411, -0.368235, -0.760091,
		0.799495, 0.511109, 0.315555,
		0.272291, -0.776640, 0.568055,
		43.343876, 38.139637, 20.918198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744541, 38.506252, 20.133966>,  <43.153271, 38.683285, 20.520559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744541, 38.506252, 20.133966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691578, 38.214581, 20.402521>,  <43.659798, 38.039577, 20.563654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.691578, 38.214581, 20.402521>,  <43.744541, 38.506252, 20.133966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.691578, 38.214581, 20.402521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565813, -0.611752, -0.552825,
		0.813833, 0.306680, 0.493583,
		-0.132410, -0.729182, 0.671387,
		43.651855, 37.995827, 20.603937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482803, 38.303852, 20.466259>,  <43.744541, 38.506252, 20.133966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482803, 38.303852, 20.466259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223961, 37.998943, 20.471893>,  <44.068657, 37.815998, 20.475273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223961, 37.998943, 20.471893>,  <44.482803, 38.303852, 20.466259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223961, 37.998943, 20.471893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596426, -0.517650, -0.613445,
		0.474904, -0.388561, 0.789612,
		-0.647103, -0.762272, 0.014086,
		44.029831, 37.770260, 20.476120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896423, 37.730259, 20.593876>,  <44.482803, 38.303852, 20.466259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896423, 37.730259, 20.593876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552948, 37.571571, 20.464098>,  <44.346863, 37.476360, 20.386230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552948, 37.571571, 20.464098>,  <44.896423, 37.730259, 20.593876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552948, 37.571571, 20.464098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512409, -0.676107, -0.529449,
		-0.009320, -0.620882, 0.783848,
		-0.858691, -0.396717, -0.324447,
		44.295341, 37.452557, 20.366764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918579, 36.973061, 20.706766>,  <44.896423, 37.730259, 20.593876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918579, 36.973061, 20.706766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622650, 36.992599, 20.438356>,  <44.445091, 37.004322, 20.277309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622650, 36.992599, 20.438356>,  <44.918579, 36.973061, 20.706766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622650, 36.992599, 20.438356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412524, -0.754955, -0.509771,
		-0.531494, -0.653955, 0.538384,
		-0.739823, 0.048844, -0.671027,
		44.400703, 37.007252, 20.237049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822445, 36.223484, 20.465803>,  <44.918579, 36.973061, 20.706766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822445, 36.223484, 20.465803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670746, 36.452770, 20.175261>,  <44.579727, 36.590340, 20.000935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670746, 36.452770, 20.175261>,  <44.822445, 36.223484, 20.465803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670746, 36.452770, 20.175261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521997, -0.515618, -0.679453,
		-0.763995, -0.636839, -0.103669,
		-0.379249, 0.573214, -0.726358,
		44.556973, 36.624733, 19.957354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786011, 35.653019, 19.840109>,  <44.822445, 36.223484, 20.465803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786011, 35.653019, 19.840109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099106, 35.477737, 20.016882>,  <45.286961, 35.372570, 20.122946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.099106, 35.477737, 20.016882>,  <44.786011, 35.653019, 19.840109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.099106, 35.477737, 20.016882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477103, 0.033463, 0.878210,
		-0.399623, -0.898253, -0.182876,
		0.782735, -0.438203, 0.441931,
		45.333927, 35.346275, 20.149462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503357, 35.206059, 20.338606>,  <44.786011, 35.653019, 19.840109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503357, 35.206059, 20.338606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876392, 35.236900, 20.479654>,  <45.100212, 35.255405, 20.564283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876392, 35.236900, 20.479654>,  <44.503357, 35.206059, 20.338606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876392, 35.236900, 20.479654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333699, -0.188218, 0.923698,
		0.137593, -0.979096, -0.149798,
		0.932584, 0.077107, 0.352621,
		45.156166, 35.260033, 20.585442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633839, 34.564747, 20.691481>,  <44.503357, 35.206059, 20.338606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633839, 34.564747, 20.691481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896877, 34.834034, 20.826742>,  <45.054703, 34.995605, 20.907900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.896877, 34.834034, 20.826742>,  <44.633839, 34.564747, 20.691481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.896877, 34.834034, 20.826742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372870, -0.099181, 0.922567,
		0.654623, -0.732766, 0.185800,
		0.657599, 0.673214, 0.338153,
		45.094158, 35.035999, 20.928188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.829334, 34.304192, 21.318254>,  <44.633839, 34.564747, 20.691481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.829334, 34.304192, 21.318254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920918, 34.692360, 21.348902>,  <44.975868, 34.925259, 21.367290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920918, 34.692360, 21.348902>,  <44.829334, 34.304192, 21.318254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920918, 34.692360, 21.348902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557444, 0.066180, 0.827572,
		0.798020, -0.232185, 0.556106,
		0.228953, 0.970417, 0.076617,
		44.989605, 34.983486, 21.371887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816826, 34.393871, 22.030272>,  <44.829334, 34.304192, 21.318254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816826, 34.393871, 22.030272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792145, 34.769524, 21.895084>,  <44.777336, 34.994915, 21.813972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792145, 34.769524, 21.895084>,  <44.816826, 34.393871, 22.030272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792145, 34.769524, 21.895084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603488, 0.234601, 0.762080,
		0.794981, 0.250986, 0.552278,
		-0.061706, 0.939132, -0.337970,
		44.773632, 35.051262, 21.793694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922894, 34.802643, 22.568598>,  <44.816826, 34.393871, 22.030272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922894, 34.802643, 22.568598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750565, 35.070312, 22.326406>,  <44.647167, 35.230915, 22.181091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750565, 35.070312, 22.326406>,  <44.922894, 34.802643, 22.568598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750565, 35.070312, 22.326406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604299, 0.284380, 0.744279,
		0.670235, 0.686541, 0.281861,
		-0.430822, 0.669170, -0.605478,
		44.621319, 35.271065, 22.144764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872639, 35.427761, 22.956892>,  <44.922894, 34.802643, 22.568598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872639, 35.427761, 22.956892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583363, 35.404903, 22.681578>,  <44.409798, 35.391190, 22.516390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583363, 35.404903, 22.681578>,  <44.872639, 35.427761, 22.956892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583363, 35.404903, 22.681578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686778, 0.164919, 0.707910,
		0.073058, 0.984650, -0.158513,
		-0.723186, -0.057144, -0.688285,
		44.366405, 35.387760, 22.475092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422707, 35.993401, 23.135233>,  <44.872639, 35.427761, 22.956892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422707, 35.993401, 23.135233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199356, 35.752243, 22.907290>,  <44.065346, 35.607548, 22.770523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199356, 35.752243, 22.907290>,  <44.422707, 35.993401, 23.135233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199356, 35.752243, 22.907290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800452, 0.211093, 0.560996,
		-0.217927, 0.769389, -0.600456,
		-0.558376, -0.602893, -0.569856,
		44.031845, 35.571377, 22.736332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854488, 36.374870, 23.022821>,  <44.422707, 35.993401, 23.135233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854488, 36.374870, 23.022821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741871, 35.997345, 22.953587>,  <43.674301, 35.770832, 22.912046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741871, 35.997345, 22.953587>,  <43.854488, 36.374870, 23.022821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741871, 35.997345, 22.953587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892735, 0.191507, 0.407858,
		-0.351793, 0.269348, -0.896489,
		-0.281540, -0.943809, -0.173086,
		43.657410, 35.714203, 22.901661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146286, 36.392437, 22.726431>,  <43.854488, 36.374870, 23.022821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146286, 36.392437, 22.726431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211578, 36.026478, 22.874117>,  <43.250755, 35.806904, 22.962729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211578, 36.026478, 22.874117>,  <43.146286, 36.392437, 22.726431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211578, 36.026478, 22.874117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918265, -0.004044, 0.395947,
		-0.360758, -0.403666, -0.840778,
		0.163230, -0.914897, 0.369213,
		43.260548, 35.752010, 22.984880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578873, 35.982918, 22.541050>,  <43.146286, 36.392437, 22.726431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578873, 35.982918, 22.541050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751202, 35.818665, 22.862488>,  <42.854599, 35.720112, 23.055351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751202, 35.818665, 22.862488>,  <42.578873, 35.982918, 22.541050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751202, 35.818665, 22.862488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883570, -0.010821, 0.468174,
		-0.183554, -0.911734, -0.367489,
		0.430827, -0.410637, 0.803595,
		42.880451, 35.695473, 23.103567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951157, 35.798405, 22.869167>,  <42.578873, 35.982918, 22.541050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951157, 35.798405, 22.869167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248737, 35.733269, 23.128403>,  <42.427284, 35.694187, 23.283945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248737, 35.733269, 23.128403>,  <41.951157, 35.798405, 22.869167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248737, 35.733269, 23.128403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647500, 0.064053, 0.759369,
		-0.165165, -0.984572, -0.057785,
		0.743951, -0.162837, 0.648089,
		42.471924, 35.684418, 23.322830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655144, 35.438843, 23.419773>,  <41.951157, 35.798405, 22.869167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655144, 35.438843, 23.419773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990784, 35.584774, 23.581169>,  <42.192169, 35.672333, 23.678007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990784, 35.584774, 23.581169>,  <41.655144, 35.438843, 23.419773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990784, 35.584774, 23.581169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487191, 0.174084, 0.855768,
		0.241972, -0.914654, 0.323818,
		0.839103, 0.364833, 0.403488,
		42.242516, 35.694225, 23.702215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802101, 34.975426, 24.120790>,  <41.655144, 35.438843, 23.419773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802101, 34.975426, 24.120790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027008, 35.305756, 24.138088>,  <42.161953, 35.503952, 24.148468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027008, 35.305756, 24.138088>,  <41.802101, 34.975426, 24.120790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027008, 35.305756, 24.138088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369838, 0.204346, 0.906346,
		0.739643, -0.525605, 0.420318,
		0.562271, 0.825822, 0.043245,
		42.195690, 35.553501, 24.151062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098927, 34.953083, 24.755468>,  <41.802101, 34.975426, 24.120790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098927, 34.953083, 24.755468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106655, 35.343281, 24.667805>,  <42.111290, 35.577400, 24.615206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106655, 35.343281, 24.667805>,  <42.098927, 34.953083, 24.755468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106655, 35.343281, 24.667805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432278, 0.205804, 0.877941,
		0.901533, 0.077777, 0.425662,
		0.019319, 0.975498, -0.219161,
		42.112450, 35.635929, 24.602057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429379, 35.298969, 25.400862>,  <42.098927, 34.953083, 24.755468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429379, 35.298969, 25.400862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256096, 35.599735, 25.202084>,  <42.152126, 35.780197, 25.082817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256096, 35.599735, 25.202084>,  <42.429379, 35.298969, 25.400862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256096, 35.599735, 25.202084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280032, 0.411790, 0.867185,
		0.856689, 0.514828, 0.032173,
		-0.433203, 0.751918, -0.496945,
		42.126137, 35.825310, 25.052999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614639, 35.941929, 25.783232>,  <42.429379, 35.298969, 25.400862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614639, 35.941929, 25.783232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277382, 36.022575, 25.583851>,  <42.075027, 36.070965, 25.464222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277382, 36.022575, 25.583851>,  <42.614639, 35.941929, 25.783232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277382, 36.022575, 25.583851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378679, 0.435462, 0.816686,
		0.381718, 0.877338, -0.290808,
		-0.843145, 0.201621, -0.498453,
		42.024437, 36.083061, 25.434315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473083, 36.667793, 25.957912>,  <42.614639, 35.941929, 25.783232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473083, 36.667793, 25.957912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129059, 36.487247, 25.862783>,  <41.922646, 36.378918, 25.805706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129059, 36.487247, 25.862783>,  <42.473083, 36.667793, 25.957912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129059, 36.487247, 25.862783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479414, 0.555551, 0.679357,
		-0.174516, 0.698306, -0.694200,
		-0.860062, -0.451368, -0.237825,
		41.871040, 36.351837, 25.791435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136238, 37.186878, 25.710348>,  <42.473083, 36.667793, 25.957912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136238, 37.186878, 25.710348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912102, 36.878708, 25.831982>,  <41.777618, 36.693806, 25.904963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912102, 36.878708, 25.831982>,  <42.136238, 37.186878, 25.710348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912102, 36.878708, 25.831982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503610, 0.608388, 0.613385,
		-0.657567, 0.190564, -0.728897,
		-0.560341, -0.770422, 0.304086,
		41.743999, 36.647583, 25.923208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483974, 37.458832, 25.928957>,  <42.136238, 37.186878, 25.710348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483974, 37.458832, 25.928957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459785, 37.085091, 26.069426>,  <41.445271, 36.860844, 26.153708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459785, 37.085091, 26.069426>,  <41.483974, 37.458832, 25.928957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459785, 37.085091, 26.069426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322103, 0.351261, 0.879128,
		-0.944771, -0.059951, -0.322200,
		-0.060472, -0.934356, 0.351172,
		41.441643, 36.804783, 26.174778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959564, 37.523735, 26.370758>,  <41.483974, 37.458832, 25.928957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959564, 37.523735, 26.370758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131168, 37.179668, 26.481073>,  <41.234131, 36.973228, 26.547262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131168, 37.179668, 26.481073>,  <40.959564, 37.523735, 26.370758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131168, 37.179668, 26.481073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255981, 0.177028, 0.950334,
		-0.866271, -0.478298, -0.144240,
		0.429009, -0.860170, 0.275790,
		41.259872, 36.921619, 26.563810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456978, 37.106636, 26.841228>,  <40.959564, 37.523735, 26.370758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456978, 37.106636, 26.841228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835762, 37.013237, 26.929539>,  <41.063034, 36.957199, 26.982525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835762, 37.013237, 26.929539>,  <40.456978, 37.106636, 26.841228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835762, 37.013237, 26.929539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191062, 0.143299, 0.971062,
		-0.258380, -0.961740, 0.091086,
		0.946961, -0.233500, 0.220777,
		41.119850, 36.943188, 26.995771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419575, 36.470566, 27.161297>,  <40.456978, 37.106636, 26.841228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419575, 36.470566, 27.161297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748501, 36.671616, 27.268000>,  <40.945858, 36.792248, 27.332022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748501, 36.671616, 27.268000>,  <40.419575, 36.470566, 27.161297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748501, 36.671616, 27.268000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299653, -0.016023, 0.953914,
		0.483739, -0.864354, 0.137438,
		0.822317, 0.502629, 0.266758,
		40.995197, 36.822403, 27.348026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470230, 36.317814, 27.827093>,  <40.419575, 36.470566, 27.161297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470230, 36.317814, 27.827093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750660, 36.602119, 27.804060>,  <40.918919, 36.772701, 27.790241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750660, 36.602119, 27.804060>,  <40.470230, 36.317814, 27.827093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750660, 36.602119, 27.804060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054058, 0.027544, 0.998158,
		0.711037, -0.702895, -0.019112,
		0.701074, 0.710760, -0.057582,
		40.960983, 36.815346, 27.786785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079395, 36.092640, 28.256790>,  <40.470230, 36.317814, 27.827093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079395, 36.092640, 28.256790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081291, 36.492634, 28.257046>,  <41.082428, 36.732632, 28.257200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081291, 36.492634, 28.257046>,  <41.079395, 36.092640, 28.256790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081291, 36.492634, 28.257046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140076, 0.000030, 0.990141,
		0.990129, -0.004783, 0.140075,
		0.004740, 0.999989, 0.000640,
		41.082714, 36.792629, 28.257238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463379, 36.237671, 28.837225>,  <41.079395, 36.092640, 28.256790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463379, 36.237671, 28.837225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246620, 36.563560, 28.754694>,  <41.116566, 36.759094, 28.705175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246620, 36.563560, 28.754694>,  <41.463379, 36.237671, 28.837225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246620, 36.563560, 28.754694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079162, 0.194926, 0.977618,
		0.836707, 0.546104, -0.041135,
		-0.541900, 0.814723, -0.206326,
		41.084049, 36.807976, 28.692797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819149, 36.768829, 29.234661>,  <41.463379, 36.237671, 28.837225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819149, 36.768829, 29.234661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451496, 36.908829, 29.162331>,  <41.230904, 36.992828, 29.118933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.451496, 36.908829, 29.162331>,  <41.819149, 36.768829, 29.234661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451496, 36.908829, 29.162331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123008, 0.181078, 0.975746,
		0.374255, 0.919081, -0.123381,
		-0.919131, 0.350001, -0.180824,
		41.175758, 37.013828, 29.108084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806377, 37.317776, 29.564775>,  <41.819149, 36.768829, 29.234661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806377, 37.317776, 29.564775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411533, 37.275616, 29.516603>,  <41.174625, 37.250320, 29.487701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411533, 37.275616, 29.516603>,  <41.806377, 37.317776, 29.564775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411533, 37.275616, 29.516603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141063, 0.217609, 0.965788,
		-0.075589, 0.970328, -0.229672,
		-0.987111, -0.105402, -0.120429,
		41.115398, 37.243996, 29.480474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501396, 37.907970, 29.962790>,  <41.806377, 37.317776, 29.564775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501396, 37.907970, 29.962790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208416, 37.641418, 29.907007>,  <41.032627, 37.481487, 29.873539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208416, 37.641418, 29.907007>,  <41.501396, 37.907970, 29.962790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208416, 37.641418, 29.907007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092366, -0.105675, 0.990102,
		-0.674522, 0.738084, 0.015851,
		-0.732454, -0.666381, -0.139454,
		40.988678, 37.441505, 29.865171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946476, 38.140430, 30.339579>,  <41.501396, 37.907970, 29.962790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946476, 38.140430, 30.339579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897041, 37.748482, 30.276878>,  <40.867378, 37.513313, 30.239258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897041, 37.748482, 30.276878>,  <40.946476, 38.140430, 30.339579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897041, 37.748482, 30.276878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425591, -0.090358, 0.900393,
		-0.896436, 0.177992, -0.405859,
		-0.123590, -0.979875, -0.156752,
		40.859966, 37.454521, 30.229853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269566, 37.969151, 30.541252>,  <40.946476, 38.140430, 30.339579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269566, 37.969151, 30.541252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464218, 37.620419, 30.563551>,  <40.581009, 37.411179, 30.576931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464218, 37.620419, 30.563551>,  <40.269566, 37.969151, 30.541252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464218, 37.620419, 30.563551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448632, -0.194636, 0.872265,
		-0.749615, -0.449480, -0.485845,
		0.486628, -0.871828, 0.055749,
		40.610207, 37.358871, 30.580276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732666, 37.447205, 30.880749>,  <40.269566, 37.969151, 30.541252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732666, 37.447205, 30.880749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096882, 37.283699, 30.905502>,  <40.315411, 37.185596, 30.920355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096882, 37.283699, 30.905502>,  <39.732666, 37.447205, 30.880749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096882, 37.283699, 30.905502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193484, -0.289054, 0.937556,
		-0.365359, -0.865652, -0.342285,
		0.910536, -0.408772, 0.061881,
		40.370045, 37.161068, 30.924067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637257, 36.812252, 31.337746>,  <39.732666, 37.447205, 30.880749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637257, 36.812252, 31.337746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035889, 36.843121, 31.349611>,  <40.275066, 36.861641, 31.356730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035889, 36.843121, 31.349611>,  <39.637257, 36.812252, 31.337746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035889, 36.843121, 31.349611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004828, -0.303851, 0.952707,
		0.082536, -0.949589, -0.302438,
		0.996576, 0.077173, 0.029663,
		40.334862, 36.866272, 31.358511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930180, 36.218822, 31.687178>,  <39.637257, 36.812252, 31.337746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930180, 36.218822, 31.687178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213661, 36.499615, 31.715366>,  <40.383751, 36.668091, 31.732281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213661, 36.499615, 31.715366>,  <39.930180, 36.218822, 31.687178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213661, 36.499615, 31.715366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078501, -0.177732, 0.980943,
		0.701125, -0.689666, -0.181065,
		0.708704, 0.701977, 0.070473,
		40.426273, 36.710209, 31.736509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450901, 36.054893, 32.224895>,  <39.930180, 36.218822, 31.687178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450901, 36.054893, 32.224895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495815, 36.451332, 32.196251>,  <40.522762, 36.689194, 32.179066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495815, 36.451332, 32.196251>,  <40.450901, 36.054893, 32.224895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495815, 36.451332, 32.196251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087839, 0.061882, 0.994211,
		0.989786, -0.117925, -0.080108,
		0.112285, 0.991093, -0.071609,
		40.529499, 36.748661, 32.174767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074043, 36.217216, 32.632671>,  <40.450901, 36.054893, 32.224895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074043, 36.217216, 32.632671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897900, 36.576290, 32.626350>,  <40.792213, 36.791733, 32.622559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897900, 36.576290, 32.626350>,  <41.074043, 36.217216, 32.632671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897900, 36.576290, 32.626350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012688, 0.011381, 0.999855,
		0.897732, 0.440495, 0.006378,
		-0.440358, 0.897683, -0.015806,
		40.765793, 36.845596, 32.621609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458836, 36.641224, 33.112873>,  <41.074043, 36.217216, 32.632671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458836, 36.641224, 33.112873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117207, 36.843399, 33.063736>,  <40.912228, 36.964706, 33.034256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117207, 36.843399, 33.063736>,  <41.458836, 36.641224, 33.112873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117207, 36.843399, 33.063736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019695, 0.204567, 0.978654,
		0.519782, 0.838260, -0.164760,
		-0.854072, 0.505442, -0.122840,
		40.860985, 36.995033, 33.026882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603401, 37.237663, 33.431015>,  <41.458836, 36.641224, 33.112873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603401, 37.237663, 33.431015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207073, 37.187763, 33.410172>,  <40.969276, 37.157822, 33.397667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207073, 37.187763, 33.410172>,  <41.603401, 37.237663, 33.431015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207073, 37.187763, 33.410172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073764, 0.175844, 0.981651,
		-0.113302, 0.976481, -0.183431,
		-0.990819, -0.124754, -0.052106,
		40.909828, 37.150337, 33.394539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373642, 37.653614, 33.799145>,  <41.603401, 37.237663, 33.431015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373642, 37.653614, 33.799145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048763, 37.420612, 33.786373>,  <40.853836, 37.280811, 33.778709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048763, 37.420612, 33.786373>,  <41.373642, 37.653614, 33.799145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048763, 37.420612, 33.786373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104516, 0.091448, 0.990310,
		-0.573942, 0.807666, -0.135156,
		-0.812199, -0.582506, -0.031928,
		40.805103, 37.245861, 33.776794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834034, 37.967266, 34.101330>,  <41.373642, 37.653614, 33.799145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834034, 37.967266, 34.101330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756905, 37.577259, 34.145451>,  <40.710625, 37.343254, 34.171925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756905, 37.577259, 34.145451>,  <40.834034, 37.967266, 34.101330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756905, 37.577259, 34.145451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075043, 0.126735, 0.989094,
		-0.978359, 0.182446, -0.097605,
		-0.192826, -0.975014, 0.110301,
		40.699059, 37.284756, 34.178539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182461, 37.747940, 34.584267>,  <40.834034, 37.967266, 34.101330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182461, 37.747940, 34.584267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439545, 37.441547, 34.589821>,  <40.593796, 37.257713, 34.593155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439545, 37.441547, 34.589821>,  <40.182461, 37.747940, 34.584267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439545, 37.441547, 34.589821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054827, -0.027912, 0.998106,
		-0.764143, -0.642257, -0.059936,
		0.642713, -0.765981, 0.013884,
		40.632359, 37.211754, 34.593987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981323, 37.309608, 35.144730>,  <40.182461, 37.747940, 34.584267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981323, 37.309608, 35.144730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360920, 37.201187, 35.080296>,  <40.588676, 37.136135, 35.041634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360920, 37.201187, 35.080296>,  <39.981323, 37.309608, 35.144730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360920, 37.201187, 35.080296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163925, -0.012300, 0.986396,
		-0.269347, -0.962486, 0.032759,
		0.948989, -0.271053, -0.161089,
		40.645618, 37.119873, 35.031967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148403, 36.939278, 35.623035>,  <39.981323, 37.309608, 35.144730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148403, 36.939278, 35.623035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525555, 37.025837, 35.521721>,  <40.751846, 37.077774, 35.460934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525555, 37.025837, 35.521721>,  <40.148403, 36.939278, 35.623035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525555, 37.025837, 35.521721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231714, 0.120249, 0.965323,
		0.239351, -0.968871, 0.063237,
		0.942878, 0.216398, -0.253283,
		40.808418, 37.090755, 35.445736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478298, 37.081451, 36.176094>,  <40.148403, 36.939278, 35.623035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478298, 37.081451, 36.176094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814442, 37.132175, 35.965298>,  <41.016129, 37.162609, 35.838821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814442, 37.132175, 35.965298>,  <40.478298, 37.081451, 36.176094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814442, 37.132175, 35.965298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491564, 0.231386, 0.839539,
		0.228345, -0.964570, 0.132146,
		0.840371, 0.126746, -0.526984,
		41.066547, 37.170216, 35.807201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921631, 36.607769, 36.357723>,  <40.478298, 37.081451, 36.176094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921631, 36.607769, 36.357723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087063, 36.953407, 36.242985>,  <41.186321, 37.160789, 36.174141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087063, 36.953407, 36.242985>,  <40.921631, 36.607769, 36.357723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087063, 36.953407, 36.242985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250373, 0.194967, 0.948315,
		0.875364, -0.464025, -0.135713,
		0.413583, 0.864100, -0.286847,
		41.211136, 37.212639, 36.156929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586178, 36.758030, 36.605339>,  <40.921631, 36.607769, 36.357723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586178, 36.758030, 36.605339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488003, 37.141766, 36.549572>,  <41.429100, 37.372005, 36.516109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488003, 37.141766, 36.549572>,  <41.586178, 36.758030, 36.605339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488003, 37.141766, 36.549572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427250, 0.236145, 0.872750,
		0.870184, 0.154634, -0.467833,
		-0.245433, 0.959335, -0.139422,
		41.414371, 37.429565, 36.507744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170795, 37.110519, 36.962589>,  <41.586178, 36.758030, 36.605339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170795, 37.110519, 36.962589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871693, 37.375298, 36.941833>,  <41.692230, 37.534164, 36.929382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871693, 37.375298, 36.941833>,  <42.170795, 37.110519, 36.962589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871693, 37.375298, 36.941833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254835, 0.358272, 0.898165,
		0.613125, 0.658384, -0.436586,
		-0.747754, 0.661945, -0.051886,
		41.647366, 37.573879, 36.926270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408684, 37.695988, 37.261669>,  <42.170795, 37.110519, 36.962589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408684, 37.695988, 37.261669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010220, 37.711300, 37.293159>,  <41.771141, 37.720486, 37.312054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010220, 37.711300, 37.293159>,  <42.408684, 37.695988, 37.261669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010220, 37.711300, 37.293159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087397, 0.383378, 0.919447,
		0.005013, 0.922798, -0.385252,
		-0.996161, 0.038279, 0.078728,
		41.711372, 37.722782, 37.316776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224449, 38.348091, 37.504509>,  <42.408684, 37.695988, 37.261669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224449, 38.348091, 37.504509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909756, 38.123737, 37.607624>,  <41.720940, 37.989124, 37.669495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.909756, 38.123737, 37.607624>,  <42.224449, 38.348091, 37.504509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909756, 38.123737, 37.607624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016945, 0.397831, 0.917302,
		-0.617059, 0.726041, -0.303483,
		-0.786734, -0.560887, 0.257788,
		41.673737, 37.955471, 37.684959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906273, 38.713879, 38.030441>,  <42.224449, 38.348091, 37.504509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906273, 38.713879, 38.030441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717026, 38.366325, 38.088688>,  <41.603477, 38.157795, 38.123634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717026, 38.366325, 38.088688>,  <41.906273, 38.713879, 38.030441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717026, 38.366325, 38.088688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180724, 0.257485, 0.949231,
		-0.862266, 0.422778, -0.278848,
		-0.473113, -0.868884, 0.145614,
		41.575092, 38.105659, 38.132374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257622, 38.887653, 38.394051>,  <41.906273, 38.713879, 38.030441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257622, 38.887653, 38.394051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312485, 38.498894, 38.470581>,  <41.345402, 38.265640, 38.516499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312485, 38.498894, 38.470581>,  <41.257622, 38.887653, 38.394051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312485, 38.498894, 38.470581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144540, 0.171448, 0.974533,
		-0.979947, -0.161320, -0.116962,
		0.137159, -0.971896, 0.191327,
		41.353634, 38.207325, 38.527981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847256, 38.763412, 39.022289>,  <41.257622, 38.887653, 38.394051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847256, 38.763412, 39.022289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076473, 38.436672, 38.995823>,  <41.214005, 38.240627, 38.979942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076473, 38.436672, 38.995823>,  <40.847256, 38.763412, 39.022289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076473, 38.436672, 38.995823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172800, 0.041511, 0.984082,
		-0.801099, -0.575357, 0.164939,
		0.573045, -0.816848, -0.066167,
		41.248386, 38.191616, 38.975971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609127, 38.357033, 39.582020>,  <40.847256, 38.763412, 39.022289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609127, 38.357033, 39.582020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978714, 38.256371, 39.466812>,  <41.200466, 38.195972, 39.397686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.978714, 38.256371, 39.466812>,  <40.609127, 38.357033, 39.582020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978714, 38.256371, 39.466812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325731, 0.123047, 0.937421,
		-0.200465, -0.959964, 0.195663,
		0.923966, -0.251653, -0.288023,
		41.255905, 38.180874, 39.380405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871975, 37.758762, 39.949253>,  <40.609127, 38.357033, 39.582020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871975, 37.758762, 39.949253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188580, 37.980797, 39.846966>,  <41.378540, 38.114017, 39.785591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188580, 37.980797, 39.846966>,  <40.871975, 37.758762, 39.949253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188580, 37.980797, 39.846966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340831, -0.053595, 0.938596,
		0.507298, -0.830063, -0.231612,
		0.791507, 0.555088, -0.255722,
		41.426033, 38.147324, 39.770248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349197, 37.300346, 40.329128>,  <40.871975, 37.758762, 39.949253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349197, 37.300346, 40.329128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457375, 37.676422, 40.246273>,  <41.522282, 37.902069, 40.196560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457375, 37.676422, 40.246273>,  <41.349197, 37.300346, 40.329128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457375, 37.676422, 40.246273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348323, 0.105017, 0.931473,
		0.897513, -0.324064, -0.299087,
		0.270447, 0.940188, -0.207133,
		41.538509, 37.958477, 40.184132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898964, 37.392693, 40.793549>,  <41.349197, 37.300346, 40.329128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898964, 37.392693, 40.793549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793831, 37.757801, 40.668480>,  <41.730751, 37.976868, 40.593437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793831, 37.757801, 40.668480>,  <41.898964, 37.392693, 40.793549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793831, 37.757801, 40.668480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162547, 0.361324, 0.918163,
		0.951051, 0.190500, -0.243336,
		-0.262833, 0.912773, -0.312672,
		41.714981, 38.031631, 40.574677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406372, 38.009693, 40.951801>,  <41.898964, 37.392693, 40.793549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406372, 38.009693, 40.951801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023407, 38.123158, 40.930309>,  <41.793629, 38.191238, 40.917412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023407, 38.123158, 40.930309>,  <42.406372, 38.009693, 40.951801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023407, 38.123158, 40.930309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046284, 0.334517, 0.941252,
		0.284975, 0.898684, -0.333401,
		-0.957417, 0.283664, -0.053734,
		41.736183, 38.208256, 40.914188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477318, 38.559395, 41.257999>,  <42.406372, 38.009693, 40.951801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477318, 38.559395, 41.257999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077919, 38.543156, 41.243237>,  <41.838280, 38.533413, 41.234379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077919, 38.543156, 41.243237>,  <42.477318, 38.559395, 41.257999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077919, 38.543156, 41.243237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049291, 0.368376, 0.928369,
		-0.024091, 0.928790, -0.369823,
		-0.998494, -0.040595, -0.036906,
		41.778370, 38.530979, 41.232166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152119, 39.162689, 41.335381>,  <42.477318, 38.559395, 41.257999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152119, 39.162689, 41.335381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893623, 38.883190, 41.458103>,  <41.738525, 38.715492, 41.531738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893623, 38.883190, 41.458103>,  <42.152119, 39.162689, 41.335381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893623, 38.883190, 41.458103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172921, 0.257504, 0.950679,
		-0.743289, 0.667416, -0.045580,
		-0.646235, -0.698747, 0.306810,
		41.699753, 38.673565, 41.550148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537369, 39.515034, 41.532967>,  <42.152119, 39.162689, 41.335381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537369, 39.515034, 41.532967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576218, 39.171146, 41.733543>,  <41.599525, 38.964813, 41.853889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576218, 39.171146, 41.733543>,  <41.537369, 39.515034, 41.532967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576218, 39.171146, 41.733543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063486, 0.508150, 0.858926,
		-0.993246, -0.051582, 0.103930,
		0.097118, -0.859723, 0.501443,
		41.605354, 38.913231, 41.883976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903305, 39.290203, 41.802372>,  <41.537369, 39.515034, 41.532967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903305, 39.290203, 41.802372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670372, 39.088146, 42.057156>,  <40.530613, 38.966911, 42.210026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670372, 39.088146, 42.057156>,  <40.903305, 39.290203, 41.802372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670372, 39.088146, 42.057156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774658, -0.582435, 0.246321,
		0.246559, 0.636866, 0.730486,
		-0.582334, -0.505145, 0.636958,
		40.495670, 38.936604, 42.248241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196720, 39.394451, 42.419422>,  <40.903305, 39.290203, 41.802372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196720, 39.394451, 42.419422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988995, 39.053852, 42.390388>,  <40.864357, 38.849495, 42.372967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988995, 39.053852, 42.390388>,  <41.196720, 39.394451, 42.419422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988995, 39.053852, 42.390388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791753, -0.511363, 0.334117,
		-0.321616, 0.116043, 0.939732,
		-0.519316, -0.851494, -0.072585,
		40.833199, 38.798405, 42.368614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210617, 39.063770, 42.973461>,  <41.196720, 39.394451, 42.419422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210617, 39.063770, 42.973461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190105, 38.770210, 42.702534>,  <41.177799, 38.594074, 42.539978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190105, 38.770210, 42.702534>,  <41.210617, 39.063770, 42.973461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190105, 38.770210, 42.702534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742139, -0.481836, 0.465900,
		-0.668281, -0.478770, 0.569367,
		-0.051283, -0.733902, -0.677316,
		41.174721, 38.550041, 42.499340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226368, 38.472492, 43.313763>,  <41.210617, 39.063770, 42.973461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226368, 38.472492, 43.313763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314117, 38.371574, 42.936783>,  <41.366768, 38.311024, 42.710594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314117, 38.371574, 42.936783>,  <41.226368, 38.472492, 43.313763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314117, 38.371574, 42.936783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835232, -0.450686, 0.315071,
		-0.504243, -0.856287, 0.111858,
		0.219378, -0.252300, -0.942453,
		41.379932, 38.295883, 42.654045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415447, 37.767395, 43.170212>,  <41.226368, 38.472492, 43.313763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415447, 37.767395, 43.170212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620705, 37.962086, 42.887432>,  <41.743858, 38.078899, 42.717766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620705, 37.962086, 42.887432>,  <41.415447, 37.767395, 43.170212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620705, 37.962086, 42.887432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847742, -0.416214, 0.328784,
		-0.134214, -0.768025, -0.626198,
		0.513146, 0.486728, -0.706949,
		41.774647, 38.108105, 42.675346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247097, 37.708065, 42.369781>,  <41.415447, 37.767395, 43.170212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247097, 37.708065, 42.369781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283241, 38.080738, 42.229042>,  <41.304928, 38.304344, 42.144600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283241, 38.080738, 42.229042>,  <41.247097, 37.708065, 42.369781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283241, 38.080738, 42.229042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115103, -0.360697, -0.925553,
		-0.989235, 0.043138, -0.139834,
		0.090364, 0.931685, -0.351848,
		41.310352, 38.360245, 42.123489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712311, 37.848698, 41.834179>,  <41.247097, 37.708065, 42.369781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712311, 37.848698, 41.834179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007809, 38.110699, 41.770645>,  <41.185108, 38.267899, 41.732525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007809, 38.110699, 41.770645>,  <40.712311, 37.848698, 41.834179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007809, 38.110699, 41.770645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134565, -0.087579, -0.987027,
		-0.660418, 0.750532, 0.023443,
		0.738742, 0.655005, -0.158834,
		41.229431, 38.307201, 41.722996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486740, 38.295715, 41.291126>,  <40.712311, 37.848698, 41.834179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486740, 38.295715, 41.291126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874767, 38.392471, 41.282520>,  <41.107582, 38.450527, 41.277359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874767, 38.392471, 41.282520>,  <40.486740, 38.295715, 41.291126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874767, 38.392471, 41.282520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008205, -0.055890, -0.998403,
		-0.242708, 0.968692, -0.052232,
		0.970064, 0.241892, -0.021513,
		41.165787, 38.465038, 41.276066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563694, 38.727451, 40.816952>,  <40.486740, 38.295715, 41.291126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563694, 38.727451, 40.816952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915771, 38.541512, 40.855278>,  <41.127018, 38.429947, 40.878273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915771, 38.541512, 40.855278>,  <40.563694, 38.727451, 40.816952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915771, 38.541512, 40.855278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058137, -0.094771, -0.993800,
		0.471045, 0.880305, -0.056392,
		0.880191, -0.464846, 0.095819,
		41.179829, 38.402058, 40.884026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055470, 39.108631, 40.431225>,  <40.563694, 38.727451, 40.816952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055470, 39.108631, 40.431225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153477, 38.722195, 40.463829>,  <41.212280, 38.490334, 40.483391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153477, 38.722195, 40.463829>,  <41.055470, 39.108631, 40.431225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153477, 38.722195, 40.463829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162171, -0.042054, -0.985866,
		0.955860, 0.254770, 0.146367,
		0.245014, -0.966087, 0.081514,
		41.226982, 38.432369, 40.488285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673519, 39.095032, 40.207893>,  <41.055470, 39.108631, 40.431225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673519, 39.095032, 40.207893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453178, 38.768082, 40.140404>,  <41.320976, 38.571911, 40.099911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453178, 38.768082, 40.140404>,  <41.673519, 39.095032, 40.207893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453178, 38.768082, 40.140404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068375, 0.157281, -0.985184,
		0.831799, -0.554224, -0.030750,
		-0.550849, -0.817373, -0.168721,
		41.287922, 38.522869, 40.089787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243919, 38.995903, 39.754166>,  <41.673519, 39.095032, 40.207893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243919, 38.995903, 39.754166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096958, 38.640480, 39.864056>,  <42.008781, 38.427227, 39.929989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096958, 38.640480, 39.864056>,  <42.243919, 38.995903, 39.754166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096958, 38.640480, 39.864056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181174, -0.221344, -0.958218,
		0.912243, -0.401829, -0.079661,
		-0.367407, -0.888561, 0.274721,
		41.986736, 38.373913, 39.946472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571335, 38.536140, 39.247574>,  <42.243919, 38.995903, 39.754166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571335, 38.536140, 39.247574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230927, 38.393204, 39.401497>,  <42.026684, 38.307442, 39.493851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230927, 38.393204, 39.401497>,  <42.571335, 38.536140, 39.247574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230927, 38.393204, 39.401497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322204, -0.223330, -0.919950,
		0.414676, -0.906880, 0.074920,
		-0.851016, -0.357342, 0.384810,
		41.975620, 38.285999, 39.516941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481918, 37.920456, 39.070671>,  <42.571335, 38.536140, 39.247574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481918, 37.920456, 39.070671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108406, 38.032024, 39.160347>,  <41.884300, 38.098965, 39.214153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108406, 38.032024, 39.160347>,  <42.481918, 37.920456, 39.070671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108406, 38.032024, 39.160347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321362, -0.377985, -0.868248,
		-0.157427, -0.882798, 0.442588,
		-0.933779, 0.278916, 0.224193,
		41.828274, 38.115700, 39.227604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055256, 37.233074, 39.100388>,  <42.481918, 37.920456, 39.070671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055256, 37.233074, 39.100388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854122, 37.570492, 39.024925>,  <41.733440, 37.772942, 38.979649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854122, 37.570492, 39.024925>,  <42.055256, 37.233074, 39.100388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854122, 37.570492, 39.024925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284163, -0.367446, -0.885571,
		-0.816337, -0.391689, 0.424469,
		-0.502837, 0.843542, -0.188656,
		41.703270, 37.823555, 38.968330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320007, 37.023525, 38.893513>,  <42.055256, 37.233074, 39.100388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320007, 37.023525, 38.893513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362457, 37.389469, 38.737679>,  <41.387928, 37.609035, 38.644176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362457, 37.389469, 38.737679>,  <41.320007, 37.023525, 38.893513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362457, 37.389469, 38.737679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337886, -0.335309, -0.879432,
		-0.935185, 0.224963, 0.273533,
		0.106122, 0.914855, -0.389587,
		41.394295, 37.663925, 38.620804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086170, 37.026352, 38.247952>,  <41.320007, 37.023525, 38.893513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086170, 37.026352, 38.247952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164528, 37.413689, 38.186054>,  <41.211544, 37.646091, 38.148914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164528, 37.413689, 38.186054>,  <41.086170, 37.026352, 38.247952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164528, 37.413689, 38.186054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278416, -0.096386, -0.955612,
		-0.940271, 0.230284, 0.250719,
		0.195896, 0.968338, -0.154743,
		41.223297, 37.704189, 38.139629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482418, 37.368217, 37.853813>,  <41.086170, 37.026352, 38.247952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482418, 37.368217, 37.853813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833149, 37.548920, 37.787968>,  <41.043587, 37.657341, 37.748459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833149, 37.548920, 37.787968>,  <40.482418, 37.368217, 37.853813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833149, 37.548920, 37.787968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193356, 0.017830, -0.980967,
		-0.440221, 0.891964, 0.102983,
		0.876823, 0.451755, -0.164617,
		41.096195, 37.684444, 37.738583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390659, 37.812508, 37.340446>,  <40.482418, 37.368217, 37.853813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390659, 37.812508, 37.340446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790321, 37.800087, 37.329697>,  <41.030117, 37.792633, 37.323246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790321, 37.800087, 37.329697>,  <40.390659, 37.812508, 37.340446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790321, 37.800087, 37.329697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026942, -0.001805, -0.999635,
		0.030993, 0.999516, -0.002640,
		0.999156, -0.031053, -0.026873,
		41.090069, 37.790771, 37.321636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582619, 38.327454, 36.943005>,  <40.390659, 37.812508, 37.340446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582619, 38.327454, 36.943005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908058, 38.095097, 36.933071>,  <41.103321, 37.955681, 36.927113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908058, 38.095097, 36.933071>,  <40.582619, 38.327454, 36.943005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908058, 38.095097, 36.933071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023457, 0.009882, -0.999676,
		0.580953, 0.813918, -0.005586,
		0.813599, -0.580896, -0.024833,
		41.152138, 37.920830, 36.925621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885857, 38.532272, 36.345036>,  <40.582619, 38.327454, 36.943005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885857, 38.532272, 36.345036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038265, 38.168674, 36.412613>,  <41.129711, 37.950516, 36.453159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038265, 38.168674, 36.412613>,  <40.885857, 38.532272, 36.345036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038265, 38.168674, 36.412613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130906, -0.127849, -0.983117,
		0.915251, 0.396706, 0.070280,
		0.381023, -0.908999, 0.168946,
		41.152573, 37.895973, 36.463295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421215, 38.438210, 35.896473>,  <40.885857, 38.532272, 36.345036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421215, 38.438210, 35.896473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399651, 38.049244, 35.987247>,  <41.386711, 37.815865, 36.041714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399651, 38.049244, 35.987247>,  <41.421215, 38.438210, 35.896473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399651, 38.049244, 35.987247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024176, -0.228474, -0.973250,
		0.998253, -0.046978, 0.035826,
		-0.053906, -0.972416, 0.226939,
		41.383480, 37.757519, 36.055328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917618, 38.050087, 35.470020>,  <41.421215, 38.438210, 35.896473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917618, 38.050087, 35.470020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600052, 37.818001, 35.542732>,  <41.409512, 37.678749, 35.586361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600052, 37.818001, 35.542732>,  <41.917618, 38.050087, 35.470020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600052, 37.818001, 35.542732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144979, -0.470991, -0.870143,
		0.590489, -0.664467, 0.458047,
		-0.793917, -0.580217, 0.181781,
		41.361877, 37.643936, 35.597267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876015, 37.686523, 34.930805>,  <41.917618, 38.050087, 35.470020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876015, 37.686523, 34.930805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565331, 37.504143, 35.104622>,  <41.378922, 37.394714, 35.208912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565331, 37.504143, 35.104622>,  <41.876015, 37.686523, 34.930805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565331, 37.504143, 35.104622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292523, -0.349866, -0.889958,
		0.557815, -0.818351, 0.138365,
		-0.776706, -0.455956, 0.434546,
		41.332317, 37.367355, 35.234985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885323, 36.908298, 34.774223>,  <41.876015, 37.686523, 34.930805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885323, 36.908298, 34.774223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498180, 36.956085, 34.862759>,  <41.265896, 36.984756, 34.915878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498180, 36.956085, 34.862759>,  <41.885323, 36.908298, 34.774223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498180, 36.956085, 34.862759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251327, -0.493953, -0.832373,
		0.009891, -0.861242, 0.508098,
		-0.967852, 0.119466, 0.221339,
		41.207825, 36.991924, 34.929161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588009, 36.345036, 34.635300>,  <41.885323, 36.908298, 34.774223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588009, 36.345036, 34.635300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295925, 36.617146, 34.609921>,  <41.120674, 36.780411, 34.594692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295925, 36.617146, 34.609921>,  <41.588009, 36.345036, 34.635300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295925, 36.617146, 34.609921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276348, -0.379003, -0.883170,
		-0.624845, -0.627362, 0.464743,
		-0.730206, 0.680274, -0.063448,
		41.076862, 36.821228, 34.590885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993874, 35.903309, 34.617699>,  <41.588009, 36.345036, 34.635300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993874, 35.903309, 34.617699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010441, 36.253326, 34.424793>,  <41.020382, 36.463337, 34.309052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010441, 36.253326, 34.424793>,  <40.993874, 35.903309, 34.617699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010441, 36.253326, 34.424793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173488, -0.469045, -0.865967,
		-0.983964, 0.119537, 0.132381,
		0.041422, 0.875047, -0.482262,
		41.022869, 36.515842, 34.280113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438538, 35.474651, 35.083569>,  <40.993874, 35.903309, 34.617699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438538, 35.474651, 35.083569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165222, 35.203888, 34.974091>,  <41.001232, 35.041428, 34.908401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165222, 35.203888, 34.974091>,  <41.438538, 35.474651, 35.083569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165222, 35.203888, 34.974091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680551, -0.454630, -0.574597,
		0.264520, -0.578881, 0.771315,
		-0.683286, -0.676911, -0.273699,
		40.960236, 35.000816, 34.891979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.901287, 34.984379, 35.297016>,  <41.438538, 35.474651, 35.083569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.901287, 34.984379, 35.297016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675911, 34.876671, 34.984600>,  <41.540684, 34.812046, 34.797150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.675911, 34.876671, 34.984600>,  <41.901287, 34.984379, 35.297016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675911, 34.876671, 34.984600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822285, -0.274176, -0.498674,
		-0.079865, -0.923213, 0.375899,
		-0.563444, -0.269270, -0.781041,
		41.506878, 34.795891, 34.750286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114998, 34.333050, 35.129765>,  <41.901287, 34.984379, 35.297016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114998, 34.333050, 35.129765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949680, 34.496468, 34.804241>,  <41.850491, 34.594517, 34.608929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949680, 34.496468, 34.804241>,  <42.114998, 34.333050, 35.129765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949680, 34.496468, 34.804241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776749, -0.308245, -0.549223,
		-0.475234, -0.859113, -0.189941,
		-0.413296, 0.408546, -0.813803,
		41.825691, 34.619030, 34.560101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249855, 33.800449, 34.689533>,  <42.114998, 34.333050, 35.129765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249855, 33.800449, 34.689533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188976, 34.131882, 34.474018>,  <42.152447, 34.330742, 34.344707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188976, 34.131882, 34.474018>,  <42.249855, 33.800449, 34.689533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188976, 34.131882, 34.474018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819800, -0.198655, -0.537089,
		-0.552053, -0.523443, -0.649034,
		-0.152202, 0.828579, -0.538786,
		42.143314, 34.380455, 34.312382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286201, 33.687672, 34.015469>,  <42.249855, 33.800449, 34.689533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286201, 33.687672, 34.015469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390553, 34.073578, 34.029118>,  <42.453163, 34.305122, 34.037308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390553, 34.073578, 34.029118>,  <42.286201, 33.687672, 34.015469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390553, 34.073578, 34.029118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843949, -0.210757, -0.493287,
		-0.468716, 0.157485, -0.869197,
		0.260875, 0.964769, 0.034125,
		42.468815, 34.363010, 34.039356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502666, 33.855003, 33.290199>,  <42.286201, 33.687672, 34.015469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502666, 33.855003, 33.290199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691811, 34.111290, 33.532150>,  <42.805298, 34.265060, 33.677322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691811, 34.111290, 33.532150>,  <42.502666, 33.855003, 33.290199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691811, 34.111290, 33.532150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860676, -0.188781, -0.472863,
		-0.188781, 0.744206, -0.640718,
		0.472863, 0.640718, 0.604882,
		42.833668, 34.303505, 33.713615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912403, 34.346603, 32.862568>,  <42.502666, 33.855003, 33.290199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912403, 34.346603, 32.862568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091145, 34.289402, 33.215809>,  <43.198391, 34.255081, 33.427753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091145, 34.289402, 33.215809>,  <42.912403, 34.346603, 32.862568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091145, 34.289402, 33.215809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890452, 0.166120, -0.423674,
		-0.086115, 0.975682, 0.201567,
		0.446855, -0.143001, 0.883103,
		43.225201, 34.246502, 33.480740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330303, 34.745613, 32.705776>,  <42.912403, 34.346603, 32.862568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330303, 34.745613, 32.705776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480400, 34.629227, 33.057808>,  <43.570457, 34.559395, 33.269028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480400, 34.629227, 33.057808>,  <43.330303, 34.745613, 32.705776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480400, 34.629227, 33.057808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871915, 0.433022, -0.228596,
		-0.314578, 0.853129, 0.416186,
		0.375239, -0.290968, 0.880076,
		43.592972, 34.541935, 33.321831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742100, 35.278339, 33.031128>,  <43.330303, 34.745613, 32.705776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742100, 35.278339, 33.031128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856743, 34.946541, 33.222878>,  <43.925529, 34.747463, 33.337929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856743, 34.946541, 33.222878>,  <43.742100, 35.278339, 33.031128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856743, 34.946541, 33.222878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954925, 0.287712, -0.073075,
		-0.077307, 0.478712, 0.874562,
		0.286603, -0.829492, 0.479376,
		43.942722, 34.697693, 33.366692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917149, 35.429352, 33.783443>,  <43.742100, 35.278339, 33.031128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917149, 35.429352, 33.783443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106762, 35.160767, 33.555607>,  <44.220528, 34.999615, 33.418903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106762, 35.160767, 33.555607>,  <43.917149, 35.429352, 33.783443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106762, 35.160767, 33.555607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873612, 0.439465, 0.208983,
		0.109993, -0.596668, 0.794914,
		0.474030, -0.671459, -0.569595,
		44.248970, 34.959328, 33.384727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377583, 34.825233, 34.124187>,  <43.917149, 35.429352, 33.783443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377583, 34.825233, 34.124187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510227, 35.004807, 33.792286>,  <44.589813, 35.112549, 33.593143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510227, 35.004807, 33.792286>,  <44.377583, 34.825233, 34.124187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510227, 35.004807, 33.792286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858370, 0.221372, 0.462814,
		0.391457, -0.865710, -0.311942,
		0.331607, 0.448933, -0.829757,
		44.609711, 35.139488, 33.543358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072235, 34.603874, 33.960255>,  <44.377583, 34.825233, 34.124187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072235, 34.603874, 33.960255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021320, 34.963955, 33.793667>,  <44.990772, 35.180004, 33.693714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021320, 34.963955, 33.793667>,  <45.072235, 34.603874, 33.960255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021320, 34.963955, 33.793667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817030, 0.333221, 0.470557,
		0.562370, -0.280371, -0.777902,
		-0.127283, 0.900198, -0.416465,
		44.983135, 35.234013, 33.668728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726494, 34.792076, 33.730312>,  <45.072235, 34.603874, 33.960255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726494, 34.792076, 33.730312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487736, 35.097034, 33.830288>,  <45.344482, 35.280010, 33.890274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487736, 35.097034, 33.830288>,  <45.726494, 34.792076, 33.730312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487736, 35.097034, 33.830288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734008, 0.393115, 0.553798,
		0.323958, 0.514017, -0.794253,
		-0.596895, 0.762396, 0.249939,
		45.308666, 35.325752, 33.905270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036667, 35.465057, 33.513393>,  <45.726494, 34.792076, 33.730312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036667, 35.465057, 33.513393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804306, 35.506096, 33.836384>,  <45.664890, 35.530720, 34.030178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.804306, 35.506096, 33.836384>,  <46.036667, 35.465057, 33.513393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804306, 35.506096, 33.836384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722607, 0.521647, 0.453568,
		-0.374683, 0.846970, -0.377166,
		-0.580906, 0.102599, 0.807479,
		45.630035, 35.536877, 34.078629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917496, 36.218197, 33.728683>,  <46.036667, 35.465057, 33.513393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917496, 36.218197, 33.728683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.931610, 35.947666, 34.022987>,  <45.940079, 35.785347, 34.199570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.931610, 35.947666, 34.022987>,  <45.917496, 36.218197, 33.728683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.931610, 35.947666, 34.022987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699158, 0.542762, 0.465390,
		-0.714096, 0.497987, 0.492012,
		0.035287, -0.676327, 0.735756,
		45.942196, 35.744766, 34.243713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874592, 36.505882, 34.391579>,  <45.917496, 36.218197, 33.728683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874592, 36.505882, 34.391579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100159, 36.176281, 34.369595>,  <46.235497, 35.978519, 34.356403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.100159, 36.176281, 34.369595>,  <45.874592, 36.505882, 34.391579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.100159, 36.176281, 34.369595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794669, 0.523322, 0.307629,
		-0.224726, -0.217150, 0.949918,
		0.563915, -0.824002, -0.054958,
		46.269333, 35.929081, 34.353107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234222, 36.148781, 34.932018>,  <45.874592, 36.505882, 34.391579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234222, 36.148781, 34.932018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487034, 36.104885, 34.625164>,  <46.638721, 36.078548, 34.441051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.487034, 36.104885, 34.625164>,  <46.234222, 36.148781, 34.932018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.487034, 36.104885, 34.625164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675340, 0.563504, 0.475793,
		0.380068, -0.818792, 0.430265,
		0.632032, -0.109742, -0.767133,
		46.676643, 36.071964, 34.395023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818916, 35.802467, 35.202942>,  <46.234222, 36.148781, 34.932018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818916, 35.802467, 35.202942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926998, 36.054981, 34.912159>,  <46.991848, 36.206490, 34.737690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.926998, 36.054981, 34.912159>,  <46.818916, 35.802467, 35.202942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.926998, 36.054981, 34.912159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711725, 0.377529, 0.592384,
		0.648413, -0.677456, -0.347296,
		0.270200, 0.631289, -0.726957,
		47.008057, 36.244370, 34.694073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554161, 35.790604, 34.813881>,  <46.818916, 35.802467, 35.202942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554161, 35.790604, 34.813881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434967, 36.166286, 34.882103>,  <47.363449, 36.391697, 34.923038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434967, 36.166286, 34.882103>,  <47.554161, 35.790604, 34.813881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.434967, 36.166286, 34.882103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545463, 0.020905, 0.837874,
		0.783374, 0.342707, -0.518534,
		-0.297985, 0.939210, 0.170558,
		47.345570, 36.448048, 34.933270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.852703, 35.252064, 34.369263>,  <47.554161, 35.790604, 34.813881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.852703, 35.252064, 34.369263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654251, 35.021790, 34.629246>,  <47.535179, 34.883625, 34.785236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.654251, 35.021790, 34.629246>,  <47.852703, 35.252064, 34.369263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.654251, 35.021790, 34.629246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581895, -0.335121, -0.741007,
		0.644399, -0.745844, -0.168722,
		-0.496133, -0.575683, 0.649954,
		47.505409, 34.849083, 34.824234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.190948, 32.105717, 25.184021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830711, 32.187366, 25.030523>,  <40.614567, 32.236355, 24.938425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830711, 32.187366, 25.030523>,  <41.190948, 32.105717, 25.184021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830711, 32.187366, 25.030523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417291, -0.158989, 0.894757,
		0.121632, 0.965948, 0.228365,
		-0.900596, 0.204126, -0.383743,
		40.560532, 32.248604, 24.915400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910599, 32.565186, 25.685593>,  <41.190948, 32.105717, 25.184021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910599, 32.565186, 25.685593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606106, 32.381706, 25.502235>,  <40.423409, 32.271618, 25.392221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606106, 32.381706, 25.502235>,  <40.910599, 32.565186, 25.685593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606106, 32.381706, 25.502235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494338, -0.047043, 0.867996,
		-0.419709, 0.887348, -0.190939,
		-0.761232, -0.458694, -0.458394,
		40.377735, 32.244099, 25.364717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390301, 32.981232, 25.824039>,  <40.910599, 32.565186, 25.685593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390301, 32.981232, 25.824039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.184956, 32.656982, 25.711370>,  <40.061749, 32.462433, 25.643768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.184956, 32.656982, 25.711370>,  <40.390301, 32.981232, 25.824039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184956, 32.656982, 25.711370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563301, 0.070684, 0.823223,
		-0.647416, 0.581282, -0.492913,
		-0.513366, -0.810626, -0.281675,
		40.030945, 32.413795, 25.626867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701214, 33.255661, 25.676214>,  <40.390301, 32.981232, 25.824039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701214, 33.255661, 25.676214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.710808, 32.868866, 25.777693>,  <39.716564, 32.636787, 25.838579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.710808, 32.868866, 25.777693>,  <39.701214, 33.255661, 25.676214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710808, 32.868866, 25.777693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603031, 0.188410, 0.775149,
		-0.797357, -0.171576, -0.578604,
		0.023982, -0.966987, 0.253696,
		39.718002, 32.578770, 25.853802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048653, 33.067924, 25.926380>,  <39.701214, 33.255661, 25.676214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048653, 33.067924, 25.926380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249454, 32.742287, 26.043163>,  <39.369938, 32.546906, 26.113234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249454, 32.742287, 26.043163>,  <39.048653, 33.067924, 25.926380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249454, 32.742287, 26.043163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662536, -0.145010, 0.734859,
		-0.555908, -0.562336, -0.612163,
		0.502008, -0.814094, 0.291956,
		39.400059, 32.498058, 26.130751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584461, 32.507130, 25.984631>,  <39.048653, 33.067924, 25.926380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584461, 32.507130, 25.984631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888760, 32.424564, 26.230772>,  <39.071339, 32.375027, 26.378456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.888760, 32.424564, 26.230772>,  <38.584461, 32.507130, 25.984631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888760, 32.424564, 26.230772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625102, 0.022143, 0.780229,
		-0.174675, -0.978214, -0.112184,
		0.760747, -0.206413, 0.615351,
		39.116985, 32.362640, 26.415377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222443, 32.144924, 26.534470>,  <38.584461, 32.507130, 25.984631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222443, 32.144924, 26.534470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588467, 32.222157, 26.676109>,  <38.808083, 32.268497, 26.761093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588467, 32.222157, 26.676109>,  <38.222443, 32.144924, 26.534470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588467, 32.222157, 26.676109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365737, 0.027172, 0.930322,
		0.170012, -0.980805, 0.095483,
		0.915058, 0.193088, 0.354097,
		38.862984, 32.280083, 26.782339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424606, 31.638065, 27.146196>,  <38.222443, 32.144924, 26.534470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424606, 31.638065, 27.146196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654457, 31.961700, 27.195477>,  <38.792366, 32.155880, 27.225044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654457, 31.961700, 27.195477>,  <38.424606, 31.638065, 27.146196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654457, 31.961700, 27.195477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081260, -0.093386, 0.992308,
		0.814371, -0.580219, 0.012085,
		0.574627, 0.809089, 0.123200,
		38.826847, 32.204426, 27.232437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821102, 31.463840, 27.720654>,  <38.424606, 31.638065, 27.146196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821102, 31.463840, 27.720654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873558, 31.858311, 27.680140>,  <38.905029, 32.094994, 27.655830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873558, 31.858311, 27.680140>,  <38.821102, 31.463840, 27.720654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873558, 31.858311, 27.680140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131263, 0.118540, 0.984235,
		0.982636, -0.115774, 0.144993,
		0.131137, 0.986177, -0.101285,
		38.912899, 32.154163, 27.649754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134384, 31.629107, 28.243246>,  <38.821102, 31.463840, 27.720654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134384, 31.629107, 28.243246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980122, 31.989759, 28.164942>,  <38.887562, 32.206150, 28.117960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.980122, 31.989759, 28.164942>,  <39.134384, 31.629107, 28.243246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980122, 31.989759, 28.164942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128185, 0.262478, 0.956386,
		0.913693, 0.343746, -0.216803,
		-0.385660, 0.901634, -0.195761,
		38.864422, 32.260250, 28.106213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565861, 32.091743, 28.554020>,  <39.134384, 31.629107, 28.243246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565861, 32.091743, 28.554020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225914, 32.301994, 28.538839>,  <39.021946, 32.428146, 28.529730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225914, 32.301994, 28.538839>,  <39.565861, 32.091743, 28.554020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225914, 32.301994, 28.538839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076571, 0.194416, 0.977926,
		0.521402, 0.828203, -0.205475,
		-0.849869, 0.525626, -0.037952,
		38.970955, 32.459682, 28.527454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656391, 32.733269, 28.974434>,  <39.565861, 32.091743, 28.554020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656391, 32.733269, 28.974434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260204, 32.688644, 28.942104>,  <39.022491, 32.661869, 28.922707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260204, 32.688644, 28.942104>,  <39.656391, 32.733269, 28.974434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260204, 32.688644, 28.942104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103824, 0.218893, 0.970209,
		-0.090548, 0.969350, -0.228389,
		-0.990465, -0.111562, -0.080822,
		38.963066, 32.655174, 28.917858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459522, 33.273159, 29.297144>,  <39.656391, 32.733269, 28.974434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459522, 33.273159, 29.297144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138054, 33.035477, 29.284271>,  <38.945175, 32.892868, 29.276548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138054, 33.035477, 29.284271>,  <39.459522, 33.273159, 29.297144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138054, 33.035477, 29.284271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183311, 0.195755, 0.963368,
		-0.566142, 0.780125, -0.266247,
		-0.803667, -0.594209, -0.032180,
		38.896954, 32.857216, 29.274618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952717, 33.662350, 29.743696>,  <39.459522, 33.273159, 29.297144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952717, 33.662350, 29.743696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819012, 33.286430, 29.715282>,  <38.738789, 33.060879, 29.698235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.819012, 33.286430, 29.715282>,  <38.952717, 33.662350, 29.743696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819012, 33.286430, 29.715282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245221, 0.013948, 0.969367,
		-0.910019, 0.341443, -0.235121,
		-0.334263, -0.939799, -0.071036,
		38.718731, 33.004490, 29.693972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242126, 33.587109, 29.942308>,  <38.952717, 33.662350, 29.743696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242126, 33.587109, 29.942308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396210, 33.223797, 30.007608>,  <38.488659, 33.005810, 30.046787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396210, 33.223797, 30.007608>,  <38.242126, 33.587109, 29.942308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396210, 33.223797, 30.007608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247132, 0.068908, 0.966529,
		-0.889125, -0.412656, -0.197920,
		0.385206, -0.908277, 0.163248,
		38.511772, 32.951313, 30.056583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676514, 33.253891, 30.375017>,  <38.242126, 33.587109, 29.942308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676514, 33.253891, 30.375017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031250, 33.071228, 30.403221>,  <38.244091, 32.961628, 30.420143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031250, 33.071228, 30.403221>,  <37.676514, 33.253891, 30.375017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031250, 33.071228, 30.403221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138200, -0.116526, 0.983526,
		-0.440922, -0.881976, -0.166450,
		0.886842, -0.456661, 0.070510,
		38.297302, 32.934231, 30.424374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515987, 32.597893, 30.749014>,  <37.676514, 33.253891, 30.375017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515987, 32.597893, 30.749014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902554, 32.690285, 30.794069>,  <38.134495, 32.745720, 30.821102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902554, 32.690285, 30.794069>,  <37.515987, 32.597893, 30.749014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902554, 32.690285, 30.794069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082974, -0.134367, 0.987452,
		0.243213, -0.963636, -0.110690,
		0.966417, 0.230977, 0.112637,
		38.192478, 32.759579, 30.827860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806179, 32.151615, 31.213158>,  <37.515987, 32.597893, 30.749014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806179, 32.151615, 31.213158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092476, 32.430233, 31.233273>,  <38.264256, 32.597404, 31.245342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.092476, 32.430233, 31.233273>,  <37.806179, 32.151615, 31.213158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092476, 32.430233, 31.233273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007418, -0.079586, 0.996800,
		0.698322, -0.713082, -0.062130,
		0.715745, 0.696549, 0.050287,
		38.307198, 32.639198, 31.248358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384975, 31.849911, 31.533592>,  <37.806179, 32.151615, 31.213158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384975, 31.849911, 31.533592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398521, 32.242249, 31.610319>,  <38.406647, 32.477654, 31.656355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398521, 32.242249, 31.610319>,  <38.384975, 31.849911, 31.533592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398521, 32.242249, 31.610319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034660, -0.192965, 0.980593,
		0.998825, -0.026555, -0.040530,
		0.033861, 0.980846, 0.191818,
		38.408680, 32.536503, 31.667864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738468, 31.859583, 32.131725>,  <38.384975, 31.849911, 31.533592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738468, 31.859583, 32.131725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547379, 32.208168, 32.087311>,  <38.432724, 32.417320, 32.060661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547379, 32.208168, 32.087311>,  <38.738468, 31.859583, 32.131725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547379, 32.208168, 32.087311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259633, -0.019304, 0.965514,
		0.839268, 0.490079, 0.235482,
		-0.477724, 0.871464, -0.111040,
		38.404060, 32.469608, 32.053997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852024, 32.115376, 32.815865>,  <38.738468, 31.859583, 32.131725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852024, 32.115376, 32.815865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588749, 32.372242, 32.658684>,  <38.430782, 32.526360, 32.564377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588749, 32.372242, 32.658684>,  <38.852024, 32.115376, 32.815865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588749, 32.372242, 32.658684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461747, 0.067912, 0.884408,
		0.594621, 0.763553, 0.251819,
		-0.658191, 0.642164, -0.392950,
		38.391293, 32.564892, 32.540798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118214, 32.877480, 32.964268>,  <38.852024, 32.115376, 32.815865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118214, 32.877480, 32.964268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722824, 32.825054, 32.933949>,  <38.485592, 32.793598, 32.915756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.722824, 32.825054, 32.933949>,  <39.118214, 32.877480, 32.964268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722824, 32.825054, 32.933949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041878, -0.244396, 0.968771,
		-0.145493, 0.960777, 0.236091,
		-0.988473, -0.131062, -0.075793,
		38.426281, 32.785736, 32.911209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998386, 33.561104, 33.210255>,  <39.118214, 32.877480, 32.964268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998386, 33.561104, 33.210255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299400, 33.652615, 33.457272>,  <39.480007, 33.707523, 33.605480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.299400, 33.652615, 33.457272>,  <38.998386, 33.561104, 33.210255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299400, 33.652615, 33.457272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634756, -0.002153, -0.772710,
		-0.175452, 0.973476, -0.146840,
		0.752530, 0.228781, 0.617541,
		39.525158, 33.721249, 33.642532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384247, 34.202488, 32.963409>,  <38.998386, 33.561104, 33.210255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384247, 34.202488, 32.963409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.637886, 33.985947, 33.184265>,  <39.790070, 33.856022, 33.316780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.637886, 33.985947, 33.184265>,  <39.384247, 34.202488, 32.963409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637886, 33.985947, 33.184265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610176, -0.088309, -0.787329,
		0.474980, 0.836147, 0.274323,
		0.634098, -0.541351, 0.552141,
		39.828114, 33.823540, 33.349907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014210, 34.446224, 32.778141>,  <39.384247, 34.202488, 32.963409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014210, 34.446224, 32.778141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.077702, 34.075375, 32.913937>,  <40.115795, 33.852867, 32.995415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.077702, 34.075375, 32.913937>,  <40.014210, 34.446224, 32.778141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077702, 34.075375, 32.913937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706899, -0.133335, -0.694633,
		0.689275, 0.350240, 0.634217,
		0.158725, -0.927121, 0.339489,
		40.125320, 33.797237, 33.015785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727421, 34.484268, 32.878101>,  <40.014210, 34.446224, 32.778141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727421, 34.484268, 32.878101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642288, 34.093494, 32.885048>,  <40.591209, 33.859032, 32.889214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.642288, 34.093494, 32.885048>,  <40.727421, 34.484268, 32.878101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642288, 34.093494, 32.885048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758202, -0.176334, -0.627723,
		0.616307, -0.120431, 0.778243,
		-0.212828, -0.976935, 0.017364,
		40.578442, 33.800415, 32.890259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348251, 34.145218, 32.875778>,  <40.727421, 34.484268, 32.878101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348251, 34.145218, 32.875778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.098877, 33.865101, 32.736687>,  <40.949253, 33.697029, 32.653233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.098877, 33.865101, 32.736687>,  <41.348251, 34.145218, 32.875778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098877, 33.865101, 32.736687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708281, -0.317471, -0.630516,
		0.331153, -0.639376, 0.693928,
		-0.623439, -0.700293, -0.347726,
		40.911846, 33.655014, 32.632370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811466, 33.471432, 32.773609>,  <41.348251, 34.145218, 32.875778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811466, 33.471432, 32.773609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.472485, 33.426434, 32.566086>,  <41.269096, 33.399433, 32.441570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.472485, 33.426434, 32.566086>,  <41.811466, 33.471432, 32.773609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472485, 33.426434, 32.566086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525387, -0.317810, -0.789282,
		-0.076088, -0.941457, 0.328437,
		-0.847454, -0.112501, -0.518810,
		41.218246, 33.392685, 32.410442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898445, 32.844032, 32.415096>,  <41.811466, 33.471432, 32.773609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898445, 32.844032, 32.415096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.592010, 32.990429, 32.203754>,  <41.408150, 33.078266, 32.076950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.592010, 32.990429, 32.203754>,  <41.898445, 32.844032, 32.415096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592010, 32.990429, 32.203754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392197, -0.385069, -0.835406,
		-0.509205, -0.847214, 0.151457,
		-0.766089, 0.365992, -0.528354,
		41.362183, 33.100227, 32.045250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733887, 32.306171, 31.902813>,  <41.898445, 32.844032, 32.415096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733887, 32.306171, 31.902813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.569145, 32.637947, 31.751869>,  <41.470299, 32.837013, 31.661303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.569145, 32.637947, 31.751869>,  <41.733887, 32.306171, 31.902813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569145, 32.637947, 31.751869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127840, -0.357425, -0.925151,
		-0.902238, -0.429269, 0.041171,
		-0.411854, 0.829443, -0.377360,
		41.445587, 32.886780, 31.638660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345009, 32.153679, 31.444778>,  <41.733887, 32.306171, 31.902813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345009, 32.153679, 31.444778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.403214, 32.532711, 31.330988>,  <41.438137, 32.760128, 31.262714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.403214, 32.532711, 31.330988>,  <41.345009, 32.153679, 31.444778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403214, 32.532711, 31.330988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234713, -0.312390, -0.920501,
		-0.961112, 0.067172, -0.267865,
		0.145510, 0.947576, -0.284476,
		41.446865, 32.816982, 31.245646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909359, 32.324020, 30.875288>,  <41.345009, 32.153679, 31.444778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909359, 32.324020, 30.875288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211212, 32.584473, 30.842903>,  <41.392323, 32.740746, 30.823473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211212, 32.584473, 30.842903>,  <40.909359, 32.324020, 30.875288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211212, 32.584473, 30.842903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018368, -0.144303, -0.989363,
		-0.655891, 0.745118, -0.120855,
		0.754632, 0.651135, -0.080960,
		41.437603, 32.779812, 30.818615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862957, 32.667759, 30.241257>,  <40.909359, 32.324020, 30.875288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862957, 32.667759, 30.241257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.247501, 32.759769, 30.301758>,  <41.478226, 32.814976, 30.338058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.247501, 32.759769, 30.301758>,  <40.862957, 32.667759, 30.241257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247501, 32.759769, 30.301758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211687, -0.266406, -0.940328,
		-0.176003, 0.936011, -0.304805,
		0.961359, 0.230024, 0.151253,
		41.535908, 32.828777, 30.347134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099167, 33.080860, 29.693373>,  <40.862957, 32.667759, 30.241257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099167, 33.080860, 29.693373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.437515, 32.922062, 29.835867>,  <41.640522, 32.826782, 29.921364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.437515, 32.922062, 29.835867>,  <41.099167, 33.080860, 29.693373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437515, 32.922062, 29.835867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334577, -0.125237, -0.934009,
		0.415412, 0.909236, 0.026892,
		0.845867, -0.396996, 0.356234,
		41.691277, 32.802963, 29.942738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617493, 33.503551, 29.258736>,  <41.099167, 33.080860, 29.693373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617493, 33.503551, 29.258736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.774319, 33.176231, 29.426861>,  <41.868416, 32.979839, 29.527737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.774319, 33.176231, 29.426861>,  <41.617493, 33.503551, 29.258736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774319, 33.176231, 29.426861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561073, -0.149374, -0.814177,
		0.729028, 0.555038, 0.400563,
		0.392066, -0.818303, 0.420315,
		41.891937, 32.930740, 29.552956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355530, 33.552326, 29.209608>,  <41.617493, 33.503551, 29.258736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355530, 33.552326, 29.209608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.292488, 33.159302, 29.249073>,  <42.254662, 32.923489, 29.272751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.292488, 33.159302, 29.249073>,  <42.355530, 33.552326, 29.209608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292488, 33.159302, 29.249073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643081, -0.177945, -0.744837,
		0.749404, -0.053945, 0.659912,
		-0.157608, -0.982561, 0.098661,
		42.245205, 32.864532, 29.278671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037689, 33.302494, 29.123249>,  <42.355530, 33.552326, 29.209608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037689, 33.302494, 29.123249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.747761, 33.037449, 29.047794>,  <42.573803, 32.878422, 29.002522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.747761, 33.037449, 29.047794>,  <43.037689, 33.302494, 29.123249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747761, 33.037449, 29.047794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462420, -0.264946, -0.846151,
		0.510693, -0.700533, 0.498444,
		-0.724818, -0.662613, -0.188635,
		42.530315, 32.838665, 28.991203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.357025, 32.672215, 28.839643>,  <43.037689, 33.302494, 29.123249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.357025, 32.672215, 28.839643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.975388, 32.630474, 28.727343>,  <42.746407, 32.605431, 28.659962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.975388, 32.630474, 28.727343>,  <43.357025, 32.672215, 28.839643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975388, 32.630474, 28.727343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291421, -0.106920, -0.950601,
		0.069176, -0.988777, 0.132421,
		-0.954091, -0.104349, -0.280754,
		42.689159, 32.599171, 28.643116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369804, 32.097809, 28.335964>,  <43.357025, 32.672215, 28.839643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369804, 32.097809, 28.335964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.037743, 32.311588, 28.272457>,  <42.838505, 32.439857, 28.234354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.037743, 32.311588, 28.272457>,  <43.369804, 32.097809, 28.335964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037743, 32.311588, 28.272457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205020, 0.027819, -0.978362,
		-0.518470, -0.844741, -0.132667,
		-0.830154, 0.534451, -0.158765,
		42.788696, 32.471924, 28.224827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079037, 31.727619, 27.839470>,  <43.369804, 32.097809, 28.335964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079037, 31.727619, 27.839470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.933689, 32.100246, 27.834734>,  <42.846481, 32.323822, 27.831892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.933689, 32.100246, 27.834734>,  <43.079037, 31.727619, 27.839470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.933689, 32.100246, 27.834734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135611, 0.040315, -0.989942,
		-0.921721, -0.361323, -0.140980,
		-0.363372, 0.931569, -0.011840,
		42.824677, 32.379719, 27.831182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.148964, 31.906992, 27.230734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.307762, 32.266220, 27.306480>,  <42.403042, 32.481758, 27.351929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.307762, 32.266220, 27.306480>,  <42.148964, 31.906992, 27.230734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307762, 32.266220, 27.306480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199633, 0.116891, -0.972874,
		-0.895846, 0.424032, -0.132879,
		0.396997, 0.898072, 0.189367,
		42.426861, 32.535641, 27.363291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984798, 32.253899, 26.679598>,  <42.148964, 31.906992, 27.230734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984798, 32.253899, 26.679598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.255478, 32.508327, 26.827915>,  <42.417885, 32.660988, 26.916904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.255478, 32.508327, 26.827915>,  <41.984798, 32.253899, 26.679598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255478, 32.508327, 26.827915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220637, 0.305276, -0.926351,
		-0.702424, 0.708670, 0.066238,
		0.676697, 0.636077, 0.370792,
		42.458488, 32.699150, 26.939154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743027, 32.884594, 26.481346>,  <41.984798, 32.253899, 26.679598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743027, 32.884594, 26.481346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139908, 32.889965, 26.530897>,  <42.378036, 32.893188, 26.560629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.139908, 32.889965, 26.530897>,  <41.743027, 32.884594, 26.481346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139908, 32.889965, 26.530897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118640, 0.202118, -0.972149,
		-0.038093, 0.979269, 0.198949,
		0.992206, 0.013429, 0.123880,
		42.437569, 32.893993, 26.568062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953644, 33.450459, 26.073236>,  <41.743027, 32.884594, 26.481346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953644, 33.450459, 26.073236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285271, 33.232971, 26.125412>,  <42.484245, 33.102478, 26.156717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285271, 33.232971, 26.125412>,  <41.953644, 33.450459, 26.073236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285271, 33.232971, 26.125412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194952, 0.062448, -0.978823,
		0.524061, 0.836940, 0.157773,
		0.829068, -0.543721, 0.130437,
		42.533993, 33.069855, 26.164543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429695, 33.795174, 25.666779>,  <41.953644, 33.450459, 26.073236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429695, 33.795174, 25.666779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.585079, 33.432587, 25.733019>,  <42.678310, 33.215034, 25.772762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.585079, 33.432587, 25.733019>,  <42.429695, 33.795174, 25.666779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585079, 33.432587, 25.733019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197374, -0.093690, -0.975841,
		0.900079, 0.411761, 0.142517,
		0.388461, -0.906463, 0.165600,
		42.701618, 33.160648, 25.782700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005215, 33.877216, 25.452467>,  <42.429695, 33.795174, 25.666779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005215, 33.877216, 25.452467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.969780, 33.479671, 25.425989>,  <42.948521, 33.241142, 25.410103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.969780, 33.479671, 25.425989>,  <43.005215, 33.877216, 25.452467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969780, 33.479671, 25.425989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509256, 0.011922, -0.860532,
		0.856043, -0.109943, 0.505076,
		-0.088588, -0.993866, -0.066195,
		42.943203, 33.181511, 25.406130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598495, 33.638523, 25.279268>,  <43.005215, 33.877216, 25.452467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598495, 33.638523, 25.279268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379642, 33.320274, 25.175249>,  <43.248329, 33.129326, 25.112839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379642, 33.320274, 25.175249>,  <43.598495, 33.638523, 25.279268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379642, 33.320274, 25.175249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568557, -0.125243, -0.813055,
		0.614318, -0.592702, 0.520883,
		-0.547135, -0.795625, -0.260046,
		43.215504, 33.081589, 25.097235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108635, 33.132641, 24.909624>,  <43.598495, 33.638523, 25.279268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108635, 33.132641, 24.909624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.741577, 33.031422, 24.787050>,  <43.521343, 32.970692, 24.713507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.741577, 33.031422, 24.787050>,  <44.108635, 33.132641, 24.909624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741577, 33.031422, 24.787050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382586, -0.353873, -0.853465,
		0.107525, -0.900412, 0.421540,
		-0.917642, -0.253044, -0.306435,
		43.466286, 32.955509, 24.695120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199539, 32.525730, 24.681112>,  <44.108635, 33.132641, 24.909624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199539, 32.525730, 24.681112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.868042, 32.655792, 24.498924>,  <43.669144, 32.733829, 24.389610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.868042, 32.655792, 24.498924>,  <44.199539, 32.525730, 24.681112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868042, 32.655792, 24.498924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346358, -0.341257, -0.873830,
		-0.439566, -0.881938, 0.170194,
		-0.828745, 0.325158, -0.455471,
		43.619419, 32.753338, 24.362284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959114, 31.977715, 24.270594>,  <44.199539, 32.525730, 24.681112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959114, 31.977715, 24.270594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.821072, 32.311142, 24.098051>,  <43.738247, 32.511200, 23.994526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.821072, 32.311142, 24.098051>,  <43.959114, 31.977715, 24.270594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821072, 32.311142, 24.098051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379854, -0.296227, -0.876334,
		-0.858263, -0.466277, -0.214405,
		-0.345101, 0.833568, -0.431358,
		43.717541, 32.561211, 23.968643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686138, 31.734129, 23.582169>,  <43.959114, 31.977715, 24.270594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686138, 31.734129, 23.582169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.711300, 32.129166, 23.524616>,  <43.726398, 32.366188, 23.490084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.711300, 32.129166, 23.524616>,  <43.686138, 31.734129, 23.582169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711300, 32.129166, 23.524616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398189, -0.157033, -0.903762,
		-0.915144, -0.000439, -0.403127,
		0.062907, 0.987593, -0.143883,
		43.730171, 32.425446, 23.481451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354382, 31.904955, 22.952328>,  <43.686138, 31.734129, 23.582169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354382, 31.904955, 22.952328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.621067, 32.194904, 23.021660>,  <43.781078, 32.368874, 23.063259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.621067, 32.194904, 23.021660>,  <43.354382, 31.904955, 22.952328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621067, 32.194904, 23.021660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286481, -0.034546, -0.957463,
		-0.688054, 0.688013, -0.230695,
		0.666717, 0.724876, 0.173333,
		43.821083, 32.412369, 23.073660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101906, 32.494938, 22.492693>,  <43.354382, 31.904955, 22.952328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101906, 32.494938, 22.492693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.485435, 32.541569, 22.596277>,  <43.715553, 32.569546, 22.658428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.485435, 32.541569, 22.596277>,  <43.101906, 32.494938, 22.492693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485435, 32.541569, 22.596277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249147, 0.092323, -0.964055,
		-0.136295, 0.988881, 0.059477,
		0.958827, 0.116578, 0.258960,
		43.773083, 32.576542, 22.673965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325436, 32.821175, 21.978249>,  <43.101906, 32.494938, 22.492693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325436, 32.821175, 21.978249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.681168, 32.728382, 22.135866>,  <43.894608, 32.672707, 22.230436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.681168, 32.728382, 22.135866>,  <43.325436, 32.821175, 21.978249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681168, 32.728382, 22.135866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406173, 0.004972, -0.913783,
		0.210018, 0.972708, 0.098644,
		0.889335, -0.231978, 0.394044,
		43.947968, 32.658791, 22.254080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745697, 33.242100, 21.717901>,  <43.325436, 32.821175, 21.978249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745697, 33.242100, 21.717901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.994175, 32.951656, 21.835802>,  <44.143261, 32.777390, 21.906542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.994175, 32.951656, 21.835802>,  <43.745697, 33.242100, 21.717901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994175, 32.951656, 21.835802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402337, -0.027257, -0.915086,
		0.672487, 0.687038, 0.275209,
		0.621197, -0.726110, 0.294751,
		44.180534, 32.733822, 21.924227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391949, 33.389889, 21.609138>,  <43.745697, 33.242100, 21.717901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391949, 33.389889, 21.609138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.423382, 32.991726, 21.631014>,  <44.442242, 32.752827, 21.644140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.423382, 32.991726, 21.631014>,  <44.391949, 33.389889, 21.609138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423382, 32.991726, 21.631014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503026, -0.007770, -0.864236,
		0.860691, 0.095426, 0.500104,
		0.078585, -0.995406, 0.054690,
		44.446957, 32.693104, 21.647421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061352, 33.213261, 21.410791>,  <44.391949, 33.389889, 21.609138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061352, 33.213261, 21.410791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.889221, 32.853817, 21.376547>,  <44.785942, 32.638153, 21.355999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.889221, 32.853817, 21.376547>,  <45.061352, 33.213261, 21.410791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.889221, 32.853817, 21.376547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360187, -0.083969, -0.929093,
		0.827699, -0.430649, 0.359800,
		-0.430325, -0.898605, -0.085613,
		44.760124, 32.584236, 21.350863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576382, 32.860912, 21.002764>,  <45.061352, 33.213261, 21.410791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576382, 32.860912, 21.002764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.218479, 32.683563, 20.981520>,  <45.003738, 32.577152, 20.968773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.218479, 32.683563, 20.981520>,  <45.576382, 32.860912, 21.002764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.218479, 32.683563, 20.981520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154894, -0.196610, -0.968170,
		0.418821, -0.874507, 0.244596,
		-0.894761, -0.443376, -0.053112,
		44.950050, 32.550549, 20.965586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732342, 32.256496, 20.590595>,  <45.576382, 32.860912, 21.002764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732342, 32.256496, 20.590595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.337662, 32.315968, 20.564281>,  <45.100853, 32.351650, 20.548492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.337662, 32.315968, 20.564281>,  <45.732342, 32.256496, 20.590595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337662, 32.315968, 20.564281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023113, -0.272246, -0.961950,
		-0.160925, -0.950673, 0.265187,
		-0.986696, 0.148673, -0.065784,
		45.041653, 32.360569, 20.544546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473373, 31.657928, 20.191221>,  <45.732342, 32.256496, 20.590595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473373, 31.657928, 20.191221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.186935, 31.935911, 20.165190>,  <45.015072, 32.102699, 20.149570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.186935, 31.935911, 20.165190>,  <45.473373, 31.657928, 20.191221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.186935, 31.935911, 20.165190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078992, -0.011950, -0.996804,
		-0.693514, -0.718951, -0.046339,
		-0.716100, 0.694958, -0.065079,
		44.972107, 32.144398, 20.145666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085220, 31.382849, 19.638777>,  <45.473373, 31.657928, 20.191221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085220, 31.382849, 19.638777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.983379, 31.764948, 19.699018>,  <44.922276, 31.994207, 19.735163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.983379, 31.764948, 19.699018>,  <45.085220, 31.382849, 19.638777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983379, 31.764948, 19.699018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099624, 0.129000, -0.986628,
		-0.961902, -0.266198, 0.062322,
		-0.254598, 0.955247, 0.150605,
		44.907001, 32.051521, 19.744200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473366, 31.491817, 19.328203>,  <45.085220, 31.382849, 19.638777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473366, 31.491817, 19.328203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.647060, 31.851902, 19.341227>,  <44.751278, 32.067951, 19.349041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.647060, 31.851902, 19.341227>,  <44.473366, 31.491817, 19.328203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647060, 31.851902, 19.341227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130462, -0.027088, -0.991083,
		-0.891302, 0.434610, -0.129206,
		0.434235, 0.900211, 0.032557,
		44.777332, 32.121964, 19.350994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226898, 31.962490, 18.859886>,  <44.473366, 31.491817, 19.328203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226898, 31.962490, 18.859886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.603680, 32.079769, 18.925323>,  <44.829746, 32.150139, 18.964586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.603680, 32.079769, 18.925323>,  <44.226898, 31.962490, 18.859886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603680, 32.079769, 18.925323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209290, -0.131745, -0.968938,
		-0.262540, 0.946930, -0.185461,
		0.941950, 0.293200, 0.163595,
		44.886265, 32.167728, 18.974401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411648, 32.592335, 18.544939>,  <44.226898, 31.962490, 18.859886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411648, 32.592335, 18.544939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.713154, 32.331043, 18.573618>,  <44.894058, 32.174271, 18.590826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.713154, 32.331043, 18.573618>,  <44.411648, 32.592335, 18.544939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713154, 32.331043, 18.573618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131412, 0.042931, -0.990398,
		0.643874, 0.755946, 0.118202,
		0.753762, -0.653225, 0.071698,
		44.939281, 32.135075, 18.595127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272961, 32.879143, 17.868597>,  <44.411648, 32.592335, 18.544939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272961, 32.879143, 17.868597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.910545, 32.822670, 17.709021>,  <43.693096, 32.788784, 17.613276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.910545, 32.822670, 17.709021>,  <44.272961, 32.879143, 17.868597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910545, 32.822670, 17.709021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418701, 0.162168, 0.893527,
		-0.061457, 0.976611, -0.206045,
		-0.906042, -0.141184, -0.398941,
		43.638733, 32.780315, 17.589338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915630, 33.422318, 18.206108>,  <44.272961, 32.879143, 17.868597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915630, 33.422318, 18.206108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.652115, 33.151730, 18.074423>,  <43.494003, 32.989376, 17.995411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.652115, 33.151730, 18.074423>,  <43.915630, 33.422318, 18.206108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652115, 33.151730, 18.074423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549303, 0.133502, 0.824890,
		-0.514063, 0.724268, -0.459538,
		-0.658791, -0.676471, -0.329214,
		43.454479, 32.948788, 17.975658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290154, 33.741394, 18.324715>,  <43.915630, 33.422318, 18.206108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290154, 33.741394, 18.324715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.181717, 33.358170, 18.287569>,  <43.116653, 33.128235, 18.265282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.181717, 33.358170, 18.287569>,  <43.290154, 33.741394, 18.324715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181717, 33.358170, 18.287569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658186, 0.114111, 0.744157,
		-0.702352, 0.262858, -0.661519,
		-0.271094, -0.958063, -0.092864,
		43.100388, 33.070751, 18.259710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571667, 33.827477, 18.142607>,  <43.290154, 33.741394, 18.324715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571667, 33.827477, 18.142607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.674007, 33.485279, 18.322683>,  <42.735413, 33.279961, 18.430729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.674007, 33.485279, 18.322683>,  <42.571667, 33.827477, 18.142607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674007, 33.485279, 18.322683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542992, 0.258113, 0.799085,
		-0.799812, -0.448896, -0.398488,
		0.255851, -0.855493, 0.450189,
		42.750763, 33.228630, 18.457741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956699, 33.480541, 18.506289>,  <42.571667, 33.827477, 18.142607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956699, 33.480541, 18.506289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.269867, 33.289303, 18.665520>,  <42.457767, 33.174561, 18.761059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.269867, 33.289303, 18.665520>,  <41.956699, 33.480541, 18.506289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269867, 33.289303, 18.665520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476782, -0.050048, 0.877596,
		-0.399649, -0.876883, -0.267130,
		0.782918, -0.478092, 0.398080,
		42.504742, 33.145874, 18.784945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576111, 32.843529, 18.865814>,  <41.956699, 33.480541, 18.506289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576111, 32.843529, 18.865814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.941730, 32.891697, 19.020744>,  <42.161102, 32.920597, 19.113703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.941730, 32.891697, 19.020744>,  <41.576111, 32.843529, 18.865814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941730, 32.891697, 19.020744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351060, -0.243451, 0.904151,
		0.203169, -0.962409, -0.180251,
		0.914046, 0.120417, 0.387325,
		42.215942, 32.927822, 19.136942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765526, 32.177238, 19.298313>,  <41.576111, 32.843529, 18.865814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765526, 32.177238, 19.298313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.970692, 32.483646, 19.453300>,  <42.093792, 32.667492, 19.546293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.970692, 32.483646, 19.453300>,  <41.765526, 32.177238, 19.298313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970692, 32.483646, 19.453300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340676, -0.232661, 0.910938,
		0.787943, -0.599239, 0.141627,
		0.512919, 0.766016, 0.387470,
		42.124569, 32.713451, 19.569542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787098, 32.040581, 19.969494>,  <41.765526, 32.177238, 19.298313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787098, 32.040581, 19.969494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.941067, 32.409050, 19.992392>,  <42.033447, 32.630131, 20.006130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.941067, 32.409050, 19.992392>,  <41.787098, 32.040581, 19.969494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941067, 32.409050, 19.992392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253688, 0.045963, 0.966193,
		0.887398, -0.386435, 0.251383,
		0.384926, 0.921171, 0.057246,
		42.056545, 32.685402, 20.009565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261486, 32.106937, 20.553165>,  <41.787098, 32.040581, 19.969494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261486, 32.106937, 20.553165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.145344, 32.484470, 20.490082>,  <42.075657, 32.710991, 20.452230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.145344, 32.484470, 20.490082>,  <42.261486, 32.106937, 20.553165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145344, 32.484470, 20.490082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113047, 0.129824, 0.985072,
		0.950217, 0.303851, 0.069002,
		-0.290357, 0.943833, -0.157710,
		42.058235, 32.767620, 20.442768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621845, 32.450058, 21.091345>,  <42.261486, 32.106937, 20.553165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621845, 32.450058, 21.091345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319717, 32.681427, 20.968117>,  <42.138439, 32.820251, 20.894180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319717, 32.681427, 20.968117>,  <42.621845, 32.450058, 21.091345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319717, 32.681427, 20.968117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169368, 0.281825, 0.944399,
		0.633089, 0.765504, -0.114902,
		-0.755324, 0.578427, -0.308072,
		42.093121, 32.854954, 20.875694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554775, 32.969040, 21.610910>,  <42.621845, 32.450058, 21.091345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554775, 32.969040, 21.610910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.193260, 33.007687, 21.444138>,  <41.976353, 33.030876, 21.344074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.193260, 33.007687, 21.444138>,  <42.554775, 32.969040, 21.610910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193260, 33.007687, 21.444138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412648, 0.061685, 0.908800,
		0.113524, 0.993408, -0.015881,
		-0.903789, 0.096618, -0.416930,
		41.922123, 33.036671, 21.319059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247044, 33.643345, 21.765518>,  <42.554775, 32.969040, 21.610910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247044, 33.643345, 21.765518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.927788, 33.411388, 21.700167>,  <41.736233, 33.272213, 21.660955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.927788, 33.411388, 21.700167>,  <42.247044, 33.643345, 21.765518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.927788, 33.411388, 21.700167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312462, 0.166578, 0.935211,
		-0.515106, 0.797482, -0.314147,
		-0.798144, -0.579892, -0.163378,
		41.688343, 33.237419, 21.651154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662113, 34.015789, 21.999432>,  <42.247044, 33.643345, 21.765518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.662113, 34.015789, 21.999432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.519226, 33.643478, 21.968302>,  <41.433495, 33.420094, 21.949623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.519226, 33.643478, 21.968302>,  <41.662113, 34.015789, 21.999432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519226, 33.643478, 21.968302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400873, 0.077522, 0.912848,
		-0.843623, 0.357279, -0.400814,
		-0.357213, -0.930775, -0.077824,
		41.412064, 33.364246, 21.944954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041893, 33.995033, 22.397577>,  <41.662113, 34.015789, 21.999432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041893, 33.995033, 22.397577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.137409, 33.607456, 22.371874>,  <41.194717, 33.374908, 22.356451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.137409, 33.607456, 22.371874>,  <41.041893, 33.995033, 22.397577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137409, 33.607456, 22.371874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349696, -0.147535, 0.925174,
		-0.905921, -0.198448, -0.374065,
		0.238787, -0.968943, -0.064258,
		41.209045, 33.316772, 22.352596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440197, 33.641415, 22.726763>,  <41.041893, 33.995033, 22.397577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440197, 33.641415, 22.726763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754765, 33.394337, 22.726885>,  <40.943504, 33.246090, 22.726957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754765, 33.394337, 22.726885>,  <40.440197, 33.641415, 22.726763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754765, 33.394337, 22.726885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261973, -0.333083, 0.905774,
		-0.559393, -0.712395, -0.423762,
		0.786416, -0.617697, 0.000304,
		40.990688, 33.209026, 22.726976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130226, 32.962372, 22.853901>,  <40.440197, 33.641415, 22.726763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130226, 32.962372, 22.853901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.516682, 32.910854, 22.943327>,  <40.748554, 32.879944, 22.996983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.516682, 32.910854, 22.943327>,  <40.130226, 32.962372, 22.853901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516682, 32.910854, 22.943327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258004, -0.474574, 0.841554,
		-0.002291, -0.870741, -0.491736,
		0.966141, -0.128797, 0.223568,
		40.806522, 32.872215, 23.010397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307571, 32.183434, 22.864315>,  <40.130226, 32.962372, 22.853901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307571, 32.183434, 22.864315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567829, 32.386257, 23.090429>,  <40.723984, 32.507950, 23.226097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567829, 32.386257, 23.090429>,  <40.307571, 32.183434, 22.864315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567829, 32.386257, 23.090429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220274, -0.586376, 0.779514,
		0.726731, -0.631706, -0.269831,
		0.650647, 0.507061, 0.565286,
		40.763023, 32.538376, 23.260015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540428, 31.625050, 23.403366>,  <40.307571, 32.183434, 22.864315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540428, 31.625050, 23.403366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676918, 31.965567, 23.562799>,  <40.758812, 32.169876, 23.658459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.676918, 31.965567, 23.562799>,  <40.540428, 31.625050, 23.403366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676918, 31.965567, 23.562799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241977, -0.330188, 0.912372,
		0.908302, -0.407772, 0.093325,
		0.341225, 0.851292, 0.398582,
		40.779285, 32.220955, 23.682375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916340, 31.422365, 23.947464>,  <40.540428, 31.625050, 23.403366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916340, 31.422365, 23.947464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807156, 31.798878, 24.026943>,  <40.741646, 32.024784, 24.074631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.807156, 31.798878, 24.026943>,  <40.916340, 31.422365, 23.947464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807156, 31.798878, 24.026943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274337, -0.274125, 0.921735,
		0.922080, 0.197089, 0.333054,
		-0.272962, 0.941282, 0.198696,
		40.725266, 32.081261, 24.086552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067593, 31.599316, 24.694483>,  <40.916340, 31.422365, 23.947464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067593, 31.599316, 24.694483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.816006, 31.897764, 24.607124>,  <40.665054, 32.076832, 24.554708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.816006, 31.897764, 24.607124>,  <41.067593, 31.599316, 24.694483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816006, 31.897764, 24.607124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397446, -0.067163, 0.915164,
		0.668155, 0.662414, 0.338787,
		-0.628972, 0.746121, -0.218398,
		40.627316, 32.121601, 24.541605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.894741, 32.386898, 30.291435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.538235, 32.530197, 30.180220>,  <42.324329, 32.616177, 30.113489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.538235, 32.530197, 30.180220>,  <42.894741, 32.386898, 30.291435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538235, 32.530197, 30.180220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161573, 0.322024, 0.932842,
		0.423721, 0.876334, -0.229127,
		-0.891266, 0.358244, -0.278040,
		42.270855, 32.637669, 30.096807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791733, 33.070541, 30.455799>,  <42.894741, 32.386898, 30.291435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791733, 33.070541, 30.455799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404327, 32.971321, 30.447340>,  <42.171883, 32.911789, 30.442265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404327, 32.971321, 30.447340>,  <42.791733, 33.070541, 30.455799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404327, 32.971321, 30.447340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114666, 0.369089, 0.922293,
		-0.220970, 0.895681, -0.385912,
		-0.968516, -0.248050, -0.021146,
		42.113773, 32.896908, 30.440996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478519, 33.548748, 30.919014>,  <42.791733, 33.070541, 30.455799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478519, 33.548748, 30.919014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169773, 33.299709, 30.867479>,  <41.984524, 33.150288, 30.836559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.169773, 33.299709, 30.867479>,  <42.478519, 33.548748, 30.919014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169773, 33.299709, 30.867479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414715, 0.339436, 0.844272,
		-0.481907, 0.705095, -0.520199,
		-0.771866, -0.622595, -0.128837,
		41.938213, 33.112930, 30.828829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868675, 34.039021, 30.963818>,  <42.478519, 33.548748, 30.919014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868675, 34.039021, 30.963818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735065, 33.674305, 31.059380>,  <41.654900, 33.455475, 31.116716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735065, 33.674305, 31.059380>,  <41.868675, 34.039021, 30.963818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735065, 33.674305, 31.059380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462541, 0.379406, 0.801316,
		-0.821271, 0.157151, -0.548468,
		-0.334020, -0.911787, 0.238906,
		41.634861, 33.400768, 31.131052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098854, 34.035107, 31.156794>,  <41.868675, 34.039021, 30.963818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098854, 34.035107, 31.156794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202099, 33.676849, 31.301678>,  <41.264046, 33.461895, 31.388609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.202099, 33.676849, 31.301678>,  <41.098854, 34.035107, 31.156794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202099, 33.676849, 31.301678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653558, 0.114241, 0.748205,
		-0.711507, -0.429843, -0.555871,
		0.258108, -0.895648, 0.362210,
		41.279530, 33.408154, 31.410341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418430, 33.678013, 31.367928>,  <41.098854, 34.035107, 31.156794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418430, 33.678013, 31.367928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.721104, 33.525612, 31.580446>,  <40.902706, 33.434174, 31.707956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.721104, 33.525612, 31.580446>,  <40.418430, 33.678013, 31.367928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721104, 33.525612, 31.580446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517388, 0.147830, 0.842886,
		-0.399680, -0.912681, -0.085264,
		0.756681, -0.380999, 0.531295,
		40.948109, 33.411312, 31.739834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036579, 33.168827, 31.705622>,  <40.418430, 33.678013, 31.367928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036579, 33.168827, 31.705622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378384, 33.211853, 31.908892>,  <40.583466, 33.237667, 32.030853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378384, 33.211853, 31.908892>,  <40.036579, 33.168827, 31.705622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378384, 33.211853, 31.908892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518591, 0.232363, 0.822843,
		-0.029575, -0.966664, 0.254336,
		0.854511, 0.107561, 0.508175,
		40.634735, 33.244122, 32.061344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043949, 32.756157, 32.296585>,  <40.036579, 33.168827, 31.705622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043949, 32.756157, 32.296585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.295818, 33.057640, 32.371895>,  <40.446938, 33.238529, 32.417080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.295818, 33.057640, 32.371895>,  <40.043949, 32.756157, 32.296585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295818, 33.057640, 32.371895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495754, 0.203258, 0.844342,
		0.598118, -0.624992, 0.501638,
		0.629669, 0.753705, 0.188270,
		40.484718, 33.283752, 32.428375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237129, 32.558941, 32.953068>,  <40.043949, 32.756157, 32.296585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237129, 32.558941, 32.953068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337063, 32.943668, 32.908371>,  <40.397022, 33.174507, 32.881554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337063, 32.943668, 32.908371>,  <40.237129, 32.558941, 32.953068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337063, 32.943668, 32.908371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308001, 0.188341, 0.932557,
		0.917998, -0.198566, 0.343295,
		0.249831, 0.961821, -0.111738,
		40.412014, 33.232216, 32.874851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448654, 32.655983, 33.518463>,  <40.237129, 32.558941, 32.953068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448654, 32.655983, 33.518463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.341389, 33.006092, 33.357471>,  <40.277031, 33.216156, 33.260876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.341389, 33.006092, 33.357471>,  <40.448654, 32.655983, 33.518463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341389, 33.006092, 33.357471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630504, 0.156420, 0.760261,
		0.728392, 0.457633, 0.509918,
		-0.268159, 0.875274, -0.402474,
		40.260941, 33.268673, 33.236729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590328, 33.143410, 34.145233>,  <40.448654, 32.655983, 33.518463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590328, 33.143410, 34.145233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.360989, 33.359585, 33.898914>,  <40.223385, 33.489288, 33.751125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.360989, 33.359585, 33.898914>,  <40.590328, 33.143410, 34.145233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360989, 33.359585, 33.898914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521853, 0.338531, 0.782986,
		0.631617, 0.770278, 0.087930,
		-0.573350, 0.540433, -0.615794,
		40.188984, 33.521713, 33.714176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586494, 33.956165, 34.320129>,  <40.590328, 33.143410, 34.145233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586494, 33.956165, 34.320129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239258, 33.867756, 34.142338>,  <40.030914, 33.814713, 34.035664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.239258, 33.867756, 34.142338>,  <40.586494, 33.956165, 34.320129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239258, 33.867756, 34.142338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492900, 0.489976, 0.719009,
		0.058870, 0.843252, -0.534286,
		-0.868092, -0.221021, -0.444484,
		39.978828, 33.801449, 34.008991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246605, 34.571800, 34.349251>,  <40.586494, 33.956165, 34.320129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246605, 34.571800, 34.349251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.999340, 34.258686, 34.320614>,  <39.850983, 34.070816, 34.303432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.999340, 34.258686, 34.320614>,  <40.246605, 34.571800, 34.349251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999340, 34.258686, 34.320614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675219, 0.482162, 0.558211,
		-0.402439, 0.393406, -0.826604,
		-0.618161, -0.782785, -0.071595,
		39.813892, 34.023849, 34.299137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295647, 35.359230, 34.444870>,  <40.246605, 34.571800, 34.349251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295647, 35.359230, 34.444870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061039, 35.563053, 34.696693>,  <39.920273, 35.685345, 34.847786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.061039, 35.563053, 34.696693>,  <40.295647, 35.359230, 34.444870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061039, 35.563053, 34.696693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759219, -0.075168, -0.646480,
		-0.282094, -0.857149, 0.430951,
		-0.586523, 0.509555, 0.629559,
		39.885082, 35.715919, 34.885563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194340, 36.095264, 34.169815>,  <40.295647, 35.359230, 34.444870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194340, 36.095264, 34.169815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347282, 36.464745, 34.179455>,  <40.439049, 36.686432, 34.185238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347282, 36.464745, 34.179455>,  <40.194340, 36.095264, 34.169815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347282, 36.464745, 34.179455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044698, 0.007562, -0.998972,
		-0.922933, 0.383040, -0.038396,
		0.382356, 0.923701, 0.024100,
		40.461990, 36.741856, 34.186684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728485, 36.540627, 33.774929>,  <40.194340, 36.095264, 34.169815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728485, 36.540627, 33.774929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.067738, 36.752537, 33.775978>,  <40.271290, 36.879681, 33.776608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.067738, 36.752537, 33.775978>,  <39.728485, 36.540627, 33.774929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067738, 36.752537, 33.775978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114922, 0.188812, -0.975266,
		-0.517165, 0.826855, 0.221020,
		0.848135, 0.529774, 0.002623,
		40.322178, 36.911469, 33.776764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624702, 37.207714, 33.390514>,  <39.728485, 36.540627, 33.774929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624702, 37.207714, 33.390514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021755, 37.161613, 33.375511>,  <40.259987, 37.133953, 33.366508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.021755, 37.161613, 33.375511>,  <39.624702, 37.207714, 33.390514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021755, 37.161613, 33.375511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022186, 0.131434, -0.991077,
		0.119152, 0.984603, 0.127908,
		0.992628, -0.115251, -0.037505,
		40.319542, 37.127037, 33.364258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722317, 37.611191, 32.801704>,  <39.624702, 37.207714, 33.390514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722317, 37.611191, 32.801704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.067753, 37.427860, 32.885746>,  <40.275017, 37.317863, 32.936169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.067753, 37.427860, 32.885746>,  <39.722317, 37.611191, 32.801704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067753, 37.427860, 32.885746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259160, 0.046073, -0.964735,
		0.432483, 0.887589, 0.158568,
		0.863594, -0.458326, 0.210102,
		40.326832, 37.290363, 32.948776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197052, 38.002361, 32.367981>,  <39.722317, 37.611191, 32.801704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197052, 38.002361, 32.367981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.354885, 37.648952, 32.468929>,  <40.449585, 37.436909, 32.529499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.354885, 37.648952, 32.468929>,  <40.197052, 38.002361, 32.367981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354885, 37.648952, 32.468929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186911, -0.191739, -0.963483,
		0.899649, 0.427346, 0.089483,
		0.394583, -0.883522, 0.252373,
		40.473259, 37.383896, 32.544640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739487, 38.048290, 32.022221>,  <40.197052, 38.002361, 32.367981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739487, 38.048290, 32.022221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.685917, 37.657398, 32.088043>,  <40.653774, 37.422863, 32.127537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.685917, 37.657398, 32.088043>,  <40.739487, 38.048290, 32.022221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685917, 37.657398, 32.088043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062578, -0.174064, -0.982744,
		0.989015, -0.121311, 0.084464,
		-0.133920, -0.977234, 0.164561,
		40.645741, 37.364227, 32.137413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260612, 37.681145, 31.817850>,  <40.739487, 38.048290, 32.022221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260612, 37.681145, 31.817850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015453, 37.365475, 31.802074>,  <40.868359, 37.176071, 31.792608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015453, 37.365475, 31.802074>,  <41.260612, 37.681145, 31.817850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015453, 37.365475, 31.802074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157539, -0.073132, -0.984801,
		0.774297, -0.609798, 0.169149,
		-0.612900, -0.789175, -0.039442,
		40.831585, 37.128723, 31.790241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604801, 37.120743, 31.591915>,  <41.260612, 37.681145, 31.817850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604801, 37.120743, 31.591915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.218685, 37.074867, 31.498060>,  <40.987015, 37.047340, 31.441748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.218685, 37.074867, 31.498060>,  <41.604801, 37.120743, 31.591915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218685, 37.074867, 31.498060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246567, -0.104036, -0.963525,
		0.086100, -0.987938, 0.128705,
		-0.965293, -0.114694, -0.234635,
		40.929096, 37.040459, 31.427670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619522, 36.720619, 31.050936>,  <41.604801, 37.120743, 31.591915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619522, 36.720619, 31.050936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237976, 36.834473, 31.012701>,  <41.009048, 36.902782, 30.989759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.237976, 36.834473, 31.012701>,  <41.619522, 36.720619, 31.050936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237976, 36.834473, 31.012701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109362, 0.032868, -0.993458,
		-0.279626, -0.958074, -0.062479,
		-0.953860, 0.284630, -0.095586,
		40.951817, 36.919861, 30.984026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248642, 36.266178, 30.568626>,  <41.619522, 36.720619, 31.050936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248642, 36.266178, 30.568626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033230, 36.603203, 30.572275>,  <40.903984, 36.805416, 30.574465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033230, 36.603203, 30.572275>,  <41.248642, 36.266178, 30.568626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033230, 36.603203, 30.572275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070864, 0.056078, -0.995909,
		-0.839623, -0.535678, -0.089907,
		-0.538528, 0.842558, 0.009124,
		40.871670, 36.855968, 30.575012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692097, 36.203529, 29.996210>,  <41.248642, 36.266178, 30.568626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692097, 36.203529, 29.996210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759708, 36.590591, 30.071125>,  <40.800278, 36.822826, 30.116074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.759708, 36.590591, 30.071125>,  <40.692097, 36.203529, 29.996210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759708, 36.590591, 30.071125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050310, 0.198246, -0.978860,
		-0.984326, 0.156037, 0.082192,
		0.169032, 0.967652, 0.187289,
		40.810417, 36.880886, 30.127312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042511, 36.592152, 29.857569>,  <40.692097, 36.203529, 29.996210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042511, 36.592152, 29.857569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343197, 36.855946, 29.857840>,  <40.523609, 37.014221, 29.858002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343197, 36.855946, 29.857840>,  <40.042511, 36.592152, 29.857569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343197, 36.855946, 29.857840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125257, 0.143783, -0.981650,
		-0.647484, 0.737836, 0.190689,
		0.751714, 0.659488, 0.000678,
		40.568710, 37.053791, 29.858044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887943, 36.922390, 29.295692>,  <40.042511, 36.592152, 29.857569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887943, 36.922390, 29.295692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.266983, 37.037312, 29.351562>,  <40.494408, 37.106262, 29.385084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.266983, 37.037312, 29.351562>,  <39.887943, 36.922390, 29.295692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266983, 37.037312, 29.351562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096021, 0.160858, -0.982296,
		-0.304682, 0.944237, 0.124842,
		0.947602, 0.287300, 0.139677,
		40.551262, 37.123501, 29.393465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026054, 37.516533, 28.921618>,  <39.887943, 36.922390, 29.295692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026054, 37.516533, 28.921618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392918, 37.370186, 28.984810>,  <40.613037, 37.282379, 29.022726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392918, 37.370186, 28.984810>,  <40.026054, 37.516533, 28.921618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392918, 37.370186, 28.984810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188306, 0.048491, -0.980913,
		0.351225, 0.929402, 0.113370,
		0.917160, -0.365869, 0.157981,
		40.668064, 37.260426, 29.032204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844696, 38.167583, 28.693695>,  <40.026054, 37.516533, 28.921618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844696, 38.167583, 28.693695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.713043, 38.527630, 28.579529>,  <39.634052, 38.743656, 28.511028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.713043, 38.527630, 28.579529>,  <39.844696, 38.167583, 28.693695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713043, 38.527630, 28.579529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582152, 0.044566, 0.811858,
		0.743487, 0.433362, 0.509337,
		-0.329129, 0.900117, -0.285417,
		39.614304, 38.797665, 28.493904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670692, 38.522751, 29.297663>,  <39.844696, 38.167583, 28.693695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670692, 38.522751, 29.297663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.465340, 38.715088, 29.013346>,  <39.342129, 38.830490, 28.842756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.465340, 38.715088, 29.013346>,  <39.670692, 38.522751, 29.297663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465340, 38.715088, 29.013346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817529, -0.022197, 0.575459,
		0.260929, 0.876524, 0.404500,
		-0.513383, 0.480845, -0.710793,
		39.311325, 38.859341, 28.800108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248920, 39.098820, 29.675020>,  <39.670692, 38.522751, 29.297663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248920, 39.098820, 29.675020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.068562, 39.010513, 29.329082>,  <38.960346, 38.957527, 29.121521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.068562, 39.010513, 29.329082>,  <39.248920, 39.098820, 29.675020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068562, 39.010513, 29.329082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892528, 0.121525, 0.434310,
		0.009219, 0.967726, -0.251837,
		-0.450897, -0.220768, -0.864843,
		38.933292, 38.944283, 29.069630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686562, 39.504463, 29.748827>,  <39.248920, 39.098820, 29.675020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686562, 39.504463, 29.748827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.581406, 39.252132, 29.456816>,  <38.518311, 39.100735, 29.281609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.581406, 39.252132, 29.456816>,  <38.686562, 39.504463, 29.748827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581406, 39.252132, 29.456816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960237, 0.097367, 0.261656,
		-0.093980, 0.769787, -0.631345,
		-0.262891, -0.630831, -0.730027,
		38.502537, 39.062881, 29.237808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220955, 39.825531, 29.257736>,  <38.686562, 39.504463, 29.748827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220955, 39.825531, 29.257736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.170002, 39.428829, 29.263342>,  <38.139431, 39.190807, 29.266705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.170002, 39.428829, 29.263342>,  <38.220955, 39.825531, 29.257736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170002, 39.428829, 29.263342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912273, 0.122694, 0.390773,
		-0.389270, 0.036993, -0.920380,
		-0.127381, -0.991755, 0.014013,
		38.131786, 39.131302, 29.267546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488930, 39.722279, 28.982367>,  <38.220955, 39.825531, 29.257736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488930, 39.722279, 28.982367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.580162, 39.391655, 29.188192>,  <37.634899, 39.193279, 29.311687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.580162, 39.391655, 29.188192>,  <37.488930, 39.722279, 28.982367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580162, 39.391655, 29.188192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873837, 0.059306, 0.482588,
		-0.429405, -0.559715, -0.708753,
		0.228079, -0.826560, 0.514566,
		37.648586, 39.143688, 29.342562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830708, 39.336926, 28.972973>,  <37.488930, 39.722279, 28.982367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830708, 39.336926, 28.972973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.043736, 39.162739, 29.263281>,  <37.171551, 39.058228, 29.437466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.043736, 39.162739, 29.263281>,  <36.830708, 39.336926, 28.972973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043736, 39.162739, 29.263281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825009, -0.075569, 0.560044,
		-0.189037, -0.897026, -0.399512,
		0.532565, -0.435470, 0.725769,
		37.203506, 39.032097, 29.481012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445023, 38.699471, 29.006077>,  <36.830708, 39.336926, 28.972973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445023, 38.699471, 29.006077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651302, 38.702946, 29.348768>,  <36.775070, 38.705032, 29.554382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.651302, 38.702946, 29.348768>,  <36.445023, 38.699471, 29.006077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651302, 38.702946, 29.348768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849415, -0.125565, 0.512569,
		0.112029, -0.992047, -0.057373,
		0.515697, 0.008689, 0.856727,
		36.806011, 38.705551, 29.605787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190556, 38.094341, 29.436451>,  <36.445023, 38.699471, 29.006077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190556, 38.094341, 29.436451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.338764, 38.360550, 29.695616>,  <36.427689, 38.520275, 29.851114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.338764, 38.360550, 29.695616>,  <36.190556, 38.094341, 29.436451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338764, 38.360550, 29.695616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817257, -0.097871, 0.567901,
		0.441365, -0.739930, 0.507643,
		0.370523, 0.665526, 0.647910,
		36.449921, 38.560207, 29.889988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057335, 37.755932, 30.035511>,  <36.190556, 38.094341, 29.436451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057335, 37.755932, 30.035511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.138504, 38.128254, 30.157122>,  <36.187206, 38.351646, 30.230087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.138504, 38.128254, 30.157122>,  <36.057335, 37.755932, 30.035511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138504, 38.128254, 30.157122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648523, -0.104875, 0.753936,
		0.733650, -0.350155, 0.582366,
		0.202919, 0.930802, 0.304025,
		36.199379, 38.407494, 30.248329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296909, 37.686241, 30.728622>,  <36.057335, 37.755932, 30.035511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296909, 37.686241, 30.728622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.130276, 38.048550, 30.697548>,  <36.030296, 38.265934, 30.678904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.130276, 38.048550, 30.697548>,  <36.296909, 37.686241, 30.728622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130276, 38.048550, 30.697548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555454, -0.185956, 0.810489,
		0.719670, 0.380790, 0.580580,
		-0.416588, 0.905770, -0.077684,
		36.005299, 38.320282, 30.674242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309464, 37.919945, 31.393236>,  <36.296909, 37.686241, 30.728622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309464, 37.919945, 31.393236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.011192, 38.097687, 31.194635>,  <35.832230, 38.204334, 31.075476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.011192, 38.097687, 31.194635>,  <36.309464, 37.919945, 31.393236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011192, 38.097687, 31.194635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592993, -0.102767, 0.798622,
		0.303850, 0.889935, 0.340132,
		-0.745677, 0.444358, -0.496500,
		35.787491, 38.230995, 31.045685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.821564, 39.029251, 25.609035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469410, 39.078529, 25.425844>,  <41.258118, 39.108097, 25.315929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469410, 39.078529, 25.425844>,  <41.821564, 39.029251, 25.609035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469410, 39.078529, 25.425844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362727, 0.447209, 0.817577,
		0.305532, 0.885905, -0.349031,
		-0.880386, 0.123193, -0.457979,
		41.205296, 39.115486, 25.288450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709564, 39.739559, 25.714590>,  <41.821564, 39.029251, 25.609035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709564, 39.739559, 25.714590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379349, 39.531425, 25.627193>,  <41.181221, 39.406544, 25.574757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379349, 39.531425, 25.627193>,  <41.709564, 39.739559, 25.714590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379349, 39.531425, 25.627193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459820, 0.395721, 0.794965,
		-0.327188, 0.756740, -0.565944,
		-0.825538, -0.520336, -0.218489,
		41.131687, 39.375324, 25.561647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181553, 40.128017, 25.987799>,  <41.709564, 39.739559, 25.714590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.181553, 40.128017, 25.987799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982250, 39.783966, 25.944136>,  <40.862667, 39.577534, 25.917938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982250, 39.783966, 25.944136>,  <41.181553, 40.128017, 25.987799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982250, 39.783966, 25.944136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540254, 0.209529, 0.814999,
		-0.678134, 0.465051, -0.569089,
		-0.498257, -0.860131, -0.109157,
		40.832771, 39.525928, 25.911388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451591, 40.297829, 26.005598>,  <41.181553, 40.128017, 25.987799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451591, 40.297829, 26.005598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482258, 39.907604, 26.087957>,  <40.500656, 39.673470, 26.137373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482258, 39.907604, 26.087957>,  <40.451591, 40.297829, 26.005598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482258, 39.907604, 26.087957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444662, 0.151377, 0.882814,
		-0.892411, -0.159237, -0.422192,
		0.076666, -0.975566, 0.205897,
		40.505257, 39.614933, 26.149727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859234, 40.058300, 26.418652>,  <40.451591, 40.297829, 26.005598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859234, 40.058300, 26.418652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124897, 39.765987, 26.481716>,  <40.284294, 39.590599, 26.519554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124897, 39.765987, 26.481716>,  <39.859234, 40.058300, 26.418652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124897, 39.765987, 26.481716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484891, -0.260573, 0.834855,
		-0.569011, -0.630925, -0.527409,
		0.664159, -0.730777, 0.157661,
		40.324146, 39.546753, 26.529015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434330, 39.547066, 26.638531>,  <39.859234, 40.058300, 26.418652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434330, 39.547066, 26.638531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795837, 39.455158, 26.782980>,  <40.012741, 39.400013, 26.869650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795837, 39.455158, 26.782980>,  <39.434330, 39.547066, 26.638531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795837, 39.455158, 26.782980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416762, -0.280151, 0.864769,
		-0.097530, -0.932052, -0.348951,
		0.903769, -0.229770, 0.361120,
		40.066967, 39.386227, 26.891315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423504, 38.882763, 26.739475>,  <39.434330, 39.547066, 26.638531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423504, 38.882763, 26.739475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707321, 39.015144, 26.988319>,  <39.877609, 39.094574, 27.137627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707321, 39.015144, 26.988319>,  <39.423504, 38.882763, 26.739475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707321, 39.015144, 26.988319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483578, -0.413461, 0.771493,
		0.512548, -0.848245, -0.133324,
		0.709539, 0.330955, 0.622111,
		39.920181, 39.114429, 27.174953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494049, 38.389874, 27.204557>,  <39.423504, 38.882763, 26.739475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494049, 38.389874, 27.204557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679638, 38.690617, 27.391932>,  <39.790993, 38.871063, 27.504356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679638, 38.690617, 27.391932>,  <39.494049, 38.389874, 27.204557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679638, 38.690617, 27.391932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428114, -0.272628, 0.861622,
		0.775529, -0.600314, 0.195390,
		0.463975, 0.751862, 0.468434,
		39.818832, 38.916176, 27.532461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809883, 38.076641, 27.840883>,  <39.494049, 38.389874, 27.204557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809883, 38.076641, 27.840883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765289, 38.468975, 27.904791>,  <39.738533, 38.704376, 27.943136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765289, 38.468975, 27.904791>,  <39.809883, 38.076641, 27.840883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765289, 38.468975, 27.904791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522556, -0.194613, 0.830097,
		0.845284, 0.009056, 0.534240,
		-0.111487, 0.980838, 0.159771,
		39.731842, 38.763226, 27.952723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411476, 37.893284, 28.331688>,  <39.809883, 38.076641, 27.840883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411476, 37.893284, 28.331688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650963, 37.601398, 28.463779>,  <40.794655, 37.426266, 28.543034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650963, 37.601398, 28.463779>,  <40.411476, 37.893284, 28.331688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650963, 37.601398, 28.463779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432879, -0.052094, -0.899945,
		0.673909, 0.681762, 0.284689,
		0.598718, -0.729717, 0.330227,
		40.830578, 37.382484, 28.562847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147087, 38.039246, 28.194969>,  <40.411476, 37.893284, 28.331688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147087, 38.039246, 28.194969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110634, 37.641590, 28.218214>,  <41.088760, 37.402996, 28.232161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110634, 37.641590, 28.218214>,  <41.147087, 38.039246, 28.194969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110634, 37.641590, 28.218214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341835, -0.086042, -0.935813,
		0.935330, -0.065422, 0.347674,
		-0.091137, -0.994141, 0.058114,
		41.083294, 37.343349, 28.235649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796314, 37.798813, 27.843071>,  <41.147087, 38.039246, 28.194969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796314, 37.798813, 27.843071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546551, 37.486984, 27.823517>,  <41.396694, 37.299889, 27.811785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546551, 37.486984, 27.823517>,  <41.796314, 37.798813, 27.843071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546551, 37.486984, 27.823517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419063, -0.281525, -0.863209,
		0.659168, -0.559480, 0.502474,
		-0.624407, -0.779568, -0.048885,
		41.359230, 37.253113, 27.808851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203682, 37.260574, 27.741695>,  <41.796314, 37.798813, 27.843071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203682, 37.260574, 27.741695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847214, 37.125717, 27.620274>,  <41.633331, 37.044804, 27.547421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847214, 37.125717, 27.620274>,  <42.203682, 37.260574, 27.741695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.847214, 37.125717, 27.620274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415464, -0.337768, -0.844572,
		0.182211, -0.878776, 0.441080,
		-0.891173, -0.337143, -0.303555,
		41.579861, 37.024574, 27.529207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.297897, 36.603886, 27.351822>,  <42.203682, 37.260574, 27.741695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.297897, 36.603886, 27.351822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933914, 36.723637, 27.237032>,  <41.715523, 36.795486, 27.168158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933914, 36.723637, 27.237032>,  <42.297897, 36.603886, 27.351822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933914, 36.723637, 27.237032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221487, -0.234198, -0.946623,
		-0.350606, -0.924946, 0.146802,
		-0.909956, 0.299377, -0.286974,
		41.660927, 36.813450, 27.150940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064625, 36.029617, 26.953087>,  <42.297897, 36.603886, 27.351822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064625, 36.029617, 26.953087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789822, 36.297516, 26.840334>,  <41.624939, 36.458256, 26.772682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789822, 36.297516, 26.840334>,  <42.064625, 36.029617, 26.953087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789822, 36.297516, 26.840334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067301, -0.327603, -0.942416,
		-0.723528, -0.666417, 0.179991,
		-0.687007, 0.669750, -0.281880,
		41.583721, 36.498440, 26.755770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475174, 35.616646, 26.674234>,  <42.064625, 36.029617, 26.953087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475174, 35.616646, 26.674234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483982, 35.987823, 26.525404>,  <41.489265, 36.210529, 26.436106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483982, 35.987823, 26.525404>,  <41.475174, 35.616646, 26.674234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483982, 35.987823, 26.525404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107191, -0.367832, -0.923694,
		-0.993995, 0.060221, 0.091368,
		0.022017, 0.927940, -0.372078,
		41.490585, 36.266205, 26.413780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962414, 35.580254, 26.129436>,  <41.475174, 35.616646, 26.674234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962414, 35.580254, 26.129436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195415, 35.900654, 26.074175>,  <41.335217, 36.092896, 26.041018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195415, 35.900654, 26.074175>,  <40.962414, 35.580254, 26.129436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195415, 35.900654, 26.074175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101921, -0.240605, -0.965257,
		-0.806414, 0.548184, -0.221792,
		0.582503, 0.801002, -0.138156,
		41.370167, 36.140953, 26.032728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736599, 35.893456, 25.479616>,  <40.962414, 35.580254, 26.129436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736599, 35.893456, 25.479616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093636, 36.056908, 25.555822>,  <41.307858, 36.154980, 25.601547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093636, 36.056908, 25.555822>,  <40.736599, 35.893456, 25.479616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093636, 36.056908, 25.555822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286064, -0.186674, -0.939851,
		-0.348491, 0.893404, -0.283520,
		0.892592, 0.408634, 0.190517,
		41.361412, 36.179497, 25.612978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945553, 36.323677, 24.788319>,  <40.736599, 35.893456, 25.479616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945553, 36.323677, 24.788319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281609, 36.247105, 24.991304>,  <41.483242, 36.201160, 25.113096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281609, 36.247105, 24.991304>,  <40.945553, 36.323677, 24.788319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281609, 36.247105, 24.991304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502460, -0.077568, -0.861114,
		0.204206, 0.978436, 0.031018,
		0.840139, -0.191430, 0.507464,
		41.533649, 36.189674, 25.143543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369286, 36.685352, 24.408543>,  <40.945553, 36.323677, 24.788319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369286, 36.685352, 24.408543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586563, 36.427895, 24.624193>,  <41.716930, 36.273418, 24.753584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586563, 36.427895, 24.624193>,  <41.369286, 36.685352, 24.408543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586563, 36.427895, 24.624193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505700, -0.261773, -0.822036,
		0.670231, 0.719160, 0.183300,
		0.543192, -0.643649, 0.539127,
		41.749519, 36.234798, 24.785931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111851, 36.874001, 24.324911>,  <41.369286, 36.685352, 24.408543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111851, 36.874001, 24.324911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108208, 36.485420, 24.419743>,  <42.106022, 36.252274, 24.476641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108208, 36.485420, 24.419743>,  <42.111851, 36.874001, 24.324911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108208, 36.485420, 24.419743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639315, -0.187959, -0.745619,
		0.768891, 0.144779, 0.622772,
		-0.009106, -0.971448, 0.237079,
		42.105476, 36.193985, 24.490866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809715, 36.695179, 24.187819>,  <42.111851, 36.874001, 24.324911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809715, 36.695179, 24.187819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613873, 36.346539, 24.178040>,  <42.496368, 36.137356, 24.172173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613873, 36.346539, 24.178040>,  <42.809715, 36.695179, 24.187819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613873, 36.346539, 24.178040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648076, -0.345001, -0.678949,
		0.583337, -0.348263, 0.733778,
		-0.489608, -0.871600, -0.024449,
		42.466991, 36.085060, 24.170706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277767, 36.258621, 24.295713>,  <42.809715, 36.695179, 24.187819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277767, 36.258621, 24.295713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982098, 36.069210, 24.104136>,  <42.804695, 35.955563, 23.989189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982098, 36.069210, 24.104136>,  <43.277767, 36.258621, 24.295713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982098, 36.069210, 24.104136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632271, -0.242856, -0.735700,
		0.232062, -0.846635, 0.478913,
		-0.739176, -0.473530, -0.478945,
		42.760345, 35.927151, 23.960451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.513119, 35.182598, 23.031103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908886, 35.230240, 23.064253>,  <39.146347, 35.258823, 23.084143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.908886, 35.230240, 23.064253>,  <38.513119, 35.182598, 23.031103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908886, 35.230240, 23.064253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030619, -0.386933, 0.921599,
		0.141832, -0.914384, -0.379192,
		0.989417, 0.119102, 0.082877,
		39.205711, 35.265972, 23.089115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832355, 34.550816, 23.279177>,  <38.513119, 35.182598, 23.031103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832355, 34.550816, 23.279177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070362, 34.852951, 23.389021>,  <39.213165, 35.034233, 23.454927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070362, 34.852951, 23.389021>,  <38.832355, 34.550816, 23.279177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070362, 34.852951, 23.389021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114549, -0.258491, 0.959198,
		0.795508, -0.602196, -0.067283,
		0.595017, 0.755343, 0.274612,
		39.248867, 35.079556, 23.471405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131279, 34.221081, 23.803190>,  <38.832355, 34.550816, 23.279177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131279, 34.221081, 23.803190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181435, 34.616638, 23.835094>,  <39.211529, 34.853973, 23.854237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.181435, 34.616638, 23.835094>,  <39.131279, 34.221081, 23.803190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181435, 34.616638, 23.835094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113333, -0.065592, 0.991390,
		0.985613, -0.133349, 0.103850,
		0.125390, 0.988896, 0.079761,
		39.219051, 34.913307, 23.859022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695316, 34.423428, 24.349356>,  <39.131279, 34.221081, 23.803190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695316, 34.423428, 24.349356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454079, 34.741699, 24.326843>,  <39.309334, 34.932663, 24.313335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.454079, 34.741699, 24.326843>,  <39.695316, 34.423428, 24.349356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454079, 34.741699, 24.326843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088377, 0.136778, 0.986652,
		0.792758, 0.590072, -0.152811,
		-0.603096, 0.795680, -0.056283,
		39.273151, 34.980404, 24.309958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870197, 34.769409, 24.960423>,  <39.695316, 34.423428, 24.349356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870197, 34.769409, 24.960423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529621, 34.951130, 24.855606>,  <39.325275, 35.060162, 24.792717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.529621, 34.951130, 24.855606>,  <39.870197, 34.769409, 24.960423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529621, 34.951130, 24.855606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281694, 0.025305, 0.959171,
		0.442386, 0.890487, 0.106429,
		-0.851436, 0.454304, -0.262039,
		39.274189, 35.087421, 24.776995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688126, 35.276005, 25.529383>,  <39.870197, 34.769409, 24.960423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688126, 35.276005, 25.529383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349037, 35.170464, 25.345316>,  <39.145584, 35.107140, 25.234877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.349037, 35.170464, 25.345316>,  <39.688126, 35.276005, 25.529383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349037, 35.170464, 25.345316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431443, -0.161704, 0.887529,
		-0.308592, 0.950911, 0.023240,
		-0.847719, -0.263858, -0.460165,
		39.094723, 35.091305, 25.207266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233456, 35.719067, 25.782156>,  <39.688126, 35.276005, 25.529383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233456, 35.719067, 25.782156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004612, 35.418060, 25.651672>,  <38.867306, 35.237457, 25.573381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.004612, 35.418060, 25.651672>,  <39.233456, 35.719067, 25.782156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004612, 35.418060, 25.651672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511831, 0.016792, 0.858922,
		-0.640872, 0.658363, -0.394767,
		-0.572112, -0.752513, -0.326209,
		38.832977, 35.192307, 25.553810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649723, 35.742989, 26.240305>,  <39.233456, 35.719067, 25.782156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649723, 35.742989, 26.240305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613853, 35.382687, 26.070320>,  <38.592331, 35.166504, 25.968328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613853, 35.382687, 26.070320>,  <38.649723, 35.742989, 26.240305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613853, 35.382687, 26.070320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593004, -0.294522, 0.749402,
		-0.800191, 0.319204, -0.507744,
		-0.089670, -0.900758, -0.424963,
		38.586952, 35.112457, 25.942831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941067, 35.597145, 26.128521>,  <38.649723, 35.742989, 26.240305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941067, 35.597145, 26.128521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114750, 35.237087, 26.114666>,  <38.218960, 35.021053, 26.106354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.114750, 35.237087, 26.114666>,  <37.941067, 35.597145, 26.128521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114750, 35.237087, 26.114666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570031, -0.304339, 0.763179,
		-0.697513, -0.311637, -0.645258,
		0.434212, -0.900145, -0.034637,
		38.245014, 34.967045, 26.104275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385334, 35.167526, 26.042265>,  <37.941067, 35.597145, 26.128521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385334, 35.167526, 26.042265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674503, 34.918152, 26.161406>,  <37.848003, 34.768528, 26.232889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.674503, 34.918152, 26.161406>,  <37.385334, 35.167526, 26.042265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674503, 34.918152, 26.161406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589081, -0.330868, 0.737231,
		-0.361071, -0.708413, -0.606447,
		0.722918, -0.623439, 0.297846,
		37.891380, 34.731121, 26.250761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064316, 34.489132, 26.090065>,  <37.385334, 35.167526, 26.042265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064316, 34.489132, 26.090065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393543, 34.482731, 26.317152>,  <37.591080, 34.478889, 26.453403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393543, 34.482731, 26.317152>,  <37.064316, 34.489132, 26.090065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393543, 34.482731, 26.317152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526836, -0.394885, 0.752669,
		0.212140, -0.918591, -0.333446,
		0.823068, -0.016000, 0.567718,
		37.640465, 34.477932, 26.487467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041668, 33.734978, 26.377617>,  <37.064316, 34.489132, 26.090065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041668, 33.734978, 26.377617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.286285, 33.961258, 26.598886>,  <37.433056, 34.097027, 26.731647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.286285, 33.961258, 26.598886>,  <37.041668, 33.734978, 26.377617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286285, 33.961258, 26.598886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367846, -0.415717, 0.831787,
		0.700504, -0.712156, -0.046139,
		0.611542, 0.565697, 0.553175,
		37.469749, 34.130966, 26.764839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274994, 33.237305, 26.966354>,  <37.041668, 33.734978, 26.377617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274994, 33.237305, 26.966354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.352676, 33.611526, 27.084352>,  <37.399284, 33.836060, 27.155151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.352676, 33.611526, 27.084352>,  <37.274994, 33.237305, 26.966354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352676, 33.611526, 27.084352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363408, -0.210709, 0.907489,
		0.911163, -0.283444, 0.299067,
		0.194207, 0.935554, 0.294997,
		37.410938, 33.892193, 27.172852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604771, 33.217552, 27.583551>,  <37.274994, 33.237305, 26.966354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604771, 33.217552, 27.583551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416115, 33.570263, 27.585821>,  <37.302921, 33.781887, 27.587183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416115, 33.570263, 27.585821>,  <37.604771, 33.217552, 27.583551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416115, 33.570263, 27.585821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460123, -0.251587, 0.851464,
		0.752225, 0.398974, 0.524383,
		-0.471640, 0.881773, 0.005673,
		37.274624, 33.834793, 27.587523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337395, 33.362675, 27.872849>,  <37.604771, 33.217552, 27.583551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337395, 33.362675, 27.872849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543251, 33.029427, 27.953890>,  <38.666763, 32.829475, 28.002514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543251, 33.029427, 27.953890>,  <38.337395, 33.362675, 27.872849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543251, 33.029427, 27.953890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180931, -0.125452, -0.975462,
		0.838097, 0.538671, 0.086175,
		0.514642, -0.833124, 0.202603,
		38.697643, 32.779488, 28.014671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971569, 33.482437, 27.555264>,  <38.337395, 33.362675, 27.872849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971569, 33.482437, 27.555264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.957382, 33.084896, 27.597223>,  <38.948868, 32.846371, 27.622400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.957382, 33.084896, 27.597223>,  <38.971569, 33.482437, 27.555264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957382, 33.084896, 27.597223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486857, -0.108853, -0.866673,
		0.872761, 0.020331, 0.487724,
		-0.035470, -0.993850, 0.104901,
		38.946743, 32.786739, 27.628693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645199, 33.257221, 27.314035>,  <38.971569, 33.482437, 27.555264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645199, 33.257221, 27.314035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.414272, 32.930988, 27.298386>,  <39.275715, 32.735249, 27.288996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.414272, 32.930988, 27.298386>,  <39.645199, 33.257221, 27.314035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414272, 32.930988, 27.298386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529461, -0.337446, -0.778332,
		0.621591, -0.470060, 0.626633,
		-0.577318, -0.815582, -0.039125,
		39.241077, 32.686314, 27.286648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079857, 32.699310, 27.259310>,  <39.645199, 33.257221, 27.314035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079857, 32.699310, 27.259310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725208, 32.583862, 27.114754>,  <39.512421, 32.514591, 27.028019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725208, 32.583862, 27.114754>,  <40.079857, 32.699310, 27.259310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725208, 32.583862, 27.114754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454427, -0.398258, -0.796798,
		0.086048, -0.870682, 0.484262,
		-0.886618, -0.288624, -0.361392,
		39.459221, 32.497276, 27.006336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136814, 32.025871, 27.107832>,  <40.079857, 32.699310, 27.259310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136814, 32.025871, 27.107832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813324, 32.124729, 26.894337>,  <39.619228, 32.184044, 26.766239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.813324, 32.124729, 26.894337>,  <40.136814, 32.025871, 27.107832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813324, 32.124729, 26.894337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411523, -0.410600, -0.813669,
		-0.420266, -0.877678, 0.230345,
		-0.808718, 0.247164, -0.533746,
		39.570705, 32.198872, 26.734215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033428, 31.521704, 26.651278>,  <40.136814, 32.025871, 27.107832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033428, 31.521704, 26.651278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.823483, 31.812031, 26.473421>,  <39.697514, 31.986227, 26.366707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.823483, 31.812031, 26.473421>,  <40.033428, 31.521704, 26.651278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823483, 31.812031, 26.473421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426891, -0.227470, -0.875227,
		-0.736397, -0.649189, -0.190454,
		-0.524865, 0.725818, -0.444640,
		39.666023, 32.029778, 26.340029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793186, 31.289371, 25.975958>,  <40.033428, 31.521704, 26.651278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793186, 31.289371, 25.975958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.735474, 31.683474, 25.939173>,  <39.700848, 31.919935, 25.917103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.735474, 31.683474, 25.939173>,  <39.793186, 31.289371, 25.975958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735474, 31.683474, 25.939173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408935, -0.025259, -0.912214,
		-0.901085, -0.169223, -0.399261,
		-0.144282, 0.985254, -0.091962,
		39.692188, 31.979050, 25.911585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473373, 31.299082, 25.325319>,  <39.793186, 31.289371, 25.975958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473373, 31.299082, 25.325319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611153, 31.663877, 25.414429>,  <39.693821, 31.882755, 25.467896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611153, 31.663877, 25.414429>,  <39.473373, 31.299082, 25.325319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611153, 31.663877, 25.414429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383556, 0.079880, -0.920057,
		-0.856877, 0.402362, -0.322284,
		0.344452, 0.911989, 0.222776,
		39.714489, 31.937473, 25.481262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293327, 31.762800, 24.761448>,  <39.473373, 31.299082, 25.325319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293327, 31.762800, 24.761448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.622829, 31.904099, 24.938829>,  <39.820530, 31.988878, 25.045258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.622829, 31.904099, 24.938829>,  <39.293327, 31.762800, 24.761448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622829, 31.904099, 24.938829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379040, 0.238532, -0.894109,
		-0.421617, 0.904611, 0.062597,
		0.823752, 0.353245, 0.443453,
		39.869957, 32.010071, 25.071865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307056, 32.548981, 24.595360>,  <39.293327, 31.762800, 24.761448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307056, 32.548981, 24.595360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682423, 32.441616, 24.682375>,  <39.907642, 32.377197, 24.734583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682423, 32.441616, 24.682375>,  <39.307056, 32.548981, 24.595360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682423, 32.441616, 24.682375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324902, 0.471460, -0.819856,
		0.117499, 0.840048, 0.529635,
		0.938420, -0.268412, 0.217537,
		39.963947, 32.361092, 24.747637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710003, 32.989399, 24.257797>,  <39.307056, 32.548981, 24.595360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710003, 32.989399, 24.257797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.997738, 32.733719, 24.366594>,  <40.170380, 32.580311, 24.431871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.997738, 32.733719, 24.366594>,  <39.710003, 32.989399, 24.257797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997738, 32.733719, 24.366594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572404, 0.323572, -0.753429,
		0.393582, 0.697658, 0.598638,
		0.719338, -0.639198, 0.271990,
		40.213539, 32.541958, 24.448191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396187, 33.331715, 24.430197>,  <39.710003, 32.989399, 24.257797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396187, 33.331715, 24.430197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.503975, 32.966633, 24.307322>,  <40.568649, 32.747585, 24.233597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.503975, 32.966633, 24.307322>,  <40.396187, 33.331715, 24.430197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503975, 32.966633, 24.307322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518256, 0.406297, -0.752551,
		0.811663, 0.043588, 0.582497,
		0.269469, -0.912701, -0.307186,
		40.584816, 32.692822, 24.215166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170795, 33.347603, 24.210644>,  <40.396187, 33.331715, 24.430197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170795, 33.347603, 24.210644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.055256, 33.002193, 24.045286>,  <40.985931, 32.794949, 23.946072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.055256, 33.002193, 24.045286>,  <41.170795, 33.347603, 24.210644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055256, 33.002193, 24.045286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318706, 0.320443, -0.892044,
		0.902771, -0.389413, 0.182652,
		-0.288844, -0.863524, -0.413395,
		40.968601, 32.743137, 23.921268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757320, 33.075424, 23.913811>,  <41.170795, 33.347603, 24.210644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757320, 33.075424, 23.913811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.428616, 32.926884, 23.740929>,  <41.231392, 32.837761, 23.637199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.428616, 32.926884, 23.740929>,  <41.757320, 33.075424, 23.913811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428616, 32.926884, 23.740929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314463, 0.336989, -0.887441,
		0.475198, -0.865181, -0.160150,
		-0.821766, -0.371349, -0.432204,
		41.182087, 32.815479, 23.611267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272388, 32.722828, 24.256578>,  <41.757320, 33.075424, 23.913811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272388, 32.722828, 24.256578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.647518, 32.749508, 24.392830>,  <42.872597, 32.765518, 24.474581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.647518, 32.749508, 24.392830>,  <42.272388, 32.722828, 24.256578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647518, 32.749508, 24.392830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325774, -0.169529, 0.930124,
		0.119789, -0.983265, -0.137258,
		0.937828, 0.066704, 0.340630,
		42.928867, 32.769520, 24.495018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301781, 32.212238, 24.770967>,  <42.272388, 32.722828, 24.256578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301781, 32.212238, 24.770967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.588791, 32.476379, 24.859592>,  <42.760998, 32.634865, 24.912767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.588791, 32.476379, 24.859592>,  <42.301781, 32.212238, 24.770967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588791, 32.476379, 24.859592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385320, 0.111329, 0.916042,
		0.580243, -0.742659, 0.334328,
		0.717528, 0.660351, 0.221564,
		42.804050, 32.674484, 24.926062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709110, 31.940683, 25.277145>,  <42.301781, 32.212238, 24.770967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709110, 31.940683, 25.277145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.794697, 32.329983, 25.310616>,  <42.846050, 32.563564, 25.330698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.794697, 32.329983, 25.310616>,  <42.709110, 31.940683, 25.277145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794697, 32.329983, 25.310616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004182, -0.086571, 0.996237,
		0.976831, -0.212816, -0.022594,
		0.213971, 0.973249, 0.083676,
		42.858887, 32.621956, 25.335718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129501, 31.978596, 25.921408>,  <42.709110, 31.940683, 25.277145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129501, 31.978596, 25.921408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.034847, 32.363361, 25.866669>,  <42.978054, 32.594219, 25.833826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.034847, 32.363361, 25.866669>,  <43.129501, 31.978596, 25.921408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034847, 32.363361, 25.866669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069044, 0.123842, 0.989897,
		0.969142, 0.243695, 0.037109,
		-0.236637, 0.961913, -0.136846,
		42.963856, 32.651936, 25.825615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671104, 32.467537, 26.217443>,  <43.129501, 31.978596, 25.921408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671104, 32.467537, 26.217443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.309784, 32.639111, 26.220474>,  <43.092991, 32.742054, 26.222292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.309784, 32.639111, 26.220474>,  <43.671104, 32.467537, 26.217443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309784, 32.639111, 26.220474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122476, 0.240918, 0.962787,
		0.411150, 0.870615, -0.270157,
		-0.903302, 0.428937, 0.007576,
		43.038792, 32.767792, 26.222748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696045, 33.056351, 26.622231>,  <43.671104, 32.467537, 26.217443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696045, 33.056351, 26.622231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.311638, 32.945759, 26.622009>,  <43.080994, 32.879402, 26.621876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.311638, 32.945759, 26.622009>,  <43.696045, 33.056351, 26.622231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311638, 32.945759, 26.622009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033179, 0.113332, 0.993003,
		-0.274487, 0.954313, -0.118088,
		-0.961018, -0.276484, -0.000554,
		43.023331, 32.862812, 26.621843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490658, 33.329601, 27.288511>,  <43.696045, 33.056351, 26.622231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490658, 33.329601, 27.288511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.147823, 33.153606, 27.181324>,  <42.942123, 33.048008, 27.117012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.147823, 33.153606, 27.181324>,  <43.490658, 33.329601, 27.288511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.147823, 33.153606, 27.181324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361228, 0.142411, 0.921539,
		-0.367305, 0.886639, -0.280995,
		-0.857089, -0.439989, -0.267970,
		42.890697, 33.021610, 27.100933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977257, 33.638424, 27.729609>,  <43.490658, 33.329601, 27.288511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977257, 33.638424, 27.729609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.827106, 33.288265, 27.607771>,  <42.737015, 33.078171, 27.534668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.827106, 33.288265, 27.607771>,  <42.977257, 33.638424, 27.729609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827106, 33.288265, 27.607771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467213, -0.105115, 0.877874,
		-0.800503, 0.471843, -0.369538,
		-0.375375, -0.875394, -0.304596,
		42.714493, 33.025646, 27.516392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271381, 33.608017, 27.811119>,  <42.977257, 33.638424, 27.729609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271381, 33.608017, 27.811119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.415707, 33.234966, 27.809290>,  <42.502300, 33.011135, 27.808191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.415707, 33.234966, 27.809290>,  <42.271381, 33.608017, 27.811119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415707, 33.234966, 27.809290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439958, -0.174529, 0.880895,
		-0.822347, -0.315822, -0.473289,
		0.360809, -0.932629, -0.004574,
		42.523949, 32.955177, 27.807919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692894, 33.067417, 27.984821>,  <42.271381, 33.608017, 27.811119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692894, 33.067417, 27.984821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.036880, 32.880226, 28.066269>,  <42.243271, 32.767914, 28.115137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.036880, 32.880226, 28.066269>,  <41.692894, 33.067417, 27.984821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036880, 32.880226, 28.066269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380799, -0.322749, 0.866502,
		-0.339790, -0.822695, -0.455759,
		0.859962, -0.467981, 0.203614,
		42.294868, 32.739834, 28.127354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516308, 32.299824, 28.177082>,  <41.692894, 33.067417, 27.984821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516308, 32.299824, 28.177082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.869598, 32.409916, 28.328951>,  <42.081573, 32.475971, 28.420073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.869598, 32.409916, 28.328951>,  <41.516308, 32.299824, 28.177082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869598, 32.409916, 28.328951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336359, -0.192323, 0.921886,
		0.326751, -0.941945, -0.077289,
		0.883231, 0.275231, 0.379673,
		42.134567, 32.492485, 28.442852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565792, 31.906437, 28.834965>,  <41.516308, 32.299824, 28.177082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565792, 31.906437, 28.834965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.858097, 32.176853, 28.872814>,  <42.033482, 32.339104, 28.895525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.858097, 32.176853, 28.872814>,  <41.565792, 31.906437, 28.834965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858097, 32.176853, 28.872814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242868, 0.127932, 0.961587,
		0.637968, -0.725672, 0.257677,
		0.730761, 0.676043, 0.094626,
		42.077324, 32.379665, 28.901201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125084, 31.582281, 29.404518>,  <41.565792, 31.906437, 28.834965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125084, 31.582281, 29.404518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.157536, 31.979626, 29.371895>,  <42.177006, 32.218033, 29.352322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.157536, 31.979626, 29.371895>,  <42.125084, 31.582281, 29.404518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157536, 31.979626, 29.371895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336573, 0.104325, 0.935861,
		0.938156, -0.048473, 0.342802,
		0.081127, 0.993361, -0.081558,
		42.181873, 32.277634, 29.347427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375816, 31.806112, 30.028143>,  <42.125084, 31.582281, 29.404518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375816, 31.806112, 30.028143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.238708, 32.150833, 29.878580>,  <42.156445, 32.357666, 29.788843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.238708, 32.150833, 29.878580>,  <42.375816, 31.806112, 30.028143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238708, 32.150833, 29.878580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219880, 0.313363, 0.923827,
		0.913325, 0.398873, 0.082082,
		-0.342769, 0.861803, -0.373906,
		42.135880, 32.409374, 29.766409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.530071, 35.507191, 24.181791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.214909, 35.549728, 23.939177>,  <43.025810, 35.575253, 23.793608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.214909, 35.549728, 23.939177>,  <43.530071, 35.507191, 24.181791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214909, 35.549728, 23.939177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458141, -0.556915, -0.692786,
		-0.411467, -0.823733, 0.390076,
		-0.787910, 0.106348, -0.606538,
		42.978535, 35.581635, 23.757215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415775, 34.864174, 23.923897>,  <43.530071, 35.507191, 24.181791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415775, 34.864174, 23.923897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.243435, 35.118210, 23.667452>,  <43.140030, 35.270634, 23.513586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.243435, 35.118210, 23.667452>,  <43.415775, 34.864174, 23.923897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243435, 35.118210, 23.667452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336003, -0.546453, -0.767132,
		-0.837536, -0.545936, 0.022048,
		-0.430853, 0.635092, -0.641111,
		43.114178, 35.308739, 23.475119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201210, 34.494514, 23.265078>,  <43.415775, 34.864174, 23.923897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201210, 34.494514, 23.265078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.225311, 34.881786, 23.167925>,  <43.239773, 35.114151, 23.109632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.225311, 34.881786, 23.167925>,  <43.201210, 34.494514, 23.265078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225311, 34.881786, 23.167925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617518, -0.227331, -0.752989,
		-0.784245, -0.104614, -0.611568,
		0.060255, 0.968182, -0.242884,
		43.243389, 35.172241, 23.095060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240902, 34.534107, 22.573473>,  <43.201210, 34.494514, 23.265078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240902, 34.534107, 22.573473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374031, 34.899025, 22.668924>,  <43.453911, 35.117977, 22.726196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.374031, 34.899025, 22.668924>,  <43.240902, 34.534107, 22.573473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374031, 34.899025, 22.668924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672828, -0.052440, -0.737938,
		-0.660703, 0.406162, -0.631271,
		0.332827, 0.912295, 0.238630,
		43.473881, 35.172714, 22.740513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337109, 34.901054, 21.910397>,  <43.240902, 34.534107, 22.573473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337109, 34.901054, 21.910397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.562908, 35.104244, 22.170645>,  <43.698387, 35.226158, 22.326794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.562908, 35.104244, 22.170645>,  <43.337109, 34.901054, 21.910397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562908, 35.104244, 22.170645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715131, 0.092667, -0.692820,
		-0.412224, 0.856375, -0.310956,
		0.564499, 0.507971, 0.650620,
		43.732258, 35.256638, 22.365831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538204, 35.417671, 21.471315>,  <43.337109, 34.901054, 21.910397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538204, 35.417671, 21.471315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.787506, 35.429546, 21.783897>,  <43.937088, 35.436672, 21.971447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.787506, 35.429546, 21.783897>,  <43.538204, 35.417671, 21.471315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787506, 35.429546, 21.783897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765987, 0.178139, -0.617681,
		-0.157545, 0.983557, 0.088287,
		0.623252, 0.029686, 0.781457,
		43.974483, 35.438454, 22.018335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888245, 36.054260, 21.390985>,  <43.538204, 35.417671, 21.471315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888245, 36.054260, 21.390985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.117313, 35.817104, 21.617449>,  <44.254753, 35.674812, 21.753326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.117313, 35.817104, 21.617449>,  <43.888245, 36.054260, 21.390985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117313, 35.817104, 21.617449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790602, 0.216791, -0.572669,
		0.216791, 0.775555, 0.592888,
		0.572669, -0.592888, 0.566158,
		44.289116, 35.639236, 21.787296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477669, 36.185810, 21.369719>,  <43.888245, 36.054260, 21.390985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477669, 36.185810, 21.369719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.585857, 35.817696, 21.482790>,  <44.650772, 35.596825, 21.550632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.585857, 35.817696, 21.482790>,  <44.477669, 36.185810, 21.369719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585857, 35.817696, 21.482790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887684, 0.124748, -0.443232,
		0.372638, 0.370815, 0.850669,
		0.270476, -0.920291, 0.282681,
		44.667000, 35.541607, 21.567595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.256325, 36.235188, 21.620155>,  <44.477669, 36.185810, 21.369719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.256325, 36.235188, 21.620155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.170273, 35.857536, 21.520279>,  <45.118641, 35.630947, 21.460354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.170273, 35.857536, 21.520279>,  <45.256325, 36.235188, 21.620155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170273, 35.857536, 21.520279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705276, 0.026648, -0.708432,
		0.675502, -0.328507, 0.660137,
		-0.215133, -0.944126, -0.249689,
		45.105732, 35.574299, 21.445372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913765, 35.891476, 21.478687>,  <45.256325, 36.235188, 21.620155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913765, 35.891476, 21.478687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.642895, 35.656952, 21.300842>,  <45.480373, 35.516239, 21.194136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.642895, 35.656952, 21.300842>,  <45.913765, 35.891476, 21.478687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642895, 35.656952, 21.300842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590517, -0.072522, -0.803760,
		0.439006, -0.806836, 0.395334,
		-0.677173, -0.586307, -0.444613,
		45.439743, 35.481060, 21.167458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.351574, 35.325264, 21.151165>,  <45.913765, 35.891476, 21.478687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.351574, 35.325264, 21.151165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.997639, 35.304173, 20.966003>,  <45.785278, 35.291515, 20.854906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.997639, 35.304173, 20.966003>,  <46.351574, 35.325264, 21.151165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.997639, 35.304173, 20.966003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459843, 0.060802, -0.885916,
		0.074857, -0.996756, -0.029554,
		-0.884839, -0.052727, -0.462903,
		45.732185, 35.288353, 20.827133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428936, 34.839344, 20.675119>,  <46.351574, 35.325264, 21.151165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428936, 34.839344, 20.675119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.090240, 34.975525, 20.511595>,  <45.887024, 35.057232, 20.413481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.090240, 34.975525, 20.511595>,  <46.428936, 34.839344, 20.675119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090240, 34.975525, 20.511595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292359, -0.344228, -0.892207,
		-0.444475, -0.874987, 0.191938,
		-0.846740, 0.340449, -0.408811,
		45.836220, 35.077660, 20.388952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108391, 34.191441, 20.253845>,  <46.428936, 34.839344, 20.675119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108391, 34.191441, 20.253845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.003567, 34.553768, 20.120691>,  <45.940670, 34.771164, 20.040798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.003567, 34.553768, 20.120691>,  <46.108391, 34.191441, 20.253845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.003567, 34.553768, 20.120691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365560, -0.226058, -0.902920,
		-0.893135, -0.358310, -0.271890,
		-0.262063, 0.905821, -0.332884,
		45.924950, 34.825516, 20.020826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585640, 34.083725, 19.630724>,  <46.108391, 34.191441, 20.253845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585640, 34.083725, 19.630724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.804043, 34.418598, 19.618046>,  <45.935085, 34.619522, 19.610439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.804043, 34.418598, 19.618046>,  <45.585640, 34.083725, 19.630724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.804043, 34.418598, 19.618046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397951, -0.292459, -0.869542,
		-0.737236, 0.462160, -0.492841,
		0.546003, 0.837184, -0.031694,
		45.967842, 34.669754, 19.608538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260605, 33.371983, 19.454445>,  <45.585640, 34.083725, 19.630724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260605, 33.371983, 19.454445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.076744, 33.018665, 19.417524>,  <44.966427, 32.806675, 19.395372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.076744, 33.018665, 19.417524>,  <45.260605, 33.371983, 19.454445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076744, 33.018665, 19.417524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289847, 0.050963, 0.955715,
		-0.839471, 0.466047, -0.279445,
		-0.459649, -0.883291, -0.092301,
		44.938850, 32.753677, 19.389833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663631, 33.382378, 19.877836>,  <45.260605, 33.371983, 19.454445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663631, 33.382378, 19.877836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.719788, 32.989250, 19.829924>,  <44.753483, 32.753372, 19.801176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.719788, 32.989250, 19.829924>,  <44.663631, 33.382378, 19.877836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719788, 32.989250, 19.829924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208454, -0.147611, 0.966829,
		-0.967903, -0.110769, -0.225597,
		0.140395, -0.982823, -0.119783,
		44.761906, 32.694405, 19.793989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086411, 33.098644, 20.183182>,  <44.663631, 33.382378, 19.877836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086411, 33.098644, 20.183182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.357048, 32.804241, 20.174107>,  <44.519432, 32.627598, 20.168661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.357048, 32.804241, 20.174107>,  <44.086411, 33.098644, 20.183182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.357048, 32.804241, 20.174107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244201, -0.253345, 0.936046,
		-0.694686, -0.627781, -0.351145,
		0.676593, -0.736008, -0.022690,
		44.560024, 32.583439, 20.167299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730675, 32.459946, 20.430733>,  <44.086411, 33.098644, 20.183182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730675, 32.459946, 20.430733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.126495, 32.423538, 20.475460>,  <44.363987, 32.401695, 20.502296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.126495, 32.423538, 20.475460>,  <43.730675, 32.459946, 20.430733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126495, 32.423538, 20.475460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133014, -0.277080, 0.951595,
		-0.055626, -0.956527, -0.286291,
		0.989552, -0.091015, 0.111818,
		44.423363, 32.396233, 20.509005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848721, 31.835012, 20.788307>,  <43.730675, 32.459946, 20.430733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848721, 31.835012, 20.788307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.192436, 32.034031, 20.835760>,  <44.398666, 32.153442, 20.864233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.192436, 32.034031, 20.835760>,  <43.848721, 31.835012, 20.788307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192436, 32.034031, 20.835760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050126, -0.148909, 0.987580,
		0.509030, -0.854562, -0.103016,
		0.859288, 0.497544, 0.118635,
		44.450222, 32.183292, 20.871351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205494, 31.427715, 21.200809>,  <43.848721, 31.835012, 20.788307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205494, 31.427715, 21.200809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.371658, 31.788797, 21.245632>,  <44.471355, 32.005447, 21.272526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.371658, 31.788797, 21.245632>,  <44.205494, 31.427715, 21.200809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371658, 31.788797, 21.245632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095855, -0.079060, 0.992251,
		0.904571, -0.422929, 0.053687,
		0.415407, 0.902707, 0.112055,
		44.496281, 32.059608, 21.279249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475349, 31.434984, 21.828747>,  <44.205494, 31.427715, 21.200809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475349, 31.434984, 21.828747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.497517, 31.828136, 21.758465>,  <44.510815, 32.064030, 21.716295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.497517, 31.828136, 21.758465>,  <44.475349, 31.434984, 21.828747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497517, 31.828136, 21.758465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203035, 0.183391, 0.961844,
		0.977602, -0.017626, 0.209722,
		0.055414, 0.982882, -0.175705,
		44.514141, 32.123001, 21.705753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892998, 31.806177, 22.471912>,  <44.475349, 31.434984, 21.828747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892998, 31.806177, 22.471912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.682018, 32.102482, 22.305506>,  <44.555431, 32.280266, 22.205662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.682018, 32.102482, 22.305506>,  <44.892998, 31.806177, 22.471912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682018, 32.102482, 22.305506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328432, 0.273820, 0.903966,
		0.783538, 0.613427, 0.098865,
		-0.527447, 0.740763, -0.416018,
		44.523785, 32.324711, 22.180700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.126972, 32.389267, 22.762058>,  <44.892998, 31.806177, 22.471912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.126972, 32.389267, 22.762058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.764702, 32.474773, 22.615601>,  <44.547340, 32.526077, 22.527727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.764702, 32.474773, 22.615601>,  <45.126972, 32.389267, 22.762058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764702, 32.474773, 22.615601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314215, 0.241380, 0.918153,
		0.284653, 0.946593, -0.151442,
		-0.905672, 0.213770, -0.366143,
		44.493000, 32.538906, 22.505758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961452, 33.007248, 22.921614>,  <45.126972, 32.389267, 22.762058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961452, 33.007248, 22.921614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.598381, 32.852032, 22.857695>,  <44.380539, 32.758900, 22.819344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.598381, 32.852032, 22.857695>,  <44.961452, 33.007248, 22.921614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598381, 32.852032, 22.857695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324497, 0.407521, 0.853598,
		-0.266111, 0.826649, -0.495818,
		-0.907682, -0.388043, -0.159799,
		44.326077, 32.735619, 22.809755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486038, 33.487247, 23.221497>,  <44.961452, 33.007248, 22.921614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486038, 33.487247, 23.221497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.271461, 33.155380, 23.159693>,  <44.142715, 32.956261, 23.122610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.271461, 33.155380, 23.159693>,  <44.486038, 33.487247, 23.221497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271461, 33.155380, 23.159693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649797, 0.289237, 0.702926,
		-0.538509, 0.477480, -0.694278,
		-0.536444, -0.829672, -0.154508,
		44.110527, 32.906479, 23.113340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879108, 33.716633, 23.406336>,  <44.486038, 33.487247, 23.221497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879108, 33.716633, 23.406336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.805370, 33.323570, 23.414436>,  <43.761127, 33.087734, 23.419296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.805370, 33.323570, 23.414436>,  <43.879108, 33.716633, 23.406336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805370, 33.323570, 23.414436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656949, 0.138519, 0.741101,
		-0.731050, 0.123313, -0.671088,
		-0.184346, -0.982653, 0.020254,
		43.750065, 33.028774, 23.420513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134789, 33.571850, 23.395508>,  <43.879108, 33.716633, 23.406336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134789, 33.571850, 23.395508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.280193, 33.237904, 23.560850>,  <43.367435, 33.037537, 23.660055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.280193, 33.237904, 23.560850>,  <43.134789, 33.571850, 23.395508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280193, 33.237904, 23.560850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631968, 0.105010, 0.767847,
		-0.684454, -0.540347, -0.489435,
		0.363508, -0.834864, 0.413357,
		43.389244, 32.987446, 23.684856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627056, 33.161884, 23.668089>,  <43.134789, 33.571850, 23.395508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627056, 33.161884, 23.668089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.937332, 33.018295, 23.875721>,  <43.123497, 32.932144, 24.000299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.937332, 33.018295, 23.875721>,  <42.627056, 33.161884, 23.668089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937332, 33.018295, 23.875721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529506, 0.077358, 0.844772,
		-0.343404, -0.930137, -0.130071,
		0.775691, -0.358971, 0.519078,
		43.170040, 32.910603, 24.031445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067970, 32.865162, 23.245275>,  <42.627056, 33.161884, 23.668089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067970, 32.865162, 23.245275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.672417, 32.848969, 23.188038>,  <41.435085, 32.839252, 23.153696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.672417, 32.848969, 23.188038>,  <42.067970, 32.865162, 23.245275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672417, 32.848969, 23.188038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124352, 0.302569, -0.944981,
		0.081554, -0.952267, -0.294171,
		-0.988880, -0.040486, -0.143092,
		41.375751, 32.836823, 23.145111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951302, 32.363575, 22.748018>,  <42.067970, 32.865162, 23.245275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951302, 32.363575, 22.748018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.662540, 32.640373, 22.747190>,  <41.489285, 32.806454, 22.746695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.662540, 32.640373, 22.747190>,  <41.951302, 32.363575, 22.748018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662540, 32.640373, 22.747190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117856, 0.120000, -0.985754,
		-0.681889, -0.711858, -0.168183,
		-0.721899, 0.691996, -0.002070,
		41.445972, 32.847973, 22.746569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551712, 32.122505, 22.197723>,  <41.951302, 32.363575, 22.748018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551712, 32.122505, 22.197723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396584, 32.489723, 22.230654>,  <41.303505, 32.710056, 22.250412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.396584, 32.489723, 22.230654>,  <41.551712, 32.122505, 22.197723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396584, 32.489723, 22.230654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060743, 0.114577, -0.991556,
		-0.919730, -0.379548, -0.100201,
		-0.387824, 0.918050, 0.082325,
		41.280235, 32.765137, 22.255352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983582, 32.101871, 21.807686>,  <41.551712, 32.122505, 22.197723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983582, 32.101871, 21.807686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.100937, 32.479721, 21.866501>,  <41.171349, 32.706429, 21.901789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.100937, 32.479721, 21.866501>,  <40.983582, 32.101871, 21.807686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100937, 32.479721, 21.866501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108104, 0.120036, -0.986866,
		-0.949863, 0.305426, -0.066900,
		0.293384, 0.944620, 0.147036,
		41.188953, 32.763107, 21.910612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650028, 32.621826, 21.265013>,  <40.983582, 32.101871, 21.807686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650028, 32.621826, 21.265013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.987419, 32.792278, 21.395838>,  <41.189854, 32.894550, 21.474333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.987419, 32.792278, 21.395838>,  <40.650028, 32.621826, 21.265013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987419, 32.792278, 21.395838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293514, 0.144326, -0.944997,
		-0.449891, 0.893077, -0.003339,
		0.843473, 0.426126, 0.327062,
		41.240459, 32.920116, 21.493956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752567, 33.119762, 20.810059>,  <40.650028, 32.621826, 21.265013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752567, 33.119762, 20.810059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118999, 33.082565, 20.966087>,  <41.338860, 33.060246, 21.059706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.118999, 33.082565, 20.966087>,  <40.752567, 33.119762, 20.810059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118999, 33.082565, 20.966087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399658, 0.291368, -0.869125,
		-0.032832, 0.952080, 0.304081,
		0.916076, -0.092993, 0.390073,
		41.393822, 33.054668, 21.083109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122066, 33.749527, 20.595722>,  <40.752567, 33.119762, 20.810059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122066, 33.749527, 20.595722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.384575, 33.457996, 20.673819>,  <41.542080, 33.283077, 20.720676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.384575, 33.457996, 20.673819>,  <41.122066, 33.749527, 20.595722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384575, 33.457996, 20.673819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412533, 0.129933, -0.901629,
		0.631764, 0.672256, 0.385936,
		0.656271, -0.728828, 0.195241,
		41.581455, 33.239349, 20.732391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965858, 34.464386, 20.846634>,  <41.122066, 33.749527, 20.595722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965858, 34.464386, 20.846634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.754333, 34.750195, 20.663416>,  <40.627419, 34.921680, 20.553484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.754333, 34.750195, 20.663416>,  <40.965858, 34.464386, 20.846634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754333, 34.750195, 20.663416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603696, 0.062680, 0.794747,
		0.596577, 0.696796, 0.398210,
		-0.528817, 0.714525, -0.458047,
		40.595688, 34.964554, 20.526003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041195, 35.086258, 21.332447>,  <40.965858, 34.464386, 20.846634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041195, 35.086258, 21.332447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729942, 35.132923, 21.085577>,  <40.543190, 35.160923, 20.937456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.729942, 35.132923, 21.085577>,  <41.041195, 35.086258, 21.332447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729942, 35.132923, 21.085577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592927, 0.187779, 0.783056,
		0.207247, 0.975258, -0.076943,
		-0.778130, 0.116665, -0.617173,
		40.496502, 35.167923, 20.900425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785259, 35.775482, 21.540298>,  <41.041195, 35.086258, 21.332447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785259, 35.775482, 21.540298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476963, 35.586678, 21.369110>,  <40.291985, 35.473396, 21.266397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.476963, 35.586678, 21.369110>,  <40.785259, 35.775482, 21.540298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476963, 35.586678, 21.369110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593932, 0.289103, 0.750775,
		-0.230648, 0.832840, -0.503168,
		-0.770744, -0.472013, -0.427970,
		40.245739, 35.445072, 21.240719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253490, 36.232449, 21.552963>,  <40.785259, 35.775482, 21.540298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253490, 36.232449, 21.552963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.082832, 35.870682, 21.551817>,  <39.980438, 35.653622, 21.551128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.082832, 35.870682, 21.551817>,  <40.253490, 36.232449, 21.552963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082832, 35.870682, 21.551817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457456, 0.213064, 0.863329,
		-0.780195, 0.369651, -0.504633,
		-0.426649, -0.904413, -0.002867,
		39.954838, 35.599358, 21.550957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546024, 36.467766, 21.871565>,  <40.253490, 36.232449, 21.552963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546024, 36.467766, 21.871565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.617275, 36.074638, 21.890924>,  <39.660027, 35.838764, 21.902540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.617275, 36.074638, 21.890924>,  <39.546024, 36.467766, 21.871565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617275, 36.074638, 21.890924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601806, -0.069893, 0.795578,
		-0.778524, -0.170841, -0.603915,
		0.178126, -0.982817, 0.048400,
		39.670712, 35.779793, 21.905445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921806, 36.322254, 22.162518>,  <39.546024, 36.467766, 21.871565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921806, 36.322254, 22.162518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184063, 36.023178, 22.204647>,  <39.341419, 35.843735, 22.229925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.184063, 36.023178, 22.204647>,  <38.921806, 36.322254, 22.162518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184063, 36.023178, 22.204647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293432, -0.123779, 0.947933,
		-0.695720, -0.652413, -0.300550,
		0.655646, -0.747687, 0.105324,
		39.380756, 35.798874, 22.236244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658817, 35.970753, 22.703110>,  <38.921806, 36.322254, 22.162518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658817, 35.970753, 22.703110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.992664, 35.750523, 22.696398>,  <39.192974, 35.618385, 22.692371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.992664, 35.750523, 22.696398>,  <38.658817, 35.970753, 22.703110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992664, 35.750523, 22.696398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214250, -0.352545, 0.910938,
		-0.507455, -0.756690, -0.412201,
		0.834617, -0.550575, -0.016780,
		39.243050, 35.585350, 22.691364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.273872, 37.518318, 19.143147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.326752, 37.203163, 19.383730>,  <44.358479, 37.014069, 19.528080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.326752, 37.203163, 19.383730>,  <44.273872, 37.518318, 19.143147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.326752, 37.203163, 19.383730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557828, 0.442441, 0.702193,
		-0.819360, -0.428341, -0.381016,
		0.132201, -0.787889, 0.601459,
		44.366413, 36.966797, 19.564167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600983, 37.144535, 19.247805>,  <44.273872, 37.518318, 19.143147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600983, 37.144535, 19.247805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.837002, 37.092941, 19.566605>,  <43.978615, 37.061985, 19.757885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.837002, 37.092941, 19.566605>,  <43.600983, 37.144535, 19.247805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837002, 37.092941, 19.566605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641518, 0.524463, 0.559815,
		-0.490203, -0.841607, 0.226713,
		0.590047, -0.128982, 0.797000,
		44.014015, 37.054245, 19.805704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169701, 37.040936, 19.817499>,  <43.600983, 37.144535, 19.247805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169701, 37.040936, 19.817499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.518261, 37.141857, 19.985785>,  <43.727398, 37.202408, 20.086756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.518261, 37.141857, 19.985785>,  <43.169701, 37.040936, 19.817499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518261, 37.141857, 19.985785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485989, 0.560873, 0.670251,
		-0.066861, -0.788521, 0.611362,
		0.871404, 0.252302, 0.420713,
		43.779682, 37.217548, 20.111998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137733, 36.815315, 20.441002>,  <43.169701, 37.040936, 19.817499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137733, 36.815315, 20.441002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.400753, 37.115700, 20.465267>,  <43.558567, 37.295933, 20.479826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.400753, 37.115700, 20.465267>,  <43.137733, 36.815315, 20.441002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400753, 37.115700, 20.465267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385976, 0.266627, 0.883138,
		0.647031, -0.604122, 0.465174,
		0.657551, 0.750963, 0.060661,
		43.598019, 37.340988, 20.483465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457184, 36.869007, 21.151779>,  <43.137733, 36.815315, 20.441002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457184, 36.869007, 21.151779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.519917, 37.236198, 21.006062>,  <43.557556, 37.456512, 20.918631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.519917, 37.236198, 21.006062>,  <43.457184, 36.869007, 21.151779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519917, 37.236198, 21.006062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216357, 0.391834, 0.894235,
		0.963635, -0.061429, 0.260064,
		0.156834, 0.917983, -0.364294,
		43.566967, 37.511593, 20.896772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650139, 37.196804, 21.768679>,  <43.457184, 36.869007, 21.151779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650139, 37.196804, 21.768679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.562088, 37.481808, 21.502182>,  <43.509258, 37.652809, 21.342283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.562088, 37.481808, 21.502182>,  <43.650139, 37.196804, 21.768679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562088, 37.481808, 21.502182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335748, 0.585925, 0.737540,
		0.915871, 0.386039, 0.110248,
		-0.220122, 0.712507, -0.666243,
		43.496052, 37.695560, 21.302309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844009, 37.792244, 22.065840>,  <43.650139, 37.196804, 21.768679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844009, 37.792244, 22.065840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.595154, 37.949257, 21.794880>,  <43.445843, 38.043465, 21.632305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.595154, 37.949257, 21.794880>,  <43.844009, 37.792244, 22.065840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595154, 37.949257, 21.794880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362091, 0.622870, 0.693486,
		0.694145, 0.676722, -0.245378,
		-0.622136, 0.392530, -0.677397,
		43.408512, 38.067017, 21.591661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780640, 38.543938, 22.245544>,  <43.844009, 37.792244, 22.065840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780640, 38.543938, 22.245544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.462788, 38.436768, 22.027637>,  <43.272076, 38.372463, 21.896894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.462788, 38.436768, 22.027637>,  <43.780640, 38.543938, 22.245544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462788, 38.436768, 22.027637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604857, 0.426281, 0.672631,
		0.052006, 0.864001, -0.500797,
		-0.794634, -0.267929, -0.544766,
		43.224396, 38.356388, 21.864208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331535, 39.089481, 22.227583>,  <43.780640, 38.543938, 22.245544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331535, 39.089481, 22.227583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.084969, 38.786415, 22.141815>,  <42.937027, 38.604576, 22.090355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.084969, 38.786415, 22.141815>,  <43.331535, 39.089481, 22.227583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084969, 38.786415, 22.141815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615181, 0.293409, 0.731753,
		-0.491511, 0.582971, -0.646963,
		-0.616416, -0.757665, -0.214419,
		42.900043, 38.559116, 22.077490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753777, 39.328064, 22.219746>,  <43.331535, 39.089481, 22.227583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753777, 39.328064, 22.219746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.645691, 38.946426, 22.271431>,  <42.580841, 38.717445, 22.302443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.645691, 38.946426, 22.271431>,  <42.753777, 39.328064, 22.219746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645691, 38.946426, 22.271431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655967, 0.280669, 0.700665,
		-0.704765, 0.104567, -0.701692,
		-0.270210, -0.954092, 0.129213,
		42.564629, 38.660198, 22.310196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078251, 39.386940, 22.357456>,  <42.753777, 39.328064, 22.219746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078251, 39.386940, 22.357456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.198040, 39.032387, 22.498676>,  <42.269913, 38.819656, 22.583408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.198040, 39.032387, 22.498676>,  <42.078251, 39.386940, 22.357456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198040, 39.032387, 22.498676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646176, 0.083823, 0.758571,
		-0.701976, -0.455305, -0.547656,
		0.299475, -0.886381, 0.353049,
		42.287884, 38.766472, 22.604591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559246, 39.041706, 22.395855>,  <42.078251, 39.386940, 22.357456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559246, 39.041706, 22.395855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.781765, 38.882561, 22.687674>,  <41.915276, 38.787071, 22.862764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.781765, 38.882561, 22.687674>,  <41.559246, 39.041706, 22.395855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781765, 38.882561, 22.687674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752094, 0.132302, 0.645639,
		-0.353398, -0.907854, -0.225633,
		0.556295, -0.397866, 0.729548,
		41.948654, 38.763203, 22.906538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034538, 38.429432, 22.371336>,  <41.559246, 39.041706, 22.395855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034538, 38.429432, 22.371336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681454, 38.357883, 22.197523>,  <40.469601, 38.314953, 22.093235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.681454, 38.357883, 22.197523>,  <41.034538, 38.429432, 22.371336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681454, 38.357883, 22.197523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452976, -0.077895, -0.888113,
		0.125011, -0.980784, 0.149784,
		-0.882715, -0.178872, -0.434534,
		40.416641, 38.304222, 22.067163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111519, 37.777527, 21.910408>,  <41.034538, 38.429432, 22.371336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111519, 37.777527, 21.910408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773312, 37.948185, 21.781992>,  <40.570385, 38.050579, 21.704943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.773312, 37.948185, 21.781992>,  <41.111519, 37.777527, 21.910408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773312, 37.948185, 21.781992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311011, -0.095205, -0.945626,
		-0.434010, -0.899395, -0.052193,
		-0.845522, 0.426643, -0.321042,
		40.519653, 38.076180, 21.685678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977715, 37.431694, 21.288713>,  <41.111519, 37.777527, 21.910408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977715, 37.431694, 21.288713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.776253, 37.777031, 21.276232>,  <40.655376, 37.984234, 21.268744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.776253, 37.777031, 21.276232>,  <40.977715, 37.431694, 21.288713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.776253, 37.777031, 21.276232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311846, 0.148003, -0.938535,
		-0.805657, -0.482430, -0.343772,
		-0.503657, 0.863340, -0.031204,
		40.625156, 38.036034, 21.266870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696205, 37.402771, 20.612261>,  <40.977715, 37.431694, 21.288713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696205, 37.402771, 20.612261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.700855, 37.789043, 20.716053>,  <40.703644, 38.020805, 20.778328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.700855, 37.789043, 20.716053>,  <40.696205, 37.402771, 20.612261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700855, 37.789043, 20.716053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264041, 0.247325, -0.932262,
		-0.964441, 0.079349, -0.252104,
		0.011622, 0.965678, 0.259482,
		40.704342, 38.078747, 20.793898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212906, 37.738174, 20.154865>,  <40.696205, 37.402771, 20.612261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212906, 37.738174, 20.154865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431957, 38.030113, 20.318533>,  <40.563389, 38.205276, 20.416733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.431957, 38.030113, 20.318533>,  <40.212906, 37.738174, 20.154865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431957, 38.030113, 20.318533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035806, 0.468125, -0.882937,
		-0.835952, 0.498176, 0.230228,
		0.547633, 0.729850, 0.409168,
		40.596249, 38.249069, 20.441284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882217, 38.371426, 19.986254>,  <40.212906, 37.738174, 20.154865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882217, 38.371426, 19.986254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.264805, 38.431503, 20.086338>,  <40.494358, 38.467548, 20.146389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.264805, 38.431503, 20.086338>,  <39.882217, 38.371426, 19.986254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264805, 38.431503, 20.086338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137188, 0.525339, -0.839761,
		-0.257574, 0.837532, 0.481866,
		0.956470, 0.150195, 0.250213,
		40.551746, 38.476562, 20.161402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104084, 39.031635, 19.604456>,  <39.882217, 38.371426, 19.986254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104084, 39.031635, 19.604456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.441975, 38.835480, 19.690197>,  <40.644711, 38.717785, 19.741642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.441975, 38.835480, 19.690197>,  <40.104084, 39.031635, 19.604456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441975, 38.835480, 19.690197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252747, 0.012497, -0.967452,
		0.471751, 0.871413, 0.134501,
		0.844731, -0.490391, 0.214352,
		40.695393, 38.688362, 19.754503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673340, 39.369587, 19.191137>,  <40.104084, 39.031635, 19.604456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673340, 39.369587, 19.191137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.829365, 39.008354, 19.263021>,  <40.922977, 38.791615, 19.306152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.829365, 39.008354, 19.263021>,  <40.673340, 39.369587, 19.191137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829365, 39.008354, 19.263021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267299, -0.075714, -0.960635,
		0.881139, 0.422740, 0.211861,
		0.390058, -0.903083, 0.179713,
		40.946381, 38.737431, 19.316935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340782, 39.301182, 18.820051>,  <40.673340, 39.369587, 19.191137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340782, 39.301182, 18.820051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.295326, 38.911976, 18.900372>,  <41.268055, 38.678452, 18.948565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.295326, 38.911976, 18.900372>,  <41.340782, 39.301182, 18.820051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295326, 38.911976, 18.900372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296733, -0.226127, -0.927802,
		0.948175, -0.045848, 0.314423,
		-0.113637, -0.973018, 0.200803,
		41.261234, 38.620071, 18.960613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985802, 38.958809, 18.684422>,  <41.340782, 39.301182, 18.820051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985802, 38.958809, 18.684422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.704678, 38.678806, 18.633739>,  <41.536003, 38.510807, 18.603331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.704678, 38.678806, 18.633739>,  <41.985802, 38.958809, 18.684422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704678, 38.678806, 18.633739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457404, -0.308258, -0.834121,
		0.544830, -0.644184, 0.536831,
		-0.702810, -0.700003, -0.126704,
		41.493835, 38.468807, 18.595728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398087, 38.461216, 18.428312>,  <41.985802, 38.958809, 18.684422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398087, 38.461216, 18.428312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.050144, 38.270496, 18.377686>,  <41.841381, 38.156063, 18.347309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.050144, 38.270496, 18.377686>,  <42.398087, 38.461216, 18.428312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050144, 38.270496, 18.377686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346586, -0.408099, -0.844590,
		0.351048, -0.778536, 0.520238,
		-0.869852, -0.476799, -0.126567,
		41.789188, 38.127457, 18.339716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449585, 37.696121, 18.306768>,  <42.398087, 38.461216, 18.428312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449585, 37.696121, 18.306768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.121605, 37.858585, 18.145420>,  <41.924816, 37.956066, 18.048611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.121605, 37.858585, 18.145420>,  <42.449585, 37.696121, 18.306768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121605, 37.858585, 18.145420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332525, -0.235618, -0.913187,
		-0.465944, -0.882902, 0.058137,
		-0.819953, 0.406163, -0.403372,
		41.875618, 37.980434, 18.024408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342342, 37.250820, 17.759851>,  <42.449585, 37.696121, 18.306768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342342, 37.250820, 17.759851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.082851, 37.543530, 17.676271>,  <41.927155, 37.719154, 17.626123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.082851, 37.543530, 17.676271>,  <42.342342, 37.250820, 17.759851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082851, 37.543530, 17.676271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033206, -0.247087, -0.968424,
		-0.760294, -0.635184, 0.135994,
		-0.648730, 0.731771, -0.208951,
		41.888233, 37.763062, 17.613586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476109, 36.873451, 18.398685>,  <42.342342, 37.250820, 17.759851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476109, 36.873451, 18.398685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.269588, 36.622482, 18.165524>,  <42.145676, 36.471901, 18.025627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.269588, 36.622482, 18.165524>,  <42.476109, 36.873451, 18.398685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269588, 36.622482, 18.165524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430477, -0.398273, 0.809980,
		-0.740355, 0.669118, -0.064464,
		-0.516298, -0.627423, -0.582903,
		42.114700, 36.434254, 17.990652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867950, 36.943451, 18.599924>,  <42.476109, 36.873451, 18.398685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867950, 36.943451, 18.599924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.885025, 36.586731, 18.419764>,  <41.895267, 36.372700, 18.311666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.885025, 36.586731, 18.419764>,  <41.867950, 36.943451, 18.599924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885025, 36.586731, 18.419764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509708, -0.407170, 0.757899,
		-0.859288, 0.197223, -0.471940,
		0.042685, -0.891805, -0.450403,
		41.897831, 36.319191, 18.284643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208118, 36.656124, 18.691498>,  <41.867950, 36.943451, 18.599924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208118, 36.656124, 18.691498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.427032, 36.335224, 18.596100>,  <41.558380, 36.142685, 18.538862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.427032, 36.335224, 18.596100>,  <41.208118, 36.656124, 18.691498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427032, 36.335224, 18.596100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565639, -0.564567, 0.601096,
		-0.616874, -0.194068, -0.762761,
		0.547283, -0.802247, -0.238495,
		41.591217, 36.094551, 18.524551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742256, 36.156860, 18.594275>,  <41.208118, 36.656124, 18.691498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742256, 36.156860, 18.594275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076832, 35.944336, 18.648062>,  <41.277576, 35.816822, 18.680334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076832, 35.944336, 18.648062>,  <40.742256, 36.156860, 18.594275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076832, 35.944336, 18.648062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489017, -0.612737, 0.620819,
		-0.247454, -0.585033, -0.772336,
		0.836439, -0.531309, 0.134467,
		41.327763, 35.784943, 18.688402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532372, 35.380936, 18.552050>,  <40.742256, 36.156860, 18.594275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532372, 35.380936, 18.552050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.869099, 35.419674, 18.764450>,  <41.071136, 35.442917, 18.891890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.869099, 35.419674, 18.764450>,  <40.532372, 35.380936, 18.552050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869099, 35.419674, 18.764450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425432, -0.486398, 0.763167,
		0.332186, -0.868354, -0.368259,
		0.841819, 0.096844, 0.531000,
		41.121643, 35.448727, 18.923750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564674, 34.838364, 18.826031>,  <40.532372, 35.380936, 18.552050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564674, 34.838364, 18.826031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.807331, 35.063362, 19.050739>,  <40.952927, 35.198360, 19.185564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.807331, 35.063362, 19.050739>,  <40.564674, 34.838364, 18.826031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807331, 35.063362, 19.050739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378397, -0.417158, 0.826314,
		0.699143, -0.713850, -0.040220,
		0.606642, 0.562493, 0.561772,
		40.989323, 35.232109, 19.219271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863728, 34.422352, 19.379984>,  <40.564674, 34.838364, 18.826031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863728, 34.422352, 19.379984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.873344, 34.793484, 19.528872>,  <40.879112, 35.016163, 19.618204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.873344, 34.793484, 19.528872>,  <40.863728, 34.422352, 19.379984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873344, 34.793484, 19.528872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413053, -0.329841, 0.848877,
		0.910390, -0.174152, 0.375315,
		0.024039, 0.927834, 0.372217,
		40.880558, 35.071835, 19.640537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105789, 34.338589, 20.108013>,  <40.863728, 34.422352, 19.379984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105789, 34.338589, 20.108013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.917385, 34.689869, 20.074749>,  <40.804340, 34.900635, 20.054790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.917385, 34.689869, 20.074749>,  <41.105789, 34.338589, 20.108013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917385, 34.689869, 20.074749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533848, -0.208733, 0.819413,
		0.702248, 0.430349, 0.567140,
		-0.471014, 0.878197, -0.083158,
		40.776081, 34.953327, 20.049801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855282, 34.024590, 20.226706>,  <41.105789, 34.338589, 20.108013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855282, 34.024590, 20.226706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916378, 33.635468, 20.296349>,  <41.953033, 33.401993, 20.338135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916378, 33.635468, 20.296349>,  <41.855282, 34.024590, 20.226706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916378, 33.635468, 20.296349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551277, -0.062351, -0.831989,
		0.820223, 0.223057, 0.526764,
		0.152737, -0.972809, 0.174108,
		41.962200, 33.343624, 20.348581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529770, 33.908512, 20.076612>,  <41.855282, 34.024590, 20.226706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529770, 33.908512, 20.076612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.407230, 33.528156, 20.058908>,  <42.333706, 33.299942, 20.048286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.407230, 33.528156, 20.058908>,  <42.529770, 33.908512, 20.076612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407230, 33.528156, 20.058908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485666, -0.116139, -0.866395,
		0.818707, -0.286913, 0.497394,
		-0.306347, -0.950890, -0.044260,
		42.315327, 33.242889, 20.045631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106251, 33.496384, 19.946346>,  <42.529770, 33.908512, 20.076612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106251, 33.496384, 19.946346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801804, 33.261154, 19.836897>,  <42.619137, 33.120018, 19.771227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.801804, 33.261154, 19.836897>,  <43.106251, 33.496384, 19.946346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801804, 33.261154, 19.836897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455978, -0.185107, -0.870528,
		0.461283, -0.787342, 0.409036,
		-0.761119, -0.588071, -0.273624,
		42.573467, 33.084732, 19.754810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402046, 32.973946, 19.612766>,  <43.106251, 33.496384, 19.946346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402046, 32.973946, 19.612766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.025936, 32.965981, 19.476833>,  <42.800270, 32.961201, 19.395273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.025936, 32.965981, 19.476833>,  <43.402046, 32.973946, 19.612766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025936, 32.965981, 19.476833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337336, -0.188492, -0.922320,
		-0.045693, -0.981873, 0.183950,
		-0.940274, -0.019909, -0.339834,
		42.743855, 32.960007, 19.374884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320507, 32.344116, 19.308636>,  <43.402046, 32.973946, 19.612766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320507, 32.344116, 19.308636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.044670, 32.584904, 19.147591>,  <42.879166, 32.729374, 19.050964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.044670, 32.584904, 19.147591>,  <43.320507, 32.344116, 19.308636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044670, 32.584904, 19.147591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284393, -0.286183, -0.914997,
		-0.666019, -0.745476, 0.026155,
		-0.689594, 0.601967, -0.402611,
		42.837791, 32.765495, 19.026808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022602, 31.909605, 18.765263>,  <43.320507, 32.344116, 19.308636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022602, 31.909605, 18.765263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.934666, 32.289978, 18.678181>,  <42.881905, 32.518204, 18.625933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.934666, 32.289978, 18.678181>,  <43.022602, 31.909605, 18.765263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934666, 32.289978, 18.678181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523571, -0.073284, -0.848825,
		-0.823130, -0.300590, -0.481770,
		-0.219842, 0.950934, -0.217703,
		42.868713, 32.575256, 18.612869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776443, 31.825636, 18.131830>,  <43.022602, 31.909605, 18.765263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776443, 31.825636, 18.131830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.862270, 32.215496, 18.157190>,  <42.913765, 32.449413, 18.172407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.862270, 32.215496, 18.157190>,  <42.776443, 31.825636, 18.131830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862270, 32.215496, 18.157190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457054, -0.042827, -0.888407,
		-0.863171, 0.219599, -0.454657,
		0.214565, 0.974650, 0.063402,
		42.926640, 32.507893, 18.176210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576012, 32.031063, 17.462811>,  <42.776443, 31.825636, 18.131830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576012, 32.031063, 17.462811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.823135, 32.306908, 17.613935>,  <42.971409, 32.472416, 17.704611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.823135, 32.306908, 17.613935>,  <42.576012, 32.031063, 17.462811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823135, 32.306908, 17.613935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314560, 0.223611, -0.922524,
		-0.720671, 0.688787, -0.078777,
		0.617807, 0.689616, 0.377815,
		43.008476, 32.513794, 17.727280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493580, 32.618305, 17.001900>,  <42.576012, 32.031063, 17.462811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493580, 32.618305, 17.001900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.840141, 32.666523, 17.195732>,  <43.048077, 32.695454, 17.312033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.840141, 32.666523, 17.195732>,  <42.493580, 32.618305, 17.001900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840141, 32.666523, 17.195732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441739, 0.267487, -0.856340,
		-0.232847, 0.955991, 0.178502,
		0.866400, 0.120544, 0.484582,
		43.100060, 32.702686, 17.341106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.184566, 32.947975, 32.327595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529373, 32.906113, 32.525978>,  <37.736256, 32.880993, 32.645008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529373, 32.906113, 32.525978>,  <37.184566, 32.947975, 32.327595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529373, 32.906113, 32.525978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504808, 0.265711, -0.821320,
		-0.045823, 0.958355, 0.281880,
		0.862015, -0.104660, 0.495961,
		37.787979, 32.874714, 32.674767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575249, 33.506485, 32.171124>,  <37.184566, 32.947975, 32.327595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575249, 33.506485, 32.171124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826145, 33.215824, 32.283230>,  <37.976681, 33.041428, 32.350494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826145, 33.215824, 32.283230>,  <37.575249, 33.506485, 32.171124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826145, 33.215824, 32.283230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611326, 0.236395, -0.755247,
		0.482549, 0.645052, 0.592498,
		0.627237, -0.726653, 0.280265,
		38.014317, 32.997829, 32.367310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233440, 33.731941, 32.141960>,  <37.575249, 33.506485, 32.171124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233440, 33.731941, 32.141960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266441, 33.336441, 32.092060>,  <38.286240, 33.099140, 32.062119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266441, 33.336441, 32.092060>,  <38.233440, 33.731941, 32.141960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266441, 33.336441, 32.092060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453055, 0.148704, -0.878992,
		0.887657, 0.015997, 0.460228,
		0.082499, -0.988752, -0.124751,
		38.291191, 33.039814, 32.054634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702770, 33.813004, 31.696562>,  <38.233440, 33.731941, 32.141960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702770, 33.813004, 31.696562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600033, 33.426731, 31.681122>,  <38.538391, 33.194965, 31.671858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.600033, 33.426731, 31.681122>,  <38.702770, 33.813004, 31.696562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600033, 33.426731, 31.681122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369638, -0.061251, -0.927155,
		0.892973, -0.252399, 0.372685,
		-0.256840, -0.965683, -0.038601,
		38.522980, 33.137028, 31.669542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243561, 33.453049, 31.357124>,  <38.702770, 33.813004, 31.696562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243561, 33.453049, 31.357124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.950073, 33.183147, 31.325191>,  <38.773983, 33.021206, 31.306032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.950073, 33.183147, 31.325191>,  <39.243561, 33.453049, 31.357124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950073, 33.183147, 31.325191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177670, -0.077125, -0.981063,
		0.655815, -0.734006, 0.176471,
		-0.733717, -0.674750, -0.079831,
		38.729958, 32.980724, 31.301243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468502, 33.011562, 30.906204>,  <39.243561, 33.453049, 31.357124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468502, 33.011562, 30.906204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078541, 32.924213, 30.888901>,  <38.844563, 32.871803, 30.878519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.078541, 32.924213, 30.888901>,  <39.468502, 33.011562, 30.906204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078541, 32.924213, 30.888901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100653, -0.259053, -0.960604,
		0.198567, -0.940852, 0.274533,
		-0.974905, -0.218377, -0.043260,
		38.786068, 32.858700, 30.875923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452915, 32.300354, 30.572065>,  <39.468502, 33.011562, 30.906204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452915, 32.300354, 30.572065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.101078, 32.484913, 30.525709>,  <38.889977, 32.595650, 30.497894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.101078, 32.484913, 30.525709>,  <39.452915, 32.300354, 30.572065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101078, 32.484913, 30.525709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014749, -0.269938, -0.962765,
		-0.475505, -0.845128, 0.244240,
		-0.879589, 0.461402, -0.115892,
		38.837200, 32.623333, 30.490942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910534, 31.767426, 30.286755>,  <39.452915, 32.300354, 30.572065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910534, 31.767426, 30.286755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801647, 32.143684, 30.205679>,  <38.736317, 32.369438, 30.157034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.801647, 32.143684, 30.205679>,  <38.910534, 31.767426, 30.286755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801647, 32.143684, 30.205679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002253, -0.210021, -0.977694,
		-0.962234, -0.266598, 0.055051,
		-0.272213, 0.940647, -0.202690,
		38.719982, 32.425877, 30.144873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354187, 31.789383, 29.801266>,  <38.910534, 31.767426, 30.286755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354187, 31.789383, 29.801266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.458130, 32.173035, 29.756466>,  <38.520496, 32.403225, 29.729586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.458130, 32.173035, 29.756466>,  <38.354187, 31.789383, 29.801266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458130, 32.173035, 29.756466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174955, -0.067300, -0.982274,
		-0.949666, 0.274843, 0.150316,
		0.259855, 0.959131, -0.111998,
		38.536087, 32.460773, 29.722866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814011, 32.106617, 29.351023>,  <38.354187, 31.789383, 29.801266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814011, 32.106617, 29.351023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154697, 32.316219, 29.351477>,  <38.359108, 32.441978, 29.351749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.154697, 32.316219, 29.351477>,  <37.814011, 32.106617, 29.351023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154697, 32.316219, 29.351477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057175, 0.095083, -0.993826,
		-0.520876, 0.846392, 0.110944,
		0.851716, 0.524003, 0.001134,
		38.410213, 32.473419, 29.351816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637207, 32.502064, 28.900038>,  <37.814011, 32.106617, 29.351023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637207, 32.502064, 28.900038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036163, 32.529804, 28.908035>,  <38.275536, 32.546448, 28.912834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.036163, 32.529804, 28.908035>,  <37.637207, 32.502064, 28.900038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036163, 32.529804, 28.908035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024270, -0.061376, -0.997820,
		-0.067974, 0.995702, -0.062899,
		0.997392, 0.069352, 0.019994,
		38.335381, 32.550610, 28.914034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743294, 33.032501, 28.370098>,  <37.637207, 32.502064, 28.900038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743294, 33.032501, 28.370098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102993, 32.862976, 28.413435>,  <38.318813, 32.761261, 28.439438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.102993, 32.862976, 28.413435>,  <37.743294, 33.032501, 28.370098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102993, 32.862976, 28.413435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124882, 0.011357, -0.992107,
		0.419234, 0.905680, 0.063139,
		0.899248, -0.423810, 0.108342,
		38.372768, 32.735832, 28.445938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674904, 33.763538, 28.502060>,  <37.743294, 33.032501, 28.370098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674904, 33.763538, 28.502060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412270, 33.959885, 28.272993>,  <37.254688, 34.077690, 28.135553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412270, 33.959885, 28.272993>,  <37.674904, 33.763538, 28.502060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412270, 33.959885, 28.272993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499689, 0.285644, 0.817752,
		0.564983, 0.823080, 0.057729,
		-0.656585, 0.490863, -0.572669,
		37.215294, 34.107143, 28.101192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451416, 34.248165, 28.987663>,  <37.674904, 33.763538, 28.502060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451416, 34.248165, 28.987663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200653, 34.292866, 28.679249>,  <37.050194, 34.319687, 28.494200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.200653, 34.292866, 28.679249>,  <37.451416, 34.248165, 28.987663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200653, 34.292866, 28.679249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721631, 0.289732, 0.628733,
		0.293656, 0.950562, -0.100992,
		-0.626909, 0.111752, -0.771036,
		37.012581, 34.326393, 28.447939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119938, 34.927174, 29.008518>,  <37.451416, 34.248165, 28.987663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119938, 34.927174, 29.008518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876999, 34.678692, 28.810434>,  <36.731236, 34.529602, 28.691584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876999, 34.678692, 28.810434>,  <37.119938, 34.927174, 29.008518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876999, 34.678692, 28.810434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787984, 0.391777, 0.474965,
		-0.101040, 0.678685, -0.727446,
		-0.607349, -0.621206, -0.495207,
		36.694794, 34.492329, 28.661873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588062, 35.299809, 28.570108>,  <37.119938, 34.927174, 29.008518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588062, 35.299809, 28.570108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449730, 34.936916, 28.665888>,  <36.366730, 34.719181, 28.723356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.449730, 34.936916, 28.665888>,  <36.588062, 35.299809, 28.570108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449730, 34.936916, 28.665888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862567, 0.407829, 0.299424,
		-0.369300, -0.102991, -0.923585,
		-0.345827, -0.907231, 0.239448,
		36.345982, 34.664745, 28.737722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888176, 35.513573, 28.639019>,  <36.588062, 35.299809, 28.570108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888176, 35.513573, 28.639019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888241, 35.137817, 28.776159>,  <35.888279, 34.912365, 28.858444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888241, 35.137817, 28.776159>,  <35.888176, 35.513573, 28.639019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888241, 35.137817, 28.776159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860696, 0.174422, 0.478308,
		-0.509119, -0.295166, -0.808502,
		0.000160, -0.939391, 0.342850,
		35.888290, 34.855999, 28.879015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210583, 35.377392, 28.702864>,  <35.888176, 35.513573, 28.639019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210583, 35.377392, 28.702864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395863, 35.094181, 28.916084>,  <35.507030, 34.924255, 29.044016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.395863, 35.094181, 28.916084>,  <35.210583, 35.377392, 28.702864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395863, 35.094181, 28.916084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789807, -0.056918, 0.610709,
		-0.402059, -0.703887, -0.585570,
		0.463199, -0.708028, 0.533050,
		35.534821, 34.881771, 29.076000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852428, 34.715015, 28.626329>,  <35.210583, 35.377392, 28.702864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852428, 34.715015, 28.626329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040401, 34.760010, 28.976532>,  <35.153187, 34.787006, 29.186653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040401, 34.760010, 28.976532>,  <34.852428, 34.715015, 28.626329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040401, 34.760010, 28.976532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882640, 0.048263, 0.467565,
		0.010340, -0.992481, 0.121963,
		0.469936, 0.112484, 0.875504,
		35.181381, 34.793755, 29.239183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465511, 34.368000, 29.109640>,  <34.852428, 34.715015, 28.626329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465511, 34.368000, 29.109640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666122, 34.583923, 29.380070>,  <34.786488, 34.713478, 29.542328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666122, 34.583923, 29.380070>,  <34.465511, 34.368000, 29.109640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666122, 34.583923, 29.380070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854031, 0.184059, 0.486574,
		0.138220, -0.821418, 0.553325,
		0.501524, 0.539810, 0.676075,
		34.816578, 34.745869, 29.582891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100864, 34.236370, 29.723934>,  <34.465511, 34.368000, 29.109640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100864, 34.236370, 29.723934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302437, 34.579399, 29.765173>,  <34.423382, 34.785217, 29.789917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302437, 34.579399, 29.765173>,  <34.100864, 34.236370, 29.723934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302437, 34.579399, 29.765173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837582, 0.456019, 0.300838,
		0.210975, -0.237954, 0.948086,
		0.503931, 0.857569, 0.103097,
		34.453617, 34.836670, 29.796103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744122, 34.502632, 30.222563>,  <34.100864, 34.236370, 29.723934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744122, 34.502632, 30.222563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.933334, 34.820946, 30.071314>,  <34.046860, 35.011932, 29.980564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.933334, 34.820946, 30.071314>,  <33.744122, 34.502632, 30.222563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933334, 34.820946, 30.071314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677519, 0.602905, 0.421277,
		0.563214, 0.056905, 0.824349,
		0.473031, 0.795781, -0.378119,
		34.075245, 35.059681, 29.957878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881653, 34.906525, 30.792202>,  <33.744122, 34.502632, 30.222563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881653, 34.906525, 30.792202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897945, 35.140896, 30.468466>,  <33.907722, 35.281517, 30.274225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.897945, 35.140896, 30.468466>,  <33.881653, 34.906525, 30.792202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897945, 35.140896, 30.468466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738956, 0.562866, 0.370304,
		0.672521, 0.582983, 0.455901,
		0.040730, 0.585928, -0.809339,
		33.910164, 35.316673, 30.225664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721790, 35.535450, 31.061752>,  <33.881653, 34.906525, 30.792202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721790, 35.535450, 31.061752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633789, 35.555397, 30.672064>,  <33.580986, 35.567364, 30.438250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.633789, 35.555397, 30.672064>,  <33.721790, 35.535450, 31.061752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633789, 35.555397, 30.672064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749164, 0.630997, 0.201483,
		0.624780, 0.774181, -0.101464,
		-0.220008, 0.049869, -0.974223,
		33.567787, 35.570358, 30.379797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567982, 36.215702, 30.960606>,  <33.721790, 35.535450, 31.061752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567982, 36.215702, 30.960606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380039, 36.033115, 30.658381>,  <33.267273, 35.923565, 30.477045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.380039, 36.033115, 30.658381>,  <33.567982, 36.215702, 30.960606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380039, 36.033115, 30.658381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871021, 0.378756, 0.312837,
		0.143375, 0.805100, -0.575550,
		-0.469857, -0.456463, -0.755563,
		33.239082, 35.896175, 30.431711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155407, 36.684669, 30.631317>,  <33.567982, 36.215702, 30.960606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155407, 36.684669, 30.631317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994820, 36.334446, 30.523825>,  <32.898468, 36.124310, 30.459330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994820, 36.334446, 30.523825>,  <33.155407, 36.684669, 30.631317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994820, 36.334446, 30.523825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895150, 0.313042, 0.317350,
		-0.193735, 0.367960, -0.909435,
		-0.401464, -0.875563, -0.268732,
		32.874382, 36.071777, 30.443205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441982, 36.764084, 30.525190>,  <33.155407, 36.684669, 30.631317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441982, 36.764084, 30.525190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450153, 36.368839, 30.586149>,  <32.455055, 36.131695, 30.622725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.450153, 36.368839, 30.586149>,  <32.441982, 36.764084, 30.525190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450153, 36.368839, 30.586149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923692, 0.039679, 0.381076,
		-0.382591, -0.148554, -0.911897,
		0.020428, -0.988108, 0.152399,
		32.456280, 36.072407, 30.631868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929062, 37.214367, 30.215906>,  <32.441982, 36.764084, 30.525190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929062, 37.214367, 30.215906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.842632, 37.070992, 30.579187>,  <32.790775, 36.984966, 30.797157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.842632, 37.070992, 30.579187>,  <32.929062, 37.214367, 30.215906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842632, 37.070992, 30.579187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604795, -0.779374, -0.163705,
		0.766510, 0.513906, 0.385180,
		-0.216071, -0.358436, 0.908205,
		32.777813, 36.963459, 30.851648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993889, 37.551765, 29.574356>,  <32.929062, 37.214367, 30.215906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993889, 37.551765, 29.574356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282257, 37.777168, 29.735722>,  <33.455276, 37.912411, 29.832541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.282257, 37.777168, 29.735722>,  <32.993889, 37.551765, 29.574356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282257, 37.777168, 29.735722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505558, -0.029469, -0.862289,
		-0.474017, 0.825587, -0.306129,
		0.720916, 0.563505, 0.403413,
		33.498531, 37.946220, 29.856745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161293, 38.066544, 29.068380>,  <32.993889, 37.551765, 29.574356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161293, 38.066544, 29.068380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483814, 37.987293, 29.291313>,  <33.677326, 37.939743, 29.425074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483814, 37.987293, 29.291313>,  <33.161293, 38.066544, 29.068380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483814, 37.987293, 29.291313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570153, 0.009480, -0.821484,
		0.157470, 0.980132, 0.120604,
		0.806305, -0.198122, 0.557332,
		33.725704, 37.927856, 29.458513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610157, 38.362499, 28.721525>,  <33.161293, 38.066544, 29.068380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610157, 38.362499, 28.721525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852505, 38.149830, 28.958254>,  <33.997913, 38.022228, 29.100290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.852505, 38.149830, 28.958254>,  <33.610157, 38.362499, 28.721525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852505, 38.149830, 28.958254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749802, 0.132938, -0.648170,
		0.265939, 0.836451, 0.479193,
		0.605865, -0.531674, 0.591819,
		34.034264, 37.990326, 29.135799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277187, 38.684250, 28.655663>,  <33.610157, 38.362499, 28.721525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277187, 38.684250, 28.655663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369843, 38.323124, 28.800592>,  <34.425434, 38.106449, 28.887550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369843, 38.323124, 28.800592>,  <34.277187, 38.684250, 28.655663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369843, 38.323124, 28.800592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736176, -0.080792, -0.671950,
		0.635917, 0.422380, 0.645914,
		0.231634, -0.902811, 0.362323,
		34.439331, 38.052280, 28.909290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007832, 38.700893, 28.660040>,  <34.277187, 38.684250, 28.655663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007832, 38.700893, 28.660040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894890, 38.317394, 28.673126>,  <34.827126, 38.087296, 28.680979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894890, 38.317394, 28.673126>,  <35.007832, 38.700893, 28.660040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894890, 38.317394, 28.673126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650045, -0.216298, -0.728461,
		0.705491, -0.184416, 0.684305,
		-0.282354, -0.958752, 0.032717,
		34.810184, 38.029770, 28.682941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607960, 38.229492, 28.917173>,  <35.007832, 38.700893, 28.660040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607960, 38.229492, 28.917173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348286, 38.032257, 28.685509>,  <35.192482, 37.913918, 28.546511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348286, 38.032257, 28.685509>,  <35.607960, 38.229492, 28.917173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348286, 38.032257, 28.685509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712397, -0.127322, -0.690130,
		0.266552, -0.860615, 0.433926,
		-0.649184, -0.493083, -0.579162,
		35.153530, 37.884331, 28.511761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968853, 37.666630, 28.580267>,  <35.607960, 38.229492, 28.917173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968853, 37.666630, 28.580267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.641270, 37.702301, 28.353514>,  <35.444721, 37.723705, 28.217461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.641270, 37.702301, 28.353514>,  <35.968853, 37.666630, 28.580267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641270, 37.702301, 28.353514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562725, -0.068816, -0.823774,
		-0.112473, -0.993635, 0.006175,
		-0.818957, 0.089178, -0.566884,
		35.395584, 37.729053, 28.183449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059021, 37.107121, 28.056669>,  <35.968853, 37.666630, 28.580267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059021, 37.107121, 28.056669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797600, 37.378792, 27.923050>,  <35.640747, 37.541794, 27.842878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797600, 37.378792, 27.923050>,  <36.059021, 37.107121, 28.056669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797600, 37.378792, 27.923050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429262, -0.030900, -0.902651,
		-0.623383, -0.733323, -0.271350,
		-0.653550, 0.679178, -0.334050,
		35.601536, 37.582546, 27.822834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876869, 36.798126, 27.464972>,  <36.059021, 37.107121, 28.056669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876869, 36.798126, 27.464972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735378, 37.170715, 27.430967>,  <35.650482, 37.394268, 27.410564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.735378, 37.170715, 27.430967>,  <35.876869, 36.798126, 27.464972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735378, 37.170715, 27.430967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204274, -0.011761, -0.978843,
		-0.912768, -0.363613, -0.186116,
		-0.353731, 0.931476, -0.085012,
		35.629257, 37.450157, 27.405464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388496, 36.880489, 26.848591>,  <35.876869, 36.798126, 27.464972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388496, 36.880489, 26.848591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545494, 37.241016, 26.921890>,  <35.639690, 37.457333, 26.965870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545494, 37.241016, 26.921890>,  <35.388496, 36.880489, 26.848591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545494, 37.241016, 26.921890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218835, 0.102001, -0.970416,
		-0.893344, 0.420980, -0.157205,
		0.392490, 0.901317, 0.183247,
		35.663242, 37.511410, 26.976864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322838, 37.185169, 26.218203>,  <35.388496, 36.880489, 26.848591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322838, 37.185169, 26.218203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566109, 37.445587, 26.399866>,  <35.712070, 37.601837, 26.508863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566109, 37.445587, 26.399866>,  <35.322838, 37.185169, 26.218203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566109, 37.445587, 26.399866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367949, 0.275747, -0.888019,
		-0.703377, 0.707176, -0.071851,
		0.608173, 0.651049, 0.454159,
		35.748562, 37.640903, 26.536114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391758, 37.773853, 25.822575>,  <35.322838, 37.185169, 26.218203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391758, 37.773853, 25.822575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716328, 37.780228, 26.056273>,  <35.911068, 37.784054, 26.196491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716328, 37.780228, 26.056273>,  <35.391758, 37.773853, 25.822575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716328, 37.780228, 26.056273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519903, 0.437006, -0.733980,
		-0.267018, 0.899317, 0.346309,
		0.811420, 0.015939, 0.584246,
		35.959755, 37.785011, 26.231546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718189, 38.454128, 25.832911>,  <35.391758, 37.773853, 25.822575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718189, 38.454128, 25.832911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011929, 38.213474, 25.958622>,  <36.188171, 38.069080, 26.034050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011929, 38.213474, 25.958622>,  <35.718189, 38.454128, 25.832911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011929, 38.213474, 25.958622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583625, 0.323234, -0.744917,
		0.346584, 0.730447, 0.588495,
		0.734344, -0.601637, 0.314280,
		36.232231, 38.032982, 26.052906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322575, 38.733582, 25.575804>,  <35.718189, 38.454128, 25.832911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322575, 38.733582, 25.575804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459980, 38.366402, 25.655167>,  <36.542423, 38.146095, 25.702785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.459980, 38.366402, 25.655167>,  <36.322575, 38.733582, 25.575804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459980, 38.366402, 25.655167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779209, 0.160647, -0.605827,
		0.524245, 0.362712, 0.770459,
		0.343513, -0.917950, 0.198409,
		36.563034, 38.091015, 25.714689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073071, 38.828579, 25.613575>,  <36.322575, 38.733582, 25.575804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073071, 38.828579, 25.613575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007999, 38.439365, 25.548162>,  <36.968956, 38.205837, 25.508915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007999, 38.439365, 25.548162>,  <37.073071, 38.828579, 25.613575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007999, 38.439365, 25.548162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793799, -0.030631, -0.607408,
		0.586018, -0.228627, 0.777375,
		-0.162682, -0.973032, -0.163534,
		36.959194, 38.147457, 25.499102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669357, 38.430397, 25.880625>,  <37.073071, 38.828579, 25.613575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669357, 38.430397, 25.880625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498230, 38.191185, 25.609528>,  <37.395554, 38.047657, 25.446869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.498230, 38.191185, 25.609528>,  <37.669357, 38.430397, 25.880625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498230, 38.191185, 25.609528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879494, -0.102483, -0.464744,
		0.208474, -0.794896, 0.569806,
		-0.427819, -0.598028, -0.677741,
		37.369884, 38.011776, 25.406206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226868, 38.011993, 25.789795>,  <37.669357, 38.430397, 25.880625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226868, 38.011993, 25.789795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993916, 37.936790, 25.473444>,  <37.854145, 37.891666, 25.283634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993916, 37.936790, 25.473444>,  <38.226868, 38.011993, 25.789795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993916, 37.936790, 25.473444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812706, -0.156855, -0.561164,
		-0.018547, -0.969561, 0.244148,
		-0.582379, -0.188012, -0.790877,
		37.819202, 37.880386, 25.236181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461937, 37.409313, 25.442373>,  <38.226868, 38.011993, 25.789795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461937, 37.409313, 25.442373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270267, 37.630623, 25.169821>,  <38.155266, 37.763409, 25.006289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.270267, 37.630623, 25.169821>,  <38.461937, 37.409313, 25.442373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270267, 37.630623, 25.169821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776880, -0.093938, -0.622602,
		-0.408478, -0.827685, -0.384815,
		-0.479170, 0.553275, -0.681384,
		38.126518, 37.796604, 24.965406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611507, 37.192162, 24.781227>,  <38.461937, 37.409313, 25.442373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611507, 37.192162, 24.781227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.476124, 37.559269, 24.698147>,  <38.394894, 37.779533, 24.648298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.476124, 37.559269, 24.698147>,  <38.611507, 37.192162, 24.781227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476124, 37.559269, 24.698147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694397, 0.094647, -0.713341,
		-0.635026, -0.385663, -0.669333,
		-0.338459, 0.917772, -0.207700,
		38.374584, 37.834602, 24.635838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353317, 37.167122, 24.083773>,  <38.611507, 37.192162, 24.781227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353317, 37.167122, 24.083773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430424, 37.553684, 24.151775>,  <38.476688, 37.785622, 24.192577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.430424, 37.553684, 24.151775>,  <38.353317, 37.167122, 24.083773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430424, 37.553684, 24.151775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579051, 0.027840, -0.814816,
		-0.792175, 0.255509, -0.554232,
		0.192763, 0.966406, 0.170007,
		38.488255, 37.843605, 24.202778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255493, 37.445686, 23.400478>,  <38.353317, 37.167122, 24.083773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255493, 37.445686, 23.400478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474670, 37.698242, 23.619968>,  <38.606178, 37.849777, 23.751663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474670, 37.698242, 23.619968>,  <38.255493, 37.445686, 23.400478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474670, 37.698242, 23.619968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532603, 0.242502, -0.810880,
		-0.645048, 0.736574, -0.203401,
		0.547948, 0.631389, 0.548727,
		38.639053, 37.887657, 23.784586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344883, 38.009895, 22.967922>,  <38.255493, 37.445686, 23.400478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344883, 38.009895, 22.967922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.642742, 38.101971, 23.218527>,  <38.821457, 38.157215, 23.368889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.642742, 38.101971, 23.218527>,  <38.344883, 38.009895, 22.967922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642742, 38.101971, 23.218527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578656, 0.245174, -0.777847,
		-0.332654, 0.941756, 0.049369,
		0.744646, 0.230187, 0.626511,
		38.866135, 38.171028, 23.406481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509552, 38.626568, 22.777786>,  <38.344883, 38.009895, 22.967922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509552, 38.626568, 22.777786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.819096, 38.483467, 22.986845>,  <39.004822, 38.397606, 23.112280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.819096, 38.483467, 22.986845>,  <38.509552, 38.626568, 22.777786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819096, 38.483467, 22.986845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585565, 0.089641, -0.805654,
		0.241371, 0.929506, 0.278854,
		0.773856, -0.357748, 0.522649,
		39.051254, 38.376144, 23.143641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924698, 39.178566, 22.761705>,  <38.509552, 38.626568, 22.777786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924698, 39.178566, 22.761705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.156658, 38.858822, 22.824619>,  <39.295834, 38.666977, 22.862368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.156658, 38.858822, 22.824619>,  <38.924698, 39.178566, 22.761705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156658, 38.858822, 22.824619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474712, 0.174649, -0.862639,
		0.662090, 0.574909, 0.480745,
		0.579901, -0.799360, 0.157283,
		39.330627, 38.619015, 22.871803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654114, 39.331707, 22.600182>,  <38.924698, 39.178566, 22.761705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654114, 39.331707, 22.600182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.681313, 38.932636, 22.601671>,  <39.697632, 38.693192, 22.602566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.681313, 38.932636, 22.601671>,  <39.654114, 39.331707, 22.600182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681313, 38.932636, 22.601671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698879, 0.044966, -0.713826,
		0.712001, 0.051140, 0.700314,
		0.067995, -0.997679, 0.003725,
		39.701710, 38.633331, 22.602789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414696, 39.102074, 22.594481>,  <39.654114, 39.331707, 22.600182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414696, 39.102074, 22.594481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.211414, 38.792656, 22.443029>,  <40.089447, 38.607006, 22.352160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.211414, 38.792656, 22.443029>,  <40.414696, 39.102074, 22.594481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211414, 38.792656, 22.443029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590266, 0.007298, -0.807176,
		0.627152, -0.633696, 0.452890,
		-0.508199, -0.773548, -0.378626,
		40.058956, 38.560593, 22.329441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028137, 38.884892, 22.923536>,  <40.414696, 39.102074, 22.594481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028137, 38.884892, 22.923536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364674, 38.795742, 23.120501>,  <41.566597, 38.742252, 23.238680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364674, 38.795742, 23.120501>,  <41.028137, 38.884892, 22.923536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364674, 38.795742, 23.120501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478078, 0.118162, 0.870333,
		-0.252161, -0.967659, -0.007138,
		0.841342, -0.222876, 0.492413,
		41.617077, 38.728878, 23.268225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928581, 38.336739, 23.303528>,  <41.028137, 38.884892, 22.923536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928581, 38.336739, 23.303528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.244026, 38.510250, 23.477850>,  <41.433292, 38.614357, 23.582443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.244026, 38.510250, 23.477850>,  <40.928581, 38.336739, 23.303528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244026, 38.510250, 23.477850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437368, -0.102456, 0.893427,
		0.432197, -0.895177, 0.108921,
		0.788616, 0.433775, 0.435804,
		41.480610, 38.640381, 23.608591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015427, 38.001282, 23.961452>,  <40.928581, 38.336739, 23.303528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015427, 38.001282, 23.961452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.203075, 38.351410, 24.008343>,  <41.315662, 38.561485, 24.036476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.203075, 38.351410, 24.008343>,  <41.015427, 38.001282, 23.961452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203075, 38.351410, 24.008343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303537, 0.035160, 0.952171,
		0.829333, -0.482264, 0.282186,
		0.469119, 0.875320, 0.117225,
		41.343811, 38.614006, 24.043510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405037, 38.065884, 24.689724>,  <41.015427, 38.001282, 23.961452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405037, 38.065884, 24.689724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364258, 38.442299, 24.560692>,  <41.339790, 38.668148, 24.483273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.364258, 38.442299, 24.560692>,  <41.405037, 38.065884, 24.689724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364258, 38.442299, 24.560692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206867, 0.297127, 0.932159,
		0.973043, 0.161760, 0.164379,
		-0.101945, 0.941036, -0.322580,
		41.333675, 38.724609, 24.463919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674995, 38.411152, 25.238350>,  <41.405037, 38.065884, 24.689724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674995, 38.411152, 25.238350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.445114, 38.672379, 25.041082>,  <41.307186, 38.829113, 24.922722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.445114, 38.672379, 25.041082>,  <41.674995, 38.411152, 25.238350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445114, 38.672379, 25.041082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484688, 0.213933, 0.848122,
		0.659385, 0.726454, 0.193586,
		-0.574707, 0.653067, -0.493168,
		41.272701, 38.868298, 24.893131>
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
