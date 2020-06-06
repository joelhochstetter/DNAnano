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
	<24.444532, 35.121548, 35.133980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406576, 35.188137, 34.741390>,  <24.383802, 35.228092, 34.505836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406576, 35.188137, 34.741390>,  <24.444532, 35.121548, 35.133980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406576, 35.188137, 34.741390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962002, -0.238227, -0.133417,
		-0.256023, -0.956836, -0.137541,
		-0.094892, 0.166472, -0.981470,
		24.378109, 35.238079, 34.446949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806126, 34.549019, 34.724594>,  <24.444532, 35.121548, 35.133980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806126, 34.549019, 34.724594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758104, 34.887135, 34.516338>,  <24.729292, 35.090004, 34.391384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.758104, 34.887135, 34.516338>,  <24.806126, 34.549019, 34.724594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.758104, 34.887135, 34.516338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981214, 0.021255, -0.191750,
		-0.151019, -0.533879, -0.831966,
		-0.120055, 0.845294, -0.520639,
		24.722088, 35.140724, 34.360146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035856, 34.432762, 33.981495>,  <24.806126, 34.549019, 34.724594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035856, 34.432762, 33.981495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084442, 34.824993, 34.043083>,  <25.113594, 35.060333, 34.080036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.084442, 34.824993, 34.043083>,  <25.035856, 34.432762, 33.981495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084442, 34.824993, 34.043083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834717, -0.016970, -0.550418,
		-0.537117, 0.195379, -0.820569,
		0.121465, 0.980581, 0.153971,
		25.120882, 35.119167, 34.089275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.449537, 34.855904, 33.429749>,  <25.035856, 34.432762, 33.981495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.449537, 34.855904, 33.429749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514032, 35.099525, 33.740376>,  <25.552729, 35.245701, 33.926750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.514032, 35.099525, 33.740376>,  <25.449537, 34.855904, 33.429749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514032, 35.099525, 33.740376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851373, 0.312142, -0.421583,
		-0.499167, 0.729120, -0.468206,
		0.161238, 0.609058, 0.776563,
		25.562405, 35.282242, 33.973343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737822, 34.120705, 33.406467>,  <25.449537, 34.855904, 33.429749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737822, 34.120705, 33.406467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991079, 34.025421, 33.701054>,  <26.143034, 33.968250, 33.877808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991079, 34.025421, 33.701054>,  <25.737822, 34.120705, 33.406467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991079, 34.025421, 33.701054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725149, -0.150225, -0.672005,
		0.270713, 0.959526, 0.077622,
		0.633146, -0.238208, 0.736467,
		26.181023, 33.953960, 33.921993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353516, 34.437729, 33.248726>,  <25.737822, 34.120705, 33.406467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353516, 34.437729, 33.248726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462473, 34.133499, 33.484463>,  <26.527847, 33.950962, 33.625904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462473, 34.133499, 33.484463>,  <26.353516, 34.437729, 33.248726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462473, 34.133499, 33.484463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729550, -0.236093, -0.641885,
		0.627342, 0.604801, 0.490568,
		0.272393, -0.760576, 0.589344,
		26.544191, 33.905327, 33.661266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995335, 34.554234, 33.613003>,  <26.353516, 34.437729, 33.248726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995335, 34.554234, 33.613003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947395, 34.169987, 33.512722>,  <26.918633, 33.939438, 33.452553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947395, 34.169987, 33.512722>,  <26.995335, 34.554234, 33.613003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947395, 34.169987, 33.512722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866695, 0.021930, -0.498356,
		0.484227, -0.277007, 0.829934,
		-0.119847, -0.960618, -0.250700,
		26.911442, 33.881802, 33.437511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643356, 34.346916, 33.674686>,  <26.995335, 34.554234, 33.613003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643356, 34.346916, 33.674686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468830, 34.057228, 33.461094>,  <27.364115, 33.883415, 33.332939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468830, 34.057228, 33.461094>,  <27.643356, 34.346916, 33.674686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468830, 34.057228, 33.461094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800933, -0.042150, -0.597269,
		0.410045, -0.688282, 0.598441,
		-0.436314, -0.724218, -0.533984,
		27.337936, 33.839962, 33.300900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173508, 33.851097, 33.594780>,  <27.643356, 34.346916, 33.674686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173508, 33.851097, 33.594780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910795, 33.792366, 33.298920>,  <27.753168, 33.757126, 33.121403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910795, 33.792366, 33.298920>,  <28.173508, 33.851097, 33.594780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910795, 33.792366, 33.298920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753664, -0.095125, -0.650340,
		0.025130, -0.984577, 0.173136,
		-0.656779, -0.146830, -0.739650,
		27.713762, 33.748318, 33.077026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383444, 33.243984, 33.139000>,  <28.173508, 33.851097, 33.594780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383444, 33.243984, 33.139000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156981, 33.466946, 32.896095>,  <28.021103, 33.600723, 32.750351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156981, 33.466946, 32.896095>,  <28.383444, 33.243984, 33.139000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156981, 33.466946, 32.896095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653446, -0.145580, -0.742842,
		-0.502468, -0.817379, -0.281812,
		-0.566157, 0.557403, -0.607262,
		27.987133, 33.634167, 32.713917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475588, 32.972607, 32.601788>,  <28.383444, 33.243984, 33.139000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475588, 32.972607, 32.601788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353136, 33.330868, 32.472736>,  <28.279665, 33.545826, 32.395306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353136, 33.330868, 32.472736>,  <28.475588, 32.972607, 32.601788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353136, 33.330868, 32.472736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784636, 0.045467, -0.618287,
		-0.539101, -0.442425, -0.716680,
		-0.306131, 0.895652, -0.322631,
		28.261297, 33.599564, 32.375946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735418, 33.029148, 31.886105>,  <28.475588, 32.972607, 32.601788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735418, 33.029148, 31.886105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620829, 33.411987, 31.903528>,  <28.552074, 33.641689, 31.913982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620829, 33.411987, 31.903528>,  <28.735418, 33.029148, 31.886105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620829, 33.411987, 31.903528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606549, 0.216365, -0.765039,
		-0.741641, -0.192743, -0.642509,
		-0.286472, 0.957098, 0.043557,
		28.534887, 33.699116, 31.916595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535469, 33.181713, 31.221642>,  <28.735418, 33.029148, 31.886105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535469, 33.181713, 31.221642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631840, 33.516872, 31.417549>,  <28.689661, 33.717968, 31.535093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631840, 33.516872, 31.417549>,  <28.535469, 33.181713, 31.221642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631840, 33.516872, 31.417549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700381, 0.199244, -0.685397,
		-0.671879, 0.508155, -0.538848,
		0.240926, 0.837902, 0.489770,
		28.704117, 33.768242, 31.564480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435316, 33.679897, 30.790796>,  <28.535469, 33.181713, 31.221642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435316, 33.679897, 30.790796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697750, 33.828053, 31.053816>,  <28.855209, 33.916946, 31.211628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697750, 33.828053, 31.053816>,  <28.435316, 33.679897, 30.790796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697750, 33.828053, 31.053816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617336, 0.237787, -0.749902,
		-0.434110, 0.897926, -0.072644,
		0.656083, 0.370386, 0.657548,
		28.894575, 33.939167, 31.251080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637821, 34.333305, 30.529207>,  <28.435316, 33.679897, 30.790796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637821, 34.333305, 30.529207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942137, 34.225479, 30.765356>,  <29.124725, 34.160782, 30.907045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942137, 34.225479, 30.765356>,  <28.637821, 34.333305, 30.529207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942137, 34.225479, 30.765356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648692, 0.287750, -0.704555,
		0.020044, 0.918986, 0.393781,
		0.760787, -0.269565, 0.590371,
		29.170372, 34.144611, 30.942467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033907, 34.806728, 30.333630>,  <28.637821, 34.333305, 30.529207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033907, 34.806728, 30.333630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262594, 34.572475, 30.563471>,  <29.399807, 34.431923, 30.701376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262594, 34.572475, 30.563471>,  <29.033907, 34.806728, 30.333630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262594, 34.572475, 30.563471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696239, -0.024196, -0.717402,
		0.434040, 0.810213, 0.393910,
		0.571717, -0.585636, 0.574604,
		29.434109, 34.396786, 30.735851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742414, 35.005463, 30.279852>,  <29.033907, 34.806728, 30.333630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742414, 35.005463, 30.279852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774515, 34.622551, 30.390976>,  <29.793776, 34.392803, 30.457651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774515, 34.622551, 30.390976>,  <29.742414, 35.005463, 30.279852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774515, 34.622551, 30.390976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730583, -0.133111, -0.669724,
		0.678091, 0.256711, 0.688689,
		0.080254, -0.957278, 0.277810,
		29.798592, 34.335369, 30.474319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494377, 34.892673, 30.315121>,  <29.742414, 35.005463, 30.279852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494377, 34.892673, 30.315121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336128, 34.526493, 30.285660>,  <30.241179, 34.306786, 30.267982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.336128, 34.526493, 30.285660>,  <30.494377, 34.892673, 30.315121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336128, 34.526493, 30.285660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776607, -0.290650, -0.558932,
		0.490270, -0.278325, 0.825936,
		-0.395623, -0.915455, -0.073652,
		30.217442, 34.251858, 30.263563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025579, 34.388168, 30.437031>,  <30.494377, 34.892673, 30.315121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025579, 34.388168, 30.437031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770054, 34.173393, 30.216625>,  <30.616739, 34.044529, 30.084381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770054, 34.173393, 30.216625>,  <31.025579, 34.388168, 30.437031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770054, 34.173393, 30.216625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769181, -0.430135, -0.472594,
		0.016741, -0.725729, 0.687777,
		-0.638812, -0.536936, -0.551016,
		30.578411, 34.012314, 30.051321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314865, 33.770046, 30.463297>,  <31.025579, 34.388168, 30.437031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314865, 33.770046, 30.463297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062473, 33.801243, 30.154549>,  <30.911039, 33.819962, 29.969299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062473, 33.801243, 30.154549>,  <31.314865, 33.770046, 30.463297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062473, 33.801243, 30.154549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711122, -0.339566, -0.615630,
		-0.310113, -0.937344, 0.158799,
		-0.630979, 0.077989, -0.771869,
		30.873180, 33.824642, 29.922987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572306, 33.257713, 30.088327>,  <31.314865, 33.770046, 30.463297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572306, 33.257713, 30.088327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337561, 33.436890, 29.818529>,  <31.196714, 33.544395, 29.656651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337561, 33.436890, 29.818529>,  <31.572306, 33.257713, 30.088327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337561, 33.436890, 29.818529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587419, -0.337779, -0.735421,
		-0.557254, -0.827802, -0.064898,
		-0.586861, 0.447939, -0.674495,
		31.161503, 33.571270, 29.616180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439278, 32.788239, 29.517700>,  <31.572306, 33.257713, 30.088327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439278, 32.788239, 29.517700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376598, 33.137642, 29.333342>,  <31.338991, 33.347286, 29.222727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376598, 33.137642, 29.333342>,  <31.439278, 32.788239, 29.517700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376598, 33.137642, 29.333342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490269, -0.336308, -0.804072,
		-0.857369, -0.351958, -0.375557,
		-0.156697, 0.873511, -0.460895,
		31.329590, 33.399696, 29.195072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104485, 32.702892, 28.826933>,  <31.439278, 32.788239, 29.517700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104485, 32.702892, 28.826933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283875, 33.059063, 28.795931>,  <31.391508, 33.272766, 28.777328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283875, 33.059063, 28.795931>,  <31.104485, 32.702892, 28.826933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283875, 33.059063, 28.795931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377295, -0.267211, -0.886706,
		-0.810259, 0.368422, -0.455791,
		0.448474, 0.890429, -0.077506,
		31.418417, 33.326191, 28.772678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825577, 33.066677, 28.178335>,  <31.104485, 32.702892, 28.826933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825577, 33.066677, 28.178335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188860, 33.200195, 28.279322>,  <31.406830, 33.280304, 28.339912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188860, 33.200195, 28.279322>,  <30.825577, 33.066677, 28.178335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188860, 33.200195, 28.279322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310413, -0.132640, -0.941302,
		-0.280713, 0.933268, -0.224079,
		0.908209, 0.333793, 0.252465,
		31.461323, 33.300335, 28.355061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010471, 33.746613, 27.756538>,  <30.825577, 33.066677, 28.178335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010471, 33.746613, 27.756538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307087, 33.508289, 27.879915>,  <31.485056, 33.365295, 27.953941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307087, 33.508289, 27.879915>,  <31.010471, 33.746613, 27.756538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307087, 33.508289, 27.879915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260002, -0.168610, -0.950773,
		0.618481, 0.785232, 0.029879,
		0.741539, -0.595804, 0.308444,
		31.529549, 33.329548, 27.972448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491718, 33.882923, 27.318085>,  <31.010471, 33.746613, 27.756538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491718, 33.882923, 27.318085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554281, 33.523769, 27.482691>,  <31.591820, 33.308277, 27.581453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554281, 33.523769, 27.482691>,  <31.491718, 33.882923, 27.318085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554281, 33.523769, 27.482691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205954, -0.377834, -0.902676,
		0.965981, 0.225938, 0.125826,
		0.156408, -0.897883, 0.411514,
		31.601204, 33.254406, 27.606144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227703, 33.620510, 27.304157>,  <31.491718, 33.882923, 27.318085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227703, 33.620510, 27.304157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953604, 33.331432, 27.268045>,  <31.789145, 33.157986, 27.246378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953604, 33.331432, 27.268045>,  <32.227703, 33.620510, 27.304157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953604, 33.331432, 27.268045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349890, -0.217943, -0.911086,
		0.638762, -0.655906, 0.402208,
		-0.685245, -0.722695, -0.090281,
		31.748030, 33.114624, 27.240961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477840, 32.929153, 27.159264>,  <32.227703, 33.620510, 27.304157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477840, 32.929153, 27.159264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115009, 32.940197, 26.991241>,  <31.897310, 32.946823, 26.890429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115009, 32.940197, 26.991241>,  <32.477840, 32.929153, 27.159264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115009, 32.940197, 26.991241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411870, -0.148030, -0.899138,
		-0.087000, -0.988597, 0.122906,
		-0.907080, 0.027604, -0.420052,
		31.842886, 32.948479, 26.865225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473423, 32.321617, 26.741537>,  <32.477840, 32.929153, 27.159264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473423, 32.321617, 26.741537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222183, 32.609028, 26.622059>,  <32.071442, 32.781475, 26.550371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222183, 32.609028, 26.622059>,  <32.473423, 32.321617, 26.741537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222183, 32.609028, 26.622059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225774, -0.199069, -0.953623,
		-0.744662, -0.666405, -0.037190,
		-0.628096, 0.718524, -0.298696,
		32.033756, 32.824585, 26.532450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025452, 32.092304, 26.177917>,  <32.473423, 32.321617, 26.741537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025452, 32.092304, 26.177917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057323, 32.489437, 26.142277>,  <32.076447, 32.727715, 26.120892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057323, 32.489437, 26.142277>,  <32.025452, 32.092304, 26.177917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057323, 32.489437, 26.142277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116579, -0.098053, -0.988329,
		-0.989980, 0.068361, -0.123556,
		0.079678, 0.992831, -0.089101,
		32.081226, 32.787285, 26.115547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471403, 32.309250, 25.858210>,  <32.025452, 32.092304, 26.177917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471403, 32.309250, 25.858210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753248, 32.585815, 25.794378>,  <31.922356, 32.751755, 25.756081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753248, 32.585815, 25.794378>,  <31.471403, 32.309250, 25.858210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753248, 32.585815, 25.794378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056452, -0.169552, -0.983903,
		-0.707343, 0.702279, -0.080436,
		0.704613, 0.691416, -0.159577,
		31.964632, 32.793240, 25.746506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085470, 32.829754, 25.493792>,  <31.471403, 32.309250, 25.858210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085470, 32.829754, 25.493792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106203, 32.487076, 25.288507>,  <31.118643, 32.281467, 25.165337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106203, 32.487076, 25.288507>,  <31.085470, 32.829754, 25.493792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106203, 32.487076, 25.288507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038703, -0.515240, 0.856172,
		-0.997906, -0.024515, -0.059864,
		0.051833, -0.856695, -0.513212,
		31.121754, 32.230068, 25.134544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399910, 32.381222, 25.502014>,  <31.085470, 32.829754, 25.493792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399910, 32.381222, 25.502014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733284, 32.161423, 25.478544>,  <30.933308, 32.029545, 25.464462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733284, 32.161423, 25.478544>,  <30.399910, 32.381222, 25.502014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733284, 32.161423, 25.478544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249801, -0.469317, 0.846960,
		-0.492938, -0.691228, -0.528409,
		0.833434, -0.549496, -0.058675,
		30.983315, 31.996574, 25.460941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281544, 31.675776, 25.389357>,  <30.399910, 32.381222, 25.502014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281544, 31.675776, 25.389357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619947, 31.738180, 25.593288>,  <30.822990, 31.775623, 25.715649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619947, 31.738180, 25.593288>,  <30.281544, 31.675776, 25.389357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619947, 31.738180, 25.593288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396650, -0.454818, 0.797376,
		0.356279, -0.876813, -0.322899,
		0.846011, 0.156011, 0.509831,
		30.873751, 31.784983, 25.746237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580639, 31.006342, 25.689962>,  <30.281544, 31.675776, 25.389357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580639, 31.006342, 25.689962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658976, 31.319136, 25.926655>,  <30.705976, 31.506811, 26.068670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658976, 31.319136, 25.926655>,  <30.580639, 31.006342, 25.689962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658976, 31.319136, 25.926655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396500, -0.488749, 0.777118,
		0.896902, -0.386813, 0.214340,
		0.195841, 0.781985, 0.591732,
		30.717728, 31.553732, 26.104174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649532, 30.635954, 26.272928>,  <30.580639, 31.006342, 25.689962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649532, 30.635954, 26.272928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593199, 31.018303, 26.376059>,  <30.559399, 31.247713, 26.437937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593199, 31.018303, 26.376059>,  <30.649532, 30.635954, 26.272928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593199, 31.018303, 26.376059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348755, -0.291626, 0.890687,
		0.926572, 0.035524, 0.374437,
		-0.140836, 0.955873, 0.257824,
		30.550947, 31.305065, 26.453405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007723, 30.771624, 26.903969>,  <30.649532, 30.635954, 26.272928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007723, 30.771624, 26.903969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728104, 31.056906, 26.924627>,  <30.560331, 31.228075, 26.937021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728104, 31.056906, 26.924627>,  <31.007723, 30.771624, 26.903969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728104, 31.056906, 26.924627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164842, -0.231004, 0.958887,
		0.695814, 0.661796, 0.279049,
		-0.699050, 0.713206, 0.051644,
		30.518389, 31.270868, 26.940121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083639, 31.124546, 27.617327>,  <31.007723, 30.771624, 26.903969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083639, 31.124546, 27.617327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716547, 31.200644, 27.477856>,  <30.496292, 31.246302, 27.394173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716547, 31.200644, 27.477856>,  <31.083639, 31.124546, 27.617327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716547, 31.200644, 27.477856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370220, -0.091690, 0.924408,
		0.143891, 0.977446, 0.154578,
		-0.917732, 0.190242, -0.348677,
		30.441227, 31.257715, 27.373253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827036, 31.390934, 28.143785>,  <31.083639, 31.124546, 27.617327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827036, 31.390934, 28.143785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498016, 31.297792, 27.936251>,  <30.300604, 31.241907, 27.811729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498016, 31.297792, 27.936251>,  <30.827036, 31.390934, 28.143785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498016, 31.297792, 27.936251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524865, -0.040385, 0.850227,
		-0.218930, 0.971673, -0.088997,
		-0.822548, -0.232852, -0.518839,
		30.251251, 31.227938, 27.780600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253304, 31.821991, 28.395763>,  <30.827036, 31.390934, 28.143785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253304, 31.821991, 28.395763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048296, 31.536993, 28.204065>,  <29.925291, 31.365993, 28.089046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048296, 31.536993, 28.204065>,  <30.253304, 31.821991, 28.395763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048296, 31.536993, 28.204065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703935, 0.029014, 0.709672,
		-0.491733, 0.701077, -0.516421,
		-0.512518, -0.712496, -0.479245,
		29.894541, 31.323244, 28.060291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597351, 31.994783, 28.333389>,  <30.253304, 31.821991, 28.395763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597351, 31.994783, 28.333389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574570, 31.598715, 28.282295>,  <29.560902, 31.361074, 28.251638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574570, 31.598715, 28.282295>,  <29.597351, 31.994783, 28.333389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574570, 31.598715, 28.282295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593489, -0.069305, 0.801852,
		-0.802824, 0.121477, -0.583709,
		-0.056953, -0.990172, -0.127735,
		29.557484, 31.301662, 28.243975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945644, 31.843422, 28.373550>,  <29.597351, 31.994783, 28.333389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945644, 31.843422, 28.373550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106316, 31.487595, 28.460562>,  <29.202719, 31.274097, 28.512768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106316, 31.487595, 28.460562>,  <28.945644, 31.843422, 28.373550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106316, 31.487595, 28.460562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558264, -0.049562, 0.828182,
		-0.725945, -0.454101, -0.516523,
		0.401679, -0.889570, 0.217529,
		29.226820, 31.220724, 28.525820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393614, 31.358131, 28.565928>,  <28.945644, 31.843422, 28.373550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393614, 31.358131, 28.565928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715921, 31.208941, 28.749937>,  <28.909306, 31.119425, 28.860342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715921, 31.208941, 28.749937>,  <28.393614, 31.358131, 28.565928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715921, 31.208941, 28.749937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532151, -0.115099, 0.838789,
		-0.259904, -0.920673, -0.291225,
		0.805770, -0.372981, 0.460023,
		28.957653, 31.097048, 28.887943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122814, 30.856840, 29.032040>,  <28.393614, 31.358131, 28.565928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122814, 30.856840, 29.032040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496510, 30.908960, 29.164839>,  <28.720726, 30.940233, 29.244518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.496510, 30.908960, 29.164839>,  <28.122814, 30.856840, 29.032040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496510, 30.908960, 29.164839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306095, -0.184833, 0.933886,
		0.183051, -0.974094, -0.132794,
		0.934237, 0.130301, 0.331999,
		28.776781, 30.948050, 29.264439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137594, 30.514891, 29.653397>,  <28.122814, 30.856840, 29.032040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137594, 30.514891, 29.653397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472052, 30.732681, 29.679953>,  <28.672726, 30.863356, 29.695887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472052, 30.732681, 29.679953>,  <28.137594, 30.514891, 29.653397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472052, 30.732681, 29.679953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033536, -0.171556, 0.984603,
		0.547485, -0.821043, -0.161705,
		0.836143, 0.544479, 0.066390,
		28.722895, 30.896025, 29.699869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611263, 30.083721, 29.934595>,  <28.137594, 30.514891, 29.653397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611263, 30.083721, 29.934595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686920, 30.466885, 30.020981>,  <28.732313, 30.696783, 30.072813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686920, 30.466885, 30.020981>,  <28.611263, 30.083721, 29.934595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686920, 30.466885, 30.020981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180718, -0.182221, 0.966508,
		0.965177, -0.221834, 0.138645,
		0.189140, 0.957907, 0.215965,
		28.743662, 30.754257, 30.085770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119841, 30.096384, 30.446856>,  <28.611263, 30.083721, 29.934595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119841, 30.096384, 30.446856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912361, 30.436104, 30.486126>,  <28.787872, 30.639936, 30.509689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.912361, 30.436104, 30.486126>,  <29.119841, 30.096384, 30.446856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912361, 30.436104, 30.486126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113699, -0.182338, 0.976640,
		0.847362, 0.495421, 0.191143,
		-0.518700, 0.849300, 0.098177,
		28.756750, 30.690893, 30.515579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.394112, 30.499985, 31.039185>,  <29.119841, 30.096384, 30.446856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.394112, 30.499985, 31.039185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035559, 30.667368, 30.980688>,  <28.820427, 30.767797, 30.945589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035559, 30.667368, 30.980688>,  <29.394112, 30.499985, 31.039185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035559, 30.667368, 30.980688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174026, -0.028783, 0.984320,
		0.407688, 0.907780, 0.098623,
		-0.896385, 0.418459, -0.146243,
		28.766644, 30.792906, 30.936815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357157, 31.032782, 31.504847>,  <29.394112, 30.499985, 31.039185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357157, 31.032782, 31.504847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966436, 31.006802, 31.423222>,  <28.732004, 30.991215, 31.374247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966436, 31.006802, 31.423222>,  <29.357157, 31.032782, 31.504847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966436, 31.006802, 31.423222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212659, 0.406433, 0.888588,
		0.025226, 0.911369, -0.410816,
		-0.976801, -0.064948, -0.204064,
		28.673397, 30.987318, 31.362003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094131, 31.577377, 31.816385>,  <29.357157, 31.032782, 31.504847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094131, 31.577377, 31.816385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770103, 31.350618, 31.756502>,  <28.575686, 31.214563, 31.720573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770103, 31.350618, 31.756502>,  <29.094131, 31.577377, 31.816385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770103, 31.350618, 31.756502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341422, 0.248499, 0.906465,
		-0.476669, 0.785415, -0.394853,
		-0.810072, -0.566896, -0.149706,
		28.527082, 31.180550, 31.711590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563202, 31.936577, 31.899662>,  <29.094131, 31.577377, 31.816385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563202, 31.936577, 31.899662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408409, 31.573578, 31.965017>,  <28.315533, 31.355780, 32.004230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408409, 31.573578, 31.965017>,  <28.563202, 31.936577, 31.899662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408409, 31.573578, 31.965017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446748, 0.339533, 0.827728,
		-0.806635, 0.247323, -0.536816,
		-0.386983, -0.907496, 0.163388,
		28.292315, 31.301329, 32.014034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896664, 32.082664, 32.174759>,  <28.563202, 31.936577, 31.899662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896664, 32.082664, 32.174759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963753, 31.701689, 32.276527>,  <28.004005, 31.473104, 32.337589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963753, 31.701689, 32.276527>,  <27.896664, 32.082664, 32.174759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963753, 31.701689, 32.276527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339667, 0.186445, 0.921881,
		-0.925470, -0.241039, -0.292241,
		0.167722, -0.952438, 0.254422,
		28.014069, 31.415956, 32.352856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348246, 31.854744, 32.499062>,  <27.896664, 32.082664, 32.174759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348246, 31.854744, 32.499062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613464, 31.586311, 32.631741>,  <27.772596, 31.425253, 32.711349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.613464, 31.586311, 32.631741>,  <27.348246, 31.854744, 32.499062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613464, 31.586311, 32.631741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285236, 0.183185, 0.940789,
		-0.692106, -0.718398, -0.069956,
		0.663046, -0.671080, 0.331696,
		27.812378, 31.384987, 32.731251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955595, 31.571272, 32.934570>,  <27.348246, 31.854744, 32.499062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955595, 31.571272, 32.934570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312494, 31.457289, 33.074680>,  <27.526634, 31.388899, 33.158745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312494, 31.457289, 33.074680>,  <26.955595, 31.571272, 32.934570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312494, 31.457289, 33.074680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316839, 0.157593, 0.935295,
		-0.321720, -0.945496, 0.050327,
		0.892249, -0.284957, 0.350271,
		27.580170, 31.371801, 33.179760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835707, 31.092695, 33.458920>,  <26.955595, 31.571272, 32.934570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835707, 31.092695, 33.458920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200443, 31.229824, 33.549267>,  <27.419285, 31.312101, 33.603474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200443, 31.229824, 33.549267>,  <26.835707, 31.092695, 33.458920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200443, 31.229824, 33.549267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274716, 0.100680, 0.956240,
		0.305078, -0.933990, 0.185983,
		0.911843, 0.342820, 0.225867,
		27.473997, 31.332670, 33.617027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959867, 30.851999, 34.115162>,  <26.835707, 31.092695, 33.458920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959867, 30.851999, 34.115162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236353, 31.140703, 34.100803>,  <27.402245, 31.313925, 34.092190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236353, 31.140703, 34.100803>,  <26.959867, 30.851999, 34.115162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236353, 31.140703, 34.100803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179573, 0.219664, 0.958906,
		0.699984, -0.656362, 0.281443,
		0.691213, 0.721759, -0.035897,
		27.443716, 31.357231, 34.090034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509882, 30.666067, 34.604034>,  <26.959867, 30.851999, 34.115162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509882, 30.666067, 34.604034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513262, 31.060394, 34.536999>,  <27.515289, 31.296991, 34.496777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513262, 31.060394, 34.536999>,  <27.509882, 30.666067, 34.604034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513262, 31.060394, 34.536999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026887, 0.167315, 0.985537,
		0.999603, -0.012833, -0.025092,
		0.008449, 0.985820, -0.167594,
		27.515797, 31.356140, 34.486721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190344, 31.016983, 34.822701>,  <27.509882, 30.666067, 34.604034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190344, 31.016983, 34.822701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878742, 31.267788, 34.823814>,  <27.691782, 31.418272, 34.824482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878742, 31.267788, 34.823814>,  <28.190344, 31.016983, 34.822701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878742, 31.267788, 34.823814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196514, 0.239923, 0.950694,
		0.595430, 0.741141, -0.310118,
		-0.779003, 0.627014, 0.002787,
		27.645041, 31.455893, 34.824650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789108, 31.387690, 34.930588>,  <28.190344, 31.016983, 34.822701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789108, 31.387690, 34.930588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908367, 31.699768, 34.710625>,  <28.979923, 31.887014, 34.578648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908367, 31.699768, 34.710625>,  <28.789108, 31.387690, 34.930588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908367, 31.699768, 34.710625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842306, 0.055972, 0.536086,
		0.449032, -0.623027, -0.640475,
		0.298147, 0.780195, -0.549912,
		28.997810, 31.933826, 34.545650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452175, 31.273602, 34.635780>,  <28.789108, 31.387690, 34.930588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452175, 31.273602, 34.635780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417294, 31.672012, 34.628590>,  <29.396364, 31.911058, 34.624275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417294, 31.672012, 34.628590>,  <29.452175, 31.273602, 34.635780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417294, 31.672012, 34.628590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841203, 0.083291, 0.534265,
		0.533641, 0.031472, -0.845126,
		-0.087205, 0.996028, -0.017973,
		29.391132, 31.970821, 34.623199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935175, 31.598665, 34.218636>,  <29.452175, 31.273602, 34.635780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935175, 31.598665, 34.218636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845074, 31.823458, 34.536991>,  <29.791014, 31.958334, 34.728004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845074, 31.823458, 34.536991>,  <29.935175, 31.598665, 34.218636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845074, 31.823458, 34.536991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963810, 0.008977, 0.266437,
		0.142588, 0.827101, -0.543666,
		-0.225251, 0.561981, 0.795889,
		29.777498, 31.992052, 34.775757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478811, 32.176689, 34.278477>,  <29.935175, 31.598665, 34.218636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478811, 32.176689, 34.278477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346222, 32.164467, 34.655666>,  <30.266668, 32.157131, 34.881981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346222, 32.164467, 34.655666>,  <30.478811, 32.176689, 34.278477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346222, 32.164467, 34.655666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908649, 0.258669, 0.327791,
		-0.253934, 0.965483, -0.057973,
		-0.331472, -0.030560, 0.942970,
		30.246780, 32.155300, 34.938557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674473, 32.791275, 34.729706>,  <30.478811, 32.176689, 34.278477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674473, 32.791275, 34.729706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637402, 32.490135, 34.990360>,  <30.615158, 32.309452, 35.146755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637402, 32.490135, 34.990360>,  <30.674473, 32.791275, 34.729706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637402, 32.490135, 34.990360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762667, 0.367064, 0.532543,
		-0.640117, 0.546339, 0.540152,
		-0.092679, -0.752846, 0.651639,
		30.609598, 32.264282, 35.185852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476288, 33.133396, 35.369034>,  <30.674473, 32.791275, 34.729706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476288, 33.133396, 35.369034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624813, 32.767529, 35.432922>,  <30.713928, 32.548008, 35.471256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624813, 32.767529, 35.432922>,  <30.476288, 33.133396, 35.369034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624813, 32.767529, 35.432922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593949, 0.366201, 0.716325,
		-0.713688, -0.171117, 0.679241,
		0.371314, -0.914667, 0.159719,
		30.736208, 32.493130, 35.480839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324554, 32.907616, 36.005909>,  <30.476288, 33.133396, 35.369034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324554, 32.907616, 36.005909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660505, 32.714432, 35.906822>,  <30.862076, 32.598522, 35.847370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660505, 32.714432, 35.906822>,  <30.324554, 32.907616, 36.005909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660505, 32.714432, 35.906822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473398, 0.428524, 0.769585,
		-0.265527, -0.763622, 0.588538,
		0.839875, -0.482959, -0.247712,
		30.912468, 32.569546, 35.832508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495325, 32.608795, 36.592983>,  <30.324554, 32.907616, 36.005909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495325, 32.608795, 36.592983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829023, 32.634701, 36.373951>,  <31.029242, 32.650242, 36.242531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.829023, 32.634701, 36.373951>,  <30.495325, 32.608795, 36.592983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829023, 32.634701, 36.373951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501557, 0.323448, 0.802385,
		0.229076, -0.944027, 0.237354,
		0.834245, 0.064760, -0.547578,
		31.079296, 32.654129, 36.209679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066427, 32.248684, 36.947159>,  <30.495325, 32.608795, 36.592983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066427, 32.248684, 36.947159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289564, 32.442909, 36.677925>,  <31.423447, 32.559444, 36.516384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289564, 32.442909, 36.677925>,  <31.066427, 32.248684, 36.947159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289564, 32.442909, 36.677925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631398, 0.278062, 0.723891,
		0.538653, -0.828800, -0.151469,
		0.557843, 0.485564, -0.673081,
		31.456917, 32.588577, 36.476002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814592, 31.977041, 37.069084>,  <31.066427, 32.248684, 36.947159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814592, 31.977041, 37.069084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810625, 32.332184, 36.885078>,  <31.808245, 32.545269, 36.774673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810625, 32.332184, 36.885078>,  <31.814592, 31.977041, 37.069084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810625, 32.332184, 36.885078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566121, 0.384195, 0.729316,
		0.824263, -0.253192, -0.506444,
		-0.009916, 0.887856, -0.460014,
		31.807650, 32.598541, 36.747074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547325, 32.146282, 36.859535>,  <31.814592, 31.977041, 37.069084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547325, 32.146282, 36.859535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349174, 32.492611, 36.887680>,  <32.230286, 32.700409, 36.904568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349174, 32.492611, 36.887680>,  <32.547325, 32.146282, 36.859535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349174, 32.492611, 36.887680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697278, 0.348012, 0.626650,
		0.518081, 0.359491, -0.776117,
		-0.495373, 0.865825, 0.070366,
		32.200562, 32.752357, 36.908791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989300, 32.676308, 36.957542>,  <32.547325, 32.146282, 36.859535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989300, 32.676308, 36.957542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656059, 32.867165, 37.069454>,  <32.456116, 32.981678, 37.136600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656059, 32.867165, 37.069454>,  <32.989300, 32.676308, 36.957542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656059, 32.867165, 37.069454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474273, 0.355962, 0.805205,
		0.284604, 0.803511, -0.522848,
		-0.833106, 0.477138, 0.279776,
		32.406128, 33.010307, 37.153385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162590, 33.337051, 37.226250>,  <32.989300, 32.676308, 36.957542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162590, 33.337051, 37.226250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809261, 33.282394, 37.405613>,  <32.597263, 33.249599, 37.513229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809261, 33.282394, 37.405613>,  <33.162590, 33.337051, 37.226250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809261, 33.282394, 37.405613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424352, 0.173331, 0.888753,
		-0.199167, 0.975338, -0.095121,
		-0.883322, -0.136645, 0.448409,
		32.544266, 33.241402, 37.540134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029987, 33.999119, 37.651886>,  <33.162590, 33.337051, 37.226250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029987, 33.999119, 37.651886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790421, 33.716190, 37.802082>,  <32.646679, 33.546432, 37.892200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790421, 33.716190, 37.802082>,  <33.029987, 33.999119, 37.651886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790421, 33.716190, 37.802082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357651, 0.183275, 0.915694,
		-0.716508, 0.682721, 0.143207,
		-0.598918, -0.707321, 0.375493,
		32.610744, 33.503994, 37.914730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723999, 34.307449, 38.191650>,  <33.029987, 33.999119, 37.651886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723999, 34.307449, 38.191650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680576, 33.919857, 38.280464>,  <32.654522, 33.687302, 38.333752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680576, 33.919857, 38.280464>,  <32.723999, 34.307449, 38.191650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680576, 33.919857, 38.280464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209072, 0.196104, 0.958036,
		-0.971856, 0.150426, 0.181296,
		-0.108560, -0.968976, 0.222035,
		32.648006, 33.629166, 38.347076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425838, 34.293194, 38.779480>,  <32.723999, 34.307449, 38.191650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425838, 34.293194, 38.779480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571587, 33.920918, 38.766502>,  <32.659035, 33.697552, 38.758717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571587, 33.920918, 38.766502>,  <32.425838, 34.293194, 38.779480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571587, 33.920918, 38.766502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052907, -0.014095, 0.998500,
		-0.929751, -0.365538, 0.044104,
		0.364368, -0.930690, -0.032444,
		32.680897, 33.641712, 38.756767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047592, 33.815533, 39.315338>,  <32.425838, 34.293194, 38.779480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047592, 33.815533, 39.315338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389126, 33.616997, 39.252567>,  <32.594044, 33.497875, 39.214905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389126, 33.616997, 39.252567>,  <32.047592, 33.815533, 39.315338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389126, 33.616997, 39.252567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113082, -0.117402, 0.986625,
		-0.508122, -0.860155, -0.044114,
		0.853830, -0.496337, -0.156922,
		32.645275, 33.468094, 39.205490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917974, 33.287586, 39.743725>,  <32.047592, 33.815533, 39.315338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917974, 33.287586, 39.743725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310875, 33.316551, 39.674519>,  <32.546616, 33.333931, 39.632996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310875, 33.316551, 39.674519>,  <31.917974, 33.287586, 39.743725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310875, 33.316551, 39.674519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186794, -0.294333, 0.937271,
		0.016941, -0.952956, -0.302635,
		0.982253, 0.072409, -0.173020,
		32.605553, 33.338272, 39.622612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182613, 32.783035, 40.155827>,  <31.917974, 33.287586, 39.743725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182613, 32.783035, 40.155827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530323, 32.967270, 40.084030>,  <32.738949, 33.077812, 40.040955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530323, 32.967270, 40.084030>,  <32.182613, 32.783035, 40.155827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530323, 32.967270, 40.084030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277388, -0.153957, 0.948342,
		0.409159, -0.874161, -0.261592,
		0.869278, 0.460586, -0.179489,
		32.791107, 33.105446, 40.030182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797302, 32.400757, 40.243572>,  <32.182613, 32.783035, 40.155827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797302, 32.400757, 40.243572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933403, 32.774452, 40.286316>,  <33.015064, 32.998669, 40.311962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933403, 32.774452, 40.286316>,  <32.797302, 32.400757, 40.243572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933403, 32.774452, 40.286316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370102, -0.237524, 0.898113,
		0.864437, -0.266037, -0.426583,
		0.340255, 0.934241, 0.106864,
		33.035480, 33.054726, 40.318375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340508, 32.317234, 40.572926>,  <32.797302, 32.400757, 40.243572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340508, 32.317234, 40.572926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300495, 32.709961, 40.637466>,  <33.276485, 32.945595, 40.676193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300495, 32.709961, 40.637466>,  <33.340508, 32.317234, 40.572926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300495, 32.709961, 40.637466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295302, -0.125566, 0.947117,
		0.950153, 0.142392, -0.277370,
		-0.100033, 0.981814, 0.161356,
		33.270485, 33.004505, 40.685875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867279, 32.661713, 40.891323>,  <33.340508, 32.317234, 40.572926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867279, 32.661713, 40.891323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565380, 32.910591, 40.974487>,  <33.384239, 33.059917, 41.024387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.565380, 32.910591, 40.974487>,  <33.867279, 32.661713, 40.891323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565380, 32.910591, 40.974487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315114, 0.065877, 0.946765,
		0.575372, 0.780088, -0.245782,
		-0.754751, 0.622192, 0.207913,
		33.338955, 33.097248, 41.036861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167076, 33.047199, 41.316734>,  <33.867279, 32.661713, 40.891323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167076, 33.047199, 41.316734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782562, 33.121727, 41.397949>,  <33.551853, 33.166443, 41.446678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782562, 33.121727, 41.397949>,  <34.167076, 33.047199, 41.316734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782562, 33.121727, 41.397949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226464, 0.114347, 0.967284,
		0.157008, 0.975812, -0.152115,
		-0.961282, 0.186320, 0.203033,
		33.494179, 33.177624, 41.458858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098759, 33.687668, 41.693756>,  <34.167076, 33.047199, 41.316734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098759, 33.687668, 41.693756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797363, 33.446655, 41.798992>,  <33.616528, 33.302048, 41.862133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797363, 33.446655, 41.798992>,  <34.098759, 33.687668, 41.693756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797363, 33.446655, 41.798992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296476, 0.045783, 0.953942,
		-0.586823, 0.796783, 0.144138,
		-0.753486, -0.602528, 0.263094,
		33.571316, 33.265896, 41.877922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987587, 33.856529, 42.304848>,  <34.098759, 33.687668, 41.693756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987587, 33.856529, 42.304848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754692, 33.531322, 42.306267>,  <33.614956, 33.336201, 42.307117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754692, 33.531322, 42.306267>,  <33.987587, 33.856529, 42.304848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754692, 33.531322, 42.306267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126637, -0.086374, 0.988181,
		-0.803099, 0.575802, 0.153248,
		-0.582233, -0.813014, 0.003551,
		33.580021, 33.287418, 42.307331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539227, 33.899178, 43.003418>,  <33.987587, 33.856529, 42.304848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539227, 33.899178, 43.003418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537315, 33.521679, 42.871159>,  <33.536167, 33.295181, 42.791805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537315, 33.521679, 42.871159>,  <33.539227, 33.899178, 43.003418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537315, 33.521679, 42.871159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078059, -0.329287, 0.940998,
		-0.996937, 0.030307, -0.072094,
		-0.004779, -0.943744, -0.330644,
		33.535881, 33.238556, 42.771965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021988, 33.548325, 43.363865>,  <33.539227, 33.899178, 43.003418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021988, 33.548325, 43.363865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229778, 33.237602, 43.221478>,  <33.354454, 33.051170, 43.136044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229778, 33.237602, 43.221478>,  <33.021988, 33.548325, 43.363865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229778, 33.237602, 43.221478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140794, -0.488713, 0.861009,
		-0.842805, -0.397156, -0.363244,
		0.519477, -0.776806, -0.355973,
		33.385620, 33.004562, 43.114685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637920, 32.897732, 43.473892>,  <33.021988, 33.548325, 43.363865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637920, 32.897732, 43.473892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030956, 32.826618, 43.452332>,  <33.266777, 32.783951, 43.439396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030956, 32.826618, 43.452332>,  <32.637920, 32.897732, 43.473892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030956, 32.826618, 43.452332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021257, -0.395836, 0.918075,
		-0.184550, -0.900948, -0.392725,
		0.982593, -0.177779, -0.053900,
		33.325733, 32.773285, 43.436161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641331, 32.365795, 43.883736>,  <32.637920, 32.897732, 43.473892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641331, 32.365795, 43.883736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026741, 32.467197, 43.849438>,  <33.257988, 32.528038, 43.828857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026741, 32.467197, 43.849438>,  <32.641331, 32.365795, 43.883736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026741, 32.467197, 43.849438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163435, -0.303702, 0.938645,
		0.211912, -0.918422, -0.334057,
		0.963526, 0.253506, -0.085744,
		33.315800, 32.543251, 43.823715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955997, 31.768097, 44.082344>,  <32.641331, 32.365795, 43.883736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955997, 31.768097, 44.082344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233780, 32.052822, 44.124382>,  <33.400452, 32.223660, 44.149605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233780, 32.052822, 44.124382>,  <32.955997, 31.768097, 44.082344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233780, 32.052822, 44.124382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138333, -0.275410, 0.951322,
		0.706109, -0.646118, -0.289729,
		0.694460, 0.711815, 0.105090,
		33.442120, 32.266365, 44.155910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504608, 31.419836, 44.364254>,  <32.955997, 31.768097, 44.082344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504608, 31.419836, 44.364254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551662, 31.808329, 44.447075>,  <33.579895, 32.041424, 44.496769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551662, 31.808329, 44.447075>,  <33.504608, 31.419836, 44.364254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551662, 31.808329, 44.447075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159175, -0.224245, 0.961445,
		0.980217, -0.080142, -0.180975,
		0.117635, 0.971232, 0.207052,
		33.586952, 32.099697, 44.509190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123112, 31.337509, 44.789387>,  <33.504608, 31.419836, 44.364254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123112, 31.337509, 44.789387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912693, 31.668102, 44.869591>,  <33.786442, 31.866457, 44.917713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912693, 31.668102, 44.869591>,  <34.123112, 31.337509, 44.789387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912693, 31.668102, 44.869591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088562, -0.181255, 0.979441,
		0.845833, 0.532988, 0.022154,
		-0.526045, 0.826481, 0.200513,
		33.754879, 31.916046, 44.929745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299778, 31.509895, 45.485889>,  <34.123112, 31.337509, 44.789387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299778, 31.509895, 45.485889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001003, 31.775848, 45.484287>,  <33.821739, 31.935421, 45.483326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001003, 31.775848, 45.484287>,  <34.299778, 31.509895, 45.485889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001003, 31.775848, 45.484287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130242, -0.140395, 0.981492,
		0.652016, 0.733634, 0.191462,
		-0.746936, 0.664884, -0.004010,
		33.776924, 31.975313, 45.483086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364704, 31.931231, 46.117985>,  <34.299778, 31.509895, 45.485889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364704, 31.931231, 46.117985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988148, 31.994249, 45.998684>,  <33.762215, 32.032063, 45.927101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988148, 31.994249, 45.998684>,  <34.364704, 31.931231, 46.117985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988148, 31.994249, 45.998684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300172, 0.012054, 0.953809,
		0.153865, 0.987438, 0.035944,
		-0.941394, 0.157548, -0.298256,
		33.705730, 32.041515, 45.909206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019367, 32.470551, 46.500843>,  <34.364704, 31.931231, 46.117985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019367, 32.470551, 46.500843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744984, 32.203644, 46.384762>,  <33.580353, 32.043499, 46.315113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744984, 32.203644, 46.384762>,  <34.019367, 32.470551, 46.500843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744984, 32.203644, 46.384762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270625, -0.136265, 0.952992,
		-0.675440, 0.732252, -0.087105,
		-0.685961, -0.667262, -0.290205,
		33.539196, 32.003464, 46.297699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483456, 32.728493, 46.947052>,  <34.019367, 32.470551, 46.500843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483456, 32.728493, 46.947052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333431, 32.383106, 46.812138>,  <33.243416, 32.175873, 46.731190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333431, 32.383106, 46.812138>,  <33.483456, 32.728493, 46.947052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333431, 32.383106, 46.812138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333072, -0.214022, 0.918291,
		-0.865097, 0.456753, -0.207325,
		-0.375060, -0.863465, -0.337281,
		33.220913, 32.124065, 46.710953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870464, 32.594345, 47.304707>,  <33.483456, 32.728493, 46.947052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870464, 32.594345, 47.304707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973011, 32.231995, 47.169846>,  <33.034538, 32.014584, 47.088928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973011, 32.231995, 47.169846>,  <32.870464, 32.594345, 47.304707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973011, 32.231995, 47.169846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320447, -0.408732, 0.854548,
		-0.911916, -0.111037, -0.395069,
		0.256364, -0.905875, -0.337148,
		33.049919, 31.960232, 47.068703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255611, 32.145962, 47.504482>,  <32.870464, 32.594345, 47.304707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255611, 32.145962, 47.504482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590965, 31.932074, 47.462193>,  <32.792179, 31.803741, 47.436817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590965, 31.932074, 47.462193>,  <32.255611, 32.145962, 47.504482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590965, 31.932074, 47.462193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080816, -0.313769, 0.946054,
		-0.539049, -0.784616, -0.306274,
		0.838388, -0.534721, -0.105727,
		32.842484, 31.771658, 47.430473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053596, 31.487440, 47.777218>,  <32.255611, 32.145962, 47.504482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053596, 31.487440, 47.777218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453411, 31.489832, 47.789127>,  <32.693302, 31.491266, 47.796272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453411, 31.489832, 47.789127>,  <32.053596, 31.487440, 47.777218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453411, 31.489832, 47.789127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029106, -0.091555, 0.995375,
		0.008682, -0.995782, -0.091338,
		0.999539, 0.005983, 0.029778,
		32.753273, 31.491625, 47.798061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234703, 30.938471, 48.299206>,  <32.053596, 31.487440, 47.777218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234703, 30.938471, 48.299206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562027, 31.167208, 48.275990>,  <32.758419, 31.304449, 48.262062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562027, 31.167208, 48.275990>,  <32.234703, 30.938471, 48.299206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562027, 31.167208, 48.275990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138200, -0.097737, 0.985570,
		0.557919, -0.814520, -0.159007,
		0.818308, 0.571843, -0.058037,
		32.807518, 31.338760, 48.258579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653801, 30.520063, 48.585369>,  <32.234703, 30.938471, 48.299206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653801, 30.520063, 48.585369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769318, 30.902834, 48.597340>,  <32.838627, 31.132496, 48.604523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769318, 30.902834, 48.597340>,  <32.653801, 30.520063, 48.585369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769318, 30.902834, 48.597340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013598, -0.027159, 0.999539,
		0.957295, -0.289065, 0.005169,
		0.288791, 0.956924, 0.029930,
		32.855953, 31.189911, 48.606319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217236, 30.439291, 48.924931>,  <32.653801, 30.520063, 48.585369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217236, 30.439291, 48.924931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098038, 30.820623, 48.944359>,  <33.026520, 31.049423, 48.956017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098038, 30.820623, 48.944359>,  <33.217236, 30.439291, 48.924931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098038, 30.820623, 48.944359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130707, -0.091150, 0.987222,
		0.945577, 0.287837, 0.151770,
		-0.297992, 0.953332, 0.048567,
		33.008640, 31.106623, 48.958927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434624, 30.513144, 49.572426>,  <33.217236, 30.439291, 48.924931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434624, 30.513144, 49.572426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226562, 30.853203, 49.539700>,  <33.101727, 31.057238, 49.520065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226562, 30.853203, 49.539700>,  <33.434624, 30.513144, 49.572426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226562, 30.853203, 49.539700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184680, -0.018427, 0.982626,
		0.833869, 0.526222, 0.166590,
		-0.520149, 0.850148, -0.081817,
		33.070518, 31.108248, 49.515156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672478, 31.119980, 49.899220>,  <33.434624, 30.513144, 49.572426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672478, 31.119980, 49.899220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277164, 31.178802, 49.882889>,  <33.039974, 31.214096, 49.873089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277164, 31.178802, 49.882889>,  <33.672478, 31.119980, 49.899220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277164, 31.178802, 49.882889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034798, 0.043349, 0.998454,
		0.148600, 0.988178, -0.037723,
		-0.988285, 0.147057, -0.040828,
		32.980679, 31.222919, 49.870640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624973, 31.629780, 50.430347>,  <33.672478, 31.119980, 49.899220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624973, 31.629780, 50.430347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260372, 31.478626, 50.365402>,  <33.041611, 31.387934, 50.326435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260372, 31.478626, 50.365402>,  <33.624973, 31.629780, 50.430347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260372, 31.478626, 50.365402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174461, -0.002249, 0.984661,
		-0.372455, 0.925849, -0.063877,
		-0.911505, -0.377886, -0.162362,
		32.986919, 31.365261, 50.316692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093609, 31.964003, 50.809307>,  <33.624973, 31.629780, 50.430347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093609, 31.964003, 50.809307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925480, 31.611393, 50.723289>,  <32.824600, 31.399828, 50.671680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925480, 31.611393, 50.723289>,  <33.093609, 31.964003, 50.809307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925480, 31.611393, 50.723289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118971, -0.181406, 0.976185,
		-0.899539, 0.435901, -0.028626,
		-0.420327, -0.881523, -0.215041,
		32.799381, 31.346935, 50.658775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427509, 31.959457, 51.166206>,  <33.093609, 31.964003, 50.809307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427509, 31.959457, 51.166206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583714, 31.597830, 51.096741>,  <32.677437, 31.380854, 51.055061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583714, 31.597830, 51.096741>,  <32.427509, 31.959457, 51.166206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583714, 31.597830, 51.096741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018774, -0.180786, 0.983343,
		-0.920406, -0.387268, -0.053626,
		0.390512, -0.904068, -0.173667,
		32.700867, 31.326609, 51.044640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043125, 31.430933, 51.559200>,  <32.427509, 31.959457, 51.166206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043125, 31.430933, 51.559200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406609, 31.274300, 51.501347>,  <32.624699, 31.180321, 51.466637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406609, 31.274300, 51.501347>,  <32.043125, 31.430933, 51.559200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406609, 31.274300, 51.501347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065316, -0.208832, 0.975768,
		-0.412297, -0.896132, -0.164191,
		0.908705, -0.391581, -0.144633,
		32.679218, 31.156826, 51.457958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096596, 30.814123, 51.970249>,  <32.043125, 31.430933, 51.559200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096596, 30.814123, 51.970249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459499, 30.962532, 51.891022>,  <32.677242, 31.051577, 51.843487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459499, 30.962532, 51.891022>,  <32.096596, 30.814123, 51.970249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459499, 30.962532, 51.891022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304607, -0.254934, 0.917727,
		0.290004, -0.892945, -0.344306,
		0.907256, 0.371022, -0.198065,
		32.731674, 31.073839, 51.831604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610962, 30.339678, 52.156174>,  <32.096596, 30.814123, 51.970249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610962, 30.339678, 52.156174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798237, 30.692965, 52.145382>,  <32.910603, 30.904938, 52.138905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798237, 30.692965, 52.145382>,  <32.610962, 30.339678, 52.156174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798237, 30.692965, 52.145382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392254, -0.180374, 0.901999,
		0.791796, -0.432885, -0.430894,
		0.468184, 0.883219, -0.026982,
		32.938690, 30.957930, 52.137287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387760, 30.340759, 52.425117>,  <32.610962, 30.339678, 52.156174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387760, 30.340759, 52.425117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216545, 30.697300, 52.484818>,  <33.113815, 30.911224, 52.520638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216545, 30.697300, 52.484818>,  <33.387760, 30.340759, 52.425117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216545, 30.697300, 52.484818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198493, -0.068389, 0.977713,
		0.881695, 0.448121, -0.147655,
		-0.428036, 0.891353, 0.149247,
		33.088135, 30.964706, 52.529591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810593, 30.896605, 52.704548>,  <33.387760, 30.340759, 52.425117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810593, 30.896605, 52.704548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439133, 30.977697, 52.828808>,  <33.216255, 31.026352, 52.903362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439133, 30.977697, 52.828808>,  <33.810593, 30.896605, 52.704548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439133, 30.977697, 52.828808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292265, -0.115837, 0.949296,
		0.228436, 0.972359, 0.048322,
		-0.928654, 0.202730, 0.310648,
		33.160538, 31.038517, 52.922001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985348, 30.154064, 52.908642>,  <33.810593, 30.896605, 52.704548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985348, 30.154064, 52.908642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114094, 30.465612, 53.123959>,  <34.191341, 30.652542, 53.253151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114094, 30.465612, 53.123959>,  <33.985348, 30.154064, 52.908642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114094, 30.465612, 53.123959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940498, 0.328436, 0.087141,
		-0.108925, -0.534314, 0.838238,
		0.321868, 0.778869, 0.538296,
		34.210655, 30.699274, 53.285446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746498, 29.448389, 52.658016>,  <33.985348, 30.154064, 52.908642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746498, 29.448389, 52.658016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542458, 29.517172, 52.320915>,  <33.420033, 29.558441, 52.118656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542458, 29.517172, 52.320915>,  <33.746498, 29.448389, 52.658016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542458, 29.517172, 52.320915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850399, -0.046020, -0.524122,
		-0.128910, -0.984029, -0.122758,
		-0.510102, 0.171958, -0.842749,
		33.389427, 29.568760, 52.068089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613018, 29.125198, 51.987724>,  <33.746498, 29.448389, 52.658016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613018, 29.125198, 51.987724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469570, 28.761517, 51.903114>,  <33.383503, 28.543308, 51.852348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469570, 28.761517, 51.903114>,  <33.613018, 29.125198, 51.987724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469570, 28.761517, 51.903114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262022, 0.315534, -0.912021,
		0.895956, -0.271641, -0.351387,
		-0.358617, -0.909203, -0.211529,
		33.361984, 28.488756, 51.839657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832554, 28.888813, 51.303436>,  <33.613018, 29.125198, 51.987724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832554, 28.888813, 51.303436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483543, 28.711941, 51.386547>,  <33.274136, 28.605818, 51.436413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483543, 28.711941, 51.386547>,  <33.832554, 28.888813, 51.303436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483543, 28.711941, 51.386547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339360, 0.242587, -0.908838,
		0.351464, -0.863499, -0.361722,
		-0.872530, -0.442178, 0.207777,
		33.221786, 28.579287, 51.448879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706169, 28.160191, 50.963337>,  <33.832554, 28.888813, 51.303436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706169, 28.160191, 50.963337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375584, 28.384111, 50.987286>,  <33.177235, 28.518463, 51.001656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375584, 28.384111, 50.987286>,  <33.706169, 28.160191, 50.963337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375584, 28.384111, 50.987286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116549, -0.066086, -0.990984,
		-0.550797, -0.825988, 0.119861,
		-0.826462, 0.559801, 0.059868,
		33.127644, 28.552052, 51.005245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170952, 27.802700, 50.822754>,  <33.706169, 28.160191, 50.963337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170952, 27.802700, 50.822754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116856, 28.183287, 50.712177>,  <33.084396, 28.411638, 50.645832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116856, 28.183287, 50.712177>,  <33.170952, 27.802700, 50.822754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116856, 28.183287, 50.712177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313850, -0.305774, -0.898888,
		-0.939791, -0.034807, 0.339972,
		-0.135242, 0.951468, -0.276440,
		33.076283, 28.468727, 50.629246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555805, 27.802879, 50.475433>,  <33.170952, 27.802700, 50.822754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555805, 27.802879, 50.475433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761040, 28.121546, 50.347641>,  <32.884182, 28.312746, 50.270966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761040, 28.121546, 50.347641>,  <32.555805, 27.802879, 50.475433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761040, 28.121546, 50.347641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191824, -0.256366, -0.947354,
		-0.836627, 0.547359, 0.021281,
		0.513087, 0.796665, -0.319479,
		32.914967, 28.360546, 50.251797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207222, 28.082363, 49.958908>,  <32.555805, 27.802879, 50.475433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207222, 28.082363, 49.958908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574013, 28.226854, 49.891190>,  <32.794086, 28.313549, 49.850559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574013, 28.226854, 49.891190>,  <32.207222, 28.082363, 49.958908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574013, 28.226854, 49.891190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130288, -0.129940, -0.982924,
		-0.377059, 0.923379, -0.072089,
		0.916980, 0.361228, -0.169300,
		32.849106, 28.335222, 49.840401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196186, 28.305548, 49.162781>,  <32.207222, 28.082363, 49.958908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196186, 28.305548, 49.162781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572769, 28.369579, 49.281464>,  <32.798717, 28.407997, 49.352673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.572769, 28.369579, 49.281464>,  <32.196186, 28.305548, 49.162781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572769, 28.369579, 49.281464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308951, -0.057401, -0.949344,
		-0.134938, 0.985434, -0.103497,
		0.941457, 0.160078, 0.296705,
		32.855206, 28.417603, 49.370476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514629, 28.872469, 48.738228>,  <32.196186, 28.305548, 49.162781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514629, 28.872469, 48.738228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796074, 28.633335, 48.891861>,  <32.964943, 28.489855, 48.984039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796074, 28.633335, 48.891861>,  <32.514629, 28.872469, 48.738228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796074, 28.633335, 48.891861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369854, -0.153412, -0.916336,
		0.606740, 0.786803, 0.113168,
		0.703615, -0.597834, 0.384084,
		33.007160, 28.453985, 49.007088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175598, 29.146103, 48.572628>,  <32.514629, 28.872469, 48.738228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175598, 29.146103, 48.572628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220245, 28.753084, 48.632149>,  <33.247032, 28.517273, 48.667862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220245, 28.753084, 48.632149>,  <33.175598, 29.146103, 48.572628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220245, 28.753084, 48.632149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371957, -0.097543, -0.923111,
		0.921515, 0.158381, 0.354578,
		0.111617, -0.982548, 0.148798,
		33.253731, 28.458321, 48.676788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756851, 29.001568, 48.362747>,  <33.175598, 29.146103, 48.572628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756851, 29.001568, 48.362747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603218, 28.632248, 48.362717>,  <33.511036, 28.410656, 48.362698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603218, 28.632248, 48.362717>,  <33.756851, 29.001568, 48.362747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603218, 28.632248, 48.362717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440833, -0.183313, -0.878671,
		0.811261, -0.337517, 0.477428,
		-0.384085, -0.923298, -0.000074,
		33.487991, 28.355259, 48.362694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321968, 28.464144, 48.031288>,  <33.756851, 29.001568, 48.362747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321968, 28.464144, 48.031288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955261, 28.305279, 48.014366>,  <33.735237, 28.209959, 48.004215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955261, 28.305279, 48.014366>,  <34.321968, 28.464144, 48.031288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955261, 28.305279, 48.014366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152819, -0.250940, -0.955864,
		0.369020, -0.882774, 0.290749,
		-0.916772, -0.397165, -0.042303,
		33.680229, 28.186129, 48.001675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486698, 27.913492, 47.760422>,  <34.321968, 28.464144, 48.031288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486698, 27.913492, 47.760422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093975, 27.951286, 47.694538>,  <33.858341, 27.973963, 47.655006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093975, 27.951286, 47.694538>,  <34.486698, 27.913492, 47.760422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093975, 27.951286, 47.694538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137336, -0.245678, -0.959573,
		-0.131130, -0.964736, 0.228232,
		-0.981807, 0.094484, -0.164709,
		33.799435, 27.979631, 47.645126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427608, 27.354530, 47.306129>,  <34.486698, 27.913492, 47.760422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427608, 27.354530, 47.306129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102310, 27.585232, 47.275169>,  <33.907131, 27.723652, 47.256592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102310, 27.585232, 47.275169>,  <34.427608, 27.354530, 47.306129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102310, 27.585232, 47.275169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024997, -0.098266, -0.994846,
		-0.581387, -0.810987, 0.065498,
		-0.813243, 0.576753, -0.077403,
		33.858337, 27.758257, 47.251949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995491, 26.985596, 46.867939>,  <34.427608, 27.354530, 47.306129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995491, 26.985596, 46.867939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858242, 27.360996, 46.852516>,  <33.775894, 27.586237, 46.843262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858242, 27.360996, 46.852516>,  <33.995491, 26.985596, 46.867939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858242, 27.360996, 46.852516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078244, -0.069468, -0.994511,
		-0.936026, -0.338221, 0.097268,
		-0.343122, 0.938499, -0.038560,
		33.755306, 27.642546, 46.840950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338280, 27.026281, 46.395206>,  <33.995491, 26.985596, 46.867939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338280, 27.026281, 46.395206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488583, 27.396912, 46.388748>,  <33.578766, 27.619289, 46.384872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488583, 27.396912, 46.388748>,  <33.338280, 27.026281, 46.395206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488583, 27.396912, 46.388748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362355, 0.130868, -0.922807,
		-0.852939, 0.352602, 0.384924,
		0.375757, 0.926577, -0.016144,
		33.601311, 27.674885, 46.383904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014149, 27.102970, 45.797867>,  <33.338280, 27.026281, 46.395206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014149, 27.102970, 45.797867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250015, 27.417900, 45.869877>,  <33.391537, 27.606859, 45.913082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250015, 27.417900, 45.869877>,  <33.014149, 27.102970, 45.797867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250015, 27.417900, 45.869877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188626, 0.082484, -0.978579,
		-0.785311, 0.610993, -0.099872,
		0.589667, 0.787327, 0.180025,
		33.426914, 27.654099, 45.923885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760956, 27.677038, 45.374790>,  <33.014149, 27.102970, 45.797867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760956, 27.677038, 45.374790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147411, 27.731955, 45.462170>,  <33.379284, 27.764904, 45.514599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147411, 27.731955, 45.462170>,  <32.760956, 27.677038, 45.374790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147411, 27.731955, 45.462170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212606, 0.056080, -0.975527,
		-0.146184, 0.988942, 0.024992,
		0.966141, 0.137293, 0.218453,
		33.437252, 27.773142, 45.527706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910240, 28.189665, 44.998173>,  <32.760956, 27.677038, 45.374790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910240, 28.189665, 44.998173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257622, 28.009361, 45.080727>,  <33.466053, 27.901178, 45.130260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257622, 28.009361, 45.080727>,  <32.910240, 28.189665, 44.998173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257622, 28.009361, 45.080727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096357, -0.254896, -0.962156,
		0.486308, 0.855479, -0.177933,
		0.868458, -0.450759, 0.206389,
		33.518158, 27.874134, 45.142643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270493, 28.474121, 44.442177>,  <32.910240, 28.189665, 44.998173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270493, 28.474121, 44.442177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476883, 28.151682, 44.558094>,  <33.600716, 27.958218, 44.627644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476883, 28.151682, 44.558094>,  <33.270493, 28.474121, 44.442177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476883, 28.151682, 44.558094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140789, -0.253897, -0.956930,
		0.844957, 0.534548, -0.017514,
		0.515972, -0.806099, 0.289790,
		33.631676, 27.909853, 44.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859730, 28.428411, 44.013290>,  <33.270493, 28.474121, 44.442177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859730, 28.428411, 44.013290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790684, 28.063644, 44.162209>,  <33.749256, 27.844784, 44.251560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790684, 28.063644, 44.162209>,  <33.859730, 28.428411, 44.013290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790684, 28.063644, 44.162209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046939, -0.385159, -0.921656,
		0.983871, -0.141614, 0.109288,
		-0.172612, -0.911920, 0.372300,
		33.738899, 27.790068, 44.273899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418545, 28.129206, 43.854919>,  <33.859730, 28.428411, 44.013290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418545, 28.129206, 43.854919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148003, 27.837046, 43.892990>,  <33.985676, 27.661751, 43.915833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148003, 27.837046, 43.892990>,  <34.418545, 28.129206, 43.854919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148003, 27.837046, 43.892990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261010, -0.358489, -0.896303,
		0.688778, -0.581380, 0.433108,
		-0.676357, -0.730399, 0.095173,
		33.945095, 27.617926, 43.921543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712711, 27.632938, 43.533371>,  <34.418545, 28.129206, 43.854919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712711, 27.632938, 43.533371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328506, 27.521904, 43.525768>,  <34.097984, 27.455284, 43.521206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328506, 27.521904, 43.525768>,  <34.712711, 27.632938, 43.533371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328506, 27.521904, 43.525768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071490, -0.180198, -0.981029,
		0.268895, -0.943650, 0.192927,
		-0.960513, -0.277586, -0.019008,
		34.040352, 27.438629, 43.520065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694016, 26.988438, 43.123215>,  <34.712711, 27.632938, 43.533371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694016, 26.988438, 43.123215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320232, 27.130863, 43.123287>,  <34.095963, 27.216318, 43.123329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320232, 27.130863, 43.123287>,  <34.694016, 26.988438, 43.123215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320232, 27.130863, 43.123287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048674, -0.127234, -0.990678,
		-0.352720, -0.925760, 0.136226,
		-0.934462, 0.356062, 0.000182,
		34.039894, 27.237682, 43.123341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475765, 26.542482, 42.547333>,  <34.694016, 26.988438, 43.123215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475765, 26.542482, 42.547333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204239, 26.824545, 42.629276>,  <34.041325, 26.993782, 42.678444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204239, 26.824545, 42.629276>,  <34.475765, 26.542482, 42.547333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204239, 26.824545, 42.629276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314072, -0.026627, -0.949026,
		-0.663755, -0.708554, 0.239544,
		-0.678814, 0.705154, 0.204863,
		34.000595, 27.036091, 42.690735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866367, 26.319242, 42.216763>,  <34.475765, 26.542482, 42.547333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866367, 26.319242, 42.216763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850399, 26.717354, 42.252144>,  <33.840816, 26.956221, 42.273373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850399, 26.717354, 42.252144>,  <33.866367, 26.319242, 42.216763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850399, 26.717354, 42.252144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211942, 0.078072, -0.974159,
		-0.976466, -0.057638, 0.207825,
		-0.039924, 0.995280, 0.088451,
		33.838421, 27.015938, 42.278679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179764, 26.535551, 41.897602>,  <33.866367, 26.319242, 42.216763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179764, 26.535551, 41.897602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435467, 26.843037, 41.905891>,  <33.588890, 27.027529, 41.910866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435467, 26.843037, 41.905891>,  <33.179764, 26.535551, 41.897602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435467, 26.843037, 41.905891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286763, 0.263304, -0.921107,
		-0.713524, 0.582881, 0.388758,
		0.639257, 0.768713, 0.020725,
		33.627243, 27.073650, 41.912109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788090, 27.011993, 41.654152>,  <33.179764, 26.535551, 41.897602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788090, 27.011993, 41.654152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147732, 27.184372, 41.623451>,  <33.363518, 27.287798, 41.605030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147732, 27.184372, 41.623451>,  <32.788090, 27.011993, 41.654152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147732, 27.184372, 41.623451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297346, 0.472617, -0.829589,
		-0.321232, 0.768713, 0.553074,
		0.899108, 0.430945, -0.076754,
		33.417465, 27.313656, 41.600426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648197, 27.686281, 41.525948>,  <32.788090, 27.011993, 41.654152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648197, 27.686281, 41.525948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010239, 27.608288, 41.374813>,  <33.227463, 27.561491, 41.284134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010239, 27.608288, 41.374813>,  <32.648197, 27.686281, 41.525948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010239, 27.608288, 41.374813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280312, 0.394530, -0.875084,
		0.319696, 0.897957, 0.302435,
		0.905108, -0.194984, -0.377838,
		33.281773, 27.549793, 41.261463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791924, 28.380180, 41.317123>,  <32.648197, 27.686281, 41.525948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791924, 28.380180, 41.317123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032246, 28.109085, 41.147556>,  <33.176437, 27.946428, 41.045818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032246, 28.109085, 41.147556>,  <32.791924, 28.380180, 41.317123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032246, 28.109085, 41.147556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115417, 0.451194, -0.884931,
		0.791020, 0.580597, 0.192857,
		0.600804, -0.677740, -0.423914,
		33.212486, 27.905764, 41.020382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120316, 28.816360, 40.902878>,  <32.791924, 28.380180, 41.317123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120316, 28.816360, 40.902878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177158, 28.444731, 40.766273>,  <33.211266, 28.221754, 40.684311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177158, 28.444731, 40.766273>,  <33.120316, 28.816360, 40.902878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177158, 28.444731, 40.766273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005874, 0.345795, -0.938292,
		0.989833, 0.131336, 0.054599,
		0.142112, -0.929073, -0.341508,
		33.219791, 28.166008, 40.663822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417423, 28.960791, 40.230282>,  <33.120316, 28.816360, 40.902878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417423, 28.960791, 40.230282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313629, 28.574877, 40.213013>,  <33.251354, 28.343328, 40.202652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313629, 28.574877, 40.213013>,  <33.417423, 28.960791, 40.230282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313629, 28.574877, 40.213013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078194, 0.023568, -0.996660,
		0.962577, -0.261990, 0.069325,
		-0.259481, -0.964783, -0.043172,
		33.235786, 28.285442, 40.200062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923237, 28.670534, 39.844452>,  <33.417423, 28.960791, 40.230282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923237, 28.670534, 39.844452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591537, 28.448513, 39.818340>,  <33.392517, 28.315300, 39.802673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591537, 28.448513, 39.818340>,  <33.923237, 28.670534, 39.844452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591537, 28.448513, 39.818340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061007, 0.205999, -0.976649,
		0.555537, -0.805904, -0.204687,
		-0.829251, -0.555052, -0.065275,
		33.342762, 28.281998, 39.798759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953957, 28.271685, 39.142414>,  <33.923237, 28.670534, 39.844452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953957, 28.271685, 39.142414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567337, 28.274347, 39.244980>,  <33.335365, 28.275946, 39.306519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567337, 28.274347, 39.244980>,  <33.953957, 28.271685, 39.142414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567337, 28.274347, 39.244980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247943, 0.231797, -0.940635,
		-0.065698, -0.972741, -0.222392,
		-0.966545, 0.006657, 0.256413,
		33.277374, 28.276344, 39.321903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675323, 27.776867, 38.729038>,  <33.953957, 28.271685, 39.142414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675323, 27.776867, 38.729038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368118, 28.001497, 38.852188>,  <33.183796, 28.136276, 38.926079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368118, 28.001497, 38.852188>,  <33.675323, 27.776867, 38.729038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368118, 28.001497, 38.852188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404067, -0.051935, -0.913254,
		-0.496874, -0.825793, 0.266801,
		-0.768015, 0.561577, 0.307870,
		33.137714, 28.169970, 38.944550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035278, 27.557461, 38.339375>,  <33.675323, 27.776867, 38.729038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035278, 27.557461, 38.339375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919521, 27.914143, 38.478577>,  <32.850067, 28.128153, 38.562099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919521, 27.914143, 38.478577>,  <33.035278, 27.557461, 38.339375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919521, 27.914143, 38.478577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354855, 0.237719, -0.904195,
		-0.889004, -0.385163, 0.247631,
		-0.289395, 0.891706, 0.348010,
		32.832703, 28.181654, 38.582981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441391, 27.651182, 37.984936>,  <33.035278, 27.557461, 38.339375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441391, 27.651182, 37.984936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566341, 28.012907, 38.101307>,  <32.641312, 28.229942, 38.171131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566341, 28.012907, 38.101307>,  <32.441391, 27.651182, 37.984936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566341, 28.012907, 38.101307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265606, 0.377184, -0.887235,
		-0.912071, 0.199879, 0.358015,
		0.312377, 0.904312, 0.290929,
		32.660053, 28.284201, 38.188587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885574, 28.144491, 37.835022>,  <32.441391, 27.651182, 37.984936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885574, 28.144491, 37.835022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219173, 28.364975, 37.844959>,  <32.419334, 28.497265, 37.850922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219173, 28.364975, 37.844959>,  <31.885574, 28.144491, 37.835022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219173, 28.364975, 37.844959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381399, 0.608432, -0.695949,
		-0.398727, 0.570946, 0.717661,
		0.833997, 0.551209, 0.024840,
		32.469372, 28.530338, 37.852413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649574, 28.839439, 37.932999>,  <31.885574, 28.144491, 37.835022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649574, 28.839439, 37.932999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012436, 28.848003, 37.764896>,  <32.230152, 28.853142, 37.664036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012436, 28.848003, 37.764896>,  <31.649574, 28.839439, 37.932999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012436, 28.848003, 37.764896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397909, 0.368532, -0.840150,
		0.136888, 0.929368, 0.342835,
		0.907155, 0.021411, -0.420251,
		32.284584, 28.854427, 37.638821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643459, 29.505371, 37.564350>,  <31.649574, 28.839439, 37.932999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643459, 29.505371, 37.564350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984076, 29.360691, 37.412537>,  <32.188446, 29.273884, 37.321449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984076, 29.360691, 37.412537>,  <31.643459, 29.505371, 37.564350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984076, 29.360691, 37.412537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107318, 0.588334, -0.801465,
		0.513184, 0.723213, 0.462175,
		0.851543, -0.361699, -0.379537,
		32.239540, 29.252182, 37.298676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987690, 30.129446, 37.337410>,  <31.643459, 29.505371, 37.564350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987690, 30.129446, 37.337410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165691, 29.824648, 37.149227>,  <32.272491, 29.641769, 37.036316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165691, 29.824648, 37.149227>,  <31.987690, 30.129446, 37.337410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165691, 29.824648, 37.149227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013591, 0.519535, -0.854341,
		0.895424, 0.386581, 0.220839,
		0.445006, -0.761997, -0.470458,
		32.299194, 29.596048, 37.008091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590839, 30.494392, 36.956306>,  <31.987690, 30.129446, 37.337410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590839, 30.494392, 36.956306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522591, 30.139967, 36.783897>,  <32.481644, 29.927311, 36.680450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522591, 30.139967, 36.783897>,  <32.590839, 30.494392, 36.956306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522591, 30.139967, 36.783897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163961, 0.405806, -0.899132,
		0.971600, -0.224078, 0.076042,
		-0.170618, -0.886064, -0.431022,
		32.471405, 29.874147, 36.654591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105919, 30.442902, 36.361027>,  <32.590839, 30.494392, 36.956306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105919, 30.442902, 36.361027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807896, 30.186827, 36.286148>,  <32.629082, 30.033182, 36.241222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807896, 30.186827, 36.286148>,  <33.105919, 30.442902, 36.361027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807896, 30.186827, 36.286148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091324, 0.180102, -0.979400,
		0.660715, -0.746808, -0.075722,
		-0.745061, -0.640189, -0.187197,
		32.584377, 29.994770, 36.229988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313515, 30.198029, 35.756004>,  <33.105919, 30.442902, 36.361027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313515, 30.198029, 35.756004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924221, 30.106627, 35.765732>,  <32.690643, 30.051785, 35.771568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924221, 30.106627, 35.765732>,  <33.313515, 30.198029, 35.756004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924221, 30.106627, 35.765732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055467, 0.130882, -0.989845,
		0.223005, -0.964704, -0.140054,
		-0.973238, -0.228509, 0.024322,
		32.632248, 30.038074, 35.773029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814964, 30.039473, 36.194382>,  <33.313515, 30.198029, 35.756004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814964, 30.039473, 36.194382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115894, 30.199924, 35.985348>,  <34.296452, 30.296196, 35.859928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115894, 30.199924, 35.985348>,  <33.814964, 30.039473, 36.194382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115894, 30.199924, 35.985348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658695, -0.471356, 0.586467,
		-0.011077, -0.785442, -0.618836,
		0.752328, 0.401128, -0.522588,
		34.341591, 30.320263, 35.828571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239483, 29.506437, 35.835461>,  <33.814964, 30.039473, 36.194382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239483, 29.506437, 35.835461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475166, 29.821365, 35.908077>,  <34.616577, 30.010323, 35.951645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475166, 29.821365, 35.908077>,  <34.239483, 29.506437, 35.835461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475166, 29.821365, 35.908077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588084, -0.571963, 0.571853,
		0.554064, -0.230183, -0.800018,
		0.589212, 0.787321, 0.181537,
		34.651928, 30.057562, 35.962540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907578, 29.228460, 36.101837>,  <34.239483, 29.506437, 35.835461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907578, 29.228460, 36.101837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941826, 29.615959, 36.194958>,  <34.962376, 29.848459, 36.250832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941826, 29.615959, 36.194958>,  <34.907578, 29.228460, 36.101837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941826, 29.615959, 36.194958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731422, -0.219778, 0.645539,
		0.676529, 0.115005, -0.727381,
		0.085622, 0.968747, 0.232803,
		34.967514, 29.906584, 36.264797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630287, 29.380671, 36.063339>,  <34.907578, 29.228460, 36.101837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630287, 29.380671, 36.063339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442173, 29.638514, 36.304440>,  <35.329304, 29.793221, 36.449100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442173, 29.638514, 36.304440>,  <35.630287, 29.380671, 36.063339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442173, 29.638514, 36.304440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531573, -0.338285, 0.776526,
		0.704459, 0.685595, -0.183566,
		-0.470285, 0.644610, 0.602752,
		35.301086, 29.831896, 36.485264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172325, 29.717720, 36.344051>,  <35.630287, 29.380671, 36.063339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172325, 29.717720, 36.344051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868877, 29.777754, 36.597656>,  <35.686810, 29.813774, 36.749821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868877, 29.777754, 36.597656>,  <36.172325, 29.717720, 36.344051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868877, 29.777754, 36.597656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631978, -0.067114, 0.772074,
		0.158426, 0.986393, -0.043935,
		-0.758620, 0.150083, 0.634012,
		35.641293, 29.822779, 36.787861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451103, 30.079794, 36.960159>,  <36.172325, 29.717720, 36.344051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451103, 30.079794, 36.960159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114388, 29.909616, 37.093056>,  <35.912357, 29.807510, 37.172794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114388, 29.909616, 37.093056>,  <36.451103, 30.079794, 36.960159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114388, 29.909616, 37.093056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429571, -0.155247, 0.889588,
		-0.326888, 0.891570, 0.313443,
		-0.841792, -0.425441, 0.332244,
		35.861851, 29.781984, 37.192730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332718, 30.319443, 37.611359>,  <36.451103, 30.079794, 36.960159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332718, 30.319443, 37.611359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145561, 29.966116, 37.599895>,  <36.033268, 29.754120, 37.593018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145561, 29.966116, 37.599895>,  <36.332718, 30.319443, 37.611359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145561, 29.966116, 37.599895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281725, -0.179813, 0.942496,
		-0.837678, 0.432915, 0.332987,
		-0.467896, -0.883318, -0.028662,
		36.005192, 29.701120, 37.591297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144691, 30.211891, 38.264545>,  <36.332718, 30.319443, 37.611359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144691, 30.211891, 38.264545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059196, 29.851141, 38.114380>,  <36.007900, 29.634691, 38.024281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059196, 29.851141, 38.114380>,  <36.144691, 30.211891, 38.264545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059196, 29.851141, 38.114380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032853, -0.377445, 0.925449,
		-0.976339, 0.210136, 0.051044,
		-0.213736, -0.901875, -0.375418,
		35.995075, 29.580578, 38.001755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650780, 30.017050, 38.667431>,  <36.144691, 30.211891, 38.264545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650780, 30.017050, 38.667431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836918, 29.690283, 38.531136>,  <35.948601, 29.494223, 38.449360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836918, 29.690283, 38.531136>,  <35.650780, 30.017050, 38.667431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836918, 29.690283, 38.531136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137809, -0.313394, 0.939570,
		-0.874336, -0.484180, -0.033257,
		0.465344, -0.816917, -0.340736,
		35.976521, 29.445208, 38.428913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418991, 29.439472, 38.996624>,  <35.650780, 30.017050, 38.667431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418991, 29.439472, 38.996624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754459, 29.277607, 38.850819>,  <35.955742, 29.180487, 38.763336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.754459, 29.277607, 38.850819>,  <35.418991, 29.439472, 38.996624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754459, 29.277607, 38.850819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215191, -0.368620, 0.904330,
		-0.500319, -0.836878, -0.222072,
		0.838674, -0.404665, -0.364516,
		36.006062, 29.156208, 38.741463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441547, 28.914291, 39.409698>,  <35.418991, 29.439472, 38.996624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441547, 28.914291, 39.409698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808350, 28.929623, 39.250885>,  <36.028431, 28.938822, 39.155598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808350, 28.929623, 39.250885>,  <35.441547, 28.914291, 39.409698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808350, 28.929623, 39.250885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384041, -0.353814, 0.852836,
		-0.107786, -0.934530, -0.339169,
		0.917003, 0.038331, -0.397034,
		36.083450, 28.941122, 39.131775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667542, 28.258432, 39.419010>,  <35.441547, 28.914291, 39.409698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667542, 28.258432, 39.419010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988609, 28.496956, 39.423820>,  <36.181248, 28.640070, 39.426708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988609, 28.496956, 39.423820>,  <35.667542, 28.258432, 39.419010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988609, 28.496956, 39.423820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264589, -0.374083, 0.888850,
		0.534529, -0.710266, -0.458040,
		0.802665, 0.596309, 0.012029,
		36.229408, 28.675848, 39.427429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263924, 27.890102, 39.535614>,  <35.667542, 28.258432, 39.419010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263924, 27.890102, 39.535614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322380, 28.260038, 39.676079>,  <36.357452, 28.482000, 39.760357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322380, 28.260038, 39.676079>,  <36.263924, 27.890102, 39.535614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322380, 28.260038, 39.676079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276109, -0.378999, 0.883246,
		0.949951, -0.032119, -0.310743,
		0.146140, 0.924840, 0.351162,
		36.366222, 28.537491, 39.781429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865578, 27.786688, 39.898327>,  <36.263924, 27.890102, 39.535614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865578, 27.786688, 39.898327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674728, 28.095947, 40.065468>,  <36.560219, 28.281502, 40.165752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674728, 28.095947, 40.065468>,  <36.865578, 27.786688, 39.898327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674728, 28.095947, 40.065468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154953, -0.394006, 0.905952,
		0.865070, 0.496995, 0.068186,
		-0.477120, 0.773147, 0.417854,
		36.531593, 28.327890, 40.190823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266266, 28.000267, 40.426208>,  <36.865578, 27.786688, 39.898327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266266, 28.000267, 40.426208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919434, 28.177599, 40.517097>,  <36.711334, 28.283998, 40.571629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919434, 28.177599, 40.517097>,  <37.266266, 28.000267, 40.426208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919434, 28.177599, 40.517097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118577, -0.259330, 0.958482,
		0.483849, 0.858024, 0.172291,
		-0.867081, 0.443331, 0.227218,
		36.659309, 28.310598, 40.585262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374027, 28.456606, 40.994675>,  <37.266266, 28.000267, 40.426208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374027, 28.456606, 40.994675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985443, 28.361919, 41.000690>,  <36.752293, 28.305107, 41.004299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985443, 28.361919, 41.000690>,  <37.374027, 28.456606, 40.994675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985443, 28.361919, 41.000690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032949, -0.071897, 0.996868,
		-0.234893, 0.968915, 0.077645,
		-0.971463, -0.236716, 0.015036,
		36.694004, 28.290905, 41.005199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117371, 28.926485, 41.553188>,  <37.374027, 28.456606, 40.994675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117371, 28.926485, 41.553188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838863, 28.644882, 41.497215>,  <36.671757, 28.475920, 41.463631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838863, 28.644882, 41.497215>,  <37.117371, 28.926485, 41.553188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838863, 28.644882, 41.497215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238131, 0.042654, 0.970296,
		-0.677127, 0.708911, -0.197345,
		-0.696271, -0.704007, -0.139931,
		36.629982, 28.433680, 41.455235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509224, 29.200817, 41.951160>,  <37.117371, 28.926485, 41.553188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509224, 29.200817, 41.951160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468895, 28.803703, 41.925205>,  <36.444698, 28.565435, 41.909630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468895, 28.803703, 41.925205>,  <36.509224, 29.200817, 41.951160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468895, 28.803703, 41.925205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204152, -0.043191, 0.977986,
		-0.973733, 0.111853, -0.198325,
		-0.100825, -0.992786, -0.064891,
		36.438648, 28.505867, 41.905739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899895, 29.030985, 42.450863>,  <36.509224, 29.200817, 41.951160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899895, 29.030985, 42.450863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042618, 28.663715, 42.381989>,  <36.128254, 28.443354, 42.340664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042618, 28.663715, 42.381989>,  <35.899895, 29.030985, 42.450863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042618, 28.663715, 42.381989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147475, -0.237368, 0.960160,
		-0.922463, -0.317201, -0.220102,
		0.356810, -0.918172, -0.172184,
		36.149662, 28.388264, 42.330334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397091, 28.488924, 42.643383>,  <35.899895, 29.030985, 42.450863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397091, 28.488924, 42.643383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752312, 28.305441, 42.655685>,  <35.965446, 28.195351, 42.663067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752312, 28.305441, 42.655685>,  <35.397091, 28.488924, 42.643383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752312, 28.305441, 42.655685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190013, -0.305301, 0.933106,
		-0.418634, -0.834493, -0.358285,
		0.888055, -0.458708, 0.030755,
		36.018726, 28.167828, 42.664913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276489, 27.800755, 42.967766>,  <35.397091, 28.488924, 42.643383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276489, 27.800755, 42.967766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669502, 27.835920, 43.033367>,  <35.905312, 27.857019, 43.072727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669502, 27.835920, 43.033367>,  <35.276489, 27.800755, 42.967766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669502, 27.835920, 43.033367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137761, -0.248805, 0.958706,
		0.125086, -0.964555, -0.232349,
		0.982535, 0.087912, 0.164000,
		35.964264, 27.862293, 43.082569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615849, 27.153309, 43.233101>,  <35.276489, 27.800755, 42.967766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615849, 27.153309, 43.233101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854233, 27.451212, 43.353210>,  <35.997265, 27.629953, 43.425274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854233, 27.451212, 43.353210>,  <35.615849, 27.153309, 43.233101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854233, 27.451212, 43.353210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031935, -0.395617, 0.917860,
		0.802375, -0.537423, -0.259557,
		0.595964, 0.744757, 0.300271,
		36.033024, 27.674639, 43.443291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850677, 26.895483, 43.821667>,  <35.615849, 27.153309, 43.233101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850677, 26.895483, 43.821667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976074, 27.274153, 43.851421>,  <36.051311, 27.501354, 43.869274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976074, 27.274153, 43.851421>,  <35.850677, 26.895483, 43.821667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976074, 27.274153, 43.851421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161153, -0.130237, 0.978298,
		0.935818, -0.294697, -0.193387,
		0.313487, 0.946674, 0.074387,
		36.070122, 27.558155, 43.873737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454754, 26.870136, 44.202793>,  <35.850677, 26.895483, 43.821667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454754, 26.870136, 44.202793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325047, 27.246996, 44.236740>,  <36.247223, 27.473112, 44.257111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325047, 27.246996, 44.236740>,  <36.454754, 26.870136, 44.202793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325047, 27.246996, 44.236740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165527, -0.031820, 0.985692,
		0.931369, 0.333679, -0.145633,
		-0.324271, 0.942149, 0.084870,
		36.227764, 27.529640, 44.262199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964497, 27.228863, 44.546406>,  <36.454754, 26.870136, 44.202793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964497, 27.228863, 44.546406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651108, 27.476021, 44.572880>,  <36.463074, 27.624315, 44.588764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651108, 27.476021, 44.572880>,  <36.964497, 27.228863, 44.546406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651108, 27.476021, 44.572880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182434, 0.126882, 0.974997,
		0.594050, 0.775954, -0.212133,
		-0.783468, 0.617897, 0.066187,
		36.416069, 27.661390, 44.592735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169518, 27.715557, 45.035145>,  <36.964497, 27.228863, 44.546406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169518, 27.715557, 45.035145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777447, 27.794800, 45.033833>,  <36.542206, 27.842346, 45.033043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.777447, 27.794800, 45.033833>,  <37.169518, 27.715557, 45.035145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777447, 27.794800, 45.033833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093882, 0.478971, 0.872796,
		0.174479, 0.855184, -0.488074,
		-0.980175, 0.198106, -0.003284,
		36.483395, 27.854231, 45.032848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100594, 28.353331, 45.231052>,  <37.169518, 27.715557, 45.035145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100594, 28.353331, 45.231052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747570, 28.190563, 45.325294>,  <36.535755, 28.092903, 45.381840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747570, 28.190563, 45.325294>,  <37.100594, 28.353331, 45.231052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747570, 28.190563, 45.325294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099136, 0.328777, 0.939190,
		-0.459637, 0.852245, -0.249824,
		-0.882556, -0.406920, 0.235606,
		36.482803, 28.068487, 45.395977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653278, 28.880131, 45.603043>,  <37.100594, 28.353331, 45.231052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653278, 28.880131, 45.603043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494934, 28.529667, 45.713051>,  <36.399925, 28.319389, 45.779057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494934, 28.529667, 45.713051>,  <36.653278, 28.880131, 45.603043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494934, 28.529667, 45.713051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015212, 0.305698, 0.952007,
		-0.918183, 0.372682, -0.134343,
		-0.395865, -0.876160, 0.275018,
		36.376175, 28.266819, 45.795555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244915, 29.036118, 46.102398>,  <36.653278, 28.880131, 45.603043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244915, 29.036118, 46.102398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270390, 28.639938, 46.151318>,  <36.285675, 28.402231, 46.180668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270390, 28.639938, 46.151318>,  <36.244915, 29.036118, 46.102398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270390, 28.639938, 46.151318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182085, 0.108954, 0.977228,
		-0.981218, -0.084507, -0.173407,
		0.063689, -0.990448, 0.122295,
		36.289497, 28.342804, 46.188007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673733, 28.747047, 46.474445>,  <36.244915, 29.036118, 46.102398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673733, 28.747047, 46.474445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941902, 28.461994, 46.557091>,  <36.102802, 28.290962, 46.606678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941902, 28.461994, 46.557091>,  <35.673733, 28.747047, 46.474445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941902, 28.461994, 46.557091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258943, 0.036239, 0.965213,
		-0.695330, -0.700600, -0.160236,
		0.670421, -0.712634, 0.206613,
		36.143028, 28.248203, 46.619076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312771, 28.270990, 47.070660>,  <35.673733, 28.747047, 46.474445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312771, 28.270990, 47.070660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706741, 28.202044, 47.076412>,  <35.943123, 28.160675, 47.079865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706741, 28.202044, 47.076412>,  <35.312771, 28.270990, 47.070660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706741, 28.202044, 47.076412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041244, -0.153285, 0.987321,
		-0.167998, -0.973029, -0.158085,
		0.984924, -0.172388, 0.014380,
		36.002220, 28.150333, 47.080727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455578, 27.846510, 47.659565>,  <35.312771, 28.270990, 47.070660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455578, 27.846510, 47.659565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824215, 27.985588, 47.590542>,  <36.045399, 28.069035, 47.549129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.824215, 27.985588, 47.590542>,  <35.455578, 27.846510, 47.659565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824215, 27.985588, 47.590542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197967, -0.038635, 0.979447,
		0.333883, -0.936811, -0.104438,
		0.921592, 0.347696, -0.172558,
		36.100693, 28.089897, 47.538773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969734, 27.359016, 47.986111>,  <35.455578, 27.846510, 47.659565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969734, 27.359016, 47.986111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167759, 27.702217, 47.931347>,  <36.286575, 27.908138, 47.898491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167759, 27.702217, 47.931347>,  <35.969734, 27.359016, 47.986111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167759, 27.702217, 47.931347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349948, -0.052681, 0.935287,
		0.795266, -0.510937, -0.326337,
		0.495065, 0.858002, -0.136906,
		36.316277, 27.959618, 47.890274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651875, 27.275597, 48.118771>,  <35.969734, 27.359016, 47.986111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651875, 27.275597, 48.118771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614418, 27.665943, 48.197681>,  <36.591942, 27.900150, 48.245029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614418, 27.665943, 48.197681>,  <36.651875, 27.275597, 48.118771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614418, 27.665943, 48.197681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441502, -0.136899, 0.886755,
		0.892360, 0.170140, -0.418026,
		-0.093645, 0.975864, 0.197280,
		36.586323, 27.958702, 48.256866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283398, 27.418356, 48.339966>,  <36.651875, 27.275597, 48.118771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283398, 27.418356, 48.339966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042088, 27.704386, 48.481236>,  <36.897301, 27.876003, 48.565998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042088, 27.704386, 48.481236>,  <37.283398, 27.418356, 48.339966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042088, 27.704386, 48.481236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400556, -0.111263, 0.909492,
		0.689650, 0.690136, -0.219306,
		-0.603273, 0.715075, 0.353170,
		36.861107, 27.918909, 48.587185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758316, 27.856691, 48.687107>,  <37.283398, 27.418356, 48.339966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758316, 27.856691, 48.687107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397121, 27.959587, 48.824772>,  <37.180405, 28.021324, 48.907372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397121, 27.959587, 48.824772>,  <37.758316, 27.856691, 48.687107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397121, 27.959587, 48.824772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361975, 0.023852, 0.931883,
		0.231507, 0.966054, -0.114652,
		-0.902983, 0.257238, 0.344165,
		37.126228, 28.036758, 48.928020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924820, 28.366943, 49.073380>,  <37.758316, 27.856691, 48.687107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924820, 28.366943, 49.073380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559448, 28.255325, 49.191883>,  <37.340225, 28.188354, 49.262985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559448, 28.255325, 49.191883>,  <37.924820, 28.366943, 49.073380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559448, 28.255325, 49.191883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312183, -0.013367, 0.949928,
		-0.261115, 0.960184, 0.099324,
		-0.913434, -0.279047, 0.296263,
		37.285419, 28.171612, 49.280762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719749, 28.876369, 49.540810>,  <37.924820, 28.366943, 49.073380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719749, 28.876369, 49.540810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525547, 28.533751, 49.610794>,  <37.409027, 28.328178, 49.652786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525547, 28.533751, 49.610794>,  <37.719749, 28.876369, 49.540810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525547, 28.533751, 49.610794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229302, 0.068363, 0.970952,
		-0.843628, 0.511519, 0.163217,
		-0.485502, -0.856548, 0.174965,
		37.379898, 28.276787, 49.663284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434864, 29.452723, 49.965290>,  <37.719749, 28.876369, 49.540810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434864, 29.452723, 49.965290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313389, 29.833721, 49.956100>,  <37.240505, 30.062321, 49.950588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313389, 29.833721, 49.956100>,  <37.434864, 29.452723, 49.965290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313389, 29.833721, 49.956100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243069, 0.054142, -0.968497,
		-0.921246, -0.299700, -0.247964,
		-0.303684, 0.952496, -0.022970,
		37.222282, 30.119471, 49.949211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084011, 29.566008, 49.324257>,  <37.434864, 29.452723, 49.965290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084011, 29.566008, 49.324257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209759, 29.918346, 49.465839>,  <37.285210, 30.129749, 49.550789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209759, 29.918346, 49.465839>,  <37.084011, 29.566008, 49.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209759, 29.918346, 49.465839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180598, 0.310552, -0.933243,
		-0.931963, 0.357308, -0.061450,
		0.314372, 0.880845, 0.353952,
		37.304070, 30.182600, 49.572025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679527, 30.154915, 49.036991>,  <37.084011, 29.566008, 49.324257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679527, 30.154915, 49.036991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044247, 30.266077, 49.157921>,  <37.263077, 30.332775, 49.230476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044247, 30.266077, 49.157921>,  <36.679527, 30.154915, 49.036991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044247, 30.266077, 49.157921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197564, 0.348536, -0.916237,
		-0.359997, 0.895149, 0.262889,
		0.911795, 0.277905, 0.302322,
		37.317783, 30.349449, 49.248619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794609, 30.896910, 48.755379>,  <36.679527, 30.154915, 49.036991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794609, 30.896910, 48.755379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165260, 30.774641, 48.842945>,  <37.387650, 30.701279, 48.895485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165260, 30.774641, 48.842945>,  <36.794609, 30.896910, 48.755379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165260, 30.774641, 48.842945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338078, 0.422642, -0.840878,
		0.164511, 0.853192, 0.494974,
		0.926628, -0.305673, 0.218917,
		37.443249, 30.682940, 48.908619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153183, 31.402618, 48.685596>,  <36.794609, 30.896910, 48.755379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153183, 31.402618, 48.685596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432472, 31.119167, 48.644951>,  <37.600048, 30.949097, 48.620564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432472, 31.119167, 48.644951>,  <37.153183, 31.402618, 48.685596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432472, 31.119167, 48.644951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284645, 0.405054, -0.868855,
		0.656854, 0.577734, 0.484527,
		0.698227, -0.708629, -0.101612,
		37.641941, 30.906578, 48.614468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754181, 31.709320, 48.489079>,  <37.153183, 31.402618, 48.685596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754181, 31.709320, 48.489079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766502, 31.327446, 48.370670>,  <37.773895, 31.098322, 48.299625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766502, 31.327446, 48.370670>,  <37.754181, 31.709320, 48.489079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766502, 31.327446, 48.370670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016069, 0.296592, -0.954869,
		0.999396, 0.024656, 0.024477,
		0.030803, -0.954686, -0.296016,
		37.775742, 31.041040, 48.281864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269852, 31.725077, 47.928177>,  <37.754181, 31.709320, 48.489079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269852, 31.725077, 47.928177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072536, 31.381365, 47.874050>,  <37.954147, 31.175138, 47.841572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072536, 31.381365, 47.874050>,  <38.269852, 31.725077, 47.928177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072536, 31.381365, 47.874050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109087, 0.093227, -0.989651,
		0.863001, -0.502940, 0.047749,
		-0.493284, -0.859279, -0.135320,
		37.924553, 31.123581, 47.833454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619831, 31.394466, 47.368973>,  <38.269852, 31.725077, 47.928177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619831, 31.394466, 47.368973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258335, 31.225273, 47.395348>,  <38.041439, 31.123758, 47.411175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258335, 31.225273, 47.395348>,  <38.619831, 31.394466, 47.368973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258335, 31.225273, 47.395348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148661, 0.165647, -0.974916,
		0.401449, -0.890869, -0.212582,
		-0.903736, -0.422982, 0.065939,
		37.987213, 31.098379, 47.415131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616928, 30.900854, 46.845238>,  <38.619831, 31.394466, 47.368973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616928, 30.900854, 46.845238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228233, 30.966179, 46.913422>,  <37.995018, 31.005375, 46.954330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228233, 30.966179, 46.913422>,  <38.616928, 30.900854, 46.845238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228233, 30.966179, 46.913422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139897, 0.183218, -0.973067,
		-0.190146, -0.969412, -0.155193,
		-0.971738, 0.163314, 0.170456,
		37.936710, 31.015173, 46.964558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234756, 30.448830, 46.290794>,  <38.616928, 30.900854, 46.845238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234756, 30.448830, 46.290794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994934, 30.744642, 46.413193>,  <37.851040, 30.922129, 46.486633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994934, 30.744642, 46.413193>,  <38.234756, 30.448830, 46.290794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994934, 30.744642, 46.413193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270693, 0.172426, -0.947098,
		-0.753169, -0.650665, 0.096807,
		-0.599551, 0.739530, 0.305996,
		37.815067, 30.966501, 46.504990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447300, 30.273045, 46.090302>,  <38.234756, 30.448830, 46.290794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447300, 30.273045, 46.090302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502430, 30.665232, 46.146423>,  <37.535507, 30.900545, 46.180096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502430, 30.665232, 46.146423>,  <37.447300, 30.273045, 46.090302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502430, 30.665232, 46.146423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226928, 0.169146, -0.959110,
		-0.964110, 0.100349, 0.245808,
		0.137823, 0.980469, 0.140303,
		37.543777, 30.959372, 46.188515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809452, 30.626965, 45.737019>,  <37.447300, 30.273045, 46.090302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809452, 30.626965, 45.737019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087200, 30.912571, 45.772850>,  <37.253849, 31.083935, 45.794350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087200, 30.912571, 45.772850>,  <36.809452, 30.626965, 45.737019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087200, 30.912571, 45.772850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280417, 0.383118, -0.880106,
		-0.662731, 0.586003, 0.466250,
		0.694373, 0.714018, 0.089579,
		37.295513, 31.126776, 45.799725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531693, 31.214741, 45.580170>,  <36.809452, 30.626965, 45.737019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531693, 31.214741, 45.580170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923363, 31.229719, 45.500362>,  <37.158367, 31.238707, 45.452477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923363, 31.229719, 45.500362>,  <36.531693, 31.214741, 45.580170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923363, 31.229719, 45.500362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197023, 0.412138, -0.889564,
		0.048920, 0.910352, 0.410934,
		0.979177, 0.037446, -0.199522,
		37.217117, 31.240953, 45.440506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763859, 31.875921, 45.407749>,  <36.531693, 31.214741, 45.580170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763859, 31.875921, 45.407749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014481, 31.616877, 45.234303>,  <37.164852, 31.461449, 45.130234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014481, 31.616877, 45.234303>,  <36.763859, 31.875921, 45.407749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014481, 31.616877, 45.234303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332615, 0.280970, -0.900235,
		0.704839, 0.708274, -0.039363,
		0.626554, -0.647613, -0.433621,
		37.202446, 31.422592, 45.104218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009621, 32.240696, 44.728382>,  <36.763859, 31.875921, 45.407749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009621, 32.240696, 44.728382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185947, 31.887377, 44.664558>,  <37.291744, 31.675385, 44.626263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185947, 31.887377, 44.664558>,  <37.009621, 32.240696, 44.728382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185947, 31.887377, 44.664558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104557, 0.126024, -0.986502,
		0.891485, 0.451553, -0.036802,
		0.440820, -0.883299, -0.159562,
		37.318192, 31.622387, 44.616692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597565, 32.289070, 44.247467>,  <37.009621, 32.240696, 44.728382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597565, 32.289070, 44.247467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482849, 31.907412, 44.213150>,  <37.414021, 31.678417, 44.192558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482849, 31.907412, 44.213150>,  <37.597565, 32.289070, 44.247467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482849, 31.907412, 44.213150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019993, 0.095495, -0.995229,
		0.957786, -0.283701, -0.046463,
		-0.286785, -0.954146, -0.085792,
		37.396812, 31.621168, 44.187412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947163, 32.024448, 43.673161>,  <37.597565, 32.289070, 44.247467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947163, 32.024448, 43.673161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689175, 31.722483, 43.720676>,  <37.534382, 31.541304, 43.749187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689175, 31.722483, 43.720676>,  <37.947163, 32.024448, 43.673161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689175, 31.722483, 43.720676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074065, -0.092965, -0.992911,
		0.760609, -0.649198, 0.004047,
		-0.644972, -0.754917, 0.118792,
		37.495682, 31.496008, 43.756313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092129, 31.539400, 43.153267>,  <37.947163, 32.024448, 43.673161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092129, 31.539400, 43.153267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715950, 31.430071, 43.234123>,  <37.490242, 31.364473, 43.282639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715950, 31.430071, 43.234123>,  <38.092129, 31.539400, 43.153267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715950, 31.430071, 43.234123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111187, -0.314608, -0.942687,
		0.321255, -0.909019, 0.265481,
		-0.940443, -0.273325, 0.202141,
		37.433819, 31.348074, 43.294765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984196, 30.848894, 42.932243>,  <38.092129, 31.539400, 43.153267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984196, 30.848894, 42.932243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608578, 30.984768, 42.953407>,  <37.383205, 31.066292, 42.966106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608578, 30.984768, 42.953407>,  <37.984196, 30.848894, 42.932243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608578, 30.984768, 42.953407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171724, -0.330153, -0.928175,
		-0.297814, -0.880691, 0.368362,
		-0.939051, 0.339680, 0.052912,
		37.326862, 31.086674, 42.969280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530804, 30.341957, 42.659683>,  <37.984196, 30.848894, 42.932243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530804, 30.341957, 42.659683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307884, 30.672598, 42.628326>,  <37.174133, 30.870983, 42.609512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307884, 30.672598, 42.628326>,  <37.530804, 30.341957, 42.659683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307884, 30.672598, 42.628326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262185, -0.264774, -0.927984,
		-0.787831, -0.496610, 0.364281,
		-0.557298, 0.826603, -0.078393,
		37.140694, 30.920578, 42.604809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030411, 30.078548, 42.361233>,  <37.530804, 30.341957, 42.659683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030411, 30.078548, 42.361233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004726, 30.469576, 42.280994>,  <36.989315, 30.704193, 42.232853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004726, 30.469576, 42.280994>,  <37.030411, 30.078548, 42.361233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004726, 30.469576, 42.280994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431752, -0.208436, -0.877579,
		-0.899704, 0.030253, 0.435451,
		-0.064214, 0.977568, -0.200592,
		36.985462, 30.762846, 42.220818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371876, 30.188145, 41.975128>,  <37.030411, 30.078548, 42.361233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371876, 30.188145, 41.975128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629612, 30.482586, 41.892197>,  <36.784252, 30.659250, 41.842438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629612, 30.482586, 41.892197>,  <36.371876, 30.188145, 41.975128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629612, 30.482586, 41.892197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217127, -0.083859, -0.972535,
		-0.733270, 0.671657, 0.105794,
		0.644338, 0.736101, -0.207326,
		36.822914, 30.703417, 41.829998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998642, 30.525080, 41.510616>,  <36.371876, 30.188145, 41.975128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998642, 30.525080, 41.510616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381042, 30.635933, 41.472145>,  <36.610485, 30.702444, 41.449062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381042, 30.635933, 41.472145>,  <35.998642, 30.525080, 41.510616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381042, 30.635933, 41.472145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082324, -0.061238, -0.994722,
		-0.281559, 0.958878, -0.035730,
		0.956006, 0.277131, -0.096181,
		36.667843, 30.719072, 41.443291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022591, 30.747696, 40.903492>,  <35.998642, 30.525080, 41.510616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022591, 30.747696, 40.903492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418427, 30.753420, 40.960777>,  <36.655930, 30.756853, 40.995148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418427, 30.753420, 40.960777>,  <36.022591, 30.747696, 40.903492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418427, 30.753420, 40.960777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139422, 0.151741, -0.978538,
		-0.035733, 0.988317, 0.148166,
		0.989588, 0.014309, 0.143215,
		36.715302, 30.757713, 41.003742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290474, 31.391144, 40.611389>,  <36.022591, 30.747696, 40.903492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290474, 31.391144, 40.611389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566143, 31.102461, 40.637253>,  <36.731544, 30.929251, 40.652771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566143, 31.102461, 40.637253>,  <36.290474, 31.391144, 40.611389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566143, 31.102461, 40.637253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280723, 0.183666, -0.942052,
		0.668008, 0.667389, 0.329177,
		0.689173, -0.721706, 0.064661,
		36.772896, 30.885948, 40.656651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870453, 31.735399, 40.336258>,  <36.290474, 31.391144, 40.611389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870453, 31.735399, 40.336258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968040, 31.352280, 40.275459>,  <37.026592, 31.122408, 40.238979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968040, 31.352280, 40.275459>,  <36.870453, 31.735399, 40.336258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968040, 31.352280, 40.275459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407580, 0.243484, -0.880110,
		0.879977, 0.152767, 0.449781,
		0.243967, -0.957798, -0.151996,
		37.041229, 31.064939, 40.229862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446026, 31.708063, 39.836967>,  <36.870453, 31.735399, 40.336258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446026, 31.708063, 39.836967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340042, 31.322367, 39.834549>,  <37.276451, 31.090948, 39.833096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340042, 31.322367, 39.834549>,  <37.446026, 31.708063, 39.836967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340042, 31.322367, 39.834549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342374, -0.088209, -0.935414,
		0.901431, -0.249916, 0.353502,
		-0.264957, -0.964241, -0.006050,
		37.260555, 31.033094, 39.832733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070641, 31.265549, 39.709415>,  <37.446026, 31.708063, 39.836967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070641, 31.265549, 39.709415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745487, 31.060158, 39.599461>,  <37.550396, 30.936922, 39.533489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745487, 31.060158, 39.599461>,  <38.070641, 31.265549, 39.709415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745487, 31.060158, 39.599461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389730, -0.128815, -0.911876,
		0.432820, -0.848379, 0.304829,
		-0.812882, -0.513479, -0.274885,
		37.501621, 30.906115, 39.516994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350731, 30.614298, 39.419426>,  <38.070641, 31.265549, 39.709415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350731, 30.614298, 39.419426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976986, 30.672165, 39.289177>,  <37.752739, 30.706884, 39.211025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976986, 30.672165, 39.289177>,  <38.350731, 30.614298, 39.419426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976986, 30.672165, 39.289177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327884, -0.008634, -0.944679,
		-0.139475, -0.989443, -0.039367,
		-0.934366, 0.144667, -0.325626,
		37.696678, 30.715565, 39.191490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298416, 30.205219, 38.834526>,  <38.350731, 30.614298, 39.419426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298416, 30.205219, 38.834526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994526, 30.461779, 38.791756>,  <37.812191, 30.615715, 38.766094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994526, 30.461779, 38.791756>,  <38.298416, 30.205219, 38.834526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994526, 30.461779, 38.791756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235507, 0.118143, -0.964665,
		-0.606102, -0.758057, -0.240809,
		-0.759721, 0.641398, -0.106921,
		37.766609, 30.654198, 38.759678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035286, 30.080599, 38.174767>,  <38.298416, 30.205219, 38.834526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035286, 30.080599, 38.174767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873966, 30.438477, 38.251568>,  <37.777172, 30.653204, 38.297649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873966, 30.438477, 38.251568>,  <38.035286, 30.080599, 38.174767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873966, 30.438477, 38.251568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155053, 0.273607, -0.949261,
		-0.901834, -0.353070, -0.249072,
		-0.403304, 0.894696, 0.192004,
		37.752975, 30.706884, 38.309170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608650, 30.300055, 37.496620>,  <38.035286, 30.080599, 38.174767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608650, 30.300055, 37.496620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716263, 30.611422, 37.723488>,  <37.780830, 30.798243, 37.859608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716263, 30.611422, 37.723488>,  <37.608650, 30.300055, 37.496620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716263, 30.611422, 37.723488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315079, 0.485350, -0.815574,
		-0.910136, 0.398120, -0.114688,
		0.269032, 0.778419, 0.567174,
		37.796974, 30.844948, 37.893639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377934, 30.832424, 37.162731>,  <37.608650, 30.300055, 37.496620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377934, 30.832424, 37.162731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674652, 30.971804, 37.391926>,  <37.852684, 31.055431, 37.529442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674652, 30.971804, 37.391926>,  <37.377934, 30.832424, 37.162731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674652, 30.971804, 37.391926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412069, 0.437259, -0.799377,
		-0.529089, 0.829088, 0.180772,
		0.741798, 0.348451, 0.572990,
		37.897190, 31.076340, 37.563824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442837, 31.554211, 36.930489>,  <37.377934, 30.832424, 37.162731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442837, 31.554211, 36.930489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777771, 31.452400, 37.124020>,  <37.978733, 31.391314, 37.240139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777771, 31.452400, 37.124020>,  <37.442837, 31.554211, 36.930489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777771, 31.452400, 37.124020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541161, 0.511427, -0.667523,
		-0.077540, 0.820768, 0.565975,
		0.837337, -0.254524, 0.483823,
		38.028973, 31.376043, 37.269165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775410, 32.153351, 36.943874>,  <37.442837, 31.554211, 36.930489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775410, 32.153351, 36.943874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065266, 31.881624, 36.990231>,  <38.239178, 31.718588, 37.018044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065266, 31.881624, 36.990231>,  <37.775410, 32.153351, 36.943874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065266, 31.881624, 36.990231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584177, 0.516315, -0.626223,
		0.365567, 0.521485, 0.770982,
		0.724636, -0.679317, 0.115892,
		38.282658, 31.677830, 37.024998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366295, 32.595867, 37.172050>,  <37.775410, 32.153351, 36.943874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366295, 32.595867, 37.172050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513718, 32.237057, 37.074471>,  <38.602169, 32.021770, 37.015923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513718, 32.237057, 37.074471>,  <38.366295, 32.595867, 37.172050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513718, 32.237057, 37.074471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790144, 0.440534, -0.426148,
		0.489736, -0.035700, 0.871139,
		0.368553, -0.897026, -0.243954,
		38.624283, 31.967949, 37.001286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059216, 32.665302, 37.441952>,  <38.366295, 32.595867, 37.172050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059216, 32.665302, 37.441952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049747, 32.374577, 37.167381>,  <39.044067, 32.200142, 37.002640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049747, 32.374577, 37.167381>,  <39.059216, 32.665302, 37.441952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049747, 32.374577, 37.167381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871110, 0.321900, -0.370874,
		0.490517, -0.606733, 0.625515,
		-0.023668, -0.726812, -0.686428,
		39.042648, 32.156532, 36.961452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854542, 32.341698, 37.412243>,  <39.059216, 32.665302, 37.441952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854542, 32.341698, 37.412243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646030, 32.284584, 37.075699>,  <39.520924, 32.250317, 36.873772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646030, 32.284584, 37.075699>,  <39.854542, 32.341698, 37.412243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646030, 32.284584, 37.075699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661838, 0.554754, -0.504200,
		0.538738, -0.819671, -0.194681,
		-0.521278, -0.142785, -0.841357,
		39.489647, 32.241749, 36.823292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238316, 31.927319, 37.008991>,  <39.854542, 32.341698, 37.412243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238316, 31.927319, 37.008991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996231, 32.078472, 36.728725>,  <39.850983, 32.169167, 36.560566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996231, 32.078472, 36.728725>,  <40.238316, 31.927319, 37.008991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996231, 32.078472, 36.728725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783544, 0.127263, -0.608163,
		-0.140648, -0.917064, -0.373111,
		-0.605208, 0.377886, -0.700661,
		39.814671, 32.191837, 36.518528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642788, 31.754015, 36.400318>,  <40.238316, 31.927319, 37.008991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642788, 31.754015, 36.400318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390076, 32.042595, 36.286926>,  <40.238449, 32.215744, 36.218891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390076, 32.042595, 36.286926>,  <40.642788, 31.754015, 36.400318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390076, 32.042595, 36.286926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718544, 0.407899, -0.563306,
		-0.290766, -0.559580, -0.776096,
		-0.631784, 0.721449, -0.283480,
		40.200539, 32.259029, 36.201881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736900, 31.876614, 35.674591>,  <40.642788, 31.754015, 36.400318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736900, 31.876614, 35.674591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620197, 32.202469, 35.875088>,  <40.550175, 32.397984, 35.995384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620197, 32.202469, 35.875088>,  <40.736900, 31.876614, 35.674591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620197, 32.202469, 35.875088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737050, 0.525477, -0.425006,
		-0.609616, 0.245438, -0.753743,
		-0.291762, 0.814637, 0.501240,
		40.532669, 32.446861, 36.025459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160397, 31.565016, 35.133018>,  <40.736900, 31.876614, 35.674591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160397, 31.565016, 35.133018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917728, 31.425259, 34.847397>,  <40.772129, 31.341404, 34.676025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917728, 31.425259, 34.847397>,  <41.160397, 31.565016, 35.133018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917728, 31.425259, 34.847397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473610, 0.880278, -0.028342,
		0.638469, 0.320989, -0.699516,
		-0.606672, -0.349394, -0.714054,
		40.735725, 31.320440, 34.633179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052902, 32.153393, 34.697308>,  <41.160397, 31.565016, 35.133018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052902, 32.153393, 34.697308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737759, 31.918152, 34.624191>,  <40.548672, 31.777006, 34.580322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737759, 31.918152, 34.624191>,  <41.052902, 32.153393, 34.697308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737759, 31.918152, 34.624191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581490, 0.808135, -0.093740,
		0.202847, 0.032435, -0.978673,
		-0.787859, -0.588104, -0.182788,
		40.501400, 31.741720, 34.569355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301819, 32.490704, 34.070801>,  <41.052902, 32.153393, 34.697308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301819, 32.490704, 34.070801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525490, 32.426235, 34.396095>,  <41.659691, 32.387554, 34.591270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525490, 32.426235, 34.396095>,  <41.301819, 32.490704, 34.070801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525490, 32.426235, 34.396095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598802, -0.599896, -0.530623,
		0.573376, 0.783677, -0.238939,
		0.559175, -0.161169, 0.813233,
		41.693241, 32.377884, 34.640064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106655, 32.589165, 33.976307>,  <41.301819, 32.490704, 34.070801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106655, 32.589165, 33.976307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037083, 32.303928, 34.247967>,  <41.995338, 32.132786, 34.410961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037083, 32.303928, 34.247967>,  <42.106655, 32.589165, 33.976307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037083, 32.303928, 34.247967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555918, -0.640359, -0.529996,
		0.812837, 0.285368, 0.507800,
		-0.173930, -0.713095, 0.679149,
		41.984905, 32.090000, 34.451710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680508, 32.447548, 34.477058>,  <42.106655, 32.589165, 33.976307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680508, 32.447548, 34.477058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433189, 32.153313, 34.366333>,  <42.284798, 31.976772, 34.299900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433189, 32.153313, 34.366333>,  <42.680508, 32.447548, 34.477058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433189, 32.153313, 34.366333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736365, -0.419067, -0.531177,
		0.274724, -0.532259, 0.800767,
		-0.618299, -0.735584, -0.276809,
		42.247700, 31.932638, 34.283291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102421, 31.848564, 34.512794>,  <42.680508, 32.447548, 34.477058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102421, 31.848564, 34.512794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805359, 31.755255, 34.261700>,  <42.627121, 31.699268, 34.111042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805359, 31.755255, 34.261700>,  <43.102421, 31.848564, 34.512794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805359, 31.755255, 34.261700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641949, -0.514917, -0.568122,
		-0.190702, -0.824890, 0.532155,
		-0.742654, -0.233274, -0.627733,
		42.582561, 31.685272, 34.073380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602428, 31.888027, 34.024700>,  <43.102421, 31.848564, 34.512794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602428, 31.888027, 34.024700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909012, 32.024937, 34.242100>,  <44.092960, 32.107082, 34.372540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909012, 32.024937, 34.242100>,  <43.602428, 31.888027, 34.024700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909012, 32.024937, 34.242100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628321, -0.223980, -0.745014,
		-0.133267, 0.912513, -0.386730,
		0.766455, 0.342276, 0.543502,
		44.138947, 32.127621, 34.405151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818291, 32.437679, 33.643246>,  <43.602428, 31.888027, 34.024700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818291, 32.437679, 33.643246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107174, 32.325375, 33.896095>,  <44.280506, 32.257992, 34.047806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107174, 32.325375, 33.896095>,  <43.818291, 32.437679, 33.643246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107174, 32.325375, 33.896095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683840, 0.152685, -0.713477,
		0.103798, 0.947556, 0.302265,
		0.722211, -0.280758, 0.632129,
		44.323837, 32.241146, 34.085735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352562, 32.828312, 33.531178>,  <43.818291, 32.437679, 33.643246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352562, 32.828312, 33.531178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532875, 32.525024, 33.719601>,  <44.641064, 32.343052, 33.832653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532875, 32.525024, 33.719601>,  <44.352562, 32.828312, 33.531178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532875, 32.525024, 33.719601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642682, -0.090542, -0.760764,
		0.619477, 0.645682, 0.446479,
		0.450787, -0.758219, 0.471057,
		44.668110, 32.297558, 33.860916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063263, 32.867691, 33.468685>,  <44.352562, 32.828312, 33.531178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063263, 32.867691, 33.468685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014679, 32.478363, 33.546562>,  <44.985527, 32.244766, 33.593288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014679, 32.478363, 33.546562>,  <45.063263, 32.867691, 33.468685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014679, 32.478363, 33.546562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529451, -0.229439, -0.816725,
		0.839601, 0.003881, 0.543190,
		-0.121460, -0.973315, 0.194692,
		44.978241, 32.186367, 33.604969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667282, 32.595917, 33.292339>,  <45.063263, 32.867691, 33.468685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667282, 32.595917, 33.292339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431934, 32.272488, 33.294884>,  <45.290726, 32.078430, 33.296410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431934, 32.272488, 33.294884>,  <45.667282, 32.595917, 33.292339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431934, 32.272488, 33.294884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455709, -0.338085, -0.823424,
		0.667948, -0.481574, 0.567390,
		-0.588365, -0.808570, 0.006366,
		45.255424, 32.029915, 33.296795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.158005, 32.009354, 33.145092>,  <45.667282, 32.595917, 33.292339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.158005, 32.009354, 33.145092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803379, 31.850683, 33.049889>,  <45.590603, 31.755482, 32.992767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.803379, 31.850683, 33.049889>,  <46.158005, 32.009354, 33.145092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.803379, 31.850683, 33.049889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261230, -0.004670, -0.965265,
		0.381782, -0.917949, 0.107763,
		-0.886567, -0.396672, -0.238013,
		45.537407, 31.731682, 32.978485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239388, 31.413588, 32.703701>,  <46.158005, 32.009354, 33.145092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239388, 31.413588, 32.703701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858330, 31.515760, 32.637703>,  <45.629696, 31.577065, 32.598106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.858330, 31.515760, 32.637703>,  <46.239388, 31.413588, 32.703701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858330, 31.515760, 32.637703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105847, -0.230113, -0.967391,
		-0.285073, -0.939042, 0.192178,
		-0.952644, 0.255436, -0.164994,
		45.572536, 31.592390, 32.588203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.057758, 30.890177, 32.298206>,  <46.239388, 31.413588, 32.703701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.057758, 30.890177, 32.298206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795376, 31.182299, 32.221920>,  <45.637947, 31.357573, 32.176147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795376, 31.182299, 32.221920>,  <46.057758, 30.890177, 32.298206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795376, 31.182299, 32.221920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116891, -0.151329, -0.981548,
		-0.745690, -0.666149, 0.013899,
		-0.655960, 0.730305, -0.190711,
		45.598587, 31.401390, 32.164707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604519, 30.581606, 31.939255>,  <46.057758, 30.890177, 32.298206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604519, 30.581606, 31.939255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553696, 30.969965, 31.858051>,  <45.523201, 31.202980, 31.809330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.553696, 30.969965, 31.858051>,  <45.604519, 30.581606, 31.939255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.553696, 30.969965, 31.858051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075500, -0.194607, -0.977971,
		-0.989018, -0.139583, -0.048577,
		-0.127055, 0.970899, -0.203009,
		45.515579, 31.261234, 31.797148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.169781, 30.563362, 31.392752>,  <45.604519, 30.581606, 31.939255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.169781, 30.563362, 31.392752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358093, 30.915737, 31.373478>,  <45.471081, 31.127161, 31.361914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358093, 30.915737, 31.373478>,  <45.169781, 30.563362, 31.392752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358093, 30.915737, 31.373478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042935, -0.077426, -0.996073,
		-0.881207, 0.466860, -0.074273,
		0.470777, 0.880935, -0.048184,
		45.499325, 31.180017, 31.359022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818077, 30.986206, 30.813030>,  <45.169781, 30.563362, 31.392752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818077, 30.986206, 30.813030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175823, 31.152960, 30.877924>,  <45.390472, 31.253012, 30.916861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175823, 31.152960, 30.877924>,  <44.818077, 30.986206, 30.813030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175823, 31.152960, 30.877924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155148, 0.051081, -0.986570,
		-0.419572, 0.907523, -0.018994,
		0.894365, 0.416884, 0.162233,
		45.444134, 31.278025, 30.926594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834026, 31.513491, 30.361166>,  <44.818077, 30.986206, 30.813030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834026, 31.513491, 30.361166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222912, 31.467730, 30.442869>,  <45.456242, 31.440273, 30.491890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222912, 31.467730, 30.442869>,  <44.834026, 31.513491, 30.361166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222912, 31.467730, 30.442869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220411, 0.153174, -0.963305,
		0.078920, 0.981555, 0.174133,
		0.972209, -0.114405, 0.204257,
		45.514576, 31.433409, 30.504147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143002, 32.070614, 30.122326>,  <44.834026, 31.513491, 30.361166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143002, 32.070614, 30.122326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441906, 31.805155, 30.136017>,  <45.621250, 31.645880, 30.144232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.441906, 31.805155, 30.136017>,  <45.143002, 32.070614, 30.122326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441906, 31.805155, 30.136017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269853, 0.255980, -0.928253,
		0.607270, 0.702886, 0.370371,
		0.747263, -0.663646, 0.034227,
		45.666084, 31.606060, 30.146284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716335, 32.423943, 29.829193>,  <45.143002, 32.070614, 30.122326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716335, 32.423943, 29.829193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795738, 32.033028, 29.799505>,  <45.843380, 31.798479, 29.781693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.795738, 32.033028, 29.799505>,  <45.716335, 32.423943, 29.829193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.795738, 32.033028, 29.799505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271913, 0.127671, -0.953815,
		0.941625, 0.169160, 0.291080,
		0.198510, -0.977284, -0.074222,
		45.855289, 31.739841, 29.777239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.243732, 32.426079, 29.302896>,  <45.716335, 32.423943, 29.829193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.243732, 32.426079, 29.302896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133415, 32.041859, 29.317169>,  <46.067226, 31.811325, 29.325733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133415, 32.041859, 29.317169>,  <46.243732, 32.426079, 29.302896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133415, 32.041859, 29.317169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213017, -0.097277, -0.972194,
		0.937316, -0.260524, 0.231442,
		-0.275794, -0.960554, 0.035683,
		46.050678, 31.753693, 29.327873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.755672, 31.963120, 28.954596>,  <46.243732, 32.426079, 29.302896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.755672, 31.963120, 28.954596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391563, 31.798372, 28.971405>,  <46.173096, 31.699524, 28.981491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391563, 31.798372, 28.971405>,  <46.755672, 31.963120, 28.954596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391563, 31.798372, 28.971405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039940, -0.188397, -0.981281,
		0.412075, -0.891556, 0.187943,
		-0.910274, -0.411867, 0.042025,
		46.118481, 31.674812, 28.984013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.813908, 31.438410, 28.570467>,  <46.755672, 31.963120, 28.954596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.813908, 31.438410, 28.570467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.415264, 31.471035, 28.566057>,  <46.176079, 31.490610, 28.563412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.415264, 31.471035, 28.566057>,  <46.813908, 31.438410, 28.570467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.415264, 31.471035, 28.566057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004669, -0.189735, -0.981824,
		-0.082171, -0.978442, 0.189472,
		-0.996607, 0.081562, -0.011022,
		46.116283, 31.495504, 28.562750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592411, 30.953283, 28.040808>,  <46.813908, 31.438410, 28.570467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592411, 30.953283, 28.040808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274578, 31.190634, 28.092260>,  <46.083878, 31.333044, 28.123131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.274578, 31.190634, 28.092260>,  <46.592411, 30.953283, 28.040808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.274578, 31.190634, 28.092260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195735, -0.049796, -0.979392,
		-0.574742, -0.803384, 0.155711,
		-0.794581, 0.593376, 0.128630,
		46.036205, 31.368647, 28.130850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069168, 30.686541, 27.537544>,  <46.592411, 30.953283, 28.040808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069168, 30.686541, 27.537544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938786, 31.050571, 27.639929>,  <45.860558, 31.268990, 27.701359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938786, 31.050571, 27.639929>,  <46.069168, 30.686541, 27.537544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938786, 31.050571, 27.639929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197803, 0.199102, -0.959808,
		-0.924460, -0.363486, 0.115117,
		-0.325956, 0.910075, 0.255961,
		45.841000, 31.323593, 27.716717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.456654, 30.804686, 27.125917>,  <46.069168, 30.686541, 27.537544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.456654, 30.804686, 27.125917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606274, 31.166306, 27.208654>,  <45.696045, 31.383278, 27.258297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.606274, 31.166306, 27.208654>,  <45.456654, 30.804686, 27.125917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606274, 31.166306, 27.208654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076744, 0.252440, -0.964564,
		-0.924228, 0.344920, 0.163805,
		0.374049, 0.904049, 0.206842,
		45.718487, 31.437521, 27.270706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105759, 31.079302, 26.605049>,  <45.456654, 30.804686, 27.125917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105759, 31.079302, 26.605049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378384, 31.353661, 26.707043>,  <45.541958, 31.518276, 26.768238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378384, 31.353661, 26.707043>,  <45.105759, 31.079302, 26.605049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378384, 31.353661, 26.707043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157499, 0.477788, -0.864241,
		-0.714606, 0.548877, 0.433672,
		0.681566, 0.685895, 0.254982,
		45.582851, 31.559429, 26.783537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772064, 31.765726, 26.464338>,  <45.105759, 31.079302, 26.605049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772064, 31.765726, 26.464338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171780, 31.777075, 26.454412>,  <45.411610, 31.783884, 26.448458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171780, 31.777075, 26.454412>,  <44.772064, 31.765726, 26.464338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171780, 31.777075, 26.454412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034912, 0.448551, -0.893075,
		-0.014206, 0.893307, 0.449223,
		0.999289, 0.028370, -0.024815,
		45.471565, 31.785585, 26.446968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009983, 32.473537, 26.479719>,  <44.772064, 31.765726, 26.464338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009983, 32.473537, 26.479719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292347, 32.260067, 26.293436>,  <45.461765, 32.131985, 26.181665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292347, 32.260067, 26.293436>,  <45.009983, 32.473537, 26.479719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292347, 32.260067, 26.293436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018758, 0.643183, -0.765482,
		0.708053, 0.549098, 0.444019,
		0.705911, -0.533673, -0.465707,
		45.504120, 32.099964, 26.153725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472610, 32.889950, 26.312338>,  <45.009983, 32.473537, 26.479719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472610, 32.889950, 26.312338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578384, 32.590900, 26.068653>,  <45.641850, 32.411472, 25.922443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.578384, 32.590900, 26.068653>,  <45.472610, 32.889950, 26.312338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578384, 32.590900, 26.068653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299442, 0.536826, -0.788766,
		0.916739, 0.390997, -0.081916,
		0.264431, -0.747622, -0.609211,
		45.657715, 32.366615, 25.885889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.908146, 33.274513, 26.799185>,  <45.472610, 32.889950, 26.312338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.908146, 33.274513, 26.799185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936020, 33.587746, 27.046385>,  <45.952744, 33.775684, 27.194706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936020, 33.587746, 27.046385>,  <45.908146, 33.274513, 26.799185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936020, 33.587746, 27.046385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651677, 0.433310, -0.622543,
		-0.755288, 0.446122, -0.480119,
		0.069690, 0.783082, 0.618002,
		45.956928, 33.822670, 27.231785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968452, 33.985432, 26.610571>,  <45.908146, 33.274513, 26.799185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968452, 33.985432, 26.610571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300884, 33.821522, 26.760983>,  <46.500343, 33.723175, 26.851231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300884, 33.821522, 26.760983>,  <45.968452, 33.985432, 26.610571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.300884, 33.821522, 26.760983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495633, 0.238957, -0.835013,
		0.252311, 0.880333, 0.401689,
		0.831076, -0.409773, 0.376031,
		46.550205, 33.698589, 26.873791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605976, 34.522903, 26.074484>,  <45.968452, 33.985432, 26.610571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605976, 34.522903, 26.074484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851944, 34.773022, 26.266685>,  <45.999523, 34.923092, 26.382006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851944, 34.773022, 26.266685>,  <45.605976, 34.522903, 26.074484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851944, 34.773022, 26.266685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139206, 0.685822, -0.714332,
		-0.776206, 0.372368, 0.508770,
		0.614919, 0.625293, 0.480503,
		46.036419, 34.960609, 26.410837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208031, 35.039928, 26.375410>,  <45.605976, 34.522903, 26.074484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208031, 35.039928, 26.375410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575310, 35.159348, 26.271271>,  <45.795677, 35.230999, 26.208788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575310, 35.159348, 26.271271>,  <45.208031, 35.039928, 26.375410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575310, 35.159348, 26.271271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396078, 0.701225, -0.592795,
		0.005585, 0.647422, 0.762111,
		0.918200, 0.298545, -0.260346,
		45.850769, 35.248913, 26.193167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.450039, 35.730988, 26.665579>,  <45.208031, 35.039928, 26.375410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.450039, 35.730988, 26.665579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531887, 35.615749, 26.291386>,  <45.580997, 35.546604, 26.066870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531887, 35.615749, 26.291386>,  <45.450039, 35.730988, 26.665579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531887, 35.615749, 26.291386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361868, 0.865734, -0.345770,
		0.909495, 0.409274, 0.072893,
		0.204621, -0.288099, -0.935484,
		45.593273, 35.529320, 26.010740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.284149, 35.149044, 27.097820>,  <45.450039, 35.730988, 26.665579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.284149, 35.149044, 27.097820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885601, 35.183037, 27.099934>,  <44.646473, 35.203434, 27.101202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885601, 35.183037, 27.099934>,  <45.284149, 35.149044, 27.097820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885601, 35.183037, 27.099934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005123, -0.002118, 0.999985,
		0.084994, 0.996380, 0.001675,
		-0.996368, 0.084984, 0.005284,
		44.586689, 35.208530, 27.101519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098221, 35.695408, 27.480265>,  <45.284149, 35.149044, 27.097820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098221, 35.695408, 27.480265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822701, 35.408169, 27.520031>,  <44.657387, 35.235825, 27.543890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822701, 35.408169, 27.520031>,  <45.098221, 35.695408, 27.480265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822701, 35.408169, 27.520031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137940, 0.004805, 0.990429,
		-0.711704, 0.695924, 0.095745,
		-0.688803, -0.718099, 0.099416,
		44.616058, 35.192738, 27.549856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415989, 35.843666, 27.900848>,  <45.098221, 35.695408, 27.480265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415989, 35.843666, 27.900848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519299, 35.457737, 27.920464>,  <44.581284, 35.226177, 27.932232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519299, 35.457737, 27.920464>,  <44.415989, 35.843666, 27.900848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519299, 35.457737, 27.920464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045832, 0.062940, 0.996964,
		-0.964985, -0.255238, 0.060475,
		0.258270, -0.964827, 0.049038,
		44.596779, 35.168289, 27.935175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192509, 35.590828, 28.538433>,  <44.415989, 35.843666, 27.900848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192509, 35.590828, 28.538433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423496, 35.276302, 28.450573>,  <44.562088, 35.087589, 28.397858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423496, 35.276302, 28.450573>,  <44.192509, 35.590828, 28.538433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423496, 35.276302, 28.450573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096134, -0.201682, 0.974722,
		-0.810733, -0.583988, -0.040874,
		0.577469, -0.786310, -0.219651,
		44.596737, 35.040409, 28.384678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973175, 34.881832, 28.941362>,  <44.192509, 35.590828, 28.538433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973175, 34.881832, 28.941362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352894, 34.826912, 28.828236>,  <44.580727, 34.793961, 28.760359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.352894, 34.826912, 28.828236>,  <43.973175, 34.881832, 28.941362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.352894, 34.826912, 28.828236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258738, -0.169809, 0.950905,
		-0.178599, -0.975863, -0.125670,
		0.949293, -0.137315, -0.282821,
		44.637684, 34.785721, 28.743389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106968, 34.179562, 29.243856>,  <43.973175, 34.881832, 28.941362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106968, 34.179562, 29.243856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450848, 34.376194, 29.188334>,  <44.657173, 34.494175, 29.155020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450848, 34.376194, 29.188334>,  <44.106968, 34.179562, 29.243856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450848, 34.376194, 29.188334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345317, -0.359066, 0.867080,
		0.376404, -0.793356, -0.478441,
		0.859695, 0.491586, -0.138805,
		44.708755, 34.523670, 29.146692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512142, 33.847473, 29.587427>,  <44.106968, 34.179562, 29.243856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512142, 33.847473, 29.587427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747787, 34.166779, 29.537287>,  <44.889175, 34.358364, 29.507202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747787, 34.166779, 29.537287>,  <44.512142, 33.847473, 29.587427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747787, 34.166779, 29.537287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371109, -0.129483, 0.919517,
		0.717789, -0.588221, -0.372525,
		0.589115, 0.798267, -0.125353,
		44.924522, 34.406258, 29.499681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226921, 33.621403, 29.766146>,  <44.512142, 33.847473, 29.587427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226921, 33.621403, 29.766146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211872, 34.018955, 29.807695>,  <45.202843, 34.257484, 29.832626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211872, 34.018955, 29.807695>,  <45.226921, 33.621403, 29.766146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211872, 34.018955, 29.807695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456715, -0.075354, 0.886416,
		0.888817, 0.080795, -0.451084,
		-0.037627, 0.993878, 0.103876,
		45.200584, 34.317120, 29.838858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918022, 33.815781, 30.135693>,  <45.226921, 33.621403, 29.766146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918022, 33.815781, 30.135693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672592, 34.127167, 30.188623>,  <45.525333, 34.313999, 30.220383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672592, 34.127167, 30.188623>,  <45.918022, 33.815781, 30.135693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672592, 34.127167, 30.188623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342497, 0.111371, 0.932895,
		0.711493, 0.617723, -0.334958,
		-0.613575, 0.778470, 0.132329,
		45.488522, 34.360706, 30.228321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.298302, 34.360226, 30.418728>,  <45.918022, 33.815781, 30.135693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.298302, 34.360226, 30.418728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922298, 34.472878, 30.495749>,  <45.696697, 34.540466, 30.541960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922298, 34.472878, 30.495749>,  <46.298302, 34.360226, 30.418728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922298, 34.472878, 30.495749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248748, 0.179519, 0.951786,
		0.233481, 0.942581, -0.238803,
		-0.940006, 0.281625, 0.192551,
		45.640297, 34.557365, 30.553514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.459892, 34.953373, 30.732700>,  <46.298302, 34.360226, 30.418728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.459892, 34.953373, 30.732700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089123, 34.835670, 30.825840>,  <45.866661, 34.765049, 30.881723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089123, 34.835670, 30.825840>,  <46.459892, 34.953373, 30.732700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089123, 34.835670, 30.825840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156760, 0.260133, 0.952763,
		-0.340929, 0.919643, -0.194997,
		-0.926927, -0.294257, 0.232850,
		45.811043, 34.747395, 30.895695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.179810, 35.560406, 31.086466>,  <46.459892, 34.953373, 30.732700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.179810, 35.560406, 31.086466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953564, 35.244522, 31.181496>,  <45.817818, 35.054993, 31.238514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.953564, 35.244522, 31.181496>,  <46.179810, 35.560406, 31.086466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.953564, 35.244522, 31.181496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067146, 0.243026, 0.967693,
		-0.821934, 0.563290, -0.084432,
		-0.565611, -0.789711, 0.237574,
		45.783882, 35.007610, 31.252768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790344, 35.759956, 31.645550>,  <46.179810, 35.560406, 31.086466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790344, 35.759956, 31.645550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763542, 35.362328, 31.679792>,  <45.747463, 35.123749, 31.700338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763542, 35.362328, 31.679792>,  <45.790344, 35.759956, 31.645550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763542, 35.362328, 31.679792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165196, 0.073561, 0.983514,
		-0.983982, 0.080039, 0.159288,
		-0.067002, -0.994074, 0.085605,
		45.743443, 35.064106, 31.705473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259918, 35.568550, 32.235302>,  <45.790344, 35.759956, 31.645550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259918, 35.568550, 32.235302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515457, 35.267265, 32.172638>,  <45.668781, 35.086494, 32.135040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515457, 35.267265, 32.172638>,  <45.259918, 35.568550, 32.235302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515457, 35.267265, 32.172638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130482, -0.094600, 0.986927,
		-0.758185, -0.650940, 0.037845,
		0.638850, -0.753211, -0.156660,
		45.707111, 35.041302, 32.125641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107975, 35.085503, 32.761459>,  <45.259918, 35.568550, 32.235302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107975, 35.085503, 32.761459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473385, 34.977856, 32.639446>,  <45.692631, 34.913265, 32.566238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.473385, 34.977856, 32.639446>,  <45.107975, 35.085503, 32.761459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473385, 34.977856, 32.639446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200814, -0.353754, 0.913527,
		-0.353754, -0.895786, -0.269121,
		-0.913527, 0.269121, 0.305028,
		45.747444, 34.897118, 32.547939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152771, 34.411396, 32.961250>,  <45.107975, 35.085503, 32.761459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152771, 34.411396, 32.961250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543087, 34.496288, 32.940094>,  <45.777275, 34.547226, 32.927399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.543087, 34.496288, 32.940094>,  <45.152771, 34.411396, 32.961250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.543087, 34.496288, 32.940094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169435, -0.580514, 0.796426,
		0.138323, -0.786104, -0.602418,
		0.975786, 0.212235, -0.052895,
		45.835823, 34.559959, 32.924225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540623, 33.752876, 33.017632>,  <45.152771, 34.411396, 32.961250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540623, 33.752876, 33.017632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797604, 34.045429, 33.109127>,  <45.951794, 34.220963, 33.164024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797604, 34.045429, 33.109127>,  <45.540623, 33.752876, 33.017632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797604, 34.045429, 33.109127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426590, -0.589301, 0.686109,
		0.636609, -0.343216, -0.690603,
		0.642457, 0.731387, 0.228741,
		45.990341, 34.264847, 33.177750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100216, 33.417362, 33.087006>,  <45.540623, 33.752876, 33.017632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100216, 33.417362, 33.087006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188423, 33.755962, 33.280834>,  <46.241348, 33.959122, 33.397129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.188423, 33.755962, 33.280834>,  <46.100216, 33.417362, 33.087006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188423, 33.755962, 33.280834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350122, -0.532384, 0.770702,
		0.910378, -0.000294, -0.413778,
		0.220515, 0.846503, 0.484568,
		46.254578, 34.009914, 33.426205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721359, 33.278744, 33.392292>,  <46.100216, 33.417362, 33.087006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721359, 33.278744, 33.392292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572983, 33.587070, 33.599461>,  <46.483955, 33.772064, 33.723763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.572983, 33.587070, 33.599461>,  <46.721359, 33.278744, 33.392292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.572983, 33.587070, 33.599461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241278, -0.458567, 0.855278,
		0.896764, 0.442224, -0.015878,
		-0.370944, 0.770814, 0.517926,
		46.461700, 33.818314, 33.754837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081337, 33.334141, 33.978237>,  <46.721359, 33.278744, 33.392292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081337, 33.334141, 33.978237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787144, 33.588638, 34.071411>,  <46.610626, 33.741337, 34.127316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.787144, 33.588638, 34.071411>,  <47.081337, 33.334141, 33.978237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.787144, 33.588638, 34.071411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222889, -0.097451, 0.969961,
		0.639832, 0.765307, -0.070139,
		-0.735483, 0.636245, 0.232931,
		46.566498, 33.779510, 34.141289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.330601, 33.906914, 34.406841>,  <47.081337, 33.334141, 33.978237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.330601, 33.906914, 34.406841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948391, 33.923870, 34.523575>,  <46.719063, 33.934044, 34.593616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948391, 33.923870, 34.523575>,  <47.330601, 33.906914, 34.406841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948391, 33.923870, 34.523575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283381, -0.141895, 0.948452,
		0.081611, 0.988974, 0.123573,
		-0.955529, 0.042386, 0.291836,
		46.661732, 33.936584, 34.611126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.301823, 34.188946, 35.077263>,  <47.330601, 33.906914, 34.406841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.301823, 34.188946, 35.077263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969627, 33.974190, 35.017879>,  <46.770309, 33.845337, 34.982250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969627, 33.974190, 35.017879>,  <47.301823, 34.188946, 35.077263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969627, 33.974190, 35.017879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059647, -0.179274, 0.981989,
		-0.553838, 0.824383, 0.116860,
		-0.830485, -0.536892, -0.148461,
		46.720482, 33.813122, 34.973343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041874, 33.748222, 35.618378>,  <47.301823, 34.188946, 35.077263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041874, 33.748222, 35.618378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950359, 33.713600, 36.006226>,  <46.895451, 33.692829, 36.238934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950359, 33.713600, 36.006226>,  <47.041874, 33.748222, 35.618378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950359, 33.713600, 36.006226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637553, 0.739381, 0.216430,
		-0.735652, 0.667701, -0.113976,
		-0.228782, -0.086551, 0.969622,
		46.881725, 33.687634, 36.297112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.976669, 34.438080, 35.886471>,  <47.041874, 33.748222, 35.618378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.976669, 34.438080, 35.886471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005024, 34.195694, 36.203400>,  <47.022038, 34.050262, 36.393559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005024, 34.195694, 36.203400>,  <46.976669, 34.438080, 35.886471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.005024, 34.195694, 36.203400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604950, 0.657685, 0.448871,
		-0.793101, 0.447496, 0.413204,
		0.070890, -0.605968, 0.792324,
		47.026291, 34.013905, 36.441097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.505646, 34.925709, 36.168858>,  <46.976669, 34.438080, 35.886471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.505646, 34.925709, 36.168858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843044, 34.751247, 36.043453>,  <48.045483, 34.646572, 35.968208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.843044, 34.751247, 36.043453>,  <47.505646, 34.925709, 36.168858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.843044, 34.751247, 36.043453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322898, 0.054708, -0.944851,
		0.429250, 0.898209, -0.094687,
		0.843494, -0.436152, -0.313513,
		48.096092, 34.620403, 35.949398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.807209, 35.448170, 35.720478>,  <47.505646, 34.925709, 36.168858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.807209, 35.448170, 35.720478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.861771, 35.060287, 35.639420>,  <47.894508, 34.827557, 35.590786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.861771, 35.060287, 35.639420>,  <47.807209, 35.448170, 35.720478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.861771, 35.060287, 35.639420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577995, 0.088227, -0.811257,
		0.804558, 0.227789, -0.548450,
		0.136407, -0.969705, -0.202645,
		47.902695, 34.769375, 35.578625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.061768, 35.262585, 34.938644>,  <47.807209, 35.448170, 35.720478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.061768, 35.262585, 34.938644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.867176, 34.952473, 35.099785>,  <47.750420, 34.766407, 35.196468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.867176, 34.952473, 35.099785>,  <48.061768, 35.262585, 34.938644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.867176, 34.952473, 35.099785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713840, 0.086843, -0.694903,
		0.503758, -0.625623, -0.595671,
		-0.486478, -0.775277, 0.402847,
		47.721233, 34.719891, 35.220638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.874607, 35.372597, 44.188572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510059, 35.211788, 44.153271>,  <35.291332, 35.115303, 44.132088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510059, 35.211788, 44.153271>,  <35.874607, 35.372597, 44.188572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510059, 35.211788, 44.153271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103897, -0.017217, -0.994439,
		0.398266, -0.915468, 0.057460,
		-0.911366, -0.402022, -0.088257,
		35.236649, 35.091183, 44.126793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991169, 34.843853, 43.693279>,  <35.874607, 35.372597, 44.188572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991169, 34.843853, 43.693279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600063, 34.927559, 43.698849>,  <35.365402, 34.977783, 43.702190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600063, 34.927559, 43.698849>,  <35.991169, 34.843853, 43.693279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600063, 34.927559, 43.698849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016634, -0.011209, -0.999799,
		-0.209065, -0.977795, 0.014440,
		-0.977761, 0.209263, 0.013921,
		35.306736, 34.990337, 43.703026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709160, 34.474712, 43.092602>,  <35.991169, 34.843853, 43.693279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709160, 34.474712, 43.092602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.427338, 34.736538, 43.202255>,  <35.258244, 34.893635, 43.268047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.427338, 34.736538, 43.202255>,  <35.709160, 34.474712, 43.092602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427338, 34.736538, 43.202255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365790, -0.003957, -0.930689,
		-0.608110, -0.755997, 0.242221,
		-0.704556, 0.654563, 0.274130,
		35.215969, 34.932907, 43.284492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108173, 34.223621, 42.928604>,  <35.709160, 34.474712, 43.092602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108173, 34.223621, 42.928604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054989, 34.618946, 42.958439>,  <35.023079, 34.856140, 42.976341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054989, 34.618946, 42.958439>,  <35.108173, 34.223621, 42.928604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054989, 34.618946, 42.958439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252533, 0.038990, -0.966802,
		-0.958410, -0.147380, 0.244397,
		-0.132958, 0.988311, 0.074587,
		35.015102, 34.915440, 42.980816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447651, 34.371090, 42.622520>,  <35.108173, 34.223621, 42.928604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447651, 34.371090, 42.622520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643162, 34.718948, 42.594749>,  <34.760468, 34.927662, 42.578087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.643162, 34.718948, 42.594749>,  <34.447651, 34.371090, 42.622520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643162, 34.718948, 42.594749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249250, 0.062934, -0.966392,
		-0.836046, 0.489655, 0.247519,
		0.488776, 0.869642, -0.069431,
		34.789795, 34.979839, 42.573921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001484, 34.730934, 42.167847>,  <34.447651, 34.371090, 42.622520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001484, 34.730934, 42.167847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351768, 34.924068, 42.168396>,  <34.561939, 35.039948, 42.168724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.351768, 34.924068, 42.168396>,  <34.001484, 34.730934, 42.167847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351768, 34.924068, 42.168396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132959, 0.243880, -0.960648,
		-0.464168, 0.841067, 0.277765,
		0.875711, 0.482833, 0.001374,
		34.614483, 35.068920, 42.168808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919415, 35.380428, 41.637230>,  <34.001484, 34.730934, 42.167847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919415, 35.380428, 41.637230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314842, 35.338795, 41.680859>,  <34.552097, 35.313816, 41.707035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314842, 35.338795, 41.680859>,  <33.919415, 35.380428, 41.637230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314842, 35.338795, 41.680859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128468, 0.202907, -0.970734,
		0.078903, 0.973651, 0.213959,
		0.988570, -0.104081, 0.109073,
		34.611412, 35.307571, 41.713581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194912, 35.892281, 41.101513>,  <33.919415, 35.380428, 41.637230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194912, 35.892281, 41.101513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.474308, 35.617760, 41.182613>,  <34.641945, 35.453049, 41.231274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.474308, 35.617760, 41.182613>,  <34.194912, 35.892281, 41.101513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474308, 35.617760, 41.182613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132344, -0.154550, -0.979081,
		0.703277, 0.710709, -0.017124,
		0.698488, -0.686299, 0.202749,
		34.683853, 35.411869, 41.243439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847755, 36.031040, 40.761532>,  <34.194912, 35.892281, 41.101513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847755, 36.031040, 40.761532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854961, 35.635063, 40.817646>,  <34.859283, 35.397476, 40.851315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.854961, 35.635063, 40.817646>,  <34.847755, 36.031040, 40.761532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854961, 35.635063, 40.817646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323293, -0.127005, -0.937738,
		0.946128, 0.062242, 0.317755,
		0.018010, -0.989947, 0.140286,
		34.860363, 35.338078, 40.859734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524509, 35.784733, 40.519329>,  <34.847755, 36.031040, 40.761532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524509, 35.784733, 40.519329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.280910, 35.467648, 40.530178>,  <35.134750, 35.277397, 40.536690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.280910, 35.467648, 40.530178>,  <35.524509, 35.784733, 40.519329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280910, 35.467648, 40.530178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288783, -0.253448, -0.923238,
		0.738737, -0.554412, 0.383270,
		-0.608993, -0.792711, 0.027127,
		35.098213, 35.229836, 40.538315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952297, 35.278584, 40.479733>,  <35.524509, 35.784733, 40.519329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952297, 35.278584, 40.479733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.590172, 35.158138, 40.359901>,  <35.372898, 35.085873, 40.288002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.590172, 35.158138, 40.359901>,  <35.952297, 35.278584, 40.479733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590172, 35.158138, 40.359901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390336, -0.311689, -0.866307,
		0.167479, -0.901212, 0.399709,
		-0.905311, -0.301109, -0.299575,
		35.318577, 35.067806, 40.270027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089275, 34.644058, 40.006439>,  <35.952297, 35.278584, 40.479733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089275, 34.644058, 40.006439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.703136, 34.731152, 39.948895>,  <35.471455, 34.783405, 39.914368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.703136, 34.731152, 39.948895>,  <36.089275, 34.644058, 40.006439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703136, 34.731152, 39.948895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047911, -0.394031, -0.917847,
		-0.256530, -0.892935, 0.369946,
		-0.965348, 0.217730, -0.143862,
		35.413532, 34.796471, 39.905735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780060, 34.050507, 39.761341>,  <36.089275, 34.644058, 40.006439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780060, 34.050507, 39.761341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564663, 34.359688, 39.627136>,  <35.435425, 34.545197, 39.546612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.564663, 34.359688, 39.627136>,  <35.780060, 34.050507, 39.761341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564663, 34.359688, 39.627136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133263, -0.315043, -0.939675,
		-0.832025, -0.550721, 0.066644,
		-0.538495, 0.772951, -0.335514,
		35.403114, 34.591572, 39.526482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437572, 33.799873, 39.147900>,  <35.780060, 34.050507, 39.761341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437572, 33.799873, 39.147900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413002, 34.198914, 39.135147>,  <35.398262, 34.438339, 39.127495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413002, 34.198914, 39.135147>,  <35.437572, 33.799873, 39.147900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413002, 34.198914, 39.135147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099764, -0.025647, -0.994681,
		-0.993113, -0.064276, -0.097950,
		-0.061422, 0.997602, -0.031882,
		35.394577, 34.498196, 39.125584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997883, 33.943401, 38.574329>,  <35.437572, 33.799873, 39.147900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997883, 33.943401, 38.574329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215714, 34.268406, 38.657528>,  <35.346413, 34.463409, 38.707447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.215714, 34.268406, 38.657528>,  <34.997883, 33.943401, 38.574329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215714, 34.268406, 38.657528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252555, 0.077617, -0.964464,
		-0.799782, 0.577755, -0.162935,
		0.544578, 0.812511, 0.207992,
		35.379086, 34.512157, 38.719925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846939, 34.428398, 38.054787>,  <34.997883, 33.943401, 38.574329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846939, 34.428398, 38.054787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.197441, 34.549965, 38.204353>,  <35.407742, 34.622906, 38.294090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.197441, 34.549965, 38.204353>,  <34.846939, 34.428398, 38.054787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197441, 34.549965, 38.204353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315556, 0.224495, -0.921969,
		-0.364140, 0.925872, 0.100814,
		0.876257, 0.303913, 0.373912,
		35.460320, 34.641140, 38.316528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935120, 35.093506, 37.794388>,  <34.846939, 34.428398, 38.054787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935120, 35.093506, 37.794388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298546, 34.949959, 37.879921>,  <35.516602, 34.863831, 37.931240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.298546, 34.949959, 37.879921>,  <34.935120, 35.093506, 37.794388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298546, 34.949959, 37.879921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280583, 0.145024, -0.948811,
		0.309485, 0.922054, 0.232455,
		0.908566, -0.358865, 0.213830,
		35.571117, 34.842300, 37.944069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419109, 35.534962, 37.313255>,  <34.935120, 35.093506, 37.794388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419109, 35.534962, 37.313255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625076, 35.215065, 37.436718>,  <35.748657, 35.023125, 37.510796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.625076, 35.215065, 37.436718>,  <35.419109, 35.534962, 37.313255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625076, 35.215065, 37.436718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429490, -0.070931, -0.900282,
		0.741890, 0.596133, 0.306960,
		0.514915, -0.799746, 0.308657,
		35.779552, 34.975140, 37.529316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011147, 35.765545, 37.171024>,  <35.419109, 35.534962, 37.313255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011147, 35.765545, 37.171024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033897, 35.368523, 37.214115>,  <36.047546, 35.130310, 37.239971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033897, 35.368523, 37.214115>,  <36.011147, 35.765545, 37.171024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033897, 35.368523, 37.214115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485469, -0.066796, -0.871698,
		0.872402, 0.101878, 0.478054,
		0.056875, -0.992552, 0.107732,
		36.050961, 35.070759, 37.246433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676830, 35.634766, 37.101131>,  <36.011147, 35.765545, 37.171024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676830, 35.634766, 37.101131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489811, 35.289871, 37.023205>,  <36.377602, 35.082935, 36.976448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489811, 35.289871, 37.023205>,  <36.676830, 35.634766, 37.101131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489811, 35.289871, 37.023205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441374, -0.036759, -0.896570,
		0.765892, -0.505174, 0.397754,
		-0.467545, -0.862234, -0.194818,
		36.349548, 35.031200, 36.964760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201790, 35.222679, 36.764633>,  <36.676830, 35.634766, 37.101131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201790, 35.222679, 36.764633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861568, 35.040264, 36.659874>,  <36.657436, 34.930817, 36.597019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.861568, 35.040264, 36.659874>,  <37.201790, 35.222679, 36.764633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861568, 35.040264, 36.659874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230982, 0.123451, -0.965094,
		0.472450, -0.881357, 0.000334,
		-0.850552, -0.456036, -0.261902,
		36.606403, 34.903454, 36.581303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384529, 34.638706, 36.519306>,  <37.201790, 35.222679, 36.764633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384529, 34.638706, 36.519306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030922, 34.737541, 36.360584>,  <36.818756, 34.796841, 36.265350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030922, 34.737541, 36.360584>,  <37.384529, 34.638706, 36.519306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030922, 34.737541, 36.360584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435846, 0.128858, -0.890749,
		-0.168960, -0.960387, -0.221605,
		-0.884020, 0.247086, -0.396809,
		36.765717, 34.811668, 36.241543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774765, 34.957943, 37.074635>,  <37.384529, 34.638706, 36.519306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774765, 34.957943, 37.074635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150440, 34.847755, 36.992615>,  <38.375847, 34.781643, 36.943405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150440, 34.847755, 36.992615>,  <37.774765, 34.957943, 37.074635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150440, 34.847755, 36.992615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152196, -0.201356, 0.967622,
		-0.307841, -0.939984, -0.147185,
		0.939186, -0.275473, -0.205047,
		38.432198, 34.765114, 36.931099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847183, 34.331554, 37.510677>,  <37.774765, 34.957943, 37.074635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847183, 34.331554, 37.510677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198559, 34.497200, 37.415306>,  <38.409386, 34.596588, 37.358082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198559, 34.497200, 37.415306>,  <37.847183, 34.331554, 37.510677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198559, 34.497200, 37.415306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351294, -0.221411, 0.909708,
		0.323932, -0.882885, -0.339973,
		0.878442, 0.414114, -0.238431,
		38.462090, 34.621433, 37.343777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342754, 33.903133, 37.728832>,  <37.847183, 34.331554, 37.510677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342754, 33.903133, 37.728832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.511864, 34.264656, 37.702328>,  <38.613327, 34.481571, 37.686424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.511864, 34.264656, 37.702328>,  <38.342754, 33.903133, 37.728832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511864, 34.264656, 37.702328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258993, -0.050430, 0.964562,
		0.868440, -0.424951, -0.255401,
		0.422772, 0.903811, -0.066263,
		38.638695, 34.535801, 37.682449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907494, 33.807602, 38.227505>,  <38.342754, 33.903133, 37.728832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907494, 33.807602, 38.227505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891121, 34.203411, 38.172127>,  <38.881298, 34.440895, 38.138901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.891121, 34.203411, 38.172127>,  <38.907494, 33.807602, 38.227505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891121, 34.203411, 38.172127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237226, 0.144224, 0.960689,
		0.970592, 0.006480, -0.240644,
		-0.040932, 0.989524, -0.138446,
		38.878841, 34.500267, 38.130592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578026, 34.060772, 38.514610>,  <38.907494, 33.807602, 38.227505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578026, 34.060772, 38.514610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310139, 34.357536, 38.501610>,  <39.149406, 34.535595, 38.493809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.310139, 34.357536, 38.501610>,  <39.578026, 34.060772, 38.514610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310139, 34.357536, 38.501610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190543, 0.213978, 0.958074,
		0.717758, 0.635441, -0.284670,
		-0.669713, 0.741908, -0.032506,
		39.109226, 34.580109, 38.491859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876106, 34.560879, 38.957893>,  <39.578026, 34.060772, 38.514610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876106, 34.560879, 38.957893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499783, 34.695507, 38.941933>,  <39.273987, 34.776283, 38.932358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499783, 34.695507, 38.941933>,  <39.876106, 34.560879, 38.957893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499783, 34.695507, 38.941933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026315, 0.189910, 0.981449,
		0.337902, 0.922310, -0.187527,
		-0.940813, 0.336568, -0.039900,
		39.217537, 34.796478, 38.929962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825726, 35.155502, 39.394508>,  <39.876106, 34.560879, 38.957893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825726, 35.155502, 39.394508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451256, 35.022091, 39.350079>,  <39.226574, 34.942043, 39.323421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451256, 35.022091, 39.350079>,  <39.825726, 35.155502, 39.394508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451256, 35.022091, 39.350079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220970, 0.312566, 0.923837,
		-0.273403, 0.889418, -0.366315,
		-0.936175, -0.333525, -0.111078,
		39.170403, 34.922035, 39.316753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427689, 35.548550, 39.742413>,  <39.825726, 35.155502, 39.394508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427689, 35.548550, 39.742413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195240, 35.223026, 39.743683>,  <39.055771, 35.027710, 39.744446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195240, 35.223026, 39.743683>,  <39.427689, 35.548550, 39.742413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195240, 35.223026, 39.743683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278660, 0.202647, 0.938767,
		-0.764624, 0.544650, -0.344539,
		-0.581119, -0.813813, 0.003177,
		39.020905, 34.978882, 39.744637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775482, 35.770805, 39.932114>,  <39.427689, 35.548550, 39.742413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775482, 35.770805, 39.932114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766621, 35.373909, 39.981052>,  <38.761303, 35.135773, 40.010414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.766621, 35.373909, 39.981052>,  <38.775482, 35.770805, 39.932114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766621, 35.373909, 39.981052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424774, 0.120122, 0.897295,
		-0.905029, -0.032095, -0.424138,
		-0.022149, -0.992240, 0.122347,
		38.759975, 35.076237, 40.017757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136353, 35.574150, 40.141830>,  <38.775482, 35.770805, 39.932114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136353, 35.574150, 40.141830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381180, 35.284077, 40.267990>,  <38.528076, 35.110031, 40.343685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381180, 35.284077, 40.267990>,  <38.136353, 35.574150, 40.141830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381180, 35.284077, 40.267990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486367, -0.030727, 0.873214,
		-0.623554, -0.687865, -0.371515,
		0.612069, -0.725188, 0.315394,
		38.564800, 35.066521, 40.362610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738129, 35.163494, 40.631531>,  <38.136353, 35.574150, 40.141830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738129, 35.163494, 40.631531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107315, 35.022099, 40.692421>,  <38.328827, 34.937260, 40.728954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.107315, 35.022099, 40.692421>,  <37.738129, 35.163494, 40.631531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107315, 35.022099, 40.692421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234931, -0.204157, 0.950330,
		-0.304853, -0.912888, -0.271476,
		0.922969, -0.353489, 0.152228,
		38.384205, 34.916054, 40.738091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605732, 34.611923, 41.067074>,  <37.738129, 35.163494, 40.631531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605732, 34.611923, 41.067074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988850, 34.712189, 41.123360>,  <38.218719, 34.772346, 41.157131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988850, 34.712189, 41.123360>,  <37.605732, 34.611923, 41.067074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988850, 34.712189, 41.123360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146416, 0.004158, 0.989214,
		0.247372, -0.968066, 0.040683,
		0.957794, 0.250661, 0.140712,
		38.276188, 34.787388, 41.165573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956402, 34.042603, 41.477516>,  <37.605732, 34.611923, 41.067074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956402, 34.042603, 41.477516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177711, 34.366787, 41.554504>,  <38.310497, 34.561298, 41.600697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.177711, 34.366787, 41.554504>,  <37.956402, 34.042603, 41.477516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177711, 34.366787, 41.554504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059418, -0.268871, 0.961342,
		0.830878, -0.520449, -0.196915,
		0.553274, 0.810458, 0.192474,
		38.343693, 34.609924, 41.612247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493851, 33.804855, 41.956020>,  <37.956402, 34.042603, 41.477516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493851, 33.804855, 41.956020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516724, 34.203510, 41.979465>,  <38.530449, 34.442703, 41.993534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.516724, 34.203510, 41.979465>,  <38.493851, 33.804855, 41.956020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516724, 34.203510, 41.979465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099111, -0.064086, 0.993011,
		0.993432, -0.050978, -0.102443,
		0.057187, 0.996641, 0.058613,
		38.533878, 34.502502, 41.997047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010609, 33.954830, 42.449593>,  <38.493851, 33.804855, 41.956020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010609, 33.954830, 42.449593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825356, 34.309242, 42.441074>,  <38.714203, 34.521889, 42.435963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.825356, 34.309242, 42.441074>,  <39.010609, 33.954830, 42.449593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825356, 34.309242, 42.441074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177329, 0.116181, 0.977270,
		0.868366, 0.448833, -0.210927,
		-0.463136, 0.886031, -0.021296,
		38.686413, 34.575050, 42.434685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198299, 34.338131, 43.049217>,  <39.010609, 33.954830, 42.449593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198299, 34.338131, 43.049217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847366, 34.524162, 43.001900>,  <38.636806, 34.635780, 42.973507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.847366, 34.524162, 43.001900>,  <39.198299, 34.338131, 43.049217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847366, 34.524162, 43.001900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155118, -0.041559, 0.987021,
		0.454123, 0.884295, 0.108602,
		-0.877332, 0.465075, -0.118297,
		38.584167, 34.663685, 42.966412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037853, 34.742588, 43.680702>,  <39.198299, 34.338131, 43.049217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037853, 34.742588, 43.680702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682178, 34.717342, 43.499432>,  <38.468773, 34.702194, 43.390671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682178, 34.717342, 43.499432>,  <39.037853, 34.742588, 43.680702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682178, 34.717342, 43.499432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457493, 0.107403, 0.882703,
		-0.007040, 0.992210, -0.124376,
		-0.889185, -0.063116, -0.453173,
		38.415424, 34.698406, 43.363480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539665, 35.337521, 43.866135>,  <39.037853, 34.742588, 43.680702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539665, 35.337521, 43.866135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330688, 35.015034, 43.755089>,  <38.205303, 34.821541, 43.688461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330688, 35.015034, 43.755089>,  <38.539665, 35.337521, 43.866135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330688, 35.015034, 43.755089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514848, 0.038738, 0.856406,
		-0.679693, 0.590354, -0.435316,
		-0.522446, -0.806214, -0.277613,
		38.173954, 34.773170, 43.671806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.815628, 35.505699, 43.977345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820217, 35.106728, 43.949066>,  <37.822971, 34.867344, 43.932098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820217, 35.106728, 43.949066>,  <37.815628, 35.505699, 43.977345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820217, 35.106728, 43.949066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418211, -0.069005, 0.905725,
		-0.908278, 0.019170, -0.417929,
		0.011477, -0.997432, -0.070693,
		37.823662, 34.807499, 43.927856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113640, 35.294968, 44.042027>,  <37.815628, 35.505699, 43.977345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113640, 35.294968, 44.042027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339035, 34.978001, 44.135456>,  <37.474274, 34.787819, 44.191513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339035, 34.978001, 44.135456>,  <37.113640, 35.294968, 44.042027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339035, 34.978001, 44.135456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572843, -0.171058, 0.801617,
		-0.595259, -0.585504, -0.550319,
		0.563486, -0.792417, 0.233578,
		37.508080, 34.740276, 44.205528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551491, 34.952980, 44.319691>,  <37.113640, 35.294968, 44.042027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551491, 34.952980, 44.319691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890320, 34.753365, 44.392822>,  <37.093616, 34.633595, 44.436703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.890320, 34.753365, 44.392822>,  <36.551491, 34.952980, 44.319691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890320, 34.753365, 44.392822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413221, -0.402070, 0.817060,
		-0.334231, -0.767662, -0.546796,
		0.847076, -0.499034, 0.182830,
		37.144444, 34.603653, 44.447670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374905, 34.290733, 44.456722>,  <36.551491, 34.952980, 44.319691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374905, 34.290733, 44.456722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722862, 34.380264, 44.632530>,  <36.931637, 34.433983, 44.738014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.722862, 34.380264, 44.632530>,  <36.374905, 34.290733, 44.456722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722862, 34.380264, 44.632530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358499, -0.325102, 0.875093,
		0.338761, -0.918808, -0.202563,
		0.869896, 0.223829, 0.439524,
		36.983829, 34.447414, 44.764389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560062, 33.781902, 45.032887>,  <36.374905, 34.290733, 44.456722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560062, 33.781902, 45.032887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835361, 34.058514, 45.120625>,  <37.000542, 34.224480, 45.173267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.835361, 34.058514, 45.120625>,  <36.560062, 33.781902, 45.032887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835361, 34.058514, 45.120625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218559, -0.090656, 0.971603,
		0.691772, -0.716642, 0.088745,
		0.688246, 0.691524, 0.219342,
		37.041836, 34.265972, 45.186428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002884, 33.632656, 45.602509>,  <36.560062, 33.781902, 45.032887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002884, 33.632656, 45.602509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039494, 34.030956, 45.598576>,  <37.061459, 34.269936, 45.596218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.039494, 34.030956, 45.598576>,  <37.002884, 33.632656, 45.602509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039494, 34.030956, 45.598576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104547, 0.019424, 0.994330,
		0.990300, -0.089974, 0.105880,
		0.091520, 0.995755, -0.009829,
		37.066948, 34.329681, 45.595627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530586, 33.843689, 46.006916>,  <37.002884, 33.632656, 45.602509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530586, 33.843689, 46.006916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323185, 34.183933, 45.972012>,  <37.198742, 34.388081, 45.951069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323185, 34.183933, 45.972012>,  <37.530586, 33.843689, 46.006916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323185, 34.183933, 45.972012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043610, 0.075616, 0.996183,
		0.853961, 0.520332, -0.002112,
		-0.518506, 0.850610, -0.087265,
		37.167633, 34.439117, 45.945831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946621, 34.369793, 46.408875>,  <37.530586, 33.843689, 46.006916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946621, 34.369793, 46.408875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562820, 34.480526, 46.388012>,  <37.332539, 34.546967, 46.375492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562820, 34.480526, 46.388012>,  <37.946621, 34.369793, 46.408875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562820, 34.480526, 46.388012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025688, 0.098407, 0.994815,
		0.280529, 0.955867, -0.087310,
		-0.959502, 0.276831, -0.052160,
		37.274971, 34.563576, 46.372364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883320, 34.846638, 46.828812>,  <37.946621, 34.369793, 46.408875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883320, 34.846638, 46.828812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505890, 34.724419, 46.777740>,  <37.279430, 34.651085, 46.747097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505890, 34.724419, 46.777740>,  <37.883320, 34.846638, 46.828812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505890, 34.724419, 46.777740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184599, 0.165229, 0.968825,
		-0.274928, 0.937731, -0.212311,
		-0.943577, -0.305549, -0.127678,
		37.222816, 34.632755, 46.739437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521645, 35.243912, 47.281555>,  <37.883320, 34.846638, 46.828812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521645, 35.243912, 47.281555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270584, 34.938160, 47.222523>,  <37.119949, 34.754707, 47.187103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270584, 34.938160, 47.222523>,  <37.521645, 35.243912, 47.281555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270584, 34.938160, 47.222523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270995, 0.036809, 0.961877,
		-0.729806, 0.643717, -0.230246,
		-0.627651, -0.764378, -0.147580,
		37.082291, 34.708847, 47.178249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131424, 35.298923, 47.818630>,  <37.521645, 35.243912, 47.281555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131424, 35.298923, 47.818630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053955, 34.928955, 47.687778>,  <37.007473, 34.706974, 47.609268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.053955, 34.928955, 47.687778>,  <37.131424, 35.298923, 47.818630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053955, 34.928955, 47.687778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327083, -0.253489, 0.910362,
		-0.924936, 0.283312, -0.253431,
		-0.193675, -0.924920, -0.327128,
		36.995853, 34.651478, 47.589642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495636, 35.209511, 48.030418>,  <37.131424, 35.298923, 47.818630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495636, 35.209511, 48.030418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625946, 34.838005, 47.959690>,  <36.704132, 34.615101, 47.917252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625946, 34.838005, 47.959690>,  <36.495636, 35.209511, 48.030418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625946, 34.838005, 47.959690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319795, -0.284246, 0.903845,
		-0.889722, -0.237900, -0.389614,
		0.325771, -0.928767, -0.176820,
		36.723679, 34.559376, 47.906643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949043, 34.708347, 48.357960>,  <36.495636, 35.209511, 48.030418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949043, 34.708347, 48.357960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264816, 34.472317, 48.290302>,  <36.454281, 34.330700, 48.249706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264816, 34.472317, 48.290302>,  <35.949043, 34.708347, 48.357960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264816, 34.472317, 48.290302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128842, -0.428702, 0.894212,
		-0.600167, -0.684124, -0.414456,
		0.789430, -0.590076, -0.169149,
		36.501644, 34.295296, 48.239559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778267, 33.987812, 48.554081>,  <35.949043, 34.708347, 48.357960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778267, 33.987812, 48.554081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174053, 34.025040, 48.598423>,  <36.411526, 34.047375, 48.625027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.174053, 34.025040, 48.598423>,  <35.778267, 33.987812, 48.554081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174053, 34.025040, 48.598423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066570, -0.387442, 0.919488,
		0.128526, -0.917184, -0.377166,
		0.989469, 0.093070, 0.110853,
		36.470894, 34.052959, 48.631680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868233, 33.345100, 48.821491>,  <35.778267, 33.987812, 48.554081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868233, 33.345100, 48.821491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193535, 33.564976, 48.897861>,  <36.388718, 33.696903, 48.943684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.193535, 33.564976, 48.897861>,  <35.868233, 33.345100, 48.821491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193535, 33.564976, 48.897861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147065, -0.511605, 0.846541,
		0.563013, -0.660378, -0.496907,
		0.813258, 0.549691, 0.190922,
		36.437511, 33.729881, 48.955139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364761, 32.745934, 49.063210>,  <35.868233, 33.345100, 48.821491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364761, 32.745934, 49.063210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499660, 33.105373, 49.175476>,  <36.580601, 33.321037, 49.242836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499660, 33.105373, 49.175476>,  <36.364761, 32.745934, 49.063210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499660, 33.105373, 49.175476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105811, -0.332427, 0.937175,
		0.935449, -0.286366, -0.207193,
		0.337252, 0.898603, 0.280668,
		36.600838, 33.374954, 49.259678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851746, 32.584755, 49.536575>,  <36.364761, 32.745934, 49.063210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851746, 32.584755, 49.536575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.739647, 32.961899, 49.608669>,  <36.672386, 33.188183, 49.651924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.739647, 32.961899, 49.608669>,  <36.851746, 32.584755, 49.536575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739647, 32.961899, 49.608669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078535, -0.164606, 0.983228,
		0.956709, 0.289705, -0.027916,
		-0.280251, 0.942855, 0.180232,
		36.655571, 33.244755, 49.662739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335987, 32.769028, 50.018490>,  <36.851746, 32.584755, 49.536575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335987, 32.769028, 50.018490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012787, 33.001842, 50.055084>,  <36.818867, 33.141533, 50.077042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012787, 33.001842, 50.055084>,  <37.335987, 32.769028, 50.018490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012787, 33.001842, 50.055084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068828, -0.247461, 0.966450,
		0.585150, 0.774594, 0.240009,
		-0.807999, 0.582038, 0.091488,
		36.770386, 33.176453, 50.082531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426086, 32.920185, 50.686039>,  <37.335987, 32.769028, 50.018490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426086, 32.920185, 50.686039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062428, 33.076988, 50.629787>,  <36.844231, 33.171070, 50.596039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062428, 33.076988, 50.629787>,  <37.426086, 32.920185, 50.686039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062428, 33.076988, 50.629787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263624, -0.280287, 0.923007,
		0.322411, 0.876224, 0.358166,
		-0.909150, 0.392009, -0.140626,
		36.789684, 33.194592, 50.587601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223190, 33.403347, 51.261528>,  <37.426086, 32.920185, 50.686039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223190, 33.403347, 51.261528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878613, 33.296619, 51.088684>,  <36.671864, 33.232582, 50.984978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.878613, 33.296619, 51.088684>,  <37.223190, 33.403347, 51.261528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878613, 33.296619, 51.088684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439962, -0.032883, 0.897414,
		-0.253659, 0.963185, -0.089065,
		-0.861447, -0.266822, -0.432106,
		36.620178, 33.216572, 50.959053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758873, 33.862877, 51.698147>,  <37.223190, 33.403347, 51.261528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758873, 33.862877, 51.698147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541397, 33.568104, 51.537483>,  <36.410912, 33.391239, 51.441086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541397, 33.568104, 51.537483>,  <36.758873, 33.862877, 51.698147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541397, 33.568104, 51.537483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416289, -0.178764, 0.891486,
		-0.728770, 0.651896, -0.209586,
		-0.543689, -0.736936, -0.401655,
		36.378292, 33.347023, 51.416988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095467, 34.006577, 51.918655>,  <36.758873, 33.862877, 51.698147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095467, 34.006577, 51.918655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112774, 33.611580, 51.858006>,  <36.123158, 33.374580, 51.821613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112774, 33.611580, 51.858006>,  <36.095467, 34.006577, 51.918655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112774, 33.611580, 51.858006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129278, -0.156027, 0.979256,
		-0.990664, -0.022765, -0.134411,
		0.043265, -0.987491, -0.151627,
		36.125755, 33.315334, 51.812519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603268, 33.681149, 52.401161>,  <36.095467, 34.006577, 51.918655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603268, 33.681149, 52.401161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884247, 33.417152, 52.294598>,  <36.052834, 33.258755, 52.230659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884247, 33.417152, 52.294598>,  <35.603268, 33.681149, 52.401161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884247, 33.417152, 52.294598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016080, -0.388927, 0.921128,
		-0.711550, -0.642764, -0.283816,
		0.702451, -0.659992, -0.266405,
		36.094982, 33.219154, 52.214676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360962, 32.934792, 52.420967>,  <35.603268, 33.681149, 52.401161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360962, 32.934792, 52.420967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753132, 32.971695, 52.490551>,  <35.988434, 32.993835, 52.532299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753132, 32.971695, 52.490551>,  <35.360962, 32.934792, 52.420967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753132, 32.971695, 52.490551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142379, -0.278100, 0.949941,
		0.136015, -0.956112, -0.259520,
		0.980422, 0.092256, 0.173956,
		36.047260, 32.999371, 52.542736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100086, 33.334415, 51.892902>,  <35.360962, 32.934792, 52.420967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100086, 33.334415, 51.892902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721180, 33.210766, 51.926701>,  <34.493835, 33.136578, 51.946980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721180, 33.210766, 51.926701>,  <35.100086, 33.334415, 51.892902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721180, 33.210766, 51.926701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055391, -0.101756, -0.993266,
		0.315636, -0.945564, 0.079267,
		-0.947262, -0.309120, 0.084494,
		34.437000, 33.118031, 51.952049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088348, 32.920948, 51.398537>,  <35.100086, 33.334415, 51.892902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088348, 32.920948, 51.398537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706528, 33.010418, 51.477325>,  <34.477436, 33.064098, 51.524601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706528, 33.010418, 51.477325>,  <35.088348, 32.920948, 51.398537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706528, 33.010418, 51.477325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217618, -0.071496, -0.973412,
		-0.203642, -0.972039, 0.116922,
		-0.954553, 0.223672, 0.196974,
		34.420162, 33.077518, 51.536419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636272, 32.509361, 50.947472>,  <35.088348, 32.920948, 51.398537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636272, 32.509361, 50.947472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422974, 32.828751, 51.059242>,  <34.294994, 33.020386, 51.126305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.422974, 32.828751, 51.059242>,  <34.636272, 32.509361, 50.947472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422974, 32.828751, 51.059242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371656, 0.075604, -0.925287,
		-0.759946, -0.597259, 0.256443,
		-0.533248, 0.798477, 0.279430,
		34.263000, 33.068295, 51.143070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876812, 32.342361, 50.669136>,  <34.636272, 32.509361, 50.947472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876812, 32.342361, 50.669136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927124, 32.735775, 50.721046>,  <33.957310, 32.971825, 50.752193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.927124, 32.735775, 50.721046>,  <33.876812, 32.342361, 50.669136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927124, 32.735775, 50.721046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252946, 0.158285, -0.954444,
		-0.959269, 0.087225, 0.268690,
		0.125781, 0.983533, 0.129775,
		33.964859, 33.030834, 50.759979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338467, 32.649948, 50.242004>,  <33.876812, 32.342361, 50.669136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338467, 32.649948, 50.242004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594894, 32.948193, 50.314766>,  <33.748753, 33.127140, 50.358421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.594894, 32.948193, 50.314766>,  <33.338467, 32.649948, 50.242004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594894, 32.948193, 50.314766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207336, 0.396450, -0.894337,
		-0.738943, 0.535621, 0.408746,
		0.641074, 0.745612, 0.181901,
		33.787216, 33.171875, 50.369335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986641, 33.094418, 49.821594>,  <33.338467, 32.649948, 50.242004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986641, 33.094418, 49.821594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.343506, 33.267525, 49.873375>,  <33.557625, 33.371391, 49.904442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.343506, 33.267525, 49.873375>,  <32.986641, 33.094418, 49.821594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343506, 33.267525, 49.873375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087057, 0.445929, -0.890824,
		-0.443249, 0.783490, 0.435516,
		0.892161, 0.432772, 0.129449,
		33.611153, 33.397358, 49.912209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956264, 33.902931, 49.687237>,  <32.986641, 33.094418, 49.821594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956264, 33.902931, 49.687237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334335, 33.783794, 49.633667>,  <33.561176, 33.712315, 49.601524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334335, 33.783794, 49.633667>,  <32.956264, 33.902931, 49.687237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334335, 33.783794, 49.633667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019270, 0.460265, -0.887572,
		0.325995, 0.836330, 0.440770,
		0.945175, -0.297838, -0.133928,
		33.617889, 33.694443, 49.593487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203804, 34.387962, 49.170559>,  <32.956264, 33.902931, 49.687237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203804, 34.387962, 49.170559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489792, 34.108562, 49.158451>,  <33.661385, 33.940922, 49.151188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.489792, 34.108562, 49.158451>,  <33.203804, 34.387962, 49.170559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489792, 34.108562, 49.158451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157633, 0.203223, -0.966360,
		0.681152, 0.686149, 0.255405,
		0.714971, -0.698499, -0.030266,
		33.704285, 33.899014, 49.149372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850849, 34.669949, 48.832691>,  <33.203804, 34.387962, 49.170559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850849, 34.669949, 48.832691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906002, 34.279453, 48.765823>,  <33.939095, 34.045155, 48.725704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.906002, 34.279453, 48.765823>,  <33.850849, 34.669949, 48.832691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906002, 34.279453, 48.765823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176822, 0.190333, -0.965664,
		0.974537, 0.103592, 0.198865,
		0.137886, -0.976239, -0.167169,
		33.947369, 33.986580, 48.715672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410595, 34.602222, 48.463703>,  <33.850849, 34.669949, 48.832691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410595, 34.602222, 48.463703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229839, 34.252357, 48.393559>,  <34.121384, 34.042439, 48.351471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229839, 34.252357, 48.393559>,  <34.410595, 34.602222, 48.463703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229839, 34.252357, 48.393559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328157, 0.019802, -0.944416,
		0.829522, -0.484320, 0.278080,
		-0.451892, -0.874667, -0.175359,
		34.094273, 33.989956, 48.340950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872520, 34.111092, 48.170254>,  <34.410595, 34.602222, 48.463703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872520, 34.111092, 48.170254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511833, 34.018303, 48.024326>,  <34.295422, 33.962631, 47.936771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.511833, 34.018303, 48.024326>,  <34.872520, 34.111092, 48.170254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511833, 34.018303, 48.024326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355675, 0.081632, -0.931038,
		0.245752, -0.969292, 0.008896,
		-0.901721, -0.231969, -0.364815,
		34.241318, 33.948711, 47.914883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950783, 33.620510, 47.576145>,  <34.872520, 34.111092, 48.170254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950783, 33.620510, 47.576145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566124, 33.704159, 47.505146>,  <34.335327, 33.754349, 47.462547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.566124, 33.704159, 47.505146>,  <34.950783, 33.620510, 47.576145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566124, 33.704159, 47.505146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238059, 0.314880, -0.918792,
		-0.136254, -0.925806, -0.352587,
		-0.961646, 0.209126, -0.177493,
		34.277630, 33.766895, 47.451897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846203, 33.371731, 46.900452>,  <34.950783, 33.620510, 47.576145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846203, 33.371731, 46.900452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557308, 33.637348, 46.977840>,  <34.383972, 33.796719, 47.024273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.557308, 33.637348, 46.977840>,  <34.846203, 33.371731, 46.900452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557308, 33.637348, 46.977840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139018, 0.413390, -0.899879,
		-0.677535, -0.623025, -0.390877,
		-0.722233, 0.664039, 0.193475,
		34.340637, 33.836559, 47.035881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345226, 33.302467, 46.347099>,  <34.846203, 33.371731, 46.900452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345226, 33.302467, 46.347099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275444, 33.671661, 46.484310>,  <34.233574, 33.893177, 46.566635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.275444, 33.671661, 46.484310>,  <34.345226, 33.302467, 46.347099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275444, 33.671661, 46.484310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048444, 0.355989, -0.933234,
		-0.983472, -0.146194, -0.106819,
		-0.174460, 0.922984, 0.343023,
		34.223106, 33.948555, 46.587215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992222, 33.716705, 45.798080>,  <34.345226, 33.302467, 46.347099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992222, 33.716705, 45.798080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090164, 34.005634, 46.056782>,  <34.148930, 34.178993, 46.212002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090164, 34.005634, 46.056782>,  <33.992222, 33.716705, 45.798080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090164, 34.005634, 46.056782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262769, 0.592657, -0.761387,
		-0.933273, 0.356377, -0.044689,
		0.244856, 0.722325, 0.646755,
		34.163620, 34.222332, 46.250809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625874, 34.347664, 45.602062>,  <33.992222, 33.716705, 45.798080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625874, 34.347664, 45.602062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957787, 34.462093, 45.793736>,  <34.156933, 34.530750, 45.908741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957787, 34.462093, 45.793736>,  <33.625874, 34.347664, 45.602062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957787, 34.462093, 45.793736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328739, 0.443305, -0.833913,
		-0.450987, 0.849495, 0.273804,
		0.829784, 0.286074, 0.479187,
		34.206722, 34.547916, 45.937492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615208, 35.003628, 45.583450>,  <33.625874, 34.347664, 45.602062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615208, 35.003628, 45.583450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996502, 34.891178, 45.627827>,  <34.225277, 34.823708, 45.654453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996502, 34.891178, 45.627827>,  <33.615208, 35.003628, 45.583450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996502, 34.891178, 45.627827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260712, 0.579230, -0.772348,
		0.152870, 0.765153, 0.625437,
		0.953237, -0.281128, 0.110938,
		34.282475, 34.806839, 45.661106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903450, 35.580013, 45.314892>,  <33.615208, 35.003628, 45.583450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903450, 35.580013, 45.314892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.194630, 35.307602, 45.346615>,  <34.369339, 35.144157, 45.365650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.194630, 35.307602, 45.346615>,  <33.903450, 35.580013, 45.314892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194630, 35.307602, 45.346615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378760, 0.303017, -0.874484,
		0.571514, 0.666621, 0.478527,
		0.727951, -0.681027, 0.079311,
		34.413013, 35.103294, 45.370407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571419, 35.971226, 45.130329>,  <33.903450, 35.580013, 45.314892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571419, 35.971226, 45.130329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611877, 35.580772, 45.053459>,  <34.636154, 35.346500, 45.007339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.611877, 35.580772, 45.053459>,  <34.571419, 35.971226, 45.130329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611877, 35.580772, 45.053459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399291, 0.216752, -0.890834,
		0.911228, 0.013375, 0.411686,
		0.101149, -0.976135, -0.192170,
		34.642223, 35.287933, 44.995808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163666, 36.048599, 44.697212>,  <34.571419, 35.971226, 45.130329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163666, 36.048599, 44.697212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025951, 35.678501, 44.633484>,  <34.943321, 35.456444, 44.595245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025951, 35.678501, 44.633484>,  <35.163666, 36.048599, 44.697212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025951, 35.678501, 44.633484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337915, 0.036202, -0.940480,
		0.875944, -0.377634, 0.300190,
		-0.344290, -0.925247, -0.159319,
		34.922665, 35.400928, 44.585690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.496731, 32.377178, 27.144484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.159790, 32.173916, 27.072681>,  <45.957626, 32.051960, 27.029600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.159790, 32.173916, 27.072681>,  <46.496731, 32.377178, 27.144484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159790, 32.173916, 27.072681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103239, -0.174762, 0.979183,
		-0.528949, 0.843348, 0.094749,
		-0.842351, -0.508156, -0.179506,
		45.907085, 32.021469, 27.018829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939018, 32.653790, 27.541981>,  <46.496731, 32.377178, 27.144484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939018, 32.653790, 27.541981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.867107, 32.268917, 27.460110>,  <45.823963, 32.037994, 27.410988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.867107, 32.268917, 27.460110>,  <45.939018, 32.653790, 27.541981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867107, 32.268917, 27.460110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106684, -0.187770, 0.976402,
		-0.977906, 0.197368, -0.068893,
		-0.179774, -0.962179, -0.204678,
		45.813175, 31.980263, 27.398706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492603, 32.544918, 27.980068>,  <45.939018, 32.653790, 27.541981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492603, 32.544918, 27.980068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602478, 32.172382, 27.884445>,  <45.668404, 31.948860, 27.827070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602478, 32.172382, 27.884445>,  <45.492603, 32.544918, 27.980068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602478, 32.172382, 27.884445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128788, -0.282020, 0.950725,
		-0.952869, -0.230367, -0.197413,
		0.274690, -0.931341, -0.239059,
		45.684887, 31.892981, 27.812727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978352, 32.076889, 28.275974>,  <45.492603, 32.544918, 27.980068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978352, 32.076889, 28.275974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.326706, 31.883041, 28.243233>,  <45.535717, 31.766731, 28.223589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.326706, 31.883041, 28.243233>,  <44.978352, 32.076889, 28.275974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326706, 31.883041, 28.243233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092860, -0.325785, 0.940872,
		-0.482635, -0.811790, -0.328724,
		0.870885, -0.484624, -0.081852,
		45.587971, 31.737654, 28.218678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.849495, 31.492121, 28.680683>,  <44.978352, 32.076889, 28.275974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.849495, 31.492121, 28.680683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245918, 31.524044, 28.637930>,  <45.483772, 31.543198, 28.612278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245918, 31.524044, 28.637930>,  <44.849495, 31.492121, 28.680683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245918, 31.524044, 28.637930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130671, -0.419782, 0.898169,
		0.026815, -0.904109, -0.426459,
		0.991063, 0.079810, -0.106885,
		45.543236, 31.547987, 28.605864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053978, 30.977413, 29.087854>,  <44.849495, 31.492121, 28.680683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053978, 30.977413, 29.087854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391140, 31.188759, 29.047184>,  <45.593437, 31.315567, 29.022781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.391140, 31.188759, 29.047184>,  <45.053978, 30.977413, 29.087854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.391140, 31.188759, 29.047184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269417, -0.250885, 0.929769,
		0.465749, -0.811102, -0.353824,
		0.842907, 0.528366, -0.101675,
		45.644012, 31.347269, 29.016682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.521889, 30.524216, 29.353495>,  <45.053978, 30.977413, 29.087854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.521889, 30.524216, 29.353495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711849, 30.876215, 29.356899>,  <45.825825, 31.087416, 29.358942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711849, 30.876215, 29.356899>,  <45.521889, 30.524216, 29.353495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711849, 30.876215, 29.356899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272617, -0.156302, 0.949342,
		0.836751, -0.448519, -0.314130,
		0.474897, 0.880000, 0.008511,
		45.854317, 31.140215, 29.359453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263756, 30.498377, 29.650116>,  <45.521889, 30.524216, 29.353495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263756, 30.498377, 29.650116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.137241, 30.873728, 29.705843>,  <46.061333, 31.098938, 29.739279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.137241, 30.873728, 29.705843>,  <46.263756, 30.498377, 29.650116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.137241, 30.873728, 29.705843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109432, -0.109786, 0.987913,
		0.942330, 0.327713, -0.067964,
		-0.316290, 0.938377, 0.139317,
		46.042355, 31.155241, 29.747639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754917, 30.827658, 30.215582>,  <46.263756, 30.498377, 29.650116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754917, 30.827658, 30.215582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.412197, 31.033518, 30.202780>,  <46.206566, 31.157034, 30.195099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.412197, 31.033518, 30.202780>,  <46.754917, 30.827658, 30.215582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.412197, 31.033518, 30.202780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048188, -0.018121, 0.998674,
		0.513386, 0.857210, 0.040326,
		-0.856804, 0.514648, -0.032005,
		46.155155, 31.187912, 30.193178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.791451, 31.325315, 30.784908>,  <46.754917, 30.827658, 30.215582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.791451, 31.325315, 30.784908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400429, 31.334160, 30.701094>,  <46.165817, 31.339466, 30.650805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400429, 31.334160, 30.701094>,  <46.791451, 31.325315, 30.784908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400429, 31.334160, 30.701094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202800, 0.170995, 0.964175,
		0.057150, 0.985024, -0.162672,
		-0.977551, 0.022112, -0.209535,
		46.107162, 31.340794, 30.638233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542778, 31.950483, 31.075174>,  <46.791451, 31.325315, 30.784908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542778, 31.950483, 31.075174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223839, 31.712601, 31.034054>,  <46.032475, 31.569872, 31.009382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.223839, 31.712601, 31.034054>,  <46.542778, 31.950483, 31.075174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223839, 31.712601, 31.034054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331564, 0.289315, 0.897977,
		-0.504289, 0.750082, -0.427866,
		-0.797344, -0.594705, -0.102802,
		45.984634, 31.534189, 31.003214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.081036, 32.388386, 31.328659>,  <46.542778, 31.950483, 31.075174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.081036, 32.388386, 31.328659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.905010, 32.029846, 31.350183>,  <45.799397, 31.814722, 31.363098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.905010, 32.029846, 31.350183>,  <46.081036, 32.388386, 31.328659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905010, 32.029846, 31.350183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299415, 0.202968, 0.932285,
		-0.846578, 0.394154, -0.357700,
		-0.440065, -0.896352, 0.053813,
		45.772991, 31.760941, 31.366327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355396, 32.539211, 31.663507>,  <46.081036, 32.388386, 31.328659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355396, 32.539211, 31.663507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.387650, 32.140926, 31.681604>,  <45.407001, 31.901955, 31.692463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.387650, 32.140926, 31.681604>,  <45.355396, 32.539211, 31.663507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387650, 32.140926, 31.681604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508982, -0.002111, 0.860774,
		-0.856992, -0.092437, -0.506972,
		0.080638, -0.995716, 0.045240,
		45.411842, 31.842211, 31.695177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785774, 32.427467, 31.980675>,  <45.355396, 32.539211, 31.663507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785774, 32.427467, 31.980675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003387, 32.098152, 32.045441>,  <45.133957, 31.900562, 32.084301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.003387, 32.098152, 32.045441>,  <44.785774, 32.427467, 31.980675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003387, 32.098152, 32.045441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393335, -0.079782, 0.915927,
		-0.741157, -0.561984, -0.367234,
		0.544035, -0.823292, 0.161917,
		45.166599, 31.851164, 32.094017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336018, 32.010166, 32.561554>,  <44.785774, 32.427467, 31.980675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336018, 32.010166, 32.561554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704041, 31.854368, 32.544617>,  <44.924854, 31.760889, 32.534454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.704041, 31.854368, 32.544617>,  <44.336018, 32.010166, 32.561554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704041, 31.854368, 32.544617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129909, -0.405244, 0.904932,
		-0.369622, -0.827087, -0.423445,
		0.920056, -0.389492, -0.042341,
		44.980057, 31.737518, 32.531914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307354, 31.340206, 32.680424>,  <44.336018, 32.010166, 32.561554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307354, 31.340206, 32.680424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675571, 31.454453, 32.787025>,  <44.896500, 31.523001, 32.850986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675571, 31.454453, 32.787025>,  <44.307354, 31.340206, 32.680424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675571, 31.454453, 32.787025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253487, -0.082349, 0.963827,
		0.297232, -0.954799, -0.003406,
		0.920542, 0.285617, 0.266506,
		44.951733, 31.540138, 32.866978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593071, 30.920605, 33.202507>,  <44.307354, 31.340206, 32.680424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593071, 30.920605, 33.202507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785263, 31.269356, 33.240395>,  <44.900578, 31.478607, 33.263126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785263, 31.269356, 33.240395>,  <44.593071, 30.920605, 33.202507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785263, 31.269356, 33.240395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318387, 0.072781, 0.945163,
		0.817174, -0.484283, 0.312564,
		0.480476, 0.871879, 0.094714,
		44.929405, 31.530920, 33.268810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794041, 30.966352, 33.962177>,  <44.593071, 30.920605, 33.202507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794041, 30.966352, 33.962177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.874645, 31.341387, 33.848808>,  <44.923008, 31.566406, 33.780788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.874645, 31.341387, 33.848808>,  <44.794041, 30.966352, 33.962177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874645, 31.341387, 33.848808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308997, 0.335435, 0.889946,
		0.929470, -0.091758, 0.357305,
		0.201512, 0.937584, -0.283423,
		44.935101, 31.622662, 33.763783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138485, 31.239941, 34.458141>,  <44.794041, 30.966352, 33.962177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138485, 31.239941, 34.458141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977474, 31.549953, 34.263290>,  <44.880867, 31.735962, 34.146378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977474, 31.549953, 34.263290>,  <45.138485, 31.239941, 34.458141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977474, 31.549953, 34.263290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399428, 0.330112, 0.855268,
		0.823668, 0.538843, 0.176691,
		-0.402527, 0.775032, -0.487132,
		44.856716, 31.782463, 34.117149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.360680, 31.788330, 34.848480>,  <45.138485, 31.239941, 34.458141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.360680, 31.788330, 34.848480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.047977, 31.904146, 34.627563>,  <44.860355, 31.973637, 34.495014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.047977, 31.904146, 34.627563>,  <45.360680, 31.788330, 34.848480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.047977, 31.904146, 34.627563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467227, 0.314601, 0.826272,
		0.412991, 0.903987, -0.110659,
		-0.781753, 0.289539, -0.552295,
		44.813450, 31.991009, 34.461876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193970, 32.438145, 35.099770>,  <45.360680, 31.788330, 34.848480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193970, 32.438145, 35.099770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.869980, 32.341843, 34.885860>,  <44.675587, 32.284061, 34.757515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.869980, 32.341843, 34.885860>,  <45.193970, 32.438145, 35.099770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869980, 32.341843, 34.885860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577465, 0.486545, 0.655598,
		0.102350, 0.839828, -0.533117,
		-0.809974, -0.240755, -0.534769,
		44.626987, 32.269615, 34.725430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823681, 32.976589, 34.796085>,  <45.193970, 32.438145, 35.099770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823681, 32.976589, 34.796085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.571732, 32.679466, 34.886856>,  <44.420563, 32.501194, 34.941319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.571732, 32.679466, 34.886856>,  <44.823681, 32.976589, 34.796085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571732, 32.679466, 34.886856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453373, 0.588854, 0.669107,
		-0.630644, 0.318571, -0.707673,
		-0.629874, -0.742808, 0.226926,
		44.382771, 32.456623, 34.954933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525578, 33.234314, 34.879307>,  <44.823681, 32.976589, 34.796085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525578, 33.234314, 34.879307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.881321, 33.412125, 34.922096>,  <46.094765, 33.518810, 34.947769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.881321, 33.412125, 34.922096>,  <45.525578, 33.234314, 34.879307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881321, 33.412125, 34.922096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169900, 0.538525, -0.825303,
		-0.424476, 0.715813, 0.554466,
		0.889356, 0.444525, 0.106974,
		46.148129, 33.545483, 34.954189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.412201, 33.961380, 34.914013>,  <45.525578, 33.234314, 34.879307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.412201, 33.961380, 34.914013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.798336, 33.922783, 34.817005>,  <46.030018, 33.899624, 34.758801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.798336, 33.922783, 34.817005>,  <45.412201, 33.961380, 34.914013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.798336, 33.922783, 34.817005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170323, 0.471187, -0.865432,
		0.197778, 0.876740, 0.438419,
		0.965336, -0.096491, -0.242520,
		46.087936, 33.893837, 34.744247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512501, 34.454327, 34.552086>,  <45.412201, 33.961380, 34.914013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512501, 34.454327, 34.552086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846523, 34.267879, 34.435177>,  <46.046936, 34.156013, 34.365032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846523, 34.267879, 34.435177>,  <45.512501, 34.454327, 34.552086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846523, 34.267879, 34.435177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024725, 0.498906, -0.866303,
		0.549612, 0.730637, 0.405089,
		0.835054, -0.466115, -0.292270,
		46.097038, 34.128044, 34.347496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963448, 34.980644, 34.288506>,  <45.512501, 34.454327, 34.552086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963448, 34.980644, 34.288506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.117634, 34.639133, 34.148518>,  <46.210148, 34.434227, 34.064526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.117634, 34.639133, 34.148518>,  <45.963448, 34.980644, 34.288506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117634, 34.639133, 34.148518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023106, 0.370227, -0.928654,
		0.922432, 0.366052, 0.122984,
		0.385468, -0.853778, -0.349967,
		46.233273, 34.382999, 34.043526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.595127, 35.131660, 33.987560>,  <45.963448, 34.980644, 34.288506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.595127, 35.131660, 33.987560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.481133, 34.789841, 33.813877>,  <46.412735, 34.584751, 33.709667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.481133, 34.789841, 33.813877>,  <46.595127, 35.131660, 33.987560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481133, 34.789841, 33.813877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065614, 0.434535, -0.898262,
		0.956284, -0.284482, -0.067766,
		-0.284986, -0.854547, -0.434204,
		46.395638, 34.533478, 33.683617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.945690, 35.116585, 33.439224>,  <46.595127, 35.131660, 33.987560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.945690, 35.116585, 33.439224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.661659, 34.849247, 33.350582>,  <46.491241, 34.688843, 33.297398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.661659, 34.849247, 33.350582>,  <46.945690, 35.116585, 33.439224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.661659, 34.849247, 33.350582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041853, 0.274108, -0.960788,
		0.702882, -0.691506, -0.166665,
		-0.710074, -0.668344, -0.221607,
		46.448635, 34.648743, 33.284100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.077972, 34.822937, 32.723133>,  <46.945690, 35.116585, 33.439224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.077972, 34.822937, 32.723133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.695168, 34.718227, 32.773106>,  <46.465485, 34.655399, 32.803089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.695168, 34.718227, 32.773106>,  <47.077972, 34.822937, 32.723133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695168, 34.718227, 32.773106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148120, 0.070744, -0.986436,
		0.249390, -0.962532, -0.106477,
		-0.957008, -0.261779, 0.124927,
		46.408066, 34.639694, 32.810585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.910149, 34.413857, 32.184601>,  <47.077972, 34.822937, 32.723133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.910149, 34.413857, 32.184601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.546024, 34.533272, 32.299294>,  <46.327549, 34.604923, 32.368107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.546024, 34.533272, 32.299294>,  <46.910149, 34.413857, 32.184601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546024, 34.533272, 32.299294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278657, 0.070245, -0.957818,
		-0.306088, -0.951809, 0.019245,
		-0.910308, 0.298540, 0.286729,
		46.272930, 34.622833, 32.385311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499546, 33.903419, 31.904131>,  <46.910149, 34.413857, 32.184601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499546, 33.903419, 31.904131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.268368, 34.222893, 31.971165>,  <46.129662, 34.414577, 32.011383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.268368, 34.222893, 31.971165>,  <46.499546, 33.903419, 31.904131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268368, 34.222893, 31.971165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303610, -0.019822, -0.952590,
		-0.757498, -0.601423, 0.253945,
		-0.577943, 0.798685, 0.167583,
		46.094986, 34.462498, 32.021439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801968, 33.698338, 31.636154>,  <46.499546, 33.903419, 31.904131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801968, 33.698338, 31.636154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807106, 34.097801, 31.656246>,  <45.810188, 34.337479, 31.668303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807106, 34.097801, 31.656246>,  <45.801968, 33.698338, 31.636154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807106, 34.097801, 31.656246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459122, 0.050517, -0.886936,
		-0.888280, -0.011672, 0.459153,
		0.012843, 0.998655, 0.050232,
		45.810959, 34.397396, 31.671316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116814, 34.027679, 31.704227>,  <45.801968, 33.698338, 31.636154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116814, 34.027679, 31.704227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.312717, 34.337379, 31.543892>,  <45.430260, 34.523201, 31.447691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.312717, 34.337379, 31.543892>,  <45.116814, 34.027679, 31.704227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312717, 34.337379, 31.543892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574254, -0.059464, -0.816514,
		-0.656021, 0.630081, 0.415492,
		0.489763, 0.774249, -0.400837,
		45.459648, 34.569653, 31.423641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639965, 34.362255, 31.331444>,  <45.116814, 34.027679, 31.704227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639965, 34.362255, 31.331444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.990601, 34.487820, 31.185539>,  <45.200981, 34.563156, 31.097996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.990601, 34.487820, 31.185539>,  <44.639965, 34.362255, 31.331444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990601, 34.487820, 31.185539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415226, 0.110205, -0.903019,
		-0.243267, 0.943035, 0.226948,
		0.876589, 0.313909, -0.364763,
		45.253578, 34.581993, 31.076111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405411, 34.878819, 30.888157>,  <44.639965, 34.362255, 31.331444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405411, 34.878819, 30.888157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781113, 34.791893, 30.781893>,  <45.006535, 34.739738, 30.718134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781113, 34.791893, 30.781893>,  <44.405411, 34.878819, 30.888157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781113, 34.791893, 30.781893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272409, -0.001131, -0.962181,
		0.208794, 0.976101, -0.060260,
		0.939254, -0.217313, -0.265663,
		45.062889, 34.726700, 30.702194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634491, 35.313293, 30.435833>,  <44.405411, 34.878819, 30.888157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634491, 35.313293, 30.435833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897289, 35.021381, 30.360178>,  <45.054970, 34.846233, 30.314785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897289, 35.021381, 30.360178>,  <44.634491, 35.313293, 30.435833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897289, 35.021381, 30.360178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116743, 0.149371, -0.981865,
		0.744798, 0.667164, 0.012939,
		0.656998, -0.729781, -0.189138,
		45.094387, 34.802448, 30.303436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059055, 35.605064, 29.830700>,  <44.634491, 35.313293, 30.435833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059055, 35.605064, 29.830700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111786, 35.208946, 29.848276>,  <45.143425, 34.971275, 29.858822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111786, 35.208946, 29.848276>,  <45.059055, 35.605064, 29.830700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111786, 35.208946, 29.848276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114149, -0.059198, -0.991698,
		0.984679, 0.125714, -0.120846,
		0.131824, -0.990299, 0.043940,
		45.151333, 34.911858, 29.861458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625286, 35.481968, 29.433243>,  <45.059055, 35.605064, 29.830700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625286, 35.481968, 29.433243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.406582, 35.147293, 29.445984>,  <45.275360, 34.946487, 29.453629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.406582, 35.147293, 29.445984>,  <45.625286, 35.481968, 29.433243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.406582, 35.147293, 29.445984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011835, -0.030315, -0.999470,
		0.837207, -0.546845, 0.006672,
		-0.546757, -0.836685, 0.031852,
		45.242554, 34.896286, 29.455540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.910358, 35.071278, 28.890556>,  <45.625286, 35.481968, 29.433243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.910358, 35.071278, 28.890556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.565357, 34.883560, 28.966299>,  <45.358356, 34.770931, 29.011745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.565357, 34.883560, 28.966299>,  <45.910358, 35.071278, 28.890556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565357, 34.883560, 28.966299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183153, -0.059335, -0.981292,
		0.471751, -0.881046, -0.034776,
		-0.862500, -0.469295, 0.189357,
		45.306606, 34.742771, 29.023106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.876572, 34.602566, 28.491110>,  <45.910358, 35.071278, 28.890556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.876572, 34.602566, 28.491110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.490669, 34.653934, 28.582989>,  <45.259129, 34.684757, 28.638117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.490669, 34.653934, 28.582989>,  <45.876572, 34.602566, 28.491110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490669, 34.653934, 28.582989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243794, -0.107505, -0.963850,
		-0.099062, -0.985879, 0.135019,
		-0.964755, 0.128397, 0.229702,
		45.201244, 34.692463, 28.651897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487751, 34.091305, 28.104021>,  <45.876572, 34.602566, 28.491110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487751, 34.091305, 28.104021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217873, 34.381271, 28.159580>,  <45.055946, 34.555252, 28.192915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.217873, 34.381271, 28.159580>,  <45.487751, 34.091305, 28.104021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217873, 34.381271, 28.159580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220546, -0.018415, -0.975203,
		-0.704379, -0.688594, 0.172301,
		-0.674692, 0.724913, 0.138896,
		45.015465, 34.598743, 28.201248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931393, 33.877697, 27.741510>,  <45.487751, 34.091305, 28.104021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931393, 33.877697, 27.741510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.862396, 34.269176, 27.786034>,  <44.820999, 34.504066, 27.812748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.862396, 34.269176, 27.786034>,  <44.931393, 33.877697, 27.741510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862396, 34.269176, 27.786034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303136, 0.054775, -0.951372,
		-0.937206, -0.197847, 0.287231,
		-0.172493, 0.978702, 0.111310,
		44.810650, 34.562786, 27.819427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.528046, 35.000443, 41.401257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138042, 34.949856, 41.328197>,  <38.904041, 34.919506, 41.284363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138042, 34.949856, 41.328197>,  <39.528046, 35.000443, 41.401257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138042, 34.949856, 41.328197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208009, -0.231006, -0.950457,
		0.078006, -0.964699, 0.251539,
		-0.975011, -0.126464, -0.182646,
		38.845539, 34.911919, 41.273403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626446, 34.472332, 40.959961>,  <39.528046, 35.000443, 41.401257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626446, 34.472332, 40.959961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254547, 34.610435, 40.908787>,  <39.031406, 34.693298, 40.878082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254547, 34.610435, 40.908787>,  <39.626446, 34.472332, 40.959961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254547, 34.610435, 40.908787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062090, -0.195477, -0.978741,
		-0.362926, -0.917925, 0.160307,
		-0.929747, 0.345257, -0.127937,
		38.975624, 34.714012, 40.870407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122704, 33.936420, 40.740627>,  <39.626446, 34.472332, 40.959961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122704, 33.936420, 40.740627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943130, 34.266979, 40.604671>,  <38.835388, 34.465317, 40.523098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943130, 34.266979, 40.604671>,  <39.122704, 33.936420, 40.740627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943130, 34.266979, 40.604671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327118, -0.201980, -0.923146,
		-0.831538, -0.525613, -0.179655,
		-0.448931, 0.826399, -0.339891,
		38.808453, 34.514900, 40.502705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729832, 33.788857, 40.090584>,  <39.122704, 33.936420, 40.740627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729832, 33.788857, 40.090584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705521, 34.188019, 40.099388>,  <38.690933, 34.427517, 40.104671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705521, 34.188019, 40.099388>,  <38.729832, 33.788857, 40.090584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705521, 34.188019, 40.099388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176044, 0.032423, -0.983848,
		-0.982504, -0.055923, -0.177646,
		-0.060780, 0.997908, 0.022011,
		38.687286, 34.487392, 40.105991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198677, 33.993271, 39.659668>,  <38.729832, 33.788857, 40.090584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198677, 33.993271, 39.659668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446289, 34.306240, 39.686852>,  <38.594856, 34.494022, 39.703159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446289, 34.306240, 39.686852>,  <38.198677, 33.993271, 39.659668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446289, 34.306240, 39.686852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080314, 0.023008, -0.996504,
		-0.781251, 0.622322, -0.048597,
		0.619028, 0.782423, 0.067956,
		38.631996, 34.540966, 39.707237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988796, 34.433079, 39.211506>,  <38.198677, 33.993271, 39.659668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988796, 34.433079, 39.211506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366940, 34.558353, 39.247746>,  <38.593826, 34.633518, 39.269489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366940, 34.558353, 39.247746>,  <37.988796, 34.433079, 39.211506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366940, 34.558353, 39.247746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033383, 0.183437, -0.982464,
		-0.324316, 0.931806, 0.162959,
		0.945360, 0.313189, 0.090598,
		38.650547, 34.652309, 39.274925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989059, 35.005516, 38.922508>,  <37.988796, 34.433079, 39.211506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989059, 35.005516, 38.922508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385738, 34.955032, 38.912727>,  <38.623745, 34.924740, 38.906857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385738, 34.955032, 38.912727>,  <37.989059, 35.005516, 38.922508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385738, 34.955032, 38.912727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012014, 0.280387, -0.959812,
		0.127999, 0.951553, 0.279576,
		0.991702, -0.126213, -0.024457,
		38.683250, 34.917168, 38.905392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163006, 35.524426, 38.453068>,  <37.989059, 35.005516, 38.922508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163006, 35.524426, 38.453068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449768, 35.245869, 38.466190>,  <38.621826, 35.078735, 38.474064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449768, 35.245869, 38.466190>,  <38.163006, 35.524426, 38.453068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449768, 35.245869, 38.466190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163268, 0.121963, -0.979014,
		0.677779, 0.707220, 0.201136,
		0.716909, -0.696395, 0.032802,
		38.664841, 35.036949, 38.476032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684662, 35.741779, 37.945744>,  <38.163006, 35.524426, 38.453068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684662, 35.741779, 37.945744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790947, 35.358784, 37.990658>,  <38.854717, 35.128986, 38.017609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790947, 35.358784, 37.990658>,  <38.684662, 35.741779, 37.945744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790947, 35.358784, 37.990658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088424, -0.140192, -0.986168,
		0.959987, 0.252112, -0.121917,
		0.265717, -0.957489, 0.112290,
		38.870663, 35.071537, 38.024345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294640, 35.643345, 37.518803>,  <38.684662, 35.741779, 37.945744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294640, 35.643345, 37.518803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086117, 35.305233, 37.565701>,  <38.961002, 35.102367, 37.593838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086117, 35.305233, 37.565701>,  <39.294640, 35.643345, 37.518803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086117, 35.305233, 37.565701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008576, -0.132194, -0.991187,
		0.853327, -0.517718, 0.061664,
		-0.521306, -0.845277, 0.117245,
		38.929726, 35.051651, 37.600876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662926, 35.107445, 37.099449>,  <39.294640, 35.643345, 37.518803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662926, 35.107445, 37.099449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290859, 34.981327, 37.174683>,  <39.067619, 34.905655, 37.219822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290859, 34.981327, 37.174683>,  <39.662926, 35.107445, 37.099449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290859, 34.981327, 37.174683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176543, -0.065063, -0.982140,
		0.321900, -0.946761, 0.004857,
		-0.930168, -0.315294, 0.188088,
		39.011810, 34.886738, 37.231110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671429, 34.513882, 36.706345>,  <39.662926, 35.107445, 37.099449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671429, 34.513882, 36.706345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290333, 34.605465, 36.786201>,  <39.061676, 34.660416, 36.834114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290333, 34.605465, 36.786201>,  <39.671429, 34.513882, 36.706345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290333, 34.605465, 36.786201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238312, -0.155800, -0.958610,
		-0.188385, -0.960885, 0.203003,
		-0.952743, 0.228966, 0.199640,
		39.004509, 34.674152, 36.846092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262875, 33.868504, 36.651318>,  <39.671429, 34.513882, 36.706345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262875, 33.868504, 36.651318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090088, 34.217812, 36.561153>,  <38.986416, 34.427395, 36.507057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090088, 34.217812, 36.561153>,  <39.262875, 33.868504, 36.651318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090088, 34.217812, 36.561153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107046, -0.198519, -0.974234,
		-0.895516, -0.444963, -0.007727,
		-0.431964, 0.873269, -0.225408,
		38.960499, 34.479794, 36.493530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839497, 33.562111, 36.148022>,  <39.262875, 33.868504, 36.651318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839497, 33.562111, 36.148022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999237, 33.229210, 35.994202>,  <40.095081, 33.029469, 35.901909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999237, 33.229210, 35.994202>,  <39.839497, 33.562111, 36.148022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999237, 33.229210, 35.994202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771005, -0.531824, 0.350308,
		-0.496055, 0.156592, -0.854054,
		0.399351, -0.832251, -0.384547,
		40.119041, 32.979534, 35.878838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381454, 33.122627, 35.672241>,  <39.839497, 33.562111, 36.148022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381454, 33.122627, 35.672241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639664, 32.867531, 35.840332>,  <39.794590, 32.714474, 35.941185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639664, 32.867531, 35.840332>,  <39.381454, 33.122627, 35.672241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639664, 32.867531, 35.840332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748361, -0.418293, 0.514769,
		-0.152513, -0.646773, -0.747278,
		0.645520, -0.637743, 0.420225,
		39.833321, 32.676208, 35.966400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925846, 32.520157, 35.682968>,  <39.381454, 33.122627, 35.672241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925846, 32.520157, 35.682968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231869, 32.438995, 35.927433>,  <39.415482, 32.390301, 36.074112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231869, 32.438995, 35.927433>,  <38.925846, 32.520157, 35.682968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231869, 32.438995, 35.927433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619760, -0.489729, 0.613240,
		0.174875, -0.847937, -0.500421,
		0.765060, -0.202900, 0.611159,
		39.461388, 32.378124, 36.110779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824326, 31.888309, 35.720013>,  <38.925846, 32.520157, 35.682968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824326, 31.888309, 35.720013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024002, 32.006371, 36.045883>,  <39.143806, 32.077206, 36.241405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024002, 32.006371, 36.045883>,  <38.824326, 31.888309, 35.720013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024002, 32.006371, 36.045883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567553, -0.599064, 0.564806,
		0.654745, -0.744317, -0.131534,
		0.499192, 0.295152, 0.814673,
		39.173759, 32.094917, 36.290287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992725, 31.252018, 36.043999>,  <38.824326, 31.888309, 35.720013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992725, 31.252018, 36.043999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003128, 31.544128, 36.317062>,  <39.009369, 31.719395, 36.480900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003128, 31.544128, 36.317062>,  <38.992725, 31.252018, 36.043999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003128, 31.544128, 36.317062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622123, -0.522708, 0.582872,
		0.782487, -0.439853, 0.440731,
		0.026004, 0.730278, 0.682654,
		39.010929, 31.763212, 36.521858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186203, 30.879385, 36.561508>,  <38.992725, 31.252018, 36.043999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186203, 30.879385, 36.561508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003494, 31.209980, 36.693130>,  <38.893867, 31.408337, 36.772102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003494, 31.209980, 36.693130>,  <39.186203, 30.879385, 36.561508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003494, 31.209980, 36.693130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612303, -0.560434, 0.557672,
		0.645322, 0.053249, 0.762052,
		-0.456776, 0.826486, 0.329056,
		38.866463, 31.457926, 36.791847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272560, 30.851046, 37.303741>,  <39.186203, 30.879385, 36.561508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272560, 30.851046, 37.303741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969856, 31.097343, 37.215942>,  <38.788235, 31.245121, 37.163261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969856, 31.097343, 37.215942>,  <39.272560, 30.851046, 37.303741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969856, 31.097343, 37.215942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548894, -0.416186, 0.724917,
		0.355011, 0.669067, 0.652929,
		-0.756758, 0.615742, -0.219497,
		38.742828, 31.282066, 37.150093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181694, 31.097136, 37.898907>,  <39.272560, 30.851046, 37.303741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181694, 31.097136, 37.898907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843262, 31.173738, 37.699917>,  <38.640202, 31.219700, 37.580524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843262, 31.173738, 37.699917>,  <39.181694, 31.097136, 37.898907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843262, 31.173738, 37.699917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528582, -0.180705, 0.829426,
		0.068947, 0.964713, 0.254118,
		-0.846078, 0.191508, -0.497470,
		38.589439, 31.231192, 37.550674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832737, 31.617245, 38.323017>,  <39.181694, 31.097136, 37.898907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832737, 31.617245, 38.323017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560604, 31.429136, 38.098164>,  <38.397324, 31.316271, 37.963253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560604, 31.429136, 38.098164>,  <38.832737, 31.617245, 38.323017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560604, 31.429136, 38.098164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561174, -0.159092, 0.812264,
		-0.471416, 0.868063, -0.155670,
		-0.680331, -0.470272, -0.562133,
		38.356506, 31.288055, 37.929523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151554, 31.974491, 38.404293>,  <38.832737, 31.617245, 38.323017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151554, 31.974491, 38.404293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039757, 31.619038, 38.258850>,  <37.972679, 31.405766, 38.171585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039757, 31.619038, 38.258850>,  <38.151554, 31.974491, 38.404293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039757, 31.619038, 38.258850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583426, -0.143591, 0.799372,
		-0.762561, 0.435557, -0.478321,
		-0.279489, -0.888635, -0.363612,
		37.955910, 31.352448, 38.149765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393398, 31.878174, 38.497013>,  <38.151554, 31.974491, 38.404293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393398, 31.878174, 38.497013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522957, 31.502659, 38.450073>,  <37.600693, 31.277349, 38.421909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522957, 31.502659, 38.450073>,  <37.393398, 31.878174, 38.497013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522957, 31.502659, 38.450073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406074, -0.249980, 0.878985,
		-0.854514, -0.237048, -0.462184,
		0.323898, -0.938785, -0.117352,
		37.620125, 31.221024, 38.414867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805599, 31.494074, 38.556602>,  <37.393398, 31.878174, 38.497013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805599, 31.494074, 38.556602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104767, 31.241852, 38.639572>,  <37.284267, 31.090519, 38.689354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104767, 31.241852, 38.639572>,  <36.805599, 31.494074, 38.556602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104767, 31.241852, 38.639572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478025, -0.294825, 0.827388,
		-0.460558, -0.717970, -0.521925,
		0.747916, -0.630553, 0.207423,
		37.329140, 31.052685, 38.701797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457222, 30.872782, 38.714630>,  <36.805599, 31.494074, 38.556602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457222, 30.872782, 38.714630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825722, 30.850498, 38.868618>,  <37.046822, 30.837128, 38.961010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825722, 30.850498, 38.868618>,  <36.457222, 30.872782, 38.714630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825722, 30.850498, 38.868618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372759, -0.409260, 0.832801,
		0.111161, -0.910716, -0.397794,
		0.921246, -0.055706, 0.384971,
		37.102097, 30.833786, 38.984108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446087, 30.266762, 39.140896>,  <36.457222, 30.872782, 38.714630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446087, 30.266762, 39.140896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776875, 30.461458, 39.253475>,  <36.975346, 30.578276, 39.321022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776875, 30.461458, 39.253475>,  <36.446087, 30.266762, 39.140896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776875, 30.461458, 39.253475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224674, -0.172805, 0.958989,
		0.515413, -0.856285, -0.033546,
		0.826965, 0.486739, 0.281451,
		37.024963, 30.607479, 39.337910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706436, 29.860445, 39.595345>,  <36.446087, 30.266762, 39.140896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706436, 29.860445, 39.595345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874073, 30.211109, 39.689857>,  <36.974655, 30.421509, 39.746567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874073, 30.211109, 39.689857>,  <36.706436, 29.860445, 39.595345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874073, 30.211109, 39.689857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137678, -0.195869, 0.970917,
		0.897446, -0.439432, 0.038610,
		0.419089, 0.876661, 0.236282,
		36.999802, 30.474108, 39.760742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248634, 29.476513, 39.397373>,  <36.706436, 29.860445, 39.595345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248634, 29.476513, 39.397373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946495, 29.214472, 39.404236>,  <36.765213, 29.057247, 39.408352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946495, 29.214472, 39.404236>,  <37.248634, 29.476513, 39.397373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946495, 29.214472, 39.404236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246658, 0.259951, -0.933588,
		0.607134, -0.709414, -0.357939,
		-0.755346, -0.655101, 0.017157,
		36.719891, 29.017942, 39.409382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324806, 29.087835, 38.777309>,  <37.248634, 29.476513, 39.397373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324806, 29.087835, 38.777309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944183, 29.035463, 38.888592>,  <36.715809, 29.004040, 38.955360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944183, 29.035463, 38.888592>,  <37.324806, 29.087835, 38.777309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944183, 29.035463, 38.888592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302007, 0.228134, -0.925606,
		0.057717, -0.964787, -0.256623,
		-0.951557, -0.130926, 0.278205,
		36.658718, 28.996185, 38.972054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147682, 28.733673, 38.294327>,  <37.324806, 29.087835, 38.777309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147682, 28.733673, 38.294327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794025, 28.857475, 38.434326>,  <36.581833, 28.931757, 38.518326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794025, 28.857475, 38.434326>,  <37.147682, 28.733673, 38.294327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794025, 28.857475, 38.434326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277481, 0.254850, -0.926313,
		-0.375896, -0.916111, -0.139442,
		-0.884142, 0.309505, 0.350000,
		36.528782, 28.950327, 38.539326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618511, 28.435896, 37.918388>,  <37.147682, 28.733673, 38.294327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618511, 28.435896, 37.918388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425571, 28.758062, 38.056168>,  <36.309807, 28.951363, 38.138836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425571, 28.758062, 38.056168>,  <36.618511, 28.435896, 37.918388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425571, 28.758062, 38.056168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286413, 0.226595, -0.930926,
		-0.827831, -0.547687, 0.121383,
		-0.482351, 0.805415, 0.344447,
		36.280865, 28.999687, 38.159500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921135, 28.375776, 37.516430>,  <36.618511, 28.435896, 37.918388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921135, 28.375776, 37.516430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921268, 28.737392, 37.687408>,  <35.921349, 28.954363, 37.789993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921268, 28.737392, 37.687408>,  <35.921135, 28.375776, 37.516430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921268, 28.737392, 37.687408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435178, 0.384975, -0.813888,
		-0.900344, -0.185745, 0.393547,
		0.000330, 0.904043, 0.427442,
		35.921368, 29.008606, 37.815639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283417, 28.638964, 37.411880>,  <35.921135, 28.375776, 37.516430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283417, 28.638964, 37.411880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459995, 28.983580, 37.512177>,  <35.565945, 29.190350, 37.572353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459995, 28.983580, 37.512177>,  <35.283417, 28.638964, 37.411880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459995, 28.983580, 37.512177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542420, 0.478832, -0.690290,
		-0.714776, 0.168721, 0.678697,
		0.441448, 0.861541, 0.250740,
		35.592430, 29.242043, 37.587399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793549, 29.171476, 37.612183>,  <35.283417, 28.638964, 37.411880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793549, 29.171476, 37.612183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119480, 29.354042, 37.469223>,  <35.315041, 29.463581, 37.383446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119480, 29.354042, 37.469223>,  <34.793549, 29.171476, 37.612183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119480, 29.354042, 37.469223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568204, 0.506671, -0.648404,
		-0.114859, 0.731415, 0.672189,
		0.814832, 0.456417, -0.357398,
		35.363930, 29.490967, 37.362003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587013, 29.937792, 37.530457>,  <34.793549, 29.171476, 37.612183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587013, 29.937792, 37.530457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912338, 29.871725, 37.307301>,  <35.107533, 29.832085, 37.173409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912338, 29.871725, 37.307301>,  <34.587013, 29.937792, 37.530457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912338, 29.871725, 37.307301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385533, 0.565148, -0.729364,
		0.435758, 0.808286, 0.395965,
		0.813314, -0.165168, -0.557889,
		35.156334, 29.822174, 37.139935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819241, 30.666462, 37.370819>,  <34.587013, 29.937792, 37.530457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819241, 30.666462, 37.370819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936813, 30.389780, 37.106956>,  <35.007355, 30.223770, 36.948639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936813, 30.389780, 37.106956>,  <34.819241, 30.666462, 37.370819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936813, 30.389780, 37.106956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465284, 0.499312, -0.730889,
		0.834935, 0.521758, -0.175076,
		0.293929, -0.691705, -0.659659,
		35.024994, 30.182268, 36.909058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988289, 31.064249, 36.819675>,  <34.819241, 30.666462, 37.370819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988289, 31.064249, 36.819675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949490, 30.698999, 36.661285>,  <34.926212, 30.479851, 36.566250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949490, 30.698999, 36.661285>,  <34.988289, 31.064249, 36.819675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949490, 30.698999, 36.661285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375365, 0.402036, -0.835146,
		0.921788, 0.067631, -0.381750,
		-0.096995, -0.913123, -0.395978,
		34.920391, 30.425062, 36.542492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473232, 30.978685, 36.309547>,  <34.988289, 31.064249, 36.819675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473232, 30.978685, 36.309547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199604, 30.709213, 36.197681>,  <35.035427, 30.547531, 36.130562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199604, 30.709213, 36.197681>,  <35.473232, 30.978685, 36.309547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199604, 30.709213, 36.197681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225561, 0.559982, -0.797209,
		0.693669, -0.482263, -0.535020,
		-0.684066, -0.673679, -0.279662,
		34.994385, 30.507111, 36.113781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495487, 30.738632, 35.504498>,  <35.473232, 30.978685, 36.309547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495487, 30.738632, 35.504498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148197, 30.777842, 35.699055>,  <34.939823, 30.801367, 35.815788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148197, 30.777842, 35.699055>,  <35.495487, 30.738632, 35.504498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148197, 30.777842, 35.699055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366912, 0.533056, -0.762383,
		-0.334004, -0.840383, -0.426847,
		-0.868226, 0.098024, 0.486389,
		34.887730, 30.807249, 35.844971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.219559, 28.108713, 43.125450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830276, 28.016857, 43.130154>,  <36.596706, 27.961742, 43.132977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.830276, 28.016857, 43.130154>,  <37.219559, 28.108713, 43.125450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830276, 28.016857, 43.130154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008441, -0.015436, -0.999845,
		0.229788, -0.973153, 0.013084,
		-0.973204, -0.229642, 0.011762,
		36.538315, 27.947966, 43.133682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076347, 27.450191, 42.697811>,  <37.219559, 28.108713, 43.125450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076347, 27.450191, 42.697811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755669, 27.689222, 42.692440>,  <36.563259, 27.832640, 42.689217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.755669, 27.689222, 42.692440>,  <37.076347, 27.450191, 42.697811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755669, 27.689222, 42.692440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000138, -0.022647, -0.999744,
		-0.597726, -0.801493, 0.018238,
		-0.801700, 0.597576, -0.013426,
		36.515160, 27.868494, 42.688412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732006, 27.198078, 42.165550>,  <37.076347, 27.450191, 42.697811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732006, 27.198078, 42.165550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.599674, 27.574526, 42.193409>,  <36.520275, 27.800394, 42.210125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.599674, 27.574526, 42.193409>,  <36.732006, 27.198078, 42.165550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599674, 27.574526, 42.193409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056856, 0.053791, -0.996932,
		-0.941976, -0.333774, 0.035712,
		-0.330829, 0.941117, 0.069647,
		36.500427, 27.856861, 42.214302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156044, 27.269754, 41.793358>,  <36.732006, 27.198078, 42.165550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156044, 27.269754, 41.793358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257366, 27.655512, 41.823780>,  <36.318161, 27.886967, 41.842033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257366, 27.655512, 41.823780>,  <36.156044, 27.269754, 41.793358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257366, 27.655512, 41.823780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138574, 0.113980, -0.983771,
		-0.957409, 0.238657, 0.162512,
		0.253307, 0.964392, 0.076053,
		36.333359, 27.944830, 41.846596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737595, 27.482323, 41.240894>,  <36.156044, 27.269754, 41.793358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737595, 27.482323, 41.240894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975704, 27.797657, 41.303089>,  <36.118568, 27.986858, 41.340405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975704, 27.797657, 41.303089>,  <35.737595, 27.482323, 41.240894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975704, 27.797657, 41.303089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036465, 0.219811, -0.974861,
		-0.802698, 0.574636, 0.159594,
		0.595270, 0.788338, 0.155487,
		36.154285, 28.034159, 41.349735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394291, 28.127272, 41.010094>,  <35.737595, 27.482323, 41.240894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394291, 28.127272, 41.010094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787155, 28.201868, 41.019676>,  <36.022873, 28.246626, 41.025425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787155, 28.201868, 41.019676>,  <35.394291, 28.127272, 41.010094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787155, 28.201868, 41.019676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064461, 0.453679, -0.888831,
		-0.176628, 0.871434, 0.457609,
		0.982165, 0.186490, 0.023958,
		36.081806, 28.257814, 41.026863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602467, 28.876366, 41.045277>,  <35.394291, 28.127272, 41.010094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602467, 28.876366, 41.045277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914536, 28.684889, 40.884186>,  <36.101776, 28.570004, 40.787529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.914536, 28.684889, 40.884186>,  <35.602467, 28.876366, 41.045277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914536, 28.684889, 40.884186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086540, 0.555007, -0.827332,
		0.619554, 0.680311, 0.391573,
		0.780169, -0.478690, -0.402731,
		36.148586, 28.541283, 40.763367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018291, 29.380793, 40.754230>,  <35.602467, 28.876366, 41.045277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018291, 29.380793, 40.754230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163811, 29.055857, 40.571911>,  <36.251122, 28.860895, 40.462517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.163811, 29.055857, 40.571911>,  <36.018291, 29.380793, 40.754230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163811, 29.055857, 40.571911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040804, 0.502762, -0.863462,
		0.930582, 0.295530, 0.216052,
		0.363802, -0.812338, -0.455802,
		36.272953, 28.812155, 40.435169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576500, 29.587671, 40.390469>,  <36.018291, 29.380793, 40.754230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576500, 29.587671, 40.390469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442844, 29.257448, 40.208565>,  <36.362652, 29.059315, 40.099422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442844, 29.257448, 40.208565>,  <36.576500, 29.587671, 40.390469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442844, 29.257448, 40.208565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021073, 0.475830, -0.879285,
		0.942289, -0.303383, -0.141595,
		-0.334135, -0.825557, -0.454763,
		36.342606, 29.009781, 40.072136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312992, 29.782547, 40.184204>,  <36.576500, 29.587671, 40.390469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312992, 29.782547, 40.184204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.257717, 30.178446, 40.198658>,  <37.224552, 30.415985, 40.207329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.257717, 30.178446, 40.198658>,  <37.312992, 29.782547, 40.184204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257717, 30.178446, 40.198658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016264, -0.034212, 0.999282,
		0.990273, 0.138676, -0.011370,
		-0.138187, 0.989747, 0.036134,
		37.216263, 30.475370, 40.209499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796215, 30.082050, 40.703712>,  <37.312992, 29.782547, 40.184204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796215, 30.082050, 40.703712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504101, 30.355173, 40.695217>,  <37.328831, 30.519047, 40.690121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504101, 30.355173, 40.695217>,  <37.796215, 30.082050, 40.703712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504101, 30.355173, 40.695217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115202, 0.153740, 0.981373,
		0.673354, 0.714239, -0.190935,
		-0.730290, 0.682807, -0.021240,
		37.285015, 30.560015, 40.688847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987354, 30.540564, 41.148590>,  <37.796215, 30.082050, 40.703712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987354, 30.540564, 41.148590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603561, 30.645065, 41.106365>,  <37.373287, 30.707766, 41.081028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.603561, 30.645065, 41.106365>,  <37.987354, 30.540564, 41.148590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603561, 30.645065, 41.106365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074697, 0.125413, 0.989288,
		0.271694, 0.957088, -0.100817,
		-0.959480, 0.261253, -0.105566,
		37.315716, 30.723442, 41.074696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887608, 31.167048, 41.469494>,  <37.987354, 30.540564, 41.148590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887608, 31.167048, 41.469494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503895, 31.058649, 41.437649>,  <37.273666, 30.993610, 41.418541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503895, 31.058649, 41.437649>,  <37.887608, 31.167048, 41.469494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503895, 31.058649, 41.437649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165338, 0.310234, 0.936172,
		-0.228999, 0.911217, -0.342408,
		-0.959282, -0.270996, -0.079615,
		37.216110, 30.977350, 41.413765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498615, 31.740536, 41.613052>,  <37.887608, 31.167048, 41.469494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498615, 31.740536, 41.613052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287899, 31.408678, 41.687008>,  <37.161469, 31.209562, 41.731380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.287899, 31.408678, 41.687008>,  <37.498615, 31.740536, 41.613052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287899, 31.408678, 41.687008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092910, 0.272411, 0.957685,
		-0.844903, 0.487319, -0.220586,
		-0.526788, -0.829646, 0.184884,
		37.129864, 31.159784, 41.742474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999538, 32.053909, 42.064442>,  <37.498615, 31.740536, 41.613052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999538, 32.053909, 42.064442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955872, 31.662403, 42.133846>,  <36.929672, 31.427500, 42.175488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955872, 31.662403, 42.133846>,  <36.999538, 32.053909, 42.064442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955872, 31.662403, 42.133846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134436, 0.187487, 0.973024,
		-0.984890, 0.082901, -0.152049,
		-0.109172, -0.978763, 0.173509,
		36.923119, 31.368774, 42.185898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447056, 32.017853, 42.561127>,  <36.999538, 32.053909, 42.064442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447056, 32.017853, 42.561127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656437, 31.678251, 42.589939>,  <36.782066, 31.474491, 42.607227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.656437, 31.678251, 42.589939>,  <36.447056, 32.017853, 42.561127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656437, 31.678251, 42.589939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067125, 0.043183, 0.996810,
		-0.849405, -0.526620, -0.034385,
		0.523456, -0.849003, 0.072029,
		36.813473, 31.423550, 42.611549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136692, 31.564659, 42.986790>,  <36.447056, 32.017853, 42.561127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136692, 31.564659, 42.986790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.507710, 31.415455, 42.995949>,  <36.730320, 31.325932, 43.001446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.507710, 31.415455, 42.995949>,  <36.136692, 31.564659, 42.986790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507710, 31.415455, 42.995949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036755, -0.030073, 0.998872,
		-0.371903, -0.927339, -0.041604,
		0.927544, -0.373012, 0.022900,
		36.785973, 31.303551, 43.002819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184761, 31.077339, 43.499138>,  <36.136692, 31.564659, 42.986790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184761, 31.077339, 43.499138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573818, 31.160414, 43.457500>,  <36.807251, 31.210258, 43.432518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573818, 31.160414, 43.457500>,  <36.184761, 31.077339, 43.499138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573818, 31.160414, 43.457500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127243, -0.101377, 0.986677,
		0.194369, -0.972928, -0.125030,
		0.972641, 0.207689, -0.104094,
		36.865612, 31.222719, 43.426273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624210, 30.540648, 43.875664>,  <36.184761, 31.077339, 43.499138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624210, 30.540648, 43.875664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.887913, 30.840633, 43.853985>,  <37.046135, 31.020624, 43.840977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.887913, 30.840633, 43.853985>,  <36.624210, 30.540648, 43.875664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887913, 30.840633, 43.853985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212575, -0.116754, 0.970145,
		0.721246, -0.651093, -0.236394,
		0.659254, 0.749965, -0.054197,
		37.085690, 31.065622, 43.837727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223274, 30.320524, 44.322868>,  <36.624210, 30.540648, 43.875664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223274, 30.320524, 44.322868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270164, 30.712137, 44.256229>,  <37.298298, 30.947105, 44.216244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.270164, 30.712137, 44.256229>,  <37.223274, 30.320524, 44.322868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270164, 30.712137, 44.256229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275024, 0.129193, 0.952718,
		0.954264, -0.157506, -0.254112,
		0.117230, 0.979031, -0.166602,
		37.305332, 31.005846, 44.206249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883839, 30.479998, 44.415237>,  <37.223274, 30.320524, 44.322868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883839, 30.479998, 44.415237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677921, 30.816957, 44.478928>,  <37.554371, 31.019133, 44.517143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.677921, 30.816957, 44.478928>,  <37.883839, 30.479998, 44.415237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677921, 30.816957, 44.478928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377170, 0.055754, 0.924464,
		0.769890, 0.535963, -0.346429,
		-0.514793, 0.842398, 0.159224,
		37.523483, 31.069677, 44.526695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298252, 30.808462, 44.891598>,  <37.883839, 30.479998, 44.415237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298252, 30.808462, 44.891598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973164, 31.035011, 44.946316>,  <37.778111, 31.170940, 44.979145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.973164, 31.035011, 44.946316>,  <38.298252, 30.808462, 44.891598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973164, 31.035011, 44.946316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259643, 0.141858, 0.955229,
		0.521608, 0.811850, -0.262345,
		-0.812718, 0.566371, 0.136797,
		37.729347, 31.204922, 44.987354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507828, 31.288965, 45.323734>,  <38.298252, 30.808462, 44.891598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507828, 31.288965, 45.323734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109158, 31.293131, 45.356075>,  <37.869957, 31.295630, 45.375481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.109158, 31.293131, 45.356075>,  <38.507828, 31.288965, 45.323734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109158, 31.293131, 45.356075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077815, -0.173980, 0.981670,
		0.024287, 0.984694, 0.172591,
		-0.996672, 0.010412, 0.080849,
		37.810158, 31.296255, 45.380329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.637493, 32.617058, 45.455173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981918, 32.413677, 45.458138>,  <33.188572, 32.291649, 45.459915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.981918, 32.413677, 45.458138>,  <32.637493, 32.617058, 45.455173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981918, 32.413677, 45.458138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271107, 0.446701, -0.852619,
		0.430203, 0.736166, 0.522480,
		0.861061, -0.508447, 0.007408,
		33.240238, 32.261143, 45.460361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135269, 33.042736, 45.143826>,  <32.637493, 32.617058, 45.455173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135269, 33.042736, 45.143826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342628, 32.703972, 45.096474>,  <33.467045, 32.500713, 45.068062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342628, 32.703972, 45.096474>,  <33.135269, 33.042736, 45.143826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342628, 32.703972, 45.096474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156931, 0.230294, -0.960384,
		0.840617, 0.479284, 0.252290,
		0.518398, -0.846907, -0.118375,
		33.498146, 32.449902, 45.060963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684593, 33.318050, 44.881687>,  <33.135269, 33.042736, 45.143826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684593, 33.318050, 44.881687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.676907, 32.934383, 44.768818>,  <33.672295, 32.704182, 44.701096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.676907, 32.934383, 44.768818>,  <33.684593, 33.318050, 44.881687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676907, 32.934383, 44.768818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162175, 0.275497, -0.947523,
		0.986575, -0.063965, 0.150261,
		-0.019212, -0.959171, -0.282172,
		33.671143, 32.646633, 44.684166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259945, 33.289345, 44.320332>,  <33.684593, 33.318050, 44.881687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259945, 33.289345, 44.320332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024414, 32.968475, 44.280739>,  <33.883095, 32.775955, 44.256985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.024414, 32.968475, 44.280739>,  <34.259945, 33.289345, 44.320332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024414, 32.968475, 44.280739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074435, 0.068121, -0.994896,
		0.804823, -0.593191, 0.019599,
		-0.588829, -0.802175, -0.098980,
		33.847767, 32.727821, 44.251045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582245, 32.807491, 43.905853>,  <34.259945, 33.289345, 44.320332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582245, 32.807491, 43.905853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190540, 32.737358, 43.865253>,  <33.955517, 32.695278, 43.840893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190540, 32.737358, 43.865253>,  <34.582245, 32.807491, 43.905853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190540, 32.737358, 43.865253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080305, 0.124024, -0.989024,
		0.185998, -0.976666, -0.107372,
		-0.979263, -0.175334, -0.101499,
		33.896763, 32.684757, 43.834805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548130, 32.416744, 43.320290>,  <34.582245, 32.807491, 43.905853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548130, 32.416744, 43.320290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.165558, 32.529350, 43.351242>,  <33.936012, 32.596912, 43.369816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.165558, 32.529350, 43.351242>,  <34.548130, 32.416744, 43.320290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165558, 32.529350, 43.351242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074913, 0.019544, -0.996999,
		-0.282179, -0.959359, 0.002396,
		-0.956433, 0.281511, 0.077383,
		33.878628, 32.613804, 43.374458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172474, 32.093967, 42.705570>,  <34.548130, 32.416744, 43.320290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172474, 32.093967, 42.705570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929817, 32.372940, 42.858189>,  <33.784222, 32.540325, 42.949760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.929817, 32.372940, 42.858189>,  <34.172474, 32.093967, 42.705570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929817, 32.372940, 42.858189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295157, 0.248040, -0.922691,
		-0.738151, -0.672358, 0.055380,
		-0.606642, 0.697431, 0.381542,
		33.747826, 32.582169, 42.972652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592918, 32.000690, 42.292255>,  <34.172474, 32.093967, 42.705570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592918, 32.000690, 42.292255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.574181, 32.374073, 42.434505>,  <33.562939, 32.598103, 42.519855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.574181, 32.374073, 42.434505>,  <33.592918, 32.000690, 42.292255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574181, 32.374073, 42.434505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233505, 0.335916, -0.912489,
		-0.971226, -0.125787, 0.202230,
		-0.046847, 0.933455, 0.355623,
		33.560127, 32.654110, 42.541191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873726, 32.216225, 42.241169>,  <33.592918, 32.000690, 42.292255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873726, 32.216225, 42.241169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117764, 32.533085, 42.247940>,  <33.264187, 32.723202, 42.252003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.117764, 32.533085, 42.247940>,  <32.873726, 32.216225, 42.241169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117764, 32.533085, 42.247940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405773, 0.330725, -0.852038,
		-0.680542, 0.512951, 0.523205,
		0.610091, 0.792150, 0.016931,
		33.300793, 32.770729, 42.253017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454479, 32.713512, 42.119400>,  <32.873726, 32.216225, 42.241169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454479, 32.713512, 42.119400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815144, 32.871342, 42.048599>,  <33.031540, 32.966038, 42.006119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815144, 32.871342, 42.048599>,  <32.454479, 32.713512, 42.119400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815144, 32.871342, 42.048599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346488, 0.414221, -0.841645,
		-0.258770, 0.820204, 0.510199,
		0.901656, 0.394570, -0.177003,
		33.085640, 32.989712, 41.995499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274769, 33.328964, 41.846111>,  <32.454479, 32.713512, 42.119400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274769, 33.328964, 41.846111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.653679, 33.303146, 41.720573>,  <32.881027, 33.287655, 41.645252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.653679, 33.303146, 41.720573>,  <32.274769, 33.328964, 41.846111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653679, 33.303146, 41.720573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274048, 0.344290, -0.897977,
		0.166014, 0.936642, 0.308450,
		0.947279, -0.064547, -0.313841,
		32.937862, 33.283783, 41.626423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498909, 33.975155, 41.397457>,  <32.274769, 33.328964, 41.846111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498909, 33.975155, 41.397457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751884, 33.683376, 41.293213>,  <32.903671, 33.508308, 41.230667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.751884, 33.683376, 41.293213>,  <32.498909, 33.975155, 41.397457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751884, 33.683376, 41.293213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152444, 0.212658, -0.965162,
		0.759459, 0.650138, 0.023293,
		0.632442, -0.729450, -0.260615,
		32.941616, 33.464542, 41.215027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859482, 34.213402, 40.840252>,  <32.498909, 33.975155, 41.397457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859482, 34.213402, 40.840252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.988785, 33.836105, 40.809780>,  <33.066368, 33.609730, 40.791496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.988785, 33.836105, 40.809780>,  <32.859482, 34.213402, 40.840252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988785, 33.836105, 40.809780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089939, 0.110758, -0.989769,
		0.942026, 0.313102, 0.120637,
		0.323260, -0.943239, -0.076177,
		33.085762, 33.553135, 40.786926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550426, 34.240658, 40.460430>,  <32.859482, 34.213402, 40.840252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550426, 34.240658, 40.460430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.382908, 33.879578, 40.420956>,  <33.282394, 33.662930, 40.397270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.382908, 33.879578, 40.420956>,  <33.550426, 34.240658, 40.460430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382908, 33.879578, 40.420956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089004, 0.067343, -0.993752,
		0.903706, -0.424967, 0.052141,
		-0.418801, -0.902700, -0.098682,
		33.257267, 33.608768, 40.391350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324039, 34.190228, 40.555153>,  <33.550426, 34.240658, 40.460430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324039, 34.190228, 40.555153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575798, 34.501049, 40.552368>,  <34.726852, 34.687542, 40.550697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575798, 34.501049, 40.552368>,  <34.324039, 34.190228, 40.555153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575798, 34.501049, 40.552368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117469, 0.103994, 0.987617,
		0.768155, -0.620785, 0.156733,
		0.629396, 0.777053, -0.006961,
		34.764618, 34.734165, 40.550282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884216, 34.080994, 41.128162>,  <34.324039, 34.190228, 40.555153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884216, 34.080994, 41.128162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883717, 34.472717, 41.047215>,  <34.883419, 34.707752, 40.998646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.883717, 34.472717, 41.047215>,  <34.884216, 34.080994, 41.128162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883717, 34.472717, 41.047215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052210, 0.202029, 0.977987,
		0.998635, 0.011783, 0.050878,
		-0.001245, 0.979309, -0.202369,
		34.883343, 34.766510, 40.986504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464378, 34.374596, 41.470779>,  <34.884216, 34.080994, 41.128162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464378, 34.374596, 41.470779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228516, 34.692604, 41.413857>,  <35.086998, 34.883408, 41.379704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228516, 34.692604, 41.413857>,  <35.464378, 34.374596, 41.470779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228516, 34.692604, 41.413857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013427, 0.185825, 0.982491,
		0.807542, 0.577421, -0.120248,
		-0.589656, 0.795018, -0.142309,
		35.051620, 34.931110, 41.371162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850323, 35.049950, 41.744392>,  <35.464378, 34.374596, 41.470779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850323, 35.049950, 41.744392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451939, 35.084820, 41.753052>,  <35.212910, 35.105743, 41.758247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.451939, 35.084820, 41.753052>,  <35.850323, 35.049950, 41.744392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451939, 35.084820, 41.753052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036293, 0.170118, 0.984755,
		0.082167, 0.981560, -0.172595,
		-0.995957, 0.087178, 0.021646,
		35.153152, 35.110973, 41.759544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774017, 35.623005, 42.174835>,  <35.850323, 35.049950, 41.744392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774017, 35.623005, 42.174835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406071, 35.466183, 42.179497>,  <35.185303, 35.372089, 42.182293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406071, 35.466183, 42.179497>,  <35.774017, 35.623005, 42.174835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406071, 35.466183, 42.179497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007702, 0.047757, 0.998829,
		-0.392149, 0.918703, -0.046949,
		-0.919869, -0.392052, 0.011652,
		35.130112, 35.348568, 42.182991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347626, 36.138012, 42.611198>,  <35.774017, 35.623005, 42.174835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347626, 36.138012, 42.611198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174023, 35.778820, 42.582153>,  <35.069859, 35.563305, 42.564728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174023, 35.778820, 42.582153>,  <35.347626, 36.138012, 42.611198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174023, 35.778820, 42.582153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094462, -0.034795, 0.994920,
		-0.895942, 0.438664, -0.069723,
		-0.434010, -0.897977, -0.072611,
		35.043819, 35.509426, 42.560371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737545, 36.192451, 42.942280>,  <35.347626, 36.138012, 42.611198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737545, 36.192451, 42.942280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.848881, 35.809387, 42.971691>,  <34.915684, 35.579548, 42.989338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.848881, 35.809387, 42.971691>,  <34.737545, 36.192451, 42.942280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848881, 35.809387, 42.971691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171018, 0.025920, 0.984927,
		-0.945135, -0.286720, -0.156563,
		0.278340, -0.957664, 0.073532,
		34.932384, 35.522087, 42.993752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305191, 35.852604, 43.460262>,  <34.737545, 36.192451, 42.942280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305191, 35.852604, 43.460262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584187, 35.569279, 43.416809>,  <34.751583, 35.399284, 43.390736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584187, 35.569279, 43.416809>,  <34.305191, 35.852604, 43.460262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584187, 35.569279, 43.416809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124210, -0.268808, 0.955151,
		-0.705749, -0.652713, -0.275470,
		0.697488, -0.708313, -0.108638,
		34.793434, 35.356785, 43.384216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951077, 35.209114, 43.527580>,  <34.305191, 35.852604, 43.460262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951077, 35.209114, 43.527580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339668, 35.178162, 43.617233>,  <34.572823, 35.159592, 43.671024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339668, 35.178162, 43.617233>,  <33.951077, 35.209114, 43.527580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339668, 35.178162, 43.617233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235915, -0.220529, 0.946420,
		-0.023802, -0.972306, -0.232494,
		0.971482, -0.077376, 0.224133,
		34.631111, 35.154949, 43.684471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029755, 34.643555, 44.063148>,  <33.951077, 35.209114, 43.527580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029755, 34.643555, 44.063148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.398991, 34.794792, 44.091305>,  <34.620533, 34.885536, 44.108200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.398991, 34.794792, 44.091305>,  <34.029755, 34.643555, 44.063148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398991, 34.794792, 44.091305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008359, -0.163262, 0.986547,
		0.384502, -0.911257, -0.147544,
		0.923086, 0.378096, 0.070391,
		34.675915, 34.908222, 44.112423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452854, 34.145401, 44.469769>,  <34.029755, 34.643555, 44.063148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452854, 34.145401, 44.469769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597652, 34.516777, 44.503139>,  <34.684532, 34.739601, 44.523163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597652, 34.516777, 44.503139>,  <34.452854, 34.145401, 44.469769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597652, 34.516777, 44.503139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092468, -0.124816, 0.987862,
		0.927583, -0.349885, -0.131033,
		0.361993, 0.928440, 0.083425,
		34.706249, 34.795311, 44.528168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064503, 34.081192, 44.812565>,  <34.452854, 34.145401, 44.469769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064503, 34.081192, 44.812565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917580, 34.445778, 44.886662>,  <34.829426, 34.664528, 44.931118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917580, 34.445778, 44.886662>,  <35.064503, 34.081192, 44.812565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917580, 34.445778, 44.886662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015017, -0.193325, 0.981020,
		0.929977, 0.363122, 0.057323,
		-0.367312, 0.911465, 0.185241,
		34.807384, 34.719215, 44.942234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376446, 34.220844, 45.410229>,  <35.064503, 34.081192, 44.812565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376446, 34.220844, 45.410229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072906, 34.480938, 45.395489>,  <34.890785, 34.636993, 45.386646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072906, 34.480938, 45.395489>,  <35.376446, 34.220844, 45.410229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072906, 34.480938, 45.395489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164969, -0.137177, 0.976713,
		0.630033, 0.747251, 0.211363,
		-0.758844, 0.650230, -0.036847,
		34.845253, 34.676006, 45.384434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524521, 34.690552, 45.912804>,  <35.376446, 34.220844, 45.410229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524521, 34.690552, 45.912804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.131138, 34.716312, 45.845089>,  <34.895107, 34.731770, 45.804459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.131138, 34.716312, 45.845089>,  <35.524521, 34.690552, 45.912804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131138, 34.716312, 45.845089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174365, -0.083699, 0.981117,
		0.049018, 0.994408, 0.093545,
		-0.983460, 0.064404, -0.169287,
		34.836102, 34.735634, 45.794304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108753, 35.170975, 46.190376>,  <35.524521, 34.690552, 45.912804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108753, 35.170975, 46.190376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.461319, 34.990005, 46.244659>,  <36.672859, 34.881424, 46.277229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.461319, 34.990005, 46.244659>,  <36.108753, 35.170975, 46.190376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461319, 34.990005, 46.244659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257185, 0.218709, -0.941288,
		0.396182, 0.864568, 0.309131,
		0.881417, -0.452425, 0.135706,
		36.725742, 34.854279, 46.285370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537910, 35.566002, 45.859066>,  <36.108753, 35.170975, 46.190376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537910, 35.566002, 45.859066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713703, 35.207077, 45.875488>,  <36.819180, 34.991722, 45.885342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713703, 35.207077, 45.875488>,  <36.537910, 35.566002, 45.859066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713703, 35.207077, 45.875488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385503, 0.147135, -0.910900,
		0.811322, 0.416149, 0.410580,
		0.439480, -0.897313, 0.041053,
		36.845547, 34.937881, 45.887806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198120, 35.583393, 45.525944>,  <36.537910, 35.566002, 45.859066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198120, 35.583393, 45.525944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161835, 35.185696, 45.548752>,  <37.140064, 34.947079, 45.562439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.161835, 35.185696, 45.548752>,  <37.198120, 35.583393, 45.525944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161835, 35.185696, 45.548752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356695, -0.085898, -0.930264,
		0.929806, -0.064050, 0.362434,
		-0.090716, -0.994243, 0.057022,
		37.134621, 34.887424, 45.565857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743538, 35.321201, 45.323639>,  <37.198120, 35.583393, 45.525944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743538, 35.321201, 45.323639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.533867, 34.981384, 45.299934>,  <37.408062, 34.777493, 45.285713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.533867, 34.981384, 45.299934>,  <37.743538, 35.321201, 45.323639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533867, 34.981384, 45.299934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562955, -0.293456, -0.772635,
		0.638997, -0.438361, 0.632078,
		-0.524180, -0.849543, -0.059260,
		37.376614, 34.726521, 45.282158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184853, 34.600510, 45.223270>,  <37.743538, 35.321201, 45.323639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184853, 34.600510, 45.223270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.815067, 34.591408, 45.071037>,  <37.593197, 34.585945, 44.979698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.815067, 34.591408, 45.071037>,  <38.184853, 34.600510, 45.223270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815067, 34.591408, 45.071037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374318, -0.243785, -0.894681,
		-0.072422, -0.969562, 0.233889,
		-0.924468, -0.022755, -0.380580,
		37.537727, 34.584583, 44.956863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196426, 34.026611, 44.903008>,  <38.184853, 34.600510, 45.223270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196426, 34.026611, 44.903008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882042, 34.221676, 44.750984>,  <37.693409, 34.338715, 44.659771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.882042, 34.221676, 44.750984>,  <38.196426, 34.026611, 44.903008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882042, 34.221676, 44.750984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311658, -0.218405, -0.924753,
		-0.533977, -0.845270, 0.019673,
		-0.785963, 0.487666, -0.380058,
		37.646252, 34.367977, 44.636967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091789, 33.585899, 44.292000>,  <38.196426, 34.026611, 44.903008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091789, 33.585899, 44.292000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887112, 33.928181, 44.261189>,  <37.764305, 34.133549, 44.242702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887112, 33.928181, 44.261189>,  <38.091789, 33.585899, 44.292000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887112, 33.928181, 44.261189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309465, 0.099929, -0.945646,
		-0.801499, -0.507719, -0.315945,
		-0.511694, 0.855708, -0.077028,
		37.733604, 34.184895, 44.238079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770535, 33.534382, 43.664925>,  <38.091789, 33.585899, 44.292000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770535, 33.534382, 43.664925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805958, 33.918797, 43.769669>,  <37.827213, 34.149445, 43.832516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805958, 33.918797, 43.769669>,  <37.770535, 33.534382, 43.664925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805958, 33.918797, 43.769669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317965, 0.221866, -0.921778,
		-0.943957, 0.164896, -0.285926,
		0.088560, 0.961033, 0.261863,
		37.832527, 34.207108, 43.848228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401268, 33.878471, 43.174248>,  <37.770535, 33.534382, 43.664925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401268, 33.878471, 43.174248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659302, 34.144215, 43.325241>,  <37.814121, 34.303661, 43.415836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.659302, 34.144215, 43.325241>,  <37.401268, 33.878471, 43.174248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659302, 34.144215, 43.325241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144528, 0.379015, -0.914035,
		-0.750315, 0.644191, 0.148481,
		0.645089, 0.664354, 0.377484,
		37.852829, 34.343521, 43.438488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241592, 34.552074, 42.869583>,  <37.401268, 33.878471, 43.174248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241592, 34.552074, 42.869583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610790, 34.606609, 43.013523>,  <37.832310, 34.639332, 43.099888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.610790, 34.606609, 43.013523>,  <37.241592, 34.552074, 42.869583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610790, 34.606609, 43.013523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242978, 0.518648, -0.819736,
		-0.298396, 0.844047, 0.445582,
		0.922996, 0.136339, 0.359847,
		37.887688, 34.647511, 43.121479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479904, 35.306175, 42.766289>,  <37.241592, 34.552074, 42.869583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479904, 35.306175, 42.766289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.813633, 35.097813, 42.838474>,  <38.013870, 34.972794, 42.881786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.813633, 35.097813, 42.838474>,  <37.479904, 35.306175, 42.766289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813633, 35.097813, 42.838474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444817, 0.442734, -0.778540,
		0.325649, 0.729825, 0.601089,
		0.834321, -0.520905, 0.180462,
		38.063931, 34.941540, 42.892612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029011, 35.690884, 42.487736>,  <37.479904, 35.306175, 42.766289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029011, 35.690884, 42.487736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225292, 35.342484, 42.478123>,  <38.343060, 35.133446, 42.472355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225292, 35.342484, 42.478123>,  <38.029011, 35.690884, 42.487736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225292, 35.342484, 42.478123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233098, 0.157800, -0.959565,
		0.839570, 0.465257, 0.280460,
		0.490701, -0.870997, -0.024033,
		38.372501, 35.081184, 42.470913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704594, 35.778992, 42.169327>,  <38.029011, 35.690884, 42.487736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704594, 35.778992, 42.169327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.633755, 35.389965, 42.109001>,  <38.591251, 35.156548, 42.072803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.633755, 35.389965, 42.109001>,  <38.704594, 35.778992, 42.169327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633755, 35.389965, 42.109001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296494, 0.093400, -0.950457,
		0.938471, -0.213037, 0.271820,
		-0.177095, -0.972570, -0.150817,
		38.580627, 35.098194, 42.063755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204552, 35.577736, 41.705387>,  <38.704594, 35.778992, 42.169327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204552, 35.577736, 41.705387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946270, 35.273731, 41.675858>,  <38.791302, 35.091328, 41.658142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946270, 35.273731, 41.675858>,  <39.204552, 35.577736, 41.705387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946270, 35.273731, 41.675858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180341, -0.057845, -0.981902,
		0.741987, -0.647329, 0.174412,
		-0.645702, -0.760012, -0.073820,
		38.752560, 35.045727, 41.653713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.418625, 34.357555, 29.260599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.190876, 34.184769, 29.540377>,  <32.054226, 34.081097, 29.708242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.190876, 34.184769, 29.540377>,  <32.418625, 34.357555, 29.260599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190876, 34.184769, 29.540377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717945, 0.675745, -0.167102,
		-0.400463, -0.597305, -0.694878,
		-0.569371, -0.431966, 0.699443,
		32.020065, 34.055180, 29.750210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455582, 34.091160, 28.606516>,  <32.418625, 34.357555, 29.260599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455582, 34.091160, 28.606516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.148838, 33.846390, 28.529087>,  <31.964792, 33.699528, 28.482630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.148838, 33.846390, 28.529087>,  <32.455582, 34.091160, 28.606516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148838, 33.846390, 28.529087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492448, 0.367570, 0.788915,
		-0.411607, 0.700312, -0.583217,
		-0.766860, -0.611927, -0.193572,
		31.918779, 33.662811, 28.471016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899508, 34.538799, 28.680508>,  <32.455582, 34.091160, 28.606516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899508, 34.538799, 28.680508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749754, 34.167912, 28.684521>,  <31.659901, 33.945377, 28.686928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.749754, 34.167912, 28.684521>,  <31.899508, 34.538799, 28.680508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749754, 34.167912, 28.684521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729236, 0.301093, 0.614457,
		-0.572756, 0.222729, -0.788886,
		-0.374386, -0.927219, 0.010031,
		31.637438, 33.889748, 28.687531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108561, 34.471634, 28.530413>,  <31.899508, 34.538799, 28.680508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108561, 34.471634, 28.530413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.168327, 34.140011, 28.745943>,  <31.204187, 33.941036, 28.875261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.168327, 34.140011, 28.745943>,  <31.108561, 34.471634, 28.530413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168327, 34.140011, 28.745943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757498, 0.254269, 0.601286,
		-0.635509, -0.498002, -0.590019,
		0.149418, -0.829060, 0.538826,
		31.213152, 33.891293, 28.907591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468056, 34.327145, 28.839220>,  <31.108561, 34.471634, 28.530413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468056, 34.327145, 28.839220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682966, 34.085838, 29.074986>,  <30.811913, 33.941055, 29.216446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682966, 34.085838, 29.074986>,  <30.468056, 34.327145, 28.839220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682966, 34.085838, 29.074986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783186, -0.097525, 0.614091,
		-0.312976, -0.791557, -0.524865,
		0.537276, -0.603263, 0.589414,
		30.844149, 33.904861, 29.251810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971098, 33.771408, 28.977816>,  <30.468056, 34.327145, 28.839220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971098, 33.771408, 28.977816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241583, 33.768013, 29.272478>,  <30.403873, 33.765976, 29.449276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241583, 33.768013, 29.272478>,  <29.971098, 33.771408, 28.977816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241583, 33.768013, 29.272478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732888, -0.109422, 0.671493,
		0.074907, -0.993959, -0.080212,
		0.676214, -0.008487, 0.736657,
		30.444447, 33.765465, 29.493475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684132, 33.341518, 29.509405>,  <29.971098, 33.771408, 28.977816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684132, 33.341518, 29.509405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980371, 33.528545, 29.702444>,  <30.158115, 33.640762, 29.818268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.980371, 33.528545, 29.702444>,  <29.684132, 33.341518, 29.509405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980371, 33.528545, 29.702444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560868, 0.034610, 0.827182,
		0.370057, -0.883282, 0.287873,
		0.740598, 0.467563, 0.482596,
		30.202551, 33.668816, 29.847223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768633, 33.078365, 30.186350>,  <29.684132, 33.341518, 29.509405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768633, 33.078365, 30.186350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.934109, 33.438812, 30.238283>,  <30.033394, 33.655079, 30.269444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.934109, 33.438812, 30.238283>,  <29.768633, 33.078365, 30.186350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934109, 33.438812, 30.238283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630053, 0.180427, 0.755300,
		0.657186, -0.394260, 0.642390,
		0.413689, 0.901113, 0.129831,
		30.058216, 33.709145, 30.277233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808357, 33.100113, 30.858366>,  <29.768633, 33.078365, 30.186350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808357, 33.100113, 30.858366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.820877, 33.487457, 30.759333>,  <29.828388, 33.719864, 30.699913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.820877, 33.487457, 30.759333>,  <29.808357, 33.100113, 30.858366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820877, 33.487457, 30.759333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590651, 0.217746, 0.776992,
		0.806319, 0.121915, 0.578779,
		0.031300, 0.968361, -0.247582,
		29.830267, 33.777966, 30.685059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222775, 33.496540, 31.263359>,  <29.808357, 33.100113, 30.858366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222775, 33.496540, 31.263359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.972649, 33.770493, 31.113739>,  <29.822573, 33.934864, 31.023966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.972649, 33.770493, 31.113739>,  <30.222775, 33.496540, 31.263359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972649, 33.770493, 31.113739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469035, 0.053233, 0.881574,
		0.623687, 0.726706, 0.287947,
		-0.625316, 0.684883, -0.374051,
		29.785053, 33.975956, 31.001524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097445, 33.997017, 31.787077>,  <30.222775, 33.496540, 31.263359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097445, 33.997017, 31.787077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797029, 34.056496, 31.529758>,  <29.616781, 34.092182, 31.375366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797029, 34.056496, 31.529758>,  <30.097445, 33.997017, 31.787077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797029, 34.056496, 31.529758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644506, 0.046459, 0.763186,
		0.143373, 0.987790, 0.060946,
		-0.751037, 0.148701, -0.643298,
		29.571718, 34.101105, 31.336769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670740, 34.564518, 32.057117>,  <30.097445, 33.997017, 31.787077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670740, 34.564518, 32.057117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425802, 34.383316, 31.797943>,  <29.278839, 34.274597, 31.642437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.425802, 34.383316, 31.797943>,  <29.670740, 34.564518, 32.057117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425802, 34.383316, 31.797943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733973, 0.021170, 0.678849,
		-0.293802, 0.891259, -0.345454,
		-0.612344, -0.453000, -0.647940,
		29.242100, 34.247417, 31.603561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992496, 34.905144, 32.192009>,  <29.670740, 34.564518, 32.057117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992496, 34.905144, 32.192009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921364, 34.556011, 32.010220>,  <28.878683, 34.346531, 31.901146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.921364, 34.556011, 32.010220>,  <28.992496, 34.905144, 32.192009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.921364, 34.556011, 32.010220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740834, -0.185238, 0.645641,
		-0.647720, 0.451505, -0.613679,
		-0.177834, -0.872829, -0.454473,
		28.868013, 34.294163, 31.873878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266541, 34.904411, 32.183708>,  <28.992496, 34.905144, 32.192009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266541, 34.904411, 32.183708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346729, 34.527077, 32.077934>,  <28.394842, 34.300674, 32.014469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.346729, 34.527077, 32.077934>,  <28.266541, 34.904411, 32.183708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346729, 34.527077, 32.077934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885010, -0.290141, 0.364109,
		-0.420201, 0.161031, -0.893029,
		0.200471, -0.943338, -0.264431,
		28.406870, 34.244076, 31.998606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732321, 34.680511, 31.808487>,  <28.266541, 34.904411, 32.183708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732321, 34.680511, 31.808487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876780, 34.358139, 31.996124>,  <27.963455, 34.164715, 32.108707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.876780, 34.358139, 31.996124>,  <27.732321, 34.680511, 31.808487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876780, 34.358139, 31.996124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872787, -0.115002, 0.474360,
		-0.328355, -0.580732, -0.744938,
		0.361145, -0.805931, 0.469094,
		27.985123, 34.116360, 32.136852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114998, 34.358353, 32.056232>,  <27.732321, 34.680511, 31.808487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.114998, 34.358353, 32.056232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381496, 34.118740, 32.233898>,  <27.541395, 33.974972, 32.340496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.381496, 34.118740, 32.233898>,  <27.114998, 34.358353, 32.056232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381496, 34.118740, 32.233898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723126, -0.373417, 0.581076,
		-0.182225, -0.708323, -0.681962,
		0.666245, -0.599031, 0.444161,
		27.581369, 33.939030, 32.367146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816950, 33.732174, 32.069561>,  <27.114998, 34.358353, 32.056232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816950, 33.732174, 32.069561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.072689, 33.731369, 32.377129>,  <27.226133, 33.730885, 32.561668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.072689, 33.731369, 32.377129>,  <26.816950, 33.732174, 32.069561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072689, 33.731369, 32.377129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726866, -0.327754, 0.603525,
		0.250799, -0.944761, -0.211014,
		0.639348, -0.002016, 0.768915,
		27.264494, 33.730762, 32.607803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797977, 33.026772, 32.445606>,  <26.816950, 33.732174, 32.069561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797977, 33.026772, 32.445606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.954128, 33.289402, 32.703758>,  <27.047819, 33.446980, 32.858650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.954128, 33.289402, 32.703758>,  <26.797977, 33.026772, 32.445606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954128, 33.289402, 32.703758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589251, -0.360425, 0.723102,
		0.707381, -0.662574, 0.246185,
		0.390377, 0.656573, 0.645381,
		27.071241, 33.486374, 32.897373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797375, 32.573090, 33.095085>,  <26.797977, 33.026772, 32.445606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797375, 32.573090, 33.095085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823647, 32.956383, 33.206421>,  <26.839411, 33.186359, 33.273224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.823647, 32.956383, 33.206421>,  <26.797375, 32.573090, 33.095085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823647, 32.956383, 33.206421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654125, -0.169301, 0.737196,
		0.753529, -0.230491, 0.615684,
		0.065682, 0.958233, 0.278343,
		26.843351, 33.243855, 33.289925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869200, 32.650162, 33.814331>,  <26.797375, 32.573090, 33.095085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869200, 32.650162, 33.814331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.710178, 32.984421, 33.662727>,  <26.614765, 33.184975, 33.571766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.710178, 32.984421, 33.662727>,  <26.869200, 32.650162, 33.814331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710178, 32.984421, 33.662727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800599, -0.114078, 0.588242,
		0.448324, 0.537295, 0.714367,
		-0.397553, 0.835644, -0.379014,
		26.590912, 33.235115, 33.549023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521013, 32.641567, 34.197140>,  <26.869200, 32.650162, 33.814331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521013, 32.641567, 34.197140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557240, 32.255527, 34.295429>,  <27.578976, 32.023903, 34.354404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557240, 32.255527, 34.295429>,  <27.521013, 32.641567, 34.197140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557240, 32.255527, 34.295429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363162, -0.197742, -0.910501,
		0.927314, 0.171699, 0.332578,
		0.090568, -0.965100, 0.245724,
		27.584410, 31.965998, 34.369148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239065, 32.357243, 34.034927>,  <27.521013, 32.641567, 34.197140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239065, 32.357243, 34.034927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992750, 32.042286, 34.046410>,  <27.844961, 31.853313, 34.053299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992750, 32.042286, 34.046410>,  <28.239065, 32.357243, 34.034927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992750, 32.042286, 34.046410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391583, -0.337450, -0.856032,
		0.683715, -0.515895, 0.516126,
		-0.615789, -0.787388, 0.028704,
		27.808014, 31.806070, 34.055019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646368, 31.836491, 33.782349>,  <28.239065, 32.357243, 34.034927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646368, 31.836491, 33.782349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277981, 31.685394, 33.744129>,  <28.056948, 31.594736, 33.721199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.277981, 31.685394, 33.744129>,  <28.646368, 31.836491, 33.782349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277981, 31.685394, 33.744129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243571, -0.366729, -0.897877,
		0.304125, -0.850189, 0.429752,
		-0.920968, -0.377742, -0.095550,
		28.001690, 31.572071, 33.715466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728836, 31.118532, 33.654987>,  <28.646368, 31.836491, 33.782349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728836, 31.118532, 33.654987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374865, 31.207552, 33.491341>,  <28.162481, 31.260963, 33.393154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.374865, 31.207552, 33.491341>,  <28.728836, 31.118532, 33.654987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374865, 31.207552, 33.491341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253135, -0.507522, -0.823617,
		-0.390928, -0.832403, 0.392786,
		-0.884928, 0.222547, -0.409115,
		28.109386, 31.274317, 33.368607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669851, 30.497810, 33.177254>,  <28.728836, 31.118532, 33.654987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669851, 30.497810, 33.177254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406324, 30.774557, 33.059078>,  <28.248209, 30.940605, 32.988174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.406324, 30.774557, 33.059078>,  <28.669851, 30.497810, 33.177254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406324, 30.774557, 33.059078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062274, -0.341209, -0.937922,
		-0.749723, -0.636315, 0.181709,
		-0.658815, 0.691866, -0.295438,
		28.208679, 30.982117, 32.970448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312887, 30.191154, 32.653389>,  <28.669851, 30.497810, 33.177254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312887, 30.191154, 32.653389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225090, 30.573345, 32.574512>,  <28.172411, 30.802660, 32.527187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225090, 30.573345, 32.574512>,  <28.312887, 30.191154, 32.653389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225090, 30.573345, 32.574512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125767, -0.228143, -0.965471,
		-0.967474, -0.187114, 0.170243,
		-0.219493, 0.955479, -0.197190,
		28.159243, 30.859989, 32.515354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756424, 30.161516, 32.149670>,  <28.312887, 30.191154, 32.653389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756424, 30.161516, 32.149670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943972, 30.513758, 32.122257>,  <28.056501, 30.725103, 32.105808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.943972, 30.513758, 32.122257>,  <27.756424, 30.161516, 32.149670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943972, 30.513758, 32.122257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043748, -0.100650, -0.993959,
		-0.882183, 0.463040, -0.085717,
		0.468871, 0.880604, -0.068535,
		28.084633, 30.777939, 32.101696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493591, 30.372654, 31.547234>,  <27.756424, 30.161516, 32.149670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493591, 30.372654, 31.547234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794128, 30.631729, 31.597803>,  <27.974451, 30.787174, 31.628145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794128, 30.631729, 31.597803>,  <27.493591, 30.372654, 31.547234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794128, 30.631729, 31.597803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140017, 0.030755, -0.989671,
		-0.644885, 0.761286, -0.067580,
		0.751344, 0.647687, 0.126426,
		28.019531, 30.826035, 31.635731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381023, 30.991096, 31.125950>,  <27.493591, 30.372654, 31.547234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381023, 30.991096, 31.125950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774281, 30.972477, 31.196680>,  <28.010235, 30.961306, 31.239119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774281, 30.972477, 31.196680>,  <27.381023, 30.991096, 31.125950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774281, 30.972477, 31.196680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178442, 0.033214, -0.983390,
		0.039903, 0.998364, 0.040960,
		0.983141, -0.046549, 0.176825,
		28.069223, 30.958511, 31.249727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671825, 31.474304, 30.694122>,  <27.381023, 30.991096, 31.125950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671825, 31.474304, 30.694122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006886, 31.281578, 30.797037>,  <28.207922, 31.165941, 30.858786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.006886, 31.281578, 30.797037>,  <27.671825, 31.474304, 30.694122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006886, 31.281578, 30.797037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375928, 0.166822, -0.911509,
		0.396260, 0.860245, 0.320867,
		0.837649, -0.481818, 0.257285,
		28.258181, 31.137033, 30.874222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223906, 31.907061, 30.540813>,  <27.671825, 31.474304, 30.694122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223906, 31.907061, 30.540813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.385874, 31.541325, 30.539038>,  <28.483055, 31.321882, 30.537971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.385874, 31.541325, 30.539038>,  <28.223906, 31.907061, 30.540813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385874, 31.541325, 30.539038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448829, 0.202992, -0.870257,
		0.796612, 0.350394, 0.492578,
		0.404922, -0.914340, -0.004439,
		28.507351, 31.267023, 30.537706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976412, 32.007938, 30.376688>,  <28.223906, 31.907061, 30.540813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976412, 32.007938, 30.376688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908054, 31.623034, 30.291973>,  <28.867041, 31.392092, 30.241144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.908054, 31.623034, 30.291973>,  <28.976412, 32.007938, 30.376688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908054, 31.623034, 30.291973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480800, 0.106175, -0.870378,
		0.860016, -0.250569, 0.444509,
		-0.170894, -0.962259, -0.211786,
		28.856787, 31.334356, 30.228437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586969, 31.821684, 29.845549>,  <28.976412, 32.007938, 30.376688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586969, 31.821684, 29.845549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337034, 31.510883, 29.814962>,  <29.187073, 31.324404, 29.796610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.337034, 31.510883, 29.814962>,  <29.586969, 31.821684, 29.845549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337034, 31.510883, 29.814962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356375, -0.196696, -0.913404,
		0.694675, -0.597980, 0.399807,
		-0.624838, -0.777000, -0.076465,
		29.149582, 31.277782, 29.792023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906847, 31.263885, 29.765919>,  <29.586969, 31.821684, 29.845549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906847, 31.263885, 29.765919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554045, 31.169556, 29.602724>,  <29.342363, 31.112959, 29.504808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554045, 31.169556, 29.602724>,  <29.906847, 31.263885, 29.765919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554045, 31.169556, 29.602724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465634, -0.303017, -0.831484,
		0.072457, -0.923346, 0.377070,
		-0.882006, -0.235823, -0.407986,
		29.289442, 31.098808, 29.480328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046824, 30.617018, 29.335529>,  <29.906847, 31.263885, 29.765919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046824, 30.617018, 29.335529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688665, 30.725945, 29.194613>,  <29.473770, 30.791302, 29.110064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688665, 30.725945, 29.194613>,  <30.046824, 30.617018, 29.335529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688665, 30.725945, 29.194613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322974, -0.147437, -0.934853,
		-0.306519, -0.950844, 0.044063,
		-0.895396, 0.272319, -0.352290,
		29.420046, 30.807640, 29.088926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887867, 30.135328, 28.793663>,  <30.046824, 30.617018, 29.335529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887867, 30.135328, 28.793663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.671925, 30.464003, 28.720577>,  <29.542358, 30.661207, 28.676725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.671925, 30.464003, 28.720577>,  <29.887867, 30.135328, 28.793663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671925, 30.464003, 28.720577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346986, 0.019470, -0.937668,
		-0.766913, -0.569605, -0.295625,
		-0.539856, 0.821688, -0.182713,
		29.509968, 30.710508, 28.665764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541252, 30.025553, 28.214266>,  <29.887867, 30.135328, 28.793663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541252, 30.025553, 28.214266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538864, 30.425276, 28.228943>,  <29.537432, 30.665110, 28.237749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538864, 30.425276, 28.228943>,  <29.541252, 30.025553, 28.214266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538864, 30.425276, 28.228943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246317, 0.037030, -0.968482,
		-0.969171, 0.003256, -0.246367,
		-0.005970, 0.999309, 0.036691,
		29.537073, 30.725069, 28.239950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378895, 30.275837, 27.551537>,  <29.541252, 30.025553, 28.214266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378895, 30.275837, 27.551537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523855, 30.608759, 27.719313>,  <29.610832, 30.808512, 27.819979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523855, 30.608759, 27.719313>,  <29.378895, 30.275837, 27.551537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523855, 30.608759, 27.719313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284747, 0.329641, -0.900142,
		-0.887459, 0.445649, -0.117535,
		0.362403, 0.832307, 0.419440,
		29.632576, 30.858452, 27.845144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178465, 30.927004, 27.182497>,  <29.378895, 30.275837, 27.551537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178465, 30.927004, 27.182497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515697, 31.040796, 27.365051>,  <29.718037, 31.109072, 27.474585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.515697, 31.040796, 27.365051>,  <29.178465, 30.927004, 27.182497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515697, 31.040796, 27.365051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363020, 0.325075, -0.873237,
		-0.396780, 0.901885, 0.170791,
		0.843079, 0.284482, 0.456385,
		29.768621, 31.126141, 27.501966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242785, 31.548925, 26.982563>,  <29.178465, 30.927004, 27.182497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242785, 31.548925, 26.982563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611889, 31.468897, 27.114313>,  <29.833351, 31.420879, 27.193363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611889, 31.468897, 27.114313>,  <29.242785, 31.548925, 26.982563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611889, 31.468897, 27.114313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384586, 0.532803, -0.753800,
		-0.024680, 0.822249, 0.568593,
		0.922759, -0.200069, 0.329375,
		29.888716, 31.408876, 27.213125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609455, 32.184227, 26.897886>,  <29.242785, 31.548925, 26.982563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609455, 32.184227, 26.897886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.875193, 31.886156, 26.921066>,  <30.034636, 31.707314, 26.934975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.875193, 31.886156, 26.921066>,  <29.609455, 32.184227, 26.897886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875193, 31.886156, 26.921066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390278, 0.279728, -0.877175,
		0.637439, 0.605364, 0.476661,
		0.664345, -0.745176, 0.057950,
		30.074497, 31.662603, 26.938452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282305, 32.525146, 26.814434>,  <29.609455, 32.184227, 26.897886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282305, 32.525146, 26.814434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362806, 32.152142, 26.694492>,  <30.411108, 31.928337, 26.622528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362806, 32.152142, 26.694492>,  <30.282305, 32.525146, 26.814434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362806, 32.152142, 26.694492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462494, 0.360308, -0.810110,
		0.863479, 0.024358, 0.503796,
		0.201255, -0.932515, -0.299853,
		30.423183, 31.872387, 26.604536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.144444, 32.129280, 45.954395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843388, 31.867800, 45.922859>,  <37.662754, 31.710913, 45.903938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.843388, 31.867800, 45.922859>,  <38.144444, 32.129280, 45.954395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843388, 31.867800, 45.922859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257159, -0.402064, 0.878757,
		-0.606142, 0.641110, 0.470713,
		-0.752636, -0.653699, -0.078841,
		37.617596, 31.671690, 45.899208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629440, 32.229755, 46.432152>,  <38.144444, 32.129280, 45.954395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629440, 32.229755, 46.432152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551613, 31.847054, 46.345642>,  <37.504917, 31.617434, 46.293736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551613, 31.847054, 46.345642>,  <37.629440, 32.229755, 46.432152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551613, 31.847054, 46.345642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189337, -0.252972, 0.948766,
		-0.962443, 0.143647, 0.230367,
		-0.194564, -0.956750, -0.216273,
		37.493244, 31.560028, 46.280762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156071, 31.977697, 46.971596>,  <37.629440, 32.229755, 46.432152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156071, 31.977697, 46.971596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314487, 31.645203, 46.815548>,  <37.409538, 31.445705, 46.721920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314487, 31.645203, 46.815548>,  <37.156071, 31.977697, 46.971596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314487, 31.645203, 46.815548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170796, -0.350761, 0.920758,
		-0.902208, -0.431291, 0.003056,
		0.396042, -0.831237, -0.390122,
		37.433300, 31.395832, 46.698513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742741, 31.331379, 47.204880>,  <37.156071, 31.977697, 46.971596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742741, 31.331379, 47.204880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117443, 31.216900, 47.124306>,  <37.342266, 31.148212, 47.075962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.117443, 31.216900, 47.124306>,  <36.742741, 31.331379, 47.204880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117443, 31.216900, 47.124306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084715, -0.373011, 0.923952,
		-0.339563, -0.882586, -0.325177,
		0.936761, -0.286192, -0.201429,
		37.398472, 31.131041, 47.063877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808678, 30.600180, 47.345448>,  <36.742741, 31.331379, 47.204880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808678, 30.600180, 47.345448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181274, 30.744236, 47.365913>,  <37.404831, 30.830669, 47.378193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181274, 30.744236, 47.365913>,  <36.808678, 30.600180, 47.345448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181274, 30.744236, 47.365913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086908, -0.356930, 0.930080,
		0.353224, -0.861916, -0.363776,
		0.931493, 0.360141, 0.051169,
		37.460724, 30.852278, 47.381264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318245, 30.048130, 47.494259>,  <36.808678, 30.600180, 47.345448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318245, 30.048130, 47.494259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493874, 30.387165, 47.613461>,  <37.599251, 30.590586, 47.684982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.493874, 30.387165, 47.613461>,  <37.318245, 30.048130, 47.494259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493874, 30.387165, 47.613461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119432, -0.383810, 0.915656,
		0.890477, -0.366451, -0.269751,
		0.439076, 0.847587, 0.298008,
		37.625595, 30.641441, 47.702862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800911, 29.803827, 47.919853>,  <37.318245, 30.048130, 47.494259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800911, 29.803827, 47.919853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.813023, 30.188728, 48.028042>,  <37.820290, 30.419668, 48.092957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.813023, 30.188728, 48.028042>,  <37.800911, 29.803827, 47.919853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813023, 30.188728, 48.028042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272752, -0.268283, 0.923921,
		0.961608, 0.045800, -0.270578,
		0.030276, 0.962251, 0.270475,
		37.822105, 30.477404, 48.109184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450787, 29.914484, 48.361027>,  <37.800911, 29.803827, 47.919853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450787, 29.914484, 48.361027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182095, 30.198254, 48.446354>,  <38.020882, 30.368515, 48.497551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.182095, 30.198254, 48.446354>,  <38.450787, 29.914484, 48.361027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182095, 30.198254, 48.446354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092449, -0.205422, 0.974297,
		0.735008, 0.674181, 0.072401,
		-0.671726, 0.709423, 0.213314,
		37.980576, 30.411081, 48.510349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569950, 30.139330, 49.061474>,  <38.450787, 29.914484, 48.361027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569950, 30.139330, 49.061474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.205673, 30.299929, 49.022625>,  <37.987106, 30.396288, 48.999313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.205673, 30.299929, 49.022625>,  <38.569950, 30.139330, 49.061474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205673, 30.299929, 49.022625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176979, -0.166784, 0.969980,
		0.373244, 0.900546, 0.222946,
		-0.910696, 0.401496, -0.097126,
		37.932465, 30.420378, 48.993488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485405, 30.767162, 49.655460>,  <38.569950, 30.139330, 49.061474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485405, 30.767162, 49.655460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132339, 30.628332, 49.528687>,  <37.920502, 30.545034, 49.452621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.132339, 30.628332, 49.528687>,  <38.485405, 30.767162, 49.655460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132339, 30.628332, 49.528687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298409, -0.107153, 0.948404,
		-0.363128, 0.931696, -0.008990,
		-0.882661, -0.347075, -0.316937,
		37.867542, 30.524210, 49.433605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078506, 31.143333, 50.099232>,  <38.485405, 30.767162, 49.655460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078506, 31.143333, 50.099232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.873009, 30.842348, 49.934372>,  <37.749710, 30.661757, 49.835457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.873009, 30.842348, 49.934372>,  <38.078506, 31.143333, 50.099232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873009, 30.842348, 49.934372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475840, -0.149828, 0.866677,
		-0.713894, 0.641366, -0.281079,
		-0.513743, -0.752464, -0.412149,
		37.718887, 30.616610, 49.810726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292397, 31.217194, 50.150696>,  <38.078506, 31.143333, 50.099232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292397, 31.217194, 50.150696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419834, 30.838058, 50.146706>,  <37.496296, 30.610577, 50.144310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.419834, 30.838058, 50.146706>,  <37.292397, 31.217194, 50.150696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419834, 30.838058, 50.146706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378776, -0.136947, 0.915300,
		-0.868924, -0.287827, -0.402649,
		0.318590, -0.947841, -0.009974,
		37.515411, 30.553707, 50.143715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242718, 31.826653, 50.566227>,  <37.292397, 31.217194, 50.150696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242718, 31.826653, 50.566227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.039513, 32.064766, 50.317211>,  <36.917587, 32.207634, 50.167801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.039513, 32.064766, 50.317211>,  <37.242718, 31.826653, 50.566227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039513, 32.064766, 50.317211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636296, -0.746503, -0.194579,
		-0.580558, 0.297271, 0.758012,
		-0.508015, 0.595284, -0.622541,
		36.887108, 32.243351, 50.130447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107265, 31.942482, 51.376823>,  <37.242718, 31.826653, 50.566227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107265, 31.942482, 51.376823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.871746, 32.248028, 51.482517>,  <36.730434, 32.431355, 51.545933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.871746, 32.248028, 51.482517>,  <37.107265, 31.942482, 51.376823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871746, 32.248028, 51.482517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275945, -0.117302, 0.953989,
		0.759714, 0.634627, -0.141717,
		-0.588803, 0.763865, 0.264238,
		36.695107, 32.477188, 51.561790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245972, 32.113361, 51.507408>,  <37.107265, 31.942482, 51.376823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245972, 32.113361, 51.507408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170166, 32.487785, 51.625988>,  <36.124683, 32.712440, 51.697136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170166, 32.487785, 51.625988>,  <36.245972, 32.113361, 51.507408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170166, 32.487785, 51.625988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218829, 0.334594, -0.916603,
		-0.957183, -0.108833, -0.268245,
		-0.189510, 0.936057, 0.296452,
		36.113312, 32.768604, 51.714924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695835, 32.367191, 51.061501>,  <36.245972, 32.113361, 51.507408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695835, 32.367191, 51.061501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939400, 32.665962, 51.168327>,  <36.085537, 32.845226, 51.232422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.939400, 32.665962, 51.168327>,  <35.695835, 32.367191, 51.061501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939400, 32.665962, 51.168327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013224, 0.346191, -0.938071,
		-0.793130, 0.567668, 0.220676,
		0.608909, 0.746930, 0.267067,
		36.122074, 32.890041, 51.248447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562355, 32.840893, 50.403389>,  <35.695835, 32.367191, 51.061501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562355, 32.840893, 50.403389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871414, 33.006157, 50.596184>,  <36.056850, 33.105316, 50.711861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871414, 33.006157, 50.596184>,  <35.562355, 32.840893, 50.403389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871414, 33.006157, 50.596184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212763, 0.546792, -0.809784,
		-0.598120, 0.728227, 0.334572,
		0.772648, 0.413164, 0.481987,
		36.103207, 33.130108, 50.740780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570133, 33.509563, 50.326031>,  <35.562355, 32.840893, 50.403389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570133, 33.509563, 50.326031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951241, 33.415054, 50.402348>,  <36.179905, 33.358349, 50.448139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951241, 33.415054, 50.402348>,  <35.570133, 33.509563, 50.326031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951241, 33.415054, 50.402348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284891, 0.477788, -0.830997,
		0.105179, 0.846107, 0.522534,
		0.952772, -0.236268, 0.190795,
		36.237072, 33.344173, 50.459587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835567, 34.066074, 50.104355>,  <35.570133, 33.509563, 50.326031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835567, 34.066074, 50.104355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.126125, 33.791355, 50.114693>,  <36.300461, 33.626526, 50.120895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.126125, 33.791355, 50.114693>,  <35.835567, 34.066074, 50.104355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126125, 33.791355, 50.114693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379065, 0.368984, -0.848623,
		0.573292, 0.626231, 0.528366,
		0.726393, -0.686794, 0.025847,
		36.344044, 33.585316, 50.122448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393364, 34.445011, 49.969112>,  <35.835567, 34.066074, 50.104355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393364, 34.445011, 49.969112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443516, 34.062737, 49.862576>,  <36.473606, 33.833370, 49.798653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.443516, 34.062737, 49.862576>,  <36.393364, 34.445011, 49.969112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443516, 34.062737, 49.862576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377072, 0.294217, -0.878210,
		0.917659, 0.009678, 0.397252,
		0.125377, -0.955690, -0.266342,
		36.481129, 33.776031, 49.782673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192509, 34.381596, 49.829079>,  <36.393364, 34.445011, 49.969112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192509, 34.381596, 49.829079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.971054, 34.111153, 49.634609>,  <36.838181, 33.948887, 49.517925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.971054, 34.111153, 49.634609>,  <37.192509, 34.381596, 49.829079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971054, 34.111153, 49.634609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395389, 0.300396, -0.868003,
		0.732906, -0.672789, 0.101013,
		-0.553639, -0.676104, -0.486176,
		36.804962, 33.908321, 49.488758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545254, 34.397079, 49.278465>,  <37.192509, 34.381596, 49.829079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545254, 34.397079, 49.278465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.219582, 34.182106, 49.190575>,  <37.024178, 34.053123, 49.137840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.219582, 34.182106, 49.190575>,  <37.545254, 34.397079, 49.278465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219582, 34.182106, 49.190575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132521, 0.196444, -0.971518,
		0.565292, -0.820106, -0.088719,
		-0.814176, -0.537435, -0.219730,
		36.975330, 34.020874, 49.124657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749649, 34.057411, 48.620060>,  <37.545254, 34.397079, 49.278465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749649, 34.057411, 48.620060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350487, 34.037888, 48.637001>,  <37.110989, 34.026173, 48.647167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350487, 34.037888, 48.637001>,  <37.749649, 34.057411, 48.620060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350487, 34.037888, 48.637001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054182, 0.274761, -0.959985,
		0.035222, -0.960273, -0.276832,
		-0.997910, -0.048812, 0.042352,
		37.051113, 34.023243, 48.649708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496456, 33.543240, 48.187683>,  <37.749649, 34.057411, 48.620060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496456, 33.543240, 48.187683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180119, 33.788025, 48.184204>,  <36.990318, 33.934895, 48.182117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180119, 33.788025, 48.184204>,  <37.496456, 33.543240, 48.187683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180119, 33.788025, 48.184204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203294, 0.249268, -0.946856,
		-0.577271, -0.750580, -0.321539,
		-0.790841, 0.611959, -0.008693,
		36.942867, 33.971611, 48.181595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252068, 33.407589, 47.520031>,  <37.496456, 33.543240, 48.187683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252068, 33.407589, 47.520031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068615, 33.741116, 47.642933>,  <36.958546, 33.941231, 47.716675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068615, 33.741116, 47.642933>,  <37.252068, 33.407589, 47.520031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068615, 33.741116, 47.642933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106350, 0.394783, -0.912599,
		-0.882242, -0.385865, -0.269735,
		-0.458627, 0.833819, 0.307257,
		36.931026, 33.991261, 47.735111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670784, 33.492092, 47.082615>,  <37.252068, 33.407589, 47.520031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670784, 33.492092, 47.082615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.766026, 33.848328, 47.237617>,  <36.823170, 34.062069, 47.330620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.766026, 33.848328, 47.237617>,  <36.670784, 33.492092, 47.082615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766026, 33.848328, 47.237617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038878, 0.389924, -0.920026,
		-0.970460, 0.234130, 0.058219,
		0.238107, 0.890586, 0.387508,
		36.837460, 34.115501, 47.353870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159527, 33.964321, 46.752815>,  <36.670784, 33.492092, 47.082615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159527, 33.964321, 46.752815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452160, 34.194073, 46.899715>,  <36.627739, 34.331924, 46.987854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452160, 34.194073, 46.899715>,  <36.159527, 33.964321, 46.752815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452160, 34.194073, 46.899715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033003, 0.567894, -0.822440,
		-0.680949, 0.589566, 0.434420,
		0.731587, 0.574377, 0.367249,
		36.671635, 34.366386, 47.009892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928810, 34.633980, 46.713234>,  <36.159527, 33.964321, 46.752815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928810, 34.633980, 46.713234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325432, 34.584576, 46.697380>,  <36.563404, 34.554932, 46.687866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.325432, 34.584576, 46.697380>,  <35.928810, 34.633980, 46.713234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325432, 34.584576, 46.697380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001021, 0.298138, -0.954522,
		0.129710, 0.946498, 0.295493,
		0.991551, -0.123510, -0.039638,
		36.622898, 34.547523, 46.685490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253330, 34.908512, 46.569786>,  <35.928810, 34.633980, 46.713234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253330, 34.908512, 46.569786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923576, 34.794857, 46.373970>,  <34.725723, 34.726662, 46.256481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923576, 34.794857, 46.373970>,  <35.253330, 34.908512, 46.569786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923576, 34.794857, 46.373970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443545, -0.213009, 0.870571,
		-0.351640, 0.934821, 0.049574,
		-0.824389, -0.284140, -0.489539,
		34.676258, 34.709614, 46.227108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706326, 35.126060, 47.017796>,  <35.253330, 34.908512, 46.569786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706326, 35.126060, 47.017796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554375, 34.855106, 46.765816>,  <34.463203, 34.692535, 46.614628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554375, 34.855106, 46.765816>,  <34.706326, 35.126060, 47.017796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554375, 34.855106, 46.765816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493423, -0.427651, 0.757396,
		-0.782449, 0.598552, -0.171782,
		-0.379878, -0.677385, -0.629954,
		34.440411, 34.651890, 46.576828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992607, 35.142719, 47.098270>,  <34.706326, 35.126060, 47.017796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992607, 35.142719, 47.098270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054794, 34.783978, 46.932629>,  <34.092106, 34.568733, 46.833244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054794, 34.783978, 46.932629>,  <33.992607, 35.142719, 47.098270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054794, 34.783978, 46.932629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504655, -0.432477, 0.747186,
		-0.849208, 0.092820, -0.519837,
		0.155463, -0.896855, -0.414105,
		34.101433, 34.514919, 46.808395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343861, 34.715256, 47.171360>,  <33.992607, 35.142719, 47.098270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343861, 34.715256, 47.171360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630295, 34.439075, 47.130371>,  <33.802155, 34.273369, 47.105778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630295, 34.439075, 47.130371>,  <33.343861, 34.715256, 47.171360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630295, 34.439075, 47.130371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382369, -0.510837, 0.769960,
		-0.583965, -0.512176, -0.629810,
		0.716086, -0.690450, -0.102471,
		33.845119, 34.231941, 47.099628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009388, 34.112614, 47.396179>,  <33.343861, 34.715256, 47.171360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009388, 34.112614, 47.396179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399387, 34.023926, 47.402065>,  <33.633389, 33.970715, 47.405598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399387, 34.023926, 47.402065>,  <33.009388, 34.112614, 47.396179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399387, 34.023926, 47.402065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126702, -0.500306, 0.856528,
		-0.182544, -0.836980, -0.515890,
		0.974999, -0.221719, 0.014719,
		33.691887, 33.957409, 47.406483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143642, 33.329285, 47.566299>,  <33.009388, 34.112614, 47.396179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143642, 33.329285, 47.566299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452560, 33.552372, 47.687969>,  <33.637909, 33.686226, 47.760971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452560, 33.552372, 47.687969>,  <33.143642, 33.329285, 47.566299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452560, 33.552372, 47.687969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021254, -0.455853, 0.889801,
		0.634914, -0.693649, -0.340198,
		0.772290, 0.557717, 0.304171,
		33.684246, 33.719688, 47.779221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562191, 32.850079, 47.968513>,  <33.143642, 33.329285, 47.566299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562191, 32.850079, 47.968513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704350, 33.210442, 48.068165>,  <33.789646, 33.426659, 48.127956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704350, 33.210442, 48.068165>,  <33.562191, 32.850079, 47.968513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704350, 33.210442, 48.068165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009741, -0.270081, 0.962788,
		0.934664, -0.339746, -0.104762,
		0.355398, 0.900904, 0.249126,
		33.810970, 33.480713, 48.142902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831078, 32.088440, 48.225887>,  <33.562191, 32.850079, 47.968513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831078, 32.088440, 48.225887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543201, 31.810734, 48.228249>,  <33.370476, 31.644110, 48.229668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543201, 31.810734, 48.228249>,  <33.831078, 32.088440, 48.225887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543201, 31.810734, 48.228249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145121, -0.158746, -0.976596,
		0.678958, -0.701991, 0.215001,
		-0.719692, -0.694268, 0.005908,
		33.327293, 31.602453, 48.230022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107735, 31.487194, 47.863697>,  <33.831078, 32.088440, 48.225887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107735, 31.487194, 47.863697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709827, 31.492775, 47.823231>,  <33.471081, 31.496124, 47.798950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709827, 31.492775, 47.823231>,  <34.107735, 31.487194, 47.863697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709827, 31.492775, 47.823231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100680, -0.031778, -0.994411,
		-0.017079, -0.999398, 0.030209,
		-0.994772, 0.013942, -0.101163,
		33.411396, 31.496962, 47.792881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831978, 30.968071, 47.252941>,  <34.107735, 31.487194, 47.863697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831978, 30.968071, 47.252941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519485, 31.211033, 47.310555>,  <33.331989, 31.356810, 47.345123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519485, 31.211033, 47.310555>,  <33.831978, 30.968071, 47.252941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519485, 31.211033, 47.310555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061917, 0.154191, -0.986099,
		-0.621168, -0.779286, -0.082849,
		-0.781228, 0.607403, 0.144029,
		33.285118, 31.393253, 47.353764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492199, 30.867489, 46.606606>,  <33.831978, 30.968071, 47.252941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492199, 30.867489, 46.606606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341301, 31.203810, 46.761906>,  <33.250763, 31.405602, 46.855087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.341301, 31.203810, 46.761906>,  <33.492199, 30.867489, 46.606606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341301, 31.203810, 46.761906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233840, 0.319162, -0.918398,
		-0.896105, -0.437249, 0.076211,
		-0.377245, 0.840802, 0.388249,
		33.228127, 31.456051, 46.878380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858868, 30.942678, 46.363708>,  <33.492199, 30.867489, 46.606606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858868, 30.942678, 46.363708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020557, 31.291779, 46.473186>,  <33.117573, 31.501240, 46.538872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020557, 31.291779, 46.473186>,  <32.858868, 30.942678, 46.363708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020557, 31.291779, 46.473186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045165, 0.279819, -0.958990,
		-0.913544, 0.400008, 0.073692,
		0.404224, 0.872752, 0.273693,
		33.141823, 31.553604, 46.555294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435966, 31.483355, 46.081295>,  <32.858868, 30.942678, 46.363708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435966, 31.483355, 46.081295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818237, 31.585871, 46.139252>,  <33.047600, 31.647381, 46.174026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.818237, 31.585871, 46.139252>,  <32.435966, 31.483355, 46.081295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818237, 31.585871, 46.139252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037037, 0.592887, -0.804434,
		-0.292074, 0.763414, 0.576101,
		0.955678, 0.256291, 0.144892,
		33.104942, 31.662758, 46.182720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456818, 31.913248, 45.591427>,  <32.435966, 31.483355, 46.081295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456818, 31.913248, 45.591427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834217, 31.963800, 45.713959>,  <33.060658, 31.994131, 45.787476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834217, 31.963800, 45.713959>,  <32.456818, 31.913248, 45.591427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834217, 31.963800, 45.713959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185413, 0.564827, -0.804110,
		-0.274644, 0.815475, 0.509482,
		0.943500, 0.126380, 0.306326,
		33.117268, 32.001713, 45.805855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.668694, 27.320864, 49.470753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.626209, 27.662027, 49.675209>,  <36.600719, 27.866726, 49.797882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.626209, 27.662027, 49.675209>,  <36.668694, 27.320864, 49.470753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626209, 27.662027, 49.675209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178683, 0.522049, -0.833989,
		-0.978158, 0.002755, -0.207847,
		-0.106208, 0.852911, 0.511139,
		36.594345, 27.917900, 49.828552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034855, 27.790468, 49.431873>,  <36.668694, 27.320864, 49.470753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034855, 27.790468, 49.431873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.374096, 27.997042, 49.479237>,  <36.577641, 28.120985, 49.507656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.374096, 27.997042, 49.479237>,  <36.034855, 27.790468, 49.431873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374096, 27.997042, 49.479237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138222, 0.431405, -0.891507,
		-0.511488, 0.739721, 0.437257,
		0.848101, 0.516433, 0.118413,
		36.628525, 28.151972, 49.514759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004322, 28.549618, 49.400856>,  <36.034855, 27.790468, 49.431873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004322, 28.549618, 49.400856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.338371, 28.386045, 49.253696>,  <36.538799, 28.287903, 49.165401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.338371, 28.386045, 49.253696>,  <36.004322, 28.549618, 49.400856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338371, 28.386045, 49.253696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304500, 0.213330, -0.928316,
		0.458100, 0.887281, 0.053637,
		0.835119, -0.408929, -0.367903,
		36.588905, 28.263367, 49.143326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264229, 29.074614, 48.914440>,  <36.004322, 28.549618, 49.400856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264229, 29.074614, 48.914440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.399208, 28.710093, 48.820072>,  <36.480194, 28.491381, 48.763451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.399208, 28.710093, 48.820072>,  <36.264229, 29.074614, 48.914440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399208, 28.710093, 48.820072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060404, 0.229141, -0.971517,
		0.939404, 0.342086, 0.022276,
		0.337447, -0.911302, -0.235920,
		36.500443, 28.436703, 48.749298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416698, 29.264101, 48.267368>,  <36.264229, 29.074614, 48.914440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416698, 29.264101, 48.267368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465534, 28.867313, 48.280571>,  <36.494835, 28.629240, 48.288490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.465534, 28.867313, 48.280571>,  <36.416698, 29.264101, 48.267368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465534, 28.867313, 48.280571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042484, -0.027998, -0.998705,
		0.991610, 0.123332, 0.038724,
		0.122088, -0.991970, 0.033003,
		36.502159, 28.569723, 48.290470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884670, 29.109270, 47.812321>,  <36.416698, 29.264101, 48.267368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884670, 29.109270, 47.812321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.692921, 28.759138, 47.837612>,  <36.577869, 28.549059, 47.852787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.692921, 28.759138, 47.837612>,  <36.884670, 29.109270, 47.812321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692921, 28.759138, 47.837612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017132, -0.081366, -0.996537,
		0.877444, -0.476631, 0.054001,
		-0.479374, -0.875330, 0.063229,
		36.549107, 28.496538, 47.856579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196625, 28.697670, 47.356106>,  <36.884670, 29.109270, 47.812321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196625, 28.697670, 47.356106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.837463, 28.529497, 47.408264>,  <36.621967, 28.428593, 47.439560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.837463, 28.529497, 47.408264>,  <37.196625, 28.697670, 47.356106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837463, 28.529497, 47.408264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032467, -0.232163, -0.972135,
		0.438991, -0.877118, 0.194810,
		-0.897904, -0.420434, 0.130395,
		36.568092, 28.403366, 47.447384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270981, 28.004904, 47.251545>,  <37.196625, 28.697670, 47.356106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270981, 28.004904, 47.251545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.884872, 28.081711, 47.180687>,  <36.653206, 28.127794, 47.138172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.884872, 28.081711, 47.180687>,  <37.270981, 28.004904, 47.251545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884872, 28.081711, 47.180687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107530, -0.325944, -0.939254,
		-0.238091, -0.925683, 0.293977,
		-0.965272, 0.192017, -0.177144,
		36.595291, 28.139317, 47.127544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080975, 27.419907, 46.794239>,  <37.270981, 28.004904, 47.251545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080975, 27.419907, 46.794239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.784939, 27.686459, 46.758015>,  <36.607315, 27.846390, 46.736282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.784939, 27.686459, 46.758015>,  <37.080975, 27.419907, 46.794239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784939, 27.686459, 46.758015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136665, -0.280878, -0.949963,
		-0.658474, -0.690684, 0.298946,
		-0.740091, 0.666381, -0.090558,
		36.562912, 27.886374, 46.730846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555958, 27.034676, 46.322704>,  <37.080975, 27.419907, 46.794239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555958, 27.034676, 46.322704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.472343, 27.424438, 46.289631>,  <36.422176, 27.658297, 46.269787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.472343, 27.424438, 46.289631>,  <36.555958, 27.034676, 46.322704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472343, 27.424438, 46.289631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409929, -0.164078, -0.897239,
		-0.887842, -0.153659, 0.433735,
		-0.209035, 0.974406, -0.082686,
		36.409634, 27.716761, 46.264824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912701, 27.073795, 46.064922>,  <36.555958, 27.034676, 46.322704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912701, 27.073795, 46.064922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041122, 27.441488, 45.973766>,  <36.118176, 27.662104, 45.919075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.041122, 27.441488, 45.973766>,  <35.912701, 27.073795, 46.064922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041122, 27.441488, 45.973766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286681, -0.135005, -0.948466,
		-0.902628, 0.369841, 0.220183,
		0.321055, 0.919234, -0.227886,
		36.137440, 27.717258, 45.905399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354088, 27.531712, 45.797348>,  <35.912701, 27.073795, 46.064922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354088, 27.531712, 45.797348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.706234, 27.661009, 45.658508>,  <35.917522, 27.738588, 45.575203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.706234, 27.661009, 45.658508>,  <35.354088, 27.531712, 45.797348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706234, 27.661009, 45.658508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305696, -0.172837, -0.936310,
		-0.362648, 0.930398, -0.053345,
		0.880361, 0.323244, -0.347098,
		35.970341, 27.757982, 45.554379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713882, 27.980396, 45.777950>,  <35.354088, 27.531712, 45.797348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713882, 27.980396, 45.777950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.322544, 27.940901, 45.705177>,  <34.087742, 27.917204, 45.661514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.322544, 27.940901, 45.705177>,  <34.713882, 27.980396, 45.777950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322544, 27.940901, 45.705177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202832, 0.281871, 0.937767,
		-0.041316, 0.954358, -0.295794,
		-0.978342, -0.098741, -0.181928,
		34.029041, 27.911278, 45.650600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297913, 28.586561, 45.976562>,  <34.713882, 27.980396, 45.777950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297913, 28.586561, 45.976562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.052746, 28.270531, 45.980717>,  <33.905643, 28.080912, 45.983212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.052746, 28.270531, 45.980717>,  <34.297913, 28.586561, 45.976562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052746, 28.270531, 45.980717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145641, 0.125886, 0.981296,
		-0.776607, 0.599943, -0.192225,
		-0.612920, -0.790077, 0.010388,
		33.868870, 28.033508, 45.983833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142773, 28.807156, 46.585777>,  <34.297913, 28.586561, 45.976562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142773, 28.807156, 46.585777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948063, 28.465818, 46.511093>,  <33.831238, 28.261017, 46.466282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.948063, 28.465818, 46.511093>,  <34.142773, 28.807156, 46.585777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948063, 28.465818, 46.511093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348453, -0.006307, 0.937305,
		-0.801018, 0.521316, -0.294279,
		-0.486776, -0.853341, -0.186706,
		33.802029, 28.209816, 46.455082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524723, 28.925566, 46.849823>,  <34.142773, 28.807156, 46.585777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524723, 28.925566, 46.849823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.600040, 28.532928, 46.837063>,  <33.645233, 28.297346, 46.829407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.600040, 28.532928, 46.837063>,  <33.524723, 28.925566, 46.849823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600040, 28.532928, 46.837063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412274, -0.108483, 0.904578,
		-0.891389, -0.157179, -0.425113,
		0.188298, -0.981594, -0.031900,
		33.656528, 28.238451, 46.827492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860115, 28.534149, 46.801281>,  <33.524723, 28.925566, 46.849823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860115, 28.534149, 46.801281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148441, 28.305439, 46.957993>,  <33.321438, 28.168213, 47.052021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148441, 28.305439, 46.957993>,  <32.860115, 28.534149, 46.801281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148441, 28.305439, 46.957993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443611, 0.053742, 0.894607,
		-0.532570, -0.818647, -0.214908,
		0.720818, -0.571776, 0.391782,
		33.364685, 28.133905, 47.075527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503872, 28.171589, 47.412949>,  <32.860115, 28.534149, 46.801281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503872, 28.171589, 47.412949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.891800, 28.119312, 47.495281>,  <33.124557, 28.087946, 47.544682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.891800, 28.119312, 47.495281>,  <32.503872, 28.171589, 47.412949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891800, 28.119312, 47.495281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228150, -0.188685, 0.955168,
		-0.085993, -0.973303, -0.212808,
		0.969821, -0.130690, 0.205833,
		33.182747, 28.080105, 47.557030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581131, 27.486652, 47.957874>,  <32.503872, 28.171589, 47.412949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581131, 27.486652, 47.957874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.910545, 27.713108, 47.972198>,  <33.108192, 27.848982, 47.980793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.910545, 27.713108, 47.972198>,  <32.581131, 27.486652, 47.957874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910545, 27.713108, 47.972198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052973, 0.013904, 0.998499,
		0.564793, -0.824191, 0.041441,
		0.823531, 0.566140, 0.035807,
		33.157604, 27.882950, 47.982941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037445, 27.179482, 48.439873>,  <32.581131, 27.486652, 47.957874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037445, 27.179482, 48.439873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.169933, 27.556061, 48.414673>,  <33.249428, 27.782007, 48.399551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.169933, 27.556061, 48.414673>,  <33.037445, 27.179482, 48.439873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169933, 27.556061, 48.414673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094390, 0.033377, 0.994976,
		0.938820, -0.335504, -0.077808,
		0.331221, 0.941447, -0.063003,
		33.269299, 27.838495, 48.395771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566105, 27.178608, 48.911427>,  <33.037445, 27.179482, 48.439873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566105, 27.178608, 48.911427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.477707, 27.563093, 48.845425>,  <33.424667, 27.793785, 48.805824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.477707, 27.563093, 48.845425>,  <33.566105, 27.178608, 48.911427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477707, 27.563093, 48.845425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082302, 0.186961, 0.978913,
		0.971795, 0.202759, -0.120428,
		-0.220999, 0.961215, -0.165001,
		33.411407, 27.851458, 48.795925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908833, 27.545515, 49.519226>,  <33.566105, 27.178608, 48.911427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908833, 27.545515, 49.519226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.662422, 27.813370, 49.353283>,  <33.514576, 27.974083, 49.253719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.662422, 27.813370, 49.353283>,  <33.908833, 27.545515, 49.519226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662422, 27.813370, 49.353283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112690, 0.446315, 0.887752,
		0.779626, 0.593626, -0.199479,
		-0.616023, 0.669635, -0.414855,
		33.477615, 28.014259, 49.228825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152012, 28.223906, 49.629654>,  <33.908833, 27.545515, 49.519226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152012, 28.223906, 49.629654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.761379, 28.276569, 49.561588>,  <33.527000, 28.308168, 49.520748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.761379, 28.276569, 49.561588>,  <34.152012, 28.223906, 49.629654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761379, 28.276569, 49.561588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054344, 0.614301, 0.787198,
		0.208172, 0.778010, -0.592760,
		-0.976581, 0.131660, -0.170160,
		33.468407, 28.316067, 49.510540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029163, 28.904175, 49.657642>,  <34.152012, 28.223906, 49.629654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029163, 28.904175, 49.657642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666615, 28.746113, 49.717442>,  <33.449085, 28.651276, 49.753319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666615, 28.746113, 49.717442>,  <34.029163, 28.904175, 49.657642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666615, 28.746113, 49.717442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173744, 0.671159, 0.720665,
		-0.385111, 0.627214, -0.676973,
		-0.906368, -0.395156, 0.149496,
		33.394703, 28.627565, 49.762291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589680, 29.446337, 49.839142>,  <34.029163, 28.904175, 49.657642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589680, 29.446337, 49.839142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.384251, 29.126841, 49.964527>,  <33.260994, 28.935143, 50.039757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.384251, 29.126841, 49.964527>,  <33.589680, 29.446337, 49.839142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384251, 29.126841, 49.964527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143334, 0.440049, 0.886461,
		-0.845989, 0.410333, -0.340484,
		-0.513574, -0.798738, 0.313462,
		33.230179, 28.887218, 50.058567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918457, 29.661133, 50.067013>,  <33.589680, 29.446337, 49.839142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918457, 29.661133, 50.067013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.050110, 29.333076, 50.254219>,  <33.129101, 29.136242, 50.366543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.050110, 29.333076, 50.254219>,  <32.918457, 29.661133, 50.067013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050110, 29.333076, 50.254219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073534, 0.516388, 0.853192,
		-0.941416, -0.246397, 0.230268,
		0.329132, -0.820141, 0.468017,
		33.148849, 29.087034, 50.394623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772331, 30.116802, 50.578892>,  <32.918457, 29.661133, 50.067013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772331, 30.116802, 50.578892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.639839, 30.453920, 50.748589>,  <32.560345, 30.656191, 50.850407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.639839, 30.453920, 50.748589>,  <32.772331, 30.116802, 50.578892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639839, 30.453920, 50.748589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202541, 0.375634, -0.904365,
		-0.921556, -0.385478, 0.046280,
		-0.331228, 0.842796, 0.424243,
		32.540470, 30.706758, 50.875862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115273, 30.279257, 50.357063>,  <32.772331, 30.116802, 50.578892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115273, 30.279257, 50.357063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299839, 30.615232, 50.471325>,  <32.410580, 30.816818, 50.539883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299839, 30.615232, 50.471325>,  <32.115273, 30.279257, 50.357063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299839, 30.615232, 50.471325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107948, 0.372737, -0.921637,
		-0.880591, 0.394425, 0.262657,
		0.461419, 0.839938, 0.285651,
		32.438263, 30.867214, 50.557022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844648, 30.775970, 49.991814>,  <32.115273, 30.279257, 50.357063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844648, 30.775970, 49.991814> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.194664, 30.947872, 50.080910>,  <32.404675, 31.051014, 50.134369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.194664, 30.947872, 50.080910>,  <31.844648, 30.775970, 49.991814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194664, 30.947872, 50.080910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080408, 0.324716, -0.942387,
		-0.477325, 0.842537, 0.249584,
		0.875040, 0.429756, 0.222741,
		32.457176, 31.076799, 50.147732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765577, 31.500141, 49.678856>,  <31.844648, 30.775970, 49.991814>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765577, 31.500141, 49.678856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.158562, 31.445454, 49.729568>,  <32.394352, 31.412642, 49.759998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.158562, 31.445454, 49.729568>,  <31.765577, 31.500141, 49.678856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158562, 31.445454, 49.729568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158460, 0.253855, -0.954174,
		0.098270, 0.957531, 0.271068,
		0.982463, -0.136720, 0.126784,
		32.453300, 31.404438, 49.767605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074871, 31.974102, 49.257580>,  <31.765577, 31.500141, 49.678856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074871, 31.974102, 49.257580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371330, 31.720871, 49.346939>,  <32.549206, 31.568932, 49.400555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.371330, 31.720871, 49.346939>,  <32.074871, 31.974102, 49.257580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371330, 31.720871, 49.346939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379720, 0.120890, -0.917169,
		0.553632, 0.764590, 0.329990,
		0.741151, -0.633078, 0.223402,
		32.593674, 31.530947, 49.413960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643478, 32.309395, 49.164360>,  <32.074871, 31.974102, 49.257580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643478, 32.309395, 49.164360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752586, 31.929605, 49.102272>,  <32.818050, 31.701731, 49.065022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752586, 31.929605, 49.102272>,  <32.643478, 32.309395, 49.164360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752586, 31.929605, 49.102272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402385, 0.259140, -0.878028,
		0.873888, 0.177046, 0.452741,
		0.272775, -0.949474, -0.155218,
		32.834419, 31.644764, 49.055706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291035, 32.387379, 48.726955>,  <32.643478, 32.309395, 49.164360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291035, 32.387379, 48.726955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.203869, 31.997662, 48.704124>,  <33.151569, 31.763830, 48.690426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.203869, 31.997662, 48.704124>,  <33.291035, 32.387379, 48.726955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203869, 31.997662, 48.704124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270671, -0.004149, -0.962663,
		0.937683, -0.225230, 0.264618,
		-0.217918, -0.974297, -0.057073,
		33.138493, 31.705372, 48.687004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047283, 32.696918, 48.534092>,  <33.291035, 32.387379, 48.726955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047283, 32.696918, 48.534092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.020958, 33.093170, 48.581955>,  <34.005161, 33.330921, 48.610672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.020958, 33.093170, 48.581955>,  <34.047283, 32.696918, 48.534092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020958, 33.093170, 48.581955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157701, -0.108084, 0.981554,
		0.985291, 0.083470, -0.149110,
		-0.065814, 0.990632, 0.119658,
		34.001213, 33.390358, 48.617851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561005, 32.874195, 49.045090>,  <34.047283, 32.696918, 48.534092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561005, 32.874195, 49.045090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.303448, 33.177044, 49.089211>,  <34.148914, 33.358753, 49.115685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.303448, 33.177044, 49.089211>,  <34.561005, 32.874195, 49.045090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303448, 33.177044, 49.089211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197061, 0.024808, 0.980077,
		0.739302, 0.652802, -0.165173,
		-0.643894, 0.757122, 0.110301,
		34.110279, 33.404179, 49.122299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869503, 33.352444, 49.455875>,  <34.561005, 32.874195, 49.045090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869503, 33.352444, 49.455875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.481480, 33.446590, 49.479847>,  <34.248665, 33.503078, 49.494228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.481480, 33.446590, 49.479847>,  <34.869503, 33.352444, 49.455875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481480, 33.446590, 49.479847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092622, 0.130405, 0.987125,
		0.224517, 0.963120, -0.148300,
		-0.970058, 0.235362, 0.059927,
		34.190460, 33.517200, 49.497826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785885, 33.859592, 49.967175>,  <34.869503, 33.352444, 49.455875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785885, 33.859592, 49.967175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.417507, 33.703930, 49.959064>,  <34.196480, 33.610531, 49.954201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.417507, 33.703930, 49.959064>,  <34.785885, 33.859592, 49.967175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417507, 33.703930, 49.959064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028222, 0.014723, 0.999493,
		-0.388664, 0.921053, -0.024542,
		-0.920947, -0.389159, -0.020272,
		34.141224, 33.587181, 49.952984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519970, 34.267540, 50.497456>,  <34.785885, 33.859592, 49.967175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519970, 34.267540, 50.497456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.309280, 33.928185, 50.476311>,  <34.182865, 33.724571, 50.463623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.309280, 33.928185, 50.476311>,  <34.519970, 34.267540, 50.497456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309280, 33.928185, 50.476311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133242, -0.143825, 0.980592,
		-0.839529, 0.509457, 0.188798,
		-0.526723, -0.848391, -0.052865,
		34.151264, 33.673668, 50.460453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034595, 34.275433, 51.041546>,  <34.519970, 34.267540, 50.497456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034595, 34.275433, 51.041546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.004383, 33.888420, 50.945072>,  <33.986256, 33.656212, 50.887188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.004383, 33.888420, 50.945072>,  <34.034595, 34.275433, 51.041546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004383, 33.888420, 50.945072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052593, -0.245407, 0.967992,
		-0.995756, 0.060424, 0.069420,
		-0.075527, -0.967535, -0.241188,
		33.981724, 33.598160, 50.872715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516476, 34.004322, 51.438232>,  <34.034595, 34.275433, 51.041546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516476, 34.004322, 51.438232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751438, 33.693520, 51.347713>,  <33.892414, 33.507038, 51.293400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751438, 33.693520, 51.347713>,  <33.516476, 34.004322, 51.438232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751438, 33.693520, 51.347713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009600, -0.272918, 0.961989,
		-0.809238, -0.567248, -0.152854,
		0.587403, -0.777011, -0.226301,
		33.927658, 33.460415, 51.279823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161938, 33.456154, 51.680531>,  <33.516476, 34.004322, 51.438232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161938, 33.456154, 51.680531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.538982, 33.325226, 51.654175>,  <33.765209, 33.246670, 51.638359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.538982, 33.325226, 51.654175>,  <33.161938, 33.456154, 51.680531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538982, 33.325226, 51.654175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041015, -0.309371, 0.950057,
		-0.331364, -0.892831, -0.305041,
		0.942611, -0.327326, -0.065895,
		33.821766, 33.227032, 51.634407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127239, 32.755165, 51.945526>,  <33.161938, 33.456154, 51.680531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127239, 32.755165, 51.945526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.501728, 32.892929, 51.973408>,  <33.726421, 32.975590, 51.990135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.501728, 32.892929, 51.973408>,  <33.127239, 32.755165, 51.945526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501728, 32.892929, 51.973408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059479, -0.040173, 0.997421,
		0.346326, -0.937958, -0.017126,
		0.936227, 0.344414, 0.069702,
		33.782597, 32.996254, 51.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.463669, 34.864170, 35.864079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846283, 34.793743, 35.957062>,  <36.075851, 34.751488, 36.012852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846283, 34.793743, 35.957062>,  <35.463669, 34.864170, 35.864079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846283, 34.793743, 35.957062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243319, -0.042518, 0.969014,
		-0.160736, -0.983458, -0.083512,
		0.956535, -0.176075, 0.232460,
		36.133244, 34.740921, 36.026798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539257, 34.242489, 36.246223>,  <35.463669, 34.864170, 35.864079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539257, 34.242489, 36.246223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867352, 34.444664, 36.353359>,  <36.064209, 34.565971, 36.417641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867352, 34.444664, 36.353359>,  <35.539257, 34.242489, 36.246223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867352, 34.444664, 36.353359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255555, -0.095106, 0.962105,
		0.511760, -0.857604, 0.051159,
		0.820240, 0.505441, 0.267837,
		36.113422, 34.596294, 36.433712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947731, 33.801720, 36.668629>,  <35.539257, 34.242489, 36.246223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947731, 33.801720, 36.668629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064465, 34.172775, 36.761860>,  <36.134502, 34.395409, 36.817799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064465, 34.172775, 36.761860>,  <35.947731, 33.801720, 36.668629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064465, 34.172775, 36.761860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218212, -0.172691, 0.960500,
		0.931245, -0.331166, 0.152024,
		0.291832, 0.927635, 0.233082,
		36.152016, 34.451065, 36.831783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030991, 33.750664, 37.364456>,  <35.947731, 33.801720, 36.668629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030991, 33.750664, 37.364456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055363, 34.146763, 37.314327>,  <36.069984, 34.384422, 37.284248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055363, 34.146763, 37.314327>,  <36.030991, 33.750664, 37.364456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055363, 34.146763, 37.314327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133119, 0.132498, 0.982204,
		0.989226, -0.043159, 0.139892,
		0.060926, 0.990243, -0.125325,
		36.073639, 34.443836, 37.276730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488483, 33.941124, 37.828796>,  <36.030991, 33.750664, 37.364456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488483, 33.941124, 37.828796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264538, 34.260281, 37.739426>,  <36.130169, 34.451775, 37.685802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264538, 34.260281, 37.739426>,  <36.488483, 33.941124, 37.828796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264538, 34.260281, 37.739426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051296, 0.235751, 0.970459,
		0.826996, 0.554784, -0.091060,
		-0.559863, 0.797895, -0.223423,
		36.096581, 34.499649, 37.672398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767017, 34.466232, 38.250999>,  <36.488483, 33.941124, 37.828796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767017, 34.466232, 38.250999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391857, 34.573624, 38.163128>,  <36.166759, 34.638058, 38.110405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391857, 34.573624, 38.163128>,  <36.767017, 34.466232, 38.250999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391857, 34.573624, 38.163128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194791, 0.116398, 0.973914,
		0.287044, 0.956228, -0.056873,
		-0.937903, 0.268478, -0.219676,
		36.110485, 34.654167, 38.097225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563618, 35.173450, 38.644073>,  <36.767017, 34.466232, 38.250999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563618, 35.173450, 38.644073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219482, 34.995708, 38.544186>,  <36.013000, 34.889065, 38.484253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219482, 34.995708, 38.544186>,  <36.563618, 35.173450, 38.644073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219482, 34.995708, 38.544186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323116, 0.096551, 0.941421,
		-0.394216, 0.890632, -0.226646,
		-0.860343, -0.444356, -0.249716,
		35.961380, 34.862400, 38.469273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026501, 35.619411, 38.933407>,  <36.563618, 35.173450, 38.644073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026501, 35.619411, 38.933407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828777, 35.276134, 38.878025>,  <35.710144, 35.070168, 38.844795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828777, 35.276134, 38.878025>,  <36.026501, 35.619411, 38.933407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828777, 35.276134, 38.878025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469365, 0.129430, 0.873467,
		-0.731681, 0.496747, -0.466782,
		-0.494308, -0.858190, -0.138454,
		35.680485, 35.018677, 38.836491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279556, 35.859322, 39.018848>,  <36.026501, 35.619411, 38.933407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279556, 35.859322, 39.018848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325542, 35.463493, 39.053562>,  <35.353134, 35.225998, 39.074390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325542, 35.463493, 39.053562>,  <35.279556, 35.859322, 39.018848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325542, 35.463493, 39.053562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658826, -0.010574, 0.752221,
		-0.743459, -0.143655, -0.653171,
		0.114967, -0.989571, 0.086782,
		35.360031, 35.166622, 39.079597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617863, 35.607338, 39.199337>,  <35.279556, 35.859322, 39.018848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617863, 35.607338, 39.199337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851013, 35.295567, 39.291206>,  <34.990902, 35.108505, 39.346329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851013, 35.295567, 39.291206>,  <34.617863, 35.607338, 39.199337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851013, 35.295567, 39.291206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409267, -0.037422, 0.911647,
		-0.701966, -0.625376, -0.340806,
		0.582875, -0.779426, 0.229677,
		35.025875, 35.061737, 39.360111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206837, 35.191067, 39.576050>,  <34.617863, 35.607338, 39.199337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206837, 35.191067, 39.576050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577908, 35.064171, 39.654804>,  <34.800552, 34.988033, 39.702057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577908, 35.064171, 39.654804>,  <34.206837, 35.191067, 39.576050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577908, 35.064171, 39.654804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252309, -0.143931, 0.956882,
		-0.275225, -0.937359, -0.213565,
		0.927681, -0.317243, 0.196891,
		34.856213, 34.968998, 39.713871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087074, 34.643745, 40.010139>,  <34.206837, 35.191067, 39.576050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087074, 34.643745, 40.010139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463455, 34.763729, 40.072926>,  <34.689281, 34.835720, 40.110596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463455, 34.763729, 40.072926>,  <34.087074, 34.643745, 40.010139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463455, 34.763729, 40.072926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045126, -0.348380, 0.936266,
		0.335526, -0.888063, -0.314272,
		0.940949, 0.299960, 0.156965,
		34.745739, 34.853718, 40.120014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835331, 33.924118, 39.800095>,  <34.087074, 34.643745, 40.010139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835331, 33.924118, 39.800095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540585, 33.664833, 39.876881>,  <33.363735, 33.509262, 39.922951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540585, 33.664833, 39.876881>,  <33.835331, 33.924118, 39.800095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540585, 33.664833, 39.876881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186569, -0.077944, -0.979345,
		0.649785, -0.757461, -0.063502,
		-0.736866, -0.648211, 0.191965,
		33.319523, 33.470371, 39.934471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939587, 33.485107, 39.246395>,  <33.835331, 33.924118, 39.800095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939587, 33.485107, 39.246395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570175, 33.402637, 39.375755>,  <33.348530, 33.353153, 39.453373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570175, 33.402637, 39.375755>,  <33.939587, 33.485107, 39.246395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570175, 33.402637, 39.375755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321342, -0.044353, -0.945924,
		0.209375, -0.977508, -0.025293,
		-0.923527, -0.206180, 0.323401,
		33.293118, 33.340782, 39.472775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670116, 32.869835, 38.791862>,  <33.939587, 33.485107, 39.246395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670116, 32.869835, 38.791862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345013, 33.052803, 38.936184>,  <33.149948, 33.162586, 39.022778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345013, 33.052803, 38.936184>,  <33.670116, 32.869835, 38.791862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345013, 33.052803, 38.936184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462632, -0.130320, -0.876920,
		-0.354105, -0.879647, 0.317539,
		-0.812762, 0.457425, 0.360806,
		33.101185, 33.190029, 39.044426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044449, 32.369789, 38.713821>,  <33.670116, 32.869835, 38.791862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044449, 32.369789, 38.713821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932930, 32.753887, 38.708046>,  <32.866020, 32.984344, 38.704582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932930, 32.753887, 38.708046>,  <33.044449, 32.369789, 38.713821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932930, 32.753887, 38.708046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484876, -0.153723, -0.860967,
		-0.828957, -0.233030, 0.508455,
		-0.278793, 0.960243, -0.014439,
		32.849293, 33.041962, 38.703712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459702, 32.326794, 38.497925>,  <33.044449, 32.369789, 38.713821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459702, 32.326794, 38.497925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514721, 32.721684, 38.465748>,  <32.547733, 32.958618, 38.446442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514721, 32.721684, 38.465748>,  <32.459702, 32.326794, 38.497925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514721, 32.721684, 38.465748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532519, 0.005232, -0.846402,
		-0.835167, 0.159259, 0.526435,
		0.137551, 0.987223, -0.080439,
		32.555984, 33.017849, 38.441616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840891, 32.684521, 38.425644>,  <32.459702, 32.326794, 38.497925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840891, 32.684521, 38.425644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105629, 32.924717, 38.246143>,  <32.264473, 33.068836, 38.138443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105629, 32.924717, 38.246143>,  <31.840891, 32.684521, 38.425644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105629, 32.924717, 38.246143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626635, 0.114605, -0.770840,
		-0.411452, 0.791378, 0.452138,
		0.661843, 0.600489, -0.448750,
		32.304180, 33.104862, 38.111519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369722, 33.187134, 38.012894>,  <31.840891, 32.684521, 38.425644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369722, 33.187134, 38.012894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740911, 33.193802, 37.863983>,  <31.963625, 33.197803, 37.774635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740911, 33.193802, 37.863983>,  <31.369722, 33.187134, 38.012894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740911, 33.193802, 37.863983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370145, -0.074402, -0.925990,
		-0.043132, 0.997089, -0.062874,
		0.927972, 0.016667, -0.372276,
		32.019302, 33.198803, 37.752300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310484, 33.630688, 37.397518>,  <31.369722, 33.187134, 38.012894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310484, 33.630688, 37.397518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650930, 33.428955, 37.339203>,  <31.855198, 33.307915, 37.304214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650930, 33.428955, 37.339203>,  <31.310484, 33.630688, 37.397518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650930, 33.428955, 37.339203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234536, -0.116837, -0.965061,
		0.469673, 0.855572, -0.217725,
		0.851117, -0.504327, -0.145787,
		31.906265, 33.277657, 37.295467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588699, 33.884262, 36.758076>,  <31.310484, 33.630688, 37.397518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588699, 33.884262, 36.758076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774694, 33.533813, 36.808994>,  <31.886292, 33.323544, 36.839546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774694, 33.533813, 36.808994>,  <31.588699, 33.884262, 36.758076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774694, 33.533813, 36.808994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213868, -0.250687, -0.944148,
		0.859097, 0.411793, -0.303940,
		0.464987, -0.876118, 0.127295,
		31.914190, 33.270977, 36.847183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031414, 33.761414, 36.175030>,  <31.588699, 33.884262, 36.758076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031414, 33.761414, 36.175030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953325, 33.405357, 36.339729>,  <31.906471, 33.191723, 36.438549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953325, 33.405357, 36.339729>,  <32.031414, 33.761414, 36.175030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953325, 33.405357, 36.339729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332164, -0.335003, -0.881725,
		0.922797, -0.308902, -0.230272,
		-0.195225, -0.890142, 0.411747,
		31.894758, 33.138313, 36.463253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222050, 33.208183, 35.612373>,  <32.031414, 33.761414, 36.175030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222050, 33.208183, 35.612373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978901, 33.028862, 35.874523>,  <31.833010, 32.921268, 36.031815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978901, 33.028862, 35.874523>,  <32.222050, 33.208183, 35.612373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978901, 33.028862, 35.874523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346445, -0.592928, -0.726920,
		0.714467, -0.668928, 0.205116,
		-0.607876, -0.448299, 0.655373,
		31.796537, 32.894371, 36.071136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125725, 32.529453, 35.408947>,  <32.222050, 33.208183, 35.612373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125725, 32.529453, 35.408947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811701, 32.579300, 35.651646>,  <31.623285, 32.609207, 35.797264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811701, 32.579300, 35.651646>,  <32.125725, 32.529453, 35.408947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811701, 32.579300, 35.651646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534782, -0.630621, -0.562428,
		0.312542, -0.766021, 0.561721,
		-0.785065, 0.124616, 0.606749,
		31.576181, 32.616684, 35.833672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879087, 31.824554, 35.425835>,  <32.125725, 32.529453, 35.408947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879087, 31.824554, 35.425835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592880, 32.053020, 35.586735>,  <31.421156, 32.190102, 35.683273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592880, 32.053020, 35.586735>,  <31.879087, 31.824554, 35.425835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592880, 32.053020, 35.586735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698567, -0.580028, -0.419013,
		-0.006011, -0.580808, 0.814018,
		-0.715519, 0.571165, 0.402247,
		31.378225, 32.224369, 35.707409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422564, 31.375502, 35.573696>,  <31.879087, 31.824554, 35.425835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422564, 31.375502, 35.573696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207350, 31.709913, 35.530659>,  <31.078222, 31.910561, 35.504837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207350, 31.709913, 35.530659>,  <31.422564, 31.375502, 35.573696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207350, 31.709913, 35.530659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783949, -0.543203, -0.300592,
		-0.309746, -0.077384, 0.947665,
		-0.538035, 0.836028, -0.107589,
		31.045938, 31.960722, 35.498383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073330, 31.078718, 35.698189>,  <31.422564, 31.375502, 35.573696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073330, 31.078718, 35.698189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003101, 30.779716, 35.441936>,  <31.960964, 30.600315, 35.288185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003101, 30.779716, 35.441936>,  <32.073330, 31.078718, 35.698189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003101, 30.779716, 35.441936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124028, -0.662351, 0.738856,
		-0.976623, 0.050267, 0.209002,
		-0.175573, -0.747505, -0.640633,
		31.950430, 30.555466, 35.249748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483639, 30.646454, 35.810005>,  <32.073330, 31.078718, 35.698189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483639, 30.646454, 35.810005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777456, 30.428118, 35.648758>,  <31.953747, 30.297115, 35.552010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777456, 30.428118, 35.648758>,  <31.483639, 30.646454, 35.810005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777456, 30.428118, 35.648758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106840, -0.493629, 0.863085,
		-0.670097, -0.677043, -0.304274,
		0.734544, -0.545842, -0.403114,
		31.997820, 30.264366, 35.527824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370140, 29.881222, 35.911705>,  <31.483639, 30.646454, 35.810005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370140, 29.881222, 35.911705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761328, 29.954727, 35.872086>,  <31.996040, 29.998831, 35.848312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761328, 29.954727, 35.872086>,  <31.370140, 29.881222, 35.911705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761328, 29.954727, 35.872086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176145, -0.471718, 0.863976,
		0.112043, -0.862388, -0.493694,
		0.977967, 0.183765, -0.099053,
		32.054718, 30.009857, 35.842369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636230, 29.207169, 35.873257>,  <31.370140, 29.881222, 35.911705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636230, 29.207169, 35.873257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945303, 29.446337, 35.958534>,  <32.130745, 29.589838, 36.009701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945303, 29.446337, 35.958534>,  <31.636230, 29.207169, 35.873257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945303, 29.446337, 35.958534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250627, -0.595910, 0.762940,
		0.583222, -0.536078, -0.610305,
		0.772682, 0.597922, 0.213193,
		32.177109, 29.625713, 36.022491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244156, 28.769230, 36.000137>,  <31.636230, 29.207169, 35.873257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244156, 28.769230, 36.000137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273369, 29.113632, 36.201469>,  <32.290897, 29.320272, 36.322269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273369, 29.113632, 36.201469>,  <32.244156, 28.769230, 36.000137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273369, 29.113632, 36.201469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252032, -0.504228, 0.825975,
		0.964959, 0.066529, -0.253827,
		0.073035, 0.861004, 0.503327,
		32.295280, 29.371933, 36.352467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837402, 28.667048, 36.342339>,  <32.244156, 28.769230, 36.000137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837402, 28.667048, 36.342339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680500, 28.954842, 36.571590>,  <32.586361, 29.127518, 36.709141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680500, 28.954842, 36.571590>,  <32.837402, 28.667048, 36.342339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680500, 28.954842, 36.571590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274714, -0.503003, 0.819463,
		0.877879, 0.478883, -0.000349,
		-0.392251, 0.719485, 0.573132,
		32.562824, 29.170687, 36.743530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328426, 28.926405, 36.723701>,  <32.837402, 28.667048, 36.342339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328426, 28.926405, 36.723701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001007, 29.016682, 36.934998>,  <32.804554, 29.070848, 37.061775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001007, 29.016682, 36.934998>,  <33.328426, 28.926405, 36.723701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001007, 29.016682, 36.934998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451232, -0.316446, 0.834417,
		0.355483, 0.921371, 0.157187,
		-0.818549, 0.225693, 0.528243,
		32.755444, 29.084389, 37.093472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609310, 28.916882, 37.269268>,  <33.328426, 28.926405, 36.723701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609310, 28.916882, 37.269268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221798, 28.910906, 37.368256>,  <32.989292, 28.907320, 37.427647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221798, 28.910906, 37.368256>,  <33.609310, 28.916882, 37.269268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221798, 28.910906, 37.368256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243915, -0.236118, 0.940613,
		0.044378, 0.971609, 0.232391,
		-0.968781, -0.014942, 0.247469,
		32.931164, 28.906424, 37.442497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529957, 29.250214, 37.951012>,  <33.609310, 28.916882, 37.269268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529957, 29.250214, 37.951012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194305, 29.034178, 37.925209>,  <32.992912, 28.904556, 37.909729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194305, 29.034178, 37.925209>,  <33.529957, 29.250214, 37.951012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194305, 29.034178, 37.925209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122005, -0.302455, 0.945323,
		-0.530069, 0.785381, 0.319693,
		-0.839131, -0.540091, -0.064502,
		32.942566, 28.872150, 37.905857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079327, 29.480858, 38.501450>,  <33.529957, 29.250214, 37.951012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079327, 29.480858, 38.501450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932953, 29.117250, 38.421677>,  <32.845127, 28.899086, 38.373814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932953, 29.117250, 38.421677>,  <33.079327, 29.480858, 38.501450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932953, 29.117250, 38.421677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069154, -0.240266, 0.968240,
		-0.928068, 0.340520, 0.150784,
		-0.365934, -0.909020, -0.199435,
		32.823174, 28.844543, 38.361847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578804, 29.342190, 39.016876>,  <33.079327, 29.480858, 38.501450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578804, 29.342190, 39.016876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664593, 28.981768, 38.866093>,  <32.716064, 28.765514, 38.775623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664593, 28.981768, 38.866093>,  <32.578804, 29.342190, 39.016876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664593, 28.981768, 38.866093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062395, -0.372513, 0.925927,
		-0.974736, -0.222101, -0.023670,
		0.214467, -0.901058, -0.376961,
		32.728931, 28.711451, 38.753006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135689, 28.852701, 39.418865>,  <32.578804, 29.342190, 39.016876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135689, 28.852701, 39.418865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457809, 28.662457, 39.277283>,  <32.651081, 28.548309, 39.192333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457809, 28.662457, 39.277283>,  <32.135689, 28.852701, 39.418865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457809, 28.662457, 39.277283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231682, -0.297102, 0.926312,
		-0.545728, -0.827964, -0.129065,
		0.805298, -0.475612, -0.353960,
		32.699398, 28.519773, 39.171093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070076, 28.190125, 39.687183>,  <32.135689, 28.852701, 39.418865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070076, 28.190125, 39.687183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456997, 28.193153, 39.585777>,  <32.689148, 28.194971, 39.524933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456997, 28.193153, 39.585777>,  <32.070076, 28.190125, 39.687183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456997, 28.193153, 39.585777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222482, -0.505239, 0.833808,
		-0.121770, -0.862946, -0.490404,
		0.967302, 0.007573, -0.253512,
		32.747189, 28.195425, 39.509724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335369, 27.467413, 39.642044>,  <32.070076, 28.190125, 39.687183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335369, 27.467413, 39.642044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630077, 27.730089, 39.706444>,  <32.806904, 27.887695, 39.745083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630077, 27.730089, 39.706444>,  <32.335369, 27.467413, 39.642044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630077, 27.730089, 39.706444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240816, -0.477365, 0.845062,
		0.631801, -0.583848, -0.509852,
		0.736773, 0.656692, 0.161000,
		32.851109, 27.927097, 39.754745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752598, 27.118912, 40.102615>,  <32.335369, 27.467413, 39.642044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752598, 27.118912, 40.102615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938969, 27.472254, 40.123001>,  <33.050793, 27.684259, 40.135231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938969, 27.472254, 40.123001>,  <32.752598, 27.118912, 40.102615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938969, 27.472254, 40.123001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383007, -0.253272, 0.888346,
		0.797632, -0.394386, -0.456337,
		0.465929, 0.883353, 0.050966,
		33.078747, 27.737259, 40.138290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422684, 26.993065, 40.170578>,  <32.752598, 27.118912, 40.102615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422684, 26.993065, 40.170578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371769, 27.360977, 40.319065>,  <33.341221, 27.581724, 40.408157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371769, 27.360977, 40.319065>,  <33.422684, 26.993065, 40.170578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371769, 27.360977, 40.319065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443087, -0.282110, 0.850934,
		0.887396, 0.272791, -0.371635,
		-0.127285, 0.919782, 0.371213,
		33.333584, 27.636911, 40.430428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113338, 27.091244, 40.289112>,  <33.422684, 26.993065, 40.170578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113338, 27.091244, 40.289112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869102, 27.330454, 40.496780>,  <33.722561, 27.473980, 40.621384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869102, 27.330454, 40.496780>,  <34.113338, 27.091244, 40.289112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869102, 27.330454, 40.496780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423132, -0.307800, 0.852185,
		0.669429, 0.740018, -0.065102,
		-0.610594, 0.598024, 0.519175,
		33.685925, 27.509861, 40.652534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477966, 27.284346, 40.805981>,  <34.113338, 27.091244, 40.289112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477966, 27.284346, 40.805981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117180, 27.385059, 40.946297>,  <33.900707, 27.445488, 41.030487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117180, 27.385059, 40.946297>,  <34.477966, 27.284346, 40.805981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117180, 27.385059, 40.946297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244698, -0.371310, 0.895685,
		0.355774, 0.893718, 0.273298,
		-0.901969, 0.251786, 0.350794,
		33.846588, 27.460596, 41.051537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653370, 27.724106, 41.404358>,  <34.477966, 27.284346, 40.805981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653370, 27.724106, 41.404358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277119, 27.604221, 41.468086>,  <34.051369, 27.532290, 41.506325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277119, 27.604221, 41.468086>,  <34.653370, 27.724106, 41.404358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277119, 27.604221, 41.468086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172388, -0.017497, 0.984874,
		-0.292392, 0.953869, 0.068125,
		-0.940633, -0.299713, 0.159319,
		33.994930, 27.514307, 41.515881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508976, 28.084036, 41.975101>,  <34.653370, 27.724106, 41.404358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508976, 28.084036, 41.975101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237434, 27.792150, 41.942432>,  <34.074509, 27.617020, 41.922832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237434, 27.792150, 41.942432>,  <34.508976, 28.084036, 41.975101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237434, 27.792150, 41.942432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138427, 0.017950, 0.990210,
		-0.721105, 0.683516, -0.113197,
		-0.678856, -0.729715, -0.081673,
		34.033779, 27.573236, 41.917931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890644, 28.327148, 42.340366>,  <34.508976, 28.084036, 41.975101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890644, 28.327148, 42.340366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868725, 27.928106, 42.323502>,  <33.855572, 27.688681, 42.313381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868725, 27.928106, 42.323502>,  <33.890644, 28.327148, 42.340366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868725, 27.928106, 42.323502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059469, -0.045411, 0.997197,
		-0.996725, 0.052142, 0.061815,
		-0.054803, -0.997607, -0.042161,
		33.852283, 27.628824, 42.310852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270023, 28.070105, 42.794224>,  <33.890644, 28.327148, 42.340366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270023, 28.070105, 42.794224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505993, 27.749046, 42.759003>,  <33.647575, 27.556412, 42.737869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505993, 27.749046, 42.759003>,  <33.270023, 28.070105, 42.794224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505993, 27.749046, 42.759003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074804, -0.162901, 0.983803,
		-0.803987, -0.573781, -0.156140,
		0.589922, -0.802645, -0.088049,
		33.682968, 27.508253, 42.732590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779003, 27.544281, 43.125526>,  <33.270023, 28.070105, 42.794224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779003, 27.544281, 43.125526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170174, 27.460737, 43.122829>,  <33.404877, 27.410610, 43.121212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170174, 27.460737, 43.122829>,  <32.779003, 27.544281, 43.125526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170174, 27.460737, 43.122829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005494, -0.057929, 0.998306,
		-0.208899, -0.976228, -0.057797,
		0.977922, -0.208863, -0.006738,
		33.463551, 27.398079, 43.120808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847725, 26.997278, 43.609425>,  <32.779003, 27.544281, 43.125526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847725, 26.997278, 43.609425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224453, 27.131145, 43.596966>,  <33.450489, 27.211466, 43.589489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224453, 27.131145, 43.596966>,  <32.847725, 26.997278, 43.609425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224453, 27.131145, 43.596966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015455, 0.049462, 0.998656,
		0.335759, -0.941037, 0.041412,
		0.941821, 0.334668, -0.031152,
		33.507000, 27.231546, 43.587620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231407, 26.545246, 44.035408>,  <32.847725, 26.997278, 43.609425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231407, 26.545246, 44.035408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451820, 26.878567, 44.017639>,  <33.584068, 27.078558, 44.006977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451820, 26.878567, 44.017639>,  <33.231407, 26.545246, 44.035408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451820, 26.878567, 44.017639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077807, 0.001693, 0.996967,
		0.830848, -0.552818, -0.063903,
		0.551033, 0.833300, -0.044420,
		33.617130, 27.128557, 44.004314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787640, 26.540689, 44.528778>,  <33.231407, 26.545246, 44.035408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787640, 26.540689, 44.528778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768456, 26.936075, 44.471313>,  <33.756943, 27.173307, 44.436836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768456, 26.936075, 44.471313>,  <33.787640, 26.540689, 44.528778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768456, 26.936075, 44.471313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111983, 0.148241, 0.982591,
		0.992552, 0.031040, -0.117801,
		-0.047962, 0.988464, -0.143661,
		33.754066, 27.232615, 44.428215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293518, 26.807171, 44.981953>,  <33.787640, 26.540689, 44.528778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293518, 26.807171, 44.981953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084446, 27.136103, 44.891987>,  <33.959003, 27.333462, 44.838009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084446, 27.136103, 44.891987>,  <34.293518, 26.807171, 44.981953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084446, 27.136103, 44.891987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247909, 0.399024, 0.882792,
		0.815690, 0.405657, -0.412423,
		-0.522677, 0.822328, -0.224913,
		33.927643, 27.382801, 44.824512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647076, 27.329630, 45.438271>,  <34.293518, 26.807171, 44.981953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647076, 27.329630, 45.438271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302895, 27.507999, 45.339661>,  <34.096386, 27.615021, 45.280495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302895, 27.507999, 45.339661>,  <34.647076, 27.329630, 45.438271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302895, 27.507999, 45.339661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143063, 0.252932, 0.956848,
		0.489035, 0.858591, -0.153841,
		-0.860452, 0.445923, -0.246525,
		34.044758, 27.641777, 45.265701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151363, 27.868790, 45.117550>,  <34.647076, 27.329630, 45.438271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151363, 27.868790, 45.117550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550182, 27.886749, 45.092621>,  <35.789474, 27.897526, 45.077663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550182, 27.886749, 45.092621>,  <35.151363, 27.868790, 45.117550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550182, 27.886749, 45.092621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063310, 0.020815, -0.997777,
		-0.043503, 0.998774, 0.023596,
		0.997045, 0.044900, -0.062327,
		35.849297, 27.900219, 45.073921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303631, 28.397732, 44.779667>,  <35.151363, 27.868790, 45.117550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303631, 28.397732, 44.779667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636681, 28.181200, 44.732838>,  <35.836510, 28.051281, 44.704739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636681, 28.181200, 44.732838>,  <35.303631, 28.397732, 44.779667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636681, 28.181200, 44.732838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004560, 0.204676, -0.978819,
		0.553824, 0.815520, 0.167949,
		0.832621, -0.541327, -0.117074,
		35.886467, 28.018803, 44.697716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796047, 28.761074, 44.399933>,  <35.303631, 28.397732, 44.779667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796047, 28.761074, 44.399933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932510, 28.387817, 44.354568>,  <36.014389, 28.163864, 44.327351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932510, 28.387817, 44.354568>,  <35.796047, 28.761074, 44.399933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932510, 28.387817, 44.354568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123308, 0.164030, -0.978718,
		0.931884, 0.319911, 0.171023,
		0.341156, -0.933140, -0.113409,
		36.034859, 28.107876, 44.320545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432423, 28.796909, 44.031410>,  <35.796047, 28.761074, 44.399933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432423, 28.796909, 44.031410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317810, 28.416725, 43.983208>,  <36.249043, 28.188614, 43.954285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317810, 28.416725, 43.983208>,  <36.432423, 28.796909, 44.031410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317810, 28.416725, 43.983208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058916, 0.108062, -0.992397,
		0.956258, -0.291450, 0.025034,
		-0.286528, -0.950463, -0.120507,
		36.231850, 28.131586, 43.947056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076065, 28.461506, 43.731770>,  <36.432423, 28.796909, 44.031410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076065, 28.461506, 43.731770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766888, 28.223232, 43.644390>,  <36.581383, 28.080269, 43.591961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766888, 28.223232, 43.644390>,  <37.076065, 28.461506, 43.731770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766888, 28.223232, 43.644390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218896, 0.072800, -0.973029,
		0.595522, -0.799912, 0.074123,
		-0.772941, -0.595685, -0.218452,
		36.535004, 28.044527, 43.578854>
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
