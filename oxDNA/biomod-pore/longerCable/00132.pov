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
	<24.132879, 34.627342, 34.598045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276056, 34.907990, 34.844498>,  <24.361961, 35.076378, 34.992367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.276056, 34.907990, 34.844498>,  <24.132879, 34.627342, 34.598045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.276056, 34.907990, 34.844498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932461, -0.303169, -0.196481,
		0.048936, 0.644843, -0.762747,
		0.357940, 0.701617, 0.616127,
		24.383438, 35.118473, 35.029335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558619, 35.155472, 34.242847>,  <24.132879, 34.627342, 34.598045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558619, 35.155472, 34.242847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689564, 35.127815, 34.619793>,  <24.768131, 35.111221, 34.845963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.689564, 35.127815, 34.619793>,  <24.558619, 35.155472, 34.242847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.689564, 35.127815, 34.619793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925183, -0.179217, -0.334541,
		0.192018, 0.981377, 0.005296,
		0.327362, -0.069138, 0.942366,
		24.787773, 35.107075, 34.902504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.154902, 35.490738, 34.294037>,  <24.558619, 35.155472, 34.242847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.154902, 35.490738, 34.294037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189293, 35.264420, 34.622055>,  <25.209927, 35.128628, 34.818867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189293, 35.264420, 34.622055>,  <25.154902, 35.490738, 34.294037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189293, 35.264420, 34.622055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916144, -0.278559, -0.288246,
		0.391521, 0.776065, 0.494402,
		0.085978, -0.565798, 0.820049,
		25.215086, 35.094681, 34.868069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897089, 35.470657, 34.456253>,  <25.154902, 35.490738, 34.294037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897089, 35.470657, 34.456253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763504, 35.134449, 34.626896>,  <25.683353, 34.932724, 34.729282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763504, 35.134449, 34.626896>,  <25.897089, 35.470657, 34.456253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763504, 35.134449, 34.626896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824237, -0.479973, -0.300430,
		0.457277, 0.251290, 0.853083,
		-0.333962, -0.840523, 0.426603,
		25.663315, 34.882294, 34.754875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424627, 35.254967, 35.045540>,  <25.897089, 35.470657, 34.456253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424627, 35.254967, 35.045540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234877, 34.983017, 34.821846>,  <26.121025, 34.819847, 34.687630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234877, 34.983017, 34.821846>,  <26.424627, 35.254967, 35.045540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234877, 34.983017, 34.821846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852071, -0.514247, -0.097601,
		-0.221227, -0.522805, 0.823246,
		-0.474378, -0.679871, -0.559232,
		26.092564, 34.779057, 34.654076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564037, 34.468018, 35.337482>,  <26.424627, 35.254967, 35.045540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564037, 34.468018, 35.337482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487705, 34.518734, 34.948124>,  <26.441906, 34.549164, 34.714508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487705, 34.518734, 34.948124>,  <26.564037, 34.468018, 35.337482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487705, 34.518734, 34.948124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761262, -0.606926, -0.228298,
		-0.619729, -0.784579, 0.019297,
		-0.190830, 0.126793, -0.973400,
		26.430456, 34.556770, 34.656105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590925, 33.819679, 35.086475>,  <26.564037, 34.468018, 35.337482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590925, 33.819679, 35.086475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689672, 34.077641, 34.797157>,  <26.748920, 34.232418, 34.623566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689672, 34.077641, 34.797157>,  <26.590925, 33.819679, 35.086475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689672, 34.077641, 34.797157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881625, -0.459285, -0.108601,
		-0.402236, -0.610864, -0.681946,
		0.246867, 0.644904, -0.723294,
		26.763733, 34.271111, 34.580170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531658, 33.627666, 34.308598>,  <26.590925, 33.819679, 35.086475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531658, 33.627666, 34.308598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810329, 33.888248, 34.428764>,  <26.977531, 34.044598, 34.500866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810329, 33.888248, 34.428764>,  <26.531658, 33.627666, 34.308598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810329, 33.888248, 34.428764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715740, -0.602854, -0.352538,
		-0.048552, 0.460628, -0.886265,
		0.696677, 0.651451, 0.300420,
		27.019333, 34.083683, 34.518890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059334, 33.609325, 33.895531>,  <26.531658, 33.627666, 34.308598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059334, 33.609325, 33.895531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255638, 33.810448, 34.180161>,  <27.373421, 33.931122, 34.350937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.255638, 33.810448, 34.180161>,  <27.059334, 33.609325, 33.895531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255638, 33.810448, 34.180161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844822, -0.474386, -0.247456,
		0.213139, 0.722597, -0.657591,
		0.490763, 0.502804, 0.711575,
		27.402866, 33.961288, 34.393635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592735, 33.894730, 33.569912>,  <27.059334, 33.609325, 33.895531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592735, 33.894730, 33.569912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698212, 33.844707, 33.952499>,  <27.761497, 33.814693, 34.182053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.698212, 33.844707, 33.952499>,  <27.592735, 33.894730, 33.569912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698212, 33.844707, 33.952499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800709, -0.524548, -0.289334,
		0.537897, 0.842146, -0.038181,
		0.263689, -0.125060, 0.956466,
		27.777319, 33.807190, 34.239441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373653, 33.870014, 33.521614>,  <27.592735, 33.894730, 33.569912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373653, 33.870014, 33.521614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333090, 33.774158, 33.907833>,  <28.308752, 33.716644, 34.139565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333090, 33.774158, 33.907833>,  <28.373653, 33.870014, 33.521614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333090, 33.774158, 33.907833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923395, -0.383848, 0.001716,
		0.370214, 0.891760, 0.260204,
		-0.101409, -0.239636, 0.965552,
		28.302668, 33.702267, 34.197498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990643, 34.135433, 33.945927>,  <28.373653, 33.870014, 33.521614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990643, 34.135433, 33.945927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830009, 33.803692, 34.101311>,  <28.733629, 33.604645, 34.194542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830009, 33.803692, 34.101311>,  <28.990643, 34.135433, 33.945927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830009, 33.803692, 34.101311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914856, -0.382770, 0.128551,
		0.042074, 0.407005, 0.912457,
		-0.401582, -0.829358, 0.388455,
		28.709536, 33.554886, 34.217846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256433, 33.947166, 34.665779>,  <28.990643, 34.135433, 33.945927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256433, 33.947166, 34.665779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134075, 33.609814, 34.489079>,  <29.060659, 33.407402, 34.383060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134075, 33.609814, 34.489079>,  <29.256433, 33.947166, 34.665779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134075, 33.609814, 34.489079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881144, -0.426515, 0.204134,
		-0.360574, -0.326800, 0.873607,
		-0.305896, -0.843378, -0.441748,
		29.042307, 33.356800, 34.356556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143858, 33.294170, 35.115181>,  <29.256433, 33.947166, 34.665779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143858, 33.294170, 35.115181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287518, 33.187977, 34.757294>,  <29.373714, 33.124260, 34.542561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287518, 33.187977, 34.757294>,  <29.143858, 33.294170, 35.115181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287518, 33.187977, 34.757294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799372, -0.407286, 0.441727,
		-0.481680, -0.873863, 0.065944,
		0.359151, -0.265485, -0.894722,
		29.395264, 33.108330, 34.488876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106604, 32.620556, 34.896858>,  <29.143858, 33.294170, 35.115181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106604, 32.620556, 34.896858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430073, 32.825562, 34.781357>,  <29.624155, 32.948566, 34.712055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430073, 32.825562, 34.781357>,  <29.106604, 32.620556, 34.896858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430073, 32.825562, 34.781357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558521, -0.514841, 0.650379,
		0.184669, -0.687217, -0.702588,
		0.808673, 0.512515, -0.288750,
		29.672674, 32.979317, 34.694733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370443, 32.669052, 35.033764>,  <29.106604, 32.620556, 34.896858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370443, 32.669052, 35.033764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471783, 33.001991, 34.836578>,  <28.532587, 33.201756, 34.718269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471783, 33.001991, 34.836578>,  <28.370443, 32.669052, 35.033764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471783, 33.001991, 34.836578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892354, 0.397843, 0.213131,
		0.373520, 0.385899, 0.843543,
		0.253351, 0.832348, -0.492961,
		28.547789, 33.251698, 34.688690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983244, 33.173626, 35.319187>,  <28.370443, 32.669052, 35.033764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983244, 33.173626, 35.319187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100037, 33.360394, 34.985306>,  <28.170113, 33.472454, 34.784977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100037, 33.360394, 34.985306>,  <27.983244, 33.173626, 35.319187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100037, 33.360394, 34.985306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794771, 0.603953, 0.059825,
		0.532056, 0.645932, 0.547438,
		0.291984, 0.466918, -0.834706,
		28.187632, 33.500469, 34.734894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142134, 33.850552, 35.502121>,  <27.983244, 33.173626, 35.319187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142134, 33.850552, 35.502121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044506, 33.837097, 35.114452>,  <27.985929, 33.829025, 34.881851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044506, 33.837097, 35.114452>,  <28.142134, 33.850552, 35.502121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044506, 33.837097, 35.114452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721959, 0.673552, 0.158440,
		0.647461, 0.738374, -0.188675,
		-0.244070, -0.033632, -0.969174,
		27.971285, 33.827007, 34.823700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949574, 34.516666, 35.396137>,  <28.142134, 33.850552, 35.502121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949574, 34.516666, 35.396137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796083, 34.329185, 35.077873>,  <27.703989, 34.216698, 34.886913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796083, 34.329185, 35.077873>,  <27.949574, 34.516666, 35.396137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796083, 34.329185, 35.077873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750096, 0.660757, -0.027480,
		0.538619, 0.586278, -0.605118,
		-0.383725, -0.468698, -0.795661,
		27.680965, 34.188576, 34.839176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609718, 34.740215, 34.891052>,  <27.949574, 34.516666, 35.396137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609718, 34.740215, 34.891052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611292, 34.521072, 34.556427>,  <27.612236, 34.389587, 34.355652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611292, 34.521072, 34.556427>,  <27.609718, 34.740215, 34.891052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611292, 34.521072, 34.556427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967994, 0.207847, -0.140669,
		0.250943, 0.810340, -0.529507,
		0.003934, -0.547859, -0.836561,
		27.612473, 34.356716, 34.305458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496557, 35.216694, 34.359974>,  <27.609718, 34.740215, 34.891052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496557, 35.216694, 34.359974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373497, 34.843727, 34.284142>,  <27.299660, 34.619946, 34.238640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373497, 34.843727, 34.284142>,  <27.496557, 35.216694, 34.359974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373497, 34.843727, 34.284142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937603, 0.331008, -0.106457,
		0.162017, 0.145004, -0.976076,
		-0.307653, -0.932420, -0.189585,
		27.281200, 34.563999, 34.227264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089539, 35.136665, 33.660408>,  <27.496557, 35.216694, 34.359974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089539, 35.136665, 33.660408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980814, 34.868622, 33.936691>,  <26.915579, 34.707798, 34.102463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980814, 34.868622, 33.936691>,  <27.089539, 35.136665, 33.660408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980814, 34.868622, 33.936691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956368, 0.267997, -0.116351,
		-0.107141, -0.692198, -0.713711,
		-0.271810, -0.670105, 0.690709,
		26.899271, 34.667591, 34.143906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401035, 34.953205, 33.471867>,  <27.089539, 35.136665, 33.660408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401035, 34.953205, 33.471867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448122, 34.856686, 33.857182>,  <26.476374, 34.798775, 34.088371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448122, 34.856686, 33.857182>,  <26.401035, 34.953205, 33.471867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448122, 34.856686, 33.857182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987681, 0.072258, 0.138797,
		-0.103097, -0.967757, -0.229819,
		0.117715, -0.241297, 0.963285,
		26.483437, 34.784298, 34.146168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090664, 35.236710, 32.829010>,  <26.401035, 34.953205, 33.471867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090664, 35.236710, 32.829010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151688, 35.585941, 32.643768>,  <26.188303, 35.795479, 32.532623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151688, 35.585941, 32.643768>,  <26.090664, 35.236710, 32.829010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151688, 35.585941, 32.643768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951243, -0.002618, 0.308433,
		0.268072, -0.487580, -0.830905,
		0.152561, 0.873075, -0.463105,
		26.197456, 35.847862, 32.504837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668047, 35.067524, 32.539230>,  <26.090664, 35.236710, 32.829010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668047, 35.067524, 32.539230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614592, 35.463245, 32.562611>,  <26.582518, 35.700680, 32.576637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.614592, 35.463245, 32.562611>,  <26.668047, 35.067524, 32.539230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.614592, 35.463245, 32.562611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897068, 0.095693, 0.431408,
		0.421201, 0.110083, -0.900262,
		-0.133639, 0.989305, 0.058446,
		26.574499, 35.760036, 32.580143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149340, 35.601509, 32.191120>,  <26.668047, 35.067524, 32.539230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149340, 35.601509, 32.191120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014671, 35.777412, 32.524170>,  <26.933870, 35.882954, 32.723999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014671, 35.777412, 32.524170>,  <27.149340, 35.601509, 32.191120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014671, 35.777412, 32.524170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941199, 0.183667, 0.283570,
		-0.028224, 0.879136, -0.475735,
		-0.336673, 0.439758, 0.832625,
		26.913670, 35.909340, 32.773956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364616, 36.339432, 32.360447>,  <27.149340, 35.601509, 32.191120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364616, 36.339432, 32.360447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299522, 36.150185, 32.706783>,  <27.260466, 36.036636, 32.914585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299522, 36.150185, 32.706783>,  <27.364616, 36.339432, 32.360447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299522, 36.150185, 32.706783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938365, 0.196997, 0.284012,
		-0.304939, 0.858693, 0.411898,
		-0.162736, -0.473117, 0.865839,
		27.250702, 36.008251, 32.966534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537292, 36.866146, 32.813396>,  <27.364616, 36.339432, 32.360447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537292, 36.866146, 32.813396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577564, 36.488800, 32.939846>,  <27.601728, 36.262394, 33.015717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577564, 36.488800, 32.939846>,  <27.537292, 36.866146, 32.813396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577564, 36.488800, 32.939846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959108, 0.176507, 0.221261,
		-0.264527, 0.280917, 0.922557,
		0.100681, -0.943362, 0.316121,
		27.607769, 36.205791, 33.034683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795435, 36.807560, 33.507423>,  <27.537292, 36.866146, 32.813396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795435, 36.807560, 33.507423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920816, 36.485008, 33.306828>,  <27.996046, 36.291477, 33.186470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920816, 36.485008, 33.306828>,  <27.795435, 36.807560, 33.507423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920816, 36.485008, 33.306828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914927, 0.115050, 0.386874,
		-0.254271, -0.580098, 0.773843,
		0.313455, -0.806381, -0.501494,
		28.014853, 36.243095, 33.156380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980631, 36.115765, 33.885052>,  <27.795435, 36.807560, 33.507423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980631, 36.115765, 33.885052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204573, 36.131111, 33.553970>,  <28.338938, 36.140320, 33.355324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204573, 36.131111, 33.553970>,  <27.980631, 36.115765, 33.885052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204573, 36.131111, 33.553970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828138, 0.007068, 0.560479,
		0.027352, -0.999239, -0.027813,
		0.559856, 0.038363, -0.827702,
		28.372530, 36.142620, 33.305660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568905, 35.536728, 33.848755>,  <27.980631, 36.115765, 33.885052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568905, 35.536728, 33.848755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674555, 35.849049, 33.622272>,  <28.737946, 36.036442, 33.486382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674555, 35.849049, 33.622272>,  <28.568905, 35.536728, 33.848755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674555, 35.849049, 33.622272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764904, 0.188021, 0.616093,
		0.587503, -0.595821, -0.547574,
		0.264126, 0.780798, -0.566209,
		28.753792, 36.083286, 33.452412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113422, 35.941956, 34.095303>,  <28.568905, 35.536728, 33.848755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113422, 35.941956, 34.095303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090204, 36.187588, 33.780460>,  <29.076273, 36.334969, 33.591557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090204, 36.187588, 33.780460>,  <29.113422, 35.941956, 34.095303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090204, 36.187588, 33.780460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839257, 0.456985, 0.294638,
		0.540627, -0.643479, -0.541901,
		-0.058048, 0.614084, -0.787103,
		29.072790, 36.371815, 33.544331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779879, 35.896950, 33.610313>,  <29.113422, 35.941956, 34.095303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779879, 35.896950, 33.610313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571865, 36.237785, 33.633984>,  <29.447058, 36.442287, 33.648186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571865, 36.237785, 33.633984>,  <29.779879, 35.896950, 33.610313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571865, 36.237785, 33.633984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760632, 0.430471, 0.485936,
		0.388591, 0.297711, -0.871989,
		-0.520034, 0.852093, 0.059172,
		29.415855, 36.493412, 33.651733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157249, 36.448353, 33.269314>,  <29.779879, 35.896950, 33.610313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157249, 36.448353, 33.269314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925455, 36.547256, 33.579941>,  <29.786379, 36.606598, 33.766319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925455, 36.547256, 33.579941>,  <30.157249, 36.448353, 33.269314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925455, 36.547256, 33.579941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792690, 0.392344, 0.466593,
		-0.189315, 0.885963, -0.423354,
		-0.579485, 0.247256, 0.776571,
		29.751610, 36.621433, 33.812912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127979, 37.158222, 33.479187>,  <30.157249, 36.448353, 33.269314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127979, 37.158222, 33.479187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123646, 36.924400, 33.803699>,  <30.121046, 36.784107, 33.998405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123646, 36.924400, 33.803699>,  <30.127979, 37.158222, 33.479187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123646, 36.924400, 33.803699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918019, 0.315805, 0.239808,
		-0.396388, 0.747370, 0.533211,
		-0.010835, -0.584555, 0.811281,
		30.120396, 36.749035, 34.047085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128742, 37.544403, 34.059330>,  <30.127979, 37.158222, 33.479187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128742, 37.544403, 34.059330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303940, 37.189083, 34.114582>,  <30.409060, 36.975891, 34.147732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303940, 37.189083, 34.114582>,  <30.128742, 37.544403, 34.059330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303940, 37.189083, 34.114582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895808, 0.444159, 0.015828,
		-0.075412, 0.116806, 0.990287,
		0.437996, -0.888301, 0.138131,
		30.435339, 36.922592, 34.156021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394165, 37.591679, 34.693935>,  <30.128742, 37.544403, 34.059330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394165, 37.591679, 34.693935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574205, 37.340218, 34.440258>,  <30.682230, 37.189339, 34.288052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574205, 37.340218, 34.440258>,  <30.394165, 37.591679, 34.693935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574205, 37.340218, 34.440258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813161, 0.582039, 0.000161,
		0.369024, -0.515773, 0.773175,
		0.450101, -0.628656, -0.634192,
		30.709236, 37.151619, 34.250000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042547, 37.369465, 35.087498>,  <30.394165, 37.591679, 34.693935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042547, 37.369465, 35.087498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060812, 37.326881, 34.690189>,  <31.071772, 37.301331, 34.451805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060812, 37.326881, 34.690189>,  <31.042547, 37.369465, 35.087498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060812, 37.326881, 34.690189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868004, 0.496380, -0.013296,
		0.494454, -0.861553, 0.115072,
		0.045664, -0.106457, -0.993268,
		31.074511, 37.294945, 34.392208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728666, 37.169075, 34.966995>,  <31.042547, 37.369465, 35.087498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728666, 37.169075, 34.966995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549829, 37.346607, 34.656349>,  <31.442528, 37.453125, 34.469963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549829, 37.346607, 34.656349>,  <31.728666, 37.169075, 34.966995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549829, 37.346607, 34.656349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788502, 0.605493, -0.107901,
		0.422344, -0.660602, -0.620669,
		-0.447090, 0.443827, -0.776613,
		31.415703, 37.479755, 34.423367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248692, 37.500580, 34.578400>,  <31.728666, 37.169075, 34.966995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248692, 37.500580, 34.578400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904959, 37.664917, 34.456577>,  <31.698719, 37.763519, 34.383484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904959, 37.664917, 34.456577>,  <32.248692, 37.500580, 34.578400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904959, 37.664917, 34.456577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495960, 0.814777, -0.300270,
		0.124784, -0.409081, -0.903926,
		-0.859333, 0.410842, -0.304559,
		31.647160, 37.788170, 34.365211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317932, 37.655529, 33.855835>,  <32.248692, 37.500580, 34.578400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317932, 37.655529, 33.855835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045219, 37.882137, 34.040977>,  <31.881592, 38.018101, 34.152061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045219, 37.882137, 34.040977>,  <32.317932, 37.655529, 33.855835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045219, 37.882137, 34.040977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447765, 0.823494, -0.348374,
		-0.578520, -0.030263, -0.815107,
		-0.681778, 0.566518, 0.462856,
		31.840687, 38.052094, 34.179836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871460, 38.090424, 33.387917>,  <32.317932, 37.655529, 33.855835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871460, 38.090424, 33.387917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892336, 38.278160, 33.740505>,  <31.904861, 38.390804, 33.952057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892336, 38.278160, 33.740505>,  <31.871460, 38.090424, 33.387917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892336, 38.278160, 33.740505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220281, 0.855522, -0.468570,
		-0.974039, 0.218627, -0.058737,
		0.052192, 0.469344, 0.881472,
		31.907993, 38.418964, 34.004948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269129, 38.255817, 33.858135>,  <31.871460, 38.090424, 33.387917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269129, 38.255817, 33.858135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527515, 37.950611, 33.848862>,  <31.682549, 37.767487, 33.843296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527515, 37.950611, 33.848862>,  <31.269129, 38.255817, 33.858135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527515, 37.950611, 33.848862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754873, -0.643005, 0.129268,
		-0.113540, -0.066002, -0.991339,
		0.645968, -0.763012, -0.023183,
		31.721306, 37.721706, 33.841908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105083, 37.800987, 33.239983>,  <31.269129, 38.255817, 33.858135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105083, 37.800987, 33.239983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267836, 37.616970, 33.555656>,  <31.365486, 37.506561, 33.745060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267836, 37.616970, 33.555656>,  <31.105083, 37.800987, 33.239983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267836, 37.616970, 33.555656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800163, -0.596254, 0.064965,
		0.440668, -0.657910, -0.610710,
		0.406879, -0.460039, 0.789185,
		31.389900, 37.478958, 33.792412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303736, 37.012157, 33.151215>,  <31.105083, 37.800987, 33.239983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303736, 37.012157, 33.151215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246296, 37.077175, 33.541691>,  <31.211832, 37.116188, 33.775978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246296, 37.077175, 33.541691>,  <31.303736, 37.012157, 33.151215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246296, 37.077175, 33.541691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622738, -0.781482, 0.038519,
		0.769140, -0.602382, 0.213446,
		-0.143601, 0.162547, 0.976195,
		31.203215, 37.125938, 33.834549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283079, 36.366096, 33.333797>,  <31.303736, 37.012157, 33.151215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283079, 36.366096, 33.333797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113943, 36.597980, 33.612408>,  <31.012463, 36.737110, 33.779572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113943, 36.597980, 33.612408>,  <31.283079, 36.366096, 33.333797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113943, 36.597980, 33.612408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689216, -0.704770, 0.168170,
		0.588378, -0.408946, 0.697549,
		-0.422839, 0.579709, 0.696523,
		30.987091, 36.771893, 33.821365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207468, 35.989803, 33.927910>,  <31.283079, 36.366096, 33.333797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207468, 35.989803, 33.927910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932859, 36.279705, 33.951313>,  <30.768093, 36.453644, 33.965355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932859, 36.279705, 33.951313>,  <31.207468, 35.989803, 33.927910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932859, 36.279705, 33.951313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692959, -0.676528, 0.249233,
		0.220216, 0.130559, 0.966674,
		-0.686522, 0.724751, 0.058511,
		30.726902, 36.497131, 33.968864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875774, 35.963318, 34.609753>,  <31.207468, 35.989803, 33.927910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875774, 35.963318, 34.609753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618008, 36.117992, 34.345875>,  <30.463346, 36.210796, 34.187550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618008, 36.117992, 34.345875>,  <30.875774, 35.963318, 34.609753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618008, 36.117992, 34.345875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672199, -0.697722, 0.247655,
		-0.364517, 0.603039, 0.709557,
		-0.644419, 0.386689, -0.659693,
		30.424683, 36.233997, 34.147968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474642, 36.075710, 35.099815>,  <30.875774, 35.963318, 34.609753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474642, 36.075710, 35.099815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685041, 35.737293, 35.065086>,  <31.811281, 35.534245, 35.044247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.685041, 35.737293, 35.065086>,  <31.474642, 36.075710, 35.099815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685041, 35.737293, 35.065086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035892, -0.124079, 0.991623,
		-0.849728, -0.518475, -0.095631,
		0.525998, -0.846043, -0.086824,
		31.842840, 35.483482, 35.039040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108652, 35.489304, 35.387398>,  <31.474642, 36.075710, 35.099815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108652, 35.489304, 35.387398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501003, 35.475819, 35.464073>,  <31.736414, 35.467728, 35.510078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501003, 35.475819, 35.464073>,  <31.108652, 35.489304, 35.387398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501003, 35.475819, 35.464073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193483, -0.062049, 0.979140,
		-0.021110, -0.997504, -0.067385,
		0.980876, -0.033707, 0.191690,
		31.795267, 35.465706, 35.521580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280264, 34.912632, 35.942307>,  <31.108652, 35.489304, 35.387398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280264, 34.912632, 35.942307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545387, 35.211750, 35.957737>,  <31.704462, 35.391220, 35.966995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545387, 35.211750, 35.957737>,  <31.280264, 34.912632, 35.942307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545387, 35.211750, 35.957737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119918, 0.055149, 0.991251,
		0.739123, -0.661637, 0.126227,
		0.662809, 0.747794, 0.038581,
		31.744230, 35.436089, 35.969311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015671, 34.913197, 36.060890>,  <31.280264, 34.912632, 35.942307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015671, 34.913197, 36.060890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809671, 34.809597, 36.387741>,  <31.686071, 34.747437, 36.583851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809671, 34.809597, 36.387741>,  <32.015671, 34.913197, 36.060890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809671, 34.809597, 36.387741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847485, -0.010806, 0.530709,
		-0.128624, 0.965817, 0.225065,
		-0.515000, -0.259001, 0.817125,
		31.655172, 34.731895, 36.632877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995514, 35.421085, 36.811588>,  <32.015671, 34.913197, 36.060890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995514, 35.421085, 36.811588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962706, 35.028000, 36.877975>,  <31.943022, 34.792149, 36.917809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962706, 35.028000, 36.877975>,  <31.995514, 35.421085, 36.811588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962706, 35.028000, 36.877975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778664, 0.040756, 0.626117,
		-0.622058, 0.180588, 0.761861,
		-0.082019, -0.982714, 0.165970,
		31.938101, 34.733185, 36.927765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725395, 35.628609, 36.848862>,  <31.995514, 35.421085, 36.811588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725395, 35.628609, 36.848862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914284, 35.593121, 37.199661>,  <33.027618, 35.571827, 37.410141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.914284, 35.593121, 37.199661>,  <32.725395, 35.628609, 36.848862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914284, 35.593121, 37.199661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770076, 0.525664, -0.361470,
		-0.428939, 0.846054, 0.316550,
		0.472222, -0.088719, 0.877003,
		33.055950, 35.566505, 37.462761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785915, 36.310295, 37.197819>,  <32.725395, 35.628609, 36.848862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785915, 36.310295, 37.197819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089039, 36.059727, 37.270828>,  <33.270912, 35.909386, 37.314632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089039, 36.059727, 37.270828>,  <32.785915, 36.310295, 37.197819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089039, 36.059727, 37.270828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632518, 0.636644, -0.441142,
		0.160140, 0.449751, 0.878680,
		0.757810, -0.626426, 0.182523,
		33.316383, 35.871799, 37.325584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175495, 36.640102, 37.695862>,  <32.785915, 36.310295, 37.197819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175495, 36.640102, 37.695862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387074, 36.373779, 37.485371>,  <33.514019, 36.213985, 37.359077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387074, 36.373779, 37.485371>,  <33.175495, 36.640102, 37.695862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387074, 36.373779, 37.485371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671908, 0.707336, -0.219580,
		0.518419, -0.237432, 0.821504,
		0.528944, -0.665809, -0.526228,
		33.545757, 36.174038, 37.327503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933392, 36.601540, 37.894432>,  <33.175495, 36.640102, 37.695862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933392, 36.601540, 37.894432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920200, 36.460434, 37.520378>,  <33.912285, 36.375771, 37.295948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920200, 36.460434, 37.520378>,  <33.933392, 36.601540, 37.894432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920200, 36.460434, 37.520378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837157, 0.501357, -0.218655,
		0.545968, -0.790063, 0.278783,
		-0.032982, -0.352764, -0.935131,
		33.910305, 36.354607, 37.239838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785904, 37.147404, 37.423836>,  <33.933392, 36.601540, 37.894432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785904, 37.147404, 37.423836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561039, 37.014267, 37.120998>,  <33.426121, 36.934387, 36.939297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561039, 37.014267, 37.120998>,  <33.785904, 37.147404, 37.423836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561039, 37.014267, 37.120998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827026, 0.224818, 0.515253,
		-0.001288, 0.915792, -0.401650,
		-0.562163, -0.332839, -0.757094,
		33.392391, 36.914413, 36.893871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293163, 37.654930, 37.226776>,  <33.785904, 37.147404, 37.423836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293163, 37.654930, 37.226776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135437, 37.294529, 37.154434>,  <33.040802, 37.078289, 37.111027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135437, 37.294529, 37.154434>,  <33.293163, 37.654930, 37.226776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135437, 37.294529, 37.154434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826628, 0.261770, 0.498159,
		-0.401500, 0.345933, -0.848014,
		-0.394314, -0.901003, -0.180857,
		33.017143, 37.024227, 37.100178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656528, 37.643471, 36.891621>,  <33.293163, 37.654930, 37.226776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656528, 37.643471, 36.891621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659451, 37.309513, 37.111767>,  <32.661201, 37.109138, 37.243855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659451, 37.309513, 37.111767>,  <32.656528, 37.643471, 36.891621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659451, 37.309513, 37.111767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939407, 0.182908, 0.289928,
		-0.342725, -0.519138, -0.782966,
		0.007302, -0.834889, 0.550369,
		32.661640, 37.059048, 37.276878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144749, 37.181496, 36.691963>,  <32.656528, 37.643471, 36.891621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144749, 37.181496, 36.691963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203533, 37.110130, 37.081131>,  <32.238804, 37.067310, 37.314632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203533, 37.110130, 37.081131>,  <32.144749, 37.181496, 36.691963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203533, 37.110130, 37.081131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988802, -0.000734, 0.149228,
		-0.025910, -0.983956, -0.176518,
		0.146964, -0.178408, 0.972919,
		32.247623, 37.056606, 37.373005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775196, 36.532722, 36.891449>,  <32.144749, 37.181496, 36.691963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775196, 36.532722, 36.891449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826868, 36.790279, 37.193100>,  <31.857870, 36.944813, 37.374092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826868, 36.790279, 37.193100>,  <31.775196, 36.532722, 36.891449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826868, 36.790279, 37.193100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984976, -0.004582, 0.172632,
		0.114612, -0.765101, 0.633628,
		0.129178, 0.643894, 0.754131,
		31.865622, 36.983448, 37.419338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358551, 36.517315, 36.371407>,  <31.775196, 36.532722, 36.891449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358551, 36.517315, 36.371407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278023, 36.125557, 36.365063>,  <32.229706, 35.890503, 36.361256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278023, 36.125557, 36.365063>,  <32.358551, 36.517315, 36.371407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278023, 36.125557, 36.365063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184068, -0.021928, -0.982669,
		0.962076, -0.200749, 0.184690,
		-0.201319, -0.979397, -0.015855,
		32.217628, 35.831738, 36.360306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825085, 36.173462, 35.916893>,  <32.358551, 36.517315, 36.371407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825085, 36.173462, 35.916893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506351, 35.933376, 35.944580>,  <32.315109, 35.789326, 35.961193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506351, 35.933376, 35.944580>,  <32.825085, 36.173462, 35.916893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506351, 35.933376, 35.944580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103447, -0.248395, -0.963119,
		0.595272, -0.760290, 0.260021,
		-0.796838, -0.600216, 0.069213,
		32.267300, 35.753311, 35.965343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056843, 35.490295, 35.730217>,  <32.825085, 36.173462, 35.916893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056843, 35.490295, 35.730217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662174, 35.527290, 35.676674>,  <32.425373, 35.549488, 35.644550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662174, 35.527290, 35.676674>,  <33.056843, 35.490295, 35.730217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662174, 35.527290, 35.676674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131642, -0.029639, -0.990854,
		-0.095615, -0.995272, 0.017068,
		-0.986675, 0.092494, -0.133854,
		32.366173, 35.555038, 35.636517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730438, 34.933422, 35.391834>,  <33.056843, 35.490295, 35.730217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730438, 34.933422, 35.391834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550705, 35.275867, 35.289715>,  <32.442867, 35.481335, 35.228443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550705, 35.275867, 35.289715>,  <32.730438, 34.933422, 35.391834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550705, 35.275867, 35.289715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224878, -0.168178, -0.959764,
		-0.864599, -0.488662, -0.116953,
		-0.449331, 0.856111, -0.255295,
		32.415905, 35.532700, 35.213127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248158, 34.767391, 34.835911>,  <32.730438, 34.933422, 35.391834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248158, 34.767391, 34.835911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361443, 35.150875, 34.825535>,  <32.429413, 35.380966, 34.819309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361443, 35.150875, 34.825535>,  <32.248158, 34.767391, 34.835911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361443, 35.150875, 34.825535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189573, -0.082476, -0.978397,
		-0.940135, 0.272173, -0.205103,
		0.283210, 0.958707, -0.025942,
		32.446404, 35.438488, 34.817753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915287, 35.054756, 34.278088>,  <32.248158, 34.767391, 34.835911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915287, 35.054756, 34.278088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245903, 35.271141, 34.340305>,  <32.444271, 35.400970, 34.377636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245903, 35.271141, 34.340305>,  <31.915287, 35.054756, 34.278088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245903, 35.271141, 34.340305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230690, -0.073498, -0.970247,
		-0.513436, 0.837829, -0.185543,
		0.826538, 0.540963, 0.155542,
		32.493866, 35.433430, 34.386967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005562, 35.497562, 33.657509>,  <31.915287, 35.054756, 34.278088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005562, 35.497562, 33.657509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364487, 35.510876, 33.833565>,  <32.579842, 35.518864, 33.939198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364487, 35.510876, 33.833565>,  <32.005562, 35.497562, 33.657509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364487, 35.510876, 33.833565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441068, -0.029384, -0.896993,
		-0.016924, 0.999014, -0.041048,
		0.897314, 0.033285, 0.440136,
		32.633682, 35.520863, 33.965607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416023, 36.049263, 33.339149>,  <32.005562, 35.497562, 33.657509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416023, 36.049263, 33.339149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667488, 35.797192, 33.521431>,  <32.818367, 35.645950, 33.630798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667488, 35.797192, 33.521431>,  <32.416023, 36.049263, 33.339149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667488, 35.797192, 33.521431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514058, -0.102961, -0.851554,
		0.583548, 0.769595, 0.259219,
		0.628662, -0.630176, 0.455699,
		32.856087, 35.608139, 33.658142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127880, 36.257008, 33.043560>,  <32.416023, 36.049263, 33.339149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127880, 36.257008, 33.043560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153206, 35.897423, 33.216930>,  <33.168400, 35.681671, 33.320953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153206, 35.897423, 33.216930>,  <33.127880, 36.257008, 33.043560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153206, 35.897423, 33.216930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648659, -0.292980, -0.702428,
		0.758441, 0.325615, 0.564572,
		0.063313, -0.898965, 0.433421,
		33.172199, 35.627735, 33.346958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818005, 36.118778, 32.991467>,  <33.127880, 36.257008, 33.043560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818005, 36.118778, 32.991467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629997, 35.767689, 33.028732>,  <33.517193, 35.557034, 33.051090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629997, 35.767689, 33.028732>,  <33.818005, 36.118778, 32.991467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629997, 35.767689, 33.028732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681411, -0.427915, -0.593774,
		0.561038, -0.215600, 0.799220,
		-0.470016, -0.877727, 0.093164,
		33.488991, 35.504372, 33.056683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400383, 35.722385, 33.043991>,  <33.818005, 36.118778, 32.991467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400383, 35.722385, 33.043991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104630, 35.463737, 32.968956>,  <33.927177, 35.308548, 32.923935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104630, 35.463737, 32.968956>,  <34.400383, 35.722385, 33.043991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104630, 35.463737, 32.968956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607046, -0.519733, -0.601143,
		0.291215, -0.558353, 0.776812,
		-0.739384, -0.646622, -0.187592,
		33.882812, 35.269753, 32.912678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590252, 35.051769, 33.329388>,  <34.400383, 35.722385, 33.043991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590252, 35.051769, 33.329388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320141, 34.995144, 33.039848>,  <34.158073, 34.961170, 32.866123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320141, 34.995144, 33.039848>,  <34.590252, 35.051769, 33.329388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320141, 34.995144, 33.039848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734875, -0.212814, -0.643948,
		-0.062885, -0.966783, 0.247741,
		-0.675281, -0.141564, -0.723847,
		34.117558, 34.952675, 32.822693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844997, 34.548660, 32.929169>,  <34.590252, 35.051769, 33.329388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844997, 34.548660, 32.929169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584709, 34.718243, 32.677193>,  <34.428535, 34.819992, 32.526005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584709, 34.718243, 32.677193>,  <34.844997, 34.548660, 32.929169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584709, 34.718243, 32.677193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612972, -0.196336, -0.765321,
		-0.448140, -0.884147, -0.132111,
		-0.650719, 0.423952, -0.629944,
		34.389492, 34.845428, 32.488209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817463, 34.026894, 32.387257>,  <34.844997, 34.548660, 32.929169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817463, 34.026894, 32.387257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744186, 34.406696, 32.285378>,  <34.700222, 34.634579, 32.224251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744186, 34.406696, 32.285378>,  <34.817463, 34.026894, 32.387257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744186, 34.406696, 32.285378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654356, -0.075578, -0.752400,
		-0.733661, -0.304496, -0.607473,
		-0.183191, 0.949510, -0.254698,
		34.689228, 34.691551, 32.208969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938862, 34.056881, 31.641256>,  <34.817463, 34.026894, 32.387257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938862, 34.056881, 31.641256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935326, 34.448017, 31.724930>,  <34.933205, 34.682697, 31.775133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935326, 34.448017, 31.724930>,  <34.938862, 34.056881, 31.641256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935326, 34.448017, 31.724930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459741, 0.189748, -0.867545,
		-0.888009, 0.088499, -0.451229,
		-0.008843, 0.977836, 0.209185,
		34.932674, 34.741367, 31.787685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608185, 34.417061, 31.026060>,  <34.938862, 34.056881, 31.641256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608185, 34.417061, 31.026060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809658, 34.694912, 31.231506>,  <34.930542, 34.861622, 31.354774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809658, 34.694912, 31.231506>,  <34.608185, 34.417061, 31.026060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809658, 34.694912, 31.231506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345362, 0.383057, -0.856734,
		-0.791854, 0.608902, -0.046960,
		0.503679, 0.694626, 0.513617,
		34.960762, 34.903301, 31.385592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481483, 34.992203, 30.559063>,  <34.608185, 34.417061, 31.026060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481483, 34.992203, 30.559063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793144, 35.098351, 30.786221>,  <34.980141, 35.162037, 30.922516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793144, 35.098351, 30.786221>,  <34.481483, 34.992203, 30.559063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793144, 35.098351, 30.786221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370221, 0.536258, -0.758527,
		-0.505825, 0.801254, 0.319583,
		0.779152, 0.265366, 0.567894,
		35.026890, 35.177959, 30.956589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535538, 35.768642, 30.627304>,  <34.481483, 34.992203, 30.559063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535538, 35.768642, 30.627304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903137, 35.623070, 30.687956>,  <35.123699, 35.535728, 30.724348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903137, 35.623070, 30.687956>,  <34.535538, 35.768642, 30.627304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903137, 35.623070, 30.687956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363020, 0.631079, -0.685533,
		0.153793, 0.685051, 0.712076,
		0.919002, -0.363928, 0.151631,
		35.178837, 35.513893, 30.733446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937191, 36.267311, 30.520155>,  <34.535538, 35.768642, 30.627304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937191, 36.267311, 30.520155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220928, 35.985500, 30.511412>,  <35.391171, 35.816414, 30.506166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220928, 35.985500, 30.511412>,  <34.937191, 36.267311, 30.520155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220928, 35.985500, 30.511412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437455, 0.464336, -0.770081,
		0.552692, 0.536687, 0.637572,
		0.709341, -0.704527, -0.021858,
		35.433731, 35.774143, 30.504854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534744, 36.607273, 30.660187>,  <34.937191, 36.267311, 30.520155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534744, 36.607273, 30.660187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614071, 36.275921, 30.450634>,  <35.661667, 36.077110, 30.324902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614071, 36.275921, 30.450634>,  <35.534744, 36.607273, 30.660187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614071, 36.275921, 30.450634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466494, 0.549853, -0.692853,
		0.862005, -0.106982, 0.495481,
		0.198319, -0.828382, -0.523882,
		35.673565, 36.027405, 30.293468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212246, 36.640545, 30.458872>,  <35.534744, 36.607273, 30.660187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212246, 36.640545, 30.458872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027061, 36.388416, 30.209595>,  <35.915951, 36.237141, 30.060028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027061, 36.388416, 30.209595>,  <36.212246, 36.640545, 30.458872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027061, 36.388416, 30.209595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409386, 0.471541, -0.781058,
		0.786175, -0.616725, 0.039739,
		-0.462959, -0.630317, -0.623192,
		35.888172, 36.199322, 30.022636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793705, 36.467793, 30.036200>,  <36.212246, 36.640545, 30.458872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793705, 36.467793, 30.036200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462948, 36.347065, 29.846399>,  <36.264492, 36.274628, 29.732519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.462948, 36.347065, 29.846399>,  <36.793705, 36.467793, 30.036200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462948, 36.347065, 29.846399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305796, 0.466793, -0.829815,
		0.471931, -0.831276, -0.293703,
		-0.826904, -0.301802, -0.474495,
		36.214878, 36.256519, 29.704050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051708, 36.511093, 29.477097>,  <36.793705, 36.467793, 30.036200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051708, 36.511093, 29.477097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670918, 36.476601, 29.359585>,  <36.442444, 36.455906, 29.289078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670918, 36.476601, 29.359585>,  <37.051708, 36.511093, 29.477097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670918, 36.476601, 29.359585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271104, 0.208517, -0.939693,
		0.142287, -0.974210, -0.175126,
		-0.951975, -0.086229, -0.293782,
		36.385326, 36.450733, 29.271450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031288, 36.257698, 28.747284>,  <37.051708, 36.511093, 29.477097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031288, 36.257698, 28.747284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686028, 36.443432, 28.826645>,  <36.478870, 36.554871, 28.874262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686028, 36.443432, 28.826645>,  <37.031288, 36.257698, 28.747284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686028, 36.443432, 28.826645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143846, 0.602752, -0.784855,
		-0.484021, -0.648911, -0.587060,
		-0.863153, 0.464333, 0.198401,
		36.427082, 36.582733, 28.886166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761097, 36.341274, 28.135471>,  <37.031288, 36.257698, 28.747284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761097, 36.341274, 28.135471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559250, 36.611141, 28.350946>,  <36.438141, 36.773060, 28.480232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559250, 36.611141, 28.350946>,  <36.761097, 36.341274, 28.135471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559250, 36.611141, 28.350946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100660, 0.665682, -0.739415,
		-0.857452, -0.318900, -0.403830,
		-0.504622, 0.674663, 0.538690,
		36.407864, 36.813541, 28.512554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442036, 36.706490, 27.625359>,  <36.761097, 36.341274, 28.135471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442036, 36.706490, 27.625359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375336, 36.936893, 27.945459>,  <36.335316, 37.075138, 28.137520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375336, 36.936893, 27.945459>,  <36.442036, 36.706490, 27.625359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375336, 36.936893, 27.945459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278251, 0.806117, -0.522256,
		-0.945924, 0.135586, -0.294695,
		-0.166749, 0.576013, 0.800252,
		36.325310, 37.109699, 28.185535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000877, 37.141788, 27.442955>,  <36.442036, 36.706490, 27.625359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000877, 37.141788, 27.442955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201977, 37.312412, 27.743700>,  <36.322636, 37.414787, 27.924147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201977, 37.312412, 27.743700>,  <36.000877, 37.141788, 27.442955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201977, 37.312412, 27.743700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311927, 0.721653, -0.617995,
		-0.806193, 0.545220, 0.229754,
		0.502746, 0.426557, 0.751861,
		36.352802, 37.440380, 27.969259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764076, 37.874737, 27.583344>,  <36.000877, 37.141788, 27.442955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764076, 37.874737, 27.583344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141464, 37.833305, 27.709282>,  <36.367897, 37.808445, 27.784845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141464, 37.833305, 27.709282>,  <35.764076, 37.874737, 27.583344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141464, 37.833305, 27.709282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293498, 0.702444, -0.648407,
		-0.154000, 0.704162, 0.693138,
		0.943474, -0.103580, 0.314847,
		36.424507, 37.802231, 27.803736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018299, 38.565735, 27.708220>,  <35.764076, 37.874737, 27.583344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018299, 38.565735, 27.708220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342552, 38.331875, 27.695280>,  <36.537106, 38.191559, 27.687515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342552, 38.331875, 27.695280>,  <36.018299, 38.565735, 27.708220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342552, 38.331875, 27.695280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352955, 0.531969, -0.769695,
		0.467215, 0.612526, 0.637591,
		0.810637, -0.584654, -0.032350,
		36.585743, 38.156479, 27.685575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429241, 39.080620, 27.477453>,  <36.018299, 38.565735, 27.708220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429241, 39.080620, 27.477453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676117, 38.768902, 27.434025>,  <36.824242, 38.581871, 27.407967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676117, 38.768902, 27.434025>,  <36.429241, 39.080620, 27.477453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676117, 38.768902, 27.434025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407817, 0.434842, -0.802868,
		0.672880, 0.451241, 0.586186,
		0.617185, -0.779291, -0.108573,
		36.861271, 38.535114, 27.401453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169189, 39.343765, 27.317354>,  <36.429241, 39.080620, 27.477453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169189, 39.343765, 27.317354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147316, 38.970734, 27.174639>,  <37.134190, 38.746914, 27.089010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147316, 38.970734, 27.174639>,  <37.169189, 39.343765, 27.317354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147316, 38.970734, 27.174639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414163, 0.303951, -0.857953,
		0.908558, -0.194686, 0.369620,
		-0.054686, -0.932583, -0.356789,
		37.130909, 38.690960, 27.067602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867188, 39.170250, 27.175932>,  <37.169189, 39.343765, 27.317354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867188, 39.170250, 27.175932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624298, 38.953892, 26.943136>,  <37.478565, 38.824078, 26.803459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624298, 38.953892, 26.943136>,  <37.867188, 39.170250, 27.175932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624298, 38.953892, 26.943136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574490, 0.207104, -0.791877,
		0.548858, -0.815191, 0.184983,
		-0.607220, -0.540899, -0.581990,
		37.442131, 38.791622, 26.768539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333332, 38.793507, 26.728836>,  <37.867188, 39.170250, 27.175932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333332, 38.793507, 26.728836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986111, 38.744843, 26.536306>,  <37.777779, 38.715645, 26.420788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986111, 38.744843, 26.536306>,  <38.333332, 38.793507, 26.728836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986111, 38.744843, 26.536306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425429, 0.317447, -0.847489,
		0.255900, -0.940440, -0.223805,
		-0.868059, -0.121659, -0.481325,
		37.725693, 38.708344, 26.391909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459061, 38.352196, 26.151436>,  <38.333332, 38.793507, 26.728836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459061, 38.352196, 26.151436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140331, 38.582344, 26.077662>,  <37.949093, 38.720432, 26.033398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.140331, 38.582344, 26.077662>,  <38.459061, 38.352196, 26.151436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140331, 38.582344, 26.077662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368847, 0.221442, -0.902727,
		-0.478565, -0.787341, -0.388676,
		-0.796823, 0.575376, -0.184435,
		37.901283, 38.754955, 26.022331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279800, 38.296642, 25.527721>,  <38.459061, 38.352196, 26.151436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279800, 38.296642, 25.527721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101742, 38.652309, 25.570093>,  <37.994907, 38.865711, 25.595516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101742, 38.652309, 25.570093>,  <38.279800, 38.296642, 25.527721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101742, 38.652309, 25.570093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450523, 0.324623, -0.831654,
		-0.773871, -0.322482, -0.545096,
		-0.445144, 0.889171, 0.105930,
		37.968197, 38.919060, 25.601871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146828, 38.451534, 24.853539>,  <38.279800, 38.296642, 25.527721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146828, 38.451534, 24.853539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091564, 38.798965, 25.043900>,  <38.058407, 39.007423, 25.158115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091564, 38.798965, 25.043900>,  <38.146828, 38.451534, 24.853539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091564, 38.798965, 25.043900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536155, 0.469604, -0.701435,
		-0.832737, 0.158249, -0.530572,
		-0.138157, 0.868579, 0.475902,
		38.050117, 39.059540, 25.186670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873528, 38.866081, 24.354315>,  <38.146828, 38.451534, 24.853539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873528, 38.866081, 24.354315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017853, 39.118908, 24.628630>,  <38.104446, 39.270603, 24.793219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017853, 39.118908, 24.628630>,  <37.873528, 38.866081, 24.354315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017853, 39.118908, 24.628630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362001, 0.582755, -0.727566,
		-0.859518, 0.510769, -0.018546,
		0.360810, 0.632070, 0.685787,
		38.126095, 39.308529, 24.834366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786617, 39.497616, 24.033712>,  <37.873528, 38.866081, 24.354315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786617, 39.497616, 24.033712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051170, 39.558491, 24.327492>,  <38.209900, 39.595016, 24.503759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051170, 39.558491, 24.327492>,  <37.786617, 39.497616, 24.033712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051170, 39.558491, 24.327492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537966, 0.586080, -0.605890,
		-0.522657, 0.795832, 0.305747,
		0.661379, 0.152191, 0.734450,
		38.249584, 39.604149, 24.547827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953381, 40.238091, 24.094748>,  <37.786617, 39.497616, 24.033712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953381, 40.238091, 24.094748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264355, 40.038795, 24.248299>,  <38.450939, 39.919220, 24.340429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264355, 40.038795, 24.248299>,  <37.953381, 40.238091, 24.094748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264355, 40.038795, 24.248299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627797, 0.577475, -0.521913,
		0.038357, 0.646748, 0.761739,
		0.777431, -0.498236, 0.383876,
		38.497585, 39.889324, 24.363461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561962, 40.718910, 24.231178>,  <37.953381, 40.238091, 24.094748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561962, 40.718910, 24.231178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730736, 40.356480, 24.243877>,  <38.832001, 40.139023, 24.251497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730736, 40.356480, 24.243877>,  <38.561962, 40.718910, 24.231178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730736, 40.356480, 24.243877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789452, 0.349953, -0.504280,
		0.445803, 0.237836, 0.862956,
		0.421930, -0.906073, 0.031750,
		38.857315, 40.084660, 24.253403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333508, 40.869205, 24.394882>,  <38.561962, 40.718910, 24.231178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333508, 40.869205, 24.394882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314030, 40.500736, 24.240448>,  <39.302345, 40.279655, 24.147787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314030, 40.500736, 24.240448>,  <39.333508, 40.869205, 24.394882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314030, 40.500736, 24.240448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763731, 0.214773, -0.608759,
		0.643696, -0.324506, 0.693074,
		-0.048692, -0.921178, -0.386084,
		39.299423, 40.224384, 24.124622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031609, 40.644375, 24.391399>,  <39.333508, 40.869205, 24.394882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031609, 40.644375, 24.391399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825130, 40.400723, 24.150564>,  <39.701244, 40.254532, 24.006063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825130, 40.400723, 24.150564>,  <40.031609, 40.644375, 24.391399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825130, 40.400723, 24.150564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775632, -0.034326, -0.630251,
		0.363237, -0.792328, 0.490179,
		-0.516191, -0.609129, -0.602087,
		39.670273, 40.217983, 23.969938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482250, 40.044674, 24.246653>,  <40.031609, 40.644375, 24.391399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482250, 40.044674, 24.246653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235924, 40.053226, 23.931614>,  <40.088127, 40.058357, 23.742590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235924, 40.053226, 23.931614>,  <40.482250, 40.044674, 24.246653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235924, 40.053226, 23.931614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786446, -0.043770, -0.616107,
		-0.047662, -0.998812, 0.010120,
		-0.615818, 0.021406, -0.787597,
		40.051178, 40.059643, 23.695335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825848, 39.571423, 23.805128>,  <40.482250, 40.044674, 24.246653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825848, 39.571423, 23.805128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587566, 39.800396, 23.579756>,  <40.444599, 39.937782, 23.444532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587566, 39.800396, 23.579756>,  <40.825848, 39.571423, 23.805128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587566, 39.800396, 23.579756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743726, 0.128191, -0.656078,
		-0.303337, -0.809865, -0.502100,
		-0.595700, 0.572438, -0.563433,
		40.408855, 39.972126, 23.410727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024055, 39.389088, 23.102945>,  <40.825848, 39.571423, 23.805128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024055, 39.389088, 23.102945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824478, 39.734608, 23.074932>,  <40.704731, 39.941917, 23.058125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824478, 39.734608, 23.074932>,  <41.024055, 39.389088, 23.102945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824478, 39.734608, 23.074932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649195, 0.319006, -0.690493,
		-0.574106, -0.389984, -0.719941,
		-0.498947, 0.863798, -0.070032,
		40.674793, 39.993748, 23.053923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029373, 39.566265, 22.343948>,  <41.024055, 39.389088, 23.102945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029373, 39.566265, 22.343948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956303, 39.906281, 22.541559>,  <40.912460, 40.110291, 22.660126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956303, 39.906281, 22.541559>,  <41.029373, 39.566265, 22.343948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956303, 39.906281, 22.541559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760673, 0.440551, -0.476751,
		-0.622901, 0.288702, -0.727080,
		-0.182677, 0.850039, 0.494028,
		40.901501, 40.161293, 22.689768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179081, 39.980099, 21.826941>,  <41.029373, 39.566265, 22.343948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179081, 39.980099, 21.826941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198437, 40.216248, 22.149212>,  <41.210052, 40.357937, 22.342575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198437, 40.216248, 22.149212>,  <41.179081, 39.980099, 21.826941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198437, 40.216248, 22.149212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597020, 0.629577, -0.497191,
		-0.800765, 0.505068, -0.321997,
		0.048393, 0.590372, 0.805679,
		41.212955, 40.393360, 22.390915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126804, 40.631657, 21.543224>,  <41.179081, 39.980099, 21.826941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126804, 40.631657, 21.543224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286133, 40.681255, 21.906754>,  <41.381729, 40.711014, 22.124872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286133, 40.681255, 21.906754>,  <41.126804, 40.631657, 21.543224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286133, 40.681255, 21.906754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680912, 0.623894, -0.383556,
		-0.614570, 0.771610, 0.164081,
		0.398325, 0.123997, 0.908825,
		41.405632, 40.718456, 22.179401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251888, 41.317883, 21.606993>,  <41.126804, 40.631657, 21.543224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251888, 41.317883, 21.606993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491898, 41.122658, 21.860535>,  <41.635902, 41.005524, 22.012659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491898, 41.122658, 21.860535>,  <41.251888, 41.317883, 21.606993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491898, 41.122658, 21.860535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787091, 0.501849, -0.358657,
		-0.143053, 0.714102, 0.685269,
		0.600020, -0.488062, 0.633855,
		41.671902, 40.976238, 22.050692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631260, 41.820972, 22.011169>,  <41.251888, 41.317883, 21.606993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631260, 41.820972, 22.011169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865288, 41.497475, 21.987095>,  <42.005707, 41.303375, 21.972651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865288, 41.497475, 21.987095>,  <41.631260, 41.820972, 22.011169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865288, 41.497475, 21.987095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664457, 0.520593, -0.536172,
		0.464958, 0.273709, 0.841960,
		0.585073, -0.808744, -0.060186,
		42.040810, 41.254852, 21.969040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382362, 41.914726, 22.227812>,  <41.631260, 41.820972, 22.011169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382362, 41.914726, 22.227812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377304, 41.604603, 21.975229>,  <42.374271, 41.418530, 21.823679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.377304, 41.604603, 21.975229>,  <42.382362, 41.914726, 22.227812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.377304, 41.604603, 21.975229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794494, 0.375655, -0.477139,
		0.607140, -0.507721, 0.611228,
		-0.012643, -0.775308, -0.631457,
		42.373512, 41.372009, 21.785791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908783, 41.605835, 22.809090>,  <42.382362, 41.914726, 22.227812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908783, 41.605835, 22.809090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256058, 41.795643, 22.867170>,  <42.464424, 41.909527, 22.902020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256058, 41.795643, 22.867170>,  <41.908783, 41.605835, 22.809090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256058, 41.795643, 22.867170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326334, 0.766382, -0.553322,
		-0.373842, 0.433003, 0.820214,
		0.868187, 0.474519, 0.145202,
		42.516514, 41.938000, 22.910730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726425, 42.302551, 22.884253>,  <41.908783, 41.605835, 22.809090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726425, 42.302551, 22.884253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112873, 42.297836, 22.781118>,  <42.344742, 42.295006, 22.719238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112873, 42.297836, 22.781118>,  <41.726425, 42.302551, 22.884253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112873, 42.297836, 22.781118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119775, 0.864407, -0.488317,
		0.228629, 0.502654, 0.833707,
		0.966117, -0.011786, -0.257834,
		42.402710, 42.294300, 22.703768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055813, 43.081749, 22.832315>,  <41.726425, 42.302551, 22.884253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055813, 43.081749, 22.832315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254078, 42.820805, 22.602974>,  <42.373035, 42.664238, 22.465368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.254078, 42.820805, 22.602974>,  <42.055813, 43.081749, 22.832315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254078, 42.820805, 22.602974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101573, 0.699168, -0.707705,
		0.862555, 0.292546, 0.412815,
		0.495664, -0.652365, -0.573356,
		42.402779, 42.625095, 22.430967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780422, 43.253368, 22.607794>,  <42.055813, 43.081749, 22.832315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780422, 43.253368, 22.607794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620476, 43.040195, 22.309507>,  <42.524509, 42.912292, 22.130535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620476, 43.040195, 22.309507>,  <42.780422, 43.253368, 22.607794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620476, 43.040195, 22.309507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590198, 0.472766, -0.654338,
		0.701268, -0.701765, 0.125495,
		-0.399861, -0.532933, -0.745716,
		42.500519, 42.880314, 22.085793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295383, 42.804779, 22.209045>,  <42.780422, 43.253368, 22.607794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295383, 42.804779, 22.209045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985008, 42.949757, 22.002527>,  <42.798782, 43.036743, 21.878616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985008, 42.949757, 22.002527>,  <43.295383, 42.804779, 22.209045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985008, 42.949757, 22.002527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624131, 0.322272, -0.711760,
		-0.091584, -0.874515, -0.476272,
		-0.775934, 0.362442, -0.516297,
		42.752228, 43.058491, 21.847637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686588, 42.238316, 22.531057>,  <43.295383, 42.804779, 22.209045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686588, 42.238316, 22.531057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291687, 42.275932, 22.582422>,  <43.054745, 42.298500, 22.613241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.291687, 42.275932, 22.582422>,  <43.686588, 42.238316, 22.531057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.291687, 42.275932, 22.582422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072980, -0.449529, 0.890279,
		0.141444, 0.888302, 0.436936,
		-0.987252, 0.094038, 0.128411,
		42.995510, 42.304142, 22.620945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610069, 42.595058, 23.177219>,  <43.686588, 42.238316, 22.531057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610069, 42.595058, 23.177219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287586, 42.372810, 23.095913>,  <43.094097, 42.239464, 23.047129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.287586, 42.372810, 23.095913>,  <43.610069, 42.595058, 23.177219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287586, 42.372810, 23.095913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072504, -0.433763, 0.898105,
		-0.587172, 0.709322, 0.389988,
		-0.806208, -0.555618, -0.203265,
		43.045723, 42.206123, 23.034933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138233, 42.555164, 23.724241>,  <43.610069, 42.595058, 23.177219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138233, 42.555164, 23.724241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034851, 42.231110, 23.513762>,  <42.972820, 42.036678, 23.387474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.034851, 42.231110, 23.513762>,  <43.138233, 42.555164, 23.724241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034851, 42.231110, 23.513762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042703, -0.534592, 0.844031,
		-0.965079, 0.240614, 0.103573,
		-0.258455, -0.810133, -0.526198,
		42.957314, 41.988071, 23.355902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469128, 42.480804, 23.721354>,  <43.138233, 42.555164, 23.724241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469128, 42.480804, 23.721354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586704, 42.105171, 23.650116>,  <42.657249, 41.879791, 23.607374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586704, 42.105171, 23.650116>,  <42.469128, 42.480804, 23.721354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586704, 42.105171, 23.650116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454087, -0.301156, 0.838517,
		-0.841071, -0.165609, -0.514949,
		0.293946, -0.939084, -0.178093,
		42.674889, 41.823444, 23.596687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994610, 42.110931, 23.960987>,  <42.469128, 42.480804, 23.721354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994610, 42.110931, 23.960987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239552, 41.797684, 23.917625>,  <42.386517, 41.609737, 23.891607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239552, 41.797684, 23.917625>,  <41.994610, 42.110931, 23.960987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239552, 41.797684, 23.917625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449007, -0.457358, 0.767604,
		-0.650704, -0.421371, -0.631689,
		0.612354, -0.783116, -0.108406,
		42.423256, 41.562748, 23.885103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542831, 41.547630, 24.085878>,  <41.994610, 42.110931, 23.960987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542831, 41.547630, 24.085878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920910, 41.426056, 24.133600>,  <42.147755, 41.353111, 24.162233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920910, 41.426056, 24.133600>,  <41.542831, 41.547630, 24.085878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920910, 41.426056, 24.133600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240427, -0.400653, 0.884122,
		-0.220913, -0.864351, -0.451769,
		0.945194, -0.303931, 0.119304,
		42.204468, 41.334877, 24.169392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571835, 40.878975, 24.073072>,  <41.542831, 41.547630, 24.085878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571835, 40.878975, 24.073072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900658, 40.954727, 24.287870>,  <42.097950, 41.000179, 24.416748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900658, 40.954727, 24.287870>,  <41.571835, 40.878975, 24.073072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900658, 40.954727, 24.287870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439654, -0.388189, 0.809947,
		0.361847, -0.901910, -0.235848,
		0.822053, 0.189385, 0.536994,
		42.147274, 41.011543, 24.448969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679520, 40.290714, 24.412901>,  <41.571835, 40.878975, 24.073072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679520, 40.290714, 24.412901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897789, 40.553467, 24.621035>,  <42.028751, 40.711121, 24.745914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897789, 40.553467, 24.621035>,  <41.679520, 40.290714, 24.412901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897789, 40.553467, 24.621035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170664, -0.520799, 0.836446,
		0.820437, -0.545227, -0.172079,
		0.545672, 0.656884, 0.520333,
		42.061489, 40.750530, 24.777134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170719, 39.870884, 24.910282>,  <41.679520, 40.290714, 24.412901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170719, 39.870884, 24.910282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099960, 40.241959, 25.041803>,  <42.057503, 40.464603, 25.120716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099960, 40.241959, 25.041803>,  <42.170719, 39.870884, 24.910282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099960, 40.241959, 25.041803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284471, -0.368004, 0.885240,
		0.942223, 0.063063, 0.328998,
		-0.176899, 0.927683, 0.328802,
		42.046890, 40.520264, 25.140444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299084, 39.802647, 25.546759>,  <42.170719, 39.870884, 24.910282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299084, 39.802647, 25.546759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126667, 40.163250, 25.562208>,  <42.023216, 40.379612, 25.571478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126667, 40.163250, 25.562208>,  <42.299084, 39.802647, 25.546759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126667, 40.163250, 25.562208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267965, -0.168761, 0.948533,
		0.861625, 0.398507, 0.314315,
		-0.431041, 0.901505, 0.038623,
		41.997356, 40.433701, 25.573795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368347, 40.022991, 26.223885>,  <42.299084, 39.802647, 25.546759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368347, 40.022991, 26.223885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060898, 40.246044, 26.098495>,  <41.876427, 40.379875, 26.023262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060898, 40.246044, 26.098495>,  <42.368347, 40.022991, 26.223885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060898, 40.246044, 26.098495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515715, -0.250216, 0.819408,
		0.378494, 0.791477, 0.479902,
		-0.768622, 0.557633, -0.313471,
		41.830311, 40.413334, 26.004454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138500, 40.441132, 26.903250>,  <42.368347, 40.022991, 26.223885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138500, 40.441132, 26.903250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844929, 40.440975, 26.631557>,  <41.668785, 40.440880, 26.468542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844929, 40.440975, 26.631557>,  <42.138500, 40.441132, 26.903250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844929, 40.440975, 26.631557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661876, -0.224191, 0.715303,
		-0.152559, 0.974545, 0.164278,
		-0.733925, -0.000394, -0.679230,
		41.624752, 40.440857, 26.427788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660080, 40.880264, 27.081667>,  <42.138500, 40.441132, 26.903250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660080, 40.880264, 27.081667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514030, 40.578598, 26.863340>,  <41.426399, 40.397598, 26.732344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514030, 40.578598, 26.863340>,  <41.660080, 40.880264, 27.081667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514030, 40.578598, 26.863340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612619, -0.246823, 0.750850,
		-0.700988, 0.608530, -0.371897,
		-0.365123, -0.754168, -0.545817,
		41.404495, 40.352348, 26.699594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884445, 40.856655, 27.223536>,  <41.660080, 40.880264, 27.081667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884445, 40.856655, 27.223536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937801, 40.504490, 27.041510>,  <40.969814, 40.293190, 26.932293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937801, 40.504490, 27.041510>,  <40.884445, 40.856655, 27.223536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937801, 40.504490, 27.041510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575664, -0.442597, 0.687546,
		-0.806734, 0.170255, -0.565857,
		0.133388, -0.880410, -0.455067,
		40.977818, 40.240368, 26.904989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253006, 40.631496, 27.014484>,  <40.884445, 40.856655, 27.223536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253006, 40.631496, 27.014484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507656, 40.325306, 27.051928>,  <40.660446, 40.141594, 27.074394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507656, 40.325306, 27.051928>,  <40.253006, 40.631496, 27.014484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507656, 40.325306, 27.051928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598953, -0.414330, 0.685263,
		-0.485767, -0.492320, -0.722254,
		0.636620, -0.765475, 0.093608,
		40.698643, 40.095665, 27.080011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754879, 40.136932, 27.097767>,  <40.253006, 40.631496, 27.014484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754879, 40.136932, 27.097767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093777, 39.965298, 27.223026>,  <40.297115, 39.862316, 27.298182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093777, 39.965298, 27.223026>,  <39.754879, 40.136932, 27.097767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093777, 39.965298, 27.223026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511258, -0.498665, 0.699963,
		-0.144185, -0.753141, -0.641864,
		0.847246, -0.429082, 0.313149,
		40.347950, 39.836575, 27.316971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546539, 39.547634, 27.031969>,  <39.754879, 40.136932, 27.097767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546539, 39.547634, 27.031969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842869, 39.590797, 27.297157>,  <40.020668, 39.616695, 27.456270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842869, 39.590797, 27.297157>,  <39.546539, 39.547634, 27.031969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842869, 39.590797, 27.297157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519316, -0.533984, 0.667212,
		0.426012, -0.838580, -0.339554,
		0.740827, 0.107904, 0.662972,
		40.065117, 39.623169, 27.496048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670998, 38.917770, 27.297783>,  <39.546539, 39.547634, 27.031969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670998, 38.917770, 27.297783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832687, 39.158936, 27.572914>,  <39.929699, 39.303635, 27.737993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832687, 39.158936, 27.572914>,  <39.670998, 38.917770, 27.297783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832687, 39.158936, 27.572914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384702, -0.570185, 0.725874,
		0.829824, -0.558023, 0.001459,
		0.404223, 0.602909, 0.687826,
		39.953953, 39.339809, 27.779263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126900, 38.480225, 27.746801>,  <39.670998, 38.917770, 27.297783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126900, 38.480225, 27.746801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007523, 38.810368, 27.938519>,  <39.935894, 39.008453, 28.053549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007523, 38.810368, 27.938519>,  <40.126900, 38.480225, 27.746801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007523, 38.810368, 27.938519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356894, -0.562256, 0.745986,
		0.885187, 0.051581, 0.462367,
		-0.298448, 0.825353, 0.479293,
		39.917988, 39.057972, 28.082306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041939, 38.281796, 28.361124>,  <40.126900, 38.480225, 27.746801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041939, 38.281796, 28.361124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861843, 38.633907, 28.420982>,  <39.753784, 38.845173, 28.456898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861843, 38.633907, 28.420982>,  <40.041939, 38.281796, 28.361124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861843, 38.633907, 28.420982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639754, -0.434940, 0.633673,
		0.622897, 0.189566, 0.758989,
		-0.450238, 0.880279, 0.149647,
		39.726772, 38.897991, 28.465878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912781, 38.354729, 29.019478>,  <40.041939, 38.281796, 28.361124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912781, 38.354729, 29.019478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644386, 38.631519, 28.912931>,  <39.483349, 38.797592, 28.849005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644386, 38.631519, 28.912931>,  <39.912781, 38.354729, 29.019478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644386, 38.631519, 28.912931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676880, -0.424996, 0.601008,
		0.302681, 0.583562, 0.753551,
		-0.670982, 0.691977, -0.266364,
		39.443092, 38.839111, 28.833023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574322, 38.668629, 29.640450>,  <39.912781, 38.354729, 29.019478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574322, 38.668629, 29.640450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309708, 38.814678, 29.378439>,  <39.150940, 38.902309, 29.221233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309708, 38.814678, 29.378439>,  <39.574322, 38.668629, 29.640450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309708, 38.814678, 29.378439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749912, -0.324734, 0.576350,
		-0.002270, 0.872486, 0.488633,
		-0.661534, 0.365123, -0.655025,
		39.111248, 38.924213, 29.181931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122257, 39.006382, 30.139030>,  <39.574322, 38.668629, 29.640450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122257, 39.006382, 30.139030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936958, 38.909538, 29.798023>,  <38.825779, 38.851433, 29.593418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936958, 38.909538, 29.798023>,  <39.122257, 39.006382, 30.139030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936958, 38.909538, 29.798023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787302, -0.329231, 0.521308,
		-0.406887, 0.912684, -0.038096,
		-0.463247, -0.242107, -0.852518,
		38.797985, 38.836906, 29.542269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451145, 39.164310, 30.288319>,  <39.122257, 39.006382, 30.139030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451145, 39.164310, 30.288319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399624, 38.937447, 29.962929>,  <38.368710, 38.801331, 29.767694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399624, 38.937447, 29.962929>,  <38.451145, 39.164310, 30.288319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399624, 38.937447, 29.962929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782086, -0.446257, 0.434968,
		-0.609714, 0.692234, -0.386084,
		-0.128807, -0.567156, -0.813476,
		38.360981, 38.767300, 29.718885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709282, 39.140129, 30.132607>,  <38.451145, 39.164310, 30.288319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709282, 39.140129, 30.132607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842876, 38.821541, 29.930975>,  <37.923031, 38.630390, 29.809996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842876, 38.821541, 29.930975>,  <37.709282, 39.140129, 30.132607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842876, 38.821541, 29.930975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768430, -0.539777, 0.343740,
		-0.545871, 0.272555, -0.792299,
		0.333977, -0.796464, -0.504088,
		37.943069, 38.582600, 29.779751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079010, 38.865479, 29.937864>,  <37.709282, 39.140129, 30.132607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079010, 38.865479, 29.937864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363895, 38.584934, 29.926226>,  <37.534824, 38.416607, 29.919243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363895, 38.584934, 29.926226>,  <37.079010, 38.865479, 29.937864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363895, 38.584934, 29.926226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530565, -0.564988, 0.631893,
		-0.459624, -0.434605, -0.774509,
		0.712212, -0.701361, -0.029096,
		37.577560, 38.374527, 29.917496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755093, 38.300732, 29.858183>,  <37.079010, 38.865479, 29.937864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755093, 38.300732, 29.858183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100666, 38.187893, 30.025057>,  <37.308010, 38.120190, 30.125181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100666, 38.187893, 30.025057>,  <36.755093, 38.300732, 29.858183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100666, 38.187893, 30.025057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502822, -0.436854, 0.745875,
		-0.028162, -0.854154, -0.519257,
		0.863932, -0.282098, 0.417185,
		37.359844, 38.103264, 30.150211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695988, 37.561726, 30.071783>,  <36.755093, 38.300732, 29.858183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695988, 37.561726, 30.071783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988564, 37.686794, 30.314182>,  <37.164108, 37.761833, 30.459621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988564, 37.686794, 30.314182>,  <36.695988, 37.561726, 30.071783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988564, 37.686794, 30.314182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476208, -0.401864, 0.782132,
		0.488076, -0.860665, -0.145046,
		0.731442, 0.312668, 0.605996,
		37.207996, 37.780594, 30.495981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974659, 37.028854, 30.494080>,  <36.695988, 37.561726, 30.071783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974659, 37.028854, 30.494080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077568, 37.357597, 30.697395>,  <37.139313, 37.554844, 30.819386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077568, 37.357597, 30.697395>,  <36.974659, 37.028854, 30.494080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077568, 37.357597, 30.697395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283706, -0.438575, 0.852739,
		0.923753, -0.363594, 0.120331,
		0.257277, 0.821859, 0.508289,
		37.154751, 37.604156, 30.849882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163433, 36.819778, 31.092930>,  <36.974659, 37.028854, 30.494080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163433, 36.819778, 31.092930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102520, 37.200809, 31.198305>,  <37.065971, 37.429428, 31.261530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.102520, 37.200809, 31.198305>,  <37.163433, 36.819778, 31.092930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102520, 37.200809, 31.198305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252565, -0.295204, 0.921448,
		0.955521, 0.073790, 0.285544,
		-0.152287, 0.952580, 0.263437,
		37.056835, 37.486584, 31.277336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378128, 36.881245, 31.818411>,  <37.163433, 36.819778, 31.092930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378128, 36.881245, 31.818411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141064, 37.197838, 31.758661>,  <36.998825, 37.387794, 31.722811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141064, 37.197838, 31.758661>,  <37.378128, 36.881245, 31.818411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141064, 37.197838, 31.758661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356418, -0.091395, 0.929846,
		0.722304, 0.604320, 0.336264,
		-0.592657, 0.791482, -0.149376,
		36.963268, 37.435284, 31.713848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391590, 37.290348, 32.506821>,  <37.378128, 36.881245, 31.818411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391590, 37.290348, 32.506821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077381, 37.414955, 32.292938>,  <36.888855, 37.489719, 32.164608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077381, 37.414955, 32.292938>,  <37.391590, 37.290348, 32.506821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077381, 37.414955, 32.292938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586016, -0.096829, 0.804493,
		0.198837, 0.945295, 0.258615,
		-0.785525, 0.311516, -0.534704,
		36.841724, 37.508411, 32.132526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942402, 37.571476, 33.030743>,  <37.391590, 37.290348, 32.506821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942402, 37.571476, 33.030743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705906, 37.611023, 32.710579>,  <36.564007, 37.634750, 32.518482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705906, 37.611023, 32.710579>,  <36.942402, 37.571476, 33.030743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705906, 37.611023, 32.710579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803009, -0.164314, 0.572868,
		-0.074881, 0.981441, 0.176540,
		-0.591244, 0.098867, -0.800410,
		36.528534, 37.640682, 32.470455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444138, 38.065948, 33.220486>,  <36.942402, 37.571476, 33.030743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444138, 38.065948, 33.220486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283859, 37.841290, 32.930935>,  <36.187691, 37.706493, 32.757206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283859, 37.841290, 32.930935>,  <36.444138, 38.065948, 33.220486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283859, 37.841290, 32.930935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830426, -0.111166, 0.545925,
		-0.387086, 0.819877, -0.421861,
		-0.400695, -0.561644, -0.723878,
		36.163651, 37.672794, 32.713772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746376, 38.362190, 33.086449>,  <36.444138, 38.065948, 33.220486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746376, 38.362190, 33.086449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736340, 37.989086, 32.942600>,  <35.730320, 37.765224, 32.856289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736340, 37.989086, 32.942600>,  <35.746376, 38.362190, 33.086449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736340, 37.989086, 32.942600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776921, -0.208189, 0.594181,
		-0.629098, 0.294305, -0.719458,
		-0.025087, -0.932760, -0.359623,
		35.728813, 37.709259, 32.834713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071243, 38.118237, 32.943550>,  <35.746376, 38.362190, 33.086449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071243, 38.118237, 32.943550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275135, 37.780624, 33.010227>,  <35.397472, 37.578056, 33.050232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275135, 37.780624, 33.010227>,  <35.071243, 38.118237, 32.943550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275135, 37.780624, 33.010227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745292, -0.336414, 0.575643,
		-0.429782, -0.417659, -0.800530,
		0.509732, -0.844030, 0.166693,
		35.428055, 37.527416, 33.060234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581127, 37.582394, 32.980698>,  <35.071243, 38.118237, 32.943550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581127, 37.582394, 32.980698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900368, 37.422890, 33.161377>,  <35.091911, 37.327187, 33.269787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900368, 37.422890, 33.161377>,  <34.581127, 37.582394, 32.980698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900368, 37.422890, 33.161377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596360, -0.629779, 0.497728,
		0.086000, -0.666612, -0.740427,
		0.798097, -0.398757, 0.451702,
		35.139797, 37.303261, 33.296886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584873, 36.753677, 33.042431>,  <34.581127, 37.582394, 32.980698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584873, 36.753677, 33.042431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797585, 36.924217, 33.335125>,  <34.925209, 37.026543, 33.510742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797585, 36.924217, 33.335125>,  <34.584873, 36.753677, 33.042431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797585, 36.924217, 33.335125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397393, -0.637377, 0.660173,
		0.747859, -0.641851, -0.169513,
		0.531777, 0.426353, 0.731735,
		34.957119, 37.052124, 33.554646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564724, 36.294693, 33.566319>,  <34.584873, 36.753677, 33.042431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564724, 36.294693, 33.566319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704514, 36.614975, 33.760941>,  <34.788387, 36.807144, 33.877712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704514, 36.614975, 33.760941>,  <34.564724, 36.294693, 33.566319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704514, 36.614975, 33.760941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328920, -0.381397, 0.863914,
		0.877313, -0.461955, 0.130079,
		0.349477, 0.800709, 0.486551,
		34.809357, 36.855186, 33.906906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824677, 36.019554, 34.216122>,  <34.564724, 36.294693, 33.566319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824677, 36.019554, 34.216122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776371, 36.415070, 34.251244>,  <34.747387, 36.652378, 34.272316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776371, 36.415070, 34.251244>,  <34.824677, 36.019554, 34.216122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776371, 36.415070, 34.251244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343792, -0.124639, 0.930738,
		0.931249, 0.082208, 0.354989,
		-0.120760, 0.988791, 0.087808,
		34.740143, 36.711708, 34.277584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039822, 36.162605, 34.804375>,  <34.824677, 36.019554, 34.216122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039822, 36.162605, 34.804375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860935, 36.513462, 34.734375>,  <34.753605, 36.723976, 34.692375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860935, 36.513462, 34.734375>,  <35.039822, 36.162605, 34.804375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860935, 36.513462, 34.734375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396448, -0.019004, 0.917861,
		0.801766, 0.479859, 0.356239,
		-0.447213, 0.877140, -0.175002,
		34.726772, 36.776604, 34.681873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770176, 36.434101, 35.018349>,  <35.039822, 36.162605, 34.804375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770176, 36.434101, 35.018349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953655, 36.130268, 35.202797>,  <36.063744, 35.947968, 35.313465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953655, 36.130268, 35.202797>,  <35.770176, 36.434101, 35.018349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953655, 36.130268, 35.202797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878871, 0.311253, -0.361534,
		0.131092, 0.571097, 0.810348,
		0.458694, -0.759585, 0.461118,
		36.091263, 35.902393, 35.341133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304478, 36.719952, 35.349380>,  <35.770176, 36.434101, 35.018349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304478, 36.719952, 35.349380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404312, 36.333145, 35.329029>,  <36.464214, 36.101063, 35.316818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404312, 36.333145, 35.329029>,  <36.304478, 36.719952, 35.349380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404312, 36.333145, 35.329029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866602, 0.246497, -0.433866,
		0.432095, 0.064200, 0.899540,
		0.249588, -0.967015, -0.050874,
		36.479187, 36.043041, 35.313766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009796, 36.625149, 35.499767>,  <36.304478, 36.719952, 35.349380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009796, 36.625149, 35.499767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931149, 36.284416, 35.305565>,  <36.883961, 36.079975, 35.189041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931149, 36.284416, 35.305565>,  <37.009796, 36.625149, 35.499767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931149, 36.284416, 35.305565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730965, 0.202677, -0.651623,
		0.653476, -0.483012, 0.582811,
		-0.196620, -0.851834, -0.485509,
		36.872162, 36.028866, 35.159912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626205, 36.160812, 35.518951>,  <37.009796, 36.625149, 35.499767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626205, 36.160812, 35.518951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419838, 36.024235, 35.204693>,  <37.296017, 35.942287, 35.016136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419838, 36.024235, 35.204693>,  <37.626205, 36.160812, 35.518951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419838, 36.024235, 35.204693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810021, 0.103974, -0.577110,
		0.278736, -0.934135, 0.222932,
		-0.515920, -0.341441, -0.785650,
		37.265060, 35.921803, 34.968998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130039, 35.917007, 35.127998>,  <37.626205, 36.160812, 35.518951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130039, 35.917007, 35.127998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827393, 35.891262, 34.867722>,  <37.645805, 35.875816, 34.711555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827393, 35.891262, 34.867722>,  <38.130039, 35.917007, 35.127998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827393, 35.891262, 34.867722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630340, 0.192724, -0.752016,
		0.173806, -0.979140, -0.105246,
		-0.756613, -0.064364, -0.650688,
		37.600410, 35.871952, 34.672516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432045, 35.438389, 34.666924>,  <38.130039, 35.917007, 35.127998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432045, 35.438389, 34.666924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120350, 35.592670, 34.469330>,  <37.933331, 35.685238, 34.350773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120350, 35.592670, 34.469330>,  <38.432045, 35.438389, 34.666924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120350, 35.592670, 34.469330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570495, 0.110231, -0.813870,
		-0.259460, -0.916015, -0.305938,
		-0.779241, 0.385703, -0.493981,
		37.886578, 35.708382, 34.321136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379196, 35.097904, 34.000828>,  <38.432045, 35.438389, 34.666924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379196, 35.097904, 34.000828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184231, 35.445347, 33.965149>,  <38.067253, 35.653812, 33.943741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184231, 35.445347, 33.965149>,  <38.379196, 35.097904, 34.000828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184231, 35.445347, 33.965149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466505, 0.172694, -0.867497,
		-0.738106, -0.464442, -0.489381,
		-0.487414, 0.868603, -0.089198,
		38.038006, 35.705929, 33.938389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174515, 35.021099, 33.268253>,  <38.379196, 35.097904, 34.000828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174515, 35.021099, 33.268253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193913, 35.403374, 33.384396>,  <38.205551, 35.632740, 33.454079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193913, 35.403374, 33.384396>,  <38.174515, 35.021099, 33.268253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193913, 35.403374, 33.384396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469731, 0.234721, -0.851034,
		-0.881476, 0.177659, -0.437534,
		0.048496, 0.955690, 0.290353,
		38.208462, 35.690083, 33.471500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043648, 35.402668, 32.646614>,  <38.174515, 35.021099, 33.268253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043648, 35.402668, 32.646614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226341, 35.664211, 32.887901>,  <38.335957, 35.821136, 33.032673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226341, 35.664211, 32.887901>,  <38.043648, 35.402668, 32.646614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226341, 35.664211, 32.887901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442134, 0.421555, -0.791713,
		-0.771952, 0.628305, -0.096553,
		0.456735, 0.653854, 0.603215,
		38.363361, 35.860367, 33.068867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065205, 36.046207, 32.291153>,  <38.043648, 35.402668, 32.646614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065205, 36.046207, 32.291153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351181, 36.095913, 32.566376>,  <38.522766, 36.125736, 32.731510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351181, 36.095913, 32.566376>,  <38.065205, 36.046207, 32.291153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351181, 36.095913, 32.566376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547845, 0.511882, -0.661697,
		-0.434425, 0.850021, 0.297890,
		0.714941, 0.124260, 0.688054,
		38.565662, 36.133190, 32.772793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257549, 36.814060, 32.224407>,  <38.065205, 36.046207, 32.291153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257549, 36.814060, 32.224407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562897, 36.636417, 32.412041>,  <38.746105, 36.529831, 32.524620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562897, 36.636417, 32.412041>,  <38.257549, 36.814060, 32.224407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562897, 36.636417, 32.412041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645917, 0.533530, -0.546020,
		-0.007777, 0.719802, 0.694136,
		0.763368, -0.444107, 0.469082,
		38.791908, 36.503185, 32.552765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710739, 37.310081, 32.490986>,  <38.257549, 36.814060, 32.224407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710739, 37.310081, 32.490986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953335, 36.994587, 32.450863>,  <39.098892, 36.805290, 32.426788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953335, 36.994587, 32.450863>,  <38.710739, 37.310081, 32.490986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953335, 36.994587, 32.450863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661194, 0.570395, -0.487311,
		0.441576, 0.229226, 0.867448,
		0.606492, -0.788736, -0.100310,
		39.135284, 36.757965, 32.420769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357140, 37.503956, 32.658340>,  <38.710739, 37.310081, 32.490986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357140, 37.503956, 32.658340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425766, 37.163658, 32.459629>,  <39.466942, 36.959480, 32.340401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425766, 37.163658, 32.459629>,  <39.357140, 37.503956, 32.658340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425766, 37.163658, 32.459629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741649, 0.443458, -0.503292,
		0.648476, -0.282088, 0.707040,
		0.171570, -0.850748, -0.496781,
		39.477238, 36.908432, 32.310596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083031, 37.228249, 32.716434>,  <39.357140, 37.503956, 32.658340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083031, 37.228249, 32.716434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940411, 37.074459, 32.375835>,  <39.854839, 36.982185, 32.171474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.940411, 37.074459, 32.375835>,  <40.083031, 37.228249, 32.716434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940411, 37.074459, 32.375835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747146, 0.429856, -0.506948,
		0.560932, -0.816946, 0.133994,
		-0.356551, -0.384476, -0.851498,
		39.833447, 36.959118, 32.120384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671864, 37.067680, 32.364376>,  <40.083031, 37.228249, 32.716434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671864, 37.067680, 32.364376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420891, 37.016647, 32.057117>,  <40.270309, 36.986027, 31.872761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420891, 37.016647, 32.057117>,  <40.671864, 37.067680, 32.364376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420891, 37.016647, 32.057117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689735, 0.366771, -0.624296,
		0.361378, -0.921523, -0.142132,
		-0.627433, -0.127573, -0.768149,
		40.232662, 36.978371, 31.826672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049145, 36.594185, 31.809942>,  <40.671864, 37.067680, 32.364376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049145, 36.594185, 31.809942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767323, 36.822998, 31.641954>,  <40.598228, 36.960285, 31.541162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767323, 36.822998, 31.641954>,  <41.049145, 36.594185, 31.809942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767323, 36.822998, 31.641954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609850, 0.185447, -0.770515,
		-0.362880, -0.798990, -0.479514,
		-0.704558, 0.572035, -0.419969,
		40.555954, 36.994610, 31.515965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036179, 36.360210, 31.217621>,  <41.049145, 36.594185, 31.809942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036179, 36.360210, 31.217621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835667, 36.694847, 31.129232>,  <40.715359, 36.895630, 31.076199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835667, 36.694847, 31.129232>,  <41.036179, 36.360210, 31.217621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835667, 36.694847, 31.129232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661308, 0.205718, -0.721354,
		-0.558021, -0.507733, -0.656368,
		-0.501282, 0.836593, -0.220973,
		40.685284, 36.945824, 31.062941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896072, 36.355862, 30.423615>,  <41.036179, 36.360210, 31.217621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896072, 36.355862, 30.423615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907249, 36.730396, 30.563614>,  <40.913956, 36.955116, 30.647614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907249, 36.730396, 30.563614>,  <40.896072, 36.355862, 30.423615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907249, 36.730396, 30.563614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553804, 0.276988, -0.785226,
		-0.832178, 0.215770, -0.510806,
		0.027941, 0.936334, 0.349997,
		40.915630, 37.011295, 30.668613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776966, 36.794785, 29.843006>,  <40.896072, 36.355862, 30.423615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776966, 36.794785, 29.843006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948063, 37.036411, 30.111971>,  <41.050720, 37.181389, 30.273350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948063, 37.036411, 30.111971>,  <40.776966, 36.794785, 29.843006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948063, 37.036411, 30.111971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528957, 0.435942, -0.728120,
		-0.732967, 0.667125, -0.133055,
		0.427743, 0.604068, 0.672412,
		41.076385, 37.217632, 30.313694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509453, 37.483189, 29.632006>,  <40.776966, 36.794785, 29.843006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509453, 37.483189, 29.632006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843639, 37.498089, 29.851318>,  <41.044151, 37.507030, 29.982906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.843639, 37.498089, 29.851318>,  <40.509453, 37.483189, 29.632006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843639, 37.498089, 29.851318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470939, 0.465667, -0.749247,
		-0.283229, 0.884176, 0.371503,
		0.835463, 0.037253, 0.548283,
		41.094276, 37.509266, 30.015804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689163, 38.152260, 29.620947>,  <40.509453, 37.483189, 29.632006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689163, 38.152260, 29.620947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026882, 37.956154, 29.707483>,  <41.229515, 37.838490, 29.759405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026882, 37.956154, 29.707483>,  <40.689163, 38.152260, 29.620947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026882, 37.956154, 29.707483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463137, 0.464506, -0.754811,
		0.269564, 0.737480, 0.619240,
		0.844298, -0.490263, 0.216340,
		41.280170, 37.809074, 29.772385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190075, 38.619518, 29.569965>,  <40.689163, 38.152260, 29.620947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190075, 38.619518, 29.569965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433903, 38.302467, 29.575209>,  <41.580200, 38.112236, 29.578356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433903, 38.302467, 29.575209>,  <41.190075, 38.619518, 29.569965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433903, 38.302467, 29.575209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602743, 0.452674, -0.657106,
		0.514903, 0.408454, 0.753685,
		0.609571, -0.792623, 0.013110,
		41.616776, 38.064682, 29.579142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770794, 38.918526, 29.399157>,  <41.190075, 38.619518, 29.569965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770794, 38.918526, 29.399157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817261, 38.525379, 29.341902>,  <41.845142, 38.289494, 29.307549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817261, 38.525379, 29.341902>,  <41.770794, 38.918526, 29.399157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817261, 38.525379, 29.341902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578121, 0.184095, -0.794912,
		0.807639, 0.009591, 0.589599,
		0.116167, -0.982862, -0.143138,
		41.852112, 38.230522, 29.298960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473965, 38.883224, 29.179041>,  <41.770794, 38.918526, 29.399157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473965, 38.883224, 29.179041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331234, 38.532963, 29.048870>,  <42.245594, 38.322807, 28.970768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331234, 38.532963, 29.048870>,  <42.473965, 38.883224, 29.179041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331234, 38.532963, 29.048870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591616, 0.057767, -0.804148,
		0.722954, -0.479471, 0.497438,
		-0.356830, -0.875654, -0.325426,
		42.224186, 38.270267, 28.951242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048737, 38.525253, 28.899626>,  <42.473965, 38.883224, 29.179041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048737, 38.525253, 28.899626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731796, 38.330341, 28.752794>,  <42.541634, 38.213394, 28.664696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731796, 38.330341, 28.752794>,  <43.048737, 38.525253, 28.899626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731796, 38.330341, 28.752794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425340, -0.009888, -0.904979,
		0.437348, -0.873190, 0.215094,
		-0.792346, -0.487279, -0.367079,
		42.494091, 38.184158, 28.642670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306458, 37.897568, 28.533356>,  <43.048737, 38.525253, 28.899626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306458, 37.897568, 28.533356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965240, 38.046631, 28.387239>,  <42.760509, 38.136070, 28.299570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965240, 38.046631, 28.387239>,  <43.306458, 37.897568, 28.533356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965240, 38.046631, 28.387239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423248, 0.084624, -0.902053,
		-0.305249, -0.924100, -0.229917,
		-0.853044, 0.372663, -0.365293,
		42.709328, 38.158428, 28.277651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125027, 37.452602, 28.013968>,  <43.306458, 37.897568, 28.533356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125027, 37.452602, 28.013968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932854, 37.790089, 27.918190>,  <42.817551, 37.992580, 27.860723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932854, 37.790089, 27.918190>,  <43.125027, 37.452602, 28.013968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932854, 37.790089, 27.918190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333013, -0.077076, -0.939767,
		-0.811350, -0.531231, -0.243939,
		-0.480431, 0.843714, -0.239442,
		42.788723, 38.043201, 27.846357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769386, 37.242123, 27.413113>,  <43.125027, 37.452602, 28.013968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769386, 37.242123, 27.413113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791359, 37.641434, 27.404848>,  <42.804543, 37.881020, 27.399889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.791359, 37.641434, 27.404848>,  <42.769386, 37.242123, 27.413113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791359, 37.641434, 27.404848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369465, -0.039546, -0.928403,
		-0.927620, 0.043361, -0.371000,
		0.054928, 0.998277, -0.020663,
		42.807838, 37.940918, 27.398649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425316, 37.451721, 26.783049>,  <42.769386, 37.242123, 27.413113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425316, 37.451721, 26.783049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619545, 37.787514, 26.880610>,  <42.736084, 37.988991, 26.939146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619545, 37.787514, 26.880610>,  <42.425316, 37.451721, 26.783049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619545, 37.787514, 26.880610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134727, 0.203807, -0.969697,
		-0.863751, 0.503721, -0.014137,
		0.485576, 0.839481, 0.243903,
		42.765217, 38.039356, 26.953781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220440, 38.039539, 26.286938>,  <42.425316, 37.451721, 26.783049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220440, 38.039539, 26.286938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568302, 38.164478, 26.439852>,  <42.777020, 38.239441, 26.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568302, 38.164478, 26.439852>,  <42.220440, 38.039539, 26.286938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568302, 38.164478, 26.439852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285441, 0.313657, -0.905617,
		-0.402777, 0.896692, 0.183614,
		0.869652, 0.312351, 0.382287,
		42.829197, 38.258183, 26.554537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292572, 38.810123, 26.171316>,  <42.220440, 38.039539, 26.286938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292572, 38.810123, 26.171316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658707, 38.653576, 26.209227>,  <42.878387, 38.559647, 26.231972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658707, 38.653576, 26.209227>,  <42.292572, 38.810123, 26.171316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658707, 38.653576, 26.209227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234684, 0.327223, -0.915341,
		0.327223, 0.860091, 0.391368,
		0.915341, -0.391368, 0.094775,
		42.933308, 38.536167, 26.237659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720242, 39.295094, 25.869989>,  <42.292572, 38.810123, 26.171316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720242, 39.295094, 25.869989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945045, 38.964249, 25.872124>,  <43.079929, 38.765743, 25.873404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945045, 38.964249, 25.872124>,  <42.720242, 39.295094, 25.869989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945045, 38.964249, 25.872124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248080, 0.162407, -0.955029,
		0.789049, 0.538063, 0.296464,
		0.562014, -0.827111, 0.005336,
		43.113651, 38.716114, 25.873724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303013, 39.419521, 25.635836>,  <42.720242, 39.295094, 25.869989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303013, 39.419521, 25.635836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284023, 39.025593, 25.569048>,  <43.272629, 38.789238, 25.528975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284023, 39.025593, 25.569048>,  <43.303013, 39.419521, 25.635836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284023, 39.025593, 25.569048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216718, 0.153021, -0.964167,
		0.975079, -0.081956, 0.206164,
		-0.047472, -0.984819, -0.166969,
		43.269783, 38.730148, 25.518957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884377, 39.304485, 25.294106>,  <43.303013, 39.419521, 25.635836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884377, 39.304485, 25.294106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679153, 38.970169, 25.215899>,  <43.556019, 38.769581, 25.168974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679153, 38.970169, 25.215899>,  <43.884377, 39.304485, 25.294106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679153, 38.970169, 25.215899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394565, -0.027348, -0.918461,
		0.762295, -0.548365, 0.343806,
		-0.513054, -0.835792, -0.195518,
		43.525238, 38.719433, 25.157244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428307, 38.841648, 25.018511>,  <43.884377, 39.304485, 25.294106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428307, 38.841648, 25.018511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057892, 38.741497, 24.905544>,  <43.835644, 38.681404, 24.837765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057892, 38.741497, 24.905544>,  <44.428307, 38.841648, 25.018511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057892, 38.741497, 24.905544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245929, 0.167320, -0.954737,
		0.286302, -0.953579, -0.093369,
		-0.926040, -0.250381, -0.282417,
		43.780079, 38.666382, 24.820820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.583645, 38.425972, 24.405752>,  <44.428307, 38.841648, 25.018511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.583645, 38.425972, 24.405752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192024, 38.498165, 24.368046>,  <43.957054, 38.541481, 24.345421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.192024, 38.498165, 24.368046>,  <44.583645, 38.425972, 24.405752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192024, 38.498165, 24.368046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094398, -0.007882, -0.995503,
		-0.180419, -0.983546, -0.009321,
		-0.979049, 0.180487, -0.094267,
		43.898308, 38.552311, 24.339766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488144, 38.130466, 23.790188>,  <44.583645, 38.425972, 24.405752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488144, 38.130466, 23.790188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157822, 38.355396, 23.807354>,  <43.959629, 38.490353, 23.817654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.157822, 38.355396, 23.807354>,  <44.488144, 38.130466, 23.790188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.157822, 38.355396, 23.807354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068967, -0.025172, -0.997301,
		-0.559725, -0.826535, 0.059569,
		-0.825804, 0.562322, 0.042914,
		43.910080, 38.524094, 23.820229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254852, 38.327267, 23.085644>,  <44.488144, 38.130466, 23.790188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254852, 38.327267, 23.085644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370518, 38.032936, 22.840715>,  <44.439919, 37.856339, 22.693758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370518, 38.032936, 22.840715>,  <44.254852, 38.327267, 23.085644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370518, 38.032936, 22.840715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464894, -0.667100, 0.582108,
		-0.836812, 0.116339, -0.534986,
		0.289168, -0.735828, -0.612323,
		44.457268, 37.812187, 22.657019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665653, 37.933208, 22.968410>,  <44.254852, 38.327267, 23.085644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665653, 37.933208, 22.968410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983551, 37.700260, 22.900026>,  <44.174290, 37.560490, 22.858995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983551, 37.700260, 22.900026>,  <43.665653, 37.933208, 22.968410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983551, 37.700260, 22.900026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361214, -0.680184, 0.637866,
		-0.487761, -0.445185, -0.750932,
		0.794741, -0.582374, -0.170961,
		44.221973, 37.525547, 22.848738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383724, 37.285748, 22.894697>,  <43.665653, 37.933208, 22.968410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383724, 37.285748, 22.894697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772545, 37.220688, 22.962425>,  <44.005836, 37.181652, 23.003063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772545, 37.220688, 22.962425>,  <43.383724, 37.285748, 22.894697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772545, 37.220688, 22.962425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234766, -0.682685, 0.691972,
		0.003046, -0.712381, -0.701786,
		0.972047, -0.162648, 0.169322,
		44.064159, 37.171894, 23.013222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539356, 36.568714, 22.796879>,  <43.383724, 37.285748, 22.894697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539356, 36.568714, 22.796879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839672, 36.686451, 23.033415>,  <44.019863, 36.757092, 23.175335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839672, 36.686451, 23.033415>,  <43.539356, 36.568714, 22.796879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839672, 36.686451, 23.033415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305329, -0.639205, 0.705827,
		0.585740, -0.710479, -0.390036,
		0.750788, 0.294341, 0.591338,
		44.064907, 36.774754, 23.210815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875423, 35.939091, 23.084845>,  <43.539356, 36.568714, 22.796879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875423, 35.939091, 23.084845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925884, 36.254639, 23.325432>,  <43.956161, 36.443970, 23.469784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925884, 36.254639, 23.325432>,  <43.875423, 35.939091, 23.084845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925884, 36.254639, 23.325432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378442, -0.522189, 0.764264,
		0.916989, -0.324032, 0.232670,
		0.126149, 0.788874, 0.601469,
		43.963730, 36.491302, 23.505873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233574, 35.654919, 23.779879>,  <43.875423, 35.939091, 23.084845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233574, 35.654919, 23.779879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092834, 36.016647, 23.876543>,  <44.008389, 36.233685, 23.934542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.092834, 36.016647, 23.876543>,  <44.233574, 35.654919, 23.779879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.092834, 36.016647, 23.876543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173436, -0.316682, 0.932541,
		0.919847, 0.286205, 0.268268,
		-0.351853, 0.904322, 0.241661,
		43.987278, 36.287945, 23.949041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594120, 35.854282, 24.450825>,  <44.233574, 35.654919, 23.779879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594120, 35.854282, 24.450825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258648, 36.068031, 24.408760>,  <44.057365, 36.196281, 24.383522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258648, 36.068031, 24.408760>,  <44.594120, 35.854282, 24.450825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258648, 36.068031, 24.408760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211976, -0.142420, 0.966842,
		0.501678, 0.833163, 0.232719,
		-0.838681, 0.534374, -0.105161,
		44.007042, 36.228344, 24.377213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471375, 36.184345, 25.044386>,  <44.594120, 35.854282, 24.450825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471375, 36.184345, 25.044386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091759, 36.237511, 24.930082>,  <43.863991, 36.269409, 24.861500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091759, 36.237511, 24.930082>,  <44.471375, 36.184345, 25.044386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091759, 36.237511, 24.930082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308379, -0.204606, 0.928999,
		0.065010, 0.969778, 0.235168,
		-0.949040, 0.132915, -0.285758,
		43.807045, 36.277386, 24.844355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150406, 36.534203, 25.629522>,  <44.471375, 36.184345, 25.044386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150406, 36.534203, 25.629522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854012, 36.365936, 25.420149>,  <43.676174, 36.264977, 25.294525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854012, 36.365936, 25.420149>,  <44.150406, 36.534203, 25.629522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854012, 36.365936, 25.420149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483907, -0.205948, 0.850541,
		-0.465597, 0.883529, -0.050961,
		-0.740982, -0.420669, -0.523434,
		43.631718, 36.239735, 25.263119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459644, 36.832237, 25.798061>,  <44.150406, 36.534203, 25.629522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459644, 36.832237, 25.798061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343372, 36.490734, 25.625273>,  <43.273609, 36.285831, 25.521601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.343372, 36.490734, 25.625273>,  <43.459644, 36.832237, 25.798061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343372, 36.490734, 25.625273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683878, -0.130367, 0.717855,
		-0.669191, 0.504081, -0.545973,
		-0.290680, -0.853761, -0.431970,
		43.256168, 36.234608, 25.495682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741539, 36.856449, 25.711029>,  <43.459644, 36.832237, 25.798061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741539, 36.856449, 25.711029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821392, 36.464668, 25.722437>,  <42.869305, 36.229599, 25.729280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821392, 36.464668, 25.722437>,  <42.741539, 36.856449, 25.711029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821392, 36.464668, 25.722437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815124, -0.149846, 0.559571,
		-0.543802, -0.134954, -0.828292,
		0.199633, -0.979456, 0.028517,
		42.881283, 36.170830, 25.730991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063168, 36.562607, 25.609520>,  <42.741539, 36.856449, 25.711029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063168, 36.562607, 25.609520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294529, 36.285683, 25.782103>,  <42.433346, 36.119526, 25.885653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294529, 36.285683, 25.782103>,  <42.063168, 36.562607, 25.609520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294529, 36.285683, 25.782103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804097, -0.394779, 0.444497,
		-0.137401, -0.604031, -0.785027,
		0.578402, -0.692312, 0.431457,
		42.468048, 36.077988, 25.911539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562878, 36.253460, 25.817055>,  <42.063168, 36.562607, 25.609520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562878, 36.253460, 25.817055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881058, 36.109524, 26.012102>,  <42.071968, 36.023163, 26.129129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881058, 36.109524, 26.012102>,  <41.562878, 36.253460, 25.817055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881058, 36.109524, 26.012102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605584, -0.441591, 0.662016,
		-0.022892, -0.821895, -0.569178,
		0.795452, -0.359840, 0.487618,
		42.119694, 36.001572, 26.158388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334538, 35.621555, 25.920633>,  <41.562878, 36.253460, 25.817055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334538, 35.621555, 25.920633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657238, 35.640537, 26.156229>,  <41.850857, 35.651928, 26.297586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657238, 35.640537, 26.156229>,  <41.334538, 35.621555, 25.920633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657238, 35.640537, 26.156229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542216, -0.336733, 0.769813,
		0.234864, -0.940403, -0.245928,
		0.806747, 0.047455, 0.588988,
		41.899261, 35.654774, 26.332926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252716, 35.013443, 26.347746>,  <41.334538, 35.621555, 25.920633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252716, 35.013443, 26.347746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512638, 35.208881, 26.580648>,  <41.668591, 35.326145, 26.720390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.512638, 35.208881, 26.580648>,  <41.252716, 35.013443, 26.347746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512638, 35.208881, 26.580648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524287, -0.266517, 0.808759,
		0.550337, -0.830809, 0.082979,
		0.649809, 0.488595, 0.582257,
		41.707581, 35.355461, 26.755325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466400, 34.504471, 26.831656>,  <41.252716, 35.013443, 26.347746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466400, 34.504471, 26.831656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523876, 34.869492, 26.984806>,  <41.558361, 35.088505, 27.076696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523876, 34.869492, 26.984806>,  <41.466400, 34.504471, 26.831656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523876, 34.869492, 26.984806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653121, -0.203218, 0.729476,
		0.743495, -0.354885, 0.566808,
		0.143694, 0.912557, 0.382875,
		41.566986, 35.143257, 27.099669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675514, 34.403469, 27.592653>,  <41.466400, 34.504471, 26.831656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675514, 34.403469, 27.592653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534439, 34.771923, 27.526773>,  <41.449795, 34.992996, 27.487246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534439, 34.771923, 27.526773>,  <41.675514, 34.403469, 27.592653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534439, 34.771923, 27.526773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593613, -0.084183, 0.800335,
		0.723351, 0.380033, 0.576488,
		-0.352684, 0.921134, -0.164699,
		41.428635, 35.048264, 27.477364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835930, 34.765385, 28.143312>,  <41.675514, 34.403469, 27.592653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835930, 34.765385, 28.143312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567657, 35.034328, 28.018017>,  <41.406693, 35.195694, 27.942839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567657, 35.034328, 28.018017>,  <41.835930, 34.765385, 28.143312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567657, 35.034328, 28.018017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409634, 0.016320, 0.912104,
		0.618371, 0.740047, 0.264475,
		-0.670684, 0.672357, -0.313240,
		41.366451, 35.236034, 27.924046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701878, 35.072010, 28.727089>,  <41.835930, 34.765385, 28.143312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701878, 35.072010, 28.727089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395004, 35.210083, 28.510839>,  <41.210880, 35.292927, 28.381090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395004, 35.210083, 28.510839>,  <41.701878, 35.072010, 28.727089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395004, 35.210083, 28.510839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523542, 0.149970, 0.838697,
		0.370578, 0.926478, 0.065661,
		-0.767187, 0.345179, -0.540625,
		41.164848, 35.313637, 28.348652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459389, 35.630135, 28.993250>,  <41.701878, 35.072010, 28.727089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459389, 35.630135, 28.993250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139538, 35.474060, 28.810667>,  <40.947628, 35.380417, 28.701117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139538, 35.474060, 28.810667>,  <41.459389, 35.630135, 28.993250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139538, 35.474060, 28.810667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506892, 0.031027, 0.861451,
		-0.321964, 0.920213, -0.222592,
		-0.799624, -0.390187, -0.456459,
		40.899651, 35.357002, 28.673729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936665, 35.911480, 29.365770>,  <41.459389, 35.630135, 28.993250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936665, 35.911480, 29.365770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746075, 35.625420, 29.161211>,  <40.631721, 35.453785, 29.038475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746075, 35.625420, 29.161211>,  <40.936665, 35.911480, 29.365770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746075, 35.625420, 29.161211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548778, -0.212526, 0.808501,
		-0.686887, 0.665877, -0.291196,
		-0.476475, -0.715151, -0.511400,
		40.603130, 35.410873, 29.007792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306129, 36.101311, 29.505865>,  <40.936665, 35.911480, 29.365770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306129, 36.101311, 29.505865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339760, 35.715313, 29.406488>,  <40.359936, 35.483715, 29.346863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.339760, 35.715313, 29.406488>,  <40.306129, 36.101311, 29.505865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339760, 35.715313, 29.406488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334624, -0.262188, 0.905143,
		-0.938594, 0.007037, -0.344952,
		0.084073, -0.964991, -0.248443,
		40.364983, 35.425816, 29.331955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758682, 35.814014, 29.827072>,  <40.306129, 36.101311, 29.505865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758682, 35.814014, 29.827072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000107, 35.501938, 29.761326>,  <40.144962, 35.314693, 29.721878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.000107, 35.501938, 29.761326>,  <39.758682, 35.814014, 29.827072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000107, 35.501938, 29.761326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354635, -0.447328, 0.821055,
		-0.714103, -0.437270, -0.546673,
		0.603565, -0.780188, -0.164368,
		40.181175, 35.267883, 29.712015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335262, 35.244953, 29.979813>,  <39.758682, 35.814014, 29.827072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335262, 35.244953, 29.979813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698555, 35.078865, 30.000648>,  <39.916531, 34.979214, 30.013149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698555, 35.078865, 30.000648>,  <39.335262, 35.244953, 29.979813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698555, 35.078865, 30.000648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271638, -0.490274, 0.828157,
		-0.318325, -0.766307, -0.558070,
		0.908230, -0.415216, 0.052091,
		39.971024, 34.954300, 30.016275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281254, 34.549641, 30.307537>,  <39.335262, 35.244953, 29.979813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281254, 34.549641, 30.307537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675159, 34.600140, 30.355366>,  <39.911503, 34.630440, 30.384062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675159, 34.600140, 30.355366>,  <39.281254, 34.549641, 30.307537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675159, 34.600140, 30.355366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038401, -0.512758, 0.857674,
		0.169594, -0.849200, -0.500098,
		0.984766, 0.126253, 0.119570,
		39.970589, 34.638016, 30.391237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452309, 33.951332, 30.557076>,  <39.281254, 34.549641, 30.307537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452309, 33.951332, 30.557076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721359, 34.228497, 30.660961>,  <39.882790, 34.394794, 30.723293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721359, 34.228497, 30.660961>,  <39.452309, 33.951332, 30.557076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721359, 34.228497, 30.660961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053081, -0.395248, 0.917040,
		0.738078, -0.603037, -0.302634,
		0.672624, 0.692911, 0.259713,
		39.923145, 34.436371, 30.738874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849945, 33.641933, 30.892403>,  <39.452309, 33.951332, 30.557076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849945, 33.641933, 30.892403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978832, 34.001987, 31.009657>,  <40.056164, 34.218021, 31.080009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978832, 34.001987, 31.009657>,  <39.849945, 33.641933, 30.892403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978832, 34.001987, 31.009657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345740, -0.400159, 0.848727,
		0.881271, -0.172126, -0.440152,
		0.322219, 0.900136, 0.293137,
		40.075497, 34.272030, 31.097597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561199, 33.563908, 31.169491>,  <39.849945, 33.641933, 30.892403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561199, 33.563908, 31.169491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408005, 33.904339, 31.313147>,  <40.316086, 34.108597, 31.399340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408005, 33.904339, 31.313147>,  <40.561199, 33.563908, 31.169491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408005, 33.904339, 31.313147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223855, -0.291683, 0.929952,
		0.896219, 0.436557, -0.078807,
		-0.382990, 0.851081, 0.359137,
		40.293106, 34.159664, 31.420887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025887, 33.742107, 31.702713>,  <40.561199, 33.563908, 31.169491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025887, 33.742107, 31.702713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689507, 33.951992, 31.755606>,  <40.487679, 34.077923, 31.787342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.689507, 33.951992, 31.755606>,  <41.025887, 33.742107, 31.702713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689507, 33.951992, 31.755606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098340, -0.092105, 0.990881,
		0.532109, 0.846281, 0.025855,
		-0.840946, 0.524714, 0.132234,
		40.437222, 34.109406, 31.795277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239761, 34.389774, 32.102825>,  <41.025887, 33.742107, 31.702713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239761, 34.389774, 32.102825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856663, 34.280540, 32.138931>,  <40.626804, 34.215000, 32.160595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856663, 34.280540, 32.138931>,  <41.239761, 34.389774, 32.102825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856663, 34.280540, 32.138931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152385, -0.215618, 0.964514,
		-0.243933, 0.937514, 0.248121,
		-0.957745, -0.273087, 0.090267,
		40.569340, 34.198616, 32.166012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074017, 34.482464, 32.832691>,  <41.239761, 34.389774, 32.102825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074017, 34.482464, 32.832691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763874, 34.274952, 32.688641>,  <40.577789, 34.150444, 32.602211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763874, 34.274952, 32.688641>,  <41.074017, 34.482464, 32.832691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763874, 34.274952, 32.688641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160419, -0.389753, 0.906840,
		-0.610810, 0.760895, 0.218975,
		-0.775356, -0.518779, -0.360127,
		40.531269, 34.119320, 32.580601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426220, 34.707722, 33.215668>,  <41.074017, 34.482464, 32.832691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426220, 34.707722, 33.215668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418159, 34.325081, 33.099392>,  <40.413322, 34.095497, 33.029625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418159, 34.325081, 33.099392>,  <40.426220, 34.707722, 33.215668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418159, 34.325081, 33.099392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216730, -0.279656, 0.935319,
		-0.976024, 0.081847, -0.201690,
		-0.020149, -0.956605, -0.290690,
		40.412113, 34.038101, 33.012184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971588, 34.380684, 33.753395>,  <40.426220, 34.707722, 33.215668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971588, 34.380684, 33.753395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147583, 34.070915, 33.571545>,  <40.253181, 33.885056, 33.462433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147583, 34.070915, 33.571545>,  <39.971588, 34.380684, 33.753395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147583, 34.070915, 33.571545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040926, -0.523031, 0.851331,
		-0.897070, -0.355970, -0.261822,
		0.439989, -0.774418, -0.454627,
		40.279579, 33.838589, 33.435158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556644, 33.880138, 33.978573>,  <39.971588, 34.380684, 33.753395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556644, 33.880138, 33.978573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910160, 33.722523, 33.877651>,  <40.122269, 33.627953, 33.817097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910160, 33.722523, 33.877651>,  <39.556644, 33.880138, 33.978573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910160, 33.722523, 33.877651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044648, -0.465759, 0.883785,
		-0.465759, -0.792340, -0.394037,
		-0.883785, 0.394037, 0.252308,
		40.175297, 33.604313, 33.801960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501766, 33.219151, 34.150406>,  <39.556644, 33.880138, 33.978573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501766, 33.219151, 34.150406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895576, 33.282196, 34.119751>,  <40.131863, 33.320023, 34.101360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895576, 33.282196, 34.119751>,  <39.501766, 33.219151, 34.150406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895576, 33.282196, 34.119751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154927, -0.578263, 0.801005,
		0.081937, -0.800480, -0.593732,
		0.984523, 0.157617, -0.076635,
		40.190933, 33.329479, 34.096760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814636, 32.587891, 34.216198>,  <39.501766, 33.219151, 34.150406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814636, 32.587891, 34.216198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095413, 32.858593, 34.304989>,  <40.263882, 33.021015, 34.358265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095413, 32.858593, 34.304989>,  <39.814636, 32.587891, 34.216198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095413, 32.858593, 34.304989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224269, -0.505833, 0.832968,
		0.675999, -0.534916, -0.506843,
		0.701946, 0.676755, 0.221978,
		40.305996, 33.061619, 34.371582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294060, 32.155445, 34.541164>,  <39.814636, 32.587891, 34.216198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294060, 32.155445, 34.541164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378609, 32.529194, 34.655891>,  <40.429337, 32.753445, 34.724728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378609, 32.529194, 34.655891>,  <40.294060, 32.155445, 34.541164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378609, 32.529194, 34.655891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237525, -0.333758, 0.912243,
		0.948105, -0.124697, -0.292485,
		0.211374, 0.934375, 0.286819,
		40.442020, 32.809505, 34.741936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919659, 32.045799, 34.944897>,  <40.294060, 32.155445, 34.541164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919659, 32.045799, 34.944897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774399, 32.408127, 35.032185>,  <40.687241, 32.625523, 35.084557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774399, 32.408127, 35.032185>,  <40.919659, 32.045799, 34.944897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774399, 32.408127, 35.032185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096825, -0.196248, 0.975762,
		0.926685, 0.375479, -0.016438,
		-0.363152, 0.905816, 0.218215,
		40.665455, 32.679871, 35.097649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349705, 32.315598, 35.508991>,  <40.919659, 32.045799, 34.944897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349705, 32.315598, 35.508991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022522, 32.545612, 35.515617>,  <40.826210, 32.683620, 35.519592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022522, 32.545612, 35.515617>,  <41.349705, 32.315598, 35.508991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022522, 32.545612, 35.515617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067966, -0.125193, 0.989802,
		0.571244, 0.808493, 0.141486,
		-0.817961, 0.575035, 0.016565,
		40.777134, 32.718124, 35.520588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524750, 32.723644, 35.965183>,  <41.349705, 32.315598, 35.508991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524750, 32.723644, 35.965183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127735, 32.771297, 35.954781>,  <40.889526, 32.799889, 35.948540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127735, 32.771297, 35.954781>,  <41.524750, 32.723644, 35.965183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127735, 32.771297, 35.954781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032647, -0.054164, 0.997998,
		0.117487, 0.991400, 0.057649,
		-0.992538, 0.119134, -0.026002,
		40.829975, 32.807037, 35.946980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347763, 33.237984, 36.517155>,  <41.524750, 32.723644, 35.965183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347763, 33.237984, 36.517155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022778, 33.027657, 36.416416>,  <40.827785, 32.901459, 36.355972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022778, 33.027657, 36.416416>,  <41.347763, 33.237984, 36.517155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022778, 33.027657, 36.416416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214027, -0.132817, 0.967756,
		-0.542312, 0.840165, -0.004630,
		-0.812460, -0.525817, -0.251846,
		40.779041, 32.869911, 36.340862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862221, 33.568581, 36.894855>,  <41.347763, 33.237984, 36.517155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862221, 33.568581, 36.894855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756771, 33.194561, 36.800037>,  <40.693501, 32.970150, 36.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.756771, 33.194561, 36.800037>,  <40.862221, 33.568581, 36.894855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756771, 33.194561, 36.800037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313743, -0.149267, 0.937702,
		-0.912177, 0.321573, -0.254014,
		-0.263624, -0.935046, -0.237049,
		40.677685, 32.914047, 36.728924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190067, 33.400681, 37.108551>,  <40.862221, 33.568581, 36.894855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190067, 33.400681, 37.108551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358929, 33.039974, 37.071453>,  <40.460243, 32.823551, 37.049194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358929, 33.039974, 37.071453>,  <40.190067, 33.400681, 37.108551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358929, 33.039974, 37.071453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339847, -0.252271, 0.906015,
		-0.840412, -0.350956, -0.412960,
		0.422150, -0.901770, -0.092740,
		40.485573, 32.769444, 37.043633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868370, 33.034603, 37.581486>,  <40.190067, 33.400681, 37.108551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868370, 33.034603, 37.581486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157917, 32.765289, 37.521206>,  <40.331646, 32.603703, 37.485039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157917, 32.765289, 37.521206>,  <39.868370, 33.034603, 37.581486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157917, 32.765289, 37.521206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213576, -0.426366, 0.878975,
		-0.656053, -0.604072, -0.452428,
		0.723864, -0.673282, -0.150703,
		40.375076, 32.563305, 37.475994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632008, 32.348522, 37.807098>,  <39.868370, 33.034603, 37.581486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632008, 32.348522, 37.807098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031013, 32.321671, 37.798519>,  <40.270416, 32.305561, 37.793369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031013, 32.321671, 37.798519>,  <39.632008, 32.348522, 37.807098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031013, 32.321671, 37.798519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006319, -0.388336, 0.921496,
		-0.070189, -0.919070, -0.387794,
		0.997514, -0.067130, -0.021450,
		40.330269, 32.301533, 37.792084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765171, 31.661312, 38.213333>,  <39.632008, 32.348522, 37.807098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765171, 31.661312, 38.213333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083218, 31.903625, 38.201935>,  <40.274048, 32.049015, 38.195095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083218, 31.903625, 38.201935>,  <39.765171, 31.661312, 38.213333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083218, 31.903625, 38.201935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193978, -0.209524, 0.958370,
		0.574593, -0.767546, -0.284105,
		0.795120, 0.605782, -0.028496,
		40.321754, 32.085361, 38.193386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335857, 31.324455, 38.604145>,  <39.765171, 31.661312, 38.213333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335857, 31.324455, 38.604145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402966, 31.718025, 38.579678>,  <40.443230, 31.954168, 38.564999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402966, 31.718025, 38.579678>,  <40.335857, 31.324455, 38.604145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402966, 31.718025, 38.579678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139641, 0.037699, 0.989484,
		0.975885, -0.174551, -0.131072,
		0.167774, 0.983926, -0.061165,
		40.453297, 32.013203, 38.561329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899841, 31.326429, 38.940556>,  <40.335857, 31.324455, 38.604145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899841, 31.326429, 38.940556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734344, 31.690536, 38.934460>,  <40.635048, 31.909000, 38.930801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734344, 31.690536, 38.934460>,  <40.899841, 31.326429, 38.940556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734344, 31.690536, 38.934460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301487, 0.152791, 0.941148,
		0.859025, 0.384798, -0.337649,
		-0.413742, 0.910267, -0.015239,
		40.610222, 31.963617, 38.929890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399677, 31.763901, 39.166096>,  <40.899841, 31.326429, 38.940556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399677, 31.763901, 39.166096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053192, 31.947073, 39.246071>,  <40.845303, 32.056976, 39.294056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.053192, 31.947073, 39.246071>,  <41.399677, 31.763901, 39.166096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053192, 31.947073, 39.246071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164646, -0.116213, 0.979483,
		0.471770, 0.881360, 0.025269,
		-0.866213, 0.457930, 0.199938,
		40.793327, 32.084454, 39.306053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415325, 31.879282, 39.784283>,  <41.399677, 31.763901, 39.166096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415325, 31.879282, 39.784283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055145, 32.053249, 39.786480>,  <40.839035, 32.157631, 39.787800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.055145, 32.053249, 39.786480>,  <41.415325, 31.879282, 39.784283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055145, 32.053249, 39.786480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059857, -0.136426, 0.988840,
		0.430813, 0.890076, 0.148878,
		-0.900454, 0.434916, 0.005497,
		40.785007, 32.183723, 39.788128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313339, 32.089165, 40.435974>,  <41.415325, 31.879282, 39.784283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313339, 32.089165, 40.435974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945137, 32.030468, 40.291122>,  <40.724216, 31.995251, 40.204212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.945137, 32.030468, 40.291122>,  <41.313339, 32.089165, 40.435974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945137, 32.030468, 40.291122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292858, -0.354424, 0.888042,
		-0.258660, 0.923499, 0.283275,
		-0.920505, -0.146741, -0.362129,
		40.668987, 31.986446, 40.182484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936600, 32.324436, 40.941380>,  <41.313339, 32.089165, 40.435974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936600, 32.324436, 40.941380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681931, 32.115269, 40.714680>,  <40.529129, 31.989769, 40.578659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681931, 32.115269, 40.714680>,  <40.936600, 32.324436, 40.941380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681931, 32.115269, 40.714680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533501, -0.231983, 0.813363,
		-0.556796, 0.820210, -0.131278,
		-0.636674, -0.522915, -0.566750,
		40.490929, 31.958395, 40.544655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302341, 32.476852, 41.189705>,  <40.936600, 32.324436, 40.941380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302341, 32.476852, 41.189705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282642, 32.130497, 40.990585>,  <40.270824, 31.922684, 40.871113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282642, 32.130497, 40.990585>,  <40.302341, 32.476852, 41.189705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282642, 32.130497, 40.990585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664461, -0.343707, 0.663594,
		-0.745698, 0.363450, -0.558424,
		-0.049249, -0.865892, -0.497800,
		40.267868, 31.870729, 40.841244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559860, 32.457577, 41.315159>,  <40.302341, 32.476852, 41.189705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559860, 32.457577, 41.315159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679436, 32.087166, 41.222984>,  <39.751183, 31.864918, 41.167679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.679436, 32.087166, 41.222984>,  <39.559860, 32.457577, 41.315159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679436, 32.087166, 41.222984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577090, -0.367749, 0.729196,
		-0.760002, -0.085001, -0.644338,
		0.298938, -0.926032, -0.230437,
		39.769115, 31.809357, 41.153854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946140, 32.109329, 41.313419>,  <39.559860, 32.457577, 41.315159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946140, 32.109329, 41.313419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250843, 31.863932, 41.396694>,  <39.433666, 31.716692, 41.446659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250843, 31.863932, 41.396694>,  <38.946140, 32.109329, 41.313419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250843, 31.863932, 41.396694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495325, -0.344390, 0.797526,
		-0.417583, -0.710644, -0.566224,
		0.761759, -0.613498, 0.208189,
		39.479370, 31.679882, 41.459152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800434, 31.323906, 41.330345>,  <38.946140, 32.109329, 41.313419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800434, 31.323906, 41.330345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116482, 31.400270, 41.563332>,  <39.306110, 31.446089, 41.703121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116482, 31.400270, 41.563332>,  <38.800434, 31.323906, 41.330345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116482, 31.400270, 41.563332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469957, -0.421379, 0.775616,
		0.393511, -0.886562, -0.243220,
		0.790120, 0.190910, 0.582463,
		39.353519, 31.457544, 41.738071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098854, 30.735697, 41.615005>,  <38.800434, 31.323906, 41.330345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098854, 30.735697, 41.615005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188969, 31.032532, 41.867527>,  <39.243038, 31.210632, 42.019039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188969, 31.032532, 41.867527>,  <39.098854, 30.735697, 41.615005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188969, 31.032532, 41.867527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374390, -0.532277, 0.759285,
		0.899487, -0.407415, 0.157913,
		0.225291, 0.742088, 0.631308,
		39.256557, 31.255157, 42.056919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175003, 30.360201, 42.127747>,  <39.098854, 30.735697, 41.615005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175003, 30.360201, 42.127747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161251, 30.714808, 42.312313>,  <39.153000, 30.927570, 42.423054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161251, 30.714808, 42.312313>,  <39.175003, 30.360201, 42.127747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161251, 30.714808, 42.312313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506284, -0.413518, 0.756756,
		0.861681, -0.207590, 0.463046,
		-0.034383, 0.886515, 0.461421,
		39.150936, 30.980762, 42.450741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495064, 30.173361, 42.749798>,  <39.175003, 30.360201, 42.127747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495064, 30.173361, 42.749798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285202, 30.510460, 42.797985>,  <39.159283, 30.712719, 42.826897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285202, 30.510460, 42.797985>,  <39.495064, 30.173361, 42.749798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285202, 30.510460, 42.797985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489012, -0.414179, 0.767674,
		0.696851, 0.343855, 0.629415,
		-0.524659, 0.842746, 0.120472,
		39.127804, 30.763283, 42.834126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474991, 30.330671, 43.459629>,  <39.495064, 30.173361, 42.749798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474991, 30.330671, 43.459629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145573, 30.499348, 43.307861>,  <38.947922, 30.600554, 43.216801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145573, 30.499348, 43.307861>,  <39.474991, 30.330671, 43.459629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145573, 30.499348, 43.307861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540152, -0.378677, 0.751558,
		0.173247, 0.823883, 0.539632,
		-0.823542, 0.421689, -0.379418,
		38.898510, 30.625854, 43.194035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069527, 30.727285, 43.977333>,  <39.474991, 30.330671, 43.459629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069527, 30.727285, 43.977333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821320, 30.608313, 43.687096>,  <38.672394, 30.536928, 43.512951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821320, 30.608313, 43.687096>,  <39.069527, 30.727285, 43.977333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821320, 30.608313, 43.687096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608270, -0.401427, 0.684736,
		-0.494936, 0.866251, 0.068175,
		-0.620521, -0.297432, -0.725595,
		38.635162, 30.519083, 43.469418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468227, 30.603729, 44.340824>,  <39.069527, 30.727285, 43.977333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468227, 30.603729, 44.340824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367722, 30.430925, 43.994362>,  <38.307419, 30.327244, 43.786484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367722, 30.430925, 43.994362>,  <38.468227, 30.603729, 44.340824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367722, 30.430925, 43.994362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645759, -0.591776, 0.482489,
		-0.721012, 0.680565, -0.130280,
		-0.251268, -0.432010, -0.866159,
		38.292339, 30.301323, 43.734512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296871, 29.948084, 44.534924>,  <38.468227, 30.603729, 44.340824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296871, 29.948084, 44.534924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978119, 29.773525, 44.367813>,  <37.786869, 29.668789, 44.267548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978119, 29.773525, 44.367813>,  <38.296871, 29.948084, 44.534924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978119, 29.773525, 44.367813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052146, 0.639262, -0.767219,
		0.601874, -0.633171, -0.486663,
		-0.796886, -0.436392, -0.417773,
		37.739056, 29.642607, 44.242481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443504, 29.700296, 43.751278>,  <38.296871, 29.948084, 44.534924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443504, 29.700296, 43.751278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069347, 29.822813, 43.821957>,  <37.844852, 29.896322, 43.864365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069347, 29.822813, 43.821957>,  <38.443504, 29.700296, 43.751278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069347, 29.822813, 43.821957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096736, 0.702296, -0.705282,
		-0.340116, -0.642624, -0.686553,
		-0.935395, 0.306293, 0.176697,
		37.788731, 29.914701, 43.874966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925323, 29.506838, 43.220131>,  <38.443504, 29.700296, 43.751278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925323, 29.506838, 43.220131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878250, 29.849171, 43.421604>,  <37.850006, 30.054571, 43.542488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878250, 29.849171, 43.421604>,  <37.925323, 29.506838, 43.220131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878250, 29.849171, 43.421604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252233, 0.516337, -0.818397,
		-0.960484, 0.030737, -0.276632,
		-0.117681, 0.855834, 0.503686,
		37.842945, 30.105921, 43.572712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681740, 29.955128, 42.676907>,  <37.925323, 29.506838, 43.220131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681740, 29.955128, 42.676907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802845, 30.174938, 42.988384>,  <37.875507, 30.306824, 43.175270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802845, 30.174938, 42.988384>,  <37.681740, 29.955128, 42.676907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802845, 30.174938, 42.988384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382021, 0.678555, -0.627393,
		-0.873153, 0.487425, -0.004491,
		0.302760, 0.549526, 0.778690,
		37.893673, 30.339796, 43.221992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654686, 30.647982, 42.576721>,  <37.681740, 29.955128, 42.676907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654686, 30.647982, 42.576721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905743, 30.687399, 42.885616>,  <38.056377, 30.711048, 43.070953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905743, 30.687399, 42.885616>,  <37.654686, 30.647982, 42.576721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905743, 30.687399, 42.885616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562027, 0.629041, -0.537060,
		-0.538693, 0.771101, 0.339430,
		0.627643, 0.098541, 0.772240,
		38.094036, 30.716961, 43.117287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954052, 31.389196, 42.676033>,  <37.654686, 30.647982, 42.576721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954052, 31.389196, 42.676033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232071, 31.165493, 42.856762>,  <38.398884, 31.031271, 42.965199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232071, 31.165493, 42.856762>,  <37.954052, 31.389196, 42.676033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232071, 31.165493, 42.856762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716662, 0.589183, -0.373175,
		-0.057502, 0.583174, 0.810309,
		0.695047, -0.559259, 0.451818,
		38.440586, 30.997715, 42.992306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427593, 31.813494, 43.056046>,  <37.954052, 31.389196, 42.676033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427593, 31.813494, 43.056046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638794, 31.481777, 42.982849>,  <38.765514, 31.282747, 42.938931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638794, 31.481777, 42.982849>,  <38.427593, 31.813494, 43.056046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638794, 31.481777, 42.982849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688050, 0.544040, -0.480216,
		0.497792, 0.127652, 0.857851,
		0.528006, -0.829292, -0.182988,
		38.797195, 31.232990, 42.927952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994545, 32.174007, 42.934731>,  <38.427593, 31.813494, 43.056046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994545, 32.174007, 42.934731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062103, 31.800547, 42.808388>,  <39.102638, 31.576469, 42.732582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062103, 31.800547, 42.808388>,  <38.994545, 32.174007, 42.934731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062103, 31.800547, 42.808388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732360, 0.333346, -0.593741,
		0.659637, -0.131036, 0.740073,
		0.168900, -0.933654, -0.315853,
		39.112774, 31.520451, 42.713631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756355, 32.105648, 42.836479>,  <38.994545, 32.174007, 42.934731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756355, 32.105648, 42.836479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594772, 31.820663, 42.606968>,  <39.497822, 31.649673, 42.469261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594772, 31.820663, 42.606968>,  <39.756355, 32.105648, 42.836479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594772, 31.820663, 42.606968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608904, 0.258680, -0.749880,
		0.682684, -0.652294, 0.329325,
		-0.403953, -0.712458, -0.573781,
		39.473587, 31.606926, 42.434834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258949, 31.844501, 42.594177>,  <39.756355, 32.105648, 42.836479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258949, 31.844501, 42.594177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988453, 31.731533, 42.322018>,  <39.826157, 31.663752, 42.158722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988453, 31.731533, 42.322018>,  <40.258949, 31.844501, 42.594177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988453, 31.731533, 42.322018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653656, 0.195925, -0.730991,
		0.339753, -0.939070, 0.052114,
		-0.676241, -0.282421, -0.680394,
		39.785580, 31.646807, 42.117901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460350, 31.192822, 42.046326>,  <40.258949, 31.844501, 42.594177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460350, 31.192822, 42.046326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203556, 31.442305, 41.867958>,  <40.049480, 31.591995, 41.760937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203556, 31.442305, 41.867958>,  <40.460350, 31.192822, 42.046326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203556, 31.442305, 41.867958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616122, 0.073509, -0.784213,
		-0.456341, -0.778193, -0.431472,
		-0.641986, 0.623708, -0.445917,
		40.010960, 31.629417, 41.734184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376534, 30.671907, 41.612453>,  <40.460350, 31.192822, 42.046326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376534, 30.671907, 41.612453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107903, 30.965084, 41.569035>,  <39.946724, 31.140991, 41.542984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107903, 30.965084, 41.569035>,  <40.376534, 30.671907, 41.612453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107903, 30.965084, 41.569035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595581, 0.446855, -0.667536,
		-0.440762, -0.512947, -0.736624,
		-0.671574, 0.732944, -0.108545,
		39.906429, 31.184967, 41.536472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069286, 30.609728, 40.950554>,  <40.376534, 30.671907, 41.612453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069286, 30.609728, 40.950554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960697, 30.989513, 41.013565>,  <39.895542, 31.217384, 41.051373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960697, 30.989513, 41.013565>,  <40.069286, 30.609728, 40.950554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960697, 30.989513, 41.013565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518768, 0.282219, -0.806990,
		-0.810667, -0.137359, -0.569168,
		-0.271477, 0.949466, 0.157528,
		39.879253, 31.274353, 41.060825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639656, 30.809683, 40.336754>,  <40.069286, 30.609728, 40.950554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639656, 30.809683, 40.336754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824268, 31.130640, 40.488098>,  <39.935036, 31.323214, 40.578903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824268, 31.130640, 40.488098>,  <39.639656, 30.809683, 40.336754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824268, 31.130640, 40.488098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282310, 0.271486, -0.920107,
		-0.841006, 0.531473, -0.101224,
		0.461531, 0.802391, 0.378361,
		39.962727, 31.371357, 40.601608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766403, 31.181578, 39.807095>,  <39.639656, 30.809683, 40.336754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766403, 31.181578, 39.807095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989895, 31.413322, 40.044464>,  <40.123989, 31.552370, 40.186886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989895, 31.413322, 40.044464>,  <39.766403, 31.181578, 39.807095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989895, 31.413322, 40.044464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313450, 0.514941, -0.797862,
		-0.767832, 0.631802, 0.106113,
		0.558733, 0.579363, 0.593427,
		40.157516, 31.587132, 40.222492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410378, 31.918100, 39.845200>,  <39.766403, 31.181578, 39.807095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410378, 31.918100, 39.845200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806694, 31.894428, 39.893898>,  <40.044483, 31.880226, 39.923119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806694, 31.894428, 39.893898>,  <39.410378, 31.918100, 39.845200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806694, 31.894428, 39.893898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128878, 0.687490, -0.714667,
		-0.041406, 0.723779, 0.688789,
		0.990796, -0.059178, 0.121746,
		40.103931, 31.876675, 39.930420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784611, 32.605988, 40.088783>,  <39.410378, 31.918100, 39.845200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784611, 32.605988, 40.088783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008423, 32.367718, 39.858273>,  <40.142712, 32.224754, 39.719967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008423, 32.367718, 39.858273>,  <39.784611, 32.605988, 40.088783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008423, 32.367718, 39.858273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044290, 0.715800, -0.696899,
		0.827623, 0.364416, 0.426898,
		0.559535, -0.595677, -0.576272,
		40.176285, 32.189014, 39.685390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892380, 32.965427, 39.526119>,  <39.784611, 32.605988, 40.088783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892380, 32.965427, 39.526119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131756, 32.660095, 39.428806>,  <40.275383, 32.476894, 39.370419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131756, 32.660095, 39.428806>,  <39.892380, 32.965427, 39.526119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131756, 32.660095, 39.428806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143465, 0.400857, -0.904838,
		0.788215, 0.506592, 0.349402,
		0.598443, -0.763334, -0.243284,
		40.311291, 32.431095, 39.355820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224167, 33.202572, 39.002312>,  <39.892380, 32.965427, 39.526119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224167, 33.202572, 39.002312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334774, 32.819412, 38.971401>,  <40.401138, 32.589516, 38.952854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334774, 32.819412, 38.971401>,  <40.224167, 33.202572, 39.002312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334774, 32.819412, 38.971401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220302, 0.141457, -0.965120,
		0.935418, 0.249844, 0.250141,
		0.276514, -0.957897, -0.077281,
		40.417728, 32.532043, 38.948215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858147, 33.217335, 38.599049>,  <40.224167, 33.202572, 39.002312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858147, 33.217335, 38.599049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735855, 32.837242, 38.575066>,  <40.662479, 32.609188, 38.560677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.735855, 32.837242, 38.575066>,  <40.858147, 33.217335, 38.599049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735855, 32.837242, 38.575066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220667, -0.009455, -0.975303,
		0.926194, -0.311411, 0.212575,
		-0.305730, -0.950228, -0.059961,
		40.644135, 32.552174, 38.557076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367558, 32.890942, 38.258381>,  <40.858147, 33.217335, 38.599049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367558, 32.890942, 38.258381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038319, 32.665092, 38.233997>,  <40.840775, 32.529583, 38.219368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038319, 32.665092, 38.233997>,  <41.367558, 32.890942, 38.258381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038319, 32.665092, 38.233997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132877, -0.087115, -0.987297,
		0.552139, -0.820740, 0.146729,
		-0.823096, -0.564621, -0.060958,
		40.791389, 32.495705, 38.215710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587914, 32.277996, 37.999588>,  <41.367558, 32.890942, 38.258381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587914, 32.277996, 37.999588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197037, 32.308411, 37.920277>,  <40.962509, 32.326660, 37.872692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197037, 32.308411, 37.920277>,  <41.587914, 32.277996, 37.999588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197037, 32.308411, 37.920277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190201, -0.101833, -0.976450,
		-0.094441, -0.991891, 0.085047,
		-0.977192, 0.076041, -0.198275,
		40.903877, 32.331223, 37.860794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465183, 31.865515, 37.320938>,  <41.587914, 32.277996, 37.999588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465183, 31.865515, 37.320938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117424, 32.056297, 37.372574>,  <40.908768, 32.170769, 37.403557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117424, 32.056297, 37.372574>,  <41.465183, 31.865515, 37.320938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117424, 32.056297, 37.372574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068551, 0.142300, -0.987447,
		-0.489341, -0.867330, -0.091018,
		-0.869394, 0.476959, 0.129090,
		40.856606, 32.199387, 37.411301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953381, 31.591133, 36.849583>,  <41.465183, 31.865515, 37.320938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953381, 31.591133, 36.849583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772675, 31.940218, 36.923645>,  <40.664249, 32.149670, 36.968082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772675, 31.940218, 36.923645>,  <40.953381, 31.591133, 36.849583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772675, 31.940218, 36.923645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114311, 0.149202, -0.982177,
		-0.884782, -0.464880, 0.032357,
		-0.451766, 0.872712, 0.185152,
		40.637146, 32.202030, 36.979191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356972, 31.630924, 36.362339>,  <40.953381, 31.591133, 36.849583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356972, 31.630924, 36.362339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454239, 32.005520, 36.463417>,  <40.512600, 32.230278, 36.524063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454239, 32.005520, 36.463417>,  <40.356972, 31.630924, 36.362339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454239, 32.005520, 36.463417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223180, 0.307542, -0.924991,
		-0.943960, 0.168532, 0.283790,
		0.243168, 0.936491, 0.252695,
		40.527187, 32.286469, 36.539227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571083, 30.988119, 36.059521>,  <40.356972, 31.630924, 36.362339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571083, 30.988119, 36.059521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859234, 31.265253, 36.072361>,  <41.032124, 31.431534, 36.080063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859234, 31.265253, 36.072361>,  <40.571083, 30.988119, 36.059521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859234, 31.265253, 36.072361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550466, -0.542971, -0.634168,
		-0.421946, 0.474512, -0.772528,
		0.720381, 0.692836, 0.032099,
		41.075348, 31.473104, 36.081989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800529, 31.360178, 35.378128>,  <40.571083, 30.988119, 36.059521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800529, 31.360178, 35.378128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083485, 31.300215, 35.654427>,  <41.253258, 31.264236, 35.820206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083485, 31.300215, 35.654427>,  <40.800529, 31.360178, 35.378128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083485, 31.300215, 35.654427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542062, -0.512122, -0.666258,
		0.453626, 0.845730, -0.281007,
		0.707384, -0.149909, 0.690750,
		41.295700, 31.255241, 35.861652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375771, 31.466215, 35.043221>,  <40.800529, 31.360178, 35.378128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375771, 31.466215, 35.043221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389458, 31.191257, 35.333412>,  <41.397671, 31.026283, 35.507526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389458, 31.191257, 35.333412>,  <41.375771, 31.466215, 35.043221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389458, 31.191257, 35.333412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167650, -0.711668, -0.682219,
		0.985252, 0.144971, 0.090890,
		0.034218, -0.687395, 0.725477,
		41.399723, 30.985039, 35.551056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927631, 31.046719, 35.060097>,  <41.375771, 31.466215, 35.043221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927631, 31.046719, 35.060097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634171, 30.826916, 35.219997>,  <41.458096, 30.695034, 35.315937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634171, 30.826916, 35.219997>,  <41.927631, 31.046719, 35.060097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634171, 30.826916, 35.219997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318621, -0.797779, -0.511887,
		0.600199, -0.248177, 0.760375,
		-0.733650, -0.549505, 0.399752,
		41.414074, 30.662064, 35.339924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298016, 31.545620, 35.500050>,  <41.927631, 31.046719, 35.060097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298016, 31.545620, 35.500050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283791, 31.393818, 35.869850>,  <42.275257, 31.302736, 36.091732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283791, 31.393818, 35.869850>,  <42.298016, 31.545620, 35.500050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283791, 31.393818, 35.869850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869405, -0.444441, -0.215885,
		0.492818, -0.811447, -0.314140,
		-0.035563, -0.379507, 0.924506,
		42.273121, 31.279966, 36.147202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618324, 32.147358, 35.979073>,  <42.298016, 31.545620, 35.500050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618324, 32.147358, 35.979073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720123, 31.771704, 36.071388>,  <42.781200, 31.546312, 36.126778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720123, 31.771704, 36.071388>,  <42.618324, 32.147358, 35.979073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720123, 31.771704, 36.071388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912347, 0.154013, -0.379346,
		0.320711, 0.307105, 0.896008,
		0.254496, -0.939131, 0.230793,
		42.796471, 31.489964, 36.140625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562256, 32.599361, 36.694000>,  <42.618324, 32.147358, 35.979073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562256, 32.599361, 36.694000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409538, 32.643856, 36.326988>,  <42.317909, 32.670555, 36.106781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409538, 32.643856, 36.326988>,  <42.562256, 32.599361, 36.694000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409538, 32.643856, 36.326988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436614, -0.853271, -0.285127,
		-0.814620, -0.509465, 0.277200,
		-0.381789, 0.111241, -0.917531,
		42.295002, 32.677227, 36.051727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388725, 33.170815, 36.153904>,  <42.562256, 32.599361, 36.694000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388725, 33.170815, 36.153904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625381, 33.108803, 35.837440>,  <42.767376, 33.071598, 35.647564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625381, 33.108803, 35.837440>,  <42.388725, 33.170815, 36.153904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625381, 33.108803, 35.837440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109417, 0.987698, -0.111713,
		0.798746, -0.020473, 0.601320,
		0.591636, -0.155025, -0.791160,
		42.802872, 33.062294, 35.600094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185661, 33.348854, 36.280334>,  <42.388725, 33.170815, 36.153904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185661, 33.348854, 36.280334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.013779, 33.410107, 35.924381>,  <42.910648, 33.446857, 35.710808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.013779, 33.410107, 35.924381>,  <43.185661, 33.348854, 36.280334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013779, 33.410107, 35.924381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019052, 0.986833, 0.160616,
		0.902766, 0.052064, -0.426970,
		-0.429711, 0.153133, -0.889887,
		42.884865, 33.456047, 35.657413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935307, 33.535431, 36.593277>,  <43.185661, 33.348854, 36.280334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935307, 33.535431, 36.593277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819515, 33.880173, 36.759842>,  <43.750042, 34.087017, 36.859783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819515, 33.880173, 36.759842>,  <43.935307, 33.535431, 36.593277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819515, 33.880173, 36.759842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888142, 0.404077, -0.218920,
		-0.356943, 0.306465, -0.882423,
		-0.289476, 0.861859, 0.416417,
		43.732674, 34.138729, 36.884766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088028, 34.072453, 36.096111>,  <43.935307, 33.535431, 36.593277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088028, 34.072453, 36.096111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105797, 34.142494, 36.489529>,  <44.116459, 34.184521, 36.725578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.105797, 34.142494, 36.489529>,  <44.088028, 34.072453, 36.096111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105797, 34.142494, 36.489529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986515, 0.147555, -0.070828,
		-0.157529, 0.973430, -0.166186,
		0.044424, 0.175103, 0.983547,
		44.119125, 34.195026, 36.784592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390682, 34.710800, 36.168869>,  <44.088028, 34.072453, 36.096111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390682, 34.710800, 36.168869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466225, 34.487514, 36.492035>,  <44.511551, 34.353542, 36.685936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466225, 34.487514, 36.492035>,  <44.390682, 34.710800, 36.168869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466225, 34.487514, 36.492035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973459, 0.214725, -0.079188,
		-0.129276, 0.801429, 0.583951,
		0.188852, -0.558215, 0.807917,
		44.522881, 34.320049, 36.734409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797146, 35.127422, 36.632214>,  <44.390682, 34.710800, 36.168869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797146, 35.127422, 36.632214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836937, 34.729607, 36.644878>,  <44.860813, 34.490917, 36.652477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836937, 34.729607, 36.644878>,  <44.797146, 35.127422, 36.632214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836937, 34.729607, 36.644878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948832, 0.085229, -0.304063,
		0.299703, 0.060289, 0.952126,
		0.099480, -0.994536, 0.031661,
		44.866779, 34.431248, 36.654377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503826, 34.972359, 36.424778>,  <44.797146, 35.127422, 36.632214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503826, 34.972359, 36.424778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404778, 34.597710, 36.523918>,  <45.345348, 34.372921, 36.583405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404778, 34.597710, 36.523918>,  <45.503826, 34.972359, 36.424778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404778, 34.597710, 36.523918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895685, -0.318830, -0.309992,
		0.369368, 0.145240, 0.917863,
		-0.247619, -0.936618, 0.247854,
		45.330490, 34.316723, 36.598274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163300, 34.686714, 36.718025>,  <45.503826, 34.972359, 36.424778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163300, 34.686714, 36.718025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920944, 34.381157, 36.629154>,  <45.775532, 34.197823, 36.575832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920944, 34.381157, 36.629154>,  <46.163300, 34.686714, 36.718025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920944, 34.381157, 36.629154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737385, -0.434417, -0.517247,
		0.298605, -0.477224, 0.826494,
		-0.605886, -0.763897, -0.222179,
		45.739178, 34.151989, 36.562500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.485584, 34.025093, 36.909519>,  <46.163300, 34.686714, 36.718025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.485584, 34.025093, 36.909519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226730, 33.995697, 36.605988>,  <46.071419, 33.978062, 36.423870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.226730, 33.995697, 36.605988>,  <46.485584, 34.025093, 36.909519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226730, 33.995697, 36.605988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706588, -0.431569, -0.560786,
		-0.286277, -0.899082, 0.331207,
		-0.647131, -0.073487, -0.758828,
		46.032593, 33.973652, 36.378338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.465687, 33.270756, 36.525967>,  <46.485584, 34.025093, 36.909519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.465687, 33.270756, 36.525967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395367, 33.587631, 36.292206>,  <46.353176, 33.777756, 36.151951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395367, 33.587631, 36.292206>,  <46.465687, 33.270756, 36.525967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.395367, 33.587631, 36.292206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754416, -0.272956, -0.596952,
		-0.632417, -0.545828, -0.549655,
		-0.175802, 0.792191, -0.584403,
		46.342625, 33.825287, 36.116886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444733, 33.177963, 35.807758>,  <46.465687, 33.270756, 36.525967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444733, 33.177963, 35.807758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492290, 33.573856, 35.776005>,  <46.520824, 33.811390, 35.756954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.492290, 33.573856, 35.776005>,  <46.444733, 33.177963, 35.807758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.492290, 33.573856, 35.776005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783597, -0.142631, -0.604675,
		-0.609786, 0.009689, -0.792507,
		0.118895, 0.989728, -0.079382,
		46.527958, 33.870773, 35.752190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.367619, 33.399357, 35.029076>,  <46.444733, 33.177963, 35.807758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.367619, 33.399357, 35.029076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627262, 33.621227, 35.237305>,  <46.783047, 33.754349, 35.362240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.627262, 33.621227, 35.237305>,  <46.367619, 33.399357, 35.029076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.627262, 33.621227, 35.237305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755422, -0.389569, -0.526852,
		-0.089437, 0.735231, -0.671890,
		0.649106, 0.554681, 0.520568,
		46.821995, 33.787632, 35.393475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834946, 34.025032, 34.635403>,  <46.367619, 33.399357, 35.029076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834946, 34.025032, 34.635403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972176, 33.793667, 34.931438>,  <47.054512, 33.654846, 35.109058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.972176, 33.793667, 34.931438>,  <46.834946, 34.025032, 34.635403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.972176, 33.793667, 34.931438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805134, -0.224731, -0.548867,
		0.483795, 0.784175, 0.388604,
		0.343076, -0.578417, 0.740089,
		47.075100, 33.620140, 35.153465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.272232, 34.642429, 34.957001>,  <46.834946, 34.025032, 34.635403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.272232, 34.642429, 34.957001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603802, 34.836456, 35.068424>,  <47.802742, 34.952873, 35.135277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.603802, 34.836456, 35.068424>,  <47.272232, 34.642429, 34.957001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.603802, 34.836456, 35.068424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359917, 0.843737, -0.398206,
		-0.428187, 0.229824, 0.873978,
		0.828924, 0.485066, 0.278559,
		47.852478, 34.981976, 35.151993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.058205, 34.091240, 26.094479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841427, 34.394196, 26.240162>,  <37.711361, 34.575970, 26.327572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.841427, 34.394196, 26.240162>,  <38.058205, 34.091240, 26.094479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841427, 34.394196, 26.240162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216104, -0.544389, 0.810519,
		0.812152, 0.360552, 0.458706,
		-0.541949, 0.757392, 0.364210,
		37.678841, 34.621414, 26.349424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244057, 34.263275, 26.814529>,  <38.058205, 34.091240, 26.094479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244057, 34.263275, 26.814529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882732, 34.430862, 26.777666>,  <37.665939, 34.531414, 26.755548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882732, 34.430862, 26.777666>,  <38.244057, 34.263275, 26.814529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882732, 34.430862, 26.777666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248080, -0.334919, 0.909003,
		0.349978, 0.843975, 0.406474,
		-0.903312, 0.418969, -0.092159,
		37.611740, 34.556553, 26.750019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063446, 34.611465, 27.464010>,  <38.244057, 34.263275, 26.814529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063446, 34.611465, 27.464010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707844, 34.549496, 27.291655>,  <37.494484, 34.512314, 27.188240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.707844, 34.549496, 27.291655>,  <38.063446, 34.611465, 27.464010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707844, 34.549496, 27.291655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346762, -0.386772, 0.854496,
		-0.299041, 0.909068, 0.290119,
		-0.889005, -0.154927, -0.430891,
		37.441143, 34.503017, 27.162388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573906, 34.910736, 27.896278>,  <38.063446, 34.611465, 27.464010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573906, 34.910736, 27.896278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361626, 34.657078, 27.671350>,  <37.234257, 34.504883, 27.536394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361626, 34.657078, 27.671350>,  <37.573906, 34.910736, 27.896278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361626, 34.657078, 27.671350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503074, -0.298259, 0.811146,
		-0.682106, 0.713369, -0.160737,
		-0.530705, -0.634150, -0.562321,
		37.202415, 34.466831, 27.502653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843323, 35.041771, 28.122963>,  <37.573906, 34.910736, 27.896278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843323, 35.041771, 28.122963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829269, 34.686256, 27.940176>,  <36.820835, 34.472946, 27.830503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829269, 34.686256, 27.940176>,  <36.843323, 35.041771, 28.122963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829269, 34.686256, 27.940176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642450, -0.330160, 0.691557,
		-0.765521, 0.317878, -0.559402,
		-0.035138, -0.888790, -0.456965,
		36.818729, 34.419621, 27.803087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157806, 34.811275, 28.190371>,  <36.843323, 35.041771, 28.122963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157806, 34.811275, 28.190371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381744, 34.485783, 28.127863>,  <36.516106, 34.290489, 28.090359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.381744, 34.485783, 28.127863>,  <36.157806, 34.811275, 28.190371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381744, 34.485783, 28.127863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486263, -0.475352, 0.733205,
		-0.670913, -0.334492, -0.661809,
		0.559843, -0.813730, -0.156269,
		36.549698, 34.241665, 28.080982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690277, 34.344070, 28.278267>,  <36.157806, 34.811275, 28.190371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690277, 34.344070, 28.278267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044403, 34.160488, 28.308155>,  <36.256878, 34.050339, 28.326088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.044403, 34.160488, 28.308155>,  <35.690277, 34.344070, 28.278267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044403, 34.160488, 28.308155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366587, -0.590019, 0.719369,
		-0.286071, -0.664257, -0.690598,
		0.885312, -0.458955, 0.074721,
		36.309998, 34.022800, 28.330570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563622, 33.602825, 28.462317>,  <35.690277, 34.344070, 28.278267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563622, 33.602825, 28.462317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.946342, 33.667633, 28.558882>,  <36.175976, 33.706516, 28.616821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.946342, 33.667633, 28.558882>,  <35.563622, 33.602825, 28.462317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946342, 33.667633, 28.558882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098545, -0.600463, 0.793557,
		0.273532, -0.783067, -0.558558,
		0.956802, 0.162021, 0.241413,
		36.233383, 33.716240, 28.631306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808414, 32.940823, 28.687826>,  <35.563622, 33.602825, 28.462317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808414, 32.940823, 28.687826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056602, 33.212749, 28.844217>,  <36.205517, 33.375904, 28.938051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056602, 33.212749, 28.844217>,  <35.808414, 32.940823, 28.687826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056602, 33.212749, 28.844217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160544, -0.377882, 0.911828,
		0.767621, -0.628532, -0.125324,
		0.620471, 0.679819, 0.390977,
		36.242744, 33.416695, 28.961510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036175, 32.571609, 29.242666>,  <35.808414, 32.940823, 28.687826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036175, 32.571609, 29.242666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172710, 32.937363, 29.329741>,  <36.254631, 33.156815, 29.381985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.172710, 32.937363, 29.329741>,  <36.036175, 32.571609, 29.242666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172710, 32.937363, 29.329741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071764, -0.256273, 0.963937,
		0.937196, -0.313410, -0.153096,
		0.341342, 0.914384, 0.217686,
		36.275112, 33.211678, 29.395046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728977, 32.532745, 29.495373>,  <36.036175, 32.571609, 29.242666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728977, 32.532745, 29.495373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563114, 32.869377, 29.633821>,  <36.463596, 33.071358, 29.716890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.563114, 32.869377, 29.633821>,  <36.728977, 32.532745, 29.495373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563114, 32.869377, 29.633821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219593, -0.276578, 0.935566,
		0.883086, 0.463941, -0.070122,
		-0.414653, 0.841584, 0.346121,
		36.438717, 33.121853, 29.737658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163013, 32.786324, 29.939789>,  <36.728977, 32.532745, 29.495373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163013, 32.786324, 29.939789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802128, 32.932026, 30.032154>,  <36.585594, 33.019447, 30.087574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.802128, 32.932026, 30.032154>,  <37.163013, 32.786324, 29.939789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802128, 32.932026, 30.032154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155559, -0.224523, 0.961972,
		0.402250, 0.903829, 0.145905,
		-0.902217, 0.364256, 0.230914,
		36.531464, 33.041302, 30.101429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327572, 33.082504, 30.523014>,  <37.163013, 32.786324, 29.939789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327572, 33.082504, 30.523014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928135, 33.101032, 30.533293>,  <36.688473, 33.112148, 30.539459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.928135, 33.101032, 30.533293>,  <37.327572, 33.082504, 30.523014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928135, 33.101032, 30.533293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018980, -0.140015, 0.989967,
		0.049455, 0.989065, 0.138939,
		-0.998596, 0.046322, 0.025697,
		36.628555, 33.114929, 30.541002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166836, 33.579155, 30.991102>,  <37.327572, 33.082504, 30.523014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166836, 33.579155, 30.991102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846783, 33.339237, 30.988914>,  <36.654751, 33.195286, 30.987602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.846783, 33.339237, 30.988914>,  <37.166836, 33.579155, 30.991102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846783, 33.339237, 30.988914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164792, 0.211053, 0.963483,
		-0.576737, 0.771819, -0.267713,
		-0.800136, -0.599793, -0.005468,
		36.606743, 33.159298, 30.987274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694412, 33.950901, 31.334568>,  <37.166836, 33.579155, 30.991102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694412, 33.950901, 31.334568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577190, 33.570004, 31.368845>,  <36.506855, 33.341465, 31.389412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577190, 33.570004, 31.368845>,  <36.694412, 33.950901, 31.334568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577190, 33.570004, 31.368845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002123, 0.090275, 0.995914,
		-0.956092, 0.291679, -0.028478,
		-0.293059, -0.952246, 0.085692,
		36.489273, 33.284328, 31.394552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262669, 34.034416, 31.831604>,  <36.694412, 33.950901, 31.334568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262669, 34.034416, 31.831604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348484, 33.646172, 31.787992>,  <36.399975, 33.413223, 31.761826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348484, 33.646172, 31.787992>,  <36.262669, 34.034416, 31.831604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348484, 33.646172, 31.787992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127119, -0.082929, 0.988415,
		-0.968408, -0.225911, 0.105592,
		0.214537, -0.970612, -0.109026,
		36.412846, 33.354988, 31.755285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926136, 33.673702, 32.387672>,  <36.262669, 34.034416, 31.831604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926136, 33.673702, 32.387672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.230762, 33.439171, 32.277222>,  <36.413536, 33.298454, 32.210953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.230762, 33.439171, 32.277222>,  <35.926136, 33.673702, 32.387672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230762, 33.439171, 32.277222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291617, -0.070479, 0.953935,
		-0.578776, -0.807005, 0.117308,
		0.761562, -0.586324, -0.276128,
		36.459232, 33.263275, 32.194382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891785, 33.180824, 32.846523>,  <35.926136, 33.673702, 32.387672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891785, 33.180824, 32.846523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257725, 33.123028, 32.695702>,  <36.477287, 33.088348, 32.605209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257725, 33.123028, 32.695702>,  <35.891785, 33.180824, 32.846523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257725, 33.123028, 32.695702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354876, -0.157803, 0.921500,
		-0.192650, -0.976842, -0.093089,
		0.914850, -0.144492, -0.377058,
		36.532181, 33.079681, 32.582584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131969, 32.683826, 33.174267>,  <35.891785, 33.180824, 32.846523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131969, 32.683826, 33.174267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475857, 32.826656, 33.028179>,  <36.682190, 32.912354, 32.940525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475857, 32.826656, 33.028179>,  <36.131969, 32.683826, 33.174267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475857, 32.826656, 33.028179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454271, -0.207654, 0.866324,
		0.233503, -0.910702, -0.340733,
		0.859717, 0.357074, -0.365218,
		36.733772, 32.933777, 32.918613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633801, 32.172871, 33.429287>,  <36.131969, 32.683826, 33.174267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633801, 32.172871, 33.429287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.831711, 32.506260, 33.330879>,  <36.950459, 32.706291, 33.271835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.831711, 32.506260, 33.330879>,  <36.633801, 32.172871, 33.429287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831711, 32.506260, 33.330879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579114, -0.105152, 0.808437,
		0.647939, -0.542467, -0.534701,
		0.494775, 0.833470, -0.246018,
		36.980145, 32.756302, 33.257072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313133, 31.961206, 33.475269>,  <36.633801, 32.172871, 33.429287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313133, 31.961206, 33.475269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286736, 32.356232, 33.532356>,  <37.270897, 32.593246, 33.566608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286736, 32.356232, 33.532356>,  <37.313133, 31.961206, 33.475269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286736, 32.356232, 33.532356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542450, -0.084537, 0.835824,
		0.837492, 0.132571, -0.530124,
		-0.065991, 0.987562, 0.142713,
		37.266937, 32.652500, 33.575169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967705, 32.097927, 33.712830>,  <37.313133, 31.961206, 33.475269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967705, 32.097927, 33.712830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723297, 32.397072, 33.816643>,  <37.576653, 32.576557, 33.878929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723297, 32.397072, 33.816643>,  <37.967705, 32.097927, 33.712830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723297, 32.397072, 33.816643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328432, -0.058809, 0.942695,
		0.720267, 0.661246, -0.209688,
		-0.611022, 0.747860, 0.259533,
		37.539989, 32.621429, 33.894501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309074, 31.458294, 34.020973>,  <37.967705, 32.097927, 33.712830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309074, 31.458294, 34.020973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574459, 31.263145, 34.247887>,  <38.733688, 31.146057, 34.384033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.574459, 31.263145, 34.247887>,  <38.309074, 31.458294, 34.020973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574459, 31.263145, 34.247887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693738, 0.117109, -0.710642,
		0.280267, 0.865026, 0.416151,
		0.663459, -0.487869, 0.567280,
		38.773499, 31.116785, 34.418072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986660, 31.829927, 34.371937>,  <38.309074, 31.458294, 34.020973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986660, 31.829927, 34.371937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.048672, 31.447548, 34.272236>,  <39.085880, 31.218121, 34.212414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.048672, 31.447548, 34.272236>,  <38.986660, 31.829927, 34.371937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048672, 31.447548, 34.272236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689014, 0.285437, -0.666173,
		0.707973, -0.068461, 0.702913,
		0.155030, -0.955949, -0.249252,
		39.095181, 31.160763, 34.197460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601643, 31.894184, 34.065559>,  <38.986660, 31.829927, 34.371937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601643, 31.894184, 34.065559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.469273, 31.539673, 33.935947>,  <39.389851, 31.326965, 33.858181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.469273, 31.539673, 33.935947>,  <39.601643, 31.894184, 34.065559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469273, 31.539673, 33.935947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538211, 0.104785, -0.836271,
		0.775122, -0.451144, 0.442329,
		-0.330929, -0.886278, -0.324032,
		39.369995, 31.273788, 33.838737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121708, 31.673496, 33.680641>,  <39.601643, 31.894184, 34.065559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121708, 31.673496, 33.680641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824623, 31.432629, 33.563492>,  <39.646374, 31.288107, 33.493202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824623, 31.432629, 33.563492>,  <40.121708, 31.673496, 33.680641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824623, 31.432629, 33.563492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462483, -0.145009, -0.874690,
		0.484245, -0.785087, 0.386193,
		-0.742709, -0.602171, -0.292870,
		39.601810, 31.251978, 33.475632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439640, 31.109161, 33.217178>,  <40.121708, 31.673496, 33.680641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439640, 31.109161, 33.217178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.049137, 31.101030, 33.130913>,  <39.814835, 31.096151, 33.079155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.049137, 31.101030, 33.130913>,  <40.439640, 31.109161, 33.217178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049137, 31.101030, 33.130913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204827, 0.237365, -0.949581,
		0.070495, -0.971208, -0.227566,
		-0.976256, -0.020329, -0.215663,
		39.756260, 31.094931, 33.066216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370464, 30.671009, 32.607086>,  <40.439640, 31.109161, 33.217178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370464, 30.671009, 32.607086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052624, 30.913450, 32.621227>,  <39.861919, 31.058914, 32.629711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052624, 30.913450, 32.621227>,  <40.370464, 30.671009, 32.607086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052624, 30.913450, 32.621227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095018, 0.181657, -0.978761,
		-0.599650, -0.774365, -0.201935,
		-0.794601, 0.606102, 0.035351,
		39.814243, 31.095280, 32.631832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057865, 30.475828, 32.017040>,  <40.370464, 30.671009, 32.607086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057865, 30.475828, 32.017040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.897320, 30.833864, 32.094727>,  <39.800991, 31.048687, 32.141338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.897320, 30.833864, 32.094727>,  <40.057865, 30.475828, 32.017040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897320, 30.833864, 32.094727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075648, 0.243713, -0.966893,
		-0.912790, -0.373383, -0.165530,
		-0.401363, 0.895092, 0.194213,
		39.776909, 31.102392, 32.152992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443169, 30.467323, 31.593294>,  <40.057865, 30.475828, 32.017040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443169, 30.467323, 31.593294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.568798, 30.837385, 31.678564>,  <39.644176, 31.059422, 31.729727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.568798, 30.837385, 31.678564>,  <39.443169, 30.467323, 31.593294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568798, 30.837385, 31.678564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075410, 0.248138, -0.965785,
		-0.946398, 0.287256, 0.147700,
		0.314077, 0.925155, 0.213175,
		39.663021, 31.114931, 31.742517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148853, 30.807175, 31.011438>,  <39.443169, 30.467323, 31.593294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148853, 30.807175, 31.011438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369968, 31.098709, 31.173040>,  <39.502640, 31.273630, 31.270002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.369968, 31.098709, 31.173040>,  <39.148853, 30.807175, 31.011438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369968, 31.098709, 31.173040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089004, 0.533681, -0.840989,
		-0.828553, 0.428934, 0.359884,
		0.552792, 0.728835, 0.404006,
		39.535805, 31.317360, 31.294243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778973, 31.594427, 30.988169>,  <39.148853, 30.807175, 31.011438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778973, 31.594427, 30.988169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177959, 31.618364, 31.003519>,  <39.417351, 31.632727, 31.012730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177959, 31.618364, 31.003519>,  <38.778973, 31.594427, 30.988169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177959, 31.618364, 31.003519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003070, 0.503049, -0.864252,
		-0.071026, 0.862184, 0.501592,
		0.997470, 0.059845, 0.038377,
		39.477200, 31.636318, 31.015032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849838, 32.189259, 30.756243>,  <38.778973, 31.594427, 30.988169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849838, 32.189259, 30.756243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215839, 32.031937, 30.720289>,  <39.435440, 31.937544, 30.698717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.215839, 32.031937, 30.720289>,  <38.849838, 32.189259, 30.756243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215839, 32.031937, 30.720289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094624, 0.425782, -0.899864,
		0.392192, 0.814874, 0.426808,
		0.915003, -0.393306, -0.089882,
		39.490341, 31.913944, 30.693325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267288, 32.708931, 30.443975>,  <38.849838, 32.189259, 30.756243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267288, 32.708931, 30.443975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431969, 32.355694, 30.353949>,  <39.530777, 32.143753, 30.299932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.431969, 32.355694, 30.353949>,  <39.267288, 32.708931, 30.443975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431969, 32.355694, 30.353949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017822, 0.254723, -0.966850,
		0.911145, 0.394041, 0.120608,
		0.411700, -0.883090, -0.225067,
		39.555477, 32.090767, 30.286428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939499, 32.771065, 30.095106>,  <39.267288, 32.708931, 30.443975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939499, 32.771065, 30.095106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831959, 32.400669, 29.989071>,  <39.767437, 32.178432, 29.925449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831959, 32.400669, 29.989071>,  <39.939499, 32.771065, 30.095106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831959, 32.400669, 29.989071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293304, 0.183443, -0.938254,
		0.917439, -0.329997, 0.222277,
		-0.268846, -0.925986, -0.265087,
		39.751305, 32.122871, 29.909544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544994, 32.550629, 29.734138>,  <39.939499, 32.771065, 30.095106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544994, 32.550629, 29.734138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227654, 32.324234, 29.644472>,  <40.037247, 32.188396, 29.590672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.227654, 32.324234, 29.644472>,  <40.544994, 32.550629, 29.734138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227654, 32.324234, 29.644472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247747, 0.036175, -0.968149,
		0.556067, -0.823621, 0.111522,
		-0.793354, -0.565985, -0.224165,
		39.989647, 32.154438, 29.577223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777973, 32.176155, 29.114117>,  <40.544994, 32.550629, 29.734138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777973, 32.176155, 29.114117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380043, 32.136780, 29.124224>,  <40.141285, 32.113155, 29.130287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.380043, 32.136780, 29.124224>,  <40.777973, 32.176155, 29.114117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380043, 32.136780, 29.124224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015893, -0.094861, -0.995364,
		0.100378, -0.990611, 0.092806,
		-0.994822, -0.098437, 0.025266,
		40.081596, 32.107250, 29.131804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722584, 31.758804, 28.520739>,  <40.777973, 32.176155, 29.114117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722584, 31.758804, 28.520739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.368130, 31.904562, 28.635265>,  <40.155457, 31.992016, 28.703981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.368130, 31.904562, 28.635265>,  <40.722584, 31.758804, 28.520739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368130, 31.904562, 28.635265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176483, 0.305925, -0.935555,
		-0.428503, -0.879560, -0.206782,
		-0.886137, 0.364395, 0.286318,
		40.102287, 32.013882, 28.721161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162052, 31.408569, 28.211405>,  <40.722584, 31.758804, 28.520739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162052, 31.408569, 28.211405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006966, 31.765408, 28.304226>,  <39.913914, 31.979509, 28.359919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006966, 31.765408, 28.304226>,  <40.162052, 31.408569, 28.211405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006966, 31.765408, 28.304226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045600, 0.232874, -0.971437,
		-0.920652, -0.387220, -0.049608,
		-0.387712, 0.892093, 0.232053,
		39.890652, 32.033035, 28.373842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615208, 31.468821, 27.668657>,  <40.162052, 31.408569, 28.211405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615208, 31.468821, 27.668657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684372, 31.840895, 27.798183>,  <39.725872, 32.064140, 27.875900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.684372, 31.840895, 27.798183>,  <39.615208, 31.468821, 27.668657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684372, 31.840895, 27.798183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111790, 0.345179, -0.931855,
		-0.978573, 0.124930, 0.163671,
		0.172912, 0.930185, 0.323817,
		39.736244, 32.119949, 27.895329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.718029, 32.586948, 27.488218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083885, 32.727226, 27.568659>,  <39.303398, 32.811394, 27.616924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.083885, 32.727226, 27.568659>,  <38.718029, 32.586948, 27.488218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083885, 32.727226, 27.568659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079584, 0.643922, -0.760941,
		-0.396351, 0.679985, 0.616868,
		0.914644, 0.350692, 0.201103,
		39.358276, 32.832436, 27.628990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706100, 33.377594, 27.434401>,  <38.718029, 32.586948, 27.488218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706100, 33.377594, 27.434401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088226, 33.270672, 27.383919>,  <39.317501, 33.206516, 27.353630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088226, 33.270672, 27.383919>,  <38.706100, 33.377594, 27.434401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088226, 33.270672, 27.383919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062662, 0.600361, -0.797270,
		0.288887, 0.753732, 0.590281,
		0.955310, -0.267309, -0.126206,
		39.374821, 33.190479, 27.346056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016876, 33.958691, 27.263260>,  <38.706100, 33.377594, 27.434401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016876, 33.958691, 27.263260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.256699, 33.666607, 27.132214>,  <39.400593, 33.491356, 27.053585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.256699, 33.666607, 27.132214>,  <39.016876, 33.958691, 27.263260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256699, 33.666607, 27.132214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150138, 0.504700, -0.850139,
		0.786127, 0.460514, 0.412226,
		0.599551, -0.730209, -0.327618,
		39.436565, 33.447544, 27.033928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518974, 34.341507, 26.970304>,  <39.016876, 33.958691, 27.263260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518974, 34.341507, 26.970304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601128, 33.991074, 26.795816>,  <39.650417, 33.780811, 26.691124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.601128, 33.991074, 26.795816>,  <39.518974, 34.341507, 26.970304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601128, 33.991074, 26.795816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329108, 0.481590, -0.812255,
		0.921687, 0.023258, 0.387237,
		0.205381, -0.876088, -0.436221,
		39.662743, 33.728249, 26.664949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232800, 34.377670, 26.650084>,  <39.518974, 34.341507, 26.970304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232800, 34.377670, 26.650084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.042686, 34.077801, 26.465870>,  <39.928619, 33.897881, 26.355343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.042686, 34.077801, 26.465870>,  <40.232800, 34.377670, 26.650084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042686, 34.077801, 26.465870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338136, 0.327594, -0.882239,
		0.812261, -0.575038, 0.097792,
		-0.475285, -0.749675, -0.460533,
		39.900101, 33.852898, 26.327709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615234, 34.144001, 26.051033>,  <40.232800, 34.377670, 26.650084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615234, 34.144001, 26.051033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.241318, 34.021244, 25.979496>,  <40.016968, 33.947590, 25.936573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.241318, 34.021244, 25.979496>,  <40.615234, 34.144001, 26.051033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241318, 34.021244, 25.979496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106649, 0.237767, -0.965450,
		0.338818, -0.921564, -0.189531,
		-0.934788, -0.306898, -0.178843,
		39.960880, 33.929176, 25.925842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679176, 33.893719, 25.436134>,  <40.615234, 34.144001, 26.051033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679176, 33.893719, 25.436134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285694, 33.959236, 25.465784>,  <40.049606, 33.998547, 25.483574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.285694, 33.959236, 25.465784>,  <40.679176, 33.893719, 25.436134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285694, 33.959236, 25.465784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002599, 0.399295, -0.916819,
		-0.179768, -0.902072, -0.392363,
		-0.983706, 0.163795, 0.074125,
		39.990582, 34.008373, 25.488022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395397, 33.545429, 24.810854>,  <40.679176, 33.893719, 25.436134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395397, 33.545429, 24.810854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.100956, 33.793121, 24.920179>,  <39.924290, 33.941738, 24.985775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.100956, 33.793121, 24.920179>,  <40.395397, 33.545429, 24.810854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100956, 33.793121, 24.920179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177299, 0.566092, -0.805050,
		-0.653233, -0.544143, -0.526493,
		-0.736106, 0.619232, 0.273315,
		39.880123, 33.978889, 25.002174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877670, 33.575619, 24.253498>,  <40.395397, 33.545429, 24.810854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877670, 33.575619, 24.253498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834999, 33.906567, 24.474070>,  <39.809395, 34.105137, 24.606413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834999, 33.906567, 24.474070>,  <39.877670, 33.575619, 24.253498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834999, 33.906567, 24.474070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010431, 0.555494, -0.831455,
		-0.994239, -0.082949, -0.067891,
		-0.106681, 0.827373, 0.551428,
		39.802994, 34.154778, 24.639498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482533, 33.922527, 23.850113>,  <39.877670, 33.575619, 24.253498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482533, 33.922527, 23.850113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657032, 34.188869, 24.092209>,  <39.761734, 34.348675, 24.237467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657032, 34.188869, 24.092209>,  <39.482533, 33.922527, 23.850113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657032, 34.188869, 24.092209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233376, 0.565878, -0.790770,
		-0.869033, 0.486224, 0.091471,
		0.436253, 0.665859, 0.605240,
		39.787907, 34.388626, 24.273781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516171, 34.444412, 23.435169>,  <39.482533, 33.922527, 23.850113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516171, 34.444412, 23.435169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785080, 34.565350, 23.705469>,  <39.946426, 34.637913, 23.867649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785080, 34.565350, 23.705469>,  <39.516171, 34.444412, 23.435169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785080, 34.565350, 23.705469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402562, 0.616751, -0.676433,
		-0.621285, 0.726779, 0.292913,
		0.672272, 0.302342, 0.675751,
		39.986763, 34.656052, 23.908195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486393, 35.183067, 23.435352>,  <39.516171, 34.444412, 23.435169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486393, 35.183067, 23.435352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844200, 35.077301, 23.579535>,  <40.058884, 35.013844, 23.666044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.844200, 35.077301, 23.579535>,  <39.486393, 35.183067, 23.435352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844200, 35.077301, 23.579535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437591, 0.682794, -0.585070,
		-0.091418, 0.681087, 0.726473,
		0.894515, -0.264412, 0.360457,
		40.112556, 34.997978, 23.687672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836849, 35.798889, 23.549311>,  <39.486393, 35.183067, 23.435352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836849, 35.798889, 23.549311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.110729, 35.507874, 23.532013>,  <40.275059, 35.333263, 23.521633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.110729, 35.507874, 23.532013>,  <39.836849, 35.798889, 23.549311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110729, 35.507874, 23.532013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644969, 0.632486, -0.428925,
		0.339413, 0.265792, 0.902304,
		0.684700, -0.727541, -0.043246,
		40.316139, 35.289612, 23.519039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466591, 36.118210, 23.626614>,  <39.836849, 35.798889, 23.549311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466591, 36.118210, 23.626614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591007, 35.766323, 23.482756>,  <40.665657, 35.555191, 23.396441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.591007, 35.766323, 23.482756>,  <40.466591, 36.118210, 23.626614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591007, 35.766323, 23.482756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626364, 0.474355, -0.618591,
		0.714786, -0.032858, 0.698571,
		0.311045, -0.879720, -0.359643,
		40.684322, 35.502407, 23.374863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152660, 36.205902, 23.597198>,  <40.466591, 36.118210, 23.626614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152660, 36.205902, 23.597198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.074547, 35.906116, 23.344162>,  <41.027679, 35.726246, 23.192341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.074547, 35.906116, 23.344162>,  <41.152660, 36.205902, 23.597198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074547, 35.906116, 23.344162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630180, 0.398346, -0.666478,
		0.751490, -0.528799, 0.394505,
		-0.195284, -0.749461, -0.632591,
		41.015961, 35.681278, 23.154385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788837, 36.013577, 23.356236>,  <41.152660, 36.205902, 23.597198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788837, 36.013577, 23.356236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.531483, 35.873901, 23.083727>,  <41.377071, 35.790096, 22.920221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.531483, 35.873901, 23.083727>,  <41.788837, 36.013577, 23.356236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531483, 35.873901, 23.083727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569284, 0.376760, -0.730731,
		0.511835, -0.857975, -0.043616,
		-0.643382, -0.349184, -0.681271,
		41.338467, 35.769146, 22.879345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188675, 35.703705, 22.899357>,  <41.788837, 36.013577, 23.356236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188675, 35.703705, 22.899357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.860836, 35.720512, 22.670797>,  <41.664135, 35.730598, 22.533661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.860836, 35.720512, 22.670797>,  <42.188675, 35.703705, 22.899357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860836, 35.720512, 22.670797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565557, 0.218969, -0.795109,
		0.091710, -0.974827, -0.203229,
		-0.819594, 0.042018, -0.571401,
		41.614956, 35.733116, 22.499376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392502, 35.411690, 22.332333>,  <42.188675, 35.703705, 22.899357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392502, 35.411690, 22.332333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.084614, 35.628239, 22.197014>,  <41.899879, 35.758167, 22.115822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.084614, 35.628239, 22.197014>,  <42.392502, 35.411690, 22.332333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084614, 35.628239, 22.197014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522330, 0.229428, -0.821300,
		-0.367014, -0.808875, -0.459370,
		-0.769722, 0.541372, -0.338297,
		41.853699, 35.790649, 22.095524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333984, 35.205444, 21.584450>,  <42.392502, 35.411690, 22.332333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333984, 35.205444, 21.584450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.131931, 35.548103, 21.626398>,  <42.010700, 35.753696, 21.651567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.131931, 35.548103, 21.626398>,  <42.333984, 35.205444, 21.584450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131931, 35.548103, 21.626398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453278, 0.366741, -0.812428,
		-0.734422, -0.362852, -0.573552,
		-0.505137, 0.856644, 0.104870,
		41.980389, 35.805096, 21.657860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997135, 35.375145, 20.892488>,  <42.333984, 35.205444, 21.584450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997135, 35.375145, 20.892488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.041740, 35.720299, 21.089666>,  <42.068504, 35.927391, 21.207973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.041740, 35.720299, 21.089666>,  <41.997135, 35.375145, 20.892488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041740, 35.720299, 21.089666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300347, 0.443575, -0.844413,
		-0.947289, 0.242218, -0.209700,
		0.111514, 0.862886, 0.492943,
		42.075195, 35.979164, 21.237549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604271, 35.856441, 20.448467>,  <41.997135, 35.375145, 20.892488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604271, 35.856441, 20.448467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.874596, 36.051949, 20.669149>,  <42.036793, 36.169254, 20.801558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.874596, 36.051949, 20.669149>,  <41.604271, 35.856441, 20.448467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874596, 36.051949, 20.669149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341114, 0.456123, -0.821945,
		-0.653387, 0.743677, 0.141529,
		0.675816, 0.488770, 0.551703,
		42.077339, 36.198578, 20.834660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571682, 36.608318, 20.507080>,  <41.604271, 35.856441, 20.448467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571682, 36.608318, 20.507080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.933636, 36.438976, 20.524746>,  <42.150810, 36.337372, 20.535345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.933636, 36.438976, 20.524746>,  <41.571682, 36.608318, 20.507080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.933636, 36.438976, 20.524746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283936, 0.523062, -0.803608,
		0.317109, 0.739715, 0.593518,
		0.904888, -0.423352, 0.044164,
		42.205101, 36.311970, 20.537994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764267, 36.837467, 20.352879>,  <41.571682, 36.608318, 20.507080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764267, 36.837467, 20.352879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.955120, 37.057972, 20.079105>,  <41.069633, 37.190277, 19.914841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.955120, 37.057972, 20.079105>,  <40.764267, 36.837467, 20.352879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955120, 37.057972, 20.079105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871273, 0.398642, -0.286301,
		0.115016, 0.732933, 0.670508,
		0.477132, 0.551266, -0.684435,
		41.098259, 37.223351, 19.873775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870502, 37.590500, 20.448746>,  <40.764267, 36.837467, 20.352879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870502, 37.590500, 20.448746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798954, 37.444927, 20.083111>,  <40.756023, 37.357586, 19.863729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798954, 37.444927, 20.083111>,  <40.870502, 37.590500, 20.448746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798954, 37.444927, 20.083111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957500, 0.278060, 0.076664,
		0.226272, 0.888953, -0.398200,
		-0.178874, -0.363929, -0.914089,
		40.745293, 37.335747, 19.808884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993298, 38.398396, 20.426340>,  <40.870502, 37.590500, 20.448746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993298, 38.398396, 20.426340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.753685, 38.718071, 20.406473>,  <40.609917, 38.909874, 20.394552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.753685, 38.718071, 20.406473>,  <40.993298, 38.398396, 20.426340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753685, 38.718071, 20.406473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536813, -0.354795, 0.765475,
		0.594134, 0.485205, 0.641545,
		-0.599030, 0.799185, -0.049668,
		40.573975, 38.957825, 20.391573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011986, 38.608601, 21.115574>,  <40.993298, 38.398396, 20.426340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011986, 38.608601, 21.115574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.693993, 38.793213, 20.958097>,  <40.503197, 38.903980, 20.863611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.693993, 38.793213, 20.958097>,  <41.011986, 38.608601, 21.115574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693993, 38.793213, 20.958097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562440, -0.317608, 0.763404,
		0.227297, 0.828319, 0.512077,
		-0.794982, 0.461532, -0.393689,
		40.455498, 38.931671, 20.839991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711452, 39.000195, 21.681692>,  <41.011986, 38.608601, 21.115574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711452, 39.000195, 21.681692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391140, 38.995987, 21.442144>,  <40.198952, 38.993462, 21.298416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391140, 38.995987, 21.442144>,  <40.711452, 39.000195, 21.681692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391140, 38.995987, 21.442144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552633, -0.372598, 0.745498,
		-0.230977, 0.927933, 0.292557,
		-0.800778, -0.010516, -0.598868,
		40.150906, 38.992832, 21.262484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245445, 39.175983, 22.061670>,  <40.711452, 39.000195, 21.681692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245445, 39.175983, 22.061670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.057034, 38.989269, 21.762272>,  <39.943989, 38.877239, 21.582634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.057034, 38.989269, 21.762272>,  <40.245445, 39.175983, 22.061670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057034, 38.989269, 21.762272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617174, -0.431865, 0.657714,
		-0.630262, 0.771752, -0.084669,
		-0.471027, -0.466788, -0.748494,
		39.915726, 38.849232, 21.537724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505871, 39.241947, 22.142397>,  <40.245445, 39.175983, 22.061670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505871, 39.241947, 22.142397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545925, 38.904270, 21.931759>,  <39.569958, 38.701664, 21.805376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545925, 38.904270, 21.931759>,  <39.505871, 39.241947, 22.142397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545925, 38.904270, 21.931759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579586, -0.479683, 0.658775,
		-0.808735, 0.239239, -0.537320,
		0.100139, -0.844197, -0.526596,
		39.575966, 38.651012, 21.773781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766975, 39.000740, 21.976883>,  <39.505871, 39.241947, 22.142397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766975, 39.000740, 21.976883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.049004, 38.718067, 22.000423>,  <39.218220, 38.548462, 22.014547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.049004, 38.718067, 22.000423>,  <38.766975, 39.000740, 21.976883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049004, 38.718067, 22.000423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486501, -0.421671, 0.765187,
		-0.515934, -0.568142, -0.641113,
		0.705073, -0.706688, 0.058848,
		39.260525, 38.506062, 22.018078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405514, 38.491737, 22.223795>,  <38.766975, 39.000740, 21.976883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405514, 38.491737, 22.223795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775360, 38.352222, 22.285019>,  <38.997269, 38.268513, 22.321753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775360, 38.352222, 22.285019>,  <38.405514, 38.491737, 22.223795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775360, 38.352222, 22.285019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273981, -0.329876, 0.903392,
		-0.264602, -0.877228, -0.400571,
		0.924619, -0.348788, 0.153058,
		39.052746, 38.247585, 22.330936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311932, 37.781895, 22.552961>,  <38.405514, 38.491737, 22.223795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311932, 37.781895, 22.552961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682461, 37.898361, 22.648592>,  <38.904778, 37.968243, 22.705971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682461, 37.898361, 22.648592>,  <38.311932, 37.781895, 22.552961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682461, 37.898361, 22.648592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047206, -0.539881, 0.840417,
		0.373773, -0.789779, -0.486356,
		0.926318, 0.291166, 0.239075,
		38.960358, 37.985710, 22.720314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542725, 37.176613, 22.765541>,  <38.311932, 37.781895, 22.552961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542725, 37.176613, 22.765541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800770, 37.452457, 22.897152>,  <38.955597, 37.617966, 22.976118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800770, 37.452457, 22.897152>,  <38.542725, 37.176613, 22.765541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800770, 37.452457, 22.897152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160632, -0.543397, 0.823964,
		0.747008, -0.478701, -0.461328,
		0.645117, 0.689612, 0.329028,
		38.994305, 37.659340, 22.995861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164783, 36.829617, 22.881212>,  <38.542725, 37.176613, 22.765541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164783, 36.829617, 22.881212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117287, 37.156559, 23.106716>,  <39.088787, 37.352726, 23.242020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117287, 37.156559, 23.106716>,  <39.164783, 36.829617, 22.881212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117287, 37.156559, 23.106716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021130, -0.569729, 0.821561,
		0.992701, 0.085640, 0.084921,
		-0.118741, 0.817358, 0.563761,
		39.081665, 37.401768, 23.275845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558136, 36.612041, 23.515558>,  <39.164783, 36.829617, 22.881212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558136, 36.612041, 23.515558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319012, 36.920525, 23.603065>,  <39.175537, 37.105614, 23.655571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.319012, 36.920525, 23.603065>,  <39.558136, 36.612041, 23.515558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319012, 36.920525, 23.603065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319884, -0.479731, 0.817027,
		0.735047, 0.418448, 0.533486,
		-0.597813, 0.771206, 0.218770,
		39.139668, 37.151886, 23.668697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774937, 36.698299, 24.215702>,  <39.558136, 36.612041, 23.515558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774937, 36.698299, 24.215702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425968, 36.889801, 24.176369>,  <39.216587, 37.004704, 24.152769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425968, 36.889801, 24.176369>,  <39.774937, 36.698299, 24.215702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425968, 36.889801, 24.176369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289905, -0.344927, 0.892737,
		0.393486, 0.807353, 0.439717,
		-0.872424, 0.478756, -0.098332,
		39.164242, 37.033428, 24.146870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573513, 37.051525, 24.865557>,  <39.774937, 36.698299, 24.215702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573513, 37.051525, 24.865557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224316, 37.018013, 24.673367>,  <39.014797, 36.997906, 24.558052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.224316, 37.018013, 24.673367>,  <39.573513, 37.051525, 24.865557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224316, 37.018013, 24.673367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401533, -0.435738, 0.805545,
		-0.276854, 0.896165, 0.346756,
		-0.872996, -0.083785, -0.480476,
		38.962418, 36.992878, 24.529224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055222, 37.315792, 25.275051>,  <39.573513, 37.051525, 24.865557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055222, 37.315792, 25.275051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866821, 37.068043, 25.023802>,  <38.753780, 36.919392, 24.873053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866821, 37.068043, 25.023802>,  <39.055222, 37.315792, 25.275051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866821, 37.068043, 25.023802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349766, -0.522562, 0.777556,
		-0.809830, 0.585922, 0.029490,
		-0.470998, -0.619374, -0.628122,
		38.725521, 36.882229, 24.835365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401737, 37.219524, 25.543829>,  <39.055222, 37.315792, 25.275051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401737, 37.219524, 25.543829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410744, 36.907715, 25.293442>,  <38.416145, 36.720631, 25.143209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410744, 36.907715, 25.293442>,  <38.401737, 37.219524, 25.543829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410744, 36.907715, 25.293442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519499, -0.544079, 0.658861,
		-0.854174, 0.310358, -0.417210,
		0.022513, -0.779523, -0.625969,
		38.417496, 36.673859, 25.105652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653053, 36.902763, 25.508013>,  <38.401737, 37.219524, 25.543829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653053, 36.902763, 25.508013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904285, 36.624084, 25.369368>,  <38.055023, 36.456879, 25.286180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904285, 36.624084, 25.369368>,  <37.653053, 36.902763, 25.508013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904285, 36.624084, 25.369368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506320, -0.704130, 0.497836,
		-0.590898, -0.137183, -0.794997,
		0.628076, -0.696693, -0.346611,
		38.092709, 36.415077, 25.265385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259483, 36.425102, 25.313965>,  <37.653053, 36.902763, 25.508013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259483, 36.425102, 25.313965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.616066, 36.263870, 25.396740>,  <37.830017, 36.167130, 25.446405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.616066, 36.263870, 25.396740>,  <37.259483, 36.425102, 25.313965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616066, 36.263870, 25.396740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452343, -0.765334, 0.457875,
		-0.026185, -0.501784, -0.864596,
		0.891460, -0.403083, 0.206938,
		37.883503, 36.142944, 25.458822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013817, 35.662861, 25.322086>,  <37.259483, 36.425102, 25.313965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013817, 35.662861, 25.322086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379353, 35.686798, 25.482744>,  <37.598675, 35.701160, 25.579138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379353, 35.686798, 25.482744>,  <37.013817, 35.662861, 25.322086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379353, 35.686798, 25.482744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219272, -0.759769, 0.612103,
		0.341787, -0.647433, -0.681184,
		0.913839, 0.059844, 0.401644,
		37.653503, 35.704750, 25.603237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330441, 34.988785, 25.226137>,  <37.013817, 35.662861, 25.322086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330441, 34.988785, 25.226137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525593, 35.160187, 25.530334>,  <37.642685, 35.263027, 25.712852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.525593, 35.160187, 25.530334>,  <37.330441, 34.988785, 25.226137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525593, 35.160187, 25.530334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167626, -0.809013, 0.563382,
		0.856664, -0.402342, -0.322874,
		0.487882, 0.428507, 0.760495,
		37.671959, 35.288738, 25.758484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705334, 34.434372, 25.523872>,  <37.330441, 34.988785, 25.226137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705334, 34.434372, 25.523872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674397, 34.719891, 25.802299>,  <37.655834, 34.891201, 25.969357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674397, 34.719891, 25.802299>,  <37.705334, 34.434372, 25.523872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674397, 34.719891, 25.802299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142835, -0.698890, 0.700822,
		0.986720, -0.045222, 0.156007,
		-0.077339, 0.713798, 0.696068,
		37.651196, 34.934029, 26.011120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.058430, 30.896259, 30.135395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927017, 31.272213, 30.172667>,  <39.848167, 31.497786, 30.195030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.927017, 31.272213, 30.172667>,  <40.058430, 30.896259, 30.135395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927017, 31.272213, 30.172667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105469, -0.061531, 0.992517,
		0.938585, 0.335904, -0.078914,
		-0.328535, 0.939884, 0.093180,
		39.828457, 31.554178, 30.200621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582977, 31.335381, 30.458088>,  <40.058430, 30.896259, 30.135395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582977, 31.335381, 30.458088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256741, 31.542114, 30.562162>,  <40.061001, 31.666155, 30.624607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.256741, 31.542114, 30.562162>,  <40.582977, 31.335381, 30.458088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256741, 31.542114, 30.562162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241543, -0.104514, 0.964746,
		0.525806, 0.849683, -0.039597,
		-0.815589, 0.516833, 0.260188,
		40.012062, 31.697165, 30.640219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732849, 31.779671, 31.009693>,  <40.582977, 31.335381, 30.458088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732849, 31.779671, 31.009693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337326, 31.720333, 31.016109>,  <40.100014, 31.684731, 31.019960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337326, 31.720333, 31.016109>,  <40.732849, 31.779671, 31.009693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337326, 31.720333, 31.016109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058321, -0.285291, 0.956665,
		-0.137336, 0.946892, 0.290749,
		-0.988806, -0.148342, 0.016043,
		40.040684, 31.675831, 31.020922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470409, 32.141800, 31.688435>,  <40.732849, 31.779671, 31.009693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470409, 32.141800, 31.688435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.201733, 31.872169, 31.565498>,  <40.040527, 31.710392, 31.491735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.201733, 31.872169, 31.565498>,  <40.470409, 32.141800, 31.688435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201733, 31.872169, 31.565498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214862, -0.219775, 0.951595,
		-0.708993, 0.705211, 0.002787,
		-0.671687, -0.674075, -0.307342,
		40.000225, 31.669947, 31.473295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932659, 32.322014, 32.109581>,  <40.470409, 32.141800, 31.688435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932659, 32.322014, 32.109581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872608, 31.950373, 31.974384>,  <39.836578, 31.727388, 31.893267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.872608, 31.950373, 31.974384>,  <39.932659, 32.322014, 32.109581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872608, 31.950373, 31.974384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475158, -0.231984, 0.848768,
		-0.866998, 0.288025, -0.406641,
		-0.150132, -0.929099, -0.337987,
		39.827568, 31.671642, 31.872988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194942, 32.276604, 32.381573>,  <39.932659, 32.322014, 32.109581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194942, 32.276604, 32.381573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.392872, 31.934423, 32.320442>,  <39.511631, 31.729116, 32.283764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.392872, 31.934423, 32.320442>,  <39.194942, 32.276604, 32.381573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392872, 31.934423, 32.320442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464788, -0.409134, 0.785227,
		-0.734246, -0.317520, -0.600052,
		0.494827, -0.855447, -0.152825,
		39.541321, 31.677790, 32.274593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670006, 31.720282, 32.504585>,  <39.194942, 32.276604, 32.381573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670006, 31.720282, 32.504585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.021530, 31.533262, 32.542725>,  <39.232445, 31.421051, 32.565609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.021530, 31.533262, 32.542725>,  <38.670006, 31.720282, 32.504585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021530, 31.533262, 32.542725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341563, -0.476841, 0.809912,
		-0.333207, -0.744326, -0.578750,
		0.878810, -0.467548, 0.095348,
		39.285172, 31.392998, 32.571327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486099, 31.118555, 32.912277>,  <38.670006, 31.720282, 32.504585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486099, 31.118555, 32.912277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.884121, 31.140827, 32.945183>,  <39.122932, 31.154190, 32.964924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.884121, 31.140827, 32.945183>,  <38.486099, 31.118555, 32.912277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884121, 31.140827, 32.945183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064465, -0.268059, 0.961243,
		0.075572, -0.961792, -0.263144,
		0.995055, 0.055680, 0.082260,
		39.182636, 31.157530, 32.969860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762684, 30.456940, 33.019238>,  <38.486099, 31.118555, 32.912277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762684, 30.456940, 33.019238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.032703, 30.708424, 33.173656>,  <39.194714, 30.859314, 33.266308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.032703, 30.708424, 33.173656>,  <38.762684, 30.456940, 33.019238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032703, 30.708424, 33.173656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161245, -0.384880, 0.908773,
		0.719936, -0.675714, -0.158437,
		0.675050, 0.628711, 0.386044,
		39.235218, 30.897038, 33.289471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168690, 30.002234, 33.520634>,  <38.762684, 30.456940, 33.019238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168690, 30.002234, 33.520634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233330, 30.384390, 33.619522>,  <39.272114, 30.613684, 33.678856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233330, 30.384390, 33.619522>,  <39.168690, 30.002234, 33.520634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233330, 30.384390, 33.619522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025003, -0.246468, 0.968828,
		0.986539, -0.162745, -0.015942,
		0.161601, 0.955389, 0.247219,
		39.281811, 30.671007, 33.693687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572643, 30.001379, 34.067039>,  <39.168690, 30.002234, 33.520634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572643, 30.001379, 34.067039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391968, 30.354918, 34.115700>,  <39.283562, 30.567039, 34.144894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391968, 30.354918, 34.115700>,  <39.572643, 30.001379, 34.067039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391968, 30.354918, 34.115700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305868, -0.281493, 0.909509,
		0.838108, 0.373603, 0.397486,
		-0.451685, 0.883845, 0.121648,
		39.256462, 30.620071, 34.152195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671535, 30.259470, 34.904060>,  <39.572643, 30.001379, 34.067039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671535, 30.259470, 34.904060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376354, 30.470995, 34.736355>,  <39.199245, 30.597910, 34.635731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376354, 30.470995, 34.736355>,  <39.671535, 30.259470, 34.904060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376354, 30.470995, 34.736355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506587, -0.023605, 0.861866,
		0.445870, 0.848409, 0.285309,
		-0.737950, 0.528814, -0.419268,
		39.154968, 30.629639, 34.610573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592262, 30.983799, 35.145824>,  <39.671535, 30.259470, 34.904060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592262, 30.983799, 35.145824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259396, 30.797298, 35.025745>,  <39.059677, 30.685398, 34.953697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.259396, 30.797298, 35.025745>,  <39.592262, 30.983799, 35.145824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259396, 30.797298, 35.025745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448870, 0.248497, 0.858350,
		-0.325608, 0.849035, -0.416075,
		-0.832163, -0.466250, -0.300194,
		39.009747, 30.657423, 34.935688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442429, 31.739601, 35.472286>,  <39.592262, 30.983799, 35.145824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442429, 31.739601, 35.472286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.320175, 32.084682, 35.311123>,  <39.246822, 32.291729, 35.214424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.320175, 32.084682, 35.311123>,  <39.442429, 31.739601, 35.472286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320175, 32.084682, 35.311123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659323, 0.113532, 0.743239,
		0.686935, 0.492806, 0.534100,
		-0.305635, 0.862701, -0.402907,
		39.228485, 32.343494, 35.190250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688183, 32.248993, 35.988918>,  <39.442429, 31.739601, 35.472286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688183, 32.248993, 35.988918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.030170, 32.419498, 36.107121>,  <40.235363, 32.521801, 36.178043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.030170, 32.419498, 36.107121>,  <39.688183, 32.248993, 35.988918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030170, 32.419498, 36.107121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062109, 0.481496, -0.874245,
		-0.514949, 0.765805, 0.385188,
		0.854968, 0.426268, 0.295510,
		40.286659, 32.547379, 36.195774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494102, 32.879025, 35.965763>,  <39.688183, 32.248993, 35.988918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494102, 32.879025, 35.965763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.893116, 32.863956, 35.942062>,  <40.132523, 32.854916, 35.927841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.893116, 32.863956, 35.942062>,  <39.494102, 32.879025, 35.965763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893116, 32.863956, 35.942062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044140, 0.319775, -0.946465,
		0.054603, 0.946744, 0.317323,
		0.997532, -0.037673, -0.059250,
		40.192375, 32.852654, 35.924286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632004, 33.399319, 35.518753>,  <39.494102, 32.879025, 35.965763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632004, 33.399319, 35.518753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967735, 33.183220, 35.542995>,  <40.169174, 33.053562, 35.557541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967735, 33.183220, 35.542995>,  <39.632004, 33.399319, 35.518753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967735, 33.183220, 35.542995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270143, 0.317731, -0.908883,
		0.471760, 0.779220, 0.412622,
		0.839324, -0.540242, 0.060608,
		40.219532, 33.021149, 35.561176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171741, 33.869122, 35.450607>,  <39.632004, 33.399319, 35.518753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171741, 33.869122, 35.450607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309097, 33.509644, 35.341480>,  <40.391510, 33.293957, 35.276005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.309097, 33.509644, 35.341480>,  <40.171741, 33.869122, 35.450607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309097, 33.509644, 35.341480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298130, 0.379760, -0.875729,
		0.890620, 0.219378, 0.398333,
		0.343387, -0.898696, -0.272819,
		40.412113, 33.240036, 35.259636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812492, 34.005856, 35.170395>,  <40.171741, 33.869122, 35.450607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812492, 34.005856, 35.170395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.685234, 33.654449, 35.027847>,  <40.608879, 33.443607, 34.942318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.685234, 33.654449, 35.027847>,  <40.812492, 34.005856, 35.170395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685234, 33.654449, 35.027847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248962, 0.285288, -0.925542,
		0.914769, -0.383178, 0.127954,
		-0.318144, -0.878513, -0.356369,
		40.589790, 33.390896, 34.920937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314346, 33.800255, 34.713863>,  <40.812492, 34.005856, 35.170395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314346, 33.800255, 34.713863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.975166, 33.614601, 34.611446>,  <40.771656, 33.503208, 34.549995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.975166, 33.614601, 34.611446>,  <41.314346, 33.800255, 34.713863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975166, 33.614601, 34.611446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238958, 0.096458, -0.966227,
		0.473153, -0.880499, 0.029116,
		-0.847954, -0.464131, -0.256042,
		40.720779, 33.475361, 34.534634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430588, 33.271481, 34.144573>,  <41.314346, 33.800255, 34.713863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430588, 33.271481, 34.144573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033073, 33.306179, 34.116676>,  <40.794563, 33.326996, 34.099937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033073, 33.306179, 34.116676>,  <41.430588, 33.271481, 34.144573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033073, 33.306179, 34.116676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085295, 0.190928, -0.977891,
		-0.071510, -0.977764, -0.197141,
		-0.993786, 0.086744, -0.069745,
		40.734936, 33.332203, 34.095753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286217, 32.940800, 33.469040>,  <41.430588, 33.271481, 34.144573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286217, 32.940800, 33.469040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956093, 33.147263, 33.560642>,  <40.758018, 33.271141, 33.615604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956093, 33.147263, 33.560642>,  <41.286217, 32.940800, 33.469040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956093, 33.147263, 33.560642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111312, 0.248887, -0.962115,
		-0.553600, -0.819534, -0.147955,
		-0.825310, 0.516158, 0.229008,
		40.708500, 33.302109, 33.629345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933113, 32.847149, 32.914436>,  <41.286217, 32.940800, 33.469040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933113, 32.847149, 32.914436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.729561, 33.150925, 33.076572>,  <40.607430, 33.333191, 33.173855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.729561, 33.150925, 33.076572>,  <40.933113, 32.847149, 32.914436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729561, 33.150925, 33.076572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205780, 0.349897, -0.913907,
		-0.835880, -0.548481, -0.021779,
		-0.508881, 0.759435, 0.405338,
		40.576897, 33.378754, 33.198174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229149, 32.806847, 32.521469>,  <40.933113, 32.847149, 32.914436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229149, 32.806847, 32.521469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.288036, 33.170376, 32.677605>,  <40.323368, 33.388493, 32.771286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.288036, 33.170376, 32.677605>,  <40.229149, 32.806847, 32.521469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288036, 33.170376, 32.677605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178784, 0.412589, -0.893200,
		-0.972812, 0.061708, 0.223224,
		0.147217, 0.908825, 0.390339,
		40.332203, 33.443024, 32.794704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636021, 33.269901, 32.220650>,  <40.229149, 32.806847, 32.521469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636021, 33.269901, 32.220650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.926151, 33.519196, 32.337597>,  <40.100231, 33.668770, 32.407764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.926151, 33.519196, 32.337597>,  <39.636021, 33.269901, 32.220650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926151, 33.519196, 32.337597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294984, 0.665125, -0.685998,
		-0.621999, 0.411329, 0.666277,
		0.725328, 0.623232, 0.292372,
		40.143749, 33.706165, 32.425308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268299, 33.871658, 32.221294>,  <39.636021, 33.269901, 32.220650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268299, 33.871658, 32.221294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.655563, 33.971279, 32.211212>,  <39.887920, 34.031052, 32.205162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.655563, 33.971279, 32.211212>,  <39.268299, 33.871658, 32.221294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655563, 33.971279, 32.211212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165223, 0.560133, -0.811759,
		-0.188053, 0.790078, 0.583448,
		0.968162, 0.249053, -0.025204,
		39.946011, 34.045994, 32.203651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317066, 34.646465, 32.160202>,  <39.268299, 33.871658, 32.221294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317066, 34.646465, 32.160202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650036, 34.476540, 32.017879>,  <39.849819, 34.374584, 31.932486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.650036, 34.476540, 32.017879>,  <39.317066, 34.646465, 32.160202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650036, 34.476540, 32.017879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079854, 0.543428, -0.835649,
		0.548352, 0.724029, 0.418441,
		0.832426, -0.424815, -0.355806,
		39.899765, 34.349094, 31.911139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622089, 35.206558, 31.881020>,  <39.317066, 34.646465, 32.160202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622089, 35.206558, 31.881020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810249, 34.887184, 31.730700>,  <39.923145, 34.695560, 31.640507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810249, 34.887184, 31.730700>,  <39.622089, 35.206558, 31.881020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810249, 34.887184, 31.730700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042217, 0.445735, -0.894169,
		0.881441, 0.404755, 0.243383,
		0.470404, -0.798432, -0.375802,
		39.951370, 34.647655, 31.617958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849358, 35.665054, 32.399250>,  <39.622089, 35.206558, 31.881020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849358, 35.665054, 32.399250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628952, 35.997795, 32.425797>,  <39.496708, 36.197441, 32.441723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628952, 35.997795, 32.425797>,  <39.849358, 35.665054, 32.399250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628952, 35.997795, 32.425797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589495, -0.444297, 0.674608,
		0.590659, 0.332599, 0.735187,
		-0.551015, 0.831852, 0.066363,
		39.463646, 36.247353, 32.445705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796684, 35.956219, 33.132557>,  <39.849358, 35.665054, 32.399250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796684, 35.956219, 33.132557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.471115, 36.083668, 32.938232>,  <39.275772, 36.160137, 32.821640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.471115, 36.083668, 32.938232>,  <39.796684, 35.956219, 33.132557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471115, 36.083668, 32.938232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566645, -0.250801, 0.784864,
		0.128236, 0.914099, 0.384679,
		-0.813922, 0.318624, -0.485808,
		39.226940, 36.179256, 32.792488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501846, 36.361500, 33.645226>,  <39.796684, 35.956219, 33.132557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501846, 36.361500, 33.645226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201286, 36.297749, 33.389099>,  <39.020950, 36.259499, 33.235424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201286, 36.297749, 33.389099>,  <39.501846, 36.361500, 33.645226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201286, 36.297749, 33.389099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607850, -0.210392, 0.765672,
		-0.256750, 0.964538, 0.061208,
		-0.751397, -0.159381, -0.640313,
		38.975868, 36.249935, 33.197006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935043, 36.800701, 33.819115>,  <39.501846, 36.361500, 33.645226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935043, 36.800701, 33.819115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768517, 36.510979, 33.599274>,  <38.668602, 36.337143, 33.467369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768517, 36.510979, 33.599274>,  <38.935043, 36.800701, 33.819115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768517, 36.510979, 33.599274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638309, -0.197638, 0.743977,
		-0.647490, 0.660543, -0.380052,
		-0.416316, -0.724308, -0.549599,
		38.643623, 36.293686, 33.434395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197830, 36.918854, 33.847782>,  <38.935043, 36.800701, 33.819115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197830, 36.918854, 33.847782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.211922, 36.541405, 33.716129>,  <38.220379, 36.314934, 33.637138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.211922, 36.541405, 33.716129>,  <38.197830, 36.918854, 33.847782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211922, 36.541405, 33.716129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780465, -0.231680, 0.580689,
		-0.624206, 0.236416, -0.744630,
		0.035232, -0.943627, -0.329131,
		38.222492, 36.258316, 33.617390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469585, 36.872055, 33.873898>,  <38.197830, 36.918854, 33.847782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469585, 36.872055, 33.873898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.649010, 36.514568, 33.877361>,  <37.756664, 36.300076, 33.879440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.649010, 36.514568, 33.877361>,  <37.469585, 36.872055, 33.873898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649010, 36.514568, 33.877361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723761, -0.357538, 0.590201,
		-0.524373, -0.271007, -0.807210,
		0.448557, -0.893712, 0.008661,
		37.783577, 36.246456, 33.879959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924824, 36.415554, 33.758621>,  <37.469585, 36.872055, 33.873898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924824, 36.415554, 33.758621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.215981, 36.207218, 33.937012>,  <37.390675, 36.082218, 34.044044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.215981, 36.207218, 33.937012>,  <36.924824, 36.415554, 33.758621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215981, 36.207218, 33.937012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665645, -0.380627, 0.641903,
		-0.164576, -0.764101, -0.623750,
		0.727895, -0.520839, 0.445978,
		37.434349, 36.050964, 34.070805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688091, 35.756622, 33.725204>,  <36.924824, 36.415554, 33.758621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688091, 35.756622, 33.725204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.952602, 35.806824, 34.021030>,  <37.111309, 35.836945, 34.198524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.952602, 35.806824, 34.021030>,  <36.688091, 35.756622, 33.725204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952602, 35.806824, 34.021030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662434, -0.364905, 0.654236,
		0.351981, -0.922547, -0.158167,
		0.661279, 0.125504, 0.739566,
		37.150986, 35.844475, 34.242901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457989, 35.272053, 34.112534>,  <36.688091, 35.756622, 33.725204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457989, 35.272053, 34.112534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.711498, 35.468094, 34.351910>,  <36.863605, 35.585720, 34.495537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.711498, 35.468094, 34.351910>,  <36.457989, 35.272053, 34.112534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711498, 35.468094, 34.351910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466105, -0.375456, 0.801111,
		0.617314, -0.786660, -0.009516,
		0.633775, 0.490102, 0.598440,
		36.901630, 35.615124, 34.531441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794338, 34.822422, 34.642757>,  <36.457989, 35.272053, 34.112534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794338, 34.822422, 34.642757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.786594, 35.189770, 34.800861>,  <36.781948, 35.410179, 34.895725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.786594, 35.189770, 34.800861>,  <36.794338, 34.822422, 34.642757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786594, 35.189770, 34.800861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544029, -0.341362, 0.766488,
		0.838843, -0.200196, 0.506225,
		-0.019358, 0.918365, 0.395262,
		36.780788, 35.465279, 34.919441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636707, 34.645767, 35.284435>,  <36.794338, 34.822422, 34.642757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636707, 34.645767, 35.284435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599697, 35.043011, 35.313183>,  <36.577492, 35.281357, 35.330429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.599697, 35.043011, 35.313183>,  <36.636707, 34.645767, 35.284435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599697, 35.043011, 35.313183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607272, -0.113484, 0.786347,
		0.789087, 0.029119, 0.613590,
		-0.092530, 0.993113, 0.071865,
		36.571938, 35.340946, 35.334743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600437, 34.939766, 36.024109>,  <36.636707, 34.645767, 35.284435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600437, 34.939766, 36.024109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445099, 35.224407, 35.789909>,  <36.351898, 35.395191, 35.649391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.445099, 35.224407, 35.789909>,  <36.600437, 34.939766, 36.024109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445099, 35.224407, 35.789909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722241, 0.159574, 0.672981,
		0.572327, 0.684218, 0.451981,
		-0.388341, 0.711605, -0.585499,
		36.328598, 35.437889, 35.614258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.383816, 37.302647, 30.228725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038837, 37.431164, 30.072285>,  <41.831852, 37.508274, 29.978420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038837, 37.431164, 30.072285>,  <42.383816, 37.302647, 30.228725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038837, 37.431164, 30.072285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478235, -0.264190, 0.837553,
		0.165777, 0.909381, 0.381503,
		-0.862444, 0.321295, -0.391101,
		41.780106, 37.527554, 29.954954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083714, 37.582355, 30.817106>,  <42.383816, 37.302647, 30.228725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083714, 37.582355, 30.817106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778187, 37.569168, 30.559271>,  <41.594872, 37.561256, 30.404570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778187, 37.569168, 30.559271>,  <42.083714, 37.582355, 30.817106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778187, 37.569168, 30.559271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620572, -0.236984, 0.747482,
		-0.177397, 0.970954, 0.160556,
		-0.763820, -0.032964, -0.644587,
		41.549042, 37.559280, 30.365894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666527, 37.961147, 31.182381>,  <42.083714, 37.582355, 30.817106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666527, 37.961147, 31.182381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463707, 37.736309, 30.921013>,  <41.342014, 37.601406, 30.764193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463707, 37.736309, 30.921013>,  <41.666527, 37.961147, 31.182381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463707, 37.736309, 30.921013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677582, -0.208605, 0.705243,
		-0.532717, 0.800336, -0.275090,
		-0.507046, -0.562091, -0.653421,
		41.311592, 37.567680, 30.724987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973331, 38.236389, 31.142868>,  <41.666527, 37.961147, 31.182381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973331, 38.236389, 31.142868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957218, 37.865921, 30.992889>,  <40.947552, 37.643639, 30.902903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957218, 37.865921, 30.992889>,  <40.973331, 38.236389, 31.142868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957218, 37.865921, 30.992889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778620, -0.206080, 0.592690,
		-0.626201, 0.315817, -0.712834,
		-0.040281, -0.926170, -0.374949,
		40.945133, 37.588070, 30.880405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259705, 38.137882, 31.052952>,  <40.973331, 38.236389, 31.142868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259705, 38.137882, 31.052952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409397, 37.766998, 31.059160>,  <40.499210, 37.544468, 31.062885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409397, 37.766998, 31.059160>,  <40.259705, 38.137882, 31.052952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409397, 37.766998, 31.059160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794167, -0.311801, 0.521611,
		-0.478803, -0.207526, -0.853042,
		0.374228, -0.927207, 0.015519,
		40.521664, 37.488834, 31.063816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655396, 37.824989, 31.083027>,  <40.259705, 38.137882, 31.052952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655396, 37.824989, 31.083027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923889, 37.540527, 31.166643>,  <40.084988, 37.369850, 31.216814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923889, 37.540527, 31.166643>,  <39.655396, 37.824989, 31.083027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923889, 37.540527, 31.166643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671270, -0.463587, 0.578346,
		-0.314384, -0.528532, -0.788553,
		0.671237, -0.711155, 0.209043,
		40.125259, 37.327179, 31.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476376, 37.099564, 30.819527>,  <39.655396, 37.824989, 31.083027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476376, 37.099564, 30.819527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714630, 37.067833, 31.139259>,  <39.857582, 37.048794, 31.331099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714630, 37.067833, 31.139259>,  <39.476376, 37.099564, 30.819527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714630, 37.067833, 31.139259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744103, -0.429297, 0.511873,
		0.302544, -0.899672, -0.314733,
		0.595632, -0.079330, 0.799330,
		39.893318, 37.044033, 31.379059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619133, 36.351631, 30.971184>,  <39.476376, 37.099564, 30.819527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619133, 36.351631, 30.971184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667488, 36.580444, 31.295692>,  <39.696499, 36.717731, 31.490398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667488, 36.580444, 31.295692>,  <39.619133, 36.351631, 30.971184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667488, 36.580444, 31.295692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619903, -0.594815, 0.511777,
		0.775311, -0.564776, 0.282703,
		0.120884, 0.572035, 0.811273,
		39.703754, 36.752056, 31.539074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593002, 35.877022, 31.537609>,  <39.619133, 36.351631, 30.971184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593002, 35.877022, 31.537609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578747, 36.190788, 31.785292>,  <39.570194, 36.379047, 31.933901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578747, 36.190788, 31.785292>,  <39.593002, 35.877022, 31.537609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578747, 36.190788, 31.785292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584622, -0.518886, 0.623679,
		0.810523, -0.339772, 0.477082,
		-0.035642, 0.784419, 0.619207,
		39.568054, 36.426113, 31.971054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261761, 35.490925, 31.582922>,  <39.593002, 35.877022, 31.537609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261761, 35.490925, 31.582922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204769, 35.124214, 31.433674>,  <40.170574, 34.904186, 31.344126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204769, 35.124214, 31.433674>,  <40.261761, 35.490925, 31.582922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204769, 35.124214, 31.433674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144468, 0.353666, -0.924148,
		0.979198, -0.185575, 0.082055,
		-0.142479, -0.916778, -0.373118,
		40.162025, 34.849182, 31.321739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747864, 35.342628, 31.083069>,  <40.261761, 35.490925, 31.582922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747864, 35.342628, 31.083069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485039, 35.063370, 30.969332>,  <40.327343, 34.895813, 30.901089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485039, 35.063370, 30.969332>,  <40.747864, 35.342628, 31.083069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485039, 35.063370, 30.969332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132810, 0.264087, -0.955311,
		0.742041, -0.665467, -0.080801,
		-0.657067, -0.698149, -0.284344,
		40.287918, 34.853924, 30.884029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218296, 34.964886, 30.596542>,  <40.747864, 35.342628, 31.083069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218296, 34.964886, 30.596542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836662, 34.869629, 30.523867>,  <40.607681, 34.812477, 30.480261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836662, 34.869629, 30.523867>,  <41.218296, 34.964886, 30.596542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836662, 34.869629, 30.523867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153991, 0.130316, -0.979441,
		0.256922, -0.962448, -0.087661,
		-0.954085, -0.238141, -0.181689,
		40.550438, 34.798187, 30.469360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195187, 34.481670, 30.021347>,  <41.218296, 34.964886, 30.596542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195187, 34.481670, 30.021347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819176, 34.618111, 30.022339>,  <40.593571, 34.699974, 30.022934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819176, 34.618111, 30.022339>,  <41.195187, 34.481670, 30.021347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819176, 34.618111, 30.022339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089702, 0.254210, -0.962980,
		-0.329103, -0.905002, -0.269560,
		-0.940024, 0.341100, 0.002481,
		40.537170, 34.720440, 30.023083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878525, 34.173096, 29.447872>,  <41.195187, 34.481670, 30.021347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878525, 34.173096, 29.447872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663528, 34.502251, 29.521584>,  <40.534531, 34.699745, 29.565811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663528, 34.502251, 29.521584>,  <40.878525, 34.173096, 29.447872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663528, 34.502251, 29.521584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064842, 0.177552, -0.981973,
		-0.840772, -0.539751, -0.042075,
		-0.537491, 0.822887, 0.184279,
		40.502281, 34.749119, 29.576868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213470, 34.169655, 28.908247>,  <40.878525, 34.173096, 29.447872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213470, 34.169655, 28.908247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278782, 34.543858, 29.033569>,  <40.317970, 34.768379, 29.108763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278782, 34.543858, 29.033569>,  <40.213470, 34.169655, 28.908247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278782, 34.543858, 29.033569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090911, 0.330481, -0.939424,
		-0.982383, 0.124904, 0.139008,
		0.163278, 0.935511, 0.313304,
		40.327766, 34.824512, 29.127560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879971, 34.520981, 28.427223>,  <40.213470, 34.169655, 28.908247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879971, 34.520981, 28.427223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104729, 34.799862, 28.605291>,  <40.239582, 34.967190, 28.712133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104729, 34.799862, 28.605291>,  <39.879971, 34.520981, 28.427223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104729, 34.799862, 28.605291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292540, 0.335902, -0.895316,
		-0.773755, 0.633303, -0.015220,
		0.561893, 0.697207, 0.445172,
		40.273296, 35.009026, 28.738844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790455, 35.038960, 28.110310>,  <39.879971, 34.520981, 28.427223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790455, 35.038960, 28.110310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151161, 35.079197, 28.278454>,  <40.367584, 35.103340, 28.379339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151161, 35.079197, 28.278454>,  <39.790455, 35.038960, 28.110310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151161, 35.079197, 28.278454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389472, 0.232633, -0.891175,
		-0.187436, 0.967348, 0.170602,
		0.901765, 0.100593, 0.420359,
		40.421692, 35.109375, 28.404562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151733, 35.428162, 27.584175>,  <39.790455, 35.038960, 28.110310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151733, 35.428162, 27.584175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470577, 35.423302, 27.825659>,  <40.661884, 35.420383, 27.970549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470577, 35.423302, 27.825659>,  <40.151733, 35.428162, 27.584175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470577, 35.423302, 27.825659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595493, 0.181402, -0.782612,
		-0.100003, 0.983334, 0.151834,
		0.797112, -0.012152, 0.603709,
		40.709709, 35.419655, 28.006771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471977, 36.082077, 27.477711>,  <40.151733, 35.428162, 27.584175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471977, 36.082077, 27.477711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718090, 35.794201, 27.606380>,  <40.865757, 35.621475, 27.683582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718090, 35.794201, 27.606380>,  <40.471977, 36.082077, 27.477711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718090, 35.794201, 27.606380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615548, 0.183702, -0.766391,
		0.492471, 0.669553, 0.556032,
		0.615283, -0.719689, 0.321674,
		40.902676, 35.578293, 27.702883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125767, 36.337997, 27.334724>,  <40.471977, 36.082077, 27.477711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125767, 36.337997, 27.334724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187962, 35.948147, 27.399120>,  <41.225281, 35.714237, 27.437757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187962, 35.948147, 27.399120>,  <41.125767, 36.337997, 27.334724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187962, 35.948147, 27.399120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760326, 0.014035, -0.649390,
		0.630656, 0.223379, 0.743219,
		0.155491, -0.974631, 0.160990,
		41.234608, 35.655758, 27.447418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806103, 36.234547, 27.687803>,  <41.125767, 36.337997, 27.334724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806103, 36.234547, 27.687803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702755, 35.911644, 27.475548>,  <41.640747, 35.717903, 27.348194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702755, 35.911644, 27.475548>,  <41.806103, 36.234547, 27.687803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702755, 35.911644, 27.475548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773024, 0.156666, -0.614728,
		0.579378, -0.569023, 0.583553,
		-0.258371, -0.807260, -0.530637,
		41.625244, 35.669464, 27.316357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449097, 36.123589, 27.444799>,  <41.806103, 36.234547, 27.687803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449097, 36.123589, 27.444799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218872, 35.878464, 27.228210>,  <42.080738, 35.731388, 27.098257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218872, 35.878464, 27.228210>,  <42.449097, 36.123589, 27.444799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218872, 35.878464, 27.228210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608959, 0.120755, -0.783956,
		0.545805, -0.780947, 0.303677,
		-0.575558, -0.612813, -0.541473,
		42.046204, 35.694618, 27.065769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762585, 35.498737, 27.319290>,  <42.449097, 36.123589, 27.444799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762585, 35.498737, 27.319290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513748, 35.610954, 27.026909>,  <42.364445, 35.678284, 26.851480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513748, 35.610954, 27.026909>,  <42.762585, 35.498737, 27.319290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513748, 35.610954, 27.026909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777974, 0.116491, -0.617402,
		-0.088057, -0.952747, -0.290723,
		-0.622094, 0.280541, -0.730955,
		42.327118, 35.695118, 26.807623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.528904, 38.752834, 25.852583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898438, 38.733490, 26.004471>,  <37.120159, 38.721882, 26.095604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898438, 38.733490, 26.004471>,  <36.528904, 38.752834, 25.852583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898438, 38.733490, 26.004471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360113, -0.446138, 0.819317,
		0.129784, -0.893657, -0.429574,
		0.923837, -0.048361, 0.379719,
		37.175591, 38.718983, 26.118387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712048, 38.044994, 26.069626>,  <36.528904, 38.752834, 25.852583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712048, 38.044994, 26.069626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.932663, 38.286751, 26.299589>,  <37.065033, 38.431805, 26.437567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.932663, 38.286751, 26.299589>,  <36.712048, 38.044994, 26.069626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932663, 38.286751, 26.299589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283479, -0.512388, 0.810616,
		0.784502, -0.610061, -0.111271,
		0.551540, 0.604387, 0.574909,
		37.098125, 38.468067, 26.472061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011761, 37.551712, 26.446974>,  <36.712048, 38.044994, 26.069626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011761, 37.551712, 26.446974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.082565, 37.890461, 26.647562>,  <37.125050, 38.093712, 26.767916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.082565, 37.890461, 26.647562>,  <37.011761, 37.551712, 26.446974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082565, 37.890461, 26.647562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271115, -0.447848, 0.852015,
		0.946130, -0.286776, 0.150324,
		0.177015, 0.846872, 0.501472,
		37.135670, 38.144524, 26.798004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394440, 37.377693, 26.980591>,  <37.011761, 37.551712, 26.446974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394440, 37.377693, 26.980591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230961, 37.722176, 27.101448>,  <37.132874, 37.928864, 27.173962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230961, 37.722176, 27.101448>,  <37.394440, 37.377693, 26.980591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230961, 37.722176, 27.101448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196197, -0.406216, 0.892466,
		0.891332, 0.305470, 0.334986,
		-0.408698, 0.861207, 0.302141,
		37.108353, 37.980537, 27.192091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699162, 37.556469, 27.576849>,  <37.394440, 37.377693, 26.980591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699162, 37.556469, 27.576849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335033, 37.718884, 27.608953>,  <37.116554, 37.816334, 27.628216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.335033, 37.718884, 27.608953>,  <37.699162, 37.556469, 27.576849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335033, 37.718884, 27.608953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083153, -0.369382, 0.925550,
		0.405457, 0.835876, 0.370021,
		-0.910324, 0.406039, 0.080263,
		37.061935, 37.840694, 27.633032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621445, 37.659740, 28.347042>,  <37.699162, 37.556469, 27.576849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621445, 37.659740, 28.347042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.254704, 37.716625, 28.197824>,  <37.034660, 37.750755, 28.108294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.254704, 37.716625, 28.197824>,  <37.621445, 37.659740, 28.347042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254704, 37.716625, 28.197824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398614, -0.274175, 0.875177,
		0.022181, 0.951106, 0.308065,
		-0.916851, 0.142212, -0.373042,
		36.979649, 37.759289, 28.085911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152523, 37.856285, 28.948153>,  <37.621445, 37.659740, 28.347042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152523, 37.856285, 28.948153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890743, 37.735760, 28.670763>,  <36.733677, 37.663445, 28.504330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890743, 37.735760, 28.670763>,  <37.152523, 37.856285, 28.948153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890743, 37.735760, 28.670763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531250, -0.469385, 0.705302,
		-0.538027, 0.829991, 0.147113,
		-0.654447, -0.301318, -0.693474,
		36.694408, 37.645363, 28.462721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463490, 37.956692, 29.219353>,  <37.152523, 37.856285, 28.948153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463490, 37.956692, 29.219353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.406734, 37.695385, 28.921865>,  <36.372681, 37.538601, 28.743374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.406734, 37.695385, 28.921865>,  <36.463490, 37.956692, 29.219353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406734, 37.695385, 28.921865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606217, -0.536600, 0.586993,
		-0.782539, 0.534143, -0.319881,
		-0.141890, -0.653262, -0.743717,
		36.364166, 37.499405, 28.698750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857170, 37.663120, 29.365583>,  <36.463490, 37.956692, 29.219353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857170, 37.663120, 29.365583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.995445, 37.405254, 29.092848>,  <36.078411, 37.250534, 28.929207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.995445, 37.405254, 29.092848>,  <35.857170, 37.663120, 29.365583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995445, 37.405254, 29.092848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453100, -0.750990, 0.480327,
		-0.821705, 0.142896, -0.551708,
		0.345690, -0.644666, -0.681839,
		36.099152, 37.211853, 28.888296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304298, 37.249176, 29.088226>,  <35.857170, 37.663120, 29.365583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304298, 37.249176, 29.088226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648144, 37.046608, 29.061075>,  <35.854450, 36.925068, 29.044785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.648144, 37.046608, 29.061075>,  <35.304298, 37.249176, 29.088226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648144, 37.046608, 29.061075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389319, -0.735216, 0.554877,
		-0.330905, -0.450553, -0.829159,
		0.859612, -0.506419, -0.067878,
		35.906029, 36.894684, 29.040712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068752, 36.669243, 29.108534>,  <35.304298, 37.249176, 29.088226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068752, 36.669243, 29.108534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.455875, 36.576031, 29.146578>,  <35.688148, 36.520103, 29.169405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.455875, 36.576031, 29.146578>,  <35.068752, 36.669243, 29.108534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455875, 36.576031, 29.146578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247952, -0.817848, 0.519274,
		-0.043220, -0.526140, -0.849299,
		0.967808, -0.233028, 0.095110,
		35.746220, 36.506123, 29.175110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256863, 35.902710, 28.968214>,  <35.068752, 36.669243, 29.108534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256863, 35.902710, 28.968214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.546707, 36.033257, 29.211008>,  <35.720612, 36.111584, 29.356684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.546707, 36.033257, 29.211008>,  <35.256863, 35.902710, 28.968214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546707, 36.033257, 29.211008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175657, -0.764202, 0.620596,
		0.666400, -0.556309, -0.496418,
		0.724607, 0.326366, 0.606984,
		35.764088, 36.131165, 29.393103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455715, 35.303425, 29.231802>,  <35.256863, 35.902710, 28.968214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455715, 35.303425, 29.231802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.586910, 35.592697, 29.474926>,  <35.665627, 35.766262, 29.620800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.586910, 35.592697, 29.474926>,  <35.455715, 35.303425, 29.231802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586910, 35.592697, 29.474926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112991, -0.608750, 0.785274,
		0.937899, -0.326240, -0.117952,
		0.327992, 0.723180, 0.607809,
		35.685307, 35.809650, 29.657269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943630, 34.956425, 29.608553>,  <35.455715, 35.303425, 29.231802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943630, 34.956425, 29.608553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844799, 35.282040, 29.818811>,  <35.785500, 35.477409, 29.944967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844799, 35.282040, 29.818811>,  <35.943630, 34.956425, 29.608553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844799, 35.282040, 29.818811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202691, -0.573881, 0.793459,
		0.947561, 0.089499, 0.306788,
		-0.247073, 0.814034, 0.525646,
		35.770676, 35.526249, 29.976505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515522, 34.450459, 29.700499>,  <35.943630, 34.956425, 29.608553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515522, 34.450459, 29.700499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.464088, 34.063114, 29.614956>,  <36.433228, 33.830708, 29.563629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.464088, 34.063114, 29.614956>,  <36.515522, 34.450459, 29.700499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464088, 34.063114, 29.614956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261472, 0.174912, -0.949230,
		0.956607, -0.177976, 0.230709,
		-0.128587, -0.968365, -0.213858,
		36.425514, 33.772606, 29.550798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162502, 34.221729, 29.439932>,  <36.515522, 34.450459, 29.700499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162502, 34.221729, 29.439932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878605, 33.978027, 29.298466>,  <36.708267, 33.831806, 29.213585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878605, 33.978027, 29.298466>,  <37.162502, 34.221729, 29.439932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878605, 33.978027, 29.298466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338946, 0.144777, -0.929600,
		0.617563, -0.779649, 0.103750,
		-0.709740, -0.609252, -0.353668,
		36.665684, 33.795250, 29.192366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527580, 33.741642, 28.907011>,  <37.162502, 34.221729, 29.439932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527580, 33.741642, 28.907011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.134811, 33.734718, 28.831608>,  <36.899151, 33.730564, 28.786366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.134811, 33.734718, 28.831608>,  <37.527580, 33.741642, 28.907011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134811, 33.734718, 28.831608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181289, 0.200670, -0.962739,
		0.054496, -0.979506, -0.193904,
		-0.981919, -0.017313, -0.188509,
		36.840237, 33.729523, 28.775055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533405, 33.559444, 28.293676>,  <37.527580, 33.741642, 28.907011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533405, 33.559444, 28.293676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139557, 33.629223, 28.297369>,  <36.903248, 33.671089, 28.299583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139557, 33.629223, 28.297369>,  <37.533405, 33.559444, 28.293676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139557, 33.629223, 28.297369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029972, 0.220750, -0.974870,
		-0.172100, -0.959603, -0.222584,
		-0.984624, 0.174446, 0.009230,
		36.844170, 33.681557, 28.300138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305515, 33.250614, 27.776344>,  <37.533405, 33.559444, 28.293676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305515, 33.250614, 27.776344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049454, 33.541786, 27.874588>,  <36.895817, 33.716488, 27.933535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.049454, 33.541786, 27.874588>,  <37.305515, 33.250614, 27.776344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049454, 33.541786, 27.874588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053048, 0.277056, -0.959388,
		-0.766412, -0.627187, -0.138744,
		-0.640156, 0.727926, 0.245610,
		36.857407, 33.760162, 27.948271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860405, 33.220188, 27.228851>,  <37.305515, 33.250614, 27.776344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860405, 33.220188, 27.228851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868904, 33.577053, 27.409336>,  <36.874004, 33.791172, 27.517628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868904, 33.577053, 27.409336>,  <36.860405, 33.220188, 27.228851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868904, 33.577053, 27.409336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265201, 0.430120, -0.862940,
		-0.963959, 0.137994, -0.227465,
		0.021244, 0.892163, 0.451214,
		36.875278, 33.844704, 27.544701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422516, 33.710018, 26.761812>,  <36.860405, 33.220188, 27.228851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422516, 33.710018, 26.761812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659691, 33.937893, 26.989454>,  <36.801994, 34.074619, 27.126040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.659691, 33.937893, 26.989454>,  <36.422516, 33.710018, 26.761812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659691, 33.937893, 26.989454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199323, 0.580919, -0.789179,
		-0.780191, 0.581368, 0.230896,
		0.592935, 0.569688, 0.569107,
		36.837570, 34.108799, 27.160187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340427, 34.348385, 26.546528>,  <36.422516, 33.710018, 26.761812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340427, 34.348385, 26.546528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668629, 34.413239, 26.765795>,  <36.865551, 34.452148, 26.897354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.668629, 34.413239, 26.765795>,  <36.340427, 34.348385, 26.546528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668629, 34.413239, 26.765795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270886, 0.734152, -0.622608,
		-0.503383, 0.659343, 0.558455,
		0.820504, 0.162132, 0.548167,
		36.914780, 34.461880, 26.930244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424789, 35.054554, 26.769934>,  <36.340427, 34.348385, 26.546528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424789, 35.054554, 26.769934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.796974, 34.908360, 26.780245>,  <37.020283, 34.820641, 26.786430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.796974, 34.908360, 26.780245>,  <36.424789, 35.054554, 26.769934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796974, 34.908360, 26.780245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317982, 0.770558, -0.552384,
		0.182028, 0.522167, 0.833191,
		0.930459, -0.365489, 0.025776,
		37.076111, 34.798714, 26.787977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907635, 35.650661, 26.800476>,  <36.424789, 35.054554, 26.769934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907635, 35.650661, 26.800476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160320, 35.360584, 26.690910>,  <37.311932, 35.186539, 26.625170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160320, 35.360584, 26.690910>,  <36.907635, 35.650661, 26.800476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160320, 35.360584, 26.690910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503125, 0.652368, -0.566817,
		0.589745, 0.220253, 0.776974,
		0.631716, -0.725193, -0.273916,
		37.349834, 35.143028, 26.608736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568081, 35.791733, 26.958342>,  <36.907635, 35.650661, 26.800476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568081, 35.791733, 26.958342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619549, 35.513126, 26.675980>,  <37.650429, 35.345963, 26.506563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619549, 35.513126, 26.675980>,  <37.568081, 35.791733, 26.958342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619549, 35.513126, 26.675980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490252, 0.663434, -0.565250,
		0.862030, -0.273339, 0.426837,
		0.128674, -0.696521, -0.705905,
		37.658150, 35.304169, 26.464209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303005, 35.923901, 26.737204>,  <37.568081, 35.791733, 26.958342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303005, 35.923901, 26.737204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110989, 35.727844, 26.446184>,  <37.995781, 35.610210, 26.271572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.110989, 35.727844, 26.446184>,  <38.303005, 35.923901, 26.737204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110989, 35.727844, 26.446184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388296, 0.624965, -0.677233,
		0.786632, -0.607601, -0.109686,
		-0.480037, -0.490143, -0.727547,
		37.966976, 35.580803, 26.227921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803741, 35.718044, 26.200617>,  <38.303005, 35.923901, 26.737204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803741, 35.718044, 26.200617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458473, 35.700020, 25.999458>,  <38.251312, 35.689205, 25.878763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458473, 35.700020, 25.999458>,  <38.803741, 35.718044, 26.200617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458473, 35.700020, 25.999458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351575, 0.661231, -0.662698,
		0.362395, -0.748827, -0.554912,
		-0.863171, -0.045065, -0.502896,
		38.199520, 35.686501, 25.848589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994560, 35.503448, 25.622452>,  <38.803741, 35.718044, 26.200617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994560, 35.503448, 25.622452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648746, 35.695312, 25.562456>,  <38.441257, 35.810432, 25.526459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648746, 35.695312, 25.562456>,  <38.994560, 35.503448, 25.622452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648746, 35.695312, 25.562456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378182, 0.424361, -0.822737,
		-0.330989, -0.768010, -0.548277,
		-0.864538, 0.479665, -0.149988,
		38.389385, 35.839211, 25.517460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006893, 34.842541, 25.420860>,  <38.994560, 35.503448, 25.622452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006893, 34.842541, 25.420860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272049, 34.575611, 25.285061>,  <39.431141, 34.415455, 25.203581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.272049, 34.575611, 25.285061>,  <39.006893, 34.842541, 25.420860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272049, 34.575611, 25.285061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047054, -0.489673, 0.870636,
		-0.747238, -0.561159, -0.355999,
		0.662888, -0.667323, -0.339498,
		39.470917, 34.375416, 25.183212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723347, 34.189613, 25.625643>,  <39.006893, 34.842541, 25.420860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723347, 34.189613, 25.625643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114540, 34.118702, 25.581604>,  <39.349255, 34.076157, 25.555182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114540, 34.118702, 25.581604>,  <38.723347, 34.189613, 25.625643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114540, 34.118702, 25.581604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017985, -0.454013, 0.890813,
		-0.207907, -0.873181, -0.440829,
		0.977983, -0.177278, -0.110097,
		39.407936, 34.065517, 25.548574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794853, 33.387676, 25.622307>,  <38.723347, 34.189613, 25.625643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794853, 33.387676, 25.622307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151947, 33.554775, 25.689854>,  <39.366203, 33.655033, 25.730381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151947, 33.554775, 25.689854>,  <38.794853, 33.387676, 25.622307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151947, 33.554775, 25.689854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005416, -0.384697, 0.923027,
		0.450551, -0.823103, -0.345695,
		0.892734, 0.417743, 0.168868,
		39.419765, 33.680099, 25.740515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175671, 32.877075, 25.804737>,  <38.794853, 33.387676, 25.622307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175671, 32.877075, 25.804737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.372303, 33.190102, 25.957542>,  <39.490284, 33.377918, 26.049225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.372303, 33.190102, 25.957542>,  <39.175671, 32.877075, 25.804737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372303, 33.190102, 25.957542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014302, -0.431361, 0.902066,
		0.870712, -0.448906, -0.200858,
		0.491585, 0.782567, 0.382012,
		39.519779, 33.424873, 26.072145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783932, 32.553383, 26.171509>,  <39.175671, 32.877075, 25.804737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783932, 32.553383, 26.171509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.745918, 32.923344, 26.318764>,  <39.723110, 33.145321, 26.407116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.745918, 32.923344, 26.318764>,  <39.783932, 32.553383, 26.171509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745918, 32.923344, 26.318764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113233, -0.357367, 0.927074,
		0.989013, 0.129788, -0.070768,
		-0.095033, 0.924902, 0.368137,
		39.717407, 33.200813, 26.429205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370239, 32.641285, 26.654829>,  <39.783932, 32.553383, 26.171509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370239, 32.641285, 26.654829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070946, 32.880413, 26.769896>,  <39.891369, 33.023891, 26.838936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070946, 32.880413, 26.769896>,  <40.370239, 32.641285, 26.654829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070946, 32.880413, 26.769896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019126, -0.452861, 0.891376,
		0.663157, 0.661458, 0.350281,
		-0.748236, 0.597821, 0.287667,
		39.846474, 33.059761, 26.856195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622746, 32.888233, 27.343910>,  <40.370239, 32.641285, 26.654829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622746, 32.888233, 27.343910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227680, 32.945999, 27.319715>,  <39.990639, 32.980659, 27.305199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227680, 32.945999, 27.319715>,  <40.622746, 32.888233, 27.343910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227680, 32.945999, 27.319715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113334, -0.392862, 0.912587,
		0.108032, 0.908186, 0.404385,
		-0.987666, 0.144419, -0.060487,
		39.931381, 32.989326, 27.301569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489281, 33.228916, 27.949797>,  <40.622746, 32.888233, 27.343910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489281, 33.228916, 27.949797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.158409, 33.053978, 27.808657>,  <39.959885, 32.949013, 27.723972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.158409, 33.053978, 27.808657>,  <40.489281, 33.228916, 27.949797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158409, 33.053978, 27.808657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196328, -0.363426, 0.910701,
		-0.526528, 0.822587, 0.214754,
		-0.827178, -0.437348, -0.352851,
		39.910255, 32.922775, 27.702801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928635, 33.330132, 28.422724>,  <40.489281, 33.228916, 27.949797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928635, 33.330132, 28.422724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.865913, 32.975002, 28.249668>,  <39.828281, 32.761925, 28.145834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.865913, 32.975002, 28.249668>,  <39.928635, 33.330132, 28.422724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865913, 32.975002, 28.249668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272827, -0.382074, 0.882941,
		-0.949199, 0.256481, -0.182314,
		-0.156800, -0.887827, -0.432640,
		39.818874, 32.708652, 28.119877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347382, 33.109356, 28.765949>,  <39.928635, 33.330132, 28.422724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347382, 33.109356, 28.765949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517963, 32.776505, 28.624130>,  <39.620312, 32.576794, 28.539040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517963, 32.776505, 28.624130>,  <39.347382, 33.109356, 28.765949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517963, 32.776505, 28.624130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050269, -0.413174, 0.909264,
		-0.903111, -0.369937, -0.218030,
		0.426455, -0.832127, -0.354545,
		39.645901, 32.526867, 28.517767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906284, 32.500782, 28.969765>,  <39.347382, 33.109356, 28.765949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906284, 32.500782, 28.969765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267357, 32.344975, 28.896610>,  <39.484001, 32.251492, 28.852716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.267357, 32.344975, 28.896610>,  <38.906284, 32.500782, 28.969765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267357, 32.344975, 28.896610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025992, -0.473586, 0.880364,
		-0.429525, -0.789934, -0.437622,
		0.902681, -0.389512, -0.182885,
		39.538162, 32.228119, 28.841743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811562, 31.834822, 29.067358>,  <38.906284, 32.500782, 28.969765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811562, 31.834822, 29.067358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197060, 31.928814, 29.117933>,  <39.428356, 31.985209, 29.148279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197060, 31.928814, 29.117933>,  <38.811562, 31.834822, 29.067358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197060, 31.928814, 29.117933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020337, -0.537150, 0.843241,
		0.266061, -0.810095, -0.522453,
		0.963741, 0.234979, 0.126440,
		39.486183, 31.999308, 29.155865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075382, 31.235357, 29.268633>,  <38.811562, 31.834822, 29.067358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075382, 31.235357, 29.268633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348083, 31.511881, 29.364386>,  <39.511703, 31.677795, 29.421837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.348083, 31.511881, 29.364386>,  <39.075382, 31.235357, 29.268633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348083, 31.511881, 29.364386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083092, -0.398262, 0.913500,
		0.726846, -0.602893, -0.328959,
		0.681755, 0.691308, 0.239380,
		39.552608, 31.719273, 29.436199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446281, 30.890913, 29.739931>,  <39.075382, 31.235357, 29.268633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446281, 30.890913, 29.739931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575153, 31.265360, 29.796331>,  <39.652477, 31.490028, 29.830172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575153, 31.265360, 29.796331>,  <39.446281, 30.890913, 29.739931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575153, 31.265360, 29.796331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195018, -0.211378, 0.957751,
		0.926373, -0.281073, -0.250662,
		0.322182, 0.936118, 0.141001,
		39.671806, 31.546196, 29.838631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.228767, 35.719135, 26.776974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.884731, 35.794003, 26.587145>,  <42.678310, 35.838921, 26.473248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.884731, 35.794003, 26.587145>,  <43.228767, 35.719135, 26.776974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884731, 35.794003, 26.587145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464902, -0.095434, -0.880204,
		-0.210035, -0.977681, -0.004933,
		-0.860088, 0.187166, -0.474570,
		42.626705, 35.850151, 26.444775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181091, 35.110294, 26.336216>,  <43.228767, 35.719135, 26.776974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181091, 35.110294, 26.336216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.962307, 35.408684, 26.184235>,  <42.831036, 35.587715, 26.093046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.962307, 35.408684, 26.184235>,  <43.181091, 35.110294, 26.336216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962307, 35.408684, 26.184235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403555, -0.162703, -0.900373,
		-0.733470, -0.645800, -0.212047,
		-0.546960, 0.745969, -0.379954,
		42.798218, 35.632473, 26.070248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159851, 34.902477, 25.552263>,  <43.181091, 35.110294, 26.336216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159851, 34.902477, 25.552263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.077492, 35.288990, 25.614113>,  <43.028076, 35.520897, 25.651222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.077492, 35.288990, 25.614113>,  <43.159851, 34.902477, 25.552263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077492, 35.288990, 25.614113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361354, 0.221918, -0.905636,
		-0.909412, -0.130592, -0.394861,
		-0.205895, 0.966281, 0.154626,
		43.015724, 35.578873, 25.660500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076569, 35.108654, 24.910866>,  <43.159851, 34.902477, 25.552263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076569, 35.108654, 24.910866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.088287, 35.459949, 25.101797>,  <43.095318, 35.670727, 25.216356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.088287, 35.459949, 25.101797>,  <43.076569, 35.108654, 24.910866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088287, 35.459949, 25.101797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367815, 0.434554, -0.822116,
		-0.929437, 0.199655, -0.310297,
		0.029298, 0.878238, 0.477326,
		43.097076, 35.723419, 25.244995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710155, 35.722218, 24.512293>,  <43.076569, 35.108654, 24.910866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710155, 35.722218, 24.512293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.971375, 35.902554, 24.755695>,  <43.128105, 36.010754, 24.901737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.971375, 35.902554, 24.755695>,  <42.710155, 35.722218, 24.512293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971375, 35.902554, 24.755695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392256, 0.485958, -0.781012,
		-0.647818, 0.748726, 0.140508,
		0.653045, 0.450839, 0.608504,
		43.167290, 36.037804, 24.938246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674099, 36.316467, 24.273176>,  <42.710155, 35.722218, 24.512293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674099, 36.316467, 24.273176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.011951, 36.346275, 24.485229>,  <43.214664, 36.364162, 24.612461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.011951, 36.346275, 24.485229>,  <42.674099, 36.316467, 24.273176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011951, 36.346275, 24.485229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456719, 0.416310, -0.786189,
		-0.279289, 0.906163, 0.317593,
		0.844633, 0.074523, 0.530133,
		43.265343, 36.368633, 24.644270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959412, 36.996925, 24.411379>,  <42.674099, 36.316467, 24.273176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959412, 36.996925, 24.411379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.278473, 36.755680, 24.410152>,  <43.469910, 36.610935, 24.409416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.278473, 36.755680, 24.410152>,  <42.959412, 36.996925, 24.411379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278473, 36.755680, 24.410152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357527, 0.476932, -0.802938,
		0.485721, 0.639370, 0.596054,
		0.797652, -0.603110, -0.003064,
		43.517769, 36.574745, 24.409233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586189, 37.456440, 24.357227>,  <42.959412, 36.996925, 24.411379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586189, 37.456440, 24.357227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.687302, 37.093155, 24.223810>,  <43.747971, 36.875183, 24.143761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.687302, 37.093155, 24.223810>,  <43.586189, 37.456440, 24.357227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687302, 37.093155, 24.223810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535809, 0.418455, -0.733351,
		0.805612, 0.006661, 0.592406,
		0.252780, -0.908213, -0.333543,
		43.763134, 36.820690, 24.123747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285553, 37.484726, 24.294554>,  <43.586189, 37.456440, 24.357227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285553, 37.484726, 24.294554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.181351, 37.193474, 24.040951>,  <44.118832, 37.018723, 23.888788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.181351, 37.193474, 24.040951>,  <44.285553, 37.484726, 24.294554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181351, 37.193474, 24.040951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588514, 0.400822, -0.702134,
		0.765369, -0.556030, 0.324100,
		-0.260501, -0.728129, -0.634008,
		44.103199, 36.975037, 23.850748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005070, 37.266182, 24.022085>,  <44.285553, 37.484726, 24.294554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005070, 37.266182, 24.022085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.727802, 37.108078, 23.780991>,  <44.561443, 37.013214, 23.636333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.727802, 37.108078, 23.780991>,  <45.005070, 37.266182, 24.022085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727802, 37.108078, 23.780991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495091, 0.346644, -0.796695,
		0.523838, -0.850650, -0.044590,
		-0.693166, -0.395262, -0.602735,
		44.519852, 36.989498, 23.600170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363392, 37.020794, 23.357887>,  <45.005070, 37.266182, 24.022085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363392, 37.020794, 23.357887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.975414, 37.050262, 23.265125>,  <44.742626, 37.067944, 23.209467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.975414, 37.050262, 23.265125>,  <45.363392, 37.020794, 23.357887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.975414, 37.050262, 23.265125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236236, 0.513545, -0.824903,
		0.058318, -0.854894, -0.515515,
		-0.969944, 0.073676, -0.231906,
		44.684429, 37.072365, 23.195553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248795, 36.751339, 22.636103>,  <45.363392, 37.020794, 23.357887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248795, 36.751339, 22.636103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.949097, 37.001976, 22.721903>,  <44.769276, 37.152359, 22.773382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.949097, 37.001976, 22.721903>,  <45.248795, 36.751339, 22.636103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949097, 37.001976, 22.721903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172609, 0.497429, -0.850159,
		-0.639402, -0.599954, -0.480852,
		-0.749247, 0.626593, 0.214500,
		44.724323, 37.189953, 22.786253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977932, 36.907539, 21.973925>,  <45.248795, 36.751339, 22.636103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977932, 36.907539, 21.973925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.816383, 37.197701, 22.196877>,  <44.719452, 37.371796, 22.330648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.816383, 37.197701, 22.196877>,  <44.977932, 36.907539, 21.973925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816383, 37.197701, 22.196877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094706, 0.639164, -0.763217,
		-0.909899, -0.255457, -0.326842,
		-0.403874, 0.725404, 0.557381,
		44.695221, 37.415321, 22.364090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295403, 37.231556, 21.737244>,  <44.977932, 36.907539, 21.973925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295403, 37.231556, 21.737244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.564529, 37.479912, 21.898144>,  <44.726006, 37.628925, 21.994684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.564529, 37.479912, 21.898144>,  <44.295403, 37.231556, 21.737244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564529, 37.479912, 21.898144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115074, 0.449271, -0.885953,
		-0.730802, 0.642375, 0.230830,
		0.672820, 0.620894, 0.402249,
		44.766376, 37.666180, 22.018818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549160, 37.081272, 21.954340>,  <44.295403, 37.231556, 21.737244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549160, 37.081272, 21.954340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.580738, 37.101398, 21.556097>,  <43.599686, 37.113476, 21.317152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.580738, 37.101398, 21.556097>,  <43.549160, 37.081272, 21.954340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580738, 37.101398, 21.556097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619493, 0.784945, -0.009452,
		0.781022, 0.617518, 0.093143,
		0.078949, 0.050319, -0.995608,
		43.604424, 37.116493, 21.257414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782452, 36.811516, 21.885429>,  <43.549160, 37.081272, 21.954340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782452, 36.811516, 21.885429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.583370, 36.645378, 21.580854>,  <42.463921, 36.545696, 21.398109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.583370, 36.645378, 21.580854>,  <42.782452, 36.811516, 21.885429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583370, 36.645378, 21.580854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681478, -0.355808, 0.639522,
		-0.536545, 0.837193, -0.105958,
		-0.497703, -0.415340, -0.761436,
		42.434059, 36.520775, 21.352425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075684, 37.017021, 21.971409>,  <42.782452, 36.811516, 21.885429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075684, 37.017021, 21.971409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062626, 36.698860, 21.729328>,  <42.054790, 36.507965, 21.584080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062626, 36.698860, 21.729328>,  <42.075684, 37.017021, 21.971409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062626, 36.698860, 21.729328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580116, -0.478010, 0.659525,
		-0.813880, 0.372614, -0.445823,
		-0.032641, -0.795402, -0.605202,
		42.052834, 36.460239, 21.547768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316452, 36.895657, 21.697609>,  <42.075684, 37.017021, 21.971409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316452, 36.895657, 21.697609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.545162, 36.567722, 21.709932>,  <41.682388, 36.370964, 21.717325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.545162, 36.567722, 21.709932>,  <41.316452, 36.895657, 21.697609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545162, 36.567722, 21.709932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654472, -0.433163, 0.619706,
		-0.494710, -0.374495, -0.784229,
		0.571776, -0.819831, 0.030806,
		41.716694, 36.321774, 21.719173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812523, 36.468533, 21.717262>,  <41.316452, 36.895657, 21.697609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812523, 36.468533, 21.717262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.127110, 36.242207, 21.816319>,  <41.315861, 36.106411, 21.875751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.127110, 36.242207, 21.816319>,  <40.812523, 36.468533, 21.717262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127110, 36.242207, 21.816319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579619, -0.537647, 0.612353,
		-0.213335, -0.625132, -0.750798,
		0.786467, -0.565813, 0.247640,
		41.363049, 36.072464, 21.890610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591244, 35.850082, 21.729467>,  <40.812523, 36.468533, 21.717262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591244, 35.850082, 21.729467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910675, 35.831852, 21.969532>,  <41.102333, 35.820915, 22.113571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.910675, 35.831852, 21.969532>,  <40.591244, 35.850082, 21.729467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910675, 35.831852, 21.969532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556024, -0.437644, 0.706615,
		0.230457, -0.897993, -0.374832,
		0.798578, -0.045571, 0.600164,
		41.150249, 35.818180, 22.149582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443523, 35.300678, 22.051855>,  <40.591244, 35.850082, 21.729467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443523, 35.300678, 22.051855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.742512, 35.413956, 22.292217>,  <40.921906, 35.481922, 22.436434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.742512, 35.413956, 22.292217>,  <40.443523, 35.300678, 22.051855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742512, 35.413956, 22.292217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366398, -0.578782, 0.728536,
		0.554113, -0.764729, -0.328859,
		0.747470, 0.283197, 0.600906,
		40.966751, 35.498917, 22.472488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767162, 34.794502, 22.327124>,  <40.443523, 35.300678, 22.051855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767162, 34.794502, 22.327124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835915, 35.080498, 22.598194>,  <40.877167, 35.252094, 22.760836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.835915, 35.080498, 22.598194>,  <40.767162, 34.794502, 22.327124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835915, 35.080498, 22.598194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328826, -0.606817, 0.723634,
		0.928617, -0.347216, 0.130808,
		0.171881, 0.714993, 0.677674,
		40.887478, 35.294994, 22.801497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072968, 34.425594, 22.782389>,  <40.767162, 34.794502, 22.327124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072968, 34.425594, 22.782389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.950909, 34.755009, 22.973667>,  <40.877674, 34.952656, 23.088434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.950909, 34.755009, 22.973667>,  <41.072968, 34.425594, 22.782389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950909, 34.755009, 22.973667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160695, -0.539476, 0.826525,
		0.938648, 0.175370, 0.296959,
		-0.305150, 0.823536, 0.478197,
		40.859364, 35.002071, 23.117126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350426, 34.517647, 23.521589>,  <41.072968, 34.425594, 22.782389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350426, 34.517647, 23.521589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.998199, 34.707058, 23.513872>,  <40.786865, 34.820705, 23.509241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.998199, 34.707058, 23.513872>,  <41.350426, 34.517647, 23.521589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998199, 34.707058, 23.513872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247422, -0.424617, 0.870909,
		0.404209, 0.771666, 0.491066,
		-0.880566, 0.473530, -0.019293,
		40.734028, 34.849117, 23.508083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260902, 34.665356, 24.124722>,  <41.350426, 34.517647, 23.521589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260902, 34.665356, 24.124722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.889938, 34.769108, 24.016918>,  <40.667358, 34.831360, 23.952236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.889938, 34.769108, 24.016918>,  <41.260902, 34.665356, 24.124722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889938, 34.769108, 24.016918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368957, -0.515893, 0.773127,
		0.061493, 0.816443, 0.574143,
		-0.927410, 0.259376, -0.269508,
		40.611717, 34.846920, 23.936066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946579, 34.859695, 24.794195>,  <41.260902, 34.665356, 24.124722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946579, 34.859695, 24.794195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.652359, 34.782162, 24.534536>,  <40.475826, 34.735641, 24.378740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.652359, 34.782162, 24.534536>,  <40.946579, 34.859695, 24.794195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652359, 34.782162, 24.534536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572714, -0.333931, 0.748658,
		-0.361889, 0.922451, 0.134609,
		-0.735551, -0.193839, -0.649147,
		40.431694, 34.724010, 24.339792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387497, 35.154530, 25.086502>,  <40.946579, 34.859695, 24.794195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387497, 35.154530, 25.086502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.223717, 34.900372, 24.824627>,  <40.125446, 34.747875, 24.667501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.223717, 34.900372, 24.824627>,  <40.387497, 35.154530, 25.086502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223717, 34.900372, 24.824627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711467, -0.226827, 0.665105,
		-0.571108, 0.738118, -0.359190,
		-0.409452, -0.635398, -0.654689,
		40.100880, 34.709751, 24.628220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619743, 35.394333, 25.074724>,  <40.387497, 35.154530, 25.086502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619743, 35.394333, 25.074724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666492, 35.011124, 24.970013>,  <39.694542, 34.781197, 24.907187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666492, 35.011124, 24.970013>,  <39.619743, 35.394333, 25.074724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666492, 35.011124, 24.970013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448020, -0.286099, 0.847009,
		-0.886351, 0.018290, -0.462652,
		0.116872, -0.958025, -0.261779,
		39.701553, 34.723717, 24.891479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821510, 35.395210, 24.871481>,  <39.619743, 35.394333, 25.074724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821510, 35.395210, 24.871481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606533, 35.713047, 24.984461>,  <38.477547, 35.903748, 25.052250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.606533, 35.713047, 24.984461>,  <38.821510, 35.395210, 24.871481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606533, 35.713047, 24.984461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380023, 0.527202, -0.760026,
		-0.752820, -0.301133, -0.585304,
		-0.537443, 0.794592, 0.282451,
		38.445301, 35.951424, 25.069197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676281, 35.741581, 24.239258>,  <38.821510, 35.395210, 24.871481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676281, 35.741581, 24.239258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575157, 36.015671, 24.512478>,  <38.514484, 36.180122, 24.676411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.575157, 36.015671, 24.512478>,  <38.676281, 35.741581, 24.239258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575157, 36.015671, 24.512478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055134, 0.694633, -0.717248,
		-0.965944, -0.218986, -0.137830,
		-0.252808, 0.685223, 0.683051,
		38.499313, 36.221237, 24.717394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098015, 36.109791, 24.007315>,  <38.676281, 35.741581, 24.239258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098015, 36.109791, 24.007315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.285397, 36.354164, 24.262600>,  <38.397827, 36.500786, 24.415771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.285397, 36.354164, 24.262600>,  <38.098015, 36.109791, 24.007315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285397, 36.354164, 24.262600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134274, 0.664755, -0.734896,
		-0.873224, 0.429961, 0.229375,
		0.468454, 0.610930, 0.638213,
		38.425934, 36.537441, 24.454063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858265, 36.763180, 23.885630>,  <38.098015, 36.109791, 24.007315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858265, 36.763180, 23.885630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206795, 36.827629, 24.071026>,  <38.415913, 36.866299, 24.182264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.206795, 36.827629, 24.071026>,  <37.858265, 36.763180, 23.885630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206795, 36.827629, 24.071026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197455, 0.749577, -0.631780,
		-0.449220, 0.642006, 0.621313,
		0.871328, 0.161127, 0.463492,
		38.468193, 36.875969, 24.210073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923771, 37.488155, 23.910738>,  <37.858265, 36.763180, 23.885630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923771, 37.488155, 23.910738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296326, 37.361588, 23.982727>,  <38.519859, 37.285645, 24.025921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.296326, 37.361588, 23.982727>,  <37.923771, 37.488155, 23.910738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296326, 37.361588, 23.982727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359004, 0.716594, -0.598003,
		0.060255, 0.621585, 0.781026,
		0.931389, -0.316424, 0.179974,
		38.575741, 37.266659, 24.036718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337357, 38.085598, 23.952749>,  <37.923771, 37.488155, 23.910738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337357, 38.085598, 23.952749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.591324, 37.792706, 23.854181>,  <38.743702, 37.616970, 23.795040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.591324, 37.792706, 23.854181>,  <38.337357, 38.085598, 23.952749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591324, 37.792706, 23.854181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472705, 0.620469, -0.625754,
		0.611092, 0.280816, 0.740074,
		0.634915, -0.732230, -0.246421,
		38.781799, 37.573036, 23.780254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047028, 38.408573, 24.072868>,  <38.337357, 38.085598, 23.952749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047028, 38.408573, 24.072868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.060883, 38.100410, 23.818222>,  <39.069195, 37.915512, 23.665434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.060883, 38.100410, 23.818222>,  <39.047028, 38.408573, 24.072868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060883, 38.100410, 23.818222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296201, 0.616293, -0.729690,
		0.954497, -0.163289, 0.249543,
		0.034641, -0.770402, -0.636616,
		39.071274, 37.869289, 23.627237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515186, 38.980022, 24.401361>,  <39.047028, 38.408573, 24.072868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515186, 38.980022, 24.401361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320366, 39.327595, 24.366173>,  <39.203472, 39.536137, 24.345060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320366, 39.327595, 24.366173>,  <39.515186, 38.980022, 24.401361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320366, 39.327595, 24.366173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510039, -0.201223, 0.836283,
		0.708969, 0.452185, 0.541194,
		-0.487056, 0.868929, -0.087971,
		39.174248, 39.588272, 24.339781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476624, 39.366837, 25.043568>,  <39.515186, 38.980022, 24.401361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476624, 39.366837, 25.043568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171497, 39.497025, 24.820072>,  <38.988422, 39.575138, 24.685976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.171497, 39.497025, 24.820072>,  <39.476624, 39.366837, 25.043568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171497, 39.497025, 24.820072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642383, -0.282685, 0.712343,
		0.073898, 0.902308, 0.424711,
		-0.762813, 0.325467, -0.558738,
		38.942654, 39.594666, 24.652451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067760, 39.845848, 25.483351>,  <39.476624, 39.366837, 25.043568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067760, 39.845848, 25.483351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.810028, 39.757404, 25.190516>,  <38.655388, 39.704338, 25.014814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.810028, 39.757404, 25.190516>,  <39.067760, 39.845848, 25.483351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810028, 39.757404, 25.190516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749622, -0.006850, 0.661831,
		-0.151351, 0.975225, -0.161335,
		-0.644329, -0.221109, -0.732087,
		38.616730, 39.691071, 24.970890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422569, 40.254147, 25.649771>,  <39.067760, 39.845848, 25.483351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422569, 40.254147, 25.649771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.326069, 39.956806, 25.400217>,  <38.268169, 39.778404, 25.250484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.326069, 39.956806, 25.400217>,  <38.422569, 40.254147, 25.649771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326069, 39.956806, 25.400217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752456, -0.262711, 0.603981,
		-0.612870, 0.615155, -0.495958,
		-0.241248, -0.743349, -0.623885,
		38.253693, 39.733803, 25.213051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830067, 40.196426, 25.864676>,  <38.422569, 40.254147, 25.649771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830067, 40.196426, 25.864676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880508, 39.858444, 25.656771>,  <37.910774, 39.655655, 25.532028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.880508, 39.858444, 25.656771>,  <37.830067, 40.196426, 25.864676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880508, 39.858444, 25.656771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529484, -0.500401, 0.685015,
		-0.838895, 0.188825, -0.510490,
		0.126102, -0.844952, -0.519764,
		37.918339, 39.604958, 25.500841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196663, 39.934681, 25.744415>,  <37.830067, 40.196426, 25.864676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196663, 39.934681, 25.744415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.439945, 39.621418, 25.692657>,  <37.585915, 39.433460, 25.661604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.439945, 39.621418, 25.692657>,  <37.196663, 39.934681, 25.744415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439945, 39.621418, 25.692657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575101, -0.547118, 0.608210,
		-0.547118, -0.295506, -0.783159,
		-0.608210, 0.783159, 0.129392,
		37.622410, 39.386471, 25.653839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848442, 39.369869, 25.659479>,  <37.196663, 39.934681, 25.744415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848442, 39.369869, 25.659479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183487, 39.180584, 25.768642>,  <37.384514, 39.067013, 25.834141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.183487, 39.180584, 25.768642>,  <36.848442, 39.369869, 25.659479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183487, 39.180584, 25.768642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524726, -0.558051, 0.642839,
		-0.151905, -0.681648, -0.715737,
		0.837608, -0.473217, 0.272908,
		37.434769, 39.038620, 25.850515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.539909, 39.748974, 23.820488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.525890, 39.388046, 23.648630>,  <43.517479, 39.171490, 23.545515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.525890, 39.388046, 23.648630>,  <43.539909, 39.748974, 23.820488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525890, 39.388046, 23.648630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024506, -0.430556, 0.902232,
		-0.999085, 0.021088, 0.037200,
		-0.035044, -0.902318, -0.429645,
		43.515377, 39.117352, 23.519737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909431, 39.370556, 23.926935>,  <43.539909, 39.748974, 23.820488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909431, 39.370556, 23.926935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.206966, 39.105633, 23.891045>,  <43.385487, 38.946678, 23.869511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.206966, 39.105633, 23.891045>,  <42.909431, 39.370556, 23.926935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206966, 39.105633, 23.891045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274825, -0.425471, 0.862233,
		-0.609238, -0.616706, -0.498501,
		0.743842, -0.662305, -0.089727,
		43.430119, 38.906940, 23.864126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615211, 38.800873, 24.188036>,  <42.909431, 39.370556, 23.926935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615211, 38.800873, 24.188036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.008266, 38.731716, 24.214952>,  <43.244099, 38.690224, 24.231102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.008266, 38.731716, 24.214952>,  <42.615211, 38.800873, 24.188036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008266, 38.731716, 24.214952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119006, -0.309151, 0.943537,
		-0.142326, -0.935165, -0.324360,
		0.982640, -0.172891, 0.067290,
		43.303059, 38.679848, 24.235140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603745, 38.105247, 24.340155>,  <42.615211, 38.800873, 24.188036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603745, 38.105247, 24.340155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.936569, 38.288147, 24.465757>,  <43.136265, 38.397888, 24.541119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.936569, 38.288147, 24.465757>,  <42.603745, 38.105247, 24.340155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936569, 38.288147, 24.465757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118702, -0.406202, 0.906041,
		0.541840, -0.791151, -0.283706,
		0.832057, 0.457253, 0.314008,
		43.186188, 38.425323, 24.559959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815033, 37.661930, 24.942307>,  <42.603745, 38.105247, 24.340155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815033, 37.661930, 24.942307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.039619, 37.989983, 24.986387>,  <43.174370, 38.186813, 25.012835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.039619, 37.989983, 24.986387>,  <42.815033, 37.661930, 24.942307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039619, 37.989983, 24.986387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004404, -0.136132, 0.990681,
		0.827487, -0.555749, -0.080045,
		0.561467, 0.820128, 0.110200,
		43.208061, 38.236023, 25.019447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421249, 37.440063, 25.365219>,  <42.815033, 37.661930, 24.942307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421249, 37.440063, 25.365219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.361248, 37.833458, 25.405718>,  <43.325249, 38.069496, 25.430017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.361248, 37.833458, 25.405718>,  <43.421249, 37.440063, 25.365219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361248, 37.833458, 25.405718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105522, -0.085896, 0.990700,
		0.983039, 0.159290, -0.090895,
		-0.150001, 0.983488, 0.101248,
		43.316246, 38.128506, 25.436092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653934, 37.557034, 25.989849>,  <43.421249, 37.440063, 25.365219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653934, 37.557034, 25.989849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.509102, 37.927734, 25.949806>,  <43.422203, 38.150154, 25.925779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.509102, 37.927734, 25.949806>,  <43.653934, 37.557034, 25.989849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509102, 37.927734, 25.949806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023278, 0.098372, 0.994877,
		0.931857, 0.362553, -0.014045,
		-0.362078, 0.926757, -0.100108,
		43.400478, 38.205761, 25.919773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081005, 37.997936, 26.516554>,  <43.653934, 37.557034, 25.989849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081005, 37.997936, 26.516554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.734615, 38.169861, 26.414301>,  <43.526779, 38.273014, 26.352949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.734615, 38.169861, 26.414301>,  <44.081005, 37.997936, 26.516554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734615, 38.169861, 26.414301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276012, 0.015476, 0.961030,
		0.417014, 0.902788, 0.105230,
		-0.865977, 0.429808, -0.255633,
		43.474823, 38.298801, 26.337610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956436, 38.627480, 26.971689>,  <44.081005, 37.997936, 26.516554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956436, 38.627480, 26.971689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.596668, 38.500099, 26.851933>,  <43.380806, 38.423672, 26.780079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.596668, 38.500099, 26.851933>,  <43.956436, 38.627480, 26.971689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596668, 38.500099, 26.851933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339867, 0.078836, 0.937163,
		-0.274836, 0.944656, -0.179137,
		-0.899419, -0.318449, -0.299391,
		43.326843, 38.404564, 26.762115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464428, 39.086586, 27.208513>,  <43.956436, 38.627480, 26.971689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464428, 39.086586, 27.208513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.268814, 38.743958, 27.142641>,  <43.151443, 38.538380, 27.103117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.268814, 38.743958, 27.142641>,  <43.464428, 39.086586, 27.208513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268814, 38.743958, 27.142641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401720, 0.053592, 0.914193,
		-0.774250, 0.513231, -0.370312,
		-0.489038, -0.856576, -0.164681,
		43.122105, 38.486984, 27.093237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909023, 39.280903, 27.513857>,  <43.464428, 39.086586, 27.208513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909023, 39.280903, 27.513857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.862591, 38.887508, 27.458315>,  <42.834732, 38.651470, 27.424990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.862591, 38.887508, 27.458315>,  <42.909023, 39.280903, 27.513857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862591, 38.887508, 27.458315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526853, -0.057540, 0.848007,
		-0.841992, 0.171597, -0.511472,
		-0.116085, -0.983486, -0.138854,
		42.827766, 38.592464, 27.416658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189281, 39.132244, 27.501553>,  <42.909023, 39.280903, 27.513857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189281, 39.132244, 27.501553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.382339, 38.800030, 27.612740>,  <42.498173, 38.600700, 27.679453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.382339, 38.800030, 27.612740>,  <42.189281, 39.132244, 27.501553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382339, 38.800030, 27.612740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482935, 0.012397, 0.875568,
		-0.730637, -0.556826, -0.395112,
		0.482641, -0.830537, 0.277969,
		42.527130, 38.550869, 27.696131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567833, 39.061718, 27.036255>,  <42.189281, 39.132244, 27.501553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567833, 39.061718, 27.036255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335300, 39.383923, 27.082218>,  <41.195782, 39.577244, 27.109797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335300, 39.383923, 27.082218>,  <41.567833, 39.061718, 27.036255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335300, 39.383923, 27.082218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165937, 0.255625, -0.952429,
		-0.796566, -0.534611, -0.282267,
		-0.581333, 0.805511, 0.114910,
		41.160900, 39.625576, 27.116692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126068, 39.076458, 26.409330>,  <41.567833, 39.061718, 27.036255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126068, 39.076458, 26.409330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.084213, 39.448689, 26.549664>,  <41.059101, 39.672028, 26.633863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.084213, 39.448689, 26.549664>,  <41.126068, 39.076458, 26.409330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084213, 39.448689, 26.549664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364479, 0.364105, -0.857078,
		-0.925314, 0.038191, -0.377273,
		-0.104634, 0.930574, 0.350831,
		41.052822, 39.727859, 26.654913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805801, 39.512554, 25.853163>,  <41.126068, 39.076458, 26.409330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805801, 39.512554, 25.853163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.971874, 39.776253, 26.103928>,  <41.071518, 39.934471, 26.254387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.971874, 39.776253, 26.103928>,  <40.805801, 39.512554, 25.853163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971874, 39.776253, 26.103928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276900, 0.564840, -0.777356,
		-0.866575, 0.496334, 0.051965,
		0.415179, 0.659248, 0.626911,
		41.096428, 39.974026, 26.292002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682373, 40.245110, 25.557081>,  <40.805801, 39.512554, 25.853163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682373, 40.245110, 25.557081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.960991, 40.340786, 25.827671>,  <41.128162, 40.398190, 25.990025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.960991, 40.340786, 25.827671>,  <40.682373, 40.245110, 25.557081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960991, 40.340786, 25.827671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520549, 0.480414, -0.705855,
		-0.493820, 0.843796, 0.210120,
		0.696542, 0.239187, 0.676475,
		41.169952, 40.412540, 26.030613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797283, 41.058945, 25.610567>,  <40.682373, 40.245110, 25.557081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797283, 41.058945, 25.610567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.116863, 40.840065, 25.710371>,  <41.308613, 40.708736, 25.770252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.116863, 40.840065, 25.710371>,  <40.797283, 41.058945, 25.610567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116863, 40.840065, 25.710371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544466, 0.481928, -0.686514,
		0.255413, 0.684339, 0.682967,
		0.798949, -0.547197, 0.249509,
		41.356548, 40.675907, 25.785223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263664, 41.504406, 25.549101>,  <40.797283, 41.058945, 25.610567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263664, 41.504406, 25.549101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.481174, 41.168716, 25.547491>,  <41.611679, 40.967304, 25.546524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.481174, 41.168716, 25.547491>,  <41.263664, 41.504406, 25.549101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481174, 41.168716, 25.547491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575577, 0.376426, -0.725958,
		0.610756, 0.392437, 0.687728,
		0.543771, -0.839224, -0.004026,
		41.644306, 40.916950, 25.546284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972996, 41.727108, 25.497515>,  <41.263664, 41.504406, 25.549101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972996, 41.727108, 25.497515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.975334, 41.346401, 25.374805>,  <41.976738, 41.117977, 25.301180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.975334, 41.346401, 25.374805>,  <41.972996, 41.727108, 25.497515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975334, 41.346401, 25.374805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612988, 0.245793, -0.750888,
		0.790071, -0.183656, 0.584858,
		0.005849, -0.951765, -0.306772,
		41.977089, 41.060871, 25.282774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608681, 41.734550, 25.425381>,  <41.972996, 41.727108, 25.497515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608681, 41.734550, 25.425381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.472301, 41.408863, 25.237421>,  <42.390472, 41.213451, 25.124645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.472301, 41.408863, 25.237421>,  <42.608681, 41.734550, 25.425381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472301, 41.408863, 25.237421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578615, 0.212197, -0.787513,
		0.740916, -0.540395, 0.398768,
		-0.340951, -0.814214, -0.469901,
		42.370018, 41.164600, 25.096451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235760, 41.405285, 25.060089>,  <42.608681, 41.734550, 25.425381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235760, 41.405285, 25.060089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.893238, 41.298397, 24.883303>,  <42.687725, 41.234264, 24.777231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.893238, 41.298397, 24.883303>,  <43.235760, 41.405285, 25.060089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893238, 41.298397, 24.883303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386312, 0.236579, -0.891512,
		0.342789, -0.934144, -0.099354,
		-0.856306, -0.267219, -0.441967,
		42.636345, 41.218231, 24.750713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414360, 40.856422, 24.564428>,  <43.235760, 41.405285, 25.060089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414360, 40.856422, 24.564428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.051777, 40.974651, 24.443777>,  <42.834229, 41.045589, 24.371386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.051777, 40.974651, 24.443777>,  <43.414360, 40.856422, 24.564428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051777, 40.974651, 24.443777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346222, 0.111152, -0.931545,
		-0.241810, -0.948833, -0.203087,
		-0.906454, 0.295570, -0.301630,
		42.779842, 41.063324, 24.353289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218445, 40.541409, 23.858345>,  <43.414360, 40.856422, 24.564428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218445, 40.541409, 23.858345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.965427, 40.851219, 23.859219>,  <42.813618, 41.037106, 23.859743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.965427, 40.851219, 23.859219>,  <43.218445, 40.541409, 23.858345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965427, 40.851219, 23.859219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308155, 0.254249, -0.916732,
		-0.710588, -0.579196, -0.399496,
		-0.632539, 0.774525, 0.002184,
		42.775665, 41.083576, 23.859875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015434, 40.661293, 23.224892>,  <43.218445, 40.541409, 23.858345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015434, 40.661293, 23.224892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.893299, 41.017586, 23.359571>,  <42.820019, 41.231361, 23.440380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.893299, 41.017586, 23.359571>,  <43.015434, 40.661293, 23.224892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893299, 41.017586, 23.359571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075516, 0.375123, -0.923894,
		-0.949246, -0.256672, -0.181803,
		-0.305336, 0.890731, 0.336701,
		42.801697, 41.284805, 23.460581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579849, 40.941601, 22.685600>,  <43.015434, 40.661293, 23.224892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579849, 40.941601, 22.685600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.674171, 41.268730, 22.895576>,  <42.730762, 41.465008, 23.021563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.674171, 41.268730, 22.895576>,  <42.579849, 40.941601, 22.685600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674171, 41.268730, 22.895576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011357, 0.542453, -0.840009,
		-0.971735, 0.192115, 0.137200,
		0.235803, 0.817824, 0.524939,
		42.744911, 41.514076, 23.053059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982670, 40.859848, 23.300644>,  <42.579849, 40.941601, 22.685600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982670, 40.859848, 23.300644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.788376, 40.855228, 22.951033>,  <41.671799, 40.852459, 22.741266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.788376, 40.855228, 22.951033>,  <41.982670, 40.859848, 23.300644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788376, 40.855228, 22.951033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776443, -0.453581, 0.437494,
		-0.401494, 0.891140, 0.211357,
		-0.485736, -0.011545, -0.874030,
		41.642654, 40.851765, 22.688824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234718, 41.172253, 23.417387>,  <41.982670, 40.859848, 23.300644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234718, 41.172253, 23.417387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.227180, 40.943336, 23.089453>,  <41.222660, 40.805988, 22.892693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.227180, 40.943336, 23.089453>,  <41.234718, 41.172253, 23.417387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227180, 40.943336, 23.089453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850850, -0.421448, 0.313745,
		-0.525071, 0.703469, -0.478990,
		-0.018840, -0.572287, -0.819837,
		41.221527, 40.771648, 22.843502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549862, 41.281143, 23.322212>,  <41.234718, 41.172253, 23.417387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549862, 41.281143, 23.322212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.659008, 40.953831, 23.119843>,  <40.724495, 40.757442, 22.998421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.659008, 40.953831, 23.119843>,  <40.549862, 41.281143, 23.322212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659008, 40.953831, 23.119843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786367, -0.492662, 0.372708,
		-0.554229, 0.296141, -0.777901,
		0.272868, -0.818281, -0.505923,
		40.740868, 40.708347, 22.968065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960468, 41.082153, 22.808489>,  <40.549862, 41.281143, 23.322212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960468, 41.082153, 22.808489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.171230, 40.749920, 22.880604>,  <40.297688, 40.550579, 22.923872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.171230, 40.749920, 22.880604>,  <39.960468, 41.082153, 22.808489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171230, 40.749920, 22.880604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758277, -0.363579, 0.541134,
		-0.383912, -0.421828, -0.821385,
		0.526904, -0.830585, 0.180281,
		40.329304, 40.500748, 22.934690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524158, 40.589870, 22.657167>,  <39.960468, 41.082153, 22.808489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524158, 40.589870, 22.657167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.797585, 40.395603, 22.875107>,  <39.961639, 40.279041, 23.005871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.797585, 40.395603, 22.875107>,  <39.524158, 40.589870, 22.657167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797585, 40.395603, 22.875107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729888, -0.456755, 0.508565,
		0.001867, -0.745317, -0.666708,
		0.683565, -0.485672, 0.544850,
		40.002655, 40.249901, 23.038563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261307, 39.965973, 22.702032>,  <39.524158, 40.589870, 22.657167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261307, 39.965973, 22.702032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502831, 40.020508, 23.016184>,  <39.647747, 40.053226, 23.204676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.502831, 40.020508, 23.016184>,  <39.261307, 39.965973, 22.702032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502831, 40.020508, 23.016184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722089, -0.323772, 0.611358,
		0.337635, -0.936261, -0.097051,
		0.603813, 0.136336, 0.785380,
		39.683975, 40.061409, 23.251799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133354, 39.392838, 23.131557>,  <39.261307, 39.965973, 22.702032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133354, 39.392838, 23.131557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306778, 39.659328, 23.374266>,  <39.410831, 39.819221, 23.519890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306778, 39.659328, 23.374266>,  <39.133354, 39.392838, 23.131557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306778, 39.659328, 23.374266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536885, -0.349812, 0.767715,
		0.723727, -0.658615, 0.206023,
		0.433559, 0.666227, 0.606769,
		39.436844, 39.859196, 23.556297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301414, 39.016693, 23.705769>,  <39.133354, 39.392838, 23.131557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301414, 39.016693, 23.705769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.280602, 39.390247, 23.847273>,  <39.268116, 39.614380, 23.932175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.280602, 39.390247, 23.847273>,  <39.301414, 39.016693, 23.705769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280602, 39.390247, 23.847273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494889, -0.331795, 0.803117,
		0.867397, -0.133286, 0.479434,
		-0.052030, 0.933888, 0.353759,
		39.264992, 39.670414, 23.953402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771923, 38.603176, 23.496784>,  <39.301414, 39.016693, 23.705769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771923, 38.603176, 23.496784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576679, 38.289387, 23.343763>,  <39.459534, 38.101112, 23.251951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576679, 38.289387, 23.343763>,  <39.771923, 38.603176, 23.496784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576679, 38.289387, 23.343763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050167, 0.412371, -0.909634,
		0.871340, -0.463192, -0.161927,
		-0.488109, -0.784477, -0.382553,
		39.430248, 38.054043, 23.228998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191441, 38.233940, 23.002588>,  <39.771923, 38.603176, 23.496784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191441, 38.233940, 23.002588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807533, 38.156723, 22.921030>,  <39.577187, 38.110394, 22.872095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.807533, 38.156723, 22.921030>,  <40.191441, 38.233940, 23.002588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807533, 38.156723, 22.921030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166312, 0.194237, -0.966753,
		0.226235, -0.961771, -0.154317,
		-0.959770, -0.193049, -0.203897,
		39.519604, 38.098808, 22.859861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247532, 37.811230, 22.483027>,  <40.191441, 38.233940, 23.002588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247532, 37.811230, 22.483027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879353, 37.954659, 22.420807>,  <39.658443, 38.040718, 22.383474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.879353, 37.954659, 22.420807>,  <40.247532, 37.811230, 22.483027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879353, 37.954659, 22.420807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195178, 0.076864, -0.977751,
		-0.338643, -0.930330, -0.140736,
		-0.920449, 0.358577, -0.155550,
		39.603218, 38.062233, 22.374142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063644, 37.489071, 21.862099>,  <40.247532, 37.811230, 22.483027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063644, 37.489071, 21.862099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814873, 37.798336, 21.911789>,  <39.665611, 37.983894, 21.941603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.814873, 37.798336, 21.911789>,  <40.063644, 37.489071, 21.862099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814873, 37.798336, 21.911789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096397, 0.233019, -0.967683,
		-0.777119, -0.589853, -0.219451,
		-0.621927, 0.773159, 0.124223,
		39.628296, 38.030285, 21.949057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804310, 37.564560, 21.090063>,  <40.063644, 37.489071, 21.862099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804310, 37.564560, 21.090063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.718727, 37.896969, 21.295441>,  <39.667377, 38.096413, 21.418667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.718727, 37.896969, 21.295441>,  <39.804310, 37.564560, 21.090063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718727, 37.896969, 21.295441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307368, 0.556188, -0.772126,
		-0.927226, -0.007383, -0.374428,
		-0.213953, 0.831023, 0.513443,
		39.654541, 38.146275, 21.449474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407566, 38.013222, 20.647156>,  <39.804310, 37.564560, 21.090063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407566, 38.013222, 20.647156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555569, 38.276123, 20.909794>,  <39.644371, 38.433865, 21.067377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555569, 38.276123, 20.909794>,  <39.407566, 38.013222, 20.647156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555569, 38.276123, 20.909794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341231, 0.561207, -0.754061,
		-0.864093, 0.503057, -0.016625,
		0.370006, 0.657252, 0.656594,
		39.666569, 38.473297, 21.106771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275276, 38.746075, 20.391905>,  <39.407566, 38.013222, 20.647156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275276, 38.746075, 20.391905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544350, 38.851002, 20.668653>,  <39.705795, 38.913960, 20.834702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.544350, 38.851002, 20.668653>,  <39.275276, 38.746075, 20.391905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544350, 38.851002, 20.668653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427737, 0.625122, -0.652888,
		-0.603770, 0.735126, 0.308305,
		0.672683, 0.262320, 0.691871,
		39.746155, 38.929699, 20.876215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314926, 39.516579, 20.622931>,  <39.275276, 38.746075, 20.391905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314926, 39.516579, 20.622931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.672192, 39.337765, 20.642632>,  <39.886551, 39.230476, 20.654453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.672192, 39.337765, 20.642632>,  <39.314926, 39.516579, 20.622931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672192, 39.337765, 20.642632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382417, 0.697261, -0.606287,
		0.236687, 0.560348, 0.793719,
		0.893161, -0.447032, 0.049254,
		39.940140, 39.203655, 20.657408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793987, 39.978622, 20.349569>,  <39.314926, 39.516579, 20.622931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793987, 39.978622, 20.349569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038998, 39.662487, 20.344147>,  <40.186005, 39.472805, 20.340893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.038998, 39.662487, 20.344147>,  <39.793987, 39.978622, 20.349569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038998, 39.662487, 20.344147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695075, 0.546705, -0.466888,
		0.376411, 0.276555, 0.884213,
		0.612524, -0.790336, -0.013559,
		40.222755, 39.425385, 20.340078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.731331, 33.632652, 34.147678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997147, 33.335884, 34.112015>,  <37.156635, 33.157825, 34.090618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997147, 33.335884, 34.112015>,  <36.731331, 33.632652, 34.147678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997147, 33.335884, 34.112015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143388, 0.243699, -0.959193,
		0.733368, 0.624637, 0.268329,
		0.664538, -0.741916, -0.089156,
		37.196507, 33.113308, 34.085270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223804, 33.962612, 33.721664>,  <36.731331, 33.632652, 34.147678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223804, 33.962612, 33.721664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223278, 33.563030, 33.703354>,  <37.222961, 33.323280, 33.692368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223278, 33.563030, 33.703354>,  <37.223804, 33.962612, 33.721664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223278, 33.563030, 33.703354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135537, 0.045180, -0.989742,
		0.990772, -0.007506, 0.135335,
		-0.001315, -0.998951, -0.045781,
		37.222885, 33.263344, 33.689621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546047, 33.860226, 33.037216>,  <37.223804, 33.962612, 33.721664>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546047, 33.860226, 33.037216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.375263, 33.506413, 33.112381>,  <37.272793, 33.294125, 33.157482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.375263, 33.506413, 33.112381>,  <37.546047, 33.860226, 33.037216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375263, 33.506413, 33.112381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295302, -0.060028, -0.953516,
		0.854695, -0.462603, -0.235574,
		-0.426959, -0.884531, 0.187914,
		37.247177, 33.241055, 33.168755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850349, 33.414433, 32.561001>,  <37.546047, 33.860226, 33.037216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850349, 33.414433, 32.561001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497486, 33.253689, 32.659225>,  <37.285767, 33.157242, 32.718159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.497486, 33.253689, 32.659225>,  <37.850349, 33.414433, 32.561001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497486, 33.253689, 32.659225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228955, -0.089691, -0.969296,
		0.411544, -0.911299, -0.012886,
		-0.882163, -0.401859, 0.245558,
		37.232838, 33.133133, 32.732891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735771, 32.928867, 32.038857>,  <37.850349, 33.414433, 32.561001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735771, 32.928867, 32.038857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.375198, 32.965031, 32.208202>,  <37.158852, 32.986729, 32.309811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.375198, 32.965031, 32.208202>,  <37.735771, 32.928867, 32.038857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375198, 32.965031, 32.208202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429723, -0.068406, -0.900366,
		-0.052439, -0.993553, 0.100514,
		-0.901437, 0.090407, 0.423366,
		37.104767, 32.992153, 32.335213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328873, 32.413666, 31.764944>,  <37.735771, 32.928867, 32.038857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328873, 32.413666, 31.764944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066730, 32.670521, 31.924026>,  <36.909447, 32.824635, 32.019474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.066730, 32.670521, 31.924026>,  <37.328873, 32.413666, 31.764944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066730, 32.670521, 31.924026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601130, -0.124607, -0.789377,
		-0.457330, -0.756396, 0.467669,
		-0.655357, 0.642136, 0.397706,
		36.870125, 32.863163, 32.043339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676781, 32.077824, 31.653185>,  <37.328873, 32.413666, 31.764944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676781, 32.077824, 31.653185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.616535, 32.470020, 31.703691>,  <36.580387, 32.705338, 31.733995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.616535, 32.470020, 31.703691>,  <36.676781, 32.077824, 31.653185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616535, 32.470020, 31.703691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433168, 0.049358, -0.899961,
		-0.888640, -0.190240, 0.417285,
		-0.150613, 0.980496, 0.126267,
		36.571350, 32.764168, 31.741571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969036, 32.136078, 31.472464>,  <36.676781, 32.077824, 31.653185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969036, 32.136078, 31.472464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142029, 32.493755, 31.426201>,  <36.245823, 32.708363, 31.398443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142029, 32.493755, 31.426201>,  <35.969036, 32.136078, 31.472464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142029, 32.493755, 31.426201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434145, 0.094097, -0.895915,
		-0.790239, 0.437678, 0.428905,
		0.432481, 0.894194, -0.115657,
		36.271774, 32.762012, 31.391504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536087, 32.448170, 30.956707>,  <35.969036, 32.136078, 31.472464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536087, 32.448170, 30.956707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861423, 32.680882, 30.957678>,  <36.056625, 32.820507, 30.958260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861423, 32.680882, 30.957678>,  <35.536087, 32.448170, 30.956707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861423, 32.680882, 30.957678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125756, 0.179882, -0.975617,
		-0.568027, 0.793208, 0.219468,
		0.813345, 0.581776, 0.002427,
		36.105427, 32.855415, 30.958406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312286, 32.987656, 30.601564>,  <35.536087, 32.448170, 30.956707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312286, 32.987656, 30.601564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702507, 33.074268, 30.586561>,  <35.936642, 33.126236, 30.577559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702507, 33.074268, 30.586561>,  <35.312286, 32.987656, 30.601564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702507, 33.074268, 30.586561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104666, 0.307735, -0.945698,
		-0.193230, 0.926506, 0.322875,
		0.975555, 0.216531, -0.037510,
		35.995174, 33.139229, 30.575308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485302, 33.707611, 30.434063>,  <35.312286, 32.987656, 30.601564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485302, 33.707611, 30.434063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809467, 33.496582, 30.332165>,  <36.003967, 33.369965, 30.271027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.809467, 33.496582, 30.332165>,  <35.485302, 33.707611, 30.434063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809467, 33.496582, 30.332165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033778, 0.392023, -0.919335,
		0.584884, 0.753646, 0.299881,
		0.810413, -0.527575, -0.254745,
		36.052593, 33.338310, 30.255741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973007, 34.253418, 30.152279>,  <35.485302, 33.707611, 30.434063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973007, 34.253418, 30.152279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103981, 33.896576, 30.027740>,  <36.182564, 33.682472, 29.953018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.103981, 33.896576, 30.027740>,  <35.973007, 34.253418, 30.152279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103981, 33.896576, 30.027740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143030, 0.372510, -0.916940,
		0.933986, 0.255706, 0.249570,
		0.327434, -0.892105, -0.311345,
		36.202209, 33.628944, 29.934338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351200, 34.847263, 30.413122>,  <35.973007, 34.253418, 30.152279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351200, 34.847263, 30.413122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066887, 35.127754, 30.435291>,  <35.896301, 35.296047, 30.448593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066887, 35.127754, 30.435291>,  <36.351200, 34.847263, 30.413122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066887, 35.127754, 30.435291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264853, -0.339789, 0.902439,
		0.651647, 0.626757, 0.427238,
		-0.710780, 0.701227, 0.055424,
		35.853653, 35.338123, 30.451918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289101, 34.887474, 31.154779>,  <36.351200, 34.847263, 30.413122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289101, 34.887474, 31.154779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.979446, 35.104439, 31.024244>,  <35.793652, 35.234619, 30.945923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.979446, 35.104439, 31.024244>,  <36.289101, 34.887474, 31.154779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979446, 35.104439, 31.024244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474978, -0.156943, 0.865890,
		0.418455, 0.825321, 0.379131,
		-0.774139, 0.542415, -0.326336,
		35.747204, 35.267162, 30.926344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165859, 35.407448, 31.667181>,  <36.289101, 34.887474, 31.154779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165859, 35.407448, 31.667181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828106, 35.355888, 31.459183>,  <35.625454, 35.324955, 31.334383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.828106, 35.355888, 31.459183>,  <36.165859, 35.407448, 31.667181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828106, 35.355888, 31.459183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514595, -0.074814, 0.854163,
		-0.149002, 0.988832, -0.003157,
		-0.844387, -0.128897, -0.519996,
		35.574791, 35.317219, 31.303185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586514, 35.882225, 31.881657>,  <36.165859, 35.407448, 31.667181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586514, 35.882225, 31.881657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392021, 35.581635, 31.703283>,  <35.275326, 35.401279, 31.596258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392021, 35.581635, 31.703283>,  <35.586514, 35.882225, 31.881657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392021, 35.581635, 31.703283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641460, -0.039587, 0.766135,
		-0.593389, 0.658566, -0.462796,
		-0.486230, -0.751481, -0.445934,
		35.246151, 35.356190, 31.569504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887486, 35.984871, 32.124111>,  <35.586514, 35.882225, 31.881657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887486, 35.984871, 32.124111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898907, 35.605289, 31.998466>,  <34.905758, 35.377541, 31.923080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898907, 35.605289, 31.998466>,  <34.887486, 35.984871, 32.124111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898907, 35.605289, 31.998466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870544, -0.178041, 0.458753,
		-0.491261, 0.260347, -0.831193,
		0.028551, -0.948958, -0.314108,
		34.907471, 35.320602, 31.904234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277538, 35.877151, 31.775108>,  <34.887486, 35.984871, 32.124111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277538, 35.877151, 31.775108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411587, 35.523384, 31.905031>,  <34.492016, 35.311123, 31.982985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411587, 35.523384, 31.905031>,  <34.277538, 35.877151, 31.775108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411587, 35.523384, 31.905031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885984, -0.178537, 0.427968,
		-0.320513, -0.431193, -0.843412,
		0.335117, -0.884419, 0.324807,
		34.512123, 35.258057, 32.002472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657204, 35.422764, 31.617577>,  <34.277538, 35.877151, 31.775108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657204, 35.422764, 31.617577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884468, 35.243668, 31.893757>,  <34.020828, 35.136211, 32.059464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884468, 35.243668, 31.893757>,  <33.657204, 35.422764, 31.617577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884468, 35.243668, 31.893757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814395, -0.185492, 0.549866,
		-0.118124, -0.874713, -0.470026,
		0.568161, -0.447739, 0.690451,
		34.054916, 35.109344, 32.100891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279152, 34.820335, 31.860619>,  <33.657204, 35.422764, 31.617577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279152, 34.820335, 31.860619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541706, 34.873272, 32.157711>,  <33.699238, 34.905033, 32.335968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541706, 34.873272, 32.157711>,  <33.279152, 34.820335, 31.860619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541706, 34.873272, 32.157711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754060, 0.084272, 0.651377,
		0.023612, -0.987616, 0.155106,
		0.656381, 0.132340, 0.742732,
		33.738621, 34.912975, 32.380531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920063, 34.579620, 32.398342>,  <33.279152, 34.820335, 31.860619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920063, 34.579620, 32.398342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219746, 34.774223, 32.578121>,  <33.399555, 34.890984, 32.685989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.219746, 34.774223, 32.578121>,  <32.920063, 34.579620, 32.398342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219746, 34.774223, 32.578121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608719, 0.238305, 0.756751,
		0.261077, -0.840537, 0.474696,
		0.749200, 0.486527, 0.449435,
		33.444508, 34.920174, 32.712955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913197, 34.373783, 33.184784>,  <32.920063, 34.579620, 32.398342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913197, 34.373783, 33.184784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113064, 34.719322, 33.159168>,  <33.232983, 34.926647, 33.143799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113064, 34.719322, 33.159168>,  <32.913197, 34.373783, 33.184784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113064, 34.719322, 33.159168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453640, 0.323942, 0.830224,
		0.737933, -0.385782, 0.553739,
		0.499665, 0.863848, -0.064041,
		33.262962, 34.978477, 33.139957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375565, 34.388897, 33.793705>,  <32.913197, 34.373783, 33.184784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375565, 34.388897, 33.793705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309937, 34.763271, 33.669060>,  <33.270561, 34.987896, 33.594273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.309937, 34.763271, 33.669060>,  <33.375565, 34.388897, 33.793705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309937, 34.763271, 33.669060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320348, 0.248224, 0.914200,
		0.932984, 0.249815, 0.259100,
		-0.164066, 0.935936, -0.311617,
		33.260715, 35.044052, 33.575573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744991, 34.785885, 34.185272>,  <33.375565, 34.388897, 33.793705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744991, 34.785885, 34.185272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.506893, 35.068752, 34.032650>,  <33.364033, 35.238472, 33.941074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.506893, 35.068752, 34.032650>,  <33.744991, 34.785885, 34.185272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506893, 35.068752, 34.032650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171199, 0.352334, 0.920082,
		0.785093, 0.612999, -0.088659,
		-0.595247, 0.707172, -0.381560,
		33.328320, 35.280903, 33.918182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874008, 35.436043, 34.503773>,  <33.744991, 34.785885, 34.185272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874008, 35.436043, 34.503773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503849, 35.454353, 34.353283>,  <33.281754, 35.465340, 34.262989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.503849, 35.454353, 34.353283>,  <33.874008, 35.436043, 34.503773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503849, 35.454353, 34.353283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323948, 0.419690, 0.847890,
		0.196712, 0.906512, -0.373550,
		-0.925398, 0.045779, -0.376221,
		33.226231, 35.468086, 34.240417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512459, 36.154839, 34.509651>,  <33.874008, 35.436043, 34.503773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512459, 36.154839, 34.509651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197369, 35.910759, 34.475864>,  <33.008312, 35.764309, 34.455593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.197369, 35.910759, 34.475864>,  <33.512459, 36.154839, 34.509651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197369, 35.910759, 34.475864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458012, 0.488445, 0.742729,
		-0.411958, 0.623757, -0.664243,
		-0.787729, -0.610204, -0.084469,
		32.961052, 35.727699, 34.450523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856232, 36.494061, 34.305397>,  <33.512459, 36.154839, 34.509651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856232, 36.494061, 34.305397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793541, 36.161430, 34.518532>,  <32.755928, 35.961853, 34.646412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.793541, 36.161430, 34.518532>,  <32.856232, 36.494061, 34.305397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793541, 36.161430, 34.518532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485140, 0.534752, 0.691867,
		-0.860277, -0.150066, -0.487242,
		-0.156728, -0.831577, 0.532838,
		32.746521, 35.911957, 34.678383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495872, 37.026524, 34.443043>,  <32.856232, 36.494061, 34.305397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495872, 37.026524, 34.443043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822906, 37.058922, 34.671078>,  <34.019127, 37.078362, 34.807899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822906, 37.058922, 34.671078>,  <33.495872, 37.026524, 34.443043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822906, 37.058922, 34.671078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549907, 0.183788, -0.814754,
		-0.170770, 0.979623, 0.105719,
		0.817582, 0.081000, 0.570087,
		34.068180, 37.083221, 34.842102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839622, 37.670895, 34.360435>,  <33.495872, 37.026524, 34.443043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839622, 37.670895, 34.360435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124287, 37.423695, 34.494072>,  <34.295086, 37.275375, 34.574253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124287, 37.423695, 34.494072>,  <33.839622, 37.670895, 34.360435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124287, 37.423695, 34.494072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609980, 0.307644, -0.730259,
		0.348521, 0.723484, 0.595907,
		0.711658, -0.618002, 0.334091,
		34.337784, 37.238293, 34.594299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634537, 37.968891, 34.435448>,  <33.839622, 37.670895, 34.360435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634537, 37.968891, 34.435448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699623, 37.574451, 34.421997>,  <34.738674, 37.337788, 34.413925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699623, 37.574451, 34.421997>,  <34.634537, 37.968891, 34.435448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699623, 37.574451, 34.421997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693638, 0.138563, -0.706871,
		0.701704, 0.091696, 0.706543,
		0.162718, -0.986099, -0.033626,
		34.748440, 37.278622, 34.411911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398479, 37.814167, 34.550911>,  <34.634537, 37.968891, 34.435448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398479, 37.814167, 34.550911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215157, 37.518795, 34.353050>,  <35.105164, 37.341572, 34.234333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215157, 37.518795, 34.353050>,  <35.398479, 37.814167, 34.550911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215157, 37.518795, 34.353050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759632, -0.036499, -0.649328,
		0.461427, -0.673344, 0.577662,
		-0.458305, -0.738428, -0.494652,
		35.077663, 37.297268, 34.204655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843773, 37.272526, 34.411701>,  <35.398479, 37.814167, 34.550911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843773, 37.272526, 34.411701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565254, 37.239616, 34.126492>,  <35.398144, 37.219872, 33.955364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.565254, 37.239616, 34.126492>,  <35.843773, 37.272526, 34.411701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565254, 37.239616, 34.126492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710759, 0.059333, -0.700929,
		0.099974, -0.994842, 0.017164,
		-0.696295, -0.082274, -0.713025,
		35.356365, 37.214935, 33.912582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103493, 36.773808, 33.990910>,  <35.843773, 37.272526, 34.411701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103493, 36.773808, 33.990910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821564, 36.935394, 33.757660>,  <35.652405, 37.032345, 33.617710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.821564, 36.935394, 33.757660>,  <36.103493, 36.773808, 33.990910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821564, 36.935394, 33.757660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692958, 0.216219, -0.687793,
		-0.151763, -0.888853, -0.432328,
		-0.704824, 0.403967, -0.583124,
		35.610115, 37.056583, 33.582722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104668, 36.443806, 33.289623>,  <36.103493, 36.773808, 33.990910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104668, 36.443806, 33.289623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892029, 36.772480, 33.207424>,  <35.764446, 36.969685, 33.158104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892029, 36.772480, 33.207424>,  <36.104668, 36.443806, 33.289623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892029, 36.772480, 33.207424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611130, 0.204116, -0.764759,
		-0.586447, -0.532134, -0.610666,
		-0.531601, 0.821687, -0.205500,
		35.732548, 37.018986, 33.145775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891335, 36.423615, 32.504059>,  <36.104668, 36.443806, 33.289623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891335, 36.423615, 32.504059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824760, 36.800106, 32.621620>,  <35.784817, 37.026001, 32.692158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824760, 36.800106, 32.621620>,  <35.891335, 36.423615, 32.504059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824760, 36.800106, 32.621620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553521, 0.335851, -0.762115,
		-0.816036, 0.035843, -0.576888,
		-0.166432, 0.941233, 0.293907,
		35.774830, 37.082478, 32.709793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646637, 36.883266, 31.835108>,  <35.891335, 36.423615, 32.504059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646637, 36.883266, 31.835108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803272, 37.136639, 32.102066>,  <35.897255, 37.288662, 32.262241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.803272, 37.136639, 32.102066>,  <35.646637, 36.883266, 31.835108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803272, 37.136639, 32.102066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484074, 0.475015, -0.734870,
		-0.782514, 0.610839, -0.120616,
		0.391592, 0.633433, 0.667397,
		35.920750, 37.326668, 32.302284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726906, 37.499847, 31.490152>,  <35.646637, 36.883266, 31.835108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726906, 37.499847, 31.490152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985771, 37.541801, 31.792194>,  <36.141090, 37.566975, 31.973419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.985771, 37.541801, 31.792194>,  <35.726906, 37.499847, 31.490152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985771, 37.541801, 31.792194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693362, 0.330771, -0.640188,
		-0.316911, 0.937865, 0.141340,
		0.647161, 0.104882, 0.755105,
		36.179920, 37.573265, 32.018726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843563, 38.185760, 31.479675>,  <35.726906, 37.499847, 31.490152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843563, 38.185760, 31.479675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134220, 37.989052, 31.671572>,  <36.308613, 37.871025, 31.786709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134220, 37.989052, 31.671572>,  <35.843563, 38.185760, 31.479675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134220, 37.989052, 31.671572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681061, 0.423876, -0.597063,
		0.090269, 0.760584, 0.642934,
		0.726641, -0.491773, 0.479741,
		36.352211, 37.841518, 31.815495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383591, 38.643906, 31.620792>,  <35.843563, 38.185760, 31.479675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383591, 38.643906, 31.620792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531105, 38.272102, 31.619837>,  <36.619614, 38.049019, 31.619263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531105, 38.272102, 31.619837>,  <36.383591, 38.643906, 31.620792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531105, 38.272102, 31.619837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771890, 0.307683, -0.556343,
		0.517861, 0.203329, 0.830950,
		0.368790, -0.929510, -0.002390,
		36.641743, 37.993248, 31.619120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045193, 38.754108, 31.497931>,  <36.383591, 38.643906, 31.620792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045193, 38.754108, 31.497931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056244, 38.357235, 31.449251>,  <37.062874, 38.119110, 31.420044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056244, 38.357235, 31.449251>,  <37.045193, 38.754108, 31.497931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056244, 38.357235, 31.449251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717433, 0.104457, -0.688752,
		0.696080, -0.068280, 0.714710,
		0.027628, -0.992183, -0.121697,
		37.064533, 38.059582, 31.412743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782528, 38.588978, 31.456190>,  <37.045193, 38.754108, 31.497931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782528, 38.588978, 31.456190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584332, 38.295647, 31.269978>,  <37.465412, 38.119648, 31.158251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.584332, 38.295647, 31.269978>,  <37.782528, 38.588978, 31.456190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584332, 38.295647, 31.269978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635030, 0.059842, -0.770166,
		0.592641, -0.677238, 0.436033,
		-0.495493, -0.733326, -0.465532,
		37.435684, 38.075649, 31.130318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223969, 38.201908, 31.249260>,  <37.782528, 38.588978, 31.456190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223969, 38.201908, 31.249260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920410, 38.093033, 31.012619>,  <37.738277, 38.027706, 30.870634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920410, 38.093033, 31.012619>,  <38.223969, 38.201908, 31.249260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920410, 38.093033, 31.012619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575464, 0.144954, -0.804879,
		0.304834, -0.951263, 0.046631,
		-0.758893, -0.272189, -0.591604,
		37.692741, 38.011375, 30.835138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540337, 37.858593, 30.645279>,  <38.223969, 38.201908, 31.249260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540337, 37.858593, 30.645279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181572, 37.911694, 30.476557>,  <37.966312, 37.943554, 30.375322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181572, 37.911694, 30.476557>,  <38.540337, 37.858593, 30.645279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181572, 37.911694, 30.476557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441698, 0.223338, -0.868921,
		-0.021148, -0.965658, -0.258952,
		-0.896914, 0.132754, -0.421806,
		37.912498, 37.951519, 30.350016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429920, 37.479240, 29.953724>,  <38.540337, 37.858593, 30.645279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429920, 37.479240, 29.953724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.177322, 37.789036, 29.938910>,  <38.025764, 37.974915, 29.930021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.177322, 37.789036, 29.938910>,  <38.429920, 37.479240, 29.953724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177322, 37.789036, 29.938910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294299, 0.195222, -0.935562,
		-0.717355, -0.601706, -0.351214,
		-0.631498, 0.774492, -0.037038,
		37.987873, 38.021385, 29.927797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201260, 37.411320, 29.282938>,  <38.429920, 37.479240, 29.953724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201260, 37.411320, 29.282938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.143219, 37.780800, 29.424765>,  <38.108395, 38.002487, 29.509861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.143219, 37.780800, 29.424765>,  <38.201260, 37.411320, 29.282938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143219, 37.780800, 29.424765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507914, 0.377080, -0.774490,
		-0.849098, 0.067706, -0.523878,
		-0.145106, 0.923703, 0.354567,
		38.099686, 38.057911, 29.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306244, 37.905201, 28.754627>,  <38.201260, 37.411320, 29.282938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306244, 37.905201, 28.754627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312756, 38.177845, 29.047243>,  <38.316662, 38.341431, 29.222813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312756, 38.177845, 29.047243>,  <38.306244, 37.905201, 28.754627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312756, 38.177845, 29.047243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490595, 0.632065, -0.599842,
		-0.871235, 0.368656, -0.324101,
		0.016282, 0.681606, 0.731538,
		38.317638, 38.382328, 29.266705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204437, 38.521095, 28.398800>,  <38.306244, 37.905201, 28.754627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204437, 38.521095, 28.398800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373562, 38.637054, 28.742239>,  <38.475037, 38.706631, 28.948303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373562, 38.637054, 28.742239>,  <38.204437, 38.521095, 28.398800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373562, 38.637054, 28.742239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620727, 0.597644, -0.507463,
		-0.660248, 0.747516, 0.072744,
		0.422812, 0.289897, 0.858597,
		38.500404, 38.724022, 28.999819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207947, 39.290489, 28.350222>,  <38.204437, 38.521095, 28.398800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207947, 39.290489, 28.350222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499130, 39.185341, 28.603512>,  <38.673840, 39.122253, 28.755486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499130, 39.185341, 28.603512>,  <38.207947, 39.290489, 28.350222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499130, 39.185341, 28.603512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628577, 0.624712, -0.463277,
		-0.273802, 0.735278, 0.619999,
		0.727958, -0.262871, 0.633226,
		38.717518, 39.106480, 28.793480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727543, 39.766598, 28.303284>,  <38.207947, 39.290489, 28.350222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727543, 39.766598, 28.303284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937943, 39.482250, 28.490042>,  <39.064182, 39.311642, 28.602097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937943, 39.482250, 28.490042>,  <38.727543, 39.766598, 28.303284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937943, 39.482250, 28.490042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842199, 0.358926, -0.402334,
		0.118426, 0.604845, 0.787488,
		0.526000, -0.710869, 0.466893,
		39.095741, 39.268990, 28.630110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218723, 40.082947, 28.622305>,  <38.727543, 39.766598, 28.303284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218723, 40.082947, 28.622305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384621, 39.719925, 28.595985>,  <39.484158, 39.502110, 28.580194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.384621, 39.719925, 28.595985>,  <39.218723, 40.082947, 28.622305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384621, 39.719925, 28.595985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843591, 0.410600, -0.346067,
		0.341092, 0.088022, 0.935900,
		0.414742, -0.907557, -0.065798,
		39.509045, 39.447659, 28.576246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877571, 40.223866, 28.765209>,  <39.218723, 40.082947, 28.622305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877571, 40.223866, 28.765209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871017, 39.886040, 28.551126>,  <39.867085, 39.683346, 28.422676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.871017, 39.886040, 28.551126>,  <39.877571, 40.223866, 28.765209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871017, 39.886040, 28.551126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794159, 0.314225, -0.520166,
		0.607488, -0.433563, 0.665568,
		-0.016387, -0.844562, -0.535207,
		39.866100, 39.632671, 28.390564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536705, 40.098682, 28.653313>,  <39.877571, 40.223866, 28.765209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536705, 40.098682, 28.653313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350029, 39.864994, 28.387716>,  <40.238022, 39.724781, 28.228359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350029, 39.864994, 28.387716>,  <40.536705, 40.098682, 28.653313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350029, 39.864994, 28.387716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729109, 0.170800, -0.662742,
		0.500599, -0.793417, 0.346251,
		-0.466691, -0.584223, -0.663990,
		40.210022, 39.689728, 28.188519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086491, 39.837109, 28.344309>,  <40.536705, 40.098682, 28.653313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086491, 39.837109, 28.344309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.789375, 39.735764, 28.096413>,  <40.611107, 39.674957, 27.947676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.789375, 39.735764, 28.096413>,  <41.086491, 39.837109, 28.344309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789375, 39.735764, 28.096413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559276, 0.274073, -0.782364,
		0.368076, -0.927734, -0.061878,
		-0.742785, -0.253363, -0.619739,
		40.566540, 39.659756, 27.910490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425156, 39.350178, 27.813761>,  <41.086491, 39.837109, 28.344309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425156, 39.350178, 27.813761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.093227, 39.515705, 27.664013>,  <40.894070, 39.615021, 27.574163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.093227, 39.515705, 27.664013>,  <41.425156, 39.350178, 27.813761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093227, 39.515705, 27.664013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475885, 0.174417, -0.862039,
		-0.291432, -0.893494, -0.341665,
		-0.829820, 0.413819, -0.374370,
		40.844280, 39.639851, 27.551702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643612, 38.571693, 27.709127>,  <41.425156, 39.350178, 27.813761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643612, 38.571693, 27.709127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.966862, 38.424644, 27.893206>,  <42.160812, 38.336414, 28.003653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.966862, 38.424644, 27.893206>,  <41.643612, 38.571693, 27.709127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966862, 38.424644, 27.893206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581551, -0.374091, 0.722395,
		-0.093413, -0.851416, -0.516105,
		0.808129, -0.367622, 0.460197,
		42.209301, 38.314358, 28.031265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464363, 37.830559, 27.997810>,  <41.643612, 38.571693, 27.709127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464363, 37.830559, 27.997810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.777264, 37.957062, 28.212496>,  <41.965004, 38.032963, 28.341307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.777264, 37.957062, 28.212496>,  <41.464363, 37.830559, 27.997810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777264, 37.957062, 28.212496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395597, -0.413358, 0.820145,
		0.481234, -0.853883, -0.198238,
		0.782251, 0.316259, 0.536715,
		42.011940, 38.051941, 28.373510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516663, 37.261391, 28.551941>,  <41.464363, 37.830559, 27.997810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516663, 37.261391, 28.551941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.740128, 37.571960, 28.668602>,  <41.874207, 37.758301, 28.738600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.740128, 37.571960, 28.668602>,  <41.516663, 37.261391, 28.551941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740128, 37.571960, 28.668602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255375, -0.173535, 0.951141,
		0.789102, -0.605846, 0.101333,
		0.558660, 0.776425, 0.291655,
		41.907726, 37.804890, 28.756098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999298, 36.997311, 28.982151>,  <41.516663, 37.261391, 28.551941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999298, 36.997311, 28.982151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.964684, 37.383694, 29.079666>,  <41.943916, 37.615524, 29.138174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.964684, 37.383694, 29.079666>,  <41.999298, 36.997311, 28.982151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964684, 37.383694, 29.079666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131276, -0.253626, 0.958353,
		0.987562, 0.050929, 0.148756,
		-0.086536, 0.965961, 0.243786,
		41.938725, 37.673481, 29.152802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355850, 37.017952, 29.557350>,  <41.999298, 36.997311, 28.982151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355850, 37.017952, 29.557350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.103649, 37.328114, 29.543407>,  <41.952328, 37.514210, 29.535042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.103649, 37.328114, 29.543407>,  <42.355850, 37.017952, 29.557350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103649, 37.328114, 29.543407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435424, -0.316167, 0.842879,
		0.642551, 0.546615, 0.536973,
		-0.630503, 0.775403, -0.034856,
		41.914497, 37.560734, 29.532951>
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
