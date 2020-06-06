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
	<24.344736, 35.271385, 34.764183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249496, 35.229557, 35.150421>,  <24.192352, 35.204460, 35.382164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249496, 35.229557, 35.150421>,  <24.344736, 35.271385, 34.764183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.249496, 35.229557, 35.150421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789885, 0.557650, 0.255162,
		-0.565145, 0.823464, -0.050182,
		-0.238101, -0.104566, 0.965595,
		24.178066, 35.198189, 35.440098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350254, 35.990173, 35.229187>,  <24.344736, 35.271385, 34.764183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350254, 35.990173, 35.229187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447226, 35.651985, 35.419514>,  <24.505409, 35.449070, 35.533710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447226, 35.651985, 35.419514>,  <24.350254, 35.990173, 35.229187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447226, 35.651985, 35.419514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792040, 0.455711, 0.406203,
		-0.560270, 0.278391, 0.780126,
		0.242428, -0.845474, 0.475818,
		24.519955, 35.398342, 35.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.413679, 36.076630, 35.893860>,  <24.350254, 35.990173, 35.229187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.413679, 36.076630, 35.893860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670403, 35.778801, 35.820435>,  <24.824436, 35.600105, 35.776379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670403, 35.778801, 35.820435>,  <24.413679, 36.076630, 35.893860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670403, 35.778801, 35.820435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723609, 0.508739, 0.466449,
		-0.253919, -0.432199, 0.865291,
		0.641806, -0.744573, -0.183564,
		24.862944, 35.555428, 35.765366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633757, 35.927818, 36.600979>,  <24.413679, 36.076630, 35.893860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633757, 35.927818, 36.600979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896072, 35.823174, 36.317711>,  <25.053461, 35.760387, 36.147751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896072, 35.823174, 36.317711>,  <24.633757, 35.927818, 36.600979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896072, 35.823174, 36.317711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702017, 0.556365, 0.444556,
		0.277696, -0.788679, 0.548517,
		0.655788, -0.261616, -0.708166,
		25.092808, 35.744690, 36.105263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287495, 35.672955, 36.920765>,  <24.633757, 35.927818, 36.600979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287495, 35.672955, 36.920765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387234, 35.832165, 36.567631>,  <25.447077, 35.927692, 36.355751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.387234, 35.832165, 36.567631>,  <25.287495, 35.672955, 36.920765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.387234, 35.832165, 36.567631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751065, 0.496004, 0.435754,
		0.611333, -0.771721, -0.175269,
		0.249346, 0.398030, -0.882836,
		25.462038, 35.951572, 36.302780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031250, 35.532211, 36.668518>,  <25.287495, 35.672955, 36.920765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031250, 35.532211, 36.668518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890350, 35.893353, 36.569904>,  <25.805811, 36.110039, 36.510738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890350, 35.893353, 36.569904>,  <26.031250, 35.532211, 36.668518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890350, 35.893353, 36.569904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764395, 0.429526, 0.480840,
		0.540019, -0.019072, -0.841437,
		-0.352248, 0.902853, -0.246531,
		25.784676, 36.164207, 36.495945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553211, 35.871376, 36.274235>,  <26.031250, 35.532211, 36.668518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553211, 35.871376, 36.274235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325541, 36.167542, 36.417248>,  <26.188938, 36.345242, 36.503056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.325541, 36.167542, 36.417248>,  <26.553211, 35.871376, 36.274235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325541, 36.167542, 36.417248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821300, 0.532502, 0.204714,
		-0.038813, 0.410157, -0.911188,
		-0.569175, 0.740414, 0.357530,
		26.154789, 36.389664, 36.524506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731918, 35.234924, 36.001778>,  <26.553211, 35.871376, 36.274235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731918, 35.234924, 36.001778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080309, 35.047844, 36.061993>,  <27.289343, 34.935596, 36.098122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080309, 35.047844, 36.061993>,  <26.731918, 35.234924, 36.001778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080309, 35.047844, 36.061993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288307, -0.734596, -0.614205,
		0.397847, 0.491556, -0.774655,
		0.870975, -0.467698, 0.150538,
		27.341600, 34.907536, 36.107155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047358, 35.087872, 35.294830>,  <26.731918, 35.234924, 36.001778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047358, 35.087872, 35.294830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146671, 34.846764, 35.598152>,  <27.206259, 34.702099, 35.780148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146671, 34.846764, 35.598152>,  <27.047358, 35.087872, 35.294830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146671, 34.846764, 35.598152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342146, -0.786931, -0.513493,
		0.906251, -0.131960, -0.401616,
		0.248284, -0.602765, 0.758307,
		27.221157, 34.665936, 35.825645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363609, 34.528191, 34.921776>,  <27.047358, 35.087872, 35.294830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363609, 34.528191, 34.921776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224136, 34.406746, 35.276455>,  <27.140453, 34.333878, 35.489262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224136, 34.406746, 35.276455>,  <27.363609, 34.528191, 34.921776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224136, 34.406746, 35.276455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350053, -0.835425, -0.423708,
		0.869416, -0.458132, 0.185017,
		-0.348682, -0.303613, 0.886702,
		27.119532, 34.315662, 35.542465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416513, 33.770653, 34.858364>,  <27.363609, 34.528191, 34.921776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416513, 33.770653, 34.858364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183725, 33.804840, 35.181847>,  <27.044052, 33.825352, 35.375935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.183725, 33.804840, 35.181847>,  <27.416513, 33.770653, 34.858364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183725, 33.804840, 35.181847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541581, -0.782573, -0.307034,
		0.606628, -0.616665, 0.501724,
		-0.581972, 0.085469, 0.808705,
		27.009134, 33.830482, 35.424458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471539, 33.088802, 35.388493>,  <27.416513, 33.770653, 34.858364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471539, 33.088802, 35.388493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127291, 33.287724, 35.432343>,  <26.920742, 33.407078, 35.458652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127291, 33.287724, 35.432343>,  <27.471539, 33.088802, 35.388493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127291, 33.287724, 35.432343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499061, -0.866473, 0.012758,
		0.101334, -0.043731, 0.993891,
		-0.860621, 0.497305, 0.109628,
		26.869104, 33.436916, 35.465229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070480, 32.885815, 36.014576>,  <27.471539, 33.088802, 35.388493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070480, 32.885815, 36.014576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852785, 32.981827, 35.693031>,  <26.722168, 33.039433, 35.500107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852785, 32.981827, 35.693031>,  <27.070480, 32.885815, 36.014576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852785, 32.981827, 35.693031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421750, -0.906591, 0.014837,
		-0.725211, 0.347103, 0.594634,
		-0.544240, 0.240026, -0.803860,
		26.689512, 33.053833, 35.451874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807848, 32.274929, 35.769886>,  <27.070480, 32.885815, 36.014576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807848, 32.274929, 35.769886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606165, 32.525280, 35.531876>,  <26.485155, 32.675491, 35.389069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606165, 32.525280, 35.531876>,  <26.807848, 32.274929, 35.769886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606165, 32.525280, 35.531876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464997, -0.777365, -0.423653,
		-0.727705, 0.063075, 0.682984,
		-0.504206, 0.625880, -0.595022,
		26.454903, 32.713043, 35.353371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088923, 31.989391, 35.712467>,  <26.807848, 32.274929, 35.769886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088923, 31.989391, 35.712467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114218, 32.219246, 35.386082>,  <26.129395, 32.357159, 35.190250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.114218, 32.219246, 35.386082>,  <26.088923, 31.989391, 35.712467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.114218, 32.219246, 35.386082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187735, -0.796152, -0.575238,
		-0.980182, 0.189561, 0.057533,
		0.063237, 0.574639, -0.815961,
		26.133188, 32.391636, 35.141293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476709, 31.738344, 35.285740>,  <26.088923, 31.989391, 35.712467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476709, 31.738344, 35.285740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708256, 31.921400, 35.015781>,  <25.847183, 32.031235, 34.853806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.708256, 31.921400, 35.015781>,  <25.476709, 31.738344, 35.285740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708256, 31.921400, 35.015781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157139, -0.749539, -0.643038,
		-0.800137, 0.478286, -0.361970,
		0.578867, 0.457639, -0.674892,
		25.881916, 32.058693, 34.813313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148609, 31.853720, 34.607498>,  <25.476709, 31.738344, 35.285740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148609, 31.853720, 34.607498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529713, 31.887943, 34.490929>,  <25.758375, 31.908478, 34.420986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529713, 31.887943, 34.490929>,  <25.148609, 31.853720, 34.607498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529713, 31.887943, 34.490929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128060, -0.756887, -0.640877,
		-0.275410, 0.647922, -0.710174,
		0.952759, 0.085559, -0.291426,
		25.815540, 31.913610, 34.403500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.183958, 31.858309, 33.892330>,  <25.148609, 31.853720, 34.607498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.183958, 31.858309, 33.892330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551245, 31.753233, 34.010899>,  <25.771618, 31.690187, 34.082039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551245, 31.753233, 34.010899>,  <25.183958, 31.858309, 33.892330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551245, 31.753233, 34.010899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037860, -0.686769, -0.725889,
		0.394261, 0.677747, -0.620659,
		0.918218, -0.262691, 0.296426,
		25.826710, 31.674425, 34.099827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646265, 31.843250, 33.350918>,  <25.183958, 31.858309, 33.892330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646265, 31.843250, 33.350918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857504, 31.631886, 33.616817>,  <25.984247, 31.505066, 33.776356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857504, 31.631886, 33.616817>,  <25.646265, 31.843250, 33.350918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857504, 31.631886, 33.616817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022297, -0.773912, -0.632901,
		0.848890, 0.349057, -0.396920,
		0.528099, -0.528413, 0.664749,
		26.015934, 31.473362, 33.816242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171164, 31.614162, 32.953808>,  <25.646265, 31.843250, 33.350918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171164, 31.614162, 32.953808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187872, 31.362556, 33.264317>,  <26.197897, 31.211594, 33.450623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187872, 31.362556, 33.264317>,  <26.171164, 31.614162, 32.953808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187872, 31.362556, 33.264317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199040, -0.756138, -0.623408,
		0.979101, 0.180548, 0.093616,
		0.041769, -0.629013, 0.776272,
		26.200403, 31.173853, 33.497200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734554, 31.170820, 32.870255>,  <26.171164, 31.614162, 32.953808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734554, 31.170820, 32.870255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500648, 30.951014, 33.108944>,  <26.360306, 30.819130, 33.252159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.500648, 30.951014, 33.108944>,  <26.734554, 31.170820, 32.870255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500648, 30.951014, 33.108944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227944, -0.817276, -0.529245,
		0.778521, -0.173463, 0.603171,
		-0.584762, -0.549518, 0.596727,
		26.325220, 30.786158, 33.287964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157991, 30.668623, 33.158619>,  <26.734554, 31.170820, 32.870255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157991, 30.668623, 33.158619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781738, 30.533743, 33.174149>,  <26.555986, 30.452814, 33.183468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781738, 30.533743, 33.174149>,  <27.157991, 30.668623, 33.158619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781738, 30.533743, 33.174149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281255, -0.838332, -0.467006,
		0.190022, -0.428362, 0.883401,
		-0.940632, -0.337202, 0.038823,
		26.499548, 30.432583, 33.185795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104166, 29.979557, 33.292156>,  <27.157991, 30.668623, 33.158619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104166, 29.979557, 33.292156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756964, 30.056051, 33.108852>,  <26.548643, 30.101948, 32.998871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756964, 30.056051, 33.108852>,  <27.104166, 29.979557, 33.292156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756964, 30.056051, 33.108852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204125, -0.703865, -0.680373,
		-0.452661, -0.684108, 0.571922,
		-0.868004, 0.191234, -0.458255,
		26.496563, 30.113422, 32.971375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030983, 29.407158, 32.950073>,  <27.104166, 29.979557, 33.292156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030983, 29.407158, 32.950073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730583, 29.615839, 32.788170>,  <26.550344, 29.741049, 32.691029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730583, 29.615839, 32.788170>,  <27.030983, 29.407158, 32.950073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730583, 29.615839, 32.788170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112516, -0.705125, -0.700099,
		-0.650645, -0.480233, 0.588249,
		-0.751000, 0.521704, -0.404752,
		26.505283, 29.772350, 32.666744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441656, 28.922569, 32.898552>,  <27.030983, 29.407158, 32.950073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441656, 28.922569, 32.898552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390509, 29.224337, 32.641026>,  <26.359819, 29.405397, 32.486511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390509, 29.224337, 32.641026>,  <26.441656, 28.922569, 32.898552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390509, 29.224337, 32.641026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100957, -0.655675, -0.748263,
		-0.986639, -0.030681, 0.160004,
		-0.127868, 0.754420, -0.643817,
		26.352148, 29.450663, 32.447880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893280, 28.691597, 32.505482>,  <26.441656, 28.922569, 32.898552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893280, 28.691597, 32.505482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115875, 28.959307, 32.308548>,  <26.249432, 29.119932, 32.190388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115875, 28.959307, 32.308548>,  <25.893280, 28.691597, 32.505482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115875, 28.959307, 32.308548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091655, -0.539499, -0.836983,
		-0.825786, 0.510894, -0.238882,
		0.556486, 0.669274, -0.492337,
		26.282822, 29.160089, 32.160847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583979, 28.963352, 31.869894>,  <25.893280, 28.691597, 32.505482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583979, 28.963352, 31.869894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983120, 28.938156, 31.862694>,  <26.222605, 28.923038, 31.858374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.983120, 28.938156, 31.862694>,  <25.583979, 28.963352, 31.869894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983120, 28.938156, 31.862694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056150, -0.680767, -0.730345,
		0.033752, 0.729787, -0.682841,
		0.997852, -0.062992, -0.018000,
		26.282475, 28.919258, 31.857294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862078, 28.934586, 31.145712>,  <25.583979, 28.963352, 31.869894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862078, 28.934586, 31.145712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151981, 28.759716, 31.358730>,  <26.325924, 28.654795, 31.486542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.151981, 28.759716, 31.358730>,  <25.862078, 28.934586, 31.145712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.151981, 28.759716, 31.358730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148517, -0.655625, -0.740337,
		0.672807, 0.615656, -0.410241,
		0.724757, -0.437176, 0.532545,
		26.369408, 28.628563, 31.518494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068552, 28.329239, 30.646900>,  <25.862078, 28.934586, 31.145712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068552, 28.329239, 30.646900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752275, 28.298313, 30.889824>,  <25.562510, 28.279758, 31.035578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.752275, 28.298313, 30.889824>,  <26.068552, 28.329239, 30.646900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752275, 28.298313, 30.889824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241630, -0.950871, 0.193543,
		0.562511, 0.299778, 0.770528,
		-0.790693, -0.077312, 0.607311,
		25.515068, 28.275120, 31.072018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.533461, 28.327026, 30.106405>,  <26.068552, 28.329239, 30.646900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.533461, 28.327026, 30.106405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560577, 28.608608, 29.823605>,  <26.576847, 28.777557, 29.653923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560577, 28.608608, 29.823605>,  <26.533461, 28.327026, 30.106405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560577, 28.608608, 29.823605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199000, 0.703936, 0.681816,
		0.977652, 0.094472, 0.187808,
		0.067792, 0.703953, -0.707004,
		26.580915, 28.819794, 29.611504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454540, 28.959160, 30.375521>,  <26.533461, 28.327026, 30.106405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454540, 28.959160, 30.375521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150608, 29.072952, 30.141691>,  <25.968248, 29.141228, 30.001392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.150608, 29.072952, 30.141691>,  <26.454540, 28.959160, 30.375521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150608, 29.072952, 30.141691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648031, 0.259367, -0.716089,
		-0.052094, -0.922930, -0.381428,
		-0.759830, 0.284481, -0.584576,
		25.922659, 29.158297, 29.966318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177187, 29.260342, 30.396015>,  <26.454540, 28.959160, 30.375521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177187, 29.260342, 30.396015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243568, 29.261856, 30.001564>,  <27.283398, 29.262764, 29.764894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243568, 29.261856, 30.001564>,  <27.177187, 29.260342, 30.396015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243568, 29.261856, 30.001564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514995, 0.853127, -0.083394,
		0.840975, 0.521690, 0.143528,
		0.165954, 0.003784, -0.986126,
		27.293354, 29.262991, 29.705727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645098, 28.714384, 30.363386>,  <27.177187, 29.260342, 30.396015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645098, 28.714384, 30.363386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860407, 28.399044, 30.244211>,  <27.989594, 28.209841, 30.172707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860407, 28.399044, 30.244211>,  <27.645098, 28.714384, 30.363386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860407, 28.399044, 30.244211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765338, 0.309234, 0.564474,
		-0.352870, -0.531866, 0.769806,
		0.538275, -0.788348, -0.297938,
		28.021889, 28.162540, 30.154829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802208, 28.207045, 31.024685>,  <27.645098, 28.714384, 30.363386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802208, 28.207045, 31.024685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056068, 28.264267, 30.720907>,  <28.208385, 28.298599, 30.538641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056068, 28.264267, 30.720907>,  <27.802208, 28.207045, 31.024685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056068, 28.264267, 30.720907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683654, 0.354272, 0.638051,
		0.360329, -0.924135, 0.127034,
		0.634649, 0.143061, -0.759443,
		28.246464, 28.307182, 30.493074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264940, 28.079161, 31.395948>,  <27.802208, 28.207045, 31.024685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264940, 28.079161, 31.395948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382812, 28.279488, 31.070410>,  <28.453535, 28.399685, 30.875088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382812, 28.279488, 31.070410>,  <28.264940, 28.079161, 31.395948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382812, 28.279488, 31.070410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815060, 0.312857, 0.487645,
		0.498839, -0.807032, -0.316005,
		0.294681, 0.500819, -0.813845,
		28.471216, 28.429733, 30.826256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986454, 28.115532, 31.406942>,  <28.264940, 28.079161, 31.395948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986454, 28.115532, 31.406942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885998, 28.397940, 31.142075>,  <28.825724, 28.567385, 30.983154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885998, 28.397940, 31.142075>,  <28.986454, 28.115532, 31.406942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885998, 28.397940, 31.142075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764411, 0.564328, 0.311783,
		0.593805, -0.427868, -0.681413,
		-0.251139, 0.706019, -0.662168,
		28.810656, 28.609745, 30.943424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614872, 28.345079, 31.024372>,  <28.986454, 28.115532, 31.406942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614872, 28.345079, 31.024372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339081, 28.634756, 31.019138>,  <29.173607, 28.808561, 31.015999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339081, 28.634756, 31.019138>,  <29.614872, 28.345079, 31.024372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339081, 28.634756, 31.019138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670336, 0.644838, 0.367196,
		0.274357, 0.244402, -0.930051,
		-0.689476, 0.724190, -0.013085,
		29.132238, 28.852013, 31.015213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034712, 28.946869, 30.923656>,  <29.614872, 28.345079, 31.024372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034712, 28.946869, 30.923656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708740, 29.125057, 31.071951>,  <29.513157, 29.231970, 31.160927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708740, 29.125057, 31.071951>,  <30.034712, 28.946869, 30.923656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708740, 29.125057, 31.071951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541688, 0.812899, 0.213939,
		-0.206068, 0.375169, -0.903761,
		-0.814929, 0.445471, 0.370736,
		29.464262, 29.258699, 31.183172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105623, 29.713831, 30.736599>,  <30.034712, 28.946869, 30.923656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105623, 29.713831, 30.736599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839037, 29.696869, 31.034330>,  <29.679085, 29.686691, 31.212969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839037, 29.696869, 31.034330>,  <30.105623, 29.713831, 30.736599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839037, 29.696869, 31.034330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402527, 0.819890, 0.407128,
		-0.627533, 0.570949, -0.529357,
		-0.666464, -0.042406, 0.744330,
		29.639097, 29.684147, 31.257629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802063, 30.454649, 30.799595>,  <30.105623, 29.713831, 30.736599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802063, 30.454649, 30.799595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728216, 30.248199, 31.134148>,  <29.683908, 30.124331, 31.334879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728216, 30.248199, 31.134148>,  <29.802063, 30.454649, 30.799595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728216, 30.248199, 31.134148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119090, 0.832990, 0.540320,
		-0.975568, 0.199357, -0.092320,
		-0.184619, -0.516124, 0.836380,
		29.672831, 30.093363, 31.385061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302919, 30.822197, 31.187851>,  <29.802063, 30.454649, 30.799595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302919, 30.822197, 31.187851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486147, 30.587772, 31.455194>,  <29.596083, 30.447117, 31.615601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486147, 30.587772, 31.455194>,  <29.302919, 30.822197, 31.187851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486147, 30.587772, 31.455194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184381, 0.798172, 0.573521,
		-0.869584, -0.139479, 0.473676,
		0.458069, -0.586061, 0.668360,
		29.623568, 30.411955, 31.655703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152260, 31.181318, 31.760021>,  <29.302919, 30.822197, 31.187851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152260, 31.181318, 31.760021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468704, 30.970619, 31.884398>,  <29.658571, 30.844200, 31.959023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468704, 30.970619, 31.884398>,  <29.152260, 31.181318, 31.760021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468704, 30.970619, 31.884398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255701, 0.746588, 0.614185,
		-0.555662, -0.406381, 0.725323,
		0.791111, -0.526746, 0.310938,
		29.706038, 30.812595, 31.977678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167559, 31.247591, 32.498085>,  <29.152260, 31.181318, 31.760021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167559, 31.247591, 32.498085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539597, 31.164982, 32.376583>,  <29.762819, 31.115416, 32.303680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539597, 31.164982, 32.376583>,  <29.167559, 31.247591, 32.498085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539597, 31.164982, 32.376583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354776, 0.719329, 0.597244,
		0.095159, -0.663260, 0.742314,
		0.930096, -0.206523, -0.303759,
		29.818624, 31.103025, 32.285454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465097, 31.152634, 33.218349>,  <29.167559, 31.247591, 32.498085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465097, 31.152634, 33.218349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726164, 31.226788, 32.924503>,  <29.882803, 31.271280, 32.748196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726164, 31.226788, 32.924503>,  <29.465097, 31.152634, 33.218349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726164, 31.226788, 32.924503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441573, 0.694823, 0.567657,
		0.615664, -0.694876, 0.371625,
		0.652664, 0.185386, -0.734616,
		29.921963, 31.282404, 32.704117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003933, 31.411533, 33.596069>,  <29.465097, 31.152634, 33.218349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003933, 31.411533, 33.596069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111940, 31.511627, 33.224159>,  <30.176744, 31.571684, 33.001015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.111940, 31.511627, 33.224159>,  <30.003933, 31.411533, 33.596069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.111940, 31.511627, 33.224159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420842, 0.837847, 0.347712,
		0.866015, -0.485176, 0.120927,
		0.270020, 0.250233, -0.929770,
		30.192945, 31.586697, 32.945229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696077, 31.695019, 33.632431>,  <30.003933, 31.411533, 33.596069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696077, 31.695019, 33.632431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522337, 31.830725, 33.298668>,  <30.418093, 31.912148, 33.098412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522337, 31.830725, 33.298668>,  <30.696077, 31.695019, 33.632431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522337, 31.830725, 33.298668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322951, 0.923424, 0.207345,
		0.840858, -0.179412, -0.510656,
		-0.434352, 0.339264, -0.834409,
		30.392031, 31.932505, 33.048344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007055, 32.270264, 33.562637>,  <30.696077, 31.695019, 33.632431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007055, 32.270264, 33.562637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694643, 32.348858, 33.325527>,  <30.507196, 32.396015, 33.183262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694643, 32.348858, 33.325527>,  <31.007055, 32.270264, 33.562637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694643, 32.348858, 33.325527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121125, 0.883527, 0.452448,
		0.612636, 0.425176, -0.666261,
		-0.781029, 0.196485, -0.592780,
		30.460335, 32.407803, 33.147694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090994, 32.891346, 33.369625>,  <31.007055, 32.270264, 33.562637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090994, 32.891346, 33.369625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696222, 32.866501, 33.310146>,  <30.459358, 32.851593, 33.274460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696222, 32.866501, 33.310146>,  <31.090994, 32.891346, 33.369625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696222, 32.866501, 33.310146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130959, 0.846846, 0.515462,
		0.093904, 0.528198, -0.843913,
		-0.986931, -0.062114, -0.148694,
		30.400143, 32.847866, 33.265537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882881, 33.637264, 33.063881>,  <31.090994, 32.891346, 33.369625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882881, 33.637264, 33.063881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581686, 33.437698, 33.235508>,  <30.400969, 33.317959, 33.338486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581686, 33.437698, 33.235508>,  <30.882881, 33.637264, 33.063881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581686, 33.437698, 33.235508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246145, 0.818259, 0.519485,
		-0.610265, 0.285552, -0.738942,
		-0.752986, -0.498911, 0.429068,
		30.355789, 33.288025, 33.364227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526627, 34.136387, 33.281815>,  <30.882881, 33.637264, 33.063881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526627, 34.136387, 33.281815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364988, 33.833572, 33.487186>,  <30.268005, 33.651882, 33.610409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364988, 33.833572, 33.487186>,  <30.526627, 34.136387, 33.281815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364988, 33.833572, 33.487186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312942, 0.641841, 0.700077,
		-0.859520, 0.122225, -0.496272,
		-0.404094, -0.757035, 0.513426,
		30.243759, 33.606461, 33.641212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832256, 34.308491, 33.345913>,  <30.526627, 34.136387, 33.281815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832256, 34.308491, 33.345913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908382, 34.050678, 33.642120>,  <29.954058, 33.895992, 33.819843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908382, 34.050678, 33.642120>,  <29.832256, 34.308491, 33.345913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908382, 34.050678, 33.642120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427624, 0.624559, 0.653501,
		-0.883696, -0.441033, -0.156754,
		0.190314, -0.644528, 0.740517,
		29.965477, 33.857319, 33.864277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276571, 34.225082, 33.719116>,  <29.832256, 34.308491, 33.345913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276571, 34.225082, 33.719116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540421, 34.073975, 33.979023>,  <29.698730, 33.983311, 34.134968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540421, 34.073975, 33.979023>,  <29.276571, 34.225082, 33.719116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540421, 34.073975, 33.979023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425838, 0.524520, 0.737252,
		-0.619323, -0.763001, 0.185116,
		0.659621, -0.377768, 0.649763,
		29.738306, 33.960644, 34.173950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962919, 33.904888, 34.200401>,  <29.276571, 34.225082, 33.719116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962919, 33.904888, 34.200401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309181, 33.988857, 34.382202>,  <29.516937, 34.039238, 34.491283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.309181, 33.988857, 34.382202>,  <28.962919, 33.904888, 34.200401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309181, 33.988857, 34.382202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500608, 0.352127, 0.790821,
		0.005969, -0.912107, 0.409910,
		0.865654, 0.209924, 0.454506,
		29.568878, 34.051834, 34.518555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943966, 33.631268, 34.922905>,  <28.962919, 33.904888, 34.200401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943966, 33.631268, 34.922905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261795, 33.872116, 34.954144>,  <29.452494, 34.016624, 34.972889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261795, 33.872116, 34.954144>,  <28.943966, 33.631268, 34.922905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261795, 33.872116, 34.954144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231001, 0.180836, 0.956001,
		0.561506, -0.777655, 0.282778,
		0.794575, 0.602122, 0.078099,
		29.500168, 34.052753, 34.977573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176220, 33.527935, 35.575005>,  <28.943966, 33.631268, 34.922905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176220, 33.527935, 35.575005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332613, 33.887508, 35.495953>,  <29.426449, 34.103252, 35.448521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332613, 33.887508, 35.495953>,  <29.176220, 33.527935, 35.575005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332613, 33.887508, 35.495953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287318, 0.323192, 0.901663,
		0.874404, -0.295752, 0.384641,
		0.390981, 0.898932, -0.197626,
		29.449907, 34.157188, 35.436665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565903, 33.710026, 36.207039>,  <29.176220, 33.527935, 35.575005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565903, 33.710026, 36.207039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517014, 34.059525, 36.018730>,  <29.487680, 34.269222, 35.905746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517014, 34.059525, 36.018730>,  <29.565903, 33.710026, 36.207039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517014, 34.059525, 36.018730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479389, 0.363357, 0.798847,
		0.869050, 0.323322, 0.374454,
		-0.122225, 0.873747, -0.470773,
		29.480347, 34.321648, 35.877499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803028, 34.155239, 36.626751>,  <29.565903, 33.710026, 36.207039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803028, 34.155239, 36.626751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556581, 34.373951, 36.399971>,  <29.408714, 34.505180, 36.263905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556581, 34.373951, 36.399971>,  <29.803028, 34.155239, 36.626751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556581, 34.373951, 36.399971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443634, 0.353867, 0.823388,
		0.650838, 0.758819, 0.024549,
		-0.616115, 0.546783, -0.566948,
		29.371746, 34.537987, 36.229885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452913, 34.527225, 36.818531>,  <29.803028, 34.155239, 36.626751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452913, 34.527225, 36.818531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689566, 34.684135, 36.536797>,  <30.831556, 34.778282, 36.367756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689566, 34.684135, 36.536797>,  <30.452913, 34.527225, 36.818531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689566, 34.684135, 36.536797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800465, 0.389920, -0.455212,
		0.096067, 0.833116, 0.544691,
		0.591631, 0.392275, -0.704339,
		30.867054, 34.801819, 36.325497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437342, 34.464317, 36.072075>,  <30.452913, 34.527225, 36.818531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437342, 34.464317, 36.072075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313385, 34.779938, 35.859901>,  <30.239010, 34.969311, 35.732597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313385, 34.779938, 35.859901>,  <30.437342, 34.464317, 36.072075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313385, 34.779938, 35.859901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751156, 0.545202, 0.372181,
		0.582863, -0.283100, -0.761659,
		-0.309894, 0.789056, -0.530431,
		30.220417, 35.016655, 35.700771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978630, 34.804459, 35.718849>,  <30.437342, 34.464317, 36.072075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978630, 34.804459, 35.718849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697502, 35.083389, 35.775120>,  <30.528826, 35.250748, 35.808880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697502, 35.083389, 35.775120>,  <30.978630, 34.804459, 35.718849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697502, 35.083389, 35.775120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695677, 0.632435, 0.340675,
		0.148594, 0.337295, -0.929598,
		-0.702818, 0.697323, 0.140672,
		30.486656, 35.292587, 35.817322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240658, 35.339268, 35.532314>,  <30.978630, 34.804459, 35.718849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240658, 35.339268, 35.532314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956837, 35.437469, 35.796513>,  <30.786543, 35.496391, 35.955032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956837, 35.437469, 35.796513>,  <31.240658, 35.339268, 35.532314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956837, 35.437469, 35.796513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631288, 0.637919, 0.441061,
		-0.313063, 0.729922, -0.607623,
		-0.709554, 0.245505, 0.660500,
		30.743971, 35.511120, 35.994663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168159, 36.182457, 35.586723>,  <31.240658, 35.339268, 35.532314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168159, 36.182457, 35.586723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042273, 35.983021, 35.909798>,  <30.966740, 35.863361, 36.103642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042273, 35.983021, 35.909798>,  <31.168159, 36.182457, 35.586723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042273, 35.983021, 35.909798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523973, 0.618270, 0.585827,
		-0.791457, 0.607579, 0.066665,
		-0.314719, -0.498588, 0.807689,
		30.947857, 35.833443, 36.152103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206841, 36.623718, 36.212769>,  <31.168159, 36.182457, 35.586723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206841, 36.623718, 36.212769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189827, 36.252460, 36.360683>,  <31.179619, 36.029705, 36.449432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189827, 36.252460, 36.360683>,  <31.206841, 36.623718, 36.212769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189827, 36.252460, 36.360683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401021, 0.323139, 0.857183,
		-0.915081, 0.184754, 0.358459,
		-0.042536, -0.928142, 0.369788,
		31.177067, 35.974018, 36.471619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963299, 36.853142, 36.915684>,  <31.206841, 36.623718, 36.212769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963299, 36.853142, 36.915684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165070, 36.511040, 36.868187>,  <31.286131, 36.305779, 36.839687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165070, 36.511040, 36.868187>,  <30.963299, 36.853142, 36.915684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165070, 36.511040, 36.868187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436960, 0.134231, 0.889409,
		-0.744729, -0.500527, 0.441420,
		0.504425, -0.855251, -0.118744,
		31.316397, 36.254463, 36.832565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048090, 36.632847, 37.544605>,  <30.963299, 36.853142, 36.915684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048090, 36.632847, 37.544605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322493, 36.408051, 37.359756>,  <31.487135, 36.273170, 37.248848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322493, 36.408051, 37.359756>,  <31.048090, 36.632847, 37.544605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322493, 36.408051, 37.359756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517418, -0.069731, 0.852887,
		-0.511541, -0.824197, 0.242949,
		0.686006, -0.561993, -0.462125,
		31.528296, 36.239452, 37.221119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112379, 35.999992, 38.035694>,  <31.048090, 36.632847, 37.544605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112379, 35.999992, 38.035694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427485, 36.049988, 37.794430>,  <31.616549, 36.079987, 37.649670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427485, 36.049988, 37.794430>,  <31.112379, 35.999992, 38.035694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427485, 36.049988, 37.794430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599875, 0.066743, 0.797305,
		0.139911, -0.989910, -0.022400,
		0.787766, 0.124989, -0.603161,
		31.663815, 36.087486, 37.613480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562416, 35.479820, 38.264141>,  <31.112379, 35.999992, 38.035694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562416, 35.479820, 38.264141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783587, 35.748650, 38.067127>,  <31.916290, 35.909946, 37.948917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783587, 35.748650, 38.067127>,  <31.562416, 35.479820, 38.264141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783587, 35.748650, 38.067127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633229, 0.045270, 0.772640,
		0.541564, -0.739104, -0.400542,
		0.552929, 0.672069, -0.492538,
		31.949465, 35.950272, 37.919365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240047, 35.243645, 38.266136>,  <31.562416, 35.479820, 38.264141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240047, 35.243645, 38.266136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270443, 35.638386, 38.209064>,  <32.288681, 35.875229, 38.174824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270443, 35.638386, 38.209064>,  <32.240047, 35.243645, 38.266136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270443, 35.638386, 38.209064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757220, 0.035979, 0.652168,
		0.648724, -0.157596, -0.744527,
		0.075992, 0.986848, -0.142675,
		32.293240, 35.934441, 38.166264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930874, 35.368313, 38.264492>,  <32.240047, 35.243645, 38.266136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930874, 35.368313, 38.264492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747288, 35.711540, 38.356647>,  <32.637135, 35.917477, 38.411942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747288, 35.711540, 38.356647>,  <32.930874, 35.368313, 38.264492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747288, 35.711540, 38.356647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675939, 0.168951, 0.717330,
		0.576591, 0.484955, -0.657542,
		-0.458965, 0.858064, 0.230385,
		32.609600, 35.968960, 38.425762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509914, 35.769169, 38.389610>,  <32.930874, 35.368313, 38.264492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509914, 35.769169, 38.389610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195461, 35.945122, 38.563278>,  <33.006790, 36.050694, 38.667480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195461, 35.945122, 38.563278>,  <33.509914, 35.769169, 38.389610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195461, 35.945122, 38.563278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552137, 0.184136, 0.813166,
		0.277748, 0.878976, -0.387629,
		-0.786130, 0.439880, 0.434172,
		32.959621, 36.077087, 38.693531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740852, 36.314747, 38.755466>,  <33.509914, 35.769169, 38.389610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740852, 36.314747, 38.755466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376686, 36.297726, 38.920071>,  <33.158188, 36.287514, 39.018833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376686, 36.297726, 38.920071>,  <33.740852, 36.314747, 38.755466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376686, 36.297726, 38.920071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399933, 0.163940, 0.901763,
		-0.105837, 0.985552, -0.132234,
		-0.910413, -0.042555, 0.411506,
		33.103561, 36.284958, 39.043522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767021, 36.940495, 39.056011>,  <33.740852, 36.314747, 38.755466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767021, 36.940495, 39.056011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510574, 36.684513, 39.225445>,  <33.356705, 36.530922, 39.327106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510574, 36.684513, 39.225445>,  <33.767021, 36.940495, 39.056011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510574, 36.684513, 39.225445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380629, 0.214123, 0.899596,
		-0.666402, 0.737975, 0.106308,
		-0.641116, -0.639956, 0.423587,
		33.318241, 36.492527, 39.352520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835876, 37.108418, 39.765564>,  <33.767021, 36.940495, 39.056011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835876, 37.108418, 39.765564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597004, 36.788582, 39.790943>,  <33.453682, 36.596680, 39.806171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597004, 36.788582, 39.790943>,  <33.835876, 37.108418, 39.765564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597004, 36.788582, 39.790943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138321, -0.024738, 0.990078,
		-0.790089, 0.600035, 0.125373,
		-0.597183, -0.799591, 0.063452,
		33.417850, 36.548706, 39.809978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327702, 37.269936, 40.297726>,  <33.835876, 37.108418, 39.765564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327702, 37.269936, 40.297726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369633, 36.872486, 40.281097>,  <33.394791, 36.634018, 40.271122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369633, 36.872486, 40.281097>,  <33.327702, 37.269936, 40.297726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369633, 36.872486, 40.281097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093575, -0.031757, 0.995106,
		-0.990078, -0.108204, 0.089649,
		0.104827, -0.993621, -0.041567,
		33.401081, 36.574398, 40.268627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900471, 37.040222, 40.712345>,  <33.327702, 37.269936, 40.297726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900471, 37.040222, 40.712345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137375, 36.719467, 40.680817>,  <33.279518, 36.527016, 40.661900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137375, 36.719467, 40.680817>,  <32.900471, 37.040222, 40.712345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137375, 36.719467, 40.680817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087314, -0.161121, 0.983065,
		-0.801003, -0.575347, -0.165441,
		0.592259, -0.801883, -0.078823,
		33.315052, 36.478901, 40.657169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620029, 36.456711, 41.168644>,  <32.900471, 37.040222, 40.712345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620029, 36.456711, 41.168644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004295, 36.366795, 41.103409>,  <33.234856, 36.312843, 41.064266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004295, 36.366795, 41.103409>,  <32.620029, 36.456711, 41.168644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004295, 36.366795, 41.103409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078129, -0.344772, 0.935430,
		-0.266502, -0.911374, -0.313647,
		0.960662, -0.224790, -0.163087,
		33.292496, 36.299358, 41.054482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806389, 35.677235, 41.138493>,  <32.620029, 36.456711, 41.168644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806389, 35.677235, 41.138493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134838, 35.879757, 41.243877>,  <33.331909, 36.001270, 41.307110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134838, 35.879757, 41.243877>,  <32.806389, 35.677235, 41.138493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134838, 35.879757, 41.243877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072231, -0.550080, 0.831982,
		0.566159, -0.664132, -0.488256,
		0.821125, 0.506301, 0.263461,
		33.381176, 36.031647, 41.322914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085686, 35.125847, 41.595207>,  <32.806389, 35.677235, 41.138493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085686, 35.125847, 41.595207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330616, 35.436436, 41.654739>,  <33.477573, 35.622787, 41.690460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330616, 35.436436, 41.654739>,  <33.085686, 35.125847, 41.595207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330616, 35.436436, 41.654739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169482, -0.312796, 0.934577,
		0.772225, -0.547042, -0.323130,
		0.612327, 0.776469, 0.148835,
		33.514313, 35.669376, 41.699390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690434, 34.890179, 41.813633>,  <33.085686, 35.125847, 41.595207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690434, 34.890179, 41.813633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674591, 35.263802, 41.955605>,  <33.665085, 35.487976, 42.040787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674591, 35.263802, 41.955605>,  <33.690434, 34.890179, 41.813633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674591, 35.263802, 41.955605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189957, -0.341691, 0.920415,
		0.980993, 0.103873, -0.163898,
		-0.039604, 0.934054, 0.354927,
		33.662708, 35.544018, 42.062084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147179, 34.916611, 42.327930>,  <33.690434, 34.890179, 41.813633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147179, 34.916611, 42.327930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959362, 35.258499, 42.416466>,  <33.846672, 35.463631, 42.469585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959362, 35.258499, 42.416466>,  <34.147179, 34.916611, 42.327930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959362, 35.258499, 42.416466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244466, -0.115028, 0.962811,
		0.848390, 0.506189, -0.154939,
		-0.469542, 0.854717, 0.221335,
		33.818501, 35.514915, 42.482864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516029, 35.235783, 42.882027>,  <34.147179, 34.916611, 42.327930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516029, 35.235783, 42.882027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164394, 35.426300, 42.889481>,  <33.953411, 35.540611, 42.893951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.164394, 35.426300, 42.889481>,  <34.516029, 35.235783, 42.882027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164394, 35.426300, 42.889481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018842, -0.004334, 0.999813,
		0.476281, 0.879278, -0.005164,
		-0.879091, 0.476290, 0.018632,
		33.900665, 35.569187, 42.895069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578598, 35.844551, 43.344429>,  <34.516029, 35.235783, 42.882027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578598, 35.844551, 43.344429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200535, 35.719650, 43.306095>,  <33.973698, 35.644711, 43.283096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200535, 35.719650, 43.306095>,  <34.578598, 35.844551, 43.344429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200535, 35.719650, 43.306095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045235, -0.165431, 0.985183,
		-0.323478, 0.935485, 0.142233,
		-0.945154, -0.312251, -0.095830,
		33.916988, 35.625977, 43.277348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227943, 36.254913, 43.833073>,  <34.578598, 35.844551, 43.344429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227943, 36.254913, 43.833073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987320, 35.943424, 43.761829>,  <33.842945, 35.756531, 43.719086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987320, 35.943424, 43.761829>,  <34.227943, 36.254913, 43.833073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987320, 35.943424, 43.761829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091777, -0.288854, 0.952964,
		-0.793537, 0.556920, 0.245232,
		-0.601561, -0.778719, -0.178104,
		33.806850, 35.709808, 43.708397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866810, 36.124805, 44.510658>,  <34.227943, 36.254913, 43.833073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866810, 36.124805, 44.510658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801071, 35.784054, 44.311749>,  <33.761627, 35.579601, 44.192402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801071, 35.784054, 44.311749>,  <33.866810, 36.124805, 44.510658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801071, 35.784054, 44.311749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115100, -0.517252, 0.848058,
		-0.979664, 0.082139, 0.183061,
		-0.164347, -0.851882, -0.497279,
		33.751766, 35.528488, 44.162563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442322, 35.835522, 44.933910>,  <33.866810, 36.124805, 44.510658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442322, 35.835522, 44.933910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584797, 35.541084, 44.703678>,  <33.670280, 35.364422, 44.565540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584797, 35.541084, 44.703678>,  <33.442322, 35.835522, 44.933910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584797, 35.541084, 44.703678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094619, -0.584401, 0.805929,
		-0.929613, -0.341521, -0.138506,
		0.356185, -0.736097, -0.575581,
		33.691654, 35.320255, 44.531002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218304, 35.304531, 45.290516>,  <33.442322, 35.835522, 44.933910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218304, 35.304531, 45.290516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509193, 35.154984, 45.060257>,  <33.683727, 35.065254, 44.922100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509193, 35.154984, 45.060257>,  <33.218304, 35.304531, 45.290516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509193, 35.154984, 45.060257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323974, -0.552396, 0.768049,
		-0.605134, -0.745037, -0.280592,
		0.727223, -0.373868, -0.575647,
		33.727360, 35.042824, 44.887562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216782, 34.490452, 45.444202>,  <33.218304, 35.304531, 45.290516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216782, 34.490452, 45.444202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570240, 34.570198, 45.274769>,  <33.782314, 34.618046, 45.173107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570240, 34.570198, 45.274769>,  <33.216782, 34.490452, 45.444202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570240, 34.570198, 45.274769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451355, -0.603016, 0.657762,
		-0.124296, -0.772416, -0.622836,
		0.883646, 0.199363, -0.423587,
		33.835335, 34.630009, 45.147694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533157, 33.838337, 45.169338>,  <33.216782, 34.490452, 45.444202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533157, 33.838337, 45.169338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810486, 34.113323, 45.255772>,  <33.976883, 34.278316, 45.307632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810486, 34.113323, 45.255772>,  <33.533157, 33.838337, 45.169338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810486, 34.113323, 45.255772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433339, -0.637321, 0.637212,
		0.575779, -0.348154, -0.739775,
		0.693322, 0.687467, 0.216087,
		34.018482, 34.319565, 45.320599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185116, 33.500717, 45.305927>,  <33.533157, 33.838337, 45.169338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185116, 33.500717, 45.305927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247917, 33.857864, 45.474747>,  <34.285599, 34.072155, 45.576038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247917, 33.857864, 45.474747>,  <34.185116, 33.500717, 45.305927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247917, 33.857864, 45.474747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216224, -0.448062, 0.867460,
		0.963637, -0.044940, -0.263409,
		0.157008, 0.892872, 0.422052,
		34.295021, 34.125725, 45.601364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904888, 33.500935, 45.475109>,  <34.185116, 33.500717, 45.305927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904888, 33.500935, 45.475109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731663, 33.788921, 45.692032>,  <34.627728, 33.961716, 45.822186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731663, 33.788921, 45.692032>,  <34.904888, 33.500935, 45.475109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731663, 33.788921, 45.692032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237145, -0.489447, 0.839168,
		0.869606, 0.492022, 0.041227,
		-0.433068, 0.719969, 0.542307,
		34.601742, 34.004913, 45.854725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372627, 33.532742, 45.991783>,  <34.904888, 33.500935, 45.475109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372627, 33.532742, 45.991783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054272, 33.723541, 46.140930>,  <34.863258, 33.838020, 46.230419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054272, 33.723541, 46.140930>,  <35.372627, 33.532742, 45.991783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054272, 33.723541, 46.140930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307152, -0.212614, 0.927606,
		0.521744, 0.852800, 0.022706,
		-0.795890, 0.476999, 0.372869,
		34.815506, 33.866642, 46.252792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629517, 34.001770, 46.400139>,  <35.372627, 33.532742, 45.991783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629517, 34.001770, 46.400139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259399, 33.926964, 46.532116>,  <35.037331, 33.882080, 46.611301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259399, 33.926964, 46.532116>,  <35.629517, 34.001770, 46.400139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259399, 33.926964, 46.532116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334937, 0.005183, 0.942226,
		-0.177920, 0.982344, 0.057842,
		-0.925290, -0.187014, 0.329946,
		34.981812, 33.870861, 46.631100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559513, 34.398117, 47.084385>,  <35.629517, 34.001770, 46.400139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559513, 34.398117, 47.084385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288486, 34.104595, 47.064610>,  <35.125870, 33.928482, 47.052746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288486, 34.104595, 47.064610>,  <35.559513, 34.398117, 47.084385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288486, 34.104595, 47.064610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188199, -0.237969, 0.952865,
		-0.710977, 0.636324, 0.299340,
		-0.677564, -0.733800, -0.049435,
		35.085217, 33.884457, 47.049778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271164, 34.405273, 47.667149>,  <35.559513, 34.398117, 47.084385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271164, 34.405273, 47.667149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193027, 34.036308, 47.533878>,  <35.146145, 33.814930, 47.453918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193027, 34.036308, 47.533878>,  <35.271164, 34.405273, 47.667149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193027, 34.036308, 47.533878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281135, -0.378124, 0.882035,
		-0.939578, 0.078629, 0.333183,
		-0.195338, -0.922410, -0.333172,
		35.134426, 33.759586, 47.433926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035473, 34.065453, 48.219986>,  <35.271164, 34.405273, 47.667149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035473, 34.065453, 48.219986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152744, 33.768230, 47.979347>,  <35.223106, 33.589897, 47.834965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152744, 33.768230, 47.979347>,  <35.035473, 34.065453, 48.219986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152744, 33.768230, 47.979347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357404, -0.498444, 0.789820,
		-0.886742, -0.446568, 0.119439,
		0.293174, -0.743055, -0.601597,
		35.240696, 33.545315, 47.798870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883465, 33.483265, 48.584099>,  <35.035473, 34.065453, 48.219986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883465, 33.483265, 48.584099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131317, 33.324654, 48.313156>,  <35.280029, 33.229485, 48.150589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131317, 33.324654, 48.313156>,  <34.883465, 33.483265, 48.584099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131317, 33.324654, 48.313156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351109, -0.631802, 0.691049,
		-0.701980, -0.666025, -0.252261,
		0.619635, -0.396531, -0.677360,
		35.317207, 33.205696, 48.109947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748894, 32.724121, 48.552425>,  <34.883465, 33.483265, 48.584099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748894, 32.724121, 48.552425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117329, 32.822273, 48.431503>,  <35.338390, 32.881165, 48.358952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117329, 32.822273, 48.431503>,  <34.748894, 32.724121, 48.552425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117329, 32.822273, 48.431503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386325, -0.672639, 0.631118,
		-0.048477, -0.698102, -0.714356,
		0.921088, 0.245379, -0.302301,
		35.393654, 32.895885, 48.340813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070145, 32.084942, 48.254883>,  <34.748894, 32.724121, 48.552425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070145, 32.084942, 48.254883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382969, 32.305721, 48.370632>,  <35.570663, 32.438190, 48.440083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382969, 32.305721, 48.370632>,  <35.070145, 32.084942, 48.254883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382969, 32.305721, 48.370632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165245, -0.631369, 0.757673,
		0.600900, -0.544725, -0.584973,
		0.782057, 0.551949, 0.289377,
		35.617584, 32.471306, 48.457443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570946, 31.604267, 48.415577>,  <35.070145, 32.084942, 48.254883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570946, 31.604267, 48.415577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728012, 31.918350, 48.607101>,  <35.822254, 32.106800, 48.722015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728012, 31.918350, 48.607101>,  <35.570946, 31.604267, 48.415577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728012, 31.918350, 48.607101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401611, -0.614764, 0.678803,
		0.827357, -0.074248, -0.556747,
		0.392667, 0.785209, 0.478811,
		35.845814, 32.153912, 48.750744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193676, 31.351456, 48.420864>,  <35.570946, 31.604267, 48.415577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193676, 31.351456, 48.420864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179661, 31.647251, 48.689766>,  <36.171249, 31.824728, 48.851109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179661, 31.647251, 48.689766>,  <36.193676, 31.351456, 48.420864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179661, 31.647251, 48.689766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466157, -0.582915, 0.665514,
		0.884008, 0.336698, -0.324291,
		-0.035043, 0.739490, 0.672255,
		36.169147, 31.869099, 48.891441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856583, 31.374426, 48.620880>,  <36.193676, 31.351456, 48.420864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856583, 31.374426, 48.620880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649441, 31.555418, 48.911285>,  <36.525154, 31.664013, 49.085529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649441, 31.555418, 48.911285>,  <36.856583, 31.374426, 48.620880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649441, 31.555418, 48.911285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560240, -0.461980, 0.687536,
		0.646497, 0.762783, -0.014259,
		-0.517853, 0.452478, 0.726011,
		36.494083, 31.691162, 49.129089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291424, 31.714787, 49.119591>,  <36.856583, 31.374426, 48.620880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291424, 31.714787, 49.119591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963470, 31.669668, 49.344112>,  <36.766697, 31.642597, 49.478825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963470, 31.669668, 49.344112>,  <37.291424, 31.714787, 49.119591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963470, 31.669668, 49.344112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567852, -0.285266, 0.772119,
		0.073029, 0.951788, 0.297938,
		-0.819885, -0.112798, 0.561307,
		36.717506, 31.635828, 49.512505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515465, 31.898766, 49.799915>,  <37.291424, 31.714787, 49.119591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515465, 31.898766, 49.799915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168419, 31.705677, 49.847630>,  <36.960194, 31.589825, 49.876259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168419, 31.705677, 49.847630>,  <37.515465, 31.898766, 49.799915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168419, 31.705677, 49.847630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343649, -0.408727, 0.845487,
		-0.359379, 0.774547, 0.520503,
		-0.867613, -0.482721, 0.119284,
		36.908134, 31.560862, 49.883415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555500, 31.904175, 50.490223>,  <37.515465, 31.898766, 49.799915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555500, 31.904175, 50.490223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269550, 31.650866, 50.371616>,  <37.097980, 31.498880, 50.300453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269550, 31.650866, 50.371616>,  <37.555500, 31.904175, 50.490223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269550, 31.650866, 50.371616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123428, -0.531666, 0.837912,
		-0.688276, 0.562401, 0.458237,
		-0.714872, -0.633274, -0.296517,
		37.055088, 31.460884, 50.282661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181477, 31.800121, 51.087166>,  <37.555500, 31.904175, 50.490223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181477, 31.800121, 51.087166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086391, 31.494484, 50.847279>,  <37.029343, 31.311102, 50.703346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086391, 31.494484, 50.847279>,  <37.181477, 31.800121, 51.087166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086391, 31.494484, 50.847279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114424, -0.591086, 0.798451,
		-0.964573, 0.258421, 0.053077,
		-0.237710, -0.764091, -0.599715,
		37.015079, 31.265257, 50.667362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439697, 31.605736, 51.163368>,  <37.181477, 31.800121, 51.087166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439697, 31.605736, 51.163368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700798, 31.310165, 51.096550>,  <36.857456, 31.132822, 51.056458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700798, 31.310165, 51.096550>,  <36.439697, 31.605736, 51.163368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700798, 31.310165, 51.096550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274787, -0.436423, 0.856754,
		-0.705983, -0.513342, -0.487922,
		0.652748, -0.738928, -0.167048,
		36.896622, 31.088488, 51.046436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100063, 30.915529, 51.051689>,  <36.439697, 31.605736, 51.163368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100063, 30.915529, 51.051689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461388, 30.934937, 51.222183>,  <36.678181, 30.946581, 51.324478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461388, 30.934937, 51.222183>,  <36.100063, 30.915529, 51.051689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461388, 30.934937, 51.222183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390149, -0.320206, 0.863280,
		0.178367, -0.946105, -0.270317,
		0.903310, 0.048517, 0.426236,
		36.732380, 30.949492, 51.350056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356960, 30.401695, 51.443134>,  <36.100063, 30.915529, 51.051689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356960, 30.401695, 51.443134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541187, 30.710087, 51.619076>,  <36.651722, 30.895123, 51.724640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541187, 30.710087, 51.619076>,  <36.356960, 30.401695, 51.443134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541187, 30.710087, 51.619076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313445, -0.322348, 0.893221,
		0.830441, -0.549255, 0.093198,
		0.460565, 0.770980, 0.439852,
		36.679356, 30.941381, 51.751030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929928, 30.206287, 51.990086>,  <36.356960, 30.401695, 51.443134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929928, 30.206287, 51.990086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745571, 30.554842, 52.057331>,  <36.634956, 30.763975, 52.097679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745571, 30.554842, 52.057331>,  <36.929928, 30.206287, 51.990086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745571, 30.554842, 52.057331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379204, -0.364646, 0.850434,
		0.802358, 0.328210, 0.498497,
		-0.460896, 0.871385, 0.168118,
		36.607304, 30.816257, 52.107765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667854, 30.013922, 52.480782>,  <36.929928, 30.206287, 51.990086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667854, 30.013922, 52.480782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614422, 30.028448, 52.084633>,  <37.582363, 30.037165, 51.846943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614422, 30.028448, 52.084633>,  <37.667854, 30.013922, 52.480782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614422, 30.028448, 52.084633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988716, 0.073258, -0.130668,
		0.067807, -0.996652, -0.045694,
		-0.133578, 0.036318, -0.990373,
		37.574348, 30.039343, 51.787521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025665, 29.551517, 52.076912>,  <37.667854, 30.013922, 52.480782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025665, 29.551517, 52.076912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985016, 29.902521, 51.889442>,  <37.960625, 30.113123, 51.776962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985016, 29.902521, 51.889442>,  <38.025665, 29.551517, 52.076912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985016, 29.902521, 51.889442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991450, 0.128097, 0.024854,
		0.081845, -0.462138, -0.883023,
		-0.101627, 0.877507, -0.468671,
		37.954529, 30.165773, 51.748840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295265, 29.328005, 52.133823>,  <38.025665, 29.551517, 52.076912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295265, 29.328005, 52.133823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084244, 28.998350, 52.051376>,  <36.957630, 28.800556, 52.001907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084244, 28.998350, 52.051376>,  <37.295265, 29.328005, 52.133823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084244, 28.998350, 52.051376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080269, 0.289895, -0.953686,
		0.845720, -0.486578, -0.219088,
		-0.527555, -0.824138, -0.206113,
		36.925976, 28.751108, 51.989544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498859, 29.066122, 51.453560>,  <37.295265, 29.328005, 52.133823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498859, 29.066122, 51.453560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155468, 28.872988, 51.522697>,  <36.949432, 28.757107, 51.564178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155468, 28.872988, 51.522697>,  <37.498859, 29.066122, 51.453560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155468, 28.872988, 51.522697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212266, 0.027729, -0.976818,
		0.466853, -0.875270, -0.126295,
		-0.858482, -0.482838, 0.172845,
		36.897923, 28.728136, 51.574551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438267, 28.385721, 51.317314>,  <37.498859, 29.066122, 51.453560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438267, 28.385721, 51.317314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085991, 28.570276, 51.274410>,  <36.874626, 28.681009, 51.248669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085991, 28.570276, 51.274410>,  <37.438267, 28.385721, 51.317314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085991, 28.570276, 51.274410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051247, -0.132300, -0.989884,
		-0.470911, -0.877278, 0.092871,
		-0.880691, 0.461388, -0.107259,
		36.821785, 28.708693, 51.242233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092182, 27.983351, 50.830364>,  <37.438267, 28.385721, 51.317314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092182, 27.983351, 50.830364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955528, 28.359272, 50.827465>,  <36.873535, 28.584826, 50.825726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955528, 28.359272, 50.827465>,  <37.092182, 27.983351, 50.830364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955528, 28.359272, 50.827465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125351, -0.053204, -0.990685,
		-0.931436, -0.337544, 0.135981,
		-0.341635, 0.939805, -0.007244,
		36.853039, 28.641214, 50.825291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492596, 27.923401, 50.380154>,  <37.092182, 27.983351, 50.830364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492596, 27.923401, 50.380154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642021, 28.294243, 50.392296>,  <36.731678, 28.516748, 50.399582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642021, 28.294243, 50.392296>,  <36.492596, 27.923401, 50.380154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642021, 28.294243, 50.392296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212170, 0.117252, -0.970173,
		-0.903013, 0.355985, 0.240505,
		0.373567, 0.927107, 0.030351,
		36.754089, 28.572374, 50.401402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167046, 28.279442, 49.987202>,  <36.492596, 27.923401, 50.380154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167046, 28.279442, 49.987202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433334, 28.576580, 50.015476>,  <36.593105, 28.754864, 50.032440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.433334, 28.576580, 50.015476>,  <36.167046, 28.279442, 49.987202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433334, 28.576580, 50.015476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152661, 0.228307, -0.961546,
		-0.730419, 0.629329, 0.265392,
		0.665719, 0.742847, 0.070686,
		36.633049, 28.799435, 50.036682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787003, 28.852392, 49.673038>,  <36.167046, 28.279442, 49.987202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787003, 28.852392, 49.673038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183193, 28.907381, 49.670044>,  <36.420906, 28.940374, 49.668247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183193, 28.907381, 49.670044>,  <35.787003, 28.852392, 49.673038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183193, 28.907381, 49.670044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030229, 0.164079, -0.985984,
		-0.134315, 0.976821, 0.166673,
		0.990478, 0.137471, -0.007490,
		36.480335, 28.948622, 49.667797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892563, 29.418013, 49.198433>,  <35.787003, 28.852392, 49.673038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892563, 29.418013, 49.198433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247482, 29.236315, 49.230350>,  <36.460434, 29.127296, 49.249500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247482, 29.236315, 49.230350>,  <35.892563, 29.418013, 49.198433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247482, 29.236315, 49.230350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170808, 0.162948, -0.971737,
		0.428403, 0.875848, 0.222172,
		0.887297, -0.454244, 0.079795,
		36.513672, 29.100042, 49.254288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343029, 29.837448, 48.881790>,  <35.892563, 29.418013, 49.198433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343029, 29.837448, 48.881790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535072, 29.486807, 48.868786>,  <36.650299, 29.276423, 48.860981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.535072, 29.486807, 48.868786>,  <36.343029, 29.837448, 48.881790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535072, 29.486807, 48.868786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203782, 0.147510, -0.967840,
		0.853209, 0.458045, 0.249458,
		0.480112, -0.876605, -0.032515,
		36.679108, 29.223825, 48.859032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012119, 29.969786, 48.513062>,  <36.343029, 29.837448, 48.881790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012119, 29.969786, 48.513062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945019, 29.577297, 48.474987>,  <36.904758, 29.341805, 48.452141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945019, 29.577297, 48.474987>,  <37.012119, 29.969786, 48.513062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945019, 29.577297, 48.474987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338857, 0.033282, -0.940249,
		0.925762, -0.189987, 0.326911,
		-0.167755, -0.981223, -0.095189,
		36.894691, 29.282930, 48.446430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409702, 29.839005, 47.929962>,  <37.012119, 29.969786, 48.513062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409702, 29.839005, 47.929962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179985, 29.517740, 47.993366>,  <37.042156, 29.324982, 48.031406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179985, 29.517740, 47.993366>,  <37.409702, 29.839005, 47.929962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179985, 29.517740, 47.993366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011013, -0.201180, -0.979492,
		0.818577, -0.560769, 0.124381,
		-0.574292, -0.803159, 0.158506,
		37.007698, 29.276793, 48.040916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754845, 29.324318, 47.611107>,  <37.409702, 29.839005, 47.929962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754845, 29.324318, 47.611107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370766, 29.213366, 47.624237>,  <37.140316, 29.146793, 47.632114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370766, 29.213366, 47.624237>,  <37.754845, 29.324318, 47.611107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370766, 29.213366, 47.624237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025424, -0.030230, -0.999220,
		0.278157, -0.960284, 0.021975,
		-0.960199, -0.277381, 0.032823,
		37.082706, 29.130152, 47.634083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663143, 28.768961, 47.160347>,  <37.754845, 29.324318, 47.611107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663143, 28.768961, 47.160347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306297, 28.943260, 47.208107>,  <37.092190, 29.047840, 47.236763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306297, 28.943260, 47.208107>,  <37.663143, 28.768961, 47.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306297, 28.943260, 47.208107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148113, -0.032388, -0.988440,
		-0.426846, -0.899485, 0.093434,
		-0.892113, 0.435750, 0.119401,
		37.038662, 29.073984, 47.243927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250210, 28.341009, 46.794689>,  <37.663143, 28.768961, 47.160347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250210, 28.341009, 46.794689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040966, 28.681053, 46.818924>,  <36.915421, 28.885078, 46.833466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040966, 28.681053, 46.818924>,  <37.250210, 28.341009, 46.794689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040966, 28.681053, 46.818924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288828, -0.109944, -0.951047,
		-0.801831, -0.515004, 0.303048,
		-0.523111, 0.850108, 0.060591,
		36.884033, 28.936085, 46.837101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720673, 28.211428, 46.413269>,  <37.250210, 28.341009, 46.794689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720673, 28.211428, 46.413269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705509, 28.609652, 46.447727>,  <36.696411, 28.848587, 46.468403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705509, 28.609652, 46.447727>,  <36.720673, 28.211428, 46.413269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705509, 28.609652, 46.447727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371122, 0.066019, -0.926234,
		-0.927810, -0.067082, 0.366972,
		-0.037906, 0.995561, 0.086149,
		36.694138, 28.908319, 46.473572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156139, 28.423473, 46.006107>,  <36.720673, 28.211428, 46.413269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156139, 28.423473, 46.006107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353725, 28.770332, 46.031570>,  <36.472279, 28.978447, 46.046848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353725, 28.770332, 46.031570>,  <36.156139, 28.423473, 46.006107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353725, 28.770332, 46.031570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335512, 0.257639, -0.906120,
		-0.802138, 0.426239, 0.418203,
		0.493969, 0.867146, 0.063653,
		36.501915, 29.030476, 46.050667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699085, 28.928276, 45.832829>,  <36.156139, 28.423473, 46.006107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699085, 28.928276, 45.832829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056091, 29.093372, 45.760101>,  <36.270294, 29.192430, 45.716465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056091, 29.093372, 45.760101>,  <35.699085, 28.928276, 45.832829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056091, 29.093372, 45.760101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327016, 0.314593, -0.891118,
		-0.310603, 0.854795, 0.415752,
		0.892517, 0.412742, -0.181818,
		36.323845, 29.217196, 45.705555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523781, 29.442057, 45.503773>,  <35.699085, 28.928276, 45.832829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523781, 29.442057, 45.503773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908047, 29.423189, 45.394302>,  <36.138607, 29.411869, 45.328621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908047, 29.423189, 45.394302>,  <35.523781, 29.442057, 45.503773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908047, 29.423189, 45.394302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216180, 0.491603, -0.843559,
		0.174333, 0.869541, 0.462068,
		0.960663, -0.047170, -0.273680,
		36.196247, 29.409039, 45.312199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482075, 30.044434, 45.166664>,  <35.523781, 29.442057, 45.503773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482075, 30.044434, 45.166664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804588, 29.851732, 45.029366>,  <35.998096, 29.736111, 44.946987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804588, 29.851732, 45.029366>,  <35.482075, 30.044434, 45.166664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804588, 29.851732, 45.029366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138469, 0.410440, -0.901313,
		0.575094, 0.774243, 0.264223,
		0.806283, -0.481753, -0.343251,
		36.046474, 29.707207, 44.926392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930683, 30.492590, 44.860722>,  <35.482075, 30.044434, 45.166664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930683, 30.492590, 44.860722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034702, 30.139788, 44.703526>,  <36.097115, 29.928106, 44.609207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034702, 30.139788, 44.703526>,  <35.930683, 30.492590, 44.860722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034702, 30.139788, 44.703526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171661, 0.358280, -0.917697,
		0.950215, 0.306106, -0.058236,
		0.260048, -0.882006, -0.392990,
		36.112717, 29.875187, 44.585629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461952, 30.553452, 44.308624>,  <35.930683, 30.492590, 44.860722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461952, 30.553452, 44.308624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313644, 30.190557, 44.229164>,  <36.224659, 29.972822, 44.181488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313644, 30.190557, 44.229164>,  <36.461952, 30.553452, 44.308624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313644, 30.190557, 44.229164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068121, 0.239881, -0.968409,
		0.926225, -0.345521, -0.150742,
		-0.370766, -0.907233, -0.198647,
		36.202415, 29.918388, 44.169571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589344, 30.438036, 43.650978>,  <36.461952, 30.553452, 44.308624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589344, 30.438036, 43.650978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310383, 30.153185, 43.683235>,  <36.143005, 29.982275, 43.702587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310383, 30.153185, 43.683235>,  <36.589344, 30.438036, 43.650978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310383, 30.153185, 43.683235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207960, 0.093407, -0.973667,
		0.685844, -0.695808, -0.213236,
		-0.697403, -0.712128, 0.080638,
		36.101162, 29.939547, 43.707428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687492, 29.908228, 43.084927>,  <36.589344, 30.438036, 43.650978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687492, 29.908228, 43.084927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311100, 29.889143, 43.218964>,  <36.085266, 29.877691, 43.299385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311100, 29.889143, 43.218964>,  <36.687492, 29.908228, 43.084927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311100, 29.889143, 43.218964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337932, 0.188157, -0.922171,
		-0.019050, -0.980979, -0.193176,
		-0.940978, -0.047713, 0.335089,
		36.028805, 29.874828, 43.319489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359150, 29.509588, 42.587475>,  <36.687492, 29.908228, 43.084927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359150, 29.509588, 42.587475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080841, 29.725288, 42.777260>,  <35.913857, 29.854708, 42.891129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080841, 29.725288, 42.777260>,  <36.359150, 29.509588, 42.587475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080841, 29.725288, 42.777260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361596, 0.307778, -0.880069,
		-0.620605, -0.783889, -0.019153,
		-0.695771, 0.539250, 0.474460,
		35.872108, 29.887064, 42.919598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779018, 29.497084, 42.147942>,  <36.359150, 29.509588, 42.587475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779018, 29.497084, 42.147942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742416, 29.817900, 42.384029>,  <35.720455, 30.010389, 42.525684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742416, 29.817900, 42.384029>,  <35.779018, 29.497084, 42.147942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742416, 29.817900, 42.384029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292581, 0.544894, -0.785803,
		-0.951853, -0.244591, 0.184802,
		-0.091503, 0.802039, 0.590221,
		35.714966, 30.058512, 42.561096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164330, 29.829548, 41.862564>,  <35.779018, 29.497084, 42.147942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164330, 29.829548, 41.862564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306412, 30.093508, 42.127399>,  <35.391663, 30.251883, 42.286301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306412, 30.093508, 42.127399>,  <35.164330, 29.829548, 41.862564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306412, 30.093508, 42.127399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226862, 0.747959, -0.623772,
		-0.906842, 0.071365, 0.415385,
		0.355206, 0.659898, 0.662090,
		35.412975, 30.291477, 42.326027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599972, 30.240744, 42.071480>,  <35.164330, 29.829548, 41.862564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599972, 30.240744, 42.071480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934372, 30.452105, 42.130661>,  <35.135014, 30.578920, 42.166168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934372, 30.452105, 42.130661>,  <34.599972, 30.240744, 42.071480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934372, 30.452105, 42.130661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323896, 0.692841, -0.644254,
		-0.442933, 0.490676, 0.750365,
		0.836003, 0.528401, 0.147955,
		35.185173, 30.610624, 42.175049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404984, 30.950146, 42.195560>,  <34.599972, 30.240744, 42.071480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404984, 30.950146, 42.195560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781853, 30.931883, 42.062759>,  <35.007973, 30.920925, 41.983078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781853, 30.931883, 42.062759>,  <34.404984, 30.950146, 42.195560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781853, 30.931883, 42.062759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219908, 0.663328, -0.715288,
		0.252884, 0.746935, 0.614929,
		0.942173, -0.045656, -0.332002,
		35.064507, 30.918186, 41.963158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497673, 31.676161, 41.953793>,  <34.404984, 30.950146, 42.195560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497673, 31.676161, 41.953793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782787, 31.452883, 41.783920>,  <34.953857, 31.318916, 41.681999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782787, 31.452883, 41.783920>,  <34.497673, 31.676161, 41.953793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782787, 31.452883, 41.783920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061555, 0.652940, -0.754905,
		0.698672, 0.511946, 0.499768,
		0.712789, -0.558194, -0.424678,
		34.996624, 31.285425, 41.656517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847256, 32.175068, 41.561497>,  <34.497673, 31.676161, 41.953793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847256, 32.175068, 41.561497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951466, 31.813610, 41.425526>,  <35.013992, 31.596735, 41.343945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951466, 31.813610, 41.425526>,  <34.847256, 32.175068, 41.561497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951466, 31.813610, 41.425526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144974, 0.311475, -0.939131,
		0.954520, 0.293948, -0.049858,
		0.260526, -0.903647, -0.339924,
		35.029625, 31.542517, 41.323547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050323, 32.297604, 40.927708>,  <34.847256, 32.175068, 41.561497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050323, 32.297604, 40.927708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005138, 31.901690, 40.892918>,  <34.978027, 31.664141, 40.872044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005138, 31.901690, 40.892918>,  <35.050323, 32.297604, 40.927708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005138, 31.901690, 40.892918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213273, 0.109651, -0.970820,
		0.970440, -0.091115, -0.223481,
		-0.112961, -0.989785, -0.086978,
		34.971249, 31.604753, 40.866825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548237, 32.098747, 40.422081>,  <35.050323, 32.297604, 40.927708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548237, 32.098747, 40.422081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228928, 31.857904, 40.428116>,  <35.037342, 31.713398, 40.431736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228928, 31.857904, 40.428116>,  <35.548237, 32.098747, 40.422081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228928, 31.857904, 40.428116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151297, 0.176217, -0.972655,
		0.582988, -0.778723, -0.231766,
		-0.798269, -0.602112, 0.015086,
		34.989449, 31.677271, 40.432640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520126, 31.825974, 39.786007>,  <35.548237, 32.098747, 40.422081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520126, 31.825974, 39.786007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158241, 31.747139, 39.937088>,  <34.941113, 31.699839, 40.027737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158241, 31.747139, 39.937088>,  <35.520126, 31.825974, 39.786007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158241, 31.747139, 39.937088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397614, 0.072266, -0.914702,
		0.152978, -0.977719, -0.143743,
		-0.904710, -0.197084, 0.377700,
		34.886829, 31.688013, 40.050400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099495, 31.460279, 39.184952>,  <35.520126, 31.825974, 39.786007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099495, 31.460279, 39.184952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818687, 31.604189, 39.430794>,  <34.650204, 31.690535, 39.578300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818687, 31.604189, 39.430794>,  <35.099495, 31.460279, 39.184952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818687, 31.604189, 39.430794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548835, 0.276642, -0.788828,
		-0.453823, -0.891086, 0.003248,
		-0.702015, 0.359771, 0.614606,
		34.608082, 31.712120, 39.615177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420818, 31.365585, 38.774933>,  <35.099495, 31.460279, 39.184952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420818, 31.365585, 38.774933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343250, 31.635345, 39.059910>,  <34.296711, 31.797201, 39.230896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343250, 31.635345, 39.059910>,  <34.420818, 31.365585, 38.774933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343250, 31.635345, 39.059910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702662, 0.411304, -0.580599,
		-0.684588, -0.613198, 0.394117,
		-0.193920, 0.674401, 0.712444,
		34.285072, 31.837666, 39.273643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701286, 31.390631, 38.634144>,  <34.420818, 31.365585, 38.774933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701286, 31.390631, 38.634144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740475, 31.704592, 38.878872>,  <33.763988, 31.892969, 39.025711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740475, 31.704592, 38.878872>,  <33.701286, 31.390631, 38.634144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740475, 31.704592, 38.878872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759421, 0.456293, -0.463764,
		-0.643180, -0.419193, 0.640778,
		0.097976, 0.784904, 0.611823,
		33.769867, 31.940063, 39.062420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016388, 31.609640, 38.814228>,  <33.701286, 31.390631, 38.634144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016388, 31.609640, 38.814228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255447, 31.927446, 38.857227>,  <33.398884, 32.118130, 38.883026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255447, 31.927446, 38.857227>,  <33.016388, 31.609640, 38.814228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255447, 31.927446, 38.857227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568079, 0.514255, -0.642517,
		-0.565774, 0.322931, 0.758694,
		0.597650, 0.794517, 0.107502,
		33.434742, 32.165802, 38.889477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651230, 32.152191, 39.066261>,  <33.016388, 31.609640, 38.814228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651230, 32.152191, 39.066261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963203, 32.331646, 38.891708>,  <33.150387, 32.439320, 38.786976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.963203, 32.331646, 38.891708>,  <32.651230, 32.152191, 39.066261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.963203, 32.331646, 38.891708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617481, 0.437849, -0.653456,
		-0.102092, 0.779112, 0.618516,
		0.779932, 0.448635, -0.436386,
		33.197182, 32.466236, 38.760792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334572, 32.774132, 38.816624>,  <32.651230, 32.152191, 39.066261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334572, 32.774132, 38.816624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689419, 32.772194, 38.632019>,  <32.902328, 32.771030, 38.521255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689419, 32.772194, 38.632019>,  <32.334572, 32.774132, 38.816624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689419, 32.772194, 38.632019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337330, 0.675655, -0.655514,
		0.314998, 0.737202, 0.597753,
		0.887121, -0.004846, -0.461511,
		32.955555, 32.770741, 38.493565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684944, 33.478287, 38.795425>,  <32.334572, 32.774132, 38.816624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684944, 33.478287, 38.795425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882595, 33.285042, 38.506306>,  <33.001186, 33.169094, 38.332832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882595, 33.285042, 38.506306>,  <32.684944, 33.478287, 38.795425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882595, 33.285042, 38.506306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229958, 0.729148, -0.644564,
		0.838423, 0.484712, 0.249199,
		0.494131, -0.483112, -0.722798,
		33.030834, 33.140110, 38.289467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167194, 33.941952, 38.477436>,  <32.684944, 33.478287, 38.795425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167194, 33.941952, 38.477436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079460, 33.646770, 38.222149>,  <33.026817, 33.469662, 38.068977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079460, 33.646770, 38.222149>,  <33.167194, 33.941952, 38.477436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079460, 33.646770, 38.222149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142825, 0.671383, -0.727218,
		0.965138, -0.068354, -0.252658,
		-0.219339, -0.737951, -0.638215,
		33.013657, 33.425385, 38.030685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551727, 34.127594, 37.811905>,  <33.167194, 33.941952, 38.477436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551727, 34.127594, 37.811905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250496, 33.879211, 37.724930>,  <33.069756, 33.730183, 37.672745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250496, 33.879211, 37.724930>,  <33.551727, 34.127594, 37.811905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250496, 33.879211, 37.724930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314079, 0.629701, -0.710515,
		0.578122, -0.466782, -0.669246,
		-0.753080, -0.620960, -0.217438,
		33.024570, 33.692924, 37.659698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586937, 33.832043, 37.088810>,  <33.551727, 34.127594, 37.811905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586937, 33.832043, 37.088810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221222, 33.886600, 37.241375>,  <33.001793, 33.919334, 37.332912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221222, 33.886600, 37.241375>,  <33.586937, 33.832043, 37.088810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221222, 33.886600, 37.241375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151365, 0.758349, -0.634031,
		-0.375718, -0.637419, -0.672706,
		-0.914289, 0.136392, 0.381408,
		32.946934, 33.927517, 37.355797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071087, 34.127522, 36.663044>,  <33.586937, 33.832043, 37.088810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071087, 34.127522, 36.663044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274754, 34.190826, 36.324646>,  <34.396954, 34.228809, 36.121609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274754, 34.190826, 36.324646>,  <34.071087, 34.127522, 36.663044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274754, 34.190826, 36.324646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791998, -0.470899, 0.388578,
		-0.336879, -0.867875, -0.365111,
		0.509167, 0.158263, -0.845991,
		34.427505, 34.238304, 36.070850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425835, 33.493103, 36.427090>,  <34.071087, 34.127522, 36.663044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425835, 33.493103, 36.427090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607578, 33.839069, 36.341782>,  <34.716625, 34.046650, 36.290596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607578, 33.839069, 36.341782>,  <34.425835, 33.493103, 36.427090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607578, 33.839069, 36.341782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824347, -0.317480, 0.468677,
		0.337655, -0.388758, -0.857238,
		0.454357, 0.864913, -0.213273,
		34.743885, 34.098545, 36.277802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084873, 33.300335, 36.165295>,  <34.425835, 33.493103, 36.427090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084873, 33.300335, 36.165295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131542, 33.687664, 36.253601>,  <35.159542, 33.920063, 36.306587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131542, 33.687664, 36.253601>,  <35.084873, 33.300335, 36.165295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131542, 33.687664, 36.253601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763598, -0.229598, 0.603492,
		0.635064, 0.098168, -0.766197,
		0.116674, 0.968322, 0.220770,
		35.166546, 33.978161, 36.319832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752445, 33.415733, 36.068275>,  <35.084873, 33.300335, 36.165295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752445, 33.415733, 36.068275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625103, 33.699295, 36.320023>,  <35.548698, 33.869431, 36.471069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625103, 33.699295, 36.320023>,  <35.752445, 33.415733, 36.068275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625103, 33.699295, 36.320023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766142, -0.198586, 0.611220,
		0.558281, 0.676770, -0.479901,
		-0.318354, 0.708905, 0.629369,
		35.529598, 33.911968, 36.508835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397430, 33.630371, 36.317440>,  <35.752445, 33.415733, 36.068275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397430, 33.630371, 36.317440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135277, 33.786781, 36.575916>,  <35.977985, 33.880627, 36.731003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135277, 33.786781, 36.575916>,  <36.397430, 33.630371, 36.317440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135277, 33.786781, 36.575916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665990, -0.104374, 0.738623,
		0.356264, 0.914444, -0.192011,
		-0.655388, 0.391022, 0.646195,
		35.938660, 33.904087, 36.769775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770866, 34.117020, 36.784485>,  <36.397430, 33.630371, 36.317440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770866, 34.117020, 36.784485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440952, 33.973331, 36.959156>,  <36.243004, 33.887119, 37.063961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.440952, 33.973331, 36.959156>,  <36.770866, 34.117020, 36.784485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.440952, 33.973331, 36.959156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492784, -0.077917, 0.866656,
		-0.277294, 0.929996, 0.241281,
		-0.824786, -0.359218, 0.436681,
		36.193516, 33.865566, 37.090160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790043, 34.388615, 37.352024>,  <36.770866, 34.117020, 36.784485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790043, 34.388615, 37.352024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559696, 34.064323, 37.394165>,  <36.421486, 33.869751, 37.419449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559696, 34.064323, 37.394165>,  <36.790043, 34.388615, 37.352024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559696, 34.064323, 37.394165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624131, -0.352735, 0.697165,
		-0.528047, 0.467231, 0.709128,
		-0.575871, -0.810724, 0.105353,
		36.386936, 33.821106, 37.425770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903862, 34.221695, 38.086872>,  <36.790043, 34.388615, 37.352024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903862, 34.221695, 38.086872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714832, 33.894714, 37.955151>,  <36.601414, 33.698524, 37.876118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714832, 33.894714, 37.955151>,  <36.903862, 34.221695, 38.086872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714832, 33.894714, 37.955151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478289, -0.551739, 0.683245,
		-0.740210, 0.165383, 0.651718,
		-0.472576, -0.817455, -0.329302,
		36.573059, 33.649479, 37.856361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580391, 33.885784, 38.609848>,  <36.903862, 34.221695, 38.086872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580391, 33.885784, 38.609848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654106, 33.590023, 38.350826>,  <36.698334, 33.412567, 38.195415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654106, 33.590023, 38.350826>,  <36.580391, 33.885784, 38.609848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654106, 33.590023, 38.350826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387401, -0.550857, 0.739241,
		-0.903305, -0.387093, 0.184931,
		0.184284, -0.739402, -0.647552,
		36.709393, 33.368202, 38.156559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390076, 33.280354, 38.971996>,  <36.580391, 33.885784, 38.609848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390076, 33.280354, 38.971996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618771, 33.150322, 38.670681>,  <36.755989, 33.072304, 38.489891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618771, 33.150322, 38.670681>,  <36.390076, 33.280354, 38.971996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618771, 33.150322, 38.670681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460847, -0.632370, 0.622678,
		-0.678778, -0.703157, -0.211734,
		0.571735, -0.325083, -0.753286,
		36.790291, 33.052795, 38.444695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336182, 32.552830, 38.962215>,  <36.390076, 33.280354, 38.971996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336182, 32.552830, 38.962215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680775, 32.636261, 38.777027>,  <36.887531, 32.686321, 38.665916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680775, 32.636261, 38.777027>,  <36.336182, 32.552830, 38.962215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680775, 32.636261, 38.777027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448769, -0.739342, 0.501976,
		-0.237590, -0.640210, -0.730536,
		0.861486, 0.208577, -0.462967,
		36.939220, 32.698833, 38.638138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588963, 31.874435, 38.923870>,  <36.336182, 32.552830, 38.962215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588963, 31.874435, 38.923870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881695, 32.135948, 38.846943>,  <37.057335, 32.292854, 38.800785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.881695, 32.135948, 38.846943>,  <36.588963, 31.874435, 38.923870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881695, 32.135948, 38.846943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660027, -0.609731, 0.438852,
		0.169651, -0.448103, -0.877737,
		0.731835, 0.653782, -0.192319,
		37.101246, 32.332085, 38.789246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162205, 31.433784, 38.567814>,  <36.588963, 31.874435, 38.923870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162205, 31.433784, 38.567814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301434, 31.757341, 38.757355>,  <37.384972, 31.951475, 38.871078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301434, 31.757341, 38.757355>,  <37.162205, 31.433784, 38.567814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301434, 31.757341, 38.757355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534349, -0.586500, 0.608678,
		0.770270, 0.041338, -0.636377,
		0.348073, 0.808894, 0.473853,
		37.405857, 32.000008, 38.899509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928890, 31.319510, 38.597271>,  <37.162205, 31.433784, 38.567814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928890, 31.319510, 38.597271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832615, 31.581314, 38.883957>,  <37.774849, 31.738398, 39.055969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832615, 31.581314, 38.883957>,  <37.928890, 31.319510, 38.597271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832615, 31.581314, 38.883957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392752, -0.609593, 0.688580,
		0.887589, 0.447227, -0.110337,
		-0.240691, 0.654511, 0.716717,
		37.760406, 31.777668, 39.098972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533665, 31.329515, 38.930622>,  <37.928890, 31.319510, 38.597271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533665, 31.329515, 38.930622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264133, 31.502728, 39.170101>,  <38.102417, 31.606655, 39.313789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264133, 31.502728, 39.170101>,  <38.533665, 31.329515, 38.930622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264133, 31.502728, 39.170101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385947, -0.484680, 0.784939,
		0.630082, 0.759979, 0.159463,
		-0.673826, 0.433032, 0.598700,
		38.061985, 31.632637, 39.349712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943558, 31.461472, 39.547897>,  <38.533665, 31.329515, 38.930622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943558, 31.461472, 39.547897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562416, 31.469296, 39.669022>,  <38.333733, 31.473989, 39.741695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562416, 31.469296, 39.669022>,  <38.943558, 31.461472, 39.547897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562416, 31.469296, 39.669022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288421, -0.251707, 0.923827,
		0.094292, 0.967606, 0.234197,
		-0.952850, 0.019562, 0.302812,
		38.276562, 31.475164, 39.759865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910156, 31.763107, 40.209839>,  <38.943558, 31.461472, 39.547897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910156, 31.763107, 40.209839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562180, 31.566051, 40.218922>,  <38.353394, 31.447819, 40.224369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.562180, 31.566051, 40.218922>,  <38.910156, 31.763107, 40.209839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562180, 31.566051, 40.218922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211971, -0.331952, 0.919171,
		-0.445283, 0.804434, 0.393203,
		-0.869937, -0.492639, 0.022704,
		38.301197, 31.418261, 40.225735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610764, 31.840300, 40.939354>,  <38.910156, 31.763107, 40.209839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610764, 31.840300, 40.939354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407433, 31.525610, 40.799259>,  <38.285435, 31.336796, 40.715202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407433, 31.525610, 40.799259>,  <38.610764, 31.840300, 40.939354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407433, 31.525610, 40.799259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083380, -0.449755, 0.889251,
		-0.857117, 0.422829, 0.294221,
		-0.508329, -0.786724, -0.350237,
		38.254932, 31.289593, 40.694187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053604, 31.713766, 41.465176>,  <38.610764, 31.840300, 40.939354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053604, 31.713766, 41.465176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082779, 31.382030, 41.243591>,  <38.100285, 31.182989, 41.110641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082779, 31.382030, 41.243591>,  <38.053604, 31.713766, 41.465176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082779, 31.382030, 41.243591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062196, -0.558144, 0.827410,
		-0.995395, -0.025893, -0.092290,
		0.072936, -0.829340, -0.553963,
		38.104660, 31.133228, 41.077404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532722, 31.331059, 41.679707>,  <38.053604, 31.713766, 41.465176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532722, 31.331059, 41.679707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782597, 31.057384, 41.529156>,  <37.932522, 30.893181, 41.438824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.782597, 31.057384, 41.529156>,  <37.532722, 31.331059, 41.679707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782597, 31.057384, 41.529156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065430, -0.526164, 0.847862,
		-0.778132, -0.505018, -0.373452,
		0.624683, -0.684184, -0.376382,
		37.970001, 30.852129, 41.416241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144306, 30.664034, 41.739635>,  <37.532722, 31.331059, 41.679707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144306, 30.664034, 41.739635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533489, 30.580681, 41.699791>,  <37.766998, 30.530670, 41.675884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533489, 30.580681, 41.699791>,  <37.144306, 30.664034, 41.739635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533489, 30.580681, 41.699791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045297, -0.595058, 0.802405,
		-0.226478, -0.776198, -0.588408,
		0.972962, -0.208380, -0.099609,
		37.825378, 30.518167, 41.669907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187527, 29.901411, 41.968422>,  <37.144306, 30.664034, 41.739635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187527, 29.901411, 41.968422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566589, 30.029131, 41.969227>,  <37.794025, 30.105762, 41.969711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566589, 30.029131, 41.969227>,  <37.187527, 29.901411, 41.968422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566589, 30.029131, 41.969227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149497, -0.449257, 0.880806,
		0.282145, -0.834396, -0.473474,
		0.947652, 0.319298, 0.002016,
		37.850883, 30.124920, 41.969830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571335, 29.340328, 42.398327>,  <37.187527, 29.901411, 41.968422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571335, 29.340328, 42.398327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859444, 29.617579, 42.387096>,  <38.032307, 29.783930, 42.380360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859444, 29.617579, 42.387096>,  <37.571335, 29.340328, 42.398327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859444, 29.617579, 42.387096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325437, -0.301888, 0.896077,
		0.612621, -0.654551, -0.443009,
		0.720268, 0.693128, -0.028073,
		38.075523, 29.825518, 42.378674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261284, 28.988905, 42.561665>,  <37.571335, 29.340328, 42.398327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261284, 28.988905, 42.561665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263386, 29.376513, 42.660439>,  <38.264648, 29.609077, 42.719704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263386, 29.376513, 42.660439>,  <38.261284, 28.988905, 42.561665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263386, 29.376513, 42.660439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348580, -0.233221, 0.907800,
		0.937265, 0.081306, -0.339005,
		0.005254, 0.969019, 0.246931,
		38.264961, 29.667217, 42.734516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835960, 29.213680, 42.819378>,  <38.261284, 28.988905, 42.561665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835960, 29.213680, 42.819378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595406, 29.477127, 43.000290>,  <38.451073, 29.635195, 43.108837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595406, 29.477127, 43.000290>,  <38.835960, 29.213680, 42.819378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595406, 29.477127, 43.000290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278598, -0.357683, 0.891317,
		0.748809, 0.662031, 0.031617,
		-0.601388, 0.658618, 0.452277,
		38.414989, 29.674713, 43.135975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195435, 29.233509, 43.409363>,  <38.835960, 29.213680, 42.819378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195435, 29.233509, 43.409363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869846, 29.457117, 43.472549>,  <38.674496, 29.591282, 43.510464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869846, 29.457117, 43.472549>,  <39.195435, 29.233509, 43.409363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869846, 29.457117, 43.472549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146873, -0.065057, 0.987014,
		0.562038, 0.826597, -0.029151,
		-0.813966, 0.559021, 0.157969,
		38.625656, 29.624823, 43.519939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408875, 29.798069, 43.770481>,  <39.195435, 29.233509, 43.409363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408875, 29.798069, 43.770481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033966, 29.711739, 43.879986>,  <38.809021, 29.659941, 43.945686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033966, 29.711739, 43.879986>,  <39.408875, 29.798069, 43.770481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033966, 29.711739, 43.879986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282343, -0.009371, 0.959268,
		-0.204469, 0.976387, 0.069720,
		-0.937270, -0.215826, 0.273760,
		38.752785, 29.646992, 43.962112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230728, 30.290136, 44.232567>,  <39.408875, 29.798069, 43.770481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230728, 30.290136, 44.232567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969864, 30.002851, 44.329613>,  <38.813347, 29.830481, 44.387840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969864, 30.002851, 44.329613>,  <39.230728, 30.290136, 44.232567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969864, 30.002851, 44.329613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277087, 0.072058, 0.958139,
		-0.705631, 0.692082, 0.152015,
		-0.652156, -0.718213, 0.242614,
		38.774216, 29.787388, 44.402397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077477, 30.456509, 44.862583>,  <39.230728, 30.290136, 44.232567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077477, 30.456509, 44.862583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961441, 30.074493, 44.838089>,  <38.891819, 29.845284, 44.823391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961441, 30.074493, 44.838089>,  <39.077477, 30.456509, 44.862583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961441, 30.074493, 44.838089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386430, -0.175437, 0.905480,
		-0.875513, 0.239001, 0.419947,
		-0.290085, -0.955040, -0.061240,
		38.874416, 29.787981, 44.819717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806526, 30.415119, 45.536366>,  <39.077477, 30.456509, 44.862583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806526, 30.415119, 45.536366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839500, 30.044882, 45.388592>,  <38.859283, 29.822739, 45.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839500, 30.044882, 45.388592>,  <38.806526, 30.415119, 45.536366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839500, 30.044882, 45.388592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103044, -0.360793, 0.926936,
		-0.991255, -0.114478, 0.065636,
		0.082433, -0.925593, -0.369434,
		38.864231, 29.767204, 45.277760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283642, 29.839502, 45.899490>,  <38.806526, 30.415119, 45.536366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283642, 29.839502, 45.899490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600021, 29.648104, 45.746941>,  <38.789848, 29.533264, 45.655411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600021, 29.648104, 45.746941>,  <38.283642, 29.839502, 45.899490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600021, 29.648104, 45.746941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228969, -0.346543, 0.909660,
		-0.567433, -0.806813, -0.164536,
		0.790944, -0.478497, -0.381375,
		38.837303, 29.504555, 45.632526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303123, 29.231174, 46.290516>,  <38.283642, 29.839502, 45.899490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303123, 29.231174, 46.290516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667915, 29.282866, 46.134773>,  <38.886791, 29.313881, 46.041328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667915, 29.282866, 46.134773>,  <38.303123, 29.231174, 46.290516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667915, 29.282866, 46.134773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393034, -0.547222, 0.738967,
		-0.117569, -0.826951, -0.549845,
		0.911977, 0.129229, -0.389356,
		38.941509, 29.321634, 46.017967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540066, 28.692547, 46.455856>,  <38.303123, 29.231174, 46.290516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540066, 28.692547, 46.455856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871193, 28.895212, 46.359512>,  <39.069870, 29.016811, 46.301704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871193, 28.895212, 46.359512>,  <38.540066, 28.692547, 46.455856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871193, 28.895212, 46.359512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517969, -0.525376, 0.675047,
		0.215479, -0.683573, -0.697350,
		0.827814, 0.506664, -0.240862,
		39.119537, 29.047211, 46.287254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991623, 28.213659, 46.387161>,  <38.540066, 28.692547, 46.455856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991623, 28.213659, 46.387161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184738, 28.555712, 46.462704>,  <39.300610, 28.760942, 46.508030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184738, 28.555712, 46.462704>,  <38.991623, 28.213659, 46.387161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184738, 28.555712, 46.462704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408103, -0.410497, 0.815441,
		0.774831, -0.316616, -0.547166,
		0.482792, 0.855129, 0.188854,
		39.329575, 28.812250, 46.519360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586868, 28.018709, 46.696617>,  <38.991623, 28.213659, 46.387161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586868, 28.018709, 46.696617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585289, 28.410885, 46.775330>,  <39.584343, 28.646191, 46.822559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585289, 28.410885, 46.775330>,  <39.586868, 28.018709, 46.696617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585289, 28.410885, 46.775330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571907, -0.159215, 0.804719,
		0.820309, 0.115718, -0.560092,
		-0.003946, 0.980439, 0.196785,
		39.584106, 28.705017, 46.834366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308815, 28.155638, 46.808979>,  <39.586868, 28.018709, 46.696617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308815, 28.155638, 46.808979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083000, 28.432198, 46.989319>,  <39.947510, 28.598133, 47.097523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083000, 28.432198, 46.989319>,  <40.308815, 28.155638, 46.808979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083000, 28.432198, 46.989319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439878, -0.210177, 0.873117,
		0.698431, 0.691224, -0.185479,
		-0.564536, 0.691400, 0.450848,
		39.913639, 28.639618, 47.124573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734886, 28.329870, 47.345482>,  <40.308815, 28.155638, 46.808979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734886, 28.329870, 47.345482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398716, 28.514004, 47.459873>,  <40.197014, 28.624483, 47.528507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398716, 28.514004, 47.459873>,  <40.734886, 28.329870, 47.345482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398716, 28.514004, 47.459873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307330, -0.029799, 0.951136,
		0.446362, 0.887246, -0.116431,
		-0.840422, 0.460334, 0.285978,
		40.146591, 28.652103, 47.545666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944244, 28.823805, 47.904339>,  <40.734886, 28.329870, 47.345482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944244, 28.823805, 47.904339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559696, 28.717827, 47.934212>,  <40.328968, 28.654240, 47.952137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559696, 28.717827, 47.934212>,  <40.944244, 28.823805, 47.904339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559696, 28.717827, 47.934212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132127, -0.206130, 0.969563,
		-0.241488, 0.941973, 0.233173,
		-0.961367, -0.264947, 0.074682,
		40.271286, 28.638342, 47.956615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752937, 29.100412, 48.598213>,  <40.944244, 28.823805, 47.904339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752937, 29.100412, 48.598213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497372, 28.826963, 48.457104>,  <40.344032, 28.662895, 48.372437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497372, 28.826963, 48.457104>,  <40.752937, 29.100412, 48.598213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497372, 28.826963, 48.457104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063971, -0.409777, 0.909940,
		-0.766613, 0.603942, 0.218081,
		-0.638915, -0.683621, -0.352775,
		40.305698, 28.621878, 48.351273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050869, 29.067911, 49.001812>,  <40.752937, 29.100412, 48.598213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050869, 29.067911, 49.001812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207863, 28.729042, 48.858562>,  <40.302059, 28.525721, 48.772614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.207863, 28.729042, 48.858562>,  <40.050869, 29.067911, 49.001812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207863, 28.729042, 48.858562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177535, -0.451826, 0.874262,
		-0.902463, -0.279552, -0.327736,
		0.392481, -0.847174, -0.358126,
		40.325607, 28.474890, 48.751125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983223, 29.695654, 48.582985>,  <40.050869, 29.067911, 49.001812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983223, 29.695654, 48.582985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610535, 29.818052, 48.661232>,  <39.386921, 29.891491, 48.708179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610535, 29.818052, 48.661232>,  <39.983223, 29.695654, 48.582985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610535, 29.818052, 48.661232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301712, -0.951975, 0.052087,
		0.202165, -0.010491, 0.979295,
		-0.931719, 0.305995, 0.195621,
		39.331020, 29.909851, 48.719917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303787, 30.396862, 48.766937>,  <39.983223, 29.695654, 48.582985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303787, 30.396862, 48.766937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605385, 30.659557, 48.761486>,  <40.786343, 30.817175, 48.758213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605385, 30.659557, 48.761486>,  <40.303787, 30.396862, 48.766937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605385, 30.659557, 48.761486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409706, 0.453958, -0.791241,
		-0.513450, 0.602177, 0.611352,
		0.753996, 0.656738, -0.013631,
		40.831585, 30.856579, 48.757397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028069, 30.913847, 48.921078>,  <40.303787, 30.396862, 48.766937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028069, 30.913847, 48.921078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346786, 31.049839, 48.721264>,  <40.538017, 31.131433, 48.601376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346786, 31.049839, 48.721264>,  <40.028069, 30.913847, 48.921078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346786, 31.049839, 48.721264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604163, 0.434123, -0.668224,
		-0.010322, 0.834237, 0.551309,
		0.796794, 0.339978, -0.499535,
		40.585823, 31.151833, 48.571404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782269, 31.508558, 48.645687>,  <40.028069, 30.913847, 48.921078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782269, 31.508558, 48.645687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118736, 31.441519, 48.440025>,  <40.320618, 31.401295, 48.316628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118736, 31.441519, 48.440025>,  <39.782269, 31.508558, 48.645687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118736, 31.441519, 48.440025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393502, 0.462466, -0.794532,
		0.370940, 0.870652, 0.323060,
		0.841165, -0.167599, -0.514151,
		40.371086, 31.391239, 48.285782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964207, 32.161034, 48.336468>,  <39.782269, 31.508558, 48.645687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964207, 32.161034, 48.336468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132744, 31.878183, 48.109333>,  <40.233868, 31.708473, 47.973053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132744, 31.878183, 48.109333>,  <39.964207, 32.161034, 48.336468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132744, 31.878183, 48.109333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366563, 0.439914, -0.819822,
		0.829518, 0.553575, -0.073852,
		0.421345, -0.707128, -0.567837,
		40.259148, 31.666044, 47.938984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372120, 32.450565, 47.792980>,  <39.964207, 32.161034, 48.336468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372120, 32.450565, 47.792980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289471, 32.080734, 47.664936>,  <40.239883, 31.858835, 47.588112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289471, 32.080734, 47.664936>,  <40.372120, 32.450565, 47.792980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289471, 32.080734, 47.664936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214438, 0.362004, -0.907177,
		0.954633, -0.118797, -0.273061,
		-0.206619, -0.924576, -0.320106,
		40.227486, 31.803362, 47.568905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583916, 32.444340, 47.175201>,  <40.372120, 32.450565, 47.792980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583916, 32.444340, 47.175201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321789, 32.142670, 47.192112>,  <40.164513, 31.961668, 47.202259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321789, 32.142670, 47.192112>,  <40.583916, 32.444340, 47.175201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321789, 32.142670, 47.192112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280174, 0.190706, -0.940815,
		0.701475, -0.628374, -0.336272,
		-0.655313, -0.754174, 0.042278,
		40.125195, 31.916418, 47.204796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698940, 32.102814, 46.590206>,  <40.583916, 32.444340, 47.175201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698940, 32.102814, 46.590206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328346, 32.005936, 46.705425>,  <40.105991, 31.947809, 46.774559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328346, 32.005936, 46.705425>,  <40.698940, 32.102814, 46.590206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328346, 32.005936, 46.705425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345468, 0.243729, -0.906228,
		0.149273, -0.939117, -0.309479,
		-0.926482, -0.242191, 0.288052,
		40.050404, 31.933277, 46.791840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492081, 31.651064, 46.121517>,  <40.698940, 32.102814, 46.590206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492081, 31.651064, 46.121517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155594, 31.787783, 46.289104>,  <39.953701, 31.869814, 46.389656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155594, 31.787783, 46.289104>,  <40.492081, 31.651064, 46.121517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155594, 31.787783, 46.289104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305930, 0.338024, -0.890026,
		-0.445828, -0.876878, -0.179785,
		-0.841216, 0.341797, 0.418964,
		39.903229, 31.890322, 46.414795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894482, 31.390457, 45.690674>,  <40.492081, 31.651064, 46.121517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894482, 31.390457, 45.690674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765270, 31.698311, 45.910969>,  <39.687744, 31.883022, 46.043144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765270, 31.698311, 45.910969>,  <39.894482, 31.390457, 45.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765270, 31.698311, 45.910969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426635, 0.401024, -0.810655,
		-0.844768, -0.496832, 0.198810,
		-0.323032, 0.769634, 0.550739,
		39.668362, 31.929201, 46.076191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201290, 31.421797, 45.535122>,  <39.894482, 31.390457, 45.690674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201290, 31.421797, 45.535122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280499, 31.777082, 45.700951>,  <39.328022, 31.990253, 45.800446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280499, 31.777082, 45.700951>,  <39.201290, 31.421797, 45.535122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280499, 31.777082, 45.700951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495950, 0.455600, -0.739230,
		-0.845472, -0.059226, 0.530726,
		0.198018, 0.888212, 0.414570,
		39.339905, 32.043545, 45.825321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584797, 31.897974, 45.671318>,  <39.201290, 31.421797, 45.535122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584797, 31.897974, 45.671318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915703, 32.087902, 45.551193>,  <39.114246, 32.201859, 45.479118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915703, 32.087902, 45.551193>,  <38.584797, 31.897974, 45.671318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915703, 32.087902, 45.551193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516075, 0.430971, -0.740223,
		-0.222049, 0.767339, 0.601569,
		0.827261, 0.474820, -0.300308,
		39.163879, 32.230347, 45.461102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309753, 32.591484, 45.369564>,  <38.584797, 31.897974, 45.671318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309753, 32.591484, 45.369564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681538, 32.559502, 45.225506>,  <38.904610, 32.540314, 45.139072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681538, 32.559502, 45.225506>,  <38.309753, 32.591484, 45.369564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681538, 32.559502, 45.225506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277556, 0.491530, -0.825446,
		0.243018, 0.867183, 0.434668,
		0.929465, -0.079953, -0.360142,
		38.960377, 32.535515, 45.117462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468510, 33.213730, 45.045586>,  <38.309753, 32.591484, 45.369564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468510, 33.213730, 45.045586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703339, 32.936710, 44.877907>,  <38.844234, 32.770500, 44.777302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703339, 32.936710, 44.877907>,  <38.468510, 33.213730, 45.045586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703339, 32.936710, 44.877907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238182, 0.347135, -0.907065,
		0.773704, 0.632355, 0.038840,
		0.587070, -0.692549, -0.419195,
		38.879459, 32.728947, 44.752148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955585, 33.636200, 44.531849>,  <38.468510, 33.213730, 45.045586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955585, 33.636200, 44.531849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947517, 33.249020, 44.431717>,  <38.942677, 33.016712, 44.371635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947517, 33.249020, 44.431717>,  <38.955585, 33.636200, 44.531849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947517, 33.249020, 44.431717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024551, 0.250788, -0.967731,
		0.999495, -0.013372, -0.028823,
		-0.020168, -0.967950, -0.250334,
		38.941467, 32.958633, 44.356617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238239, 33.669670, 43.941139>,  <38.955585, 33.636200, 44.531849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238239, 33.669670, 43.941139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087322, 33.300560, 43.909832>,  <38.996773, 33.079094, 43.891048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087322, 33.300560, 43.909832>,  <39.238239, 33.669670, 43.941139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087322, 33.300560, 43.909832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132220, 0.137327, -0.981662,
		0.916605, -0.360028, -0.173823,
		-0.377297, -0.922779, -0.078272,
		38.974133, 33.023727, 43.886349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621639, 33.312843, 43.376705>,  <39.238239, 33.669670, 43.941139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621639, 33.312843, 43.376705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256325, 33.163418, 43.441650>,  <39.037136, 33.073761, 43.480618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256325, 33.163418, 43.441650>,  <39.621639, 33.312843, 43.376705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256325, 33.163418, 43.441650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308015, 0.372546, -0.875406,
		0.266529, -0.849507, -0.455303,
		-0.913285, -0.373561, 0.162367,
		38.982338, 33.051350, 43.490360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477360, 32.914661, 42.748257>,  <39.621639, 33.312843, 43.376705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477360, 32.914661, 42.748257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119663, 32.945290, 42.924652>,  <38.905045, 32.963665, 43.030491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119663, 32.945290, 42.924652>,  <39.477360, 32.914661, 42.748257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119663, 32.945290, 42.924652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411322, 0.247912, -0.877128,
		-0.176489, -0.965752, -0.190197,
		-0.894240, 0.076572, 0.440989,
		38.851391, 32.968262, 43.056950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965912, 32.581738, 42.287407>,  <39.477360, 32.914661, 42.748257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965912, 32.581738, 42.287407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748352, 32.809498, 42.533970>,  <38.617817, 32.946152, 42.681908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748352, 32.809498, 42.533970>,  <38.965912, 32.581738, 42.287407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748352, 32.809498, 42.533970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538681, 0.326319, -0.776749,
		-0.643425, -0.754521, 0.129239,
		-0.543900, 0.569398, 0.616408,
		38.585182, 32.980316, 42.718891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355495, 32.446457, 42.050606>,  <38.965912, 32.581738, 42.287407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355495, 32.446457, 42.050606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297188, 32.786366, 42.253242>,  <38.262203, 32.990311, 42.374825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.297188, 32.786366, 42.253242>,  <38.355495, 32.446457, 42.050606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297188, 32.786366, 42.253242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506920, 0.375580, -0.775869,
		-0.849578, -0.369901, 0.376019,
		-0.145769, 0.849772, 0.506594,
		38.253456, 33.041298, 42.405220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643230, 32.691452, 42.034096>,  <38.355495, 32.446457, 42.050606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643230, 32.691452, 42.034096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894707, 33.002251, 42.046936>,  <38.045593, 33.188728, 42.054642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894707, 33.002251, 42.046936>,  <37.643230, 32.691452, 42.034096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894707, 33.002251, 42.046936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433177, 0.384180, -0.815330,
		-0.645839, 0.498684, 0.578106,
		0.628689, 0.776994, 0.032100,
		38.083313, 33.235348, 42.056564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231010, 33.109859, 41.790890>,  <37.643230, 32.691452, 42.034096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231010, 33.109859, 41.790890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559345, 33.338024, 41.802544>,  <37.756348, 33.474922, 41.809536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559345, 33.338024, 41.802544>,  <37.231010, 33.109859, 41.790890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559345, 33.338024, 41.802544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339855, 0.528776, -0.777750,
		-0.459044, 0.628508, 0.627898,
		0.820839, 0.570416, 0.029130,
		37.805595, 33.509148, 41.811283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028049, 33.778889, 41.547527>,  <37.231010, 33.109859, 41.790890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028049, 33.778889, 41.547527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425282, 33.793587, 41.502899>,  <37.663620, 33.802406, 41.476120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425282, 33.793587, 41.502899>,  <37.028049, 33.778889, 41.547527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425282, 33.793587, 41.502899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112508, 0.570598, -0.813486,
		0.033772, 0.820407, 0.570781,
		0.993077, 0.036745, -0.111573,
		37.723206, 33.804611, 41.469429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194668, 34.403370, 41.444054>,  <37.028049, 33.778889, 41.547527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194668, 34.403370, 41.444054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509270, 34.221325, 41.277065>,  <37.698032, 34.112099, 41.176872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509270, 34.221325, 41.277065>,  <37.194668, 34.403370, 41.444054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509270, 34.221325, 41.277065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105954, 0.566509, -0.817216,
		0.608426, 0.686977, 0.397342,
		0.786506, -0.455115, -0.417467,
		37.745220, 34.084789, 41.151825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723804, 34.924500, 41.146267>,  <37.194668, 34.403370, 41.444054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723804, 34.924500, 41.146267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833973, 34.586201, 40.963467>,  <37.900074, 34.383221, 40.853786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833973, 34.586201, 40.963467>,  <37.723804, 34.924500, 41.146267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833973, 34.586201, 40.963467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110525, 0.500096, -0.858888,
		0.954950, 0.186043, 0.231211,
		0.275418, -0.845750, -0.457004,
		37.916599, 34.332478, 40.826366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274986, 35.155796, 40.887188>,  <37.723804, 34.924500, 41.146267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274986, 35.155796, 40.887188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161942, 34.834511, 40.677433>,  <38.094116, 34.641739, 40.551582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161942, 34.834511, 40.677433>,  <38.274986, 35.155796, 40.887188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161942, 34.834511, 40.677433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321033, 0.435947, -0.840766,
		0.903919, -0.405953, 0.134656,
		-0.282609, -0.803214, -0.524386,
		38.077160, 34.593548, 40.520119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879982, 35.002056, 40.400490>,  <38.274986, 35.155796, 40.887188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879982, 35.002056, 40.400490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555893, 34.827377, 40.244114>,  <38.361439, 34.722569, 40.150288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555893, 34.827377, 40.244114>,  <38.879982, 35.002056, 40.400490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555893, 34.827377, 40.244114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263259, 0.324784, -0.908411,
		0.523673, -0.838933, -0.148182,
		-0.810223, -0.436700, -0.390937,
		38.312824, 34.696369, 40.126831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103252, 34.597588, 39.795078>,  <38.879982, 35.002056, 40.400490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103252, 34.597588, 39.795078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712017, 34.614868, 39.713612>,  <38.477276, 34.625237, 39.664730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712017, 34.614868, 39.713612>,  <39.103252, 34.597588, 39.795078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712017, 34.614868, 39.713612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207869, 0.257751, -0.943586,
		0.011726, -0.965245, -0.261084,
		-0.978087, 0.043207, -0.203667,
		38.418591, 34.627831, 39.652512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937603, 34.227104, 39.092976>,  <39.103252, 34.597588, 39.795078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937603, 34.227104, 39.092976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650230, 34.491726, 39.178955>,  <38.477806, 34.650501, 39.230541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650230, 34.491726, 39.178955>,  <38.937603, 34.227104, 39.092976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650230, 34.491726, 39.178955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026663, 0.282593, -0.958869,
		-0.695089, -0.694611, -0.185384,
		-0.718429, 0.661556, 0.214948,
		38.434700, 34.690193, 39.243439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354473, 34.151867, 38.647755>,  <38.937603, 34.227104, 39.092976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354473, 34.151867, 38.647755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337414, 34.525593, 38.789314>,  <38.327179, 34.749828, 38.874249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337414, 34.525593, 38.789314>,  <38.354473, 34.151867, 38.647755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337414, 34.525593, 38.789314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053676, 0.355850, -0.933001,
		-0.997647, -0.020799, -0.065328,
		-0.042652, 0.934312, 0.353896,
		38.324619, 34.805885, 38.895481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952160, 34.459045, 38.194481>,  <38.354473, 34.151867, 38.647755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952160, 34.459045, 38.194481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089024, 34.789551, 38.373466>,  <38.171143, 34.987854, 38.480858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089024, 34.789551, 38.373466>,  <37.952160, 34.459045, 38.194481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089024, 34.789551, 38.373466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013919, 0.471697, -0.881651,
		-0.939540, 0.307890, 0.149893,
		0.342156, 0.826260, 0.447464,
		38.191669, 35.037430, 38.507706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467522, 34.946041, 37.995911>,  <37.952160, 34.459045, 38.194481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467522, 34.946041, 37.995911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811420, 35.119987, 38.103039>,  <38.017761, 35.224354, 38.167316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811420, 35.119987, 38.103039>,  <37.467522, 34.946041, 37.995911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811420, 35.119987, 38.103039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075476, 0.410451, -0.908754,
		-0.505113, 0.801512, 0.320062,
		0.859746, 0.434867, 0.267819,
		38.069344, 35.250446, 38.183384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504517, 35.687683, 37.745407>,  <37.467522, 34.946041, 37.995911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504517, 35.687683, 37.745407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896935, 35.636063, 37.803234>,  <38.132385, 35.605091, 37.837929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896935, 35.636063, 37.803234>,  <37.504517, 35.687683, 37.745407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896935, 35.636063, 37.803234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192261, 0.554624, -0.809585,
		0.024298, 0.822033, 0.568922,
		0.981043, -0.129053, 0.144569,
		38.191246, 35.597347, 37.846603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649658, 36.352245, 37.502705>,  <37.504517, 35.687683, 37.745407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649658, 36.352245, 37.502705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979191, 36.125717, 37.512413>,  <38.176910, 35.989799, 37.518238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979191, 36.125717, 37.512413>,  <37.649658, 36.352245, 37.502705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979191, 36.125717, 37.512413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321473, 0.431522, -0.842879,
		0.466860, 0.702193, 0.537556,
		0.823831, -0.566316, 0.024275,
		38.226341, 35.955822, 37.519695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191357, 36.771320, 37.460484>,  <37.649658, 36.352245, 37.502705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191357, 36.771320, 37.460484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317398, 36.412201, 37.337410>,  <38.393024, 36.196728, 37.263565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317398, 36.412201, 37.337410>,  <38.191357, 36.771320, 37.460484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317398, 36.412201, 37.337410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458607, 0.427878, -0.778845,
		0.830897, 0.104309, 0.546562,
		0.315103, -0.897797, -0.307685,
		38.411930, 36.142860, 37.245106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854675, 36.906387, 37.178333>,  <38.191357, 36.771320, 37.460484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854675, 36.906387, 37.178333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749645, 36.559853, 37.008381>,  <38.686626, 36.351933, 36.906410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749645, 36.559853, 37.008381>,  <38.854675, 36.906387, 37.178333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749645, 36.559853, 37.008381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337750, 0.329955, -0.881507,
		0.903870, -0.374964, 0.205966,
		-0.262574, -0.866332, -0.424880,
		38.670872, 36.299953, 36.880917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411465, 36.460091, 37.045338>,  <38.854675, 36.906387, 37.178333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411465, 36.460091, 37.045338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134705, 36.387386, 36.765842>,  <38.968647, 36.343765, 36.598145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134705, 36.387386, 36.765842>,  <39.411465, 36.460091, 37.045338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134705, 36.387386, 36.765842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596814, 0.400649, -0.695193,
		0.406326, -0.898017, -0.168714,
		-0.691891, -0.181784, -0.698743,
		38.927132, 36.332859, 36.556221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754700, 36.219124, 36.414707>,  <39.411465, 36.460091, 37.045338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754700, 36.219124, 36.414707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383640, 36.289967, 36.283195>,  <39.161003, 36.332474, 36.204288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383640, 36.289967, 36.283195>,  <39.754700, 36.219124, 36.414707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383640, 36.289967, 36.283195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371963, 0.359779, -0.855688,
		-0.033261, -0.916074, -0.399627,
		-0.927651, 0.177108, -0.328779,
		39.105347, 36.343098, 36.184563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454960, 35.924507, 36.034977>,  <39.754700, 36.219124, 36.414707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454960, 35.924507, 36.034977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555031, 35.666714, 35.745964>,  <40.615074, 35.512035, 35.572556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555031, 35.666714, 35.745964>,  <40.454960, 35.924507, 36.034977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555031, 35.666714, 35.745964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644879, -0.445714, 0.620863,
		-0.722179, -0.621268, 0.304109,
		0.250177, -0.644488, -0.722528,
		40.630085, 35.473366, 35.529205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438900, 35.240673, 36.300823>,  <40.454960, 35.924507, 36.034977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438900, 35.240673, 36.300823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700554, 35.369850, 36.027233>,  <40.857544, 35.447357, 35.863079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700554, 35.369850, 36.027233>,  <40.438900, 35.240673, 36.300823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700554, 35.369850, 36.027233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755349, -0.326118, 0.568416,
		-0.039493, -0.888458, -0.457256,
		0.654132, 0.322939, -0.683975,
		40.896793, 35.466732, 35.822041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807362, 34.653168, 36.048653>,  <40.438900, 35.240673, 36.300823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807362, 34.653168, 36.048653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017788, 34.993347, 36.047894>,  <41.144043, 35.197453, 36.047440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017788, 34.993347, 36.047894>,  <40.807362, 34.653168, 36.048653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017788, 34.993347, 36.047894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768437, -0.474378, 0.429500,
		0.364367, -0.227400, -0.903065,
		0.526062, 0.850444, -0.001895,
		41.175606, 35.248482, 36.047325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458038, 34.458080, 35.792393>,  <40.807362, 34.653168, 36.048653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458038, 34.458080, 35.792393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499382, 34.821411, 35.954506>,  <41.524189, 35.039410, 36.051773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.499382, 34.821411, 35.954506>,  <41.458038, 34.458080, 35.792393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499382, 34.821411, 35.954506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781343, -0.326284, 0.532017,
		0.615484, 0.261675, -0.743442,
		0.103358, 0.908331, 0.405281,
		41.530388, 35.093910, 36.076092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162796, 34.666321, 35.818275>,  <41.458038, 34.458080, 35.792393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162796, 34.666321, 35.818275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994678, 34.909374, 36.087833>,  <41.893806, 35.055206, 36.249569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994678, 34.909374, 36.087833>,  <42.162796, 34.666321, 35.818275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994678, 34.909374, 36.087833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819521, -0.064628, 0.569394,
		0.389538, 0.791580, -0.470809,
		-0.420293, 0.607638, 0.673892,
		41.868591, 35.091667, 36.290001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663521, 35.221851, 36.027496>,  <42.162796, 34.666321, 35.818275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663521, 35.221851, 36.027496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392860, 35.176647, 36.318527>,  <42.230465, 35.149525, 36.493145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392860, 35.176647, 36.318527>,  <42.663521, 35.221851, 36.027496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392860, 35.176647, 36.318527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735173, -0.049035, 0.676104,
		-0.040727, 0.992384, 0.116259,
		-0.676655, -0.113006, 0.727577,
		42.189865, 35.142746, 36.536800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651917, 35.696911, 36.609894>,  <42.663521, 35.221851, 36.027496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651917, 35.696911, 36.609894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533710, 35.334663, 36.731564>,  <42.462788, 35.117313, 36.804565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533710, 35.334663, 36.731564>,  <42.651917, 35.696911, 36.609894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533710, 35.334663, 36.731564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722415, -0.003488, 0.691451,
		-0.625131, 0.424075, 0.655264,
		-0.295513, -0.905620, 0.304178,
		42.445057, 35.062977, 36.822815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399906, 35.599277, 37.338661>,  <42.651917, 35.696911, 36.609894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399906, 35.599277, 37.338661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569920, 35.256519, 37.221992>,  <42.671928, 35.050865, 37.151993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569920, 35.256519, 37.221992>,  <42.399906, 35.599277, 37.338661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569920, 35.256519, 37.221992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580606, 0.010886, 0.814112,
		-0.694434, -0.515374, 0.502147,
		0.425038, -0.856897, -0.291669,
		42.697430, 34.999451, 37.134491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942947, 36.079334, 37.610062>,  <42.399906, 35.599277, 37.338661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942947, 36.079334, 37.610062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288231, 36.022358, 37.416328>,  <43.495403, 35.988171, 37.300087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288231, 36.022358, 37.416328>,  <42.942947, 36.079334, 37.610062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288231, 36.022358, 37.416328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054331, 0.927585, -0.369641,
		0.501912, 0.345392, 0.792962,
		0.863210, -0.142445, -0.484332,
		43.547195, 35.979626, 37.271030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445271, 36.565048, 37.898132>,  <42.942947, 36.079334, 37.610062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445271, 36.565048, 37.898132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574501, 36.468109, 37.532204>,  <43.652039, 36.409946, 37.312649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574501, 36.468109, 37.532204>,  <43.445271, 36.565048, 37.898132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574501, 36.468109, 37.532204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116468, 0.949125, -0.292569,
		0.939180, 0.201068, 0.278411,
		0.323073, -0.242349, -0.914817,
		43.671421, 36.395405, 37.257759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.838196, 37.094429, 37.727325>,  <43.445271, 36.565048, 37.898132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.838196, 37.094429, 37.727325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766495, 36.910530, 37.379417>,  <43.723473, 36.800190, 37.170673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.766495, 36.910530, 37.379417>,  <43.838196, 37.094429, 37.727325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766495, 36.910530, 37.379417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035804, 0.880456, -0.472774,
		0.983151, -0.115888, -0.141365,
		-0.179255, -0.459747, -0.869770,
		43.712719, 36.772606, 37.118484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069740, 37.508991, 37.041157>,  <43.838196, 37.094429, 37.727325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069740, 37.508991, 37.041157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832367, 37.254314, 36.844196>,  <43.689941, 37.101509, 36.726021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832367, 37.254314, 36.844196>,  <44.069740, 37.508991, 37.041157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832367, 37.254314, 36.844196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223218, 0.717960, -0.659323,
		0.773312, -0.281351, -0.568182,
		-0.593433, -0.636691, -0.492404,
		43.654335, 37.063309, 36.696476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264069, 37.570232, 36.322430>,  <44.069740, 37.508991, 37.041157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264069, 37.570232, 36.322430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902794, 37.399021, 36.309437>,  <43.686031, 37.296295, 36.301640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.902794, 37.399021, 36.309437>,  <44.264069, 37.570232, 36.322430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902794, 37.399021, 36.309437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190690, 0.467872, -0.862979,
		0.384573, -0.773235, -0.504194,
		-0.903184, -0.428023, -0.032482,
		43.631840, 37.270615, 36.299690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121616, 37.305801, 35.637520>,  <44.264069, 37.570232, 36.322430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121616, 37.305801, 35.637520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749050, 37.331287, 35.780857>,  <43.525513, 37.346577, 35.866859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.749050, 37.331287, 35.780857>,  <44.121616, 37.305801, 35.637520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749050, 37.331287, 35.780857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302860, 0.410373, -0.860157,
		-0.201857, -0.909689, -0.362931,
		-0.931413, 0.063711, 0.358345,
		43.469627, 37.350399, 35.888359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796703, 37.246281, 35.091244>,  <44.121616, 37.305801, 35.637520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796703, 37.246281, 35.091244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521160, 37.393105, 35.341282>,  <43.355835, 37.481197, 35.491302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.521160, 37.393105, 35.341282>,  <43.796703, 37.246281, 35.091244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.521160, 37.393105, 35.341282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483891, 0.409225, -0.773553,
		-0.539741, -0.835347, -0.104284,
		-0.688861, 0.367056, 0.625093,
		43.314503, 37.503220, 35.528809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145084, 37.045307, 34.750404>,  <43.796703, 37.246281, 35.091244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145084, 37.045307, 34.750404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055653, 37.364540, 34.974220>,  <43.001995, 37.556080, 35.108509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.055653, 37.364540, 34.974220>,  <43.145084, 37.045307, 34.750404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.055653, 37.364540, 34.974220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442243, 0.428513, -0.787907,
		-0.868581, -0.423612, 0.257137,
		-0.223580, 0.798079, 0.559538,
		42.988579, 37.603962, 35.142082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469299, 37.225578, 34.593025>,  <43.145084, 37.045307, 34.750404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469299, 37.225578, 34.593025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614750, 37.565849, 34.744877>,  <42.702019, 37.770012, 34.835987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614750, 37.565849, 34.744877>,  <42.469299, 37.225578, 34.593025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614750, 37.565849, 34.744877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264252, 0.484984, -0.833643,
		-0.893280, 0.202815, 0.401146,
		0.363624, 0.850680, 0.379632,
		42.723839, 37.821053, 34.858768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014946, 37.739349, 34.351402>,  <42.469299, 37.225578, 34.593025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014946, 37.739349, 34.351402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329739, 37.945709, 34.486759>,  <42.518612, 38.069527, 34.567974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329739, 37.945709, 34.486759>,  <42.014946, 37.739349, 34.351402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329739, 37.945709, 34.486759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200634, 0.732642, -0.650370,
		-0.583447, 0.443935, 0.680081,
		0.786979, 0.515904, 0.338390,
		42.565834, 38.100479, 34.588276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770794, 38.340374, 34.275314>,  <42.014946, 37.739349, 34.351402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770794, 38.340374, 34.275314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166603, 38.398079, 34.272800>,  <42.404087, 38.432701, 34.271290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166603, 38.398079, 34.272800>,  <41.770794, 38.340374, 34.275314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166603, 38.398079, 34.272800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103682, 0.679501, -0.726312,
		-0.100507, 0.719352, 0.687337,
		0.989519, 0.144264, -0.006289,
		42.463459, 38.441357, 34.270912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852394, 39.048584, 34.112545>,  <41.770794, 38.340374, 34.275314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852394, 39.048584, 34.112545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223392, 38.916080, 34.043236>,  <42.445992, 38.836578, 34.001652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223392, 38.916080, 34.043236>,  <41.852394, 39.048584, 34.112545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223392, 38.916080, 34.043236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103296, 0.672532, -0.732824,
		0.359290, 0.661789, 0.657986,
		0.927491, -0.331263, -0.173274,
		42.501640, 38.816700, 33.991253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281090, 39.652214, 34.086578>,  <41.852394, 39.048584, 34.112545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281090, 39.652214, 34.086578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495308, 39.363754, 33.910793>,  <42.623840, 39.190678, 33.805321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495308, 39.363754, 33.910793>,  <42.281090, 39.652214, 34.086578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495308, 39.363754, 33.910793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204169, 0.615506, -0.761227,
		0.819453, 0.317949, 0.476870,
		0.535548, -0.721152, -0.439463,
		42.655972, 39.147408, 33.778954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884697, 39.975929, 34.036617>,  <42.281090, 39.652214, 34.086578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884697, 39.975929, 34.036617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882294, 39.677357, 33.770443>,  <42.880852, 39.498215, 33.610737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882294, 39.677357, 33.770443>,  <42.884697, 39.975929, 34.036617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882294, 39.677357, 33.770443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432556, 0.598031, -0.674725,
		0.901587, -0.291890, 0.319282,
		-0.006005, -0.746431, -0.665436,
		42.880493, 39.453426, 33.570812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554619, 39.823433, 33.811699>,  <42.884697, 39.975929, 34.036617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554619, 39.823433, 33.811699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307003, 39.711666, 33.518108>,  <43.158432, 39.644604, 33.341953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307003, 39.711666, 33.518108>,  <43.554619, 39.823433, 33.811699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307003, 39.711666, 33.518108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410386, 0.681735, -0.605657,
		0.669606, -0.676138, -0.307353,
		-0.619041, -0.279418, -0.733971,
		43.121292, 39.627838, 33.297916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917797, 40.031834, 33.289604>,  <43.554619, 39.823433, 33.811699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917797, 40.031834, 33.289604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590591, 39.935276, 33.080769>,  <43.394268, 39.877342, 32.955467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590591, 39.935276, 33.080769>,  <43.917797, 40.031834, 33.289604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590591, 39.935276, 33.080769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314074, 0.572972, -0.757008,
		0.481878, -0.783220, -0.392886,
		-0.818016, -0.241390, -0.522092,
		43.345188, 39.862858, 32.924141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104031, 39.821167, 32.587318>,  <43.917797, 40.031834, 33.289604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104031, 39.821167, 32.587318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724178, 39.942932, 32.557564>,  <43.496265, 40.015991, 32.539711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724178, 39.942932, 32.557564>,  <44.104031, 39.821167, 32.587318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724178, 39.942932, 32.557564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246986, 0.580966, -0.775549,
		-0.192874, -0.754857, -0.626890,
		-0.949630, 0.304416, -0.074386,
		43.439289, 40.034256, 32.535248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923859, 39.867260, 31.856558>,  <44.104031, 39.821167, 32.587318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923859, 39.867260, 31.856558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671368, 40.104218, 32.056808>,  <43.519875, 40.246391, 32.176960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671368, 40.104218, 32.056808>,  <43.923859, 39.867260, 31.856558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671368, 40.104218, 32.056808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194938, 0.745925, -0.636863,
		-0.750702, -0.304413, -0.586327,
		-0.631226, 0.592392, 0.500626,
		43.481998, 40.281937, 32.206997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500366, 40.230186, 31.325459>,  <43.923859, 39.867260, 31.856558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500366, 40.230186, 31.325459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420105, 40.458496, 31.643944>,  <43.371948, 40.595482, 31.835035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420105, 40.458496, 31.643944>,  <43.500366, 40.230186, 31.325459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420105, 40.458496, 31.643944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006160, 0.813462, -0.581585,
		-0.979643, -0.111794, -0.166741,
		-0.200655, 0.570773, 0.796214,
		43.359909, 40.629726, 31.882809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987732, 40.654659, 31.147015>,  <43.500366, 40.230186, 31.325459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987732, 40.654659, 31.147015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167427, 40.852146, 31.444855>,  <43.275242, 40.970638, 31.623558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167427, 40.852146, 31.444855>,  <42.987732, 40.654659, 31.147015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167427, 40.852146, 31.444855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071505, 0.810890, -0.580813,
		-0.890547, 0.314164, 0.328978,
		0.449236, 0.493718, 0.744601,
		43.302197, 41.000263, 31.668236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620171, 41.303043, 31.365522>,  <42.987732, 40.654659, 31.147015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620171, 41.303043, 31.365522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006168, 41.367298, 31.448446>,  <43.237766, 41.405849, 31.498201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006168, 41.367298, 31.448446>,  <42.620171, 41.303043, 31.365522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006168, 41.367298, 31.448446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048393, 0.885965, -0.461220,
		-0.257757, 0.435044, 0.862727,
		0.964997, 0.160632, 0.207310,
		43.295666, 41.415489, 31.510639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718327, 42.071182, 31.630585>,  <42.620171, 41.303043, 31.365522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718327, 42.071182, 31.630585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066597, 41.955700, 31.471298>,  <43.275558, 41.886410, 31.375727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066597, 41.955700, 31.471298>,  <42.718327, 42.071182, 31.630585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066597, 41.955700, 31.471298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178264, 0.939790, -0.291575,
		0.458418, 0.182879, 0.869717,
		0.870675, -0.288702, -0.398216,
		43.327801, 41.869091, 31.351833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557697, 42.251377, 31.903502>,  <42.718327, 42.071182, 31.630585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557697, 42.251377, 31.903502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515381, 42.216751, 31.507256>,  <43.489990, 42.195976, 31.269508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515381, 42.216751, 31.507256>,  <43.557697, 42.251377, 31.903502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515381, 42.216751, 31.507256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031160, 0.995426, -0.090309,
		0.993899, -0.040422, -0.102615,
		-0.105796, -0.086561, -0.990614,
		43.483643, 42.190784, 31.210072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190830, 42.623775, 31.587208>,  <43.557697, 42.251377, 31.903502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190830, 42.623775, 31.587208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841347, 42.648457, 31.394199>,  <43.631657, 42.663265, 31.278395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841347, 42.648457, 31.394199>,  <44.190830, 42.623775, 31.587208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841347, 42.648457, 31.394199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104650, 0.992539, -0.062568,
		0.475060, -0.105161, -0.873647,
		-0.873709, 0.061703, -0.482521,
		43.579235, 42.666969, 31.249443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172123, 43.181023, 31.118982>,  <44.190830, 42.623775, 31.587208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172123, 43.181023, 31.118982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783287, 43.134144, 31.200272>,  <43.549984, 43.106014, 31.249046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783287, 43.134144, 31.200272>,  <44.172123, 43.181023, 31.118982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783287, 43.134144, 31.200272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076848, 0.977553, 0.196175,
		-0.221656, 0.175083, -0.959278,
		-0.972092, -0.117202, 0.203225,
		43.491661, 43.098984, 31.261240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626228, 43.368629, 31.721827>,  <44.172123, 43.181023, 31.118982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626228, 43.368629, 31.721827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410248, 43.605774, 31.960815>,  <44.280659, 43.748058, 32.104210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410248, 43.605774, 31.960815>,  <44.626228, 43.368629, 31.721827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410248, 43.605774, 31.960815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623086, -0.195694, 0.757276,
		0.565881, 0.781167, -0.263738,
		-0.539947, 0.592859, 0.597474,
		44.248264, 43.783630, 32.140057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099476, 43.728542, 32.181488>,  <44.626228, 43.368629, 31.721827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099476, 43.728542, 32.181488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741669, 43.702465, 32.358387>,  <44.526985, 43.686817, 32.464527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741669, 43.702465, 32.358387>,  <45.099476, 43.728542, 32.181488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741669, 43.702465, 32.358387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445423, -0.213639, 0.869458,
		0.037798, 0.974735, 0.220143,
		-0.894522, -0.065193, 0.442244,
		44.473312, 43.682907, 32.491058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056530, 44.155479, 32.790142>,  <45.099476, 43.728542, 32.181488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056530, 44.155479, 32.790142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832886, 43.832981, 32.867455>,  <44.698700, 43.639481, 32.913841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832886, 43.832981, 32.867455>,  <45.056530, 44.155479, 32.790142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832886, 43.832981, 32.867455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463243, -0.110448, 0.879322,
		-0.687603, 0.581177, 0.435241,
		-0.559113, -0.806247, 0.193282,
		44.665154, 43.591106, 32.925438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845188, 44.214180, 33.438072>,  <45.056530, 44.155479, 32.790142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845188, 44.214180, 33.438072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855690, 43.819641, 33.373055>,  <44.861992, 43.582916, 33.334042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855690, 43.819641, 33.373055>,  <44.845188, 44.214180, 33.438072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855690, 43.819641, 33.373055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401606, -0.138495, 0.905280,
		-0.915436, -0.089051, 0.392487,
		0.026259, -0.986351, -0.162547,
		44.863567, 43.523735, 33.324291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244461, 44.065697, 33.999592>,  <44.845188, 44.214180, 33.438072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244461, 44.065697, 33.999592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020115, 43.966995, 34.315704>,  <43.885509, 43.907772, 34.505371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020115, 43.966995, 34.315704>,  <44.244461, 44.065697, 33.999592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020115, 43.966995, 34.315704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714975, -0.625639, 0.312068,
		0.417425, 0.740058, 0.527323,
		-0.560863, -0.246758, 0.790281,
		43.851856, 43.892967, 34.552788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713215, 43.945801, 34.492058>,  <44.244461, 44.065697, 33.999592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713215, 43.945801, 34.492058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385220, 43.747139, 34.605862>,  <44.188423, 43.627941, 34.674145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385220, 43.747139, 34.605862>,  <44.713215, 43.945801, 34.492058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385220, 43.747139, 34.605862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536092, -0.840574, 0.077720,
		0.200554, 0.216255, 0.955517,
		-0.819990, -0.496658, 0.284513,
		44.139221, 43.598141, 34.691216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875172, 43.426159, 35.004898>,  <44.713215, 43.945801, 34.492058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875172, 43.426159, 35.004898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540031, 43.307659, 34.821491>,  <44.338947, 43.236561, 34.711445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540031, 43.307659, 34.821491>,  <44.875172, 43.426159, 35.004898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540031, 43.307659, 34.821491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338350, -0.940964, -0.010307,
		-0.428398, -0.163777, 0.888624,
		-0.837851, -0.296251, -0.458521,
		44.288677, 43.218784, 34.683933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732471, 42.878059, 35.436962>,  <44.875172, 43.426159, 35.004898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732471, 42.878059, 35.436962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490601, 42.807819, 35.126213>,  <44.345478, 42.765675, 34.939762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.490601, 42.807819, 35.126213>,  <44.732471, 42.878059, 35.436962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490601, 42.807819, 35.126213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045073, -0.981374, 0.186745,
		-0.795194, 0.077905, 0.601330,
		-0.604678, -0.175602, -0.776871,
		44.309196, 42.755138, 34.893150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201569, 42.457226, 35.651619>,  <44.732471, 42.878059, 35.436962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201569, 42.457226, 35.651619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252129, 42.409424, 35.257717>,  <44.282463, 42.380741, 35.021378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252129, 42.409424, 35.257717>,  <44.201569, 42.457226, 35.651619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252129, 42.409424, 35.257717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180263, -0.973420, 0.141272,
		-0.975463, -0.195371, -0.101496,
		0.126399, -0.119510, -0.984754,
		44.290051, 42.373569, 34.962292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921013, 41.779259, 35.573788>,  <44.201569, 42.457226, 35.651619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921013, 41.779259, 35.573788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145100, 41.840023, 35.248070>,  <44.279552, 41.876484, 35.052639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145100, 41.840023, 35.248070>,  <43.921013, 41.779259, 35.573788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145100, 41.840023, 35.248070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375660, -0.922731, 0.086301,
		-0.738267, -0.354246, -0.573995,
		0.560215, 0.151914, -0.814298,
		44.313164, 41.885597, 35.003780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912857, 41.103321, 35.254841>,  <43.921013, 41.779259, 35.573788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912857, 41.103321, 35.254841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227848, 41.257843, 35.062740>,  <44.416843, 41.350555, 34.947479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227848, 41.257843, 35.062740>,  <43.912857, 41.103321, 35.254841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227848, 41.257843, 35.062740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493292, -0.862184, 0.115334,
		-0.369508, -0.327726, -0.869517,
		0.787482, 0.386308, -0.480248,
		44.464092, 41.373737, 34.918667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056057, 40.663719, 34.714119>,  <43.912857, 41.103321, 35.254841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056057, 40.663719, 34.714119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396008, 40.873474, 34.735016>,  <44.599976, 40.999329, 34.747555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.396008, 40.873474, 34.735016>,  <44.056057, 40.663719, 34.714119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396008, 40.873474, 34.735016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525297, -0.850908, -0.004342,
		0.042174, 0.031131, -0.998625,
		0.849873, 0.524392, 0.052239,
		44.650970, 41.030792, 34.750687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.359413, 40.253799, 34.312622>,  <44.056057, 40.663719, 34.714119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.359413, 40.253799, 34.312622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634903, 40.479168, 34.495144>,  <44.800198, 40.614388, 34.604656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634903, 40.479168, 34.495144>,  <44.359413, 40.253799, 34.312622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634903, 40.479168, 34.495144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543762, -0.817700, 0.188918,
		0.479563, 0.118011, -0.869536,
		0.688725, 0.563419, 0.456308,
		44.841522, 40.648193, 34.632034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.982460, 40.020348, 34.052158>,  <44.359413, 40.253799, 34.312622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.982460, 40.020348, 34.052158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059277, 40.188110, 34.407059>,  <45.105366, 40.288769, 34.619999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059277, 40.188110, 34.407059>,  <44.982460, 40.020348, 34.052158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059277, 40.188110, 34.407059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576712, -0.779736, 0.243754,
		0.794055, 0.464879, -0.391618,
		0.192042, 0.419404, 0.887254,
		45.116890, 40.313931, 34.673233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665131, 39.986908, 34.164928>,  <44.982460, 40.020348, 34.052158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665131, 39.986908, 34.164928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519432, 40.031960, 34.534718>,  <45.432014, 40.058990, 34.756592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519432, 40.031960, 34.534718>,  <45.665131, 39.986908, 34.164928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519432, 40.031960, 34.534718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544008, -0.779967, 0.309365,
		0.755899, 0.615602, 0.222826,
		-0.364243, 0.112630, 0.924468,
		45.410160, 40.065750, 34.812057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279255, 39.916790, 34.474457>,  <45.665131, 39.986908, 34.164928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279255, 39.916790, 34.474457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979305, 39.843712, 34.728798>,  <45.799335, 39.799866, 34.881401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979305, 39.843712, 34.728798>,  <46.279255, 39.916790, 34.474457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979305, 39.843712, 34.728798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439703, -0.855750, 0.272676,
		0.494316, 0.484060, 0.722037,
		-0.749875, -0.182694, 0.635854,
		45.754341, 39.788902, 34.919556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649727, 39.541718, 35.007507>,  <46.279255, 39.916790, 34.474457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649727, 39.541718, 35.007507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260792, 39.485275, 35.081963>,  <46.027431, 39.451408, 35.126637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260792, 39.485275, 35.081963>,  <46.649727, 39.541718, 35.007507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260792, 39.485275, 35.081963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190335, -0.940577, 0.281225,
		0.135396, 0.308875, 0.941416,
		-0.972338, -0.141108, 0.186140,
		45.969090, 39.442944, 35.137806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.568981, 39.267410, 35.664852>,  <46.649727, 39.541718, 35.007507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.568981, 39.267410, 35.664852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223492, 39.149223, 35.501549>,  <46.016197, 39.078312, 35.403568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.223492, 39.149223, 35.501549>,  <46.568981, 39.267410, 35.664852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223492, 39.149223, 35.501549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159311, -0.928638, 0.335038,
		-0.478116, 0.224342, 0.849162,
		-0.863728, -0.295468, -0.408256,
		45.964375, 39.060581, 35.379070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133236, 38.827183, 36.209942>,  <46.568981, 39.267410, 35.664852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133236, 38.827183, 36.209942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.021271, 38.726170, 35.839455>,  <45.954094, 38.665562, 35.617161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.021271, 38.726170, 35.839455>,  <46.133236, 38.827183, 36.209942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021271, 38.726170, 35.839455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141598, -0.965091, 0.220338,
		-0.949526, -0.069475, 0.305897,
		-0.279911, -0.252531, -0.926217,
		45.937298, 38.650410, 35.561588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633373, 38.339874, 36.328899>,  <46.133236, 38.827183, 36.209942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633373, 38.339874, 36.328899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732262, 38.286987, 35.944942>,  <45.791595, 38.255253, 35.714569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732262, 38.286987, 35.944942>,  <45.633373, 38.339874, 36.328899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732262, 38.286987, 35.944942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124268, -0.986792, 0.103921,
		-0.960957, 0.093593, -0.260389,
		0.247223, -0.132222, -0.959895,
		45.806427, 38.247322, 35.656975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221085, 37.764069, 36.283390>,  <45.633373, 38.339874, 36.328899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221085, 37.764069, 36.283390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491348, 37.770672, 35.988579>,  <45.653507, 37.774632, 35.811691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491348, 37.770672, 35.988579>,  <45.221085, 37.764069, 36.283390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491348, 37.770672, 35.988579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032269, -0.999453, 0.007201,
		-0.736509, -0.028649, -0.675822,
		0.675658, 0.016504, -0.737030,
		45.694046, 37.775623, 35.767471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971367, 37.244221, 35.702087>,  <45.221085, 37.764069, 36.283390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971367, 37.244221, 35.702087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365685, 37.284443, 35.648273>,  <45.602276, 37.308575, 35.615986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.365685, 37.284443, 35.648273>,  <44.971367, 37.244221, 35.702087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.365685, 37.284443, 35.648273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113804, -0.988978, 0.094713,
		-0.123531, -0.108678, -0.986372,
		0.985794, 0.100554, -0.134537,
		45.661423, 37.314610, 35.607914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039234, 36.727867, 35.275723>,  <44.971367, 37.244221, 35.702087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039234, 36.727867, 35.275723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395985, 36.815872, 35.433788>,  <45.610035, 36.868675, 35.528629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.395985, 36.815872, 35.433788>,  <45.039234, 36.727867, 35.275723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395985, 36.815872, 35.433788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095573, -0.945661, 0.310791,
		0.442073, -0.239419, -0.864437,
		0.891873, 0.220009, 0.395169,
		45.663548, 36.881874, 35.552338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478157, 36.235622, 34.986679>,  <45.039234, 36.727867, 35.275723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478157, 36.235622, 34.986679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637493, 36.372047, 35.327267>,  <45.733093, 36.453903, 35.531620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.637493, 36.372047, 35.327267>,  <45.478157, 36.235622, 34.986679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637493, 36.372047, 35.327267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120625, -0.939716, 0.319974,
		0.909271, -0.024749, -0.415468,
		0.398341, 0.341059, 0.851471,
		45.756996, 36.474365, 35.582706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110966, 35.806126, 35.156628>,  <45.478157, 36.235622, 34.986679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110966, 35.806126, 35.156628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052666, 35.964661, 35.519211>,  <46.017685, 36.059784, 35.736763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052666, 35.964661, 35.519211>,  <46.110966, 35.806126, 35.156628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052666, 35.964661, 35.519211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071053, -0.918072, 0.389994,
		0.986767, -0.007565, 0.161970,
		-0.145749, 0.396342, 0.906460,
		46.008942, 36.083565, 35.791149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565392, 35.403248, 35.655117>,  <46.110966, 35.806126, 35.156628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565392, 35.403248, 35.655117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312210, 35.598854, 35.895191>,  <46.160301, 35.716217, 36.039238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312210, 35.598854, 35.895191>,  <46.565392, 35.403248, 35.655117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312210, 35.598854, 35.895191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248439, -0.862551, 0.440776,
		0.733241, 0.129882, 0.667449,
		-0.632958, 0.489016, 0.600190,
		46.122322, 35.745560, 36.075249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721085, 35.044258, 36.306381>,  <46.565392, 35.403248, 35.655117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721085, 35.044258, 36.306381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359669, 35.212761, 36.275013>,  <46.142818, 35.313862, 36.256191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.359669, 35.212761, 36.275013>,  <46.721085, 35.044258, 36.306381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.359669, 35.212761, 36.275013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418713, -0.829123, 0.370450,
		0.091035, 0.367554, 0.925536,
		-0.903544, 0.421258, -0.078421,
		46.088604, 35.339138, 36.251488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.496708, 34.695129, 35.686424>,  <46.721085, 35.044258, 36.306381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.496708, 34.695129, 35.686424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745983, 34.414471, 35.548248>,  <46.895550, 34.246075, 35.465343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.745983, 34.414471, 35.548248>,  <46.496708, 34.695129, 35.686424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.745983, 34.414471, 35.548248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671181, 0.706548, -0.224290,
		0.401440, -0.092076, 0.911245,
		0.623187, -0.701650, -0.345437,
		46.932938, 34.203976, 35.444618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.200153, 34.873478, 35.778675>,  <46.496708, 34.695129, 35.686424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.200153, 34.873478, 35.778675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172874, 34.669621, 35.435604>,  <47.156506, 34.547306, 35.229763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.172874, 34.669621, 35.435604>,  <47.200153, 34.873478, 35.778675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.172874, 34.669621, 35.435604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614146, 0.656046, -0.438667,
		0.786240, -0.556657, 0.268253,
		-0.068201, -0.509644, -0.857678,
		47.152412, 34.516727, 35.178299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.836254, 34.899647, 35.508335>,  <47.200153, 34.873478, 35.778675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.836254, 34.899647, 35.508335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584961, 34.819073, 35.207737>,  <47.434185, 34.770729, 35.027378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.584961, 34.819073, 35.207737>,  <47.836254, 34.899647, 35.508335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.584961, 34.819073, 35.207737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471038, 0.670288, -0.573443,
		0.619232, -0.714239, -0.326212,
		-0.628231, -0.201436, -0.751497,
		47.396492, 34.758640, 34.982288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.213676, 34.858437, 34.979206>,  <47.836254, 34.899647, 35.508335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.213676, 34.858437, 34.979206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853920, 34.941689, 34.825439>,  <47.638065, 34.991642, 34.733181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.853920, 34.941689, 34.825439>,  <48.213676, 34.858437, 34.979206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.853920, 34.941689, 34.825439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432336, 0.553551, -0.711806,
		0.064643, -0.806389, -0.587842,
		-0.899393, 0.208132, -0.384414,
		47.584103, 35.004128, 34.710114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.264122, 36.142292, 44.618073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881054, 36.075485, 44.711857>,  <37.651215, 36.035400, 44.768127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.881054, 36.075485, 44.711857>,  <38.264122, 36.142292, 44.618073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881054, 36.075485, 44.711857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249702, 0.076675, -0.965282,
		0.143247, -0.982967, -0.115135,
		-0.957669, -0.167023, 0.234465,
		37.593754, 36.025379, 44.782196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950821, 35.867382, 44.039558>,  <38.264122, 36.142292, 44.618073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950821, 35.867382, 44.039558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616707, 35.949181, 44.243706>,  <37.416237, 35.998260, 44.366196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616707, 35.949181, 44.243706>,  <37.950821, 35.867382, 44.039558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616707, 35.949181, 44.243706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494205, 0.127557, -0.859936,
		-0.240957, -0.970520, -0.005482,
		-0.835285, 0.204498, 0.510372,
		37.366119, 36.010529, 44.396816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418064, 35.385796, 43.856247>,  <37.950821, 35.867382, 44.039558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418064, 35.385796, 43.856247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246189, 35.719887, 43.993507>,  <37.143063, 35.920341, 44.075863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.246189, 35.719887, 43.993507>,  <37.418064, 35.385796, 43.856247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246189, 35.719887, 43.993507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635618, -0.009848, -0.771941,
		-0.641371, -0.549809, 0.535120,
		-0.429690, 0.835232, 0.343152,
		37.117283, 35.970455, 44.096455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649246, 35.287930, 43.718410>,  <37.418064, 35.385796, 43.856247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649246, 35.287930, 43.718410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692242, 35.679405, 43.788403>,  <36.718040, 35.914291, 43.830399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692242, 35.679405, 43.788403>,  <36.649246, 35.287930, 43.718410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692242, 35.679405, 43.788403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523177, 0.205343, -0.827115,
		-0.845418, -0.002640, 0.534099,
		0.107490, 0.978686, 0.174982,
		36.724487, 35.973011, 43.840897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924362, 35.603973, 43.709572>,  <36.649246, 35.287930, 43.718410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924362, 35.603973, 43.709572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197075, 35.892349, 43.659912>,  <36.360703, 36.065376, 43.630116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197075, 35.892349, 43.659912>,  <35.924362, 35.603973, 43.709572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197075, 35.892349, 43.659912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496368, 0.331215, -0.802443,
		-0.537395, 0.608716, 0.583670,
		0.681781, 0.720944, -0.124154,
		36.401608, 36.108631, 43.622665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479328, 36.223248, 43.535728>,  <35.924362, 35.603973, 43.709572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479328, 36.223248, 43.535728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855350, 36.290012, 43.416782>,  <36.080963, 36.330070, 43.345413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855350, 36.290012, 43.416782>,  <35.479328, 36.223248, 43.535728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855350, 36.290012, 43.416782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331193, 0.654601, -0.679565,
		0.081224, 0.737317, 0.670646,
		0.940061, 0.166916, -0.297364,
		36.137367, 36.340088, 43.327572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645287, 37.002827, 43.696899>,  <35.479328, 36.223248, 43.535728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645287, 37.002827, 43.696899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868374, 36.856045, 43.399097>,  <36.002228, 36.767975, 43.220417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868374, 36.856045, 43.399097>,  <35.645287, 37.002827, 43.696899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868374, 36.856045, 43.399097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502478, 0.564662, -0.654731,
		0.660653, 0.739256, 0.130536,
		0.557722, -0.366958, -0.744505,
		36.035690, 36.745956, 43.175747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665661, 37.507236, 43.268372>,  <35.645287, 37.002827, 43.696899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665661, 37.507236, 43.268372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818878, 37.215481, 43.041649>,  <35.910809, 37.040428, 42.905617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.818878, 37.215481, 43.041649>,  <35.665661, 37.507236, 43.268372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818878, 37.215481, 43.041649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224718, 0.521593, -0.823069,
		0.895978, 0.442646, 0.035888,
		0.383048, -0.729387, -0.566806,
		35.933792, 36.996666, 42.871609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112110, 37.840984, 42.952999>,  <35.665661, 37.507236, 43.268372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112110, 37.840984, 42.952999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029133, 37.506798, 42.749447>,  <35.979347, 37.306286, 42.627316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029133, 37.506798, 42.749447>,  <36.112110, 37.840984, 42.952999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029133, 37.506798, 42.749447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083425, 0.533413, -0.841731,
		0.974684, -0.132155, -0.180351,
		-0.207440, -0.835468, -0.508883,
		35.966900, 37.256157, 42.596783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483124, 37.760109, 42.341354>,  <36.112110, 37.840984, 42.952999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483124, 37.760109, 42.341354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187378, 37.515106, 42.229515>,  <36.009930, 37.368103, 42.162411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.187378, 37.515106, 42.229515>,  <36.483124, 37.760109, 42.341354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187378, 37.515106, 42.229515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045544, 0.368815, -0.928386,
		0.671767, -0.699146, -0.244791,
		-0.739361, -0.612511, -0.279599,
		35.965569, 37.331352, 42.145634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663567, 37.440598, 41.801769>,  <36.483124, 37.760109, 42.341354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663567, 37.440598, 41.801769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270393, 37.383469, 41.755383>,  <36.034489, 37.349194, 41.727551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270393, 37.383469, 41.755383>,  <36.663567, 37.440598, 41.801769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270393, 37.383469, 41.755383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074692, 0.266238, -0.961009,
		0.168124, -0.953268, -0.251026,
		-0.982932, -0.142819, -0.115962,
		35.975513, 37.340622, 41.720592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651791, 36.955284, 41.257622>,  <36.663567, 37.440598, 41.801769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651791, 36.955284, 41.257622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.289017, 37.123535, 41.266975>,  <36.071354, 37.224487, 41.272587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.289017, 37.123535, 41.266975>,  <36.651791, 36.955284, 41.257622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289017, 37.123535, 41.266975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098898, 0.266538, -0.958737,
		-0.409506, -0.867195, -0.283331,
		-0.906931, 0.420630, 0.023385,
		36.016937, 37.249725, 41.273991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450512, 36.876873, 40.587326>,  <36.651791, 36.955284, 41.257622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450512, 36.876873, 40.587326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206451, 37.149662, 40.748638>,  <36.060017, 37.313335, 40.845425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206451, 37.149662, 40.748638>,  <36.450512, 36.876873, 40.587326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206451, 37.149662, 40.748638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124337, 0.420283, -0.898834,
		-0.782469, -0.598566, -0.171642,
		-0.610150, 0.681968, 0.403282,
		36.023407, 37.354252, 40.869621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825363, 36.919701, 40.137615>,  <36.450512, 36.876873, 40.587326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825363, 36.919701, 40.137615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830250, 37.252777, 40.359055>,  <35.833183, 37.452625, 40.491917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.830250, 37.252777, 40.359055>,  <35.825363, 36.919701, 40.137615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830250, 37.252777, 40.359055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043610, 0.553558, -0.831668,
		-0.998974, -0.013980, 0.043078,
		0.012220, 0.832693, 0.553600,
		35.833916, 37.502586, 40.525135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181019, 37.294323, 40.021965>,  <35.825363, 36.919701, 40.137615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181019, 37.294323, 40.021965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466675, 37.545765, 40.145161>,  <35.638069, 37.696632, 40.219078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.466675, 37.545765, 40.145161>,  <35.181019, 37.294323, 40.021965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466675, 37.545765, 40.145161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225812, 0.623336, -0.748639,
		-0.662581, 0.465086, 0.587096,
		0.714140, 0.628607, 0.307989,
		35.680916, 37.734348, 40.237556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871635, 37.912857, 39.919044>,  <35.181019, 37.294323, 40.021965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871635, 37.912857, 39.919044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.259651, 38.003601, 39.953804>,  <35.492462, 38.058048, 39.974659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.259651, 38.003601, 39.953804>,  <34.871635, 37.912857, 39.919044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259651, 38.003601, 39.953804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049763, 0.535689, -0.842948,
		-0.237782, 0.813371, 0.530931,
		0.970043, 0.226859, 0.086901,
		35.550663, 38.071659, 39.979874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887951, 38.600357, 39.743210>,  <34.871635, 37.912857, 39.919044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887951, 38.600357, 39.743210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.262413, 38.466248, 39.700855>,  <35.487091, 38.385784, 39.675442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.262413, 38.466248, 39.700855>,  <34.887951, 38.600357, 39.743210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262413, 38.466248, 39.700855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097231, 0.536288, -0.838416,
		0.337884, 0.774589, 0.534646,
		0.936152, -0.335272, -0.105889,
		35.543259, 38.365665, 39.669090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269810, 39.180344, 39.515148>,  <34.887951, 38.600357, 39.743210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269810, 39.180344, 39.515148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460796, 38.844807, 39.410557>,  <35.575390, 38.643486, 39.347801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460796, 38.844807, 39.410557>,  <35.269810, 39.180344, 39.515148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460796, 38.844807, 39.410557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255632, 0.417336, -0.872057,
		0.840641, 0.349536, 0.413698,
		0.477467, -0.838841, -0.261477,
		35.604038, 38.593155, 39.332115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894955, 39.390862, 39.257378>,  <35.269810, 39.180344, 39.515148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894955, 39.390862, 39.257378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.862839, 39.020325, 39.110161>,  <35.843571, 38.798004, 39.021832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.862839, 39.020325, 39.110161>,  <35.894955, 39.390862, 39.257378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862839, 39.020325, 39.110161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180985, 0.349546, -0.919273,
		0.980203, -0.140417, 0.139588,
		-0.080290, -0.926337, -0.368039,
		35.838753, 38.742424, 38.999748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437103, 39.368954, 38.935528>,  <35.894955, 39.390862, 39.257378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437103, 39.368954, 38.935528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222794, 39.078926, 38.762455>,  <36.094208, 38.904907, 38.658611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.222794, 39.078926, 38.762455>,  <36.437103, 39.368954, 38.935528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222794, 39.078926, 38.762455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252383, 0.351493, -0.901529,
		0.805760, -0.592218, -0.005325,
		-0.535773, -0.725073, -0.432685,
		36.062061, 38.861404, 38.632648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868439, 38.966248, 38.595928>,  <36.437103, 39.368954, 38.935528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868439, 38.966248, 38.595928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506336, 38.912346, 38.434757>,  <36.289074, 38.880005, 38.338055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.506336, 38.912346, 38.434757>,  <36.868439, 38.966248, 38.595928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506336, 38.912346, 38.434757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339869, 0.339403, -0.877095,
		0.254948, -0.930939, -0.261447,
		-0.905257, -0.134756, -0.402927,
		36.234760, 38.871918, 38.313877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995724, 38.781525, 37.923840>,  <36.868439, 38.966248, 38.595928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995724, 38.781525, 37.923840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617718, 38.899117, 37.866539>,  <36.390915, 38.969673, 37.832157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617718, 38.899117, 37.866539>,  <36.995724, 38.781525, 37.923840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617718, 38.899117, 37.866539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247570, 0.356903, -0.900738,
		-0.213674, -0.886676, -0.410059,
		-0.945015, 0.293983, -0.143254,
		36.334213, 38.987312, 37.823563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304756, 38.966343, 37.306831>,  <36.995724, 38.781525, 37.923840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304756, 38.966343, 37.306831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.659744, 38.865112, 37.152767>,  <37.872738, 38.804375, 37.060329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.659744, 38.865112, 37.152767>,  <37.304756, 38.966343, 37.306831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659744, 38.865112, 37.152767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237956, -0.464094, 0.853225,
		-0.394681, -0.848864, -0.351649,
		0.887471, -0.253075, -0.385162,
		37.925983, 38.789188, 37.037220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346046, 38.331371, 37.286945>,  <37.304756, 38.966343, 37.306831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346046, 38.331371, 37.286945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.722702, 38.463825, 37.311146>,  <37.948696, 38.543297, 37.325668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.722702, 38.463825, 37.311146>,  <37.346046, 38.331371, 37.286945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722702, 38.463825, 37.311146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129793, -0.523010, 0.842386,
		0.310591, -0.785372, -0.535467,
		0.941640, 0.331137, 0.060506,
		38.005196, 38.563168, 37.329296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668156, 37.826756, 37.617062>,  <37.346046, 38.331371, 37.286945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668156, 37.826756, 37.617062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938831, 38.115566, 37.674702>,  <38.101238, 38.288853, 37.709286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.938831, 38.115566, 37.674702>,  <37.668156, 37.826756, 37.617062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938831, 38.115566, 37.674702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304986, -0.453024, 0.837707,
		0.670127, -0.522922, -0.526766,
		0.676692, 0.722026, 0.144100,
		38.141838, 38.332172, 37.717930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305756, 37.499027, 37.730518>,  <37.668156, 37.826756, 37.617062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305756, 37.499027, 37.730518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347610, 37.868683, 37.877495>,  <38.372723, 38.090477, 37.965679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.347610, 37.868683, 37.877495>,  <38.305756, 37.499027, 37.730518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347610, 37.868683, 37.877495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201048, -0.381495, 0.902243,
		0.973977, -0.020533, -0.225714,
		0.104634, 0.924143, 0.367439,
		38.379002, 38.145927, 37.987728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844669, 37.444603, 38.159714>,  <38.305756, 37.499027, 37.730518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844669, 37.444603, 38.159714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686554, 37.790428, 38.283836>,  <38.591686, 37.997921, 38.358311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.686554, 37.790428, 38.283836>,  <38.844669, 37.444603, 38.159714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686554, 37.790428, 38.283836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260771, -0.218298, 0.940396,
		0.880766, 0.452643, -0.139162,
		-0.395285, 0.864558, 0.310305,
		38.567970, 38.049797, 38.376926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286980, 37.733299, 38.536037>,  <38.844669, 37.444603, 38.159714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286980, 37.733299, 38.536037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936382, 37.874485, 38.666988>,  <38.726025, 37.959194, 38.745560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936382, 37.874485, 38.666988>,  <39.286980, 37.733299, 38.536037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936382, 37.874485, 38.666988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235736, -0.278257, 0.931129,
		0.419749, 0.893304, 0.160685,
		-0.876493, 0.352961, 0.327382,
		38.673435, 37.980373, 38.765202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466324, 38.180634, 39.110210>,  <39.286980, 37.733299, 38.536037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466324, 38.180634, 39.110210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087566, 38.067116, 39.170670>,  <38.860310, 37.999004, 39.206944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.087566, 38.067116, 39.170670>,  <39.466324, 38.180634, 39.110210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087566, 38.067116, 39.170670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225709, -0.251883, 0.941069,
		-0.229000, 0.925211, 0.302562,
		-0.946897, -0.283796, 0.151147,
		38.803497, 37.981976, 39.216015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240097, 38.461063, 39.740780>,  <39.466324, 38.180634, 39.110210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240097, 38.461063, 39.740780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963566, 38.178165, 39.681633>,  <38.797646, 38.008427, 39.646145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963566, 38.178165, 39.681633>,  <39.240097, 38.461063, 39.740780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963566, 38.178165, 39.681633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050321, -0.251278, 0.966606,
		-0.720786, 0.660802, 0.209305,
		-0.691329, -0.707248, -0.147865,
		38.756168, 37.965992, 39.637272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650833, 38.580219, 40.133110>,  <39.240097, 38.461063, 39.740780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650833, 38.580219, 40.133110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637196, 38.186852, 40.061855>,  <38.629013, 37.950832, 40.019104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.637196, 38.186852, 40.061855>,  <38.650833, 38.580219, 40.133110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637196, 38.186852, 40.061855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163231, -0.181327, 0.969781,
		-0.985998, 0.003990, 0.166707,
		-0.034097, -0.983415, -0.178136,
		38.626965, 37.891827, 40.008415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320366, 38.312717, 40.712322>,  <38.650833, 38.580219, 40.133110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320366, 38.312717, 40.712322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469772, 37.976452, 40.555466>,  <38.559418, 37.774693, 40.461353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.469772, 37.976452, 40.555466>,  <38.320366, 38.312717, 40.712322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469772, 37.976452, 40.555466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312564, -0.283956, 0.906462,
		-0.873377, -0.461150, 0.156697,
		0.373520, -0.840660, -0.392140,
		38.581829, 37.724255, 40.437824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027802, 37.730927, 41.078598>,  <38.320366, 38.312717, 40.712322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027802, 37.730927, 41.078598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373489, 37.591221, 40.933746>,  <38.580902, 37.507397, 40.846836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373489, 37.591221, 40.933746>,  <38.027802, 37.730927, 41.078598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373489, 37.591221, 40.933746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158001, -0.494942, 0.854440,
		-0.477655, -0.795643, -0.372556,
		0.864223, -0.349263, -0.362124,
		38.632755, 37.486443, 40.825108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955444, 37.023743, 41.147953>,  <38.027802, 37.730927, 41.078598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955444, 37.023743, 41.147953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.345776, 37.102509, 41.110046>,  <38.579975, 37.149769, 41.087303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.345776, 37.102509, 41.110046>,  <37.955444, 37.023743, 41.147953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345776, 37.102509, 41.110046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195707, -0.594531, 0.779892,
		0.097230, -0.779588, -0.618699,
		0.975830, 0.196913, -0.094765,
		38.638523, 37.161583, 41.081615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308846, 36.363194, 41.125011>,  <37.955444, 37.023743, 41.147953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308846, 36.363194, 41.125011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.550053, 36.651745, 41.261238>,  <38.694775, 36.824875, 41.342976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.550053, 36.651745, 41.261238>,  <38.308846, 36.363194, 41.125011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550053, 36.651745, 41.261238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356109, -0.625447, 0.694265,
		0.713833, -0.297374, -0.634043,
		0.603016, 0.721377, 0.340567,
		38.730957, 36.868156, 41.363407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978550, 36.079247, 41.133411>,  <38.308846, 36.363194, 41.125011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978550, 36.079247, 41.133411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975426, 36.387997, 41.387699>,  <38.973553, 36.573246, 41.540272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.975426, 36.387997, 41.387699>,  <38.978550, 36.079247, 41.133411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975426, 36.387997, 41.387699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406889, -0.578280, 0.707131,
		0.913444, 0.264188, -0.309554,
		-0.007806, 0.771879, 0.635722,
		38.973083, 36.619560, 41.578415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560490, 35.922794, 41.482903>,  <38.978550, 36.079247, 41.133411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560490, 35.922794, 41.482903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.406799, 36.207588, 41.718002>,  <39.314587, 36.378464, 41.859062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.406799, 36.207588, 41.718002>,  <39.560490, 35.922794, 41.482903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406799, 36.207588, 41.718002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469952, -0.397138, 0.788306,
		0.794680, 0.579099, -0.182010,
		-0.384225, 0.711987, 0.587746,
		39.291531, 36.421185, 41.894325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142303, 36.238789, 41.787636>,  <39.560490, 35.922794, 41.482903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142303, 36.238789, 41.787636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813190, 36.275383, 42.012012>,  <39.615723, 36.297340, 42.146637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813190, 36.275383, 42.012012>,  <40.142303, 36.238789, 41.787636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813190, 36.275383, 42.012012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460577, -0.470937, 0.752387,
		0.333002, 0.877410, 0.345343,
		-0.822787, 0.091489, 0.560938,
		39.566353, 36.302830, 42.180294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430763, 36.326534, 42.404514>,  <40.142303, 36.238789, 41.787636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430763, 36.326534, 42.404514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052589, 36.263275, 42.518463>,  <39.825687, 36.225319, 42.586830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052589, 36.263275, 42.518463>,  <40.430763, 36.326534, 42.404514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052589, 36.263275, 42.518463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325085, -0.399131, 0.857329,
		-0.021882, 0.903153, 0.428762,
		-0.945432, -0.158144, 0.284867,
		39.768959, 36.215832, 42.603924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472340, 36.390301, 43.082478>,  <40.430763, 36.326534, 42.404514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472340, 36.390301, 43.082478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.126060, 36.193409, 43.046066>,  <39.918293, 36.075275, 43.024220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.126060, 36.193409, 43.046066>,  <40.472340, 36.390301, 43.082478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126060, 36.193409, 43.046066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168442, -0.457689, 0.873011,
		-0.471383, 0.740427, 0.479131,
		-0.865694, -0.492228, -0.091028,
		39.866352, 36.045742, 43.018757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.031704, 36.638721, 43.600941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.916050, 36.278942, 43.469860>,  <39.846657, 36.063072, 43.391212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.916050, 36.278942, 43.469860>,  <40.031704, 36.638721, 43.600941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916050, 36.278942, 43.469860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122737, -0.374332, 0.919136,
		-0.949388, 0.225532, 0.218628,
		-0.289134, -0.899450, -0.327705,
		39.829311, 36.009106, 43.371548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533936, 36.451969, 44.111946>,  <40.031704, 36.638721, 43.600941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533936, 36.451969, 44.111946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615864, 36.102028, 43.936367>,  <39.665020, 35.892063, 43.831020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615864, 36.102028, 43.936367>,  <39.533936, 36.451969, 44.111946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615864, 36.102028, 43.936367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098378, -0.427786, 0.898510,
		-0.973843, -0.227219, -0.001554,
		0.204823, -0.874855, -0.438949,
		39.677311, 35.839573, 43.804684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011353, 36.039818, 44.299557>,  <39.533936, 36.451969, 44.111946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011353, 36.039818, 44.299557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334793, 35.813072, 44.236526>,  <39.528858, 35.677025, 44.198708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334793, 35.813072, 44.236526>,  <39.011353, 36.039818, 44.299557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334793, 35.813072, 44.236526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137904, -0.442970, 0.885867,
		-0.571966, -0.694583, -0.436359,
		0.808602, -0.566861, -0.157578,
		39.577374, 35.643013, 44.189255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884174, 35.348087, 44.544506>,  <39.011353, 36.039818, 44.299557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884174, 35.348087, 44.544506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.282089, 35.378109, 44.516884>,  <39.520840, 35.396122, 44.500313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.282089, 35.378109, 44.516884>,  <38.884174, 35.348087, 44.544506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282089, 35.378109, 44.516884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091534, -0.358483, 0.929038,
		0.044970, -0.930515, -0.363483,
		0.994786, 0.075050, -0.069052,
		39.580524, 35.400623, 44.496170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120632, 34.660423, 44.799992>,  <38.884174, 35.348087, 44.544506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120632, 34.660423, 44.799992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465801, 34.862503, 44.804691>,  <39.672901, 34.983753, 44.807510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.465801, 34.862503, 44.804691>,  <39.120632, 34.660423, 44.799992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465801, 34.862503, 44.804691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181055, -0.330784, 0.926176,
		0.471792, -0.797089, -0.376910,
		0.862921, 0.505203, 0.011745,
		39.724678, 35.014065, 44.808216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781738, 34.159740, 45.009342>,  <39.120632, 34.660423, 44.799992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781738, 34.159740, 45.009342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.885860, 34.538326, 45.085712>,  <39.948334, 34.765476, 45.131535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.885860, 34.538326, 45.085712>,  <39.781738, 34.159740, 45.009342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885860, 34.538326, 45.085712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315141, -0.270194, 0.909770,
		0.912648, -0.176650, -0.368602,
		0.260305, 0.946462, 0.190922,
		39.963951, 34.822266, 45.142990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363556, 34.101803, 45.432762>,  <39.781738, 34.159740, 45.009342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363556, 34.101803, 45.432762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.267590, 34.487808, 45.475075>,  <40.210011, 34.719410, 45.500462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.267590, 34.487808, 45.475075>,  <40.363556, 34.101803, 45.432762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267590, 34.487808, 45.475075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198183, -0.057983, 0.978448,
		0.950349, 0.255710, -0.177338,
		-0.239917, 0.965013, 0.105782,
		40.195614, 34.777313, 45.506809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910789, 34.475388, 45.827789>,  <40.363556, 34.101803, 45.432762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910789, 34.475388, 45.827789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.583942, 34.696621, 45.892788>,  <40.387833, 34.829361, 45.931789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.583942, 34.696621, 45.892788>,  <40.910789, 34.475388, 45.827789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583942, 34.696621, 45.892788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298015, 0.163997, 0.940368,
		0.493456, 0.816823, -0.298833,
		-0.817122, 0.553087, 0.162500,
		40.338806, 34.862549, 45.941540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116535, 34.907021, 46.364655>,  <40.910789, 34.475388, 45.827789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116535, 34.907021, 46.364655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717880, 34.938271, 46.354763>,  <40.478687, 34.957020, 46.348827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717880, 34.938271, 46.354763>,  <41.116535, 34.907021, 46.364655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717880, 34.938271, 46.354763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014643, 0.127086, 0.991784,
		0.080628, 0.988810, -0.125514,
		-0.996637, 0.078127, -0.024725,
		40.418888, 34.961708, 46.347347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946518, 35.492939, 46.769119>,  <41.116535, 34.907021, 46.364655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946518, 35.492939, 46.769119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620613, 35.262070, 46.791191>,  <40.425072, 35.123550, 46.804436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.620613, 35.262070, 46.791191>,  <40.946518, 35.492939, 46.769119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620613, 35.262070, 46.791191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027994, 0.055906, 0.998043,
		-0.579125, 0.814709, -0.029393,
		-0.814758, -0.577169, 0.055184,
		40.376186, 35.088921, 46.807747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360809, 35.843193, 47.277164>,  <40.946518, 35.492939, 46.769119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360809, 35.843193, 47.277164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321011, 35.446217, 47.248417>,  <40.297131, 35.208031, 47.231171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.321011, 35.446217, 47.248417>,  <40.360809, 35.843193, 47.277164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321011, 35.446217, 47.248417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023997, -0.069811, 0.997272,
		-0.994748, 0.100955, -0.016870,
		-0.099502, -0.992439, -0.071867,
		40.291161, 35.148483, 47.226856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776569, 35.662457, 47.690342>,  <40.360809, 35.843193, 47.277164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776569, 35.662457, 47.690342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000702, 35.332352, 47.662106>,  <40.135181, 35.134289, 47.645164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.000702, 35.332352, 47.662106>,  <39.776569, 35.662457, 47.690342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000702, 35.332352, 47.662106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125578, -0.168889, 0.977602,
		-0.818696, -0.538913, -0.198267,
		0.560327, -0.825258, -0.070593,
		40.168800, 35.084774, 47.640926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558079, 35.262257, 48.294655>,  <39.776569, 35.662457, 47.690342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558079, 35.262257, 48.294655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.873070, 35.041645, 48.184601>,  <40.062065, 34.909279, 48.118568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.873070, 35.041645, 48.184601>,  <39.558079, 35.262257, 48.294655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873070, 35.041645, 48.184601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196329, -0.198690, 0.960196,
		-0.584243, -0.810147, -0.048182,
		0.787473, -0.551528, -0.275139,
		40.109310, 34.876186, 48.102058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474281, 34.527023, 48.566776>,  <39.558079, 35.262257, 48.294655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474281, 34.527023, 48.566776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867607, 34.585037, 48.522854>,  <40.103603, 34.619846, 48.496498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.867607, 34.585037, 48.522854>,  <39.474281, 34.527023, 48.566776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867607, 34.585037, 48.522854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152574, -0.328814, 0.931988,
		0.099061, -0.933192, -0.345456,
		0.983315, 0.145031, -0.109808,
		40.162601, 34.628548, 48.489910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785038, 33.812504, 48.836193>,  <39.474281, 34.527023, 48.566776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785038, 33.812504, 48.836193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.084381, 34.077435, 48.850578>,  <40.263985, 34.236393, 48.859211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.084381, 34.077435, 48.850578>,  <39.785038, 33.812504, 48.836193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084381, 34.077435, 48.850578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236531, -0.317123, 0.918415,
		0.619693, -0.678793, -0.393981,
		0.748354, 0.662324, 0.035963,
		40.308887, 34.276131, 48.861366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277626, 33.460636, 49.024944>,  <39.785038, 33.812504, 48.836193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277626, 33.460636, 49.024944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.434319, 33.815414, 49.122818>,  <40.528336, 34.028282, 49.181541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.434319, 33.815414, 49.122818>,  <40.277626, 33.460636, 49.024944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434319, 33.815414, 49.122818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285735, -0.370063, 0.883973,
		0.874586, -0.276367, -0.398398,
		0.391733, 0.886947, 0.244684,
		40.551838, 34.081497, 49.196224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000450, 33.457920, 49.216228>,  <40.277626, 33.460636, 49.024944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000450, 33.457920, 49.216228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.875877, 33.789738, 49.401646>,  <40.801136, 33.988827, 49.512897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.875877, 33.789738, 49.401646>,  <41.000450, 33.457920, 49.216228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875877, 33.789738, 49.401646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414344, -0.320452, 0.851839,
		0.855179, 0.457354, -0.243917,
		-0.311428, 0.829541, 0.463545,
		40.782448, 34.038601, 49.540710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519184, 33.822964, 49.543884>,  <41.000450, 33.457920, 49.216228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519184, 33.822964, 49.543884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.196323, 33.966434, 49.731441>,  <41.002609, 34.052517, 49.843975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.196323, 33.966434, 49.731441>,  <41.519184, 33.822964, 49.543884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196323, 33.966434, 49.731441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376010, -0.299969, 0.876719,
		0.455113, 0.883951, 0.107253,
		-0.807149, 0.358678, 0.468894,
		40.954178, 34.074039, 49.872108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747299, 33.829319, 50.168507>,  <41.519184, 33.822964, 49.543884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747299, 33.829319, 50.168507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.351185, 33.860836, 50.214344>,  <41.113518, 33.879745, 50.241848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.351185, 33.860836, 50.214344>,  <41.747299, 33.829319, 50.168507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351185, 33.860836, 50.214344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070833, -0.423358, 0.903189,
		0.119678, 0.902530, 0.413663,
		-0.990283, 0.078791, 0.114595,
		41.054100, 33.884472, 50.248722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655888, 34.023365, 50.909668>,  <41.747299, 33.829319, 50.168507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655888, 34.023365, 50.909668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313725, 33.871658, 50.768566>,  <41.108425, 33.780636, 50.683907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313725, 33.871658, 50.768566>,  <41.655888, 34.023365, 50.909668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313725, 33.871658, 50.768566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035020, -0.637147, 0.769946,
		-0.516768, 0.670972, 0.531739,
		-0.855409, -0.379263, -0.352754,
		41.057102, 33.757881, 50.662739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487743, 33.825783, 51.578308>,  <41.655888, 34.023365, 50.909668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487743, 33.825783, 51.578308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229698, 33.644524, 51.332226>,  <41.074871, 33.535770, 51.184574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.229698, 33.644524, 51.332226>,  <41.487743, 33.825783, 51.578308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229698, 33.644524, 51.332226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109589, -0.741963, 0.661424,
		-0.756184, 0.494117, 0.428993,
		-0.645117, -0.453145, -0.615210,
		41.036163, 33.508579, 51.147663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937508, 33.650890, 52.043781>,  <41.487743, 33.825783, 51.578308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937508, 33.650890, 52.043781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943604, 33.429501, 51.710690>,  <40.947262, 33.296669, 51.510834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943604, 33.429501, 51.710690>,  <40.937508, 33.650890, 52.043781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943604, 33.429501, 51.710690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240620, -0.810382, 0.534213,
		-0.970500, 0.192227, -0.145529,
		0.015244, -0.553470, -0.832729,
		40.948177, 33.263458, 51.460873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541775, 33.073997, 52.442852>,  <40.937508, 33.650890, 52.043781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541775, 33.073997, 52.442852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.418896, 33.363781, 52.196022>,  <40.345169, 33.537651, 52.047924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.418896, 33.363781, 52.196022>,  <40.541775, 33.073997, 52.442852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418896, 33.363781, 52.196022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910451, -0.035024, 0.412132,
		0.276961, 0.688425, 0.670346,
		-0.307200, 0.724461, -0.617077,
		40.326736, 33.581120, 52.010899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958225, 32.588017, 52.322071>,  <40.541775, 33.073997, 52.442852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958225, 32.588017, 52.322071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054134, 32.517879, 51.940125>,  <40.111679, 32.475796, 51.710957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.054134, 32.517879, 51.940125>,  <39.958225, 32.588017, 52.322071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054134, 32.517879, 51.940125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396046, -0.915658, 0.068691,
		-0.886372, 0.361699, -0.288995,
		0.239775, -0.175341, -0.954863,
		40.126068, 32.465279, 51.653667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582466, 32.472519, 51.655212>,  <39.958225, 32.588017, 52.322071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582466, 32.472519, 51.655212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206734, 32.547642, 51.770020>,  <38.981293, 32.592716, 51.838905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.206734, 32.547642, 51.770020>,  <39.582466, 32.472519, 51.655212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206734, 32.547642, 51.770020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181759, 0.437105, -0.880854,
		-0.290888, -0.879584, -0.376452,
		-0.939334, 0.187806, 0.287021,
		38.924934, 32.603985, 51.856125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120365, 32.288425, 51.093182>,  <39.582466, 32.472519, 51.655212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120365, 32.288425, 51.093182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.865284, 32.502266, 51.315006>,  <38.712234, 32.630569, 51.448101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.865284, 32.502266, 51.315006>,  <39.120365, 32.288425, 51.093182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865284, 32.502266, 51.315006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433179, 0.346422, -0.832075,
		-0.636936, -0.770843, 0.010661,
		-0.637705, 0.534597, 0.554561,
		38.673973, 32.662643, 51.481373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433460, 32.248440, 50.887447>,  <39.120365, 32.288425, 51.093182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433460, 32.248440, 50.887447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477989, 32.605930, 51.061275>,  <38.504707, 32.820427, 51.165573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.477989, 32.605930, 51.061275>,  <38.433460, 32.248440, 50.887447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477989, 32.605930, 51.061275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437018, 0.436765, -0.786290,
		-0.892537, -0.102383, 0.439198,
		0.111323, 0.893731, 0.434572,
		38.511387, 32.874050, 51.191647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805279, 32.526218, 50.728996>,  <38.433460, 32.248440, 50.887447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805279, 32.526218, 50.728996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024551, 32.846546, 50.825478>,  <38.156116, 33.038742, 50.883366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024551, 32.846546, 50.825478>,  <37.805279, 32.526218, 50.728996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024551, 32.846546, 50.825478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437994, 0.520568, -0.732919,
		-0.712499, 0.296130, 0.636122,
		0.548185, 0.800822, 0.241201,
		38.189007, 33.086792, 50.897839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347069, 33.041740, 50.911957>,  <37.805279, 32.526218, 50.728996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347069, 33.041740, 50.911957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682652, 33.227737, 50.798866>,  <37.883999, 33.339336, 50.731010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.682652, 33.227737, 50.798866>,  <37.347069, 33.041740, 50.911957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682652, 33.227737, 50.798866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482502, 0.395293, -0.781623,
		-0.251688, 0.792164, 0.555993,
		0.838954, 0.464993, -0.282731,
		37.934338, 33.367237, 50.714046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149117, 33.719746, 50.771206>,  <37.347069, 33.041740, 50.911957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149117, 33.719746, 50.771206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488708, 33.688541, 50.562149>,  <37.692463, 33.669819, 50.436714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.488708, 33.688541, 50.562149>,  <37.149117, 33.719746, 50.771206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488708, 33.688541, 50.562149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447492, 0.419904, -0.789577,
		0.281052, 0.904210, 0.321581,
		0.848976, -0.078007, -0.522641,
		37.743401, 33.665138, 50.405357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276638, 34.407063, 50.522457>,  <37.149117, 33.719746, 50.771206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276638, 34.407063, 50.522457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475506, 34.161030, 50.277672>,  <37.594826, 34.013409, 50.130802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475506, 34.161030, 50.277672>,  <37.276638, 34.407063, 50.522457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475506, 34.161030, 50.277672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412852, 0.452646, -0.790358,
		0.763136, 0.645591, -0.028896,
		0.497168, -0.615080, -0.611964,
		37.624657, 33.976505, 50.094082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539711, 34.818844, 49.991760>,  <37.276638, 34.407063, 50.522457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539711, 34.818844, 49.991760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.590981, 34.446186, 49.855755>,  <37.621742, 34.222591, 49.774151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.590981, 34.446186, 49.855755>,  <37.539711, 34.818844, 49.991760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590981, 34.446186, 49.855755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245785, 0.302306, -0.920978,
		0.960812, 0.201619, -0.190235,
		0.128177, -0.931644, -0.340014,
		37.629433, 34.166695, 49.753750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026352, 34.934746, 49.507812>,  <37.539711, 34.818844, 49.991760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026352, 34.934746, 49.507812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876343, 34.580196, 49.399231>,  <37.786335, 34.367466, 49.334080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.876343, 34.580196, 49.399231>,  <38.026352, 34.934746, 49.507812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876343, 34.580196, 49.399231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045221, 0.274988, -0.960384,
		0.925910, -0.372445, -0.063045,
		-0.375027, -0.886378, -0.271456,
		37.763836, 34.314281, 49.317795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548229, 34.528431, 49.000443>,  <38.026352, 34.934746, 49.507812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548229, 34.528431, 49.000443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165443, 34.420124, 48.958683>,  <37.935772, 34.355141, 48.933628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165443, 34.420124, 48.958683>,  <38.548229, 34.528431, 49.000443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165443, 34.420124, 48.958683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034004, 0.252655, -0.966959,
		0.288204, -0.928896, -0.232575,
		-0.956965, -0.270773, -0.104403,
		37.878353, 34.338894, 48.927364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612305, 34.084846, 48.498512>,  <38.548229, 34.528431, 49.000443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612305, 34.084846, 48.498512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.226814, 34.191074, 48.509190>,  <37.995522, 34.254810, 48.515598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.226814, 34.191074, 48.509190>,  <38.612305, 34.084846, 48.498512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226814, 34.191074, 48.509190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004809, 0.082728, -0.996561,
		-0.266865, -0.960536, -0.078450,
		-0.963722, 0.265570, 0.026697,
		37.937698, 34.270744, 48.517197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283936, 33.845867, 47.858379>,  <38.612305, 34.084846, 48.498512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283936, 33.845867, 47.858379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.029793, 34.138802, 47.956364>,  <37.877308, 34.314560, 48.015152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.029793, 34.138802, 47.956364>,  <38.283936, 33.845867, 47.858379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029793, 34.138802, 47.956364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118611, 0.406000, -0.906143,
		-0.763052, -0.546672, -0.344820,
		-0.635360, 0.732334, 0.244958,
		37.839184, 34.358501, 48.029850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931377, 34.046387, 47.219551>,  <38.283936, 33.845867, 47.858379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931377, 34.046387, 47.219551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827648, 34.357494, 47.448578>,  <37.765411, 34.544159, 47.585995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827648, 34.357494, 47.448578>,  <37.931377, 34.046387, 47.219551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827648, 34.357494, 47.448578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043616, 0.601675, -0.797549,
		-0.964806, -0.181846, -0.189949,
		-0.259318, 0.777765, 0.572569,
		37.749851, 34.590824, 47.620350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369087, 34.267178, 46.936832>,  <37.931377, 34.046387, 47.219551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369087, 34.267178, 46.936832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516148, 34.573620, 47.147701>,  <37.604385, 34.757484, 47.274223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516148, 34.573620, 47.147701>,  <37.369087, 34.267178, 46.936832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516148, 34.573620, 47.147701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001933, 0.566243, -0.824236,
		-0.929962, 0.304049, 0.206698,
		0.367650, 0.766109, 0.527173,
		37.626442, 34.803452, 47.305855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019768, 34.813148, 46.694862>,  <37.369087, 34.267178, 46.936832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019768, 34.813148, 46.694862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317875, 35.006130, 46.878956>,  <37.496738, 35.121922, 46.989410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.317875, 35.006130, 46.878956>,  <37.019768, 34.813148, 46.694862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317875, 35.006130, 46.878956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014346, 0.678480, -0.734479,
		-0.666614, 0.553984, 0.498726,
		0.745265, 0.482459, 0.460232,
		37.541454, 35.150867, 47.017025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740826, 35.469074, 46.795280>,  <37.019768, 34.813148, 46.694862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740826, 35.469074, 46.795280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140259, 35.488926, 46.802891>,  <37.379921, 35.500839, 46.807457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.140259, 35.488926, 46.802891>,  <36.740826, 35.469074, 46.795280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140259, 35.488926, 46.802891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019955, 0.681819, -0.731248,
		-0.049267, 0.729835, 0.681846,
		0.998586, 0.049633, 0.019027,
		37.439835, 35.503815, 46.808598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981335, 36.088940, 46.739239>,  <36.740826, 35.469074, 46.795280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981335, 36.088940, 46.739239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309624, 35.918152, 46.587395>,  <37.506596, 35.815678, 46.496288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309624, 35.918152, 46.587395>,  <36.981335, 36.088940, 46.739239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309624, 35.918152, 46.587395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097223, 0.550379, -0.829235,
		0.562992, 0.717480, 0.410198,
		0.820724, -0.426973, -0.379614,
		37.555840, 35.790062, 46.473511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247864, 36.624584, 46.285824>,  <36.981335, 36.088940, 46.739239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247864, 36.624584, 46.285824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430702, 36.284782, 46.180447>,  <37.540405, 36.080902, 46.117218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.430702, 36.284782, 46.180447>,  <37.247864, 36.624584, 46.285824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430702, 36.284782, 46.180447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114055, 0.237771, -0.964602,
		0.882074, 0.470964, 0.011794,
		0.457097, -0.849505, -0.263447,
		37.567833, 36.029930, 46.101414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663860, 36.834774, 45.732395>,  <37.247864, 36.624584, 46.285824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663860, 36.834774, 45.732395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592167, 36.442368, 45.702793>,  <37.549149, 36.206924, 45.685032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592167, 36.442368, 45.702793>,  <37.663860, 36.834774, 45.732395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592167, 36.442368, 45.702793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321264, 0.129459, -0.938099,
		0.929873, -0.144367, -0.338370,
		-0.179236, -0.981019, -0.074001,
		37.538395, 36.148064, 45.680592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109825, 36.607132, 45.157269>,  <37.663860, 36.834774, 45.732395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109825, 36.607132, 45.157269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827400, 36.326462, 45.195488>,  <37.657948, 36.158058, 45.218418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827400, 36.326462, 45.195488>,  <38.109825, 36.607132, 45.157269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827400, 36.326462, 45.195488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123054, -0.011303, -0.992336,
		0.697381, -0.712403, -0.078364,
		-0.706057, -0.701679, 0.095547,
		37.615582, 36.115959, 45.224152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.249813, 41.709549, 32.249763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904243, 41.648289, 32.057858>,  <43.696903, 41.611530, 31.942713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.904243, 41.648289, 32.057858>,  <44.249813, 41.709549, 32.249763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904243, 41.648289, 32.057858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139171, -0.842940, 0.519696,
		-0.484008, 0.515749, 0.706923,
		-0.863926, -0.153154, -0.479767,
		43.645065, 41.602341, 31.913927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744141, 41.529163, 32.747547>,  <44.249813, 41.709549, 32.249763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744141, 41.529163, 32.747547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595161, 41.379421, 32.407867>,  <43.505775, 41.289574, 32.204060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.595161, 41.379421, 32.407867>,  <43.744141, 41.529163, 32.747547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595161, 41.379421, 32.407867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295095, -0.819771, 0.490809,
		-0.879889, 0.433394, 0.194848,
		-0.372444, -0.374359, -0.849200,
		43.483429, 41.267113, 32.153107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167030, 41.306232, 32.952496>,  <43.744141, 41.529163, 32.747547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167030, 41.306232, 32.952496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221390, 41.105064, 32.611061>,  <43.254005, 40.984364, 32.406200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.221390, 41.105064, 32.611061>,  <43.167030, 41.306232, 32.952496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.221390, 41.105064, 32.611061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209620, -0.856668, 0.471360,
		-0.968293, 0.114871, -0.221840,
		0.135898, -0.502917, -0.853585,
		43.262157, 40.954189, 32.354984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496372, 40.932251, 32.791328>,  <43.167030, 41.306232, 32.952496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496372, 40.932251, 32.791328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808788, 40.754032, 32.616299>,  <42.996239, 40.647102, 32.511280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.808788, 40.754032, 32.616299>,  <42.496372, 40.932251, 32.791328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808788, 40.754032, 32.616299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249305, -0.864899, 0.435656,
		-0.572564, -0.231172, -0.786594,
		0.781036, -0.445543, -0.437578,
		43.043098, 40.620369, 32.485023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192196, 40.364182, 32.431404>,  <42.496372, 40.932251, 32.791328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192196, 40.364182, 32.431404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580242, 40.280315, 32.480263>,  <42.813068, 40.229996, 32.509579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.580242, 40.280315, 32.480263>,  <42.192196, 40.364182, 32.431404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580242, 40.280315, 32.480263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240157, -0.901590, 0.359805,
		0.034690, -0.378387, -0.924997,
		0.970114, -0.209663, 0.122148,
		42.871277, 40.217415, 32.516907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155392, 39.662960, 32.375011>,  <42.192196, 40.364182, 32.431404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155392, 39.662960, 32.375011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517490, 39.722580, 32.534161>,  <42.734749, 39.758350, 32.629650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.517490, 39.722580, 32.534161>,  <42.155392, 39.662960, 32.375011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517490, 39.722580, 32.534161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083307, -0.856004, 0.510213,
		0.416630, -0.495017, -0.762481,
		0.905251, 0.149050, 0.397875,
		42.789066, 39.767296, 32.653522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465157, 39.085018, 32.391071>,  <42.155392, 39.662960, 32.375011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465157, 39.085018, 32.391071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682232, 39.257580, 32.679344>,  <42.812477, 39.361115, 32.852306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.682232, 39.257580, 32.679344>,  <42.465157, 39.085018, 32.391071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682232, 39.257580, 32.679344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077659, -0.828575, 0.554467,
		0.836334, -0.356872, -0.416159,
		0.542693, 0.431401, 0.720679,
		42.845039, 39.387001, 32.895550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825390, 38.508118, 32.626781>,  <42.465157, 39.085018, 32.391071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825390, 38.508118, 32.626781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870621, 38.786770, 32.910168>,  <42.897758, 38.953960, 33.080200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870621, 38.786770, 32.910168>,  <42.825390, 38.508118, 32.626781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870621, 38.786770, 32.910168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118773, -0.717400, 0.686462,
		0.986461, 0.006520, -0.163865,
		0.113081, 0.696631, 0.708462,
		42.904545, 38.995758, 33.122707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372036, 38.250294, 33.095722>,  <42.825390, 38.508118, 32.626781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372036, 38.250294, 33.095722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137249, 38.498005, 33.304325>,  <42.996376, 38.646629, 33.429485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.137249, 38.498005, 33.304325>,  <43.372036, 38.250294, 33.095722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137249, 38.498005, 33.304325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103661, -0.581359, 0.807017,
		0.802948, 0.527751, 0.277043,
		-0.586966, 0.619274, 0.521508,
		42.961159, 38.683788, 33.460777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634201, 38.255482, 33.703983>,  <43.372036, 38.250294, 33.095722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634201, 38.255482, 33.703983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286102, 38.430286, 33.794930>,  <43.077244, 38.535168, 33.849499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286102, 38.430286, 33.794930>,  <43.634201, 38.255482, 33.703983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286102, 38.430286, 33.794930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045118, -0.388901, 0.920174,
		0.490549, 0.811035, 0.318722,
		-0.870245, 0.437010, 0.227367,
		43.025028, 38.561390, 33.863140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716633, 38.729156, 34.248180>,  <43.634201, 38.255482, 33.703983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716633, 38.729156, 34.248180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329151, 38.630047, 34.254108>,  <43.096661, 38.570580, 34.257664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.329151, 38.630047, 34.254108>,  <43.716633, 38.729156, 34.248180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329151, 38.630047, 34.254108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102552, -0.345151, 0.932927,
		-0.226041, 0.905251, 0.359760,
		-0.968705, -0.247774, 0.014817,
		43.038540, 38.555714, 34.258553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657024, 38.783054, 34.882118>,  <43.716633, 38.729156, 34.248180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657024, 38.783054, 34.882118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318939, 38.595715, 34.779148>,  <43.116089, 38.483311, 34.717365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318939, 38.595715, 34.779148>,  <43.657024, 38.783054, 34.882118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318939, 38.595715, 34.779148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004916, -0.488464, 0.872570,
		-0.534412, 0.736239, 0.415157,
		-0.845210, -0.468353, -0.257422,
		43.065376, 38.455208, 34.701923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228035, 38.886520, 35.437733>,  <43.657024, 38.783054, 34.882118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228035, 38.886520, 35.437733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068657, 38.557716, 35.274986>,  <42.973030, 38.360435, 35.177338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.068657, 38.557716, 35.274986>,  <43.228035, 38.886520, 35.437733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068657, 38.557716, 35.274986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113465, -0.484369, 0.867475,
		-0.910146, 0.299478, 0.286265,
		-0.398447, -0.822010, -0.406866,
		42.949123, 38.311115, 35.152927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786549, 38.639954, 35.952793>,  <43.228035, 38.886520, 35.437733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786549, 38.639954, 35.952793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836227, 38.322983, 35.713917>,  <42.866035, 38.132801, 35.570591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.836227, 38.322983, 35.713917>,  <42.786549, 38.639954, 35.952793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836227, 38.322983, 35.713917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088024, -0.590683, 0.802088,
		-0.988346, -0.152184, -0.003608,
		0.124196, -0.792423, -0.597195,
		42.873486, 38.085255, 35.534760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312382, 38.075790, 36.110859>,  <42.786549, 38.639954, 35.952793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312382, 38.075790, 36.110859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640327, 37.915249, 35.947525>,  <42.837097, 37.818924, 35.849525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.640327, 37.915249, 35.947525>,  <42.312382, 38.075790, 36.110859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640327, 37.915249, 35.947525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107534, -0.592543, 0.798329,
		-0.562362, -0.698434, -0.442649,
		0.819869, -0.401350, -0.408329,
		42.886288, 37.794842, 35.825027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320335, 37.531231, 36.520531>,  <42.312382, 38.075790, 36.110859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320335, 37.531231, 36.520531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665054, 37.482491, 36.323574>,  <42.871887, 37.453247, 36.205399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.665054, 37.482491, 36.323574>,  <42.320335, 37.531231, 36.520531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.665054, 37.482491, 36.323574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262647, -0.723267, 0.638672,
		-0.433955, -0.679734, -0.591308,
		0.861800, -0.121850, -0.492395,
		42.923595, 37.445934, 36.175854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409161, 36.744297, 36.414001>,  <42.320335, 37.531231, 36.520531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409161, 36.744297, 36.414001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775425, 36.897942, 36.366627>,  <42.995182, 36.990128, 36.338200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.775425, 36.897942, 36.366627>,  <42.409161, 36.744297, 36.414001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775425, 36.897942, 36.366627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397916, -0.824503, 0.402316,
		0.056883, -0.415512, -0.907807,
		0.915657, 0.384116, -0.118439,
		43.050121, 37.013176, 36.331097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793621, 36.299984, 36.134411>,  <42.409161, 36.744297, 36.414001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793621, 36.299984, 36.134411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.066425, 36.523487, 36.323151>,  <43.230106, 36.657589, 36.436394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.066425, 36.523487, 36.323151>,  <42.793621, 36.299984, 36.134411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066425, 36.523487, 36.323151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383474, -0.822604, 0.419847,
		0.622742, -0.105398, -0.775296,
		0.682012, 0.558762, 0.471853,
		43.271030, 36.691116, 36.464706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444462, 36.141205, 36.054047>,  <42.793621, 36.299984, 36.134411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444462, 36.141205, 36.054047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547993, 36.347202, 36.380920>,  <43.610111, 36.470798, 36.577045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547993, 36.347202, 36.380920>,  <43.444462, 36.141205, 36.054047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547993, 36.347202, 36.380920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367377, -0.834921, 0.409807,
		0.893332, 0.194146, -0.405296,
		0.258827, 0.514990, 0.817186,
		43.625641, 36.501698, 36.626076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.121502, 36.099419, 36.086315>,  <43.444462, 36.141205, 36.054047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.121502, 36.099419, 36.086315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989925, 36.194931, 36.451782>,  <43.910980, 36.252239, 36.671062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.989925, 36.194931, 36.451782>,  <44.121502, 36.099419, 36.086315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989925, 36.194931, 36.451782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377965, -0.853345, 0.359090,
		0.865415, 0.463452, 0.190447,
		-0.328937, 0.238779, 0.913666,
		43.891243, 36.266563, 36.725883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603569, 35.858459, 36.530964>,  <44.121502, 36.099419, 36.086315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603569, 35.858459, 36.530964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269882, 35.893925, 36.748669>,  <44.069672, 35.915203, 36.879292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.269882, 35.893925, 36.748669>,  <44.603569, 35.858459, 36.530964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269882, 35.893925, 36.748669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150147, -0.913177, 0.378897,
		0.530604, 0.397802, 0.748474,
		-0.834215, 0.088663, 0.544264,
		44.019619, 35.920525, 36.911949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091278, 35.547813, 36.372799>,  <44.603569, 35.858459, 36.530964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091278, 35.547813, 36.372799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440586, 35.596653, 36.561478>,  <45.650169, 35.625957, 36.674683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.440586, 35.596653, 36.561478>,  <45.091278, 35.547813, 36.372799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440586, 35.596653, 36.561478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081685, 0.917703, -0.388779,
		-0.480344, 0.378039, 0.791427,
		0.873268, 0.122100, 0.471693,
		45.702568, 35.633282, 36.702984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277142, 36.216019, 36.887123>,  <45.091278, 35.547813, 36.372799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277142, 36.216019, 36.887123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.586758, 36.089485, 36.667747>,  <45.772530, 36.013565, 36.536121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.586758, 36.089485, 36.667747>,  <45.277142, 36.216019, 36.887123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586758, 36.089485, 36.667747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174791, 0.939339, -0.295112,
		0.608528, 0.132566, 0.782381,
		0.774042, -0.316337, -0.548443,
		45.818970, 35.994583, 36.503216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827820, 36.672462, 36.939857>,  <45.277142, 36.216019, 36.887123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827820, 36.672462, 36.939857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886311, 36.487816, 36.589878>,  <45.921406, 36.377029, 36.379890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886311, 36.487816, 36.589878>,  <45.827820, 36.672462, 36.939857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886311, 36.487816, 36.589878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207126, 0.879136, -0.429207,
		0.967324, -0.118462, 0.224165,
		0.146227, -0.461613, -0.874946,
		45.930180, 36.349331, 36.327393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332954, 37.048634, 36.713436>,  <45.827820, 36.672462, 36.939857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.332954, 37.048634, 36.713436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.192066, 36.864025, 36.387753>,  <46.107533, 36.753262, 36.192341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.192066, 36.864025, 36.387753>,  <46.332954, 37.048634, 36.713436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192066, 36.864025, 36.387753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189219, 0.816880, -0.544888,
		0.916590, -0.345984, -0.200392,
		-0.352219, -0.461522, -0.814211,
		46.086399, 36.725567, 36.143490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818375, 37.187973, 36.114029>,  <46.332954, 37.048634, 36.713436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818375, 37.187973, 36.114029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.466854, 37.087288, 35.951870>,  <46.255943, 37.026878, 35.854572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.466854, 37.087288, 35.951870>,  <46.818375, 37.187973, 36.114029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466854, 37.087288, 35.951870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026934, 0.822045, -0.568785,
		0.476424, -0.510769, -0.715636,
		-0.878803, -0.251708, -0.405399,
		46.203213, 37.011776, 35.830250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962616, 37.373810, 35.444469>,  <46.818375, 37.187973, 36.114029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962616, 37.373810, 35.444469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.567650, 37.351288, 35.503590>,  <46.330669, 37.337772, 35.539062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.567650, 37.351288, 35.503590>,  <46.962616, 37.373810, 35.444469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.567650, 37.351288, 35.503590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123980, 0.855802, -0.502227,
		-0.098210, -0.514229, -0.852011,
		-0.987413, -0.056309, 0.147802,
		46.271427, 37.334396, 35.547932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.658340, 37.724003, 34.836163>,  <46.962616, 37.373810, 35.444469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.658340, 37.724003, 34.836163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.350266, 37.751259, 35.089832>,  <46.165421, 37.767612, 35.242035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.350266, 37.751259, 35.089832>,  <46.658340, 37.724003, 34.836163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.350266, 37.751259, 35.089832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247071, 0.884779, -0.395122,
		-0.588025, -0.461002, -0.664608,
		-0.770184, 0.068136, 0.634173,
		46.119209, 37.771698, 35.280083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131035, 38.138664, 34.421547>,  <46.658340, 37.724003, 34.836163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131035, 38.138664, 34.421547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.974091, 38.134708, 34.789452>,  <45.879925, 38.132336, 35.010193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.974091, 38.134708, 34.789452>,  <46.131035, 38.138664, 34.421547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974091, 38.134708, 34.789452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394716, 0.905003, -0.158649,
		-0.830813, -0.425291, -0.358994,
		-0.392363, -0.009893, 0.919757,
		45.856380, 38.131741, 35.065380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443146, 38.382332, 34.361355>,  <46.131035, 38.138664, 34.421547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443146, 38.382332, 34.361355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602371, 38.464973, 34.718872>,  <45.697906, 38.514557, 34.933380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.602371, 38.464973, 34.718872>,  <45.443146, 38.382332, 34.361355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602371, 38.464973, 34.718872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346865, 0.935874, -0.061848,
		-0.849252, -0.285405, 0.444201,
		0.398065, 0.206602, 0.893790,
		45.721790, 38.526955, 34.987007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935902, 38.666679, 34.741695>,  <45.443146, 38.382332, 34.361355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935902, 38.666679, 34.741695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250629, 38.793060, 34.953766>,  <45.439468, 38.868889, 35.081009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250629, 38.793060, 34.953766>,  <44.935902, 38.666679, 34.741695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250629, 38.793060, 34.953766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346269, 0.937077, -0.044545,
		-0.510889, -0.148534, 0.846718,
		0.786823, 0.315949, 0.530175,
		45.486675, 38.887844, 35.112820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674400, 39.171078, 35.171078>,  <44.935902, 38.666679, 34.741695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674400, 39.171078, 35.171078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066296, 39.248249, 35.192570>,  <45.301434, 39.294552, 35.205463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.066296, 39.248249, 35.192570>,  <44.674400, 39.171078, 35.171078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066296, 39.248249, 35.192570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194941, 0.980189, 0.035052,
		-0.045899, -0.044815, 0.997940,
		0.979741, 0.192930, 0.053726,
		45.360218, 39.306129, 35.208687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778370, 39.621117, 35.766850>,  <44.674400, 39.171078, 35.171078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778370, 39.621117, 35.766850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075439, 39.676617, 35.504799>,  <45.253681, 39.709915, 35.347569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075439, 39.676617, 35.504799>,  <44.778370, 39.621117, 35.766850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075439, 39.676617, 35.504799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225660, 0.972935, -0.049757,
		0.630488, 0.184788, 0.753882,
		0.742673, 0.138749, -0.655123,
		45.298241, 39.718243, 35.308262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005569, 40.227425, 36.012234>,  <44.778370, 39.621117, 35.766850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005569, 40.227425, 36.012234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111935, 40.166550, 35.631470>,  <45.175755, 40.130024, 35.403011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.111935, 40.166550, 35.631470>,  <45.005569, 40.227425, 36.012234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111935, 40.166550, 35.631470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196392, 0.958199, -0.208051,
		0.943779, 0.242271, 0.224913,
		0.265916, -0.152183, -0.951908,
		45.191708, 40.120895, 35.345898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318211, 40.903931, 35.839622>,  <45.005569, 40.227425, 36.012234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318211, 40.903931, 35.839622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238613, 40.740177, 35.483463>,  <45.190853, 40.641926, 35.269768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.238613, 40.740177, 35.483463>,  <45.318211, 40.903931, 35.839622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.238613, 40.740177, 35.483463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233787, 0.902167, -0.362544,
		0.951706, 0.136018, -0.275236,
		-0.198997, -0.409382, -0.890397,
		45.178913, 40.617363, 35.216343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569485, 41.376396, 35.473629>,  <45.318211, 40.903931, 35.839622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569485, 41.376396, 35.473629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354439, 41.160011, 35.214916>,  <45.225410, 41.030182, 35.059689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354439, 41.160011, 35.214916>,  <45.569485, 41.376396, 35.473629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354439, 41.160011, 35.214916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181706, 0.823377, -0.537619,
		0.823376, -0.171509, -0.540958,
		0.537619, 0.540958, 0.646785,
		45.193153, 40.997723, 35.020882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.748066, 41.709919, 34.913883>,  <45.569485, 41.376396, 35.473629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.748066, 41.709919, 34.913883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.410275, 41.498192, 34.881195>,  <45.207600, 41.371155, 34.861584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.410275, 41.498192, 34.881195>,  <45.748066, 41.709919, 34.913883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410275, 41.498192, 34.881195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455886, 0.790484, -0.409027,
		0.281102, -0.308161, -0.908856,
		-0.844482, -0.529313, -0.081721,
		45.156929, 41.339397, 34.856678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470917, 41.873062, 34.198505>,  <45.748066, 41.709919, 34.913883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470917, 41.873062, 34.198505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170231, 41.740601, 34.426636>,  <44.989819, 41.661125, 34.563515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.170231, 41.740601, 34.426636>,  <45.470917, 41.873062, 34.198505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170231, 41.740601, 34.426636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574743, 0.753053, -0.320284,
		-0.323422, -0.568551, -0.756405,
		-0.751710, -0.331151, 0.570325,
		44.944717, 41.641254, 34.597733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.988838, 42.151722, 33.924225>,  <45.470917, 41.873062, 34.198505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.988838, 42.151722, 33.924225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.765976, 42.053261, 34.241459>,  <44.632259, 41.994186, 34.431801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.765976, 42.053261, 34.241459>,  <44.988838, 42.151722, 33.924225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765976, 42.053261, 34.241459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582119, 0.796879, -0.161623,
		-0.592211, -0.551720, -0.587274,
		-0.557157, -0.246148, 0.793087,
		44.598827, 41.979416, 34.479385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310417, 41.984756, 33.720673>,  <44.988838, 42.151722, 33.924225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310417, 41.984756, 33.720673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299709, 42.119930, 34.096989>,  <44.293285, 42.201035, 34.322777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299709, 42.119930, 34.096989>,  <44.310417, 41.984756, 33.720673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299709, 42.119930, 34.096989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445293, 0.838565, -0.313883,
		-0.894985, -0.427330, 0.128029,
		-0.026771, 0.337931, 0.940790,
		44.291679, 42.221310, 34.379227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686905, 42.407509, 33.730484>,  <44.310417, 41.984756, 33.720673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686905, 42.407509, 33.730484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.860447, 42.523468, 34.071712>,  <43.964573, 42.593044, 34.276451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.860447, 42.523468, 34.071712>,  <43.686905, 42.407509, 33.730484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860447, 42.523468, 34.071712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516922, 0.855579, -0.027860,
		-0.737946, -0.428884, 0.521051,
		0.433852, 0.289902, 0.853071,
		43.990604, 42.610439, 34.327633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184082, 42.671059, 34.221321>,  <43.686905, 42.407509, 33.730484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184082, 42.671059, 34.221321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.525494, 42.834034, 34.351234>,  <43.730339, 42.931820, 34.429184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.525494, 42.834034, 34.351234>,  <43.184082, 42.671059, 34.221321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525494, 42.834034, 34.351234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493290, 0.832597, 0.251887,
		-0.167789, -0.375206, 0.911629,
		0.853529, 0.407433, 0.324786,
		43.781551, 42.956264, 34.448669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.873047, 37.393791, 40.897091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485378, 37.330921, 40.972996>,  <39.252777, 37.293201, 41.018539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485378, 37.330921, 40.972996>,  <39.873047, 37.393791, 40.897091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485378, 37.330921, 40.972996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229606, 0.296592, -0.926992,
		0.089415, -0.941982, -0.323535,
		-0.969167, -0.157172, 0.189765,
		39.194630, 37.283768, 41.029926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686668, 36.948715, 40.339401>,  <39.873047, 37.393791, 40.897091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686668, 36.948715, 40.339401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365234, 37.132908, 40.490242>,  <39.172375, 37.243423, 40.580746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365234, 37.132908, 40.490242>,  <39.686668, 36.948715, 40.339401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365234, 37.132908, 40.490242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288272, 0.253197, -0.923467,
		-0.520724, -0.850791, -0.070721,
		-0.803584, 0.460484, 0.377105,
		39.124161, 37.271053, 40.603374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158272, 36.694447, 39.902771>,  <39.686668, 36.948715, 40.339401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158272, 36.694447, 39.902771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001297, 37.030296, 40.052982>,  <38.907112, 37.231808, 40.143108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001297, 37.030296, 40.052982>,  <39.158272, 36.694447, 39.902771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001297, 37.030296, 40.052982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386040, 0.220225, -0.895809,
		-0.834845, -0.496519, 0.237704,
		-0.392438, 0.839625, 0.375530,
		38.883564, 37.282185, 40.165642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476017, 36.696823, 39.643040>,  <39.158272, 36.694447, 39.902771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476017, 36.696823, 39.643040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560505, 37.070789, 39.757111>,  <38.611198, 37.295170, 39.825554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560505, 37.070789, 39.757111>,  <38.476017, 36.696823, 39.643040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560505, 37.070789, 39.757111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416080, 0.350006, -0.839270,
		-0.884457, 0.058615, 0.462926,
		0.211221, 0.934912, 0.285176,
		38.623871, 37.351261, 39.842663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006817, 36.970467, 39.303230>,  <38.476017, 36.696823, 39.643040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006817, 36.970467, 39.303230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240387, 37.278091, 39.407211>,  <38.380527, 37.462666, 39.469601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240387, 37.278091, 39.407211>,  <38.006817, 36.970467, 39.303230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240387, 37.278091, 39.407211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297887, 0.500863, -0.812650,
		-0.755182, 0.397086, 0.521558,
		0.583921, 0.769063, 0.259956,
		38.415562, 37.508812, 39.485199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601524, 37.662651, 39.255096>,  <38.006817, 36.970467, 39.303230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601524, 37.662651, 39.255096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993912, 37.739021, 39.240948>,  <38.229343, 37.784843, 39.232460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993912, 37.739021, 39.240948>,  <37.601524, 37.662651, 39.255096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993912, 37.739021, 39.240948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159403, 0.687798, -0.708184,
		-0.110886, 0.700343, 0.705141,
		0.980966, 0.190929, -0.035370,
		38.288200, 37.796299, 39.230335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500538, 38.377445, 39.035591>,  <37.601524, 37.662651, 39.255096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500538, 38.377445, 39.035591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883472, 38.289940, 38.960060>,  <38.113232, 38.237438, 38.914742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883472, 38.289940, 38.960060>,  <37.500538, 38.377445, 39.035591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883472, 38.289940, 38.960060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023673, 0.591867, -0.805688,
		0.288017, 0.775782, 0.561435,
		0.957333, -0.218761, -0.188832,
		38.170673, 38.224312, 38.903412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882072, 39.072681, 38.717487>,  <37.500538, 38.377445, 39.035591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882072, 39.072681, 38.717487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129032, 38.772976, 38.621635>,  <38.277206, 38.593151, 38.564125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129032, 38.772976, 38.621635>,  <37.882072, 39.072681, 38.717487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129032, 38.772976, 38.621635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047013, 0.339220, -0.939531,
		0.785243, 0.568801, 0.244660,
		0.617400, -0.749263, -0.239629,
		38.314251, 38.548199, 38.549747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503773, 39.350960, 38.480965>,  <37.882072, 39.072681, 38.717487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503773, 39.350960, 38.480965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467781, 38.982475, 38.329559>,  <38.446186, 38.761383, 38.238716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467781, 38.982475, 38.329559>,  <38.503773, 39.350960, 38.480965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467781, 38.982475, 38.329559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168221, 0.360540, -0.917449,
		0.981634, -0.146221, 0.122527,
		-0.089975, -0.921211, -0.378516,
		38.440788, 38.706112, 38.216003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871265, 39.325069, 37.898792>,  <38.503773, 39.350960, 38.480965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871265, 39.325069, 37.898792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665691, 38.988094, 37.834076>,  <38.542347, 38.785912, 37.795246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665691, 38.988094, 37.834076>,  <38.871265, 39.325069, 37.898792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665691, 38.988094, 37.834076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057347, 0.221922, -0.973376,
		0.855912, -0.490971, -0.162364,
		-0.513932, -0.842436, -0.161790,
		38.511513, 38.735363, 37.785538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277782, 38.963902, 37.452610>,  <38.871265, 39.325069, 37.898792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277782, 38.963902, 37.452610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899837, 38.836628, 37.421638>,  <38.673073, 38.760262, 37.403053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899837, 38.836628, 37.421638>,  <39.277782, 38.963902, 37.452610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899837, 38.836628, 37.421638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013380, 0.198747, -0.979959,
		0.327202, -0.926960, -0.183531,
		-0.944860, -0.318189, -0.077433,
		38.616379, 38.741173, 37.398407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211018, 38.533226, 36.784409>,  <39.277782, 38.963902, 37.452610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211018, 38.533226, 36.784409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831341, 38.629932, 36.864998>,  <38.603535, 38.687958, 36.913349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831341, 38.629932, 36.864998>,  <39.211018, 38.533226, 36.784409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831341, 38.629932, 36.864998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189106, 0.073555, -0.979198,
		-0.251556, -0.967543, -0.024098,
		-0.949189, 0.241766, 0.201471,
		38.546585, 38.702461, 36.925438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789703, 38.162598, 36.195362>,  <39.211018, 38.533226, 36.784409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789703, 38.162598, 36.195362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525288, 38.426407, 36.338505>,  <38.366638, 38.584690, 36.424393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525288, 38.426407, 36.338505>,  <38.789703, 38.162598, 36.195362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525288, 38.426407, 36.338505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389621, 0.105893, -0.914867,
		-0.641268, -0.744191, 0.186963,
		-0.661038, 0.659520, 0.357858,
		38.326977, 38.624264, 36.445862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108585, 37.499828, 35.912796>,  <38.789703, 38.162598, 36.195362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108585, 37.499828, 35.912796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997913, 37.178905, 35.701229>,  <38.931511, 36.986351, 35.574291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997913, 37.178905, 35.701229>,  <39.108585, 37.499828, 35.912796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997913, 37.178905, 35.701229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202580, -0.489334, 0.848242,
		-0.939367, 0.341837, -0.027143,
		-0.276678, -0.802309, -0.528914,
		38.914909, 36.938213, 35.542557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325935, 37.198833, 36.028305>,  <39.108585, 37.499828, 35.912796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325935, 37.198833, 36.028305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543400, 36.908615, 35.859539>,  <38.673878, 36.734486, 35.758278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543400, 36.908615, 35.859539>,  <38.325935, 37.198833, 36.028305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543400, 36.908615, 35.859539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241669, -0.616736, 0.749155,
		-0.803758, -0.305323, -0.510638,
		0.543663, -0.725545, -0.421919,
		38.706497, 36.690952, 35.732964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848484, 36.545147, 35.839188>,  <38.325935, 37.198833, 36.028305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848484, 36.545147, 35.839188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229805, 36.479851, 35.940826>,  <38.458599, 36.440674, 36.001812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229805, 36.479851, 35.940826>,  <37.848484, 36.545147, 35.839188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229805, 36.479851, 35.940826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302009, -0.510372, 0.805178,
		-0.001750, -0.844319, -0.535839,
		0.953303, -0.163237, 0.254099,
		38.515797, 36.430878, 36.017056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838428, 35.860260, 36.039253>,  <37.848484, 36.545147, 35.839188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838428, 35.860260, 36.039253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168556, 36.015537, 36.203278>,  <38.366634, 36.108704, 36.301693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168556, 36.015537, 36.203278>,  <37.838428, 35.860260, 36.039253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168556, 36.015537, 36.203278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139015, -0.564170, 0.813872,
		0.547285, -0.728710, -0.411656,
		0.825320, 0.388193, 0.410064,
		38.416153, 36.131996, 36.326298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234928, 35.211136, 36.343910>,  <37.838428, 35.860260, 36.039253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234928, 35.211136, 36.343910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382442, 35.545322, 36.506882>,  <38.470951, 35.745834, 36.604664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382442, 35.545322, 36.506882>,  <38.234928, 35.211136, 36.343910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382442, 35.545322, 36.506882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078994, -0.408571, 0.909302,
		0.926153, -0.367520, -0.084678,
		0.368783, 0.835463, 0.407431,
		38.493076, 35.795959, 36.629112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811115, 34.988449, 36.825268>,  <38.234928, 35.211136, 36.343910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811115, 34.988449, 36.825268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708065, 35.349239, 36.963875>,  <38.646236, 35.565712, 37.047039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708065, 35.349239, 36.963875>,  <38.811115, 34.988449, 36.825268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708065, 35.349239, 36.963875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041077, -0.348078, 0.936565,
		0.965371, 0.255517, 0.052624,
		-0.257626, 0.901971, 0.346521,
		38.630775, 35.619831, 37.067829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269730, 35.123009, 37.430382>,  <38.811115, 34.988449, 36.825268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269730, 35.123009, 37.430382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948490, 35.357666, 37.472103>,  <38.755745, 35.498459, 37.497135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948490, 35.357666, 37.472103>,  <39.269730, 35.123009, 37.430382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948490, 35.357666, 37.472103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063492, -0.258308, 0.963974,
		0.592451, 0.767546, 0.244695,
		-0.803101, 0.586643, 0.104302,
		38.707561, 35.533661, 37.503395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408886, 35.425865, 38.113949>,  <39.269730, 35.123009, 37.430382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408886, 35.425865, 38.113949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030254, 35.513103, 38.018936>,  <38.803074, 35.565445, 37.961929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030254, 35.513103, 38.018936>,  <39.408886, 35.425865, 38.113949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030254, 35.513103, 38.018936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282646, -0.206559, 0.936720,
		0.155230, 0.953818, 0.257168,
		-0.946581, 0.218094, -0.237528,
		38.746281, 35.578533, 37.947678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195255, 35.887341, 38.594727>,  <39.408886, 35.425865, 38.113949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195255, 35.887341, 38.594727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871078, 35.693962, 38.462387>,  <38.676571, 35.577934, 38.382984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871078, 35.693962, 38.462387>,  <39.195255, 35.887341, 38.594727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871078, 35.693962, 38.462387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246857, -0.230348, 0.941276,
		-0.531264, 0.844525, 0.067343,
		-0.810444, -0.483443, -0.330853,
		38.627945, 35.548931, 38.363132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643917, 36.100018, 39.126892>,  <39.195255, 35.887341, 38.594727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643917, 36.100018, 39.126892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507023, 35.784611, 38.922493>,  <38.424889, 35.595367, 38.799854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507023, 35.784611, 38.922493>,  <38.643917, 36.100018, 39.126892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507023, 35.784611, 38.922493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374434, -0.384342, 0.843849,
		-0.861787, 0.480126, -0.163714,
		-0.342232, -0.788518, -0.510996,
		38.404354, 35.548054, 38.769196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030014, 35.966057, 39.431046>,  <38.643917, 36.100018, 39.126892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030014, 35.966057, 39.431046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125286, 35.616146, 39.262272>,  <38.182449, 35.406200, 39.161007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125286, 35.616146, 39.262272>,  <38.030014, 35.966057, 39.431046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125286, 35.616146, 39.262272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369554, -0.483390, 0.793577,
		-0.898165, -0.033086, -0.438412,
		0.238181, -0.874779, -0.421937,
		38.196739, 35.353714, 39.135693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431171, 35.572647, 39.419273>,  <38.030014, 35.966057, 39.431046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431171, 35.572647, 39.419273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734730, 35.315117, 39.380146>,  <37.916866, 35.160599, 39.356670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734730, 35.315117, 39.380146>,  <37.431171, 35.572647, 39.419273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734730, 35.315117, 39.380146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384156, -0.563891, 0.731062,
		-0.525832, -0.517224, -0.675263,
		0.758897, -0.643822, -0.097817,
		37.962399, 35.121971, 39.350800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173927, 34.856499, 39.534073>,  <37.431171, 35.572647, 39.419273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173927, 34.856499, 39.534073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566505, 34.798225, 39.583931>,  <37.802052, 34.763260, 39.613846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566505, 34.798225, 39.583931>,  <37.173927, 34.856499, 39.534073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566505, 34.798225, 39.583931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184640, -0.542982, 0.819194,
		-0.051666, -0.827010, -0.559808,
		0.981447, -0.145687, 0.124645,
		37.860939, 34.754520, 39.621323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274162, 34.153297, 39.568527>,  <37.173927, 34.856499, 39.534073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274162, 34.153297, 39.568527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593117, 34.311962, 39.750446>,  <37.784489, 34.407162, 39.859596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593117, 34.311962, 39.750446>,  <37.274162, 34.153297, 39.568527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593117, 34.311962, 39.750446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145744, -0.604743, 0.782972,
		0.585611, -0.690612, -0.424400,
		0.797382, 0.396663, 0.454797,
		37.832333, 34.430962, 39.886887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779106, 33.623390, 39.738102>,  <37.274162, 34.153297, 39.568527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779106, 33.623390, 39.738102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820595, 33.926922, 39.995296>,  <37.845490, 34.109039, 40.149612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820595, 33.926922, 39.995296>,  <37.779106, 33.623390, 39.738102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820595, 33.926922, 39.995296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003175, -0.646213, 0.763150,
		0.994601, -0.081197, -0.064617,
		0.103722, 0.758825, 0.642982,
		37.851711, 34.154568, 40.188190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042538, 32.980213, 39.433540>,  <37.779106, 33.623390, 39.738102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042538, 32.980213, 39.433540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849628, 32.692917, 39.232922>,  <37.733883, 32.520538, 39.112549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849628, 32.692917, 39.232922>,  <38.042538, 32.980213, 39.433540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849628, 32.692917, 39.232922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399162, 0.689810, -0.604013,
		0.779799, -0.091096, -0.619366,
		-0.482268, -0.718237, -0.501551,
		37.704948, 32.477448, 39.082455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151985, 33.124859, 38.739422>,  <38.042538, 32.980213, 39.433540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151985, 33.124859, 38.739422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829189, 32.888721, 38.745903>,  <37.635509, 32.747040, 38.749794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829189, 32.888721, 38.745903>,  <38.151985, 33.124859, 38.739422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829189, 32.888721, 38.745903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454735, 0.603645, -0.654850,
		0.376801, -0.535829, -0.755585,
		-0.806992, -0.590340, 0.016206,
		37.587093, 32.711620, 38.750763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049526, 32.986885, 38.004898>,  <38.151985, 33.124859, 38.739422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049526, 32.986885, 38.004898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713360, 32.924919, 38.212631>,  <37.511662, 32.887737, 38.337269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713360, 32.924919, 38.212631>,  <38.049526, 32.986885, 38.004898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713360, 32.924919, 38.212631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539543, 0.329266, -0.774905,
		-0.050952, -0.931442, -0.360304,
		-0.840415, -0.154917, 0.519330,
		37.461235, 32.878445, 38.368431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557468, 32.719959, 37.490746>,  <38.049526, 32.986885, 38.004898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557468, 32.719959, 37.490746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316257, 32.811031, 37.796562>,  <37.171532, 32.865677, 37.980053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316257, 32.811031, 37.796562>,  <37.557468, 32.719959, 37.490746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316257, 32.811031, 37.796562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658899, 0.398100, -0.638255,
		-0.449684, -0.888638, -0.090043,
		-0.603023, 0.227684, 0.764541,
		37.135349, 32.879337, 38.025925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920677, 32.500427, 37.218613>,  <37.557468, 32.719959, 37.490746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920677, 32.500427, 37.218613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838940, 32.758492, 37.513100>,  <36.789898, 32.913330, 37.689793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838940, 32.758492, 37.513100>,  <36.920677, 32.500427, 37.218613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838940, 32.758492, 37.513100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752582, 0.377409, -0.539614,
		-0.625990, -0.664331, 0.408412,
		-0.204344, 0.645157, 0.736218,
		36.777637, 32.952038, 37.733967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126652, 32.473759, 37.317501>,  <36.920677, 32.500427, 37.218613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126652, 32.473759, 37.317501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271618, 32.815311, 37.466923>,  <36.358597, 33.020245, 37.556576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271618, 32.815311, 37.466923>,  <36.126652, 32.473759, 37.317501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271618, 32.815311, 37.466923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733861, 0.508511, -0.450404,
		-0.574547, -0.110901, 0.810923,
		0.362413, 0.853884, 0.373550,
		36.380341, 33.071476, 37.578987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495373, 32.781231, 37.543839>,  <36.126652, 32.473759, 37.317501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495373, 32.781231, 37.543839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754772, 33.085575, 37.534504>,  <35.910412, 33.268181, 37.528904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754772, 33.085575, 37.534504>,  <35.495373, 32.781231, 37.543839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754772, 33.085575, 37.534504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622806, 0.512707, -0.590969,
		-0.437676, 0.397780, 0.806356,
		0.648500, 0.760857, -0.023341,
		35.949322, 33.313831, 37.527500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190964, 33.435246, 37.819263>,  <35.495373, 32.781231, 37.543839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190964, 33.435246, 37.819263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492039, 33.561493, 37.588146>,  <35.672684, 33.637241, 37.449474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492039, 33.561493, 37.588146>,  <35.190964, 33.435246, 37.819263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492039, 33.561493, 37.588146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615623, 0.648494, -0.447732,
		0.233385, 0.692707, 0.682414,
		0.752688, 0.315616, -0.577795,
		35.717846, 33.656178, 37.414806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075951, 34.144405, 37.704704>,  <35.190964, 33.435246, 37.819263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075951, 34.144405, 37.704704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331539, 34.082794, 37.403244>,  <35.484894, 34.045830, 37.222366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331539, 34.082794, 37.403244>,  <35.075951, 34.144405, 37.704704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331539, 34.082794, 37.403244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582595, 0.542856, -0.604888,
		0.502293, 0.825581, 0.257135,
		0.638971, -0.154026, -0.753652,
		35.523232, 34.036587, 37.177147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163971, 34.841835, 37.293190>,  <35.075951, 34.144405, 37.704704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163971, 34.841835, 37.293190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278019, 34.535305, 37.062904>,  <35.346447, 34.351387, 36.924732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278019, 34.535305, 37.062904>,  <35.163971, 34.841835, 37.293190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278019, 34.535305, 37.062904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462610, 0.416036, -0.782883,
		0.839461, 0.489552, -0.235887,
		0.285125, -0.766324, -0.575718,
		35.363556, 34.305408, 36.890190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483349, 35.111198, 36.772232>,  <35.163971, 34.841835, 37.293190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483349, 35.111198, 36.772232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345959, 34.765457, 36.625305>,  <35.263527, 34.558014, 36.537148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345959, 34.765457, 36.625305>,  <35.483349, 35.111198, 36.772232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345959, 34.765457, 36.625305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418596, 0.491010, -0.763994,
		0.840717, -0.108651, -0.530462,
		-0.343471, -0.864352, -0.367319,
		35.242916, 34.506153, 36.515110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548233, 35.044132, 35.955803>,  <35.483349, 35.111198, 36.772232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548233, 35.044132, 35.955803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266354, 34.792023, 36.086128>,  <35.097225, 34.640759, 36.164322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266354, 34.792023, 36.086128>,  <35.548233, 35.044132, 35.955803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266354, 34.792023, 36.086128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594809, 0.274474, -0.755557,
		0.386783, -0.726235, -0.568315,
		-0.704699, -0.630275, 0.325809,
		35.054943, 34.602940, 36.183872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.105568, 30.494888, 42.004398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718052, 30.396570, 41.991581>,  <38.485542, 30.337580, 41.983891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718052, 30.396570, 41.991581>,  <39.105568, 30.494888, 42.004398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718052, 30.396570, 41.991581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060693, 0.360574, -0.930754,
		0.240329, -0.899762, -0.364239,
		-0.968792, -0.245794, -0.032047,
		38.427414, 30.322832, 41.981968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083450, 30.183352, 41.425617>,  <39.105568, 30.494888, 42.004398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083450, 30.183352, 41.425617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704094, 30.277973, 41.510098>,  <38.476482, 30.334745, 41.560783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704094, 30.277973, 41.510098>,  <39.083450, 30.183352, 41.425617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704094, 30.277973, 41.510098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089244, 0.439978, -0.893563,
		-0.304298, -0.866291, -0.396159,
		-0.948387, 0.236555, 0.211196,
		38.419579, 30.348940, 41.573456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719963, 29.940004, 40.821049>,  <39.083450, 30.183352, 41.425617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719963, 29.940004, 40.821049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486137, 30.210787, 40.999939>,  <38.345840, 30.373257, 41.107273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486137, 30.210787, 40.999939>,  <38.719963, 29.940004, 40.821049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486137, 30.210787, 40.999939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124675, 0.469720, -0.873967,
		-0.801710, -0.566649, -0.190183,
		-0.584565, 0.676958, 0.447227,
		38.310768, 30.413874, 41.134106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170395, 30.024883, 40.359276>,  <38.719963, 29.940004, 40.821049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170395, 30.024883, 40.359276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170986, 30.360167, 40.577415>,  <38.171341, 30.561337, 40.708302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170986, 30.360167, 40.577415>,  <38.170395, 30.024883, 40.359276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170986, 30.360167, 40.577415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196423, 0.534971, -0.821720,
		-0.980518, -0.105908, 0.165432,
		0.001475, 0.838206, 0.545351,
		38.171429, 30.611628, 40.741020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485146, 30.354555, 40.250435>,  <38.170395, 30.024883, 40.359276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485146, 30.354555, 40.250435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725754, 30.642582, 40.388809>,  <37.870121, 30.815399, 40.471832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725754, 30.642582, 40.388809>,  <37.485146, 30.354555, 40.250435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725754, 30.642582, 40.388809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292601, 0.601537, -0.743329,
		-0.743339, 0.345911, 0.572533,
		0.601525, 0.720069, 0.345932,
		37.906212, 30.858603, 40.492588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131916, 30.851858, 40.087296>,  <37.485146, 30.354555, 40.250435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131916, 30.851858, 40.087296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483665, 31.023693, 40.169422>,  <37.694717, 31.126795, 40.218697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483665, 31.023693, 40.169422>,  <37.131916, 30.851858, 40.087296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483665, 31.023693, 40.169422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259393, 0.793854, -0.550011,
		-0.399267, 0.430409, 0.809527,
		0.879376, 0.429587, 0.205314,
		37.747478, 31.152569, 40.231018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025352, 31.519724, 40.108570>,  <37.131916, 30.851858, 40.087296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025352, 31.519724, 40.108570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415012, 31.515244, 40.018311>,  <37.648808, 31.512556, 39.964157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.415012, 31.515244, 40.018311>,  <37.025352, 31.519724, 40.108570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415012, 31.515244, 40.018311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141831, 0.747116, -0.649385,
		0.175856, 0.664599, 0.726211,
		0.974145, -0.011200, -0.225646,
		37.707256, 31.511883, 39.950619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236328, 32.164894, 40.212048>,  <37.025352, 31.519724, 40.108570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236328, 32.164894, 40.212048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500328, 31.997002, 39.962814>,  <37.658730, 31.896267, 39.813274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500328, 31.997002, 39.962814>,  <37.236328, 32.164894, 40.212048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500328, 31.997002, 39.962814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014365, 0.836274, -0.548124,
		0.751128, 0.352812, 0.557970,
		0.660000, -0.419726, -0.623080,
		37.698330, 31.871084, 39.775890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717869, 32.692547, 40.000648>,  <37.236328, 32.164894, 40.212048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717869, 32.692547, 40.000648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.712463, 32.416965, 39.710777>,  <37.709221, 32.251617, 39.536854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.712463, 32.416965, 39.710777>,  <37.717869, 32.692547, 40.000648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712463, 32.416965, 39.710777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051098, 0.724277, -0.687613,
		0.998602, 0.027738, -0.044991,
		-0.013513, -0.688951, -0.724682,
		37.708408, 32.210281, 39.493374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297886, 33.208992, 40.268040>,  <37.717869, 32.692547, 40.000648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297886, 33.208992, 40.268040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189445, 33.563637, 40.417931>,  <38.124382, 33.776424, 40.507866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.189445, 33.563637, 40.417931>,  <38.297886, 33.208992, 40.268040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189445, 33.563637, 40.417931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195961, -0.330316, 0.923304,
		0.942391, 0.323744, -0.084191,
		-0.271105, 0.886612, 0.374728,
		38.108112, 33.829620, 40.530350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763256, 33.457104, 40.732315>,  <38.297886, 33.208992, 40.268040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763256, 33.457104, 40.732315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.428719, 33.634407, 40.861343>,  <38.227997, 33.740791, 40.938763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.428719, 33.634407, 40.861343>,  <38.763256, 33.457104, 40.732315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428719, 33.634407, 40.861343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252885, -0.210130, 0.944402,
		0.486399, 0.871416, 0.063646,
		-0.836341, 0.443261, 0.322575,
		38.177818, 33.767384, 40.958115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007072, 33.863079, 41.269215>,  <38.763256, 33.457104, 40.732315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007072, 33.863079, 41.269215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613056, 33.831356, 41.330418>,  <38.376648, 33.812325, 41.367142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613056, 33.831356, 41.330418>,  <39.007072, 33.863079, 41.269215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613056, 33.831356, 41.330418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161805, -0.119894, 0.979512,
		-0.059336, 0.989614, 0.130932,
		-0.985037, -0.079305, 0.153011,
		38.317547, 33.807564, 41.376320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984802, 34.082928, 41.918137>,  <39.007072, 33.863079, 41.269215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984802, 34.082928, 41.918137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619743, 33.926537, 41.870445>,  <38.400707, 33.832703, 41.841831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.619743, 33.926537, 41.870445>,  <38.984802, 34.082928, 41.918137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619743, 33.926537, 41.870445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016137, -0.325910, 0.945263,
		-0.408437, 0.860764, 0.303749,
		-0.912644, -0.390982, -0.119224,
		38.345951, 33.809242, 41.834679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587692, 34.362835, 42.452801>,  <38.984802, 34.082928, 41.918137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587692, 34.362835, 42.452801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.418678, 34.024956, 42.321384>,  <38.317268, 33.822227, 42.242535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.418678, 34.024956, 42.321384>,  <38.587692, 34.362835, 42.452801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418678, 34.024956, 42.321384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040659, -0.379794, 0.924177,
		-0.905434, 0.377140, 0.194822,
		-0.422536, -0.844702, -0.328544,
		38.291916, 33.771545, 42.222820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225170, 34.157059, 43.051991>,  <38.587692, 34.362835, 42.452801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225170, 34.157059, 43.051991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.244495, 33.817120, 42.842068>,  <38.256088, 33.613155, 42.716114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.244495, 33.817120, 42.842068>,  <38.225170, 34.157059, 43.051991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244495, 33.817120, 42.842068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160194, -0.512031, 0.843897,
		-0.985903, -0.124841, 0.111404,
		0.048311, -0.849847, -0.524811,
		38.258987, 33.562164, 42.684624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918976, 33.749973, 43.509174>,  <38.225170, 34.157059, 43.051991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918976, 33.749973, 43.509174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119839, 33.517235, 43.253269>,  <38.240356, 33.377590, 43.099728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119839, 33.517235, 43.253269>,  <37.918976, 33.749973, 43.509174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119839, 33.517235, 43.253269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333132, -0.552550, 0.764011,
		-0.798038, -0.596775, -0.083633,
		0.502154, -0.581849, -0.639761,
		38.270485, 33.342682, 43.061340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716942, 33.099155, 43.685810>,  <37.918976, 33.749973, 43.509174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716942, 33.099155, 43.685810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.069721, 33.080799, 43.498169>,  <38.281391, 33.069786, 43.385586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.069721, 33.080799, 43.498169>,  <37.716942, 33.099155, 43.685810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069721, 33.080799, 43.498169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400168, -0.452972, 0.796669,
		-0.249050, -0.890343, -0.381135,
		0.881952, -0.045892, -0.469099,
		38.334309, 33.067032, 43.357441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883068, 32.388805, 43.747688>,  <37.716942, 33.099155, 43.685810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883068, 32.388805, 43.747688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203945, 32.615055, 43.671215>,  <38.396473, 32.750805, 43.625332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203945, 32.615055, 43.671215>,  <37.883068, 32.388805, 43.747688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203945, 32.615055, 43.671215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465878, -0.392721, 0.792924,
		0.373415, -0.725148, -0.578551,
		0.802196, 0.565624, -0.191183,
		38.444603, 32.784740, 43.613861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389538, 31.881485, 43.623638>,  <37.883068, 32.388805, 43.747688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389538, 31.881485, 43.623638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558331, 32.228916, 43.727566>,  <38.659607, 32.437374, 43.789925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.558331, 32.228916, 43.727566>,  <38.389538, 31.881485, 43.623638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558331, 32.228916, 43.727566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446422, -0.448507, 0.774305,
		0.789075, -0.210753, -0.577013,
		0.421981, 0.868576, 0.259821,
		38.684925, 32.489491, 43.805511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957737, 31.726107, 43.915409>,  <38.389538, 31.881485, 43.623638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957737, 31.726107, 43.915409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.944309, 32.102058, 44.051350>,  <38.936253, 32.327629, 44.132915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.944309, 32.102058, 44.051350>,  <38.957737, 31.726107, 43.915409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944309, 32.102058, 44.051350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497533, -0.279202, 0.821284,
		0.866795, 0.196654, -0.458249,
		-0.033565, 0.939879, 0.339853,
		38.934238, 32.384022, 44.153305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626514, 31.922392, 44.091705>,  <38.957737, 31.726107, 43.915409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626514, 31.922392, 44.091705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397247, 32.174458, 44.301228>,  <39.259689, 32.325699, 44.426941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397247, 32.174458, 44.301228>,  <39.626514, 31.922392, 44.091705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397247, 32.174458, 44.301228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572168, -0.149825, 0.806335,
		0.586604, 0.761868, -0.274687,
		-0.573166, 0.630166, 0.523805,
		39.225296, 32.363506, 44.458370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105236, 32.362720, 44.499969>,  <39.626514, 31.922392, 44.091705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105236, 32.362720, 44.499969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.752441, 32.405460, 44.683571>,  <39.540764, 32.431103, 44.793732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.752441, 32.405460, 44.683571>,  <40.105236, 32.362720, 44.499969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752441, 32.405460, 44.683571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444806, -0.133089, 0.885683,
		0.155724, 0.985327, 0.069854,
		-0.881985, 0.106851, 0.459005,
		39.487846, 32.437515, 44.821274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187599, 32.866383, 44.991970>,  <40.105236, 32.362720, 44.499969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187599, 32.866383, 44.991970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.890308, 32.644917, 45.142204>,  <39.711933, 32.512039, 45.232346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.890308, 32.644917, 45.142204>,  <40.187599, 32.866383, 44.991970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890308, 32.644917, 45.142204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553477, -0.193450, 0.810086,
		-0.375858, 0.809959, 0.450218,
		-0.743232, -0.553663, 0.375584,
		39.667339, 32.478817, 45.254879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.840771, 34.491821, 46.824463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146450, 34.309086, 46.642342>,  <34.329857, 34.199444, 46.533070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146450, 34.309086, 46.642342>,  <33.840771, 34.491821, 46.824463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146450, 34.309086, 46.642342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119828, 0.593066, -0.796187,
		0.633753, 0.663002, 0.398477,
		0.764197, -0.456837, -0.455304,
		34.375710, 34.172035, 46.505749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153694, 35.007404, 46.535065>,  <33.840771, 34.491821, 46.824463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153694, 35.007404, 46.535065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311413, 34.700649, 46.332516>,  <34.406044, 34.516598, 46.210987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311413, 34.700649, 46.332516>,  <34.153694, 35.007404, 46.535065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311413, 34.700649, 46.332516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139292, 0.494778, -0.857783,
		0.908365, 0.408757, 0.088269,
		0.394298, -0.766885, -0.506375,
		34.429703, 34.470585, 46.180603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577190, 35.297241, 46.096554>,  <34.153694, 35.007404, 46.535065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577190, 35.297241, 46.096554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.517765, 34.939201, 45.928402>,  <34.482109, 34.724377, 45.827511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.517765, 34.939201, 45.928402>,  <34.577190, 35.297241, 46.096554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517765, 34.939201, 45.928402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288374, 0.445835, -0.847391,
		0.945922, -0.004667, -0.324360,
		-0.148566, -0.895103, -0.420380,
		34.473194, 34.670670, 45.802288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899204, 35.282188, 45.430256>,  <34.577190, 35.297241, 46.096554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899204, 35.282188, 45.430256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641300, 34.976799, 45.415337>,  <34.486557, 34.793564, 45.406384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641300, 34.976799, 45.415337>,  <34.899204, 35.282188, 45.430256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641300, 34.976799, 45.415337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232062, 0.242007, -0.942115,
		0.728311, -0.598777, -0.333209,
		-0.644756, -0.763478, -0.037302,
		34.447872, 34.747757, 45.404144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020142, 34.944798, 44.818806>,  <34.899204, 35.282188, 45.430256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020142, 34.944798, 44.818806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649162, 34.828129, 44.912411>,  <34.426575, 34.758125, 44.968575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.649162, 34.828129, 44.912411>,  <35.020142, 34.944798, 44.818806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649162, 34.828129, 44.912411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311945, 0.258345, -0.914302,
		0.206215, -0.920971, -0.330586,
		-0.927451, -0.291668, 0.234018,
		34.370926, 34.740627, 44.982616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747524, 34.613129, 44.211555>,  <35.020142, 34.944798, 44.818806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747524, 34.613129, 44.211555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428921, 34.748066, 44.412262>,  <34.237759, 34.829029, 44.532684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.428921, 34.748066, 44.412262>,  <34.747524, 34.613129, 44.211555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428921, 34.748066, 44.412262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338221, 0.439290, -0.832244,
		-0.501176, -0.832599, -0.235801,
		-0.796510, 0.337348, 0.501764,
		34.189968, 34.849270, 44.562790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207939, 34.359375, 43.823753>,  <34.747524, 34.613129, 44.211555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207939, 34.359375, 43.823753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035908, 34.647781, 44.041069>,  <33.932690, 34.820827, 44.171459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035908, 34.647781, 44.041069>,  <34.207939, 34.359375, 43.823753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035908, 34.647781, 44.041069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406080, 0.382977, -0.829715,
		-0.806309, -0.577460, 0.128084,
		-0.430074, 0.721020, 0.543293,
		33.906887, 34.864086, 44.204056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534191, 34.424538, 43.616550>,  <34.207939, 34.359375, 43.823753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534191, 34.424538, 43.616550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601688, 34.783524, 43.779564>,  <33.642189, 34.998917, 43.877373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.601688, 34.783524, 43.779564>,  <33.534191, 34.424538, 43.616550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601688, 34.783524, 43.779564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367946, 0.440928, -0.818657,
		-0.914407, -0.011804, 0.404623,
		0.168746, 0.897465, 0.407531,
		33.652313, 35.052765, 43.901825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963249, 34.731373, 43.554596>,  <33.534191, 34.424538, 43.616550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963249, 34.731373, 43.554596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250404, 35.009289, 43.572048>,  <33.422695, 35.176041, 43.582520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.250404, 35.009289, 43.572048>,  <32.963249, 34.731373, 43.554596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250404, 35.009289, 43.572048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362551, 0.426632, -0.828578,
		-0.594303, 0.579007, 0.558171,
		0.717886, 0.694792, 0.043630,
		33.465771, 35.217728, 43.585136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680599, 35.342621, 43.231647>,  <32.963249, 34.731373, 43.554596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680599, 35.342621, 43.231647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067505, 35.442989, 43.246803>,  <33.299648, 35.503212, 43.255898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.067505, 35.442989, 43.246803>,  <32.680599, 35.342621, 43.231647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067505, 35.442989, 43.246803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085211, 0.461801, -0.882881,
		-0.239036, 0.850751, 0.468065,
		0.967265, 0.250925, 0.037893,
		33.357685, 35.518269, 43.258171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745041, 36.107311, 43.103390>,  <32.680599, 35.342621, 43.231647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745041, 36.107311, 43.103390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113438, 35.965351, 43.039112>,  <33.334476, 35.880177, 43.000546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.113438, 35.965351, 43.039112>,  <32.745041, 36.107311, 43.103390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113438, 35.965351, 43.039112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017802, 0.450379, -0.892660,
		0.389176, 0.819271, 0.421114,
		0.920991, -0.354899, -0.160692,
		33.389736, 35.858883, 42.990906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045368, 36.608898, 42.679279>,  <32.745041, 36.107311, 43.103390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045368, 36.608898, 42.679279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.282379, 36.289043, 42.640293>,  <33.424587, 36.097130, 42.616901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.282379, 36.289043, 42.640293>,  <33.045368, 36.608898, 42.679279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282379, 36.289043, 42.640293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186090, 0.253590, -0.949243,
		0.783762, 0.544315, 0.299063,
		0.592526, -0.799633, -0.097462,
		33.460136, 36.049152, 42.611053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606773, 36.810905, 42.324581>,  <33.045368, 36.608898, 42.679279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606773, 36.810905, 42.324581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.637295, 36.417095, 42.261482>,  <33.655609, 36.180809, 42.223621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.637295, 36.417095, 42.261482>,  <33.606773, 36.810905, 42.324581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637295, 36.417095, 42.261482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212632, 0.170637, -0.962118,
		0.974148, 0.039871, 0.222362,
		0.076304, -0.984527, -0.157748,
		33.660187, 36.121738, 42.214157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201794, 36.760567, 41.994667>,  <33.606773, 36.810905, 42.324581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201794, 36.760567, 41.994667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007355, 36.421516, 41.909595>,  <33.890690, 36.218086, 41.858555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.007355, 36.421516, 41.909595>,  <34.201794, 36.760567, 41.994667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007355, 36.421516, 41.909595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169796, 0.147119, -0.974436,
		0.857249, -0.509785, 0.072409,
		-0.486100, -0.847629, -0.212677,
		33.861526, 36.167229, 41.845791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973156, 36.579697, 42.157063>,  <34.201794, 36.760567, 41.994667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973156, 36.579697, 42.157063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299629, 36.800259, 42.088009>,  <35.495514, 36.932594, 42.046577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.299629, 36.800259, 42.088009>,  <34.973156, 36.579697, 42.157063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299629, 36.800259, 42.088009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485609, -0.492723, 0.722086,
		0.313101, -0.673185, -0.669918,
		0.816182, 0.551404, -0.172633,
		35.544483, 36.965679, 42.036221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548435, 36.238598, 41.911629>,  <34.973156, 36.579697, 42.157063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548435, 36.238598, 41.911629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657963, 36.546417, 42.142391>,  <35.723679, 36.731110, 42.280849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657963, 36.546417, 42.142391>,  <35.548435, 36.238598, 41.911629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657963, 36.546417, 42.142391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502519, -0.625914, 0.596411,
		0.820060, 0.126597, -0.558100,
		0.273818, 0.769549, 0.576904,
		35.740108, 36.777283, 42.315464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337639, 36.092987, 41.998745>,  <35.548435, 36.238598, 41.911629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337639, 36.092987, 41.998745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224594, 36.390858, 42.240597>,  <36.156765, 36.569580, 42.385708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224594, 36.390858, 42.240597>,  <36.337639, 36.092987, 41.998745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224594, 36.390858, 42.240597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705361, -0.265840, 0.657111,
		0.650073, 0.612193, -0.450138,
		-0.282614, 0.744680, 0.604633,
		36.139809, 36.614262, 42.421986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919201, 36.295712, 42.247086>,  <36.337639, 36.092987, 41.998745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919201, 36.295712, 42.247086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660351, 36.432121, 42.519829>,  <36.505043, 36.513966, 42.683475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.660351, 36.432121, 42.519829>,  <36.919201, 36.295712, 42.247086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660351, 36.432121, 42.519829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654405, -0.210387, 0.726286,
		0.391136, 0.916210, -0.087021,
		-0.647122, 0.341024, 0.681862,
		36.466213, 36.534428, 42.724388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334007, 36.568130, 42.835983>,  <36.919201, 36.295712, 42.247086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334007, 36.568130, 42.835983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.964661, 36.538082, 42.986584>,  <36.743053, 36.520054, 43.076942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.964661, 36.538082, 42.986584>,  <37.334007, 36.568130, 42.835983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964661, 36.538082, 42.986584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362162, 0.155002, 0.919137,
		-0.127403, 0.985054, -0.115918,
		-0.923367, -0.075119, 0.376497,
		36.687649, 36.515545, 43.099533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245510, 37.057499, 43.437313>,  <37.334007, 36.568130, 42.835983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245510, 37.057499, 43.437313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975491, 36.768864, 43.498775>,  <36.813477, 36.595680, 43.535652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975491, 36.768864, 43.498775>,  <37.245510, 37.057499, 43.437313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975491, 36.768864, 43.498775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254415, -0.032180, 0.966560,
		-0.692515, 0.691572, 0.205306,
		-0.675052, -0.721590, 0.153661,
		36.772976, 36.552387, 43.544872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975010, 37.260166, 44.001472>,  <37.245510, 37.057499, 43.437313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975010, 37.260166, 44.001472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.873192, 36.874092, 43.977417>,  <36.812099, 36.642448, 43.962982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.873192, 36.874092, 43.977417>,  <36.975010, 37.260166, 44.001472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873192, 36.874092, 43.977417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297743, -0.137391, 0.944708,
		-0.920084, 0.222568, 0.322351,
		-0.254550, -0.965188, -0.060143,
		36.796825, 36.584538, 43.959373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665016, 37.096905, 44.596958>,  <36.975010, 37.260166, 44.001472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665016, 37.096905, 44.596958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.778858, 36.738262, 44.461262>,  <36.847164, 36.523075, 44.379845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.778858, 36.738262, 44.461262>,  <36.665016, 37.096905, 44.596958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778858, 36.738262, 44.461262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395479, -0.212550, 0.893543,
		-0.873267, -0.388473, 0.294097,
		0.284607, -0.896611, -0.339245,
		36.864239, 36.469280, 44.359489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398247, 36.561378, 45.016575>,  <36.665016, 37.096905, 44.596958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398247, 36.561378, 45.016575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.710529, 36.381950, 44.842545>,  <36.897900, 36.274296, 44.738129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.710529, 36.381950, 44.842545>,  <36.398247, 36.561378, 45.016575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710529, 36.381950, 44.842545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261450, -0.397893, 0.879389,
		-0.567575, -0.800293, -0.193360,
		0.780706, -0.448565, -0.435072,
		36.944740, 36.247379, 44.712025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361233, 35.775517, 45.250305>,  <36.398247, 36.561378, 45.016575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361233, 35.775517, 45.250305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724857, 35.881397, 45.121590>,  <36.943031, 35.944927, 45.044361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724857, 35.881397, 45.121590>,  <36.361233, 35.775517, 45.250305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724857, 35.881397, 45.121590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399975, -0.337946, 0.851946,
		0.116769, -0.903174, -0.413088,
		0.909057, 0.264706, -0.321786,
		36.997574, 35.960808, 45.025055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793339, 35.148029, 45.169342>,  <36.361233, 35.775517, 45.250305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793339, 35.148029, 45.169342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027306, 35.468594, 45.219334>,  <37.167686, 35.660931, 45.249329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.027306, 35.468594, 45.219334>,  <36.793339, 35.148029, 45.169342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027306, 35.468594, 45.219334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356640, -0.392509, 0.847788,
		0.728481, -0.451309, -0.515399,
		0.584913, 0.801409, 0.124980,
		37.202778, 35.709015, 45.256828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435040, 34.871872, 45.493835>,  <36.793339, 35.148029, 45.169342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435040, 34.871872, 45.493835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465660, 35.264751, 45.562443>,  <37.484032, 35.500481, 45.603607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465660, 35.264751, 45.562443>,  <37.435040, 34.871872, 45.493835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465660, 35.264751, 45.562443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553528, -0.184943, 0.812036,
		0.829305, 0.032782, -0.557833,
		0.076547, 0.982202, 0.171520,
		37.488625, 35.559414, 45.613899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183273, 34.959751, 45.696796>,  <37.435040, 34.871872, 45.493835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183273, 34.959751, 45.696796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972668, 35.277264, 45.818581>,  <37.846302, 35.467770, 45.891651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972668, 35.277264, 45.818581>,  <38.183273, 34.959751, 45.696796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972668, 35.277264, 45.818581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370392, -0.108172, 0.922555,
		0.765238, 0.598511, -0.237055,
		-0.526517, 0.793778, 0.304461,
		37.814713, 35.515396, 45.909920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662868, 35.368149, 46.046585>,  <38.183273, 34.959751, 45.696796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662868, 35.368149, 46.046585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299793, 35.459084, 46.187675>,  <38.081947, 35.513645, 46.272331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299793, 35.459084, 46.187675>,  <38.662868, 35.368149, 46.046585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299793, 35.459084, 46.187675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313164, -0.192551, 0.929975,
		0.279333, 0.954591, 0.103584,
		-0.907690, 0.227334, 0.352729,
		38.027485, 35.527283, 46.293495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372066, 35.635059, 46.126553>,  <38.662868, 35.368149, 46.046585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372066, 35.635059, 46.126553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.684189, 35.393620, 46.061069>,  <39.871460, 35.248756, 46.021778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.684189, 35.393620, 46.061069>,  <39.372066, 35.635059, 46.126553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684189, 35.393620, 46.061069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106669, 0.129481, -0.985828,
		0.616239, 0.786706, 0.036650,
		0.780302, -0.603596, -0.163708,
		39.918278, 35.212540, 46.011955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698452, 36.025436, 45.610672>,  <39.372066, 35.635059, 46.126553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698452, 36.025436, 45.610672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.856159, 35.658466, 45.589157>,  <39.950783, 35.438286, 45.576248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.856159, 35.658466, 45.589157>,  <39.698452, 36.025436, 45.610672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856159, 35.658466, 45.589157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047107, 0.078624, -0.995791,
		0.917789, 0.390071, 0.074215,
		0.394264, -0.917422, -0.053785,
		39.974438, 35.383240, 45.573021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278465, 36.107746, 45.275253>,  <39.698452, 36.025436, 45.610672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278465, 36.107746, 45.275253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198765, 35.719391, 45.222084>,  <40.150944, 35.486378, 45.190182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198765, 35.719391, 45.222084>,  <40.278465, 36.107746, 45.275253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198765, 35.719391, 45.222084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035959, 0.142799, -0.989098,
		0.979288, -0.192301, -0.063365,
		-0.199253, -0.970891, -0.132927,
		40.138988, 35.428123, 45.182205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750500, 35.881042, 44.779991>,  <40.278465, 36.107746, 45.275253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750500, 35.881042, 44.779991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.446926, 35.620579, 44.780811>,  <40.264782, 35.464298, 44.781303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.446926, 35.620579, 44.780811>,  <40.750500, 35.881042, 44.779991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446926, 35.620579, 44.780811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217215, 0.250194, -0.943515,
		0.613868, -0.716513, -0.331324,
		-0.758936, -0.651162, 0.002052,
		40.219246, 35.425232, 44.781425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839699, 35.340069, 44.287643>,  <40.750500, 35.881042, 44.779991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839699, 35.340069, 44.287643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.449528, 35.386086, 44.362804>,  <40.215424, 35.413696, 44.407902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.449528, 35.386086, 44.362804>,  <40.839699, 35.340069, 44.287643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449528, 35.386086, 44.362804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160489, 0.213302, -0.963714,
		-0.150952, -0.970189, -0.189597,
		-0.975427, 0.115047, 0.187903,
		40.156898, 35.420601, 44.419174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603371, 34.925980, 43.709286>,  <40.839699, 35.340069, 44.287643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603371, 34.925980, 43.709286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294983, 35.155773, 43.819248>,  <40.109951, 35.293648, 43.885227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294983, 35.155773, 43.819248>,  <40.603371, 34.925980, 43.709286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294983, 35.155773, 43.819248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302800, 0.049097, -0.951788,
		-0.560282, -0.817044, 0.136101,
		-0.770971, 0.574481, 0.274910,
		40.063690, 35.328117, 43.901722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976067, 34.714909, 43.322598>,  <40.603371, 34.925980, 43.709286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976067, 34.714909, 43.322598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.883965, 35.077019, 43.465405>,  <39.828701, 35.294285, 43.551090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.883965, 35.077019, 43.465405>,  <39.976067, 34.714909, 43.322598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883965, 35.077019, 43.465405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226103, 0.307071, -0.924438,
		-0.946498, -0.293583, 0.133979,
		-0.230258, 0.905272, 0.357022,
		39.814888, 35.348598, 43.572510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311798, 34.893406, 43.030590>,  <39.976067, 34.714909, 43.322598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311798, 34.893406, 43.030590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.504723, 35.228462, 43.133144>,  <39.620476, 35.429497, 43.194679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.504723, 35.228462, 43.133144>,  <39.311798, 34.893406, 43.030590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504723, 35.228462, 43.133144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302701, 0.434013, -0.848531,
		-0.822042, 0.331644, 0.462883,
		0.482307, 0.837643, 0.256388,
		39.649414, 35.479755, 43.210060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836002, 35.289131, 42.864868>,  <39.311798, 34.893406, 43.030590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836002, 35.289131, 42.864868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.143261, 35.540531, 42.913746>,  <39.327618, 35.691372, 42.943073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.143261, 35.540531, 42.913746>,  <38.836002, 35.289131, 42.864868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143261, 35.540531, 42.913746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360827, 0.582599, -0.728273,
		-0.528912, 0.515331, 0.674304,
		0.768151, 0.628499, 0.122199,
		39.373707, 35.729080, 42.950405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515408, 35.906517, 42.932411>,  <38.836002, 35.289131, 42.864868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515408, 35.906517, 42.932411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885258, 36.000340, 42.812378>,  <39.107170, 36.056633, 42.740360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885258, 36.000340, 42.812378>,  <38.515408, 35.906517, 42.932411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885258, 36.000340, 42.812378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374860, 0.699892, -0.607973,
		0.067418, 0.674636, 0.735065,
		0.924627, 0.234558, -0.300079,
		39.162647, 36.070705, 42.722355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514885, 36.577065, 42.919041>,  <38.515408, 35.906517, 42.932411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514885, 36.577065, 42.919041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.829628, 36.499996, 42.684525>,  <39.018475, 36.453754, 42.543816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.829628, 36.499996, 42.684525>,  <38.514885, 36.577065, 42.919041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829628, 36.499996, 42.684525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305604, 0.703704, -0.641410,
		0.536156, 0.683870, 0.494832,
		0.786856, -0.192674, -0.586288,
		39.065685, 36.442196, 42.508636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638252, 37.236763, 42.613853>,  <38.514885, 36.577065, 42.919041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638252, 37.236763, 42.613853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.847549, 36.972862, 42.398098>,  <38.973129, 36.814522, 42.268646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.847549, 36.972862, 42.398098>,  <38.638252, 37.236763, 42.613853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847549, 36.972862, 42.398098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015499, 0.625479, -0.780087,
		0.852040, 0.416539, 0.317055,
		0.523248, -0.659751, -0.539389,
		39.004524, 36.774937, 42.236282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169651, 37.629345, 42.328835>,  <38.638252, 37.236763, 42.613853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169651, 37.629345, 42.328835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112160, 37.311188, 42.093311>,  <39.077663, 37.120293, 41.951996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112160, 37.311188, 42.093311>,  <39.169651, 37.629345, 42.328835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112160, 37.311188, 42.093311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193964, 0.606088, -0.771386,
		0.970423, 0.003338, -0.241388,
		-0.143728, -0.795391, -0.588809,
		39.069042, 37.072571, 41.916668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550785, 37.821033, 41.706078>,  <39.169651, 37.629345, 42.328835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550785, 37.821033, 41.706078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.305161, 37.518139, 41.617058>,  <39.157787, 37.336403, 41.563644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.305161, 37.518139, 41.617058>,  <39.550785, 37.821033, 41.706078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305161, 37.518139, 41.617058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178512, 0.407917, -0.895398,
		0.768809, -0.510098, -0.385660,
		-0.614057, -0.757235, -0.222551,
		39.120945, 37.290970, 41.550293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.146915, 30.398905, 31.594305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.042150, 30.131313, 31.872547>,  <25.979292, 29.970758, 32.039494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.042150, 30.131313, 31.872547>,  <26.146915, 30.398905, 31.594305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042150, 30.131313, 31.872547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046146, 0.728624, 0.683358,
		-0.963987, 0.146882, -0.221707,
		-0.261914, -0.668979, 0.695606,
		25.963577, 29.930620, 32.081230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605591, 30.553596, 32.095795>,  <26.146915, 30.398905, 31.594305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605591, 30.553596, 32.095795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.833416, 30.300112, 32.305176>,  <25.970112, 30.148020, 32.430805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.833416, 30.300112, 32.305176>,  <25.605591, 30.553596, 32.095795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833416, 30.300112, 32.305176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121387, 0.565014, 0.816103,
		-0.812935, -0.528363, 0.244886,
		0.569563, -0.633713, 0.523456,
		26.004284, 30.109999, 32.462212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290474, 30.347485, 32.637768>,  <25.605591, 30.553596, 32.095795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290474, 30.347485, 32.637768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.675814, 30.293428, 32.730457>,  <25.907017, 30.260994, 32.786072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.675814, 30.293428, 32.730457>,  <25.290474, 30.347485, 32.637768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675814, 30.293428, 32.730457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148324, 0.451411, 0.879902,
		-0.223515, -0.882023, 0.414821,
		0.963349, -0.135143, 0.231722,
		25.964819, 30.252886, 32.799973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244213, 30.114449, 33.342701>,  <25.290474, 30.347485, 32.637768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244213, 30.114449, 33.342701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.605547, 30.252907, 33.241375>,  <25.822348, 30.335981, 33.180580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.605547, 30.252907, 33.241375>,  <25.244213, 30.114449, 33.342701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605547, 30.252907, 33.241375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075306, 0.453409, 0.888116,
		0.422267, -0.821345, 0.383515,
		0.903338, 0.346141, -0.253311,
		25.876547, 30.356750, 33.165382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547733, 30.040834, 34.004154>,  <25.244213, 30.114449, 33.342701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547733, 30.040834, 34.004154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.748484, 30.291121, 33.765289>,  <25.868933, 30.441292, 33.621971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.748484, 30.291121, 33.765289>,  <25.547733, 30.040834, 34.004154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748484, 30.291121, 33.765289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297872, 0.523139, 0.798497,
		0.812032, -0.578622, 0.076166,
		0.501874, 0.625717, -0.597161,
		25.899046, 30.478836, 33.586140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955393, 30.351583, 34.517231>,  <25.547733, 30.040834, 34.004154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955393, 30.351583, 34.517231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.050674, 30.597944, 34.216850>,  <26.107843, 30.745760, 34.036621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.050674, 30.597944, 34.216850>,  <25.955393, 30.351583, 34.517231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050674, 30.597944, 34.216850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101967, 0.753074, 0.649986,
		0.965848, -0.231400, 0.116582,
		0.238202, 0.615900, -0.750951,
		26.122135, 30.782715, 33.991566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550159, 30.640570, 34.660652>,  <25.955393, 30.351583, 34.517231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550159, 30.640570, 34.660652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.399319, 30.909754, 34.406120>,  <26.308815, 31.071264, 34.253399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.399319, 30.909754, 34.406120>,  <26.550159, 30.640570, 34.660652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399319, 30.909754, 34.406120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272711, 0.737276, 0.618104,
		0.885112, 0.059552, -0.461551,
		-0.377100, 0.672962, -0.636332,
		26.286188, 31.111643, 34.215221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.971169, 31.310602, 34.581516>,  <26.550159, 30.640570, 34.660652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.971169, 31.310602, 34.581516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618137, 31.419970, 34.428520>,  <26.406319, 31.485590, 34.336723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618137, 31.419970, 34.428520>,  <26.971169, 31.310602, 34.581516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618137, 31.419970, 34.428520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019356, 0.791703, 0.610600,
		0.469767, 0.546306, -0.693447,
		-0.882578, 0.273418, -0.382490,
		26.353363, 31.501995, 34.313774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054085, 31.919119, 34.228321>,  <26.971169, 31.310602, 34.581516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054085, 31.919119, 34.228321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659964, 31.928320, 34.296021>,  <26.423491, 31.933840, 34.336639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.659964, 31.928320, 34.296021>,  <27.054085, 31.919119, 34.228321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659964, 31.928320, 34.296021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090831, 0.909731, 0.405142,
		-0.144651, 0.414561, -0.898452,
		-0.985305, 0.023003, 0.169248,
		26.364372, 31.935221, 34.346794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876604, 32.590034, 34.009045>,  <27.054085, 31.919119, 34.228321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876604, 32.590034, 34.009045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580788, 32.445824, 34.236412>,  <26.403297, 32.359299, 34.372833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.580788, 32.445824, 34.236412>,  <26.876604, 32.590034, 34.009045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580788, 32.445824, 34.236412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114328, 0.899473, 0.421755,
		-0.663332, 0.246918, -0.706415,
		-0.739540, -0.360527, 0.568420,
		26.358925, 32.337666, 34.406937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373768, 33.094173, 34.075729>,  <26.876604, 32.590034, 34.009045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373768, 33.094173, 34.075729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319593, 32.868084, 34.401226>,  <26.287088, 32.732430, 34.596523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.319593, 32.868084, 34.401226>,  <26.373768, 33.094173, 34.075729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319593, 32.868084, 34.401226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204657, 0.819561, 0.535197,
		-0.969419, -0.094054, -0.226675,
		-0.135437, -0.565221, 0.813746,
		26.278963, 32.698517, 34.645351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760441, 33.419376, 34.543152>,  <26.373768, 33.094173, 34.075729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760441, 33.419376, 34.543152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.001345, 33.218235, 34.791161>,  <26.145887, 33.097549, 34.939964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.001345, 33.218235, 34.791161>,  <25.760441, 33.419376, 34.543152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001345, 33.218235, 34.791161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040729, 0.795019, 0.605216,
		-0.797262, -0.339243, 0.499287,
		0.602258, -0.502851, 0.620021,
		26.182022, 33.067379, 34.977165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.565815, 33.566242, 35.244362>,  <25.760441, 33.419376, 34.543152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.565815, 33.566242, 35.244362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.950590, 33.458595, 35.263348>,  <26.181456, 33.394009, 35.274738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.950590, 33.458595, 35.263348>,  <25.565815, 33.566242, 35.244362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950590, 33.458595, 35.263348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193547, 0.793564, 0.576885,
		-0.192913, -0.545741, 0.815445,
		0.961938, -0.269115, 0.047462,
		26.239172, 33.377861, 35.277588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782928, 34.131424, 35.580463>,  <25.565815, 33.566242, 35.244362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782928, 34.131424, 35.580463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.107264, 33.898083, 35.561543>,  <26.301865, 33.758076, 35.550190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.107264, 33.898083, 35.561543>,  <25.782928, 34.131424, 35.580463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107264, 33.898083, 35.561543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486983, 0.627626, 0.607399,
		-0.324640, -0.515539, 0.792988,
		0.810837, -0.583358, -0.047306,
		26.350515, 33.723076, 35.547352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095074, 34.053364, 36.306385>,  <25.782928, 34.131424, 35.580463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095074, 34.053364, 36.306385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375275, 33.997955, 36.026352>,  <26.543396, 33.964710, 35.858334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.375275, 33.997955, 36.026352>,  <26.095074, 34.053364, 36.306385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375275, 33.997955, 36.026352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566577, 0.704411, 0.427545,
		0.433921, -0.696144, 0.571923,
		0.700502, -0.138518, -0.700079,
		26.585424, 33.956402, 35.816330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728951, 33.777668, 36.657303>,  <26.095074, 34.053364, 36.306385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728951, 33.777668, 36.657303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839878, 33.945961, 36.311798>,  <26.906435, 34.046936, 36.104496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.839878, 33.945961, 36.311798>,  <26.728951, 33.777668, 36.657303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839878, 33.945961, 36.311798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635488, 0.593945, 0.493340,
		0.720589, -0.685721, -0.102658,
		0.277320, 0.420733, -0.863757,
		26.923075, 34.072182, 36.052670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466728, 33.749462, 36.856911>,  <26.728951, 33.777668, 36.657303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466728, 33.749462, 36.856911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402899, 34.012257, 36.562180>,  <27.364601, 34.169933, 36.385342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402899, 34.012257, 36.562180>,  <27.466728, 33.749462, 36.856911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402899, 34.012257, 36.562180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563740, 0.673363, 0.478310,
		0.810391, -0.339051, -0.477819,
		-0.159574, 0.656983, -0.736823,
		27.355026, 34.209351, 36.341133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855164, 34.412868, 37.167736>,  <27.466728, 33.749462, 36.856911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855164, 34.412868, 37.167736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861130, 34.733372, 37.406990>,  <27.864710, 34.925674, 37.550541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.861130, 34.733372, 37.406990>,  <27.855164, 34.412868, 37.167736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861130, 34.733372, 37.406990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870988, 0.283383, -0.401340,
		-0.491078, 0.526954, -0.693658,
		0.014917, 0.801257, 0.598134,
		27.865604, 34.973747, 37.586430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037319, 34.604298, 36.465939>,  <27.855164, 34.412868, 37.167736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037319, 34.604298, 36.465939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306976, 34.899445, 36.479084>,  <28.468769, 35.076534, 36.486969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306976, 34.899445, 36.479084>,  <28.037319, 34.604298, 36.465939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306976, 34.899445, 36.479084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501946, -0.425046, -0.753250,
		-0.541834, 0.524291, -0.656913,
		0.674140, 0.737872, 0.032862,
		28.509218, 35.120808, 36.488941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288527, 34.719467, 35.887886>,  <28.037319, 34.604298, 36.465939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288527, 34.719467, 35.887886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589241, 34.888535, 36.090336>,  <28.769670, 34.989975, 36.211807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.589241, 34.888535, 36.090336>,  <28.288527, 34.719467, 35.887886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589241, 34.888535, 36.090336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631809, -0.241993, -0.736381,
		-0.188767, 0.873378, -0.448975,
		0.751787, 0.422671, 0.506128,
		28.814777, 35.015335, 36.242176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640242, 35.318287, 35.531067>,  <28.288527, 34.719467, 35.887886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640242, 35.318287, 35.531067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878439, 35.091373, 35.758602>,  <29.021358, 34.955227, 35.895123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878439, 35.091373, 35.758602>,  <28.640242, 35.318287, 35.531067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878439, 35.091373, 35.758602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588878, -0.173407, -0.789400,
		0.546451, 0.805062, 0.230796,
		0.595494, -0.567279, 0.568842,
		29.057087, 34.921188, 35.929256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319403, 35.527275, 35.447773>,  <28.640242, 35.318287, 35.531067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319403, 35.527275, 35.447773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.371853, 35.143616, 35.548038>,  <29.403322, 34.913418, 35.608200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.371853, 35.143616, 35.548038>,  <29.319403, 35.527275, 35.447773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371853, 35.143616, 35.548038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593280, -0.126654, -0.794970,
		0.794245, 0.252956, 0.552438,
		0.131124, -0.959152, 0.250668,
		29.411190, 34.855869, 35.623238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853703, 35.324314, 35.060921>,  <29.319403, 35.527275, 35.447773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853703, 35.324314, 35.060921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752430, 34.958652, 35.187557>,  <29.691666, 34.739258, 35.263538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.752430, 34.958652, 35.187557>,  <29.853703, 35.324314, 35.060921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752430, 34.958652, 35.187557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433626, -0.399773, -0.807558,
		0.864793, -0.067175, 0.497614,
		-0.253181, -0.914149, 0.316592,
		29.676476, 34.684406, 35.282536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479853, 34.908112, 35.029766>,  <29.853703, 35.324314, 35.060921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479853, 34.908112, 35.029766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.157631, 34.671242, 35.021618>,  <29.964298, 34.529121, 35.016727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.157631, 34.671242, 35.021618>,  <30.479853, 34.908112, 35.029766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157631, 34.671242, 35.021618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337963, -0.430963, -0.836691,
		0.486686, -0.680885, 0.547296,
		-0.805555, -0.592171, -0.020370,
		29.915964, 34.493591, 35.015507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807764, 34.189816, 35.010002>,  <30.479853, 34.908112, 35.029766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807764, 34.189816, 35.010002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.432775, 34.178753, 34.871216>,  <30.207783, 34.172115, 34.787945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.432775, 34.178753, 34.871216>,  <30.807764, 34.189816, 35.010002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432775, 34.178753, 34.871216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328630, -0.398774, -0.856143,
		-0.114687, -0.916632, 0.382926,
		-0.937470, -0.027653, -0.346967,
		30.151535, 34.170456, 34.767124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695562, 33.487232, 34.865505>,  <30.807764, 34.189816, 35.010002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695562, 33.487232, 34.865505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393118, 33.645065, 34.656658>,  <30.211651, 33.739765, 34.531349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393118, 33.645065, 34.656658>,  <30.695562, 33.487232, 34.865505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393118, 33.645065, 34.656658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191887, -0.629069, -0.753293,
		-0.625654, -0.669774, 0.399949,
		-0.756132, 0.394556, -0.522101,
		30.166285, 33.763439, 34.500023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349422, 32.850487, 34.585804>,  <30.695562, 33.487232, 34.865505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349422, 32.850487, 34.585804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.209381, 33.173420, 34.395802>,  <30.125357, 33.367180, 34.281799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.209381, 33.173420, 34.395802>,  <30.349422, 32.850487, 34.585804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209381, 33.173420, 34.395802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010804, -0.510551, -0.859780,
		-0.936649, -0.295879, 0.187467,
		-0.350102, 0.807338, -0.475011,
		30.104351, 33.415623, 34.253300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768358, 32.690018, 34.385971>,  <30.349422, 32.850487, 34.585804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768358, 32.690018, 34.385971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.901005, 32.973785, 34.137215>,  <29.980593, 33.144047, 33.987961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.901005, 32.973785, 34.137215>,  <29.768358, 32.690018, 34.385971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901005, 32.973785, 34.137215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130194, -0.687302, -0.714608,
		-0.934388, 0.156008, -0.320283,
		0.331616, 0.709420, -0.621896,
		30.000490, 33.186611, 33.950645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358788, 32.629654, 33.864708>,  <29.768358, 32.690018, 34.385971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358788, 32.629654, 33.864708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666044, 32.833160, 33.709213>,  <29.850397, 32.955265, 33.615917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666044, 32.833160, 33.709213>,  <29.358788, 32.629654, 33.864708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666044, 32.833160, 33.709213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085694, -0.519984, -0.849867,
		-0.634521, 0.686129, -0.355822,
		0.768140, 0.508766, -0.388738,
		29.896486, 32.985790, 33.592590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148806, 32.740219, 33.113834>,  <29.358788, 32.629654, 33.864708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148806, 32.740219, 33.113834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.545759, 32.780834, 33.141735>,  <29.783932, 32.805202, 33.158478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.545759, 32.780834, 33.141735>,  <29.148806, 32.740219, 33.113834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545759, 32.780834, 33.141735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117341, -0.606769, -0.786169,
		-0.037499, 0.788367, -0.614062,
		0.992383, 0.101535, 0.069755,
		29.843473, 32.811295, 33.162663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392490, 32.479481, 32.457420>,  <29.148806, 32.740219, 33.113834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392490, 32.479481, 32.457420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730049, 32.447960, 32.669693>,  <29.932585, 32.429047, 32.797058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730049, 32.447960, 32.669693>,  <29.392490, 32.479481, 32.457420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730049, 32.447960, 32.669693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311640, -0.733165, -0.604442,
		0.436712, 0.675470, -0.594158,
		0.843898, -0.078804, 0.530685,
		29.983219, 32.424320, 32.828899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998098, 32.465858, 31.948809>,  <29.392490, 32.479481, 32.457420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998098, 32.465858, 31.948809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073727, 32.274452, 32.291801>,  <30.119102, 32.159607, 32.497597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073727, 32.274452, 32.291801>,  <29.998098, 32.465858, 31.948809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073727, 32.274452, 32.291801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368383, -0.774890, -0.513653,
		0.910246, 0.412997, 0.029770,
		0.189068, -0.478517, 0.857482,
		30.130447, 32.130898, 32.549046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502605, 32.078838, 31.754354>,  <29.998098, 32.465858, 31.948809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502605, 32.078838, 31.754354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.401670, 31.894913, 32.094917>,  <30.341110, 31.784557, 32.299255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.401670, 31.894913, 32.094917>,  <30.502605, 32.078838, 31.754354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401670, 31.894913, 32.094917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221926, -0.883929, -0.411605,
		0.941846, 0.085086, 0.325093,
		-0.252338, -0.459815, 0.851408,
		30.325970, 31.756968, 32.350338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832140, 31.449615, 31.810200>,  <30.502605, 32.078838, 31.754354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832140, 31.449615, 31.810200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566086, 31.384840, 32.101780>,  <30.406452, 31.345976, 32.276730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566086, 31.384840, 32.101780>,  <30.832140, 31.449615, 31.810200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566086, 31.384840, 32.101780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041201, -0.966756, -0.252360,
		0.745584, -0.197887, 0.636353,
		-0.665137, -0.161938, 0.728951,
		30.366545, 31.336258, 32.320465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042387, 30.811884, 32.149860>,  <30.832140, 31.449615, 31.810200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042387, 30.811884, 32.149860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.651676, 30.895767, 32.167439>,  <30.417250, 30.946098, 32.177986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.651676, 30.895767, 32.167439>,  <31.042387, 30.811884, 32.149860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651676, 30.895767, 32.167439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211094, -0.906700, -0.365150,
		-0.036727, -0.365947, 0.929911,
		-0.976775, 0.209710, 0.043949,
		30.358643, 30.958681, 32.180622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724508, 30.151232, 32.394001>,  <31.042387, 30.811884, 32.149860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724508, 30.151232, 32.394001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.409540, 30.353037, 32.252335>,  <30.220560, 30.474121, 32.167336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.409540, 30.353037, 32.252335>,  <30.724508, 30.151232, 32.394001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409540, 30.353037, 32.252335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366726, -0.845235, -0.388702,
		-0.495463, -0.176188, 0.850573,
		-0.787419, 0.504515, -0.354170,
		30.173315, 30.504391, 32.146084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151981, 29.686556, 32.599689>,  <30.724508, 30.151232, 32.394001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151981, 29.686556, 32.599689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997351, 29.918135, 32.312531>,  <29.904572, 30.057083, 32.140236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.997351, 29.918135, 32.312531>,  <30.151981, 29.686556, 32.599689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997351, 29.918135, 32.312531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560767, -0.765544, -0.315409,
		-0.732186, 0.280641, 0.620600,
		-0.386580, 0.578950, -0.717895,
		29.881376, 30.091820, 32.097160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382921, 29.570297, 32.575935>,  <30.151981, 29.686556, 32.599689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382921, 29.570297, 32.575935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457821, 29.737356, 32.220295>,  <29.502762, 29.837591, 32.006908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.457821, 29.737356, 32.220295>,  <29.382921, 29.570297, 32.575935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457821, 29.737356, 32.220295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614489, -0.656351, -0.437728,
		-0.766381, 0.628310, 0.133738,
		0.187250, 0.417647, -0.889105,
		29.513996, 29.862650, 31.953564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727200, 29.670435, 32.207882>,  <29.382921, 29.570297, 32.575935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727200, 29.670435, 32.207882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018122, 29.679369, 31.933500>,  <29.192675, 29.684729, 31.768871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.018122, 29.679369, 31.933500>,  <28.727200, 29.670435, 32.207882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018122, 29.679369, 31.933500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555154, -0.568499, -0.607134,
		-0.403522, 0.822381, -0.401074,
		0.727306, 0.022334, -0.685950,
		29.236313, 29.686069, 31.727715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404411, 29.906595, 31.623877>,  <28.727200, 29.670435, 32.207882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404411, 29.906595, 31.623877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.726851, 29.710011, 31.492014>,  <28.920315, 29.592060, 31.412895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.726851, 29.710011, 31.492014>,  <28.404411, 29.906595, 31.623877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726851, 29.710011, 31.492014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577844, -0.533483, -0.617650,
		0.127683, 0.688377, -0.714026,
		0.806097, -0.491460, -0.329658,
		28.968679, 29.562572, 31.393116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457678, 29.869816, 30.878712>,  <28.404411, 29.906595, 31.623877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457678, 29.869816, 30.878712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655296, 29.536400, 30.977606>,  <28.773869, 29.336349, 31.036942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655296, 29.536400, 30.977606>,  <28.457678, 29.869816, 30.878712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655296, 29.536400, 30.977606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659409, -0.544567, -0.518291,
		0.566654, 0.093032, -0.818687,
		0.494048, -0.833542, 0.247235,
		28.803511, 29.286337, 31.051777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632761, 29.598141, 30.228815>,  <28.457678, 29.869816, 30.878712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632761, 29.598141, 30.228815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.673195, 29.297478, 30.489521>,  <28.697454, 29.117081, 30.645945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.673195, 29.297478, 30.489521>,  <28.632761, 29.598141, 30.228815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673195, 29.297478, 30.489521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539818, -0.591734, -0.598704,
		0.835690, -0.291314, -0.465573,
		0.101085, -0.751656, 0.651763,
		28.703520, 29.071981, 30.685049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.703373, 33.186565, 46.288807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551441, 32.840176, 46.158688>,  <39.460281, 32.632343, 46.080616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.551441, 32.840176, 46.158688>,  <39.703373, 33.186565, 46.288807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551441, 32.840176, 46.158688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029128, -0.362674, 0.931461,
		-0.924598, 0.344320, 0.162978,
		-0.379829, -0.865974, -0.325299,
		39.437492, 32.580383, 46.061096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276249, 32.926731, 46.764709>,  <39.703373, 33.186565, 46.288807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276249, 32.926731, 46.764709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.378143, 32.606697, 46.547466>,  <39.439281, 32.414677, 46.417122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.378143, 32.606697, 46.547466>,  <39.276249, 32.926731, 46.764709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378143, 32.606697, 46.547466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085477, -0.540807, 0.836792,
		-0.963225, -0.259587, -0.069375,
		0.254739, -0.800089, -0.543107,
		39.454563, 32.366669, 46.384533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851318, 32.369484, 47.027431>,  <39.276249, 32.926731, 46.764709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851318, 32.369484, 47.027431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.172173, 32.216896, 46.843666>,  <39.364685, 32.125343, 46.733406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.172173, 32.216896, 46.843666>,  <38.851318, 32.369484, 47.027431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172173, 32.216896, 46.843666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161713, -0.601837, 0.782075,
		-0.574826, -0.701624, -0.421068,
		0.802137, -0.381465, -0.459414,
		39.412811, 32.102455, 46.705841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860874, 31.622480, 47.165516>,  <38.851318, 32.369484, 47.027431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860874, 31.622480, 47.165516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231346, 31.692848, 47.032104>,  <39.453629, 31.735069, 46.952057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.231346, 31.692848, 47.032104>,  <38.860874, 31.622480, 47.165516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231346, 31.692848, 47.032104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370070, -0.593845, 0.714420,
		-0.072386, -0.785112, -0.615110,
		0.926180, 0.175919, -0.333532,
		39.509201, 31.745625, 46.932045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292816, 30.972702, 47.167728>,  <38.860874, 31.622480, 47.165516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292816, 30.972702, 47.167728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580708, 31.249739, 47.148548>,  <39.753445, 31.415960, 47.137039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580708, 31.249739, 47.148548>,  <39.292816, 30.972702, 47.167728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580708, 31.249739, 47.148548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522190, -0.494550, 0.694793,
		0.457496, -0.525104, -0.717609,
		0.719733, 0.692594, -0.047950,
		39.796627, 31.457518, 47.134163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912838, 30.615934, 47.243168>,  <39.292816, 30.972702, 47.167728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912838, 30.615934, 47.243168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.032001, 30.988182, 47.328205>,  <40.103500, 31.211531, 47.379227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.032001, 30.988182, 47.328205>,  <39.912838, 30.615934, 47.243168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032001, 30.988182, 47.328205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626684, -0.358661, 0.691830,
		0.720080, -0.072873, -0.690054,
		0.297911, 0.930619, 0.212596,
		40.121376, 31.267368, 47.391983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680843, 30.641983, 47.254974>,  <39.912838, 30.615934, 47.243168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680843, 30.641983, 47.254974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.558533, 30.966955, 47.453552>,  <40.485146, 31.161938, 47.572701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.558533, 30.966955, 47.453552>,  <40.680843, 30.641983, 47.254974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558533, 30.966955, 47.453552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691311, -0.169082, 0.702496,
		0.654668, 0.558007, -0.509940,
		-0.305776, 0.812428, 0.496449,
		40.466801, 31.210684, 47.602486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320709, 31.092827, 47.467480>,  <40.680843, 30.641983, 47.254974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320709, 31.092827, 47.467480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.033676, 31.155270, 47.738983>,  <40.861458, 31.192736, 47.901886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.033676, 31.155270, 47.738983>,  <41.320709, 31.092827, 47.467480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033676, 31.155270, 47.738983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670134, -0.110732, 0.733934,
		0.189731, 0.981514, -0.025152,
		-0.717581, 0.156106, 0.678755,
		40.818401, 31.202101, 47.942612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639881, 31.643705, 48.015507>,  <41.320709, 31.092827, 47.467480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639881, 31.643705, 48.015507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.335945, 31.442812, 48.180626>,  <41.153584, 31.322275, 48.279697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.335945, 31.442812, 48.180626>,  <41.639881, 31.643705, 48.015507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335945, 31.442812, 48.180626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598540, -0.292609, 0.745741,
		-0.253748, 0.813721, 0.522944,
		-0.759843, -0.502233, 0.412796,
		41.107990, 31.292143, 48.304466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599541, 31.853228, 48.749481>,  <41.639881, 31.643705, 48.015507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599541, 31.853228, 48.749481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.386234, 31.515423, 48.729794>,  <41.258251, 31.312740, 48.717983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.386234, 31.515423, 48.729794>,  <41.599541, 31.853228, 48.749481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386234, 31.515423, 48.729794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424095, -0.317226, 0.848240,
		-0.731962, 0.431467, 0.527321,
		-0.533268, -0.844514, -0.049215,
		41.226254, 31.262068, 48.715031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306152, 31.778187, 49.405556>,  <41.599541, 31.853228, 48.749481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306152, 31.778187, 49.405556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.328369, 31.439184, 49.194408>,  <41.341698, 31.235783, 49.067719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.328369, 31.439184, 49.194408>,  <41.306152, 31.778187, 49.405556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328369, 31.439184, 49.194408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367709, -0.474167, 0.799973,
		-0.928281, -0.238532, 0.285301,
		0.055539, -0.847507, -0.527870,
		41.345032, 31.184933, 49.036049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589081, 32.105434, 50.034096>,  <41.306152, 31.778187, 49.405556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589081, 32.105434, 50.034096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.805412, 32.178196, 49.705605>,  <41.935211, 32.221855, 49.508511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.805412, 32.178196, 49.705605>,  <41.589081, 32.105434, 50.034096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805412, 32.178196, 49.705605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028367, 0.971834, 0.233951,
		0.840652, -0.149824, 0.520440,
		0.540833, 0.181908, -0.821225,
		41.967663, 32.232769, 49.459236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152775, 32.548599, 50.250214>,  <41.589081, 32.105434, 50.034096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152775, 32.548599, 50.250214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.050274, 32.599476, 49.866932>,  <41.988773, 32.630001, 49.636963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.050274, 32.599476, 49.866932>,  <42.152775, 32.548599, 50.250214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050274, 32.599476, 49.866932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195646, 0.977612, 0.077448,
		0.946602, -0.167622, -0.275403,
		-0.256255, 0.127194, -0.958204,
		41.973396, 32.637634, 49.579472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.586090, 32.583843, 50.792431>,  <42.152775, 32.548599, 50.250214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.586090, 32.583843, 50.792431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.256538, 32.626915, 51.015007>,  <41.058807, 32.652760, 51.148552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.256538, 32.626915, 51.015007>,  <41.586090, 32.583843, 50.792431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256538, 32.626915, 51.015007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251284, 0.810610, -0.528931,
		-0.508013, -0.575600, -0.640787,
		-0.823881, 0.107684, 0.556439,
		41.009373, 32.659222, 51.181938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944775, 32.556438, 50.393208>,  <41.586090, 32.583843, 50.792431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944775, 32.556438, 50.393208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.869576, 32.771976, 50.721672>,  <40.824455, 32.901299, 50.918751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.869576, 32.771976, 50.721672>,  <40.944775, 32.556438, 50.393208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869576, 32.771976, 50.721672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346481, 0.745934, -0.568800,
		-0.919026, -0.391449, 0.046467,
		-0.187994, 0.538841, 0.821162,
		40.813179, 32.933628, 50.968021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194397, 32.792484, 50.428745>,  <40.944775, 32.556438, 50.393208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194397, 32.792484, 50.428745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.426113, 33.030842, 50.651218>,  <40.565144, 33.173855, 50.784702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.426113, 33.030842, 50.651218>,  <40.194397, 32.792484, 50.428745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426113, 33.030842, 50.651218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250705, 0.779505, -0.574037,
		-0.775611, 0.193096, 0.600951,
		0.579288, 0.595891, 0.556182,
		40.599899, 33.209610, 50.818073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857307, 33.444794, 50.902843>,  <40.194397, 32.792484, 50.428745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857307, 33.444794, 50.902843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220467, 33.505646, 50.746597>,  <40.438362, 33.542156, 50.652851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.220467, 33.505646, 50.746597>,  <39.857307, 33.444794, 50.902843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220467, 33.505646, 50.746597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332248, 0.829333, -0.449241,
		0.255608, 0.537646, 0.803494,
		0.907896, 0.152130, -0.390616,
		40.492836, 33.551285, 50.629414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813450, 34.129192, 50.446712>,  <39.857307, 33.444794, 50.902843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813450, 34.129192, 50.446712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.199234, 34.042709, 50.385960>,  <40.430706, 33.990822, 50.349506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.199234, 34.042709, 50.385960>,  <39.813450, 34.129192, 50.446712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199234, 34.042709, 50.385960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029917, 0.660495, -0.750234,
		0.262522, 0.719029, 0.643490,
		0.964462, -0.216205, -0.151883,
		40.488571, 33.977848, 50.340393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186489, 34.721828, 50.634647>,  <39.813450, 34.129192, 50.446712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186489, 34.721828, 50.634647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.393410, 34.501431, 50.372719>,  <40.517563, 34.369190, 50.215561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.393410, 34.501431, 50.372719>,  <40.186489, 34.721828, 50.634647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393410, 34.501431, 50.372719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140954, 0.699853, -0.700242,
		0.844113, 0.454539, 0.284373,
		0.517306, -0.551000, -0.654824,
		40.548603, 34.336132, 50.176273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404549, 35.180023, 50.096581>,  <40.186489, 34.721828, 50.634647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404549, 35.180023, 50.096581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.500607, 34.834454, 49.919510>,  <40.558239, 34.627110, 49.813267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.500607, 34.834454, 49.919510>,  <40.404549, 35.180023, 50.096581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500607, 34.834454, 49.919510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052729, 0.466954, -0.882708,
		0.969304, 0.188634, 0.157690,
		0.240143, -0.863928, -0.442674,
		40.572651, 34.575275, 49.786709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900345, 35.298004, 49.532898>,  <40.404549, 35.180023, 50.096581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900345, 35.298004, 49.532898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.791718, 34.926220, 49.433014>,  <40.726543, 34.703148, 49.373085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.791718, 34.926220, 49.433014>,  <40.900345, 35.298004, 49.532898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791718, 34.926220, 49.433014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054145, 0.273803, -0.960260,
		0.960896, -0.247252, -0.124681,
		-0.271565, -0.929461, -0.249709,
		40.710247, 34.647381, 49.358101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262245, 35.170097, 48.864822>,  <40.900345, 35.298004, 49.532898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262245, 35.170097, 48.864822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.962620, 34.905239, 48.873390>,  <40.782845, 34.746323, 48.878532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.962620, 34.905239, 48.873390>,  <41.262245, 35.170097, 48.864822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962620, 34.905239, 48.873390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113309, 0.096192, -0.988892,
		0.652734, -0.743172, -0.147082,
		-0.749065, -0.662149, 0.021420,
		40.737900, 34.706593, 48.879818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421360, 34.797783, 48.246273>,  <41.262245, 35.170097, 48.864822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421360, 34.797783, 48.246273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.038166, 34.732128, 48.340363>,  <40.808250, 34.692734, 48.396816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.038166, 34.732128, 48.340363>,  <41.421360, 34.797783, 48.246273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038166, 34.732128, 48.340363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249634, 0.073245, -0.965566,
		0.141261, -0.983714, -0.111143,
		-0.957981, -0.164142, 0.235222,
		40.750771, 34.682888, 48.410931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217880, 34.210705, 47.806934>,  <41.421360, 34.797783, 48.246273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217880, 34.210705, 47.806934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.887455, 34.413425, 47.905544>,  <40.689201, 34.535057, 47.964710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.887455, 34.413425, 47.905544>,  <41.217880, 34.210705, 47.806934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887455, 34.413425, 47.905544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206254, 0.135214, -0.969111,
		-0.524480, -0.851392, -0.007165,
		-0.826063, 0.506802, 0.246520,
		40.639637, 34.565464, 47.979500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582031, 33.858284, 47.562820>,  <41.217880, 34.210705, 47.806934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582031, 33.858284, 47.562820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.489548, 34.247265, 47.574692>,  <40.434059, 34.480652, 47.581814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.489548, 34.247265, 47.574692>,  <40.582031, 33.858284, 47.562820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489548, 34.247265, 47.574692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273859, -0.035775, -0.961104,
		-0.933566, -0.230342, 0.274586,
		-0.231207, 0.972452, 0.029683,
		40.420185, 34.539001, 47.583595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840843, 33.925003, 47.274265>,  <40.582031, 33.858284, 47.562820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840843, 33.925003, 47.274265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.975666, 34.300640, 47.247467>,  <40.056561, 34.526024, 47.231388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.975666, 34.300640, 47.247467>,  <39.840843, 33.925003, 47.274265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975666, 34.300640, 47.247467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197751, 0.001047, -0.980252,
		-0.920481, 0.343652, 0.186060,
		0.337060, 0.939097, -0.066993,
		40.076782, 34.582371, 47.227367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356030, 34.389095, 46.858299>,  <39.840843, 33.925003, 47.274265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356030, 34.389095, 46.858299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.697456, 34.595322, 46.828323>,  <39.902313, 34.719059, 46.810337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.697456, 34.595322, 46.828323>,  <39.356030, 34.389095, 46.858299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697456, 34.595322, 46.828323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188599, 0.171703, -0.966927,
		-0.485649, 0.839470, 0.243795,
		0.853567, 0.515566, -0.074936,
		39.953526, 34.749992, 46.805843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078979, 34.974846, 46.645203>,  <39.356030, 34.389095, 46.858299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078979, 34.974846, 46.645203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.464535, 34.932022, 46.547668>,  <39.695869, 34.906326, 46.489147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.464535, 34.932022, 46.547668>,  <39.078979, 34.974846, 46.645203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464535, 34.932022, 46.547668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202168, 0.301808, -0.931687,
		0.173340, 0.947338, 0.269264,
		0.963889, -0.107062, -0.243837,
		39.753700, 34.899902, 46.474518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750946, 35.685566, 46.780930>,  <39.078979, 34.974846, 46.645203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750946, 35.685566, 46.780930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360645, 35.598038, 46.778877>,  <38.126465, 35.545521, 46.777645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.360645, 35.598038, 46.778877>,  <38.750946, 35.685566, 46.780930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360645, 35.598038, 46.778877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087173, -0.410011, 0.907905,
		-0.200769, 0.885443, 0.419145,
		-0.975752, -0.218818, -0.005131,
		38.067921, 35.532391, 46.777340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571941, 35.717007, 47.475315>,  <38.750946, 35.685566, 46.780930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571941, 35.717007, 47.475315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245049, 35.533760, 47.335453>,  <38.048912, 35.423813, 47.251537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.245049, 35.533760, 47.335453>,  <38.571941, 35.717007, 47.475315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245049, 35.533760, 47.335453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218811, -0.314634, 0.923649,
		-0.533151, 0.831346, 0.156889,
		-0.817234, -0.458115, -0.349655,
		37.999878, 35.396324, 47.230556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133194, 35.750462, 48.019104>,  <38.571941, 35.717007, 47.475315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133194, 35.750462, 48.019104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979874, 35.473511, 47.774582>,  <37.887882, 35.307343, 47.627869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.979874, 35.473511, 47.774582>,  <38.133194, 35.750462, 48.019104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979874, 35.473511, 47.774582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375902, -0.487622, 0.787986,
		-0.843669, 0.531829, -0.073359,
		-0.383302, -0.692375, -0.611307,
		37.864883, 35.265797, 47.591190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444584, 35.674957, 48.243221>,  <38.133194, 35.750462, 48.019104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444584, 35.674957, 48.243221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559078, 35.334583, 48.067047>,  <37.627773, 35.130360, 47.961342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.559078, 35.334583, 48.067047>,  <37.444584, 35.674957, 48.243221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559078, 35.334583, 48.067047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421490, -0.524624, 0.739673,
		-0.860474, -0.026084, -0.508826,
		0.286236, -0.850934, -0.440431,
		37.644951, 35.079304, 47.934917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893929, 35.252926, 48.371738>,  <37.444584, 35.674957, 48.243221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893929, 35.252926, 48.371738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184555, 34.999477, 48.265438>,  <37.358932, 34.847408, 48.201656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184555, 34.999477, 48.265438>,  <36.893929, 35.252926, 48.371738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184555, 34.999477, 48.265438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221814, -0.582372, 0.782075,
		-0.650307, -0.509281, -0.563678,
		0.726567, -0.633621, -0.265755,
		37.402527, 34.809391, 48.185711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704151, 34.694763, 48.814911>,  <36.893929, 35.252926, 48.371738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704151, 34.694763, 48.814911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057384, 34.565018, 48.679298>,  <37.269325, 34.487171, 48.597931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057384, 34.565018, 48.679298>,  <36.704151, 34.694763, 48.814911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057384, 34.565018, 48.679298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059871, -0.638763, 0.767070,
		-0.465372, -0.697689, -0.544665,
		0.883088, -0.324363, -0.339034,
		37.322311, 34.467709, 48.577587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679321, 33.930737, 48.733139>,  <36.704151, 34.694763, 48.814911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679321, 33.930737, 48.733139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041965, 34.083359, 48.805222>,  <37.259552, 34.174931, 48.848473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041965, 34.083359, 48.805222>,  <36.679321, 33.930737, 48.733139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041965, 34.083359, 48.805222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059802, -0.538928, 0.840226,
		0.417711, -0.750981, -0.511415,
		0.906610, 0.381555, 0.180205,
		37.313950, 34.197826, 48.859283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649853, 33.228886, 48.431160>,  <36.679321, 33.930737, 48.733139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649853, 33.228886, 48.431160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324947, 32.996300, 48.449585>,  <36.130005, 32.856747, 48.460640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324947, 32.996300, 48.449585>,  <36.649853, 33.228886, 48.431160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324947, 32.996300, 48.449585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452930, 0.579006, -0.677943,
		0.367534, -0.571530, -0.733670,
		-0.812264, -0.581468, 0.046059,
		36.081268, 32.821857, 48.463402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548180, 33.020283, 47.743389>,  <36.649853, 33.228886, 48.431160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548180, 33.020283, 47.743389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.206909, 32.940163, 47.936047>,  <36.002148, 32.892090, 48.051640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.206909, 32.940163, 47.936047>,  <36.548180, 33.020283, 47.743389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206909, 32.940163, 47.936047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521520, 0.308738, -0.795423,
		0.010620, -0.929818, -0.367866,
		-0.853173, -0.200297, 0.481640,
		35.950958, 32.880074, 48.080540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094067, 32.692360, 47.230396>,  <36.548180, 33.020283, 47.743389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094067, 32.692360, 47.230396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852249, 32.844166, 47.510540>,  <35.707157, 32.935249, 47.678627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852249, 32.844166, 47.510540>,  <36.094067, 32.692360, 47.230396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852249, 32.844166, 47.510540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602757, 0.356862, -0.713676,
		-0.520778, -0.853593, 0.013013,
		-0.604545, 0.379511, 0.700355,
		35.670887, 32.958019, 47.720646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371296, 32.505962, 47.069996>,  <36.094067, 32.692360, 47.230396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371296, 32.505962, 47.069996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337757, 32.835152, 47.294739>,  <35.317635, 33.032665, 47.429585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.337757, 32.835152, 47.294739>,  <35.371296, 32.505962, 47.069996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337757, 32.835152, 47.294739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605861, 0.405552, -0.684442,
		-0.791141, -0.397791, 0.464606,
		-0.083843, 0.822977, 0.561854,
		35.312603, 33.082043, 47.463295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656960, 32.625591, 46.971142>,  <35.371296, 32.505962, 47.069996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656960, 32.625591, 46.971142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798122, 32.969151, 47.119598>,  <34.882820, 33.175285, 47.208672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798122, 32.969151, 47.119598>,  <34.656960, 32.625591, 46.971142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798122, 32.969151, 47.119598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512398, 0.509305, -0.691416,
		-0.782881, 0.053837, 0.619838,
		0.352911, 0.858900, 0.371139,
		34.903996, 33.226822, 47.230942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050499, 33.028084, 47.010544>,  <34.656960, 32.625591, 46.971142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050499, 33.028084, 47.010544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353580, 33.288246, 47.031960>,  <34.535427, 33.444344, 47.044807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.353580, 33.288246, 47.031960>,  <34.050499, 33.028084, 47.010544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353580, 33.288246, 47.031960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434879, 0.564378, -0.701682,
		-0.486589, 0.508385, 0.710476,
		0.757701, 0.650402, 0.053535,
		34.580891, 33.483368, 47.048019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783306, 33.616501, 46.836620>,  <34.050499, 33.028084, 47.010544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783306, 33.616501, 46.836620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164085, 33.734516, 46.803757>,  <34.392551, 33.805325, 46.784039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164085, 33.734516, 46.803757>,  <33.783306, 33.616501, 46.836620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164085, 33.734516, 46.803757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244468, 0.570413, -0.784133,
		-0.184488, 0.766537, 0.615130,
		0.951945, 0.295043, -0.082159,
		34.449669, 33.823029, 46.779110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.500816, 27.784821, 48.272198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.679478, 28.135201, 48.345097>,  <39.786674, 28.345428, 48.388836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.679478, 28.135201, 48.345097>,  <39.500816, 27.784821, 48.272198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679478, 28.135201, 48.345097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181589, 0.288212, -0.940191,
		-0.876086, 0.386845, 0.287793,
		0.446654, 0.875948, 0.182252,
		39.813473, 28.397985, 48.399773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018757, 28.321878, 48.238804>,  <39.500816, 27.784821, 48.272198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018757, 28.321878, 48.238804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.381725, 28.467581, 48.154984>,  <39.599506, 28.555002, 48.104691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.381725, 28.467581, 48.154984>,  <39.018757, 28.321878, 48.238804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381725, 28.467581, 48.154984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371972, 0.464197, -0.803839,
		-0.195529, 0.807365, 0.556713,
		0.907417, 0.364256, -0.209553,
		39.653950, 28.576857, 48.092117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968395, 28.977169, 48.056263>,  <39.018757, 28.321878, 48.238804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968395, 28.977169, 48.056263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.332134, 28.903648, 47.906971>,  <39.550377, 28.859535, 47.817394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.332134, 28.903648, 47.906971>,  <38.968395, 28.977169, 48.056263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332134, 28.903648, 47.906971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245593, 0.486967, -0.838181,
		0.335810, 0.853862, 0.397683,
		0.909349, -0.183801, -0.373231,
		39.604939, 28.848509, 47.795002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315540, 29.585096, 47.825287>,  <38.968395, 28.977169, 48.056263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315540, 29.585096, 47.825287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.489487, 29.296646, 47.609558>,  <39.593853, 29.123575, 47.480122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.489487, 29.296646, 47.609558>,  <39.315540, 29.585096, 47.825287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489487, 29.296646, 47.609558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445140, 0.348478, -0.824871,
		0.782779, 0.598783, -0.169461,
		0.434865, -0.721126, -0.539323,
		39.619946, 29.080309, 47.447762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580372, 29.903704, 47.233688>,  <39.315540, 29.585096, 47.825287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580372, 29.903704, 47.233688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.598457, 29.529770, 47.092812>,  <39.609310, 29.305408, 47.008286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.598457, 29.529770, 47.092812>,  <39.580372, 29.903704, 47.233688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598457, 29.529770, 47.092812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279876, 0.326577, -0.902783,
		0.958971, 0.139389, -0.246872,
		0.045216, -0.934836, -0.352189,
		39.612022, 29.249319, 46.987156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985378, 29.939318, 46.659088>,  <39.580372, 29.903704, 47.233688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985378, 29.939318, 46.659088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.777065, 29.599607, 46.624409>,  <39.652077, 29.395781, 46.603600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.777065, 29.599607, 46.624409>,  <39.985378, 29.939318, 46.659088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777065, 29.599607, 46.624409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315326, 0.285743, -0.904942,
		0.793322, -0.443934, -0.416608,
		-0.520778, -0.849278, -0.086702,
		39.620831, 29.344824, 46.598396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119221, 29.755957, 45.952694>,  <39.985378, 29.939318, 46.659088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119221, 29.755957, 45.952694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.791821, 29.553648, 46.061691>,  <39.595383, 29.432262, 46.127090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.791821, 29.553648, 46.061691>,  <40.119221, 29.755957, 45.952694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791821, 29.553648, 46.061691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336874, 0.038308, -0.940770,
		0.465378, -0.861816, -0.201737,
		-0.818498, -0.505773, 0.272495,
		39.546272, 29.401917, 46.143440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127533, 29.283926, 45.442455>,  <40.119221, 29.755957, 45.952694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127533, 29.283926, 45.442455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.772392, 29.300833, 45.625732>,  <39.559307, 29.310976, 45.735699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.772392, 29.300833, 45.625732>,  <40.127533, 29.283926, 45.442455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772392, 29.300833, 45.625732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458590, 0.000335, -0.888648,
		-0.037721, -0.999106, 0.019089,
		-0.887847, 0.042275, 0.458192,
		39.506039, 29.313513, 45.763191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753548, 28.800323, 44.996597>,  <40.127533, 29.283926, 45.442455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753548, 28.800323, 44.996597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.484642, 29.014441, 45.201153>,  <39.323299, 29.142910, 45.323887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.484642, 29.014441, 45.201153>,  <39.753548, 28.800323, 44.996597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484642, 29.014441, 45.201153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560087, 0.083967, -0.824168,
		-0.484111, -0.840483, 0.243362,
		-0.672264, 0.535293, 0.511393,
		39.282963, 29.175028, 45.354572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115124, 28.594790, 44.869186>,  <39.753548, 28.800323, 44.996597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115124, 28.594790, 44.869186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.039223, 28.966221, 44.996769>,  <38.993683, 29.189079, 45.073318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.039223, 28.966221, 44.996769>,  <39.115124, 28.594790, 44.869186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039223, 28.966221, 44.996769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533395, 0.175246, -0.827513,
		-0.824307, -0.327157, 0.462046,
		-0.189755, 0.928578, 0.318960,
		38.982296, 29.244795, 45.092457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496033, 28.601549, 44.671936>,  <39.115124, 28.594790, 44.869186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496033, 28.601549, 44.671936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.598919, 28.979380, 44.753532>,  <38.660652, 29.206078, 44.802490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.598919, 28.979380, 44.753532>,  <38.496033, 28.601549, 44.671936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598919, 28.979380, 44.753532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480922, 0.308216, -0.820803,
		-0.838185, 0.113023, 0.533547,
		0.257217, 0.944578, 0.203987,
		38.676083, 29.262753, 44.814728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835148, 28.939318, 44.598576>,  <38.496033, 28.601549, 44.671936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835148, 28.939318, 44.598576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.121273, 29.213385, 44.543633>,  <38.292950, 29.377825, 44.510666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.121273, 29.213385, 44.543633>,  <37.835148, 28.939318, 44.598576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121273, 29.213385, 44.543633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447448, 0.298109, -0.843162,
		-0.536762, 0.664586, 0.519820,
		0.715316, 0.685169, -0.137355,
		38.335869, 29.418936, 44.502426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425266, 29.421307, 44.985065>,  <37.835148, 28.939318, 44.598576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425266, 29.421307, 44.985065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043522, 29.474445, 45.092052>,  <36.814476, 29.506329, 45.156246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043522, 29.474445, 45.092052>,  <37.425266, 29.421307, 44.985065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043522, 29.474445, 45.092052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258606, -0.080319, 0.962638,
		0.149367, 0.987877, 0.042298,
		-0.954365, 0.132848, 0.267468,
		36.757214, 29.514299, 45.172295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468697, 29.739164, 45.644203>,  <37.425266, 29.421307, 44.985065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468697, 29.739164, 45.644203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.096844, 29.592808, 45.661694>,  <36.873734, 29.504993, 45.672188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.096844, 29.592808, 45.661694>,  <37.468697, 29.739164, 45.644203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096844, 29.592808, 45.661694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071794, -0.063455, 0.995399,
		-0.361432, 0.928492, 0.085258,
		-0.929630, -0.365890, 0.043726,
		36.817955, 29.483040, 45.674812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131210, 30.159586, 46.075146>,  <37.468697, 29.739164, 45.644203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131210, 30.159586, 46.075146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.917068, 29.821737, 46.074631>,  <36.788582, 29.619028, 46.074322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.917068, 29.821737, 46.074631>,  <37.131210, 30.159586, 46.075146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917068, 29.821737, 46.074631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011652, -0.008906, 0.999893,
		-0.844544, 0.535286, 0.014610,
		-0.535359, -0.844624, -0.001284,
		36.756462, 29.568350, 46.074245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666344, 30.217634, 46.719044>,  <37.131210, 30.159586, 46.075146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666344, 30.217634, 46.719044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.638432, 29.829985, 46.624447>,  <36.621685, 29.597395, 46.567688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.638432, 29.829985, 46.624447>,  <36.666344, 30.217634, 46.719044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638432, 29.829985, 46.624447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013765, -0.236111, 0.971628,
		-0.997467, 0.071056, 0.003136,
		-0.069781, -0.969125, -0.236491,
		36.617496, 29.539248, 46.553501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164959, 29.973553, 47.185474>,  <36.666344, 30.217634, 46.719044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164959, 29.973553, 47.185474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.366364, 29.651819, 47.059284>,  <36.487206, 29.458780, 46.983570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.366364, 29.651819, 47.059284>,  <36.164959, 29.973553, 47.185474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366364, 29.651819, 47.059284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041465, -0.342223, 0.938703,
		-0.862993, -0.485730, -0.138961,
		0.503512, -0.804332, -0.315477,
		36.517418, 29.410521, 46.964642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810902, 29.448088, 47.496204>,  <36.164959, 29.973553, 47.185474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810902, 29.448088, 47.496204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.183964, 29.333769, 47.408142>,  <36.407803, 29.265179, 47.355305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.183964, 29.333769, 47.408142>,  <35.810902, 29.448088, 47.496204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183964, 29.333769, 47.408142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136845, -0.284391, 0.948892,
		-0.333805, -0.915118, -0.226129,
		0.932657, -0.285800, -0.220160,
		36.463760, 29.248030, 47.342094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856216, 28.792521, 47.789612>,  <35.810902, 29.448088, 47.496204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856216, 28.792521, 47.789612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.239300, 28.894024, 47.735340>,  <36.469151, 28.954926, 47.702778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.239300, 28.894024, 47.735340>,  <35.856216, 28.792521, 47.789612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239300, 28.894024, 47.735340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175466, -0.141298, 0.974293,
		0.228067, -0.956891, -0.179848,
		0.957704, 0.253761, -0.135676,
		36.526611, 28.970152, 47.694637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279877, 28.261547, 47.988354>,  <35.856216, 28.792521, 47.789612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279877, 28.261547, 47.988354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.504650, 28.587526, 48.045055>,  <36.639515, 28.783113, 48.079075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.504650, 28.587526, 48.045055>,  <36.279877, 28.261547, 47.988354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504650, 28.587526, 48.045055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176861, -0.285776, 0.941834,
		0.808054, -0.504177, -0.304719,
		0.561933, 0.814946, 0.141754,
		36.673229, 28.832010, 48.087582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791996, 28.006285, 48.431381>,  <36.279877, 28.261547, 47.988354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791996, 28.006285, 48.431381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.784603, 28.406166, 48.437714>,  <36.780167, 28.646095, 48.441513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.784603, 28.406166, 48.437714>,  <36.791996, 28.006285, 48.431381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784603, 28.406166, 48.437714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076521, -0.014372, 0.996964,
		0.996897, 0.019634, -0.076232,
		-0.018479, 0.999704, 0.015830,
		36.779060, 28.706078, 48.442463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322708, 28.125628, 48.875500>,  <36.791996, 28.006285, 48.431381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322708, 28.125628, 48.875500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110893, 28.464582, 48.859898>,  <36.983803, 28.667955, 48.850536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.110893, 28.464582, 48.859898>,  <37.322708, 28.125628, 48.875500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110893, 28.464582, 48.859898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103501, 0.110175, 0.988509,
		0.841947, 0.519419, -0.146047,
		-0.529541, 0.847388, -0.039001,
		36.952030, 28.718800, 48.848198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646332, 28.466208, 49.268501>,  <37.322708, 28.125628, 48.875500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646332, 28.466208, 49.268501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.281425, 28.629648, 49.257084>,  <37.062481, 28.727713, 49.250233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.281425, 28.629648, 49.257084>,  <37.646332, 28.466208, 49.268501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281425, 28.629648, 49.257084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080670, 0.247558, 0.965509,
		0.401577, 0.878497, -0.258800,
		-0.912265, 0.408604, -0.028546,
		37.007748, 28.752230, 49.248520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725422, 29.163506, 49.583145>,  <37.646332, 28.466208, 49.268501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725422, 29.163506, 49.583145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345345, 29.053362, 49.641544>,  <37.117298, 28.987276, 49.676586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.345345, 29.053362, 49.641544>,  <37.725422, 29.163506, 49.583145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345345, 29.053362, 49.641544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143367, 0.029785, 0.989221,
		-0.276739, 0.960880, 0.011175,
		-0.950190, -0.275358, 0.146001,
		37.060287, 28.970755, 49.685345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545639, 29.671722, 50.126007>,  <37.725422, 29.163506, 49.583145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545639, 29.671722, 50.126007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.263252, 29.388447, 50.129478>,  <37.093819, 29.218481, 50.131561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.263252, 29.388447, 50.129478>,  <37.545639, 29.671722, 50.126007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263252, 29.388447, 50.129478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014292, -0.001997, 0.999896,
		-0.708100, 0.706018, 0.011531,
		-0.705967, -0.708191, 0.008676,
		37.051460, 29.175989, 50.132080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842373, 29.995144, 50.413017>,  <37.545639, 29.671722, 50.126007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842373, 29.995144, 50.413017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.853130, 29.597527, 50.455269>,  <36.859585, 29.358957, 50.480621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.853130, 29.597527, 50.455269>,  <36.842373, 29.995144, 50.413017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853130, 29.597527, 50.455269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265816, 0.094752, 0.959356,
		-0.963649, -0.053877, -0.261684,
		0.026892, -0.994042, 0.105629,
		36.861198, 29.299314, 50.486958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210709, 30.272902, 49.866203>,  <36.842373, 29.995144, 50.413017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210709, 30.272902, 49.866203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.117355, 30.553217, 50.135849>,  <37.061344, 30.721405, 50.297638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.117355, 30.553217, 50.135849>,  <37.210709, 30.272902, 49.866203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117355, 30.553217, 50.135849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613813, 0.431510, -0.661085,
		-0.754167, -0.568065, 0.329446,
		-0.233380, 0.700787, 0.674116,
		37.047340, 30.763453, 50.338085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414284, 30.402338, 49.884109>,  <37.210709, 30.272902, 49.866203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414284, 30.402338, 49.884109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603783, 30.731756, 50.008907>,  <36.717484, 30.929407, 50.083786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603783, 30.731756, 50.008907>,  <36.414284, 30.402338, 49.884109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603783, 30.731756, 50.008907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417932, 0.522077, -0.743484,
		-0.775176, 0.221832, 0.591518,
		0.473746, 0.823545, 0.311990,
		36.745907, 30.978819, 50.102505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861538, 30.837420, 50.003544>,  <36.414284, 30.402338, 49.884109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861538, 30.837420, 50.003544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179150, 31.077467, 49.964825>,  <36.369717, 31.221497, 49.941593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179150, 31.077467, 49.964825>,  <35.861538, 30.837420, 50.003544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179150, 31.077467, 49.964825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551080, 0.643449, -0.531305,
		-0.256563, 0.475215, 0.841633,
		0.794032, 0.600120, -0.096796,
		36.417358, 31.257504, 49.935787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600182, 31.542809, 50.113735>,  <35.861538, 30.837420, 50.003544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600182, 31.542809, 50.113735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.955551, 31.587234, 49.935585>,  <36.168774, 31.613890, 49.828693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.955551, 31.587234, 49.935585>,  <35.600182, 31.542809, 50.113735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955551, 31.587234, 49.935585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389341, 0.696267, -0.603014,
		0.243128, 0.709138, 0.661825,
		0.888427, 0.111065, -0.445378,
		36.222080, 31.620554, 49.801971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877075, 32.240433, 50.152351>,  <35.600182, 31.542809, 50.113735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877075, 32.240433, 50.152351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.036201, 32.065308, 49.829845>,  <36.131676, 31.960232, 49.636341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.036201, 32.065308, 49.829845>,  <35.877075, 32.240433, 50.152351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036201, 32.065308, 49.829845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300226, 0.768291, -0.565326,
		0.866953, 0.466957, 0.174196,
		0.397816, -0.437812, -0.806265,
		36.155548, 31.933964, 49.587967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180374, 32.787922, 49.763748>,  <35.877075, 32.240433, 50.152351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180374, 32.787922, 49.763748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.181973, 32.493935, 49.492512>,  <36.182934, 32.317543, 49.329769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.181973, 32.493935, 49.492512>,  <36.180374, 32.787922, 49.763748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181973, 32.493935, 49.492512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276836, 0.650777, -0.707002,
		0.960909, 0.190546, -0.200864,
		0.003999, -0.734970, -0.678087,
		36.183170, 32.273445, 49.289085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471195, 33.204231, 49.143929>,  <36.180374, 32.787922, 49.763748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471195, 33.204231, 49.143929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.315567, 32.853146, 49.032036>,  <36.222191, 32.642494, 48.964901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.315567, 32.853146, 49.032036>,  <36.471195, 33.204231, 49.143929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315567, 32.853146, 49.032036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167173, 0.365883, -0.915523,
		0.905913, -0.309439, -0.289083,
		-0.389069, -0.877711, -0.279728,
		36.198845, 32.589832, 48.948116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192528, 33.225498, 48.927517>,  <36.471195, 33.204231, 49.143929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192528, 33.225498, 48.927517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.371540, 33.563175, 49.045540>,  <37.478947, 33.765781, 49.116352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.371540, 33.563175, 49.045540>,  <37.192528, 33.225498, 48.927517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371540, 33.563175, 49.045540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354952, -0.470520, 0.807849,
		0.820809, -0.256806, -0.510219,
		0.447529, 0.844193, 0.295053,
		37.505798, 33.816433, 49.134056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867836, 33.001411, 49.156498>,  <37.192528, 33.225498, 48.927517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867836, 33.001411, 49.156498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.806820, 33.360165, 49.322552>,  <37.770210, 33.575417, 49.422184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.806820, 33.360165, 49.322552>,  <37.867836, 33.001411, 49.156498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806820, 33.360165, 49.322552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464537, -0.305688, 0.831120,
		0.872318, 0.319621, -0.370006,
		-0.152537, 0.896882, 0.415132,
		37.761059, 33.629230, 49.447090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559834, 33.307499, 49.382725>,  <37.867836, 33.001411, 49.156498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559834, 33.307499, 49.382725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.252171, 33.465603, 49.583591>,  <38.067574, 33.560467, 49.704109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.252171, 33.465603, 49.583591>,  <38.559834, 33.307499, 49.382725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252171, 33.465603, 49.583591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510418, -0.092872, 0.854897,
		0.384545, 0.913862, -0.130315,
		-0.769155, 0.395261, 0.502165,
		38.021423, 33.584183, 49.734241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922989, 33.553577, 49.860909>,  <38.559834, 33.307499, 49.382725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922989, 33.553577, 49.860909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.559269, 33.605145, 50.019173>,  <38.341038, 33.636086, 50.114132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.559269, 33.605145, 50.019173>,  <38.922989, 33.553577, 49.860909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559269, 33.605145, 50.019173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385815, -0.095081, 0.917663,
		0.155926, 0.987086, 0.036717,
		-0.909304, 0.128922, 0.395658,
		38.286476, 33.643822, 50.137871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927151, 34.152477, 50.451206>,  <38.922989, 33.553577, 49.860909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927151, 34.152477, 50.451206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.638046, 33.888355, 50.532799>,  <38.464584, 33.729881, 50.581753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.638046, 33.888355, 50.532799>,  <38.927151, 34.152477, 50.451206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638046, 33.888355, 50.532799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481352, -0.269188, 0.834169,
		-0.495900, 0.701092, 0.512400,
		-0.722761, -0.660309, 0.203982,
		38.421219, 33.690262, 50.593994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095783, 33.996502, 51.110233>,  <38.927151, 34.152477, 50.451206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095783, 33.996502, 51.110233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.803547, 33.728809, 51.056034>,  <38.628204, 33.568192, 51.023514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.803547, 33.728809, 51.056034>,  <39.095783, 33.996502, 51.110233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803547, 33.728809, 51.056034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246864, -0.443904, 0.861399,
		-0.636626, 0.595882, 0.489523,
		-0.730593, -0.669234, -0.135498,
		38.584370, 33.528038, 51.015385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615608, 33.992340, 51.762085>,  <39.095783, 33.996502, 51.110233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615608, 33.992340, 51.762085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.569279, 33.632904, 51.592793>,  <38.541481, 33.417244, 51.491215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.569279, 33.632904, 51.592793>,  <38.615608, 33.992340, 51.762085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569279, 33.632904, 51.592793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150654, -0.437065, 0.886723,
		-0.981778, 0.038941, 0.185998,
		-0.115823, -0.898587, -0.423234,
		38.534531, 33.363327, 51.465824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010658, 33.603401, 52.165089>,  <38.615608, 33.992340, 51.762085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010658, 33.603401, 52.165089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.206318, 33.318020, 51.964405>,  <38.323715, 33.146790, 51.843994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.206318, 33.318020, 51.964405>,  <38.010658, 33.603401, 52.165089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206318, 33.318020, 51.964405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053069, -0.549808, 0.833604,
		-0.870582, -0.434384, -0.231077,
		0.489152, -0.713458, -0.501705,
		38.353065, 33.103981, 51.813892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718693, 32.969040, 52.404881>,  <38.010658, 33.603401, 52.165089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718693, 32.969040, 52.404881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.087608, 32.883755, 52.275928>,  <38.308956, 32.832584, 52.198555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.087608, 32.883755, 52.275928>,  <37.718693, 32.969040, 52.404881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087608, 32.883755, 52.275928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129549, -0.615316, 0.777563,
		-0.364152, -0.758899, -0.539875,
		0.922285, -0.213211, -0.322383,
		38.364292, 32.819790, 52.179214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.088638, 39.343410, 37.832672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459789, 39.198559, 37.797100>,  <35.682480, 39.111649, 37.775757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459789, 39.198559, 37.797100>,  <35.088638, 39.343410, 37.832672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459789, 39.198559, 37.797100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177817, -0.639336, 0.748085,
		-0.327759, -0.678317, -0.657617,
		0.927877, -0.362126, -0.088932,
		35.738152, 39.089920, 37.770420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074814, 38.608143, 37.751484>,  <35.088638, 39.343410, 37.832672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074814, 38.608143, 37.751484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429562, 38.693684, 37.915302>,  <35.642410, 38.745007, 38.013592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429562, 38.693684, 37.915302>,  <35.074814, 38.608143, 37.751484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429562, 38.693684, 37.915302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184240, -0.649202, 0.737965,
		0.423693, -0.729935, -0.536358,
		0.886871, 0.213852, 0.409545,
		35.695621, 38.757839, 38.038166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346561, 37.939507, 38.017330>,  <35.074814, 38.608143, 37.751484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346561, 37.939507, 38.017330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581627, 38.200806, 38.208294>,  <35.722664, 38.357586, 38.322872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581627, 38.200806, 38.208294>,  <35.346561, 37.939507, 38.017330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581627, 38.200806, 38.208294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171925, -0.475756, 0.862611,
		0.790631, -0.589001, -0.167273,
		0.587661, 0.653249, 0.477411,
		35.757923, 38.396782, 38.351517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775387, 37.547245, 38.471729>,  <35.346561, 37.939507, 38.017330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775387, 37.547245, 38.471729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779457, 37.918545, 38.620453>,  <35.781898, 38.141327, 38.709686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779457, 37.918545, 38.620453>,  <35.775387, 37.547245, 38.471729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779457, 37.918545, 38.620453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097819, -0.369124, 0.924218,
		0.995152, -0.045776, 0.087044,
		0.010177, 0.928252, 0.371813,
		35.782509, 38.197021, 38.731998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175396, 37.509628, 39.056488>,  <35.775387, 37.547245, 38.471729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175396, 37.509628, 39.056488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002941, 37.861755, 39.135647>,  <35.899467, 38.073032, 39.183144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.002941, 37.861755, 39.135647>,  <36.175396, 37.509628, 39.056488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002941, 37.861755, 39.135647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151379, -0.145646, 0.977687,
		0.889496, 0.451477, -0.070468,
		-0.431140, 0.880316, 0.197896,
		35.873600, 38.125851, 39.195015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675518, 37.786442, 39.536911>,  <36.175396, 37.509628, 39.056488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675518, 37.786442, 39.536911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328388, 37.982136, 39.571640>,  <36.120110, 38.099552, 39.592476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328388, 37.982136, 39.571640>,  <36.675518, 37.786442, 39.536911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328388, 37.982136, 39.571640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111774, 0.021961, 0.993491,
		0.484141, 0.871877, -0.073741,
		-0.867821, 0.489232, 0.086821,
		36.068043, 38.128906, 39.597687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818630, 38.316479, 39.940273>,  <36.675518, 37.786442, 39.536911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818630, 38.316479, 39.940273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427078, 38.236973, 39.959393>,  <36.192146, 38.189270, 39.970863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427078, 38.236973, 39.959393>,  <36.818630, 38.316479, 39.940273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427078, 38.236973, 39.959393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095992, -0.240490, 0.965893,
		-0.180489, 0.950083, 0.254491,
		-0.978881, -0.198763, 0.047795,
		36.133415, 38.177345, 39.973732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724365, 38.517464, 40.646423>,  <36.818630, 38.316479, 39.940273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724365, 38.517464, 40.646423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397053, 38.312057, 40.543102>,  <36.200665, 38.188816, 40.481110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397053, 38.312057, 40.543102>,  <36.724365, 38.517464, 40.646423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397053, 38.312057, 40.543102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109062, -0.302507, 0.946887,
		-0.564377, 0.802991, 0.191531,
		-0.818281, -0.513513, -0.258304,
		36.151569, 38.158005, 40.465611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052990, 38.644505, 41.120739>,  <36.724365, 38.517464, 40.646423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052990, 38.644505, 41.120739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990864, 38.289886, 40.946423>,  <35.953587, 38.077114, 40.841831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990864, 38.289886, 40.946423>,  <36.052990, 38.644505, 41.120739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990864, 38.289886, 40.946423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325954, -0.370449, 0.869783,
		-0.932540, 0.277140, -0.231436,
		-0.155316, -0.886545, -0.435793,
		35.944267, 38.023922, 40.815685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301109, 38.335457, 41.321762>,  <36.052990, 38.644505, 41.120739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301109, 38.335457, 41.321762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522839, 38.037102, 41.174046>,  <35.655876, 37.858089, 41.085415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522839, 38.037102, 41.174046>,  <35.301109, 38.335457, 41.321762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522839, 38.037102, 41.174046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279916, -0.584929, 0.761253,
		-0.783821, -0.318607, -0.533024,
		0.554322, -0.745887, -0.369296,
		35.689137, 37.813335, 41.063255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813805, 37.787113, 41.317822>,  <35.301109, 38.335457, 41.321762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813805, 37.787113, 41.317822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181820, 37.631126, 41.302513>,  <35.402630, 37.537533, 41.293327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181820, 37.631126, 41.302513>,  <34.813805, 37.787113, 41.317822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181820, 37.631126, 41.302513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174701, -0.495668, 0.850760,
		-0.350737, -0.776042, -0.524159,
		0.920034, -0.389964, -0.038274,
		35.457829, 37.514137, 41.291031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679428, 37.163105, 41.618031>,  <34.813805, 37.787113, 41.317822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679428, 37.163105, 41.618031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077423, 37.195969, 41.640827>,  <35.316219, 37.215687, 41.654503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077423, 37.195969, 41.640827>,  <34.679428, 37.163105, 41.618031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077423, 37.195969, 41.640827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022134, -0.374847, 0.926823,
		0.097508, -0.923439, -0.371150,
		0.994988, 0.082157, 0.056989,
		35.375919, 37.220615, 41.657925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526260, 36.493786, 41.420948>,  <34.679428, 37.163105, 41.618031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526260, 36.493786, 41.420948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177673, 36.299065, 41.397079>,  <33.968521, 36.182232, 41.382759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177673, 36.299065, 41.397079>,  <34.526260, 36.493786, 41.420948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177673, 36.299065, 41.397079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104766, -0.065908, -0.992311,
		0.479125, -0.871023, 0.108438,
		-0.871472, -0.486802, -0.059675,
		33.916233, 36.153023, 41.379177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565052, 35.967350, 40.857250>,  <34.526260, 36.493786, 41.420948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565052, 35.967350, 40.857250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181156, 36.060829, 40.919598>,  <33.950821, 36.116917, 40.957005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181156, 36.060829, 40.919598>,  <34.565052, 35.967350, 40.857250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181156, 36.060829, 40.919598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172954, -0.054382, -0.983427,
		-0.221351, -0.970787, 0.092612,
		-0.959735, 0.233700, 0.155864,
		33.893234, 36.130939, 40.966358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141399, 35.501350, 40.499790>,  <34.565052, 35.967350, 40.857250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141399, 35.501350, 40.499790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872597, 35.792763, 40.552944>,  <33.711315, 35.967609, 40.584835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872597, 35.792763, 40.552944>,  <34.141399, 35.501350, 40.499790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872597, 35.792763, 40.552944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208274, -0.013733, -0.977974,
		-0.710656, -0.684880, 0.160962,
		-0.672005, 0.728527, 0.132883,
		33.670994, 36.011322, 40.592808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580849, 35.304089, 40.080410>,  <34.141399, 35.501350, 40.499790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580849, 35.304089, 40.080410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491951, 35.687069, 40.154060>,  <33.438610, 35.916855, 40.198250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491951, 35.687069, 40.154060>,  <33.580849, 35.304089, 40.080410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491951, 35.687069, 40.154060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434815, 0.071700, -0.897661,
		-0.872664, -0.279564, 0.400377,
		-0.222246, 0.957446, 0.184129,
		33.425278, 35.974304, 40.209297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858135, 35.355606, 40.016914>,  <33.580849, 35.304089, 40.080410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858135, 35.355606, 40.016914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028458, 35.703930, 39.918625>,  <33.130650, 35.912926, 39.859650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028458, 35.703930, 39.918625>,  <32.858135, 35.355606, 40.016914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028458, 35.703930, 39.918625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562438, 0.042002, -0.825772,
		-0.708771, 0.489820, 0.507661,
		0.425803, 0.870811, -0.245724,
		33.156197, 35.965172, 39.844910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346939, 35.814930, 39.913017>,  <32.858135, 35.355606, 40.016914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346939, 35.814930, 39.913017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640919, 36.016670, 39.731701>,  <32.817307, 36.137714, 39.622910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640919, 36.016670, 39.731701>,  <32.346939, 35.814930, 39.913017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640919, 36.016670, 39.731701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596695, 0.163406, -0.785655,
		-0.322177, 0.847896, 0.421041,
		0.734954, 0.504353, -0.453289,
		32.861404, 36.167976, 39.595715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928755, 36.168789, 39.539001>,  <32.346939, 35.814930, 39.913017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928755, 36.168789, 39.539001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299458, 36.220776, 39.398018>,  <32.521881, 36.251968, 39.313427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299458, 36.220776, 39.398018>,  <31.928755, 36.168789, 39.539001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299458, 36.220776, 39.398018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366315, 0.104721, -0.924579,
		-0.083256, 0.985972, 0.144660,
		0.926759, 0.129967, -0.352458,
		32.577484, 36.259766, 39.292282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929014, 36.811100, 39.165611>,  <31.928755, 36.168789, 39.539001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929014, 36.811100, 39.165611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239952, 36.603855, 39.022896>,  <32.426514, 36.479507, 38.937267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239952, 36.603855, 39.022896>,  <31.929014, 36.811100, 39.165611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239952, 36.603855, 39.022896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360253, 0.098323, -0.927658,
		0.515709, 0.849644, -0.110220,
		0.777343, -0.518109, -0.356793,
		32.473156, 36.448421, 38.915859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269257, 37.164558, 38.647030>,  <31.929014, 36.811100, 39.165611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269257, 37.164558, 38.647030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335766, 36.778381, 38.566765>,  <32.375671, 36.546673, 38.518604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.335766, 36.778381, 38.566765>,  <32.269257, 37.164558, 38.647030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335766, 36.778381, 38.566765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251369, 0.155277, -0.955355,
		0.953502, 0.209292, -0.216864,
		0.166274, -0.965446, -0.200667,
		32.385647, 36.488747, 38.506565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287098, 37.222397, 38.010761>,  <32.269257, 37.164558, 38.647030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287098, 37.222397, 38.010761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286079, 36.825596, 38.061234>,  <32.285469, 36.587517, 38.091518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286079, 36.825596, 38.061234>,  <32.287098, 37.222397, 38.010761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286079, 36.825596, 38.061234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395910, -0.114873, -0.911076,
		0.918286, -0.052277, -0.392452,
		-0.002546, -0.992004, 0.126183,
		32.285316, 36.527996, 38.099087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634598, 36.944939, 37.418423>,  <32.287098, 37.222397, 38.010761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634598, 36.944939, 37.418423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422810, 36.641479, 37.570271>,  <32.295738, 36.459404, 37.661381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422810, 36.641479, 37.570271>,  <32.634598, 36.944939, 37.418423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422810, 36.641479, 37.570271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355543, -0.207847, -0.911256,
		0.770229, -0.617452, -0.159686,
		-0.529467, -0.758652, 0.379621,
		32.263969, 36.413883, 37.684158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683533, 36.500385, 36.896957>,  <32.634598, 36.944939, 37.418423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683533, 36.500385, 36.896957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387455, 36.357929, 37.125092>,  <32.209808, 36.272457, 37.261971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387455, 36.357929, 37.125092>,  <32.683533, 36.500385, 36.896957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387455, 36.357929, 37.125092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435235, -0.392776, -0.810122,
		0.512529, -0.847875, 0.135726,
		-0.740192, -0.356138, 0.570334,
		32.165398, 36.251087, 37.296192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554573, 35.753521, 36.687424>,  <32.683533, 36.500385, 36.896957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554573, 35.753521, 36.687424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225266, 35.887360, 36.870846>,  <32.027679, 35.967663, 36.980900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225266, 35.887360, 36.870846>,  <32.554573, 35.753521, 36.687424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225266, 35.887360, 36.870846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567604, -0.475225, -0.672300,
		-0.007033, -0.813761, 0.581157,
		-0.823272, 0.334595, 0.458552,
		31.978285, 35.987740, 37.008411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060444, 35.242325, 36.627659>,  <32.554573, 35.753521, 36.687424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060444, 35.242325, 36.627659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818867, 35.545391, 36.726612>,  <31.673922, 35.727230, 36.785984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818867, 35.545391, 36.726612>,  <32.060444, 35.242325, 36.627659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818867, 35.545391, 36.726612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667602, -0.311335, -0.676298,
		-0.435390, -0.573595, 0.693848,
		-0.603940, 0.757667, 0.247381,
		31.637684, 35.772690, 36.800827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476475, 35.021626, 37.138641>,  <32.060444, 35.242325, 36.627659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476475, 35.021626, 37.138641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420183, 35.323475, 36.882286>,  <31.386408, 35.504585, 36.728474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420183, 35.323475, 36.882286>,  <31.476475, 35.021626, 37.138641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420183, 35.323475, 36.882286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606947, -0.577177, -0.546335,
		-0.782183, 0.312099, 0.539244,
		-0.140729, 0.754626, -0.640886,
		31.377964, 35.549862, 36.690022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548254, 34.543594, 37.764954>,  <31.476475, 35.021626, 37.138641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548254, 34.543594, 37.764954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698870, 34.323330, 37.466961>,  <31.789240, 34.191174, 37.288166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698870, 34.323330, 37.466961>,  <31.548254, 34.543594, 37.764954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698870, 34.323330, 37.466961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665849, -0.398245, 0.630910,
		-0.644099, -0.733606, 0.216700,
		0.376539, -0.550658, -0.744979,
		31.811832, 34.158134, 37.243465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936787, 34.015244, 38.108376>,  <31.548254, 34.543594, 37.764954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936787, 34.015244, 38.108376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035088, 33.922779, 37.731831>,  <32.094070, 33.867302, 37.505901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035088, 33.922779, 37.731831>,  <31.936787, 34.015244, 38.108376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035088, 33.922779, 37.731831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680652, -0.650299, 0.337379,
		-0.690158, -0.723655, -0.002473,
		0.245754, -0.231161, -0.941366,
		32.108814, 33.853432, 37.449421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843834, 33.347805, 37.900803>,  <31.936787, 34.015244, 38.108376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843834, 33.347805, 37.900803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144825, 33.485416, 37.676151>,  <32.325420, 33.567982, 37.541359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144825, 33.485416, 37.676151>,  <31.843834, 33.347805, 37.900803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144825, 33.485416, 37.676151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606311, -0.694876, 0.386696,
		-0.257230, -0.631502, -0.731463,
		0.752476, 0.344024, -0.561630,
		32.370567, 33.588623, 37.507664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105755, 32.820763, 37.417889>,  <31.843834, 33.347805, 37.900803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105755, 32.820763, 37.417889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394802, 33.090809, 37.477276>,  <32.568230, 33.252838, 37.512909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394802, 33.090809, 37.477276>,  <32.105755, 32.820763, 37.417889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394802, 33.090809, 37.477276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527779, -0.677559, 0.512213,
		0.446402, -0.291773, -0.845928,
		0.722616, 0.675116, 0.148472,
		32.611588, 33.293343, 37.521816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697910, 32.545288, 37.160099>,  <32.105755, 32.820763, 37.417889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697910, 32.545288, 37.160099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798027, 32.812309, 37.440590>,  <32.858097, 32.972523, 37.608883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798027, 32.812309, 37.440590>,  <32.697910, 32.545288, 37.160099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798027, 32.812309, 37.440590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472143, -0.716482, 0.513552,
		0.845242, 0.202540, -0.494514,
		0.250295, 0.667556, 0.701228,
		32.873116, 33.012577, 37.650959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500256, 32.441135, 37.283825>,  <32.697910, 32.545288, 37.160099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500256, 32.441135, 37.283825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339985, 32.634556, 37.595116>,  <33.243824, 32.750607, 37.781891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339985, 32.634556, 37.595116>,  <33.500256, 32.441135, 37.283825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339985, 32.634556, 37.595116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390795, -0.678055, 0.622512,
		0.828697, 0.553553, 0.082711,
		-0.400676, 0.483551, 0.778227,
		33.219784, 32.779621, 37.828583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019779, 32.604736, 37.784718>,  <33.500256, 32.441135, 37.283825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019779, 32.604736, 37.784718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694935, 32.653397, 38.012993>,  <33.500031, 32.682594, 38.149960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694935, 32.653397, 38.012993>,  <34.019779, 32.604736, 37.784718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694935, 32.653397, 38.012993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489978, -0.388931, 0.780163,
		0.316865, 0.913200, 0.256247,
		-0.812107, 0.121651, 0.570687,
		33.451302, 32.689892, 38.184200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290352, 32.921024, 38.293182>,  <34.019779, 32.604736, 37.784718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290352, 32.921024, 38.293182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939739, 32.795574, 38.439236>,  <33.729370, 32.720303, 38.526867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939739, 32.795574, 38.439236>,  <34.290352, 32.921024, 38.293182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939739, 32.795574, 38.439236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460141, -0.323349, 0.826871,
		-0.141262, 0.892796, 0.427739,
		-0.876536, -0.313626, 0.365135,
		33.676777, 32.701485, 38.548775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187737, 33.183392, 39.011833>,  <34.290352, 32.921024, 38.293182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187737, 33.183392, 39.011833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960007, 32.855331, 38.989132>,  <33.823368, 32.658497, 38.975510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960007, 32.855331, 38.989132>,  <34.187737, 33.183392, 39.011833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960007, 32.855331, 38.989132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452851, -0.370476, 0.810971,
		-0.686146, 0.436003, 0.582327,
		-0.569324, -0.820152, -0.056756,
		33.789211, 32.609287, 38.972107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319618, 32.958542, 39.630604>,  <34.187737, 33.183392, 39.011833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319618, 32.958542, 39.630604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125107, 32.648537, 39.469170>,  <34.008400, 32.462532, 39.372311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125107, 32.648537, 39.469170>,  <34.319618, 32.958542, 39.630604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125107, 32.648537, 39.469170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505572, -0.626259, 0.593462,
		-0.712690, 0.084550, 0.696365,
		-0.486282, -0.775017, -0.403583,
		33.979221, 32.416031, 39.348095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924904, 32.691799, 40.130836>,  <34.319618, 32.958542, 39.630604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924904, 32.691799, 40.130836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023010, 32.405384, 39.869415>,  <34.081875, 32.233536, 39.712563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023010, 32.405384, 39.869415>,  <33.924904, 32.691799, 40.130836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023010, 32.405384, 39.869415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460763, -0.507036, 0.728432,
		-0.852961, -0.479790, 0.205568,
		0.245264, -0.716042, -0.653551,
		34.096588, 32.190571, 39.673351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647644, 32.130112, 40.369873>,  <33.924904, 32.691799, 40.130836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647644, 32.130112, 40.369873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971733, 32.022369, 40.161648>,  <34.166187, 31.957724, 40.036713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971733, 32.022369, 40.161648>,  <33.647644, 32.130112, 40.369873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971733, 32.022369, 40.161648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280531, -0.601595, 0.747921,
		-0.514626, -0.752016, -0.411863,
		0.810224, -0.269359, -0.520560,
		34.214802, 31.941561, 40.005478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695755, 31.427616, 40.488621>,  <33.647644, 32.130112, 40.369873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695755, 31.427616, 40.488621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066208, 31.500944, 40.356758>,  <34.288479, 31.544941, 40.277641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066208, 31.500944, 40.356758>,  <33.695755, 31.427616, 40.488621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066208, 31.500944, 40.356758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375228, -0.537005, 0.755533,
		-0.038524, -0.823419, -0.566123,
		0.926131, 0.183319, -0.329658,
		34.344048, 31.555941, 40.257862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050888, 30.826620, 40.557343>,  <33.695755, 31.427616, 40.488621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050888, 30.826620, 40.557343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343761, 31.095240, 40.511856>,  <34.519485, 31.256411, 40.484566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343761, 31.095240, 40.511856>,  <34.050888, 30.826620, 40.557343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343761, 31.095240, 40.511856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551779, -0.486945, 0.677071,
		0.399312, -0.558486, -0.727079,
		0.732182, 0.671549, -0.113717,
		34.563416, 31.296705, 40.477741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608227, 30.392313, 40.674721>,  <34.050888, 30.826620, 40.557343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608227, 30.392313, 40.674721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736408, 30.763889, 40.748886>,  <34.813316, 30.986835, 40.793385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736408, 30.763889, 40.748886>,  <34.608227, 30.392313, 40.674721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736408, 30.763889, 40.748886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467454, -0.325321, 0.821981,
		0.823889, -0.176739, -0.538488,
		0.320458, 0.928940, 0.185412,
		34.832546, 31.042572, 40.804508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256165, 30.381149, 40.825294>,  <34.608227, 30.392313, 40.674721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256165, 30.381149, 40.825294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175171, 30.729347, 41.004730>,  <35.126575, 30.938267, 41.112392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175171, 30.729347, 41.004730>,  <35.256165, 30.381149, 40.825294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175171, 30.729347, 41.004730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557223, -0.274278, 0.783756,
		0.805297, 0.408665, -0.429524,
		-0.202484, 0.870497, 0.448593,
		35.114426, 30.990496, 41.139309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901802, 30.564631, 41.111366>,  <35.256165, 30.381149, 40.825294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901802, 30.564631, 41.111366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640793, 30.810127, 41.289143>,  <35.484188, 30.957426, 41.395809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640793, 30.810127, 41.289143>,  <35.901802, 30.564631, 41.111366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640793, 30.810127, 41.289143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326804, -0.301242, 0.895797,
		0.683673, 0.729777, -0.004005,
		-0.652526, 0.613741, 0.444445,
		35.445034, 30.994249, 41.422478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300446, 31.006531, 41.667130>,  <35.901802, 30.564631, 41.111366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300446, 31.006531, 41.667130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913139, 30.990805, 41.765854>,  <35.680756, 30.981369, 41.825089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913139, 30.990805, 41.765854>,  <36.300446, 31.006531, 41.667130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913139, 30.990805, 41.765854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237115, -0.456549, 0.857519,
		0.078965, 0.888829, 0.451384,
		-0.968267, -0.039316, 0.246806,
		35.622658, 30.979010, 41.839897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311420, 31.291239, 42.400074>,  <36.300446, 31.006531, 41.667130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311420, 31.291239, 42.400074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973244, 31.091618, 42.324001>,  <35.770336, 30.971846, 42.278358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973244, 31.091618, 42.324001>,  <36.311420, 31.291239, 42.400074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973244, 31.091618, 42.324001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140775, -0.551754, 0.822040,
		-0.515175, 0.668216, 0.536732,
		-0.845445, -0.499053, -0.190182,
		35.719612, 30.941902, 42.266945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839390, 31.319445, 43.012844>,  <36.311420, 31.291239, 42.400074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839390, 31.319445, 43.012844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723198, 30.996038, 42.808132>,  <35.653484, 30.801994, 42.685303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723198, 30.996038, 42.808132>,  <35.839390, 31.319445, 43.012844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723198, 30.996038, 42.808132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028381, -0.541889, 0.839971,
		-0.956460, 0.229469, 0.180354,
		-0.290480, -0.808517, -0.511783,
		35.636055, 30.753483, 42.654598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482025, 30.988417, 43.391788>,  <35.839390, 31.319445, 43.012844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482025, 30.988417, 43.391788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527504, 30.694124, 43.124725>,  <35.554790, 30.517548, 42.964485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527504, 30.694124, 43.124725>,  <35.482025, 30.988417, 43.391788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527504, 30.694124, 43.124725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099690, -0.660177, 0.744465,
		-0.988501, -0.151204, -0.001716,
		0.113699, -0.735733, -0.667659,
		35.561615, 30.473404, 42.924427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897346, 30.554295, 43.508186>,  <35.482025, 30.988417, 43.391788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897346, 30.554295, 43.508186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195423, 30.355028, 43.330868>,  <35.374271, 30.235468, 43.224476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195423, 30.355028, 43.330868>,  <34.897346, 30.554295, 43.508186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195423, 30.355028, 43.330868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070898, -0.601816, 0.795482,
		-0.663069, -0.624217, -0.413150,
		0.745194, -0.498168, -0.443301,
		35.418983, 30.205578, 43.197880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758926, 29.838940, 43.672611>,  <34.897346, 30.554295, 43.508186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758926, 29.838940, 43.672611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144302, 29.868845, 43.569698>,  <35.375526, 29.886787, 43.507950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144302, 29.868845, 43.569698>,  <34.758926, 29.838940, 43.672611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144302, 29.868845, 43.569698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260113, -0.491210, 0.831297,
		-0.064231, -0.867827, -0.492697,
		0.963440, 0.074762, -0.257284,
		35.433334, 29.891273, 43.492512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070011, 29.240553, 44.002899>,  <34.758926, 29.838940, 43.672611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070011, 29.240553, 44.002899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395691, 29.436232, 43.877831>,  <35.591099, 29.553638, 43.802788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395691, 29.436232, 43.877831>,  <35.070011, 29.240553, 44.002899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395691, 29.436232, 43.877831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504232, -0.328865, 0.798497,
		0.287797, -0.807795, -0.514432,
		0.814201, 0.489198, -0.312670,
		35.639950, 29.582991, 43.784031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626122, 28.788681, 43.999722>,  <35.070011, 29.240553, 44.002899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626122, 28.788681, 43.999722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778793, 29.152040, 44.067989>,  <35.870396, 29.370056, 44.108952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778793, 29.152040, 44.067989>,  <35.626122, 28.788681, 43.999722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778793, 29.152040, 44.067989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462862, -0.347677, 0.815401,
		0.800050, -0.232225, -0.553166,
		0.381680, 0.908401, 0.170671,
		35.893299, 29.424561, 44.119190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370152, 28.695854, 44.153645>,  <35.626122, 28.788681, 43.999722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370152, 28.695854, 44.153645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294014, 29.066355, 44.283768>,  <36.248329, 29.288654, 44.361843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294014, 29.066355, 44.283768>,  <36.370152, 28.695854, 44.153645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294014, 29.066355, 44.283768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446296, -0.213503, 0.869043,
		0.874407, 0.310605, -0.372742,
		-0.190347, 0.926251, 0.325311,
		36.236908, 29.344231, 44.381359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988297, 28.953245, 44.379349>,  <36.370152, 28.695854, 44.153645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988297, 28.953245, 44.379349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702866, 29.163485, 44.564629>,  <36.531609, 29.289629, 44.675797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702866, 29.163485, 44.564629>,  <36.988297, 28.953245, 44.379349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702866, 29.163485, 44.564629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512435, -0.059263, 0.856678,
		0.477721, 0.848665, -0.227048,
		-0.713577, 0.525601, 0.463197,
		36.488792, 29.321165, 44.703587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497936, 29.500801, 44.256577>,  <36.988297, 28.953245, 44.379349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497936, 29.500801, 44.256577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883034, 29.552898, 44.161781>,  <38.114094, 29.584156, 44.104904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883034, 29.552898, 44.161781>,  <37.497936, 29.500801, 44.256577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883034, 29.552898, 44.161781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265288, 0.284944, -0.921102,
		-0.052438, 0.949655, 0.308879,
		0.962742, 0.130243, -0.236990,
		38.171856, 29.591970, 44.090683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514935, 30.151632, 43.896023>,  <37.497936, 29.500801, 44.256577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514935, 30.151632, 43.896023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877941, 30.035273, 43.774837>,  <38.095745, 29.965458, 43.702126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877941, 30.035273, 43.774837>,  <37.514935, 30.151632, 43.896023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877941, 30.035273, 43.774837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273798, 0.137248, -0.951944,
		0.318499, 0.946859, 0.044908,
		0.907520, -0.290898, -0.302961,
		38.150196, 29.948004, 43.683949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670109, 30.709772, 43.386005>,  <37.514935, 30.151632, 43.896023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670109, 30.709772, 43.386005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901360, 30.386982, 43.337738>,  <38.040112, 30.193308, 43.308777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901360, 30.386982, 43.337738>,  <37.670109, 30.709772, 43.386005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901360, 30.386982, 43.337738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021025, 0.133107, -0.990879,
		0.815676, 0.575391, 0.059987,
		0.578127, -0.806975, -0.120670,
		38.074799, 30.144890, 43.301537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273781, 30.911381, 43.086670>,  <37.670109, 30.709772, 43.386005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273781, 30.911381, 43.086670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242222, 30.525702, 42.985397>,  <38.223286, 30.294294, 42.924633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242222, 30.525702, 42.985397>,  <38.273781, 30.911381, 43.086670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242222, 30.525702, 42.985397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042894, 0.250452, -0.967178,
		0.995959, -0.087169, 0.021598,
		-0.078899, -0.964197, -0.253179,
		38.218552, 30.236443, 42.909443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787472, 30.836163, 42.563671>,  <38.273781, 30.911381, 43.086670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787472, 30.836163, 42.563671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531418, 30.532843, 42.514343>,  <38.377785, 30.350851, 42.484745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531418, 30.532843, 42.514343>,  <38.787472, 30.836163, 42.563671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531418, 30.532843, 42.514343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064630, 0.213106, -0.974889,
		0.765540, -0.616089, -0.185425,
		-0.640134, -0.758300, -0.123324,
		38.339378, 30.305353, 42.477345>
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
